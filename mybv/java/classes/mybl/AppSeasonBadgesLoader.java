package mybl;

import android.text.TextUtils;
import android.util.Log;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/**
 * App合集视频角标加载器：
 * GET https://app.bilibili.com/x/v2/space/season/videos（App JSON 接口，签名复用 AppRecommendLoader）
 * 该接口 data.item[] 每条带 badges[]（与手机端 UgcEpisode.badge 同构），
 * 其中 text="充电专属"、bg_color="#FF6699"，是 Web 合集分集接口不返回的字段。
 *
 * 特性：
 * - 每页固定 20 条，next 为偏移量，需循环翻页；
 * - 按 aid(item.param) 建立映射，调用方按集匹配；
 * - 只保留“充电”类角标，避免出现无关角标；
 * - 内存缓存（10 分钟、最多 8 个合集），同一合集加载中不重复请求；
 * - 阻塞方法，必须在子线程调用；失败时返回已拿到的部分或空集合，不抛异常。
 */
public final class AppSeasonBadgesLoader {
    private static final String TAG = "SeasonBadges";
    private static final String URL = "https://app.bilibili.com/x/v2/space/season/videos";
    private static final int PAGE_SIZE = 20;
    private static final int MAX_PAGES = 25;
    private static final long CACHE_TTL_MS = 10 * 60 * 1000L;
    private static final int MAX_CACHE_SEASONS = 8;

    private static final Map<Long, CacheEntry> CACHE = new HashMap<Long, CacheEntry>();
    private static final List<Long> LOADING = new ArrayList<Long>();

    private AppSeasonBadgesLoader() {
    }

    /** 角标：文案 + 背景色（对应 badges[i].text / bg_color） */
    public static final class Badge {
        public final String text;
        public final String bgColor;

        Badge(String text, String bgColor) {
            this.text = text;
            this.bgColor = bgColor;
        }
    }

    /**
     * 拉取某个合集全部视频的角标（阻塞，子线程调用）。
     *
     * @param seasonId     合集ID（Web ugc_season.id）
     * @param vmid         合集归属UP的mid（Web ugc_season.mid）
     * @param expectedCount 合集总集数（仅用于估算翻页上限，&lt;=0 时用默认上限）
     * @return aid -> Badge；无角标/失败返回空 Map（不会返回 null）
     */
    public static Map<Long, Badge> load(long seasonId, long vmid, int expectedCount) {
        Map<Long, Badge> cached = getCached(seasonId);
        if (cached != null) {
            return cached;
        }
        if (seasonId <= 0 || vmid <= 0) {
            return new HashMap<Long, Badge>();
        }

        synchronized (LOADING) {
            if (LOADING.contains(Long.valueOf(seasonId))) {
                // 同一合集已有线程在拉取，避免重复请求
                Map<Long, Badge> again = getCached(seasonId);
                return again != null ? again : new HashMap<Long, Badge>();
            }
            LOADING.add(Long.valueOf(seasonId));
        }

        Map<Long, Badge> result = new HashMap<Long, Badge>();
        int fetchedPages = 0;
        try {
            int maxPages = MAX_PAGES;
            if (expectedCount > 0) {
                int needed = (expectedCount + PAGE_SIZE - 1) / PAGE_SIZE + 1;
                if (needed < maxPages) {
                    maxPages = needed;
                }
            }
            long next = 0;
            while (fetchedPages < maxPages) {
                TreeMap<String, String> params = new TreeMap<String, String>();
                params.put("mobi_app", "android");
                params.put("platform", "android");
                params.put("build", "8830500");
                params.put("season_id", String.valueOf(seasonId));
                params.put("vmid", String.valueOf(vmid));
                params.put("sort", "asc");
                params.put("next", String.valueOf(next));
                params.put("ps", String.valueOf(PAGE_SIZE));

                JSONObject data = AppRecommendLoader.requestSignedJson(URL, params);
                if (data == null) {
                    // 首屏失败不缓存，留给下次重试
                    break;
                }
                JSONArray items = data.getJSONArray("item");
                if (items == null || items.isEmpty()) {
                    break;
                }
                fetchedPages++;
                for (int i = 0; i < items.size(); i++) {
                    try {
                        JSONObject item = items.getJSONObject(i);
                        if (item == null) {
                            continue;
                        }
                        String gotoType = item.getString("goto");
                        if (!TextUtils.isEmpty(gotoType) && !"av".equals(gotoType)) {
                            continue;
                        }
                        long aid = item.getLongValue("param");
                        if (aid <= 0) {
                            aid = item.getLongValue("aid");
                        }
                        if (aid <= 0) {
                            continue;
                        }
                        JSONArray badges = item.getJSONArray("badges");
                        if (badges == null || badges.isEmpty()) {
                            continue;
                        }
                        JSONObject first = badges.getJSONObject(0);
                        if (first == null) {
                            continue;
                        }
                        String text = first.getString("text");
                        if (TextUtils.isEmpty(text) || !text.contains("充电")) {
                            continue;
                        }
                        result.put(Long.valueOf(aid), new Badge(text, first.getString("bg_color")));
                    } catch (Exception e) {
                        // 单条解析失败不影响其它条目
                    }
                }
                long respNext = data.getLongValue("next");
                if (respNext <= next || items.size() < PAGE_SIZE) {
                    break;
                }
                next = respNext;
            }
        } catch (Throwable t) {
            Log.w(TAG, "load exception season=" + seasonId + " " + t.getMessage());
        } finally {
            synchronized (LOADING) {
                LOADING.remove(Long.valueOf(seasonId));
            }
        }

        if (fetchedPages > 0) {
            putCached(seasonId, result);
        }
        Log.i(TAG, "load season=" + seasonId + " vmid=" + vmid + " pages=" + fetchedPages
                + " badges=" + result.size());
        return result;
    }

    private static Map<Long, Badge> getCached(long seasonId) {
        synchronized (CACHE) {
            CacheEntry entry = CACHE.get(Long.valueOf(seasonId));
            if (entry == null) {
                return null;
            }
            if (System.currentTimeMillis() - entry.time > CACHE_TTL_MS) {
                CACHE.remove(Long.valueOf(seasonId));
                return null;
            }
            return entry.data;
        }
    }

    private static void putCached(long seasonId, Map<Long, Badge> data) {
        synchronized (CACHE) {
            if (CACHE.size() >= MAX_CACHE_SEASONS && !CACHE.containsKey(Long.valueOf(seasonId))) {
                Long oldestKey = null;
                long oldestTime = Long.MAX_VALUE;
                for (Map.Entry<Long, CacheEntry> entry : CACHE.entrySet()) {
                    if (entry.getValue().time < oldestTime) {
                        oldestTime = entry.getValue().time;
                        oldestKey = entry.getKey();
                    }
                }
                if (oldestKey != null) {
                    CACHE.remove(oldestKey);
                }
            }
            CACHE.put(Long.valueOf(seasonId), new CacheEntry(data, System.currentTimeMillis()));
        }
    }

    private static final class CacheEntry {
        final Map<Long, Badge> data;
        final long time;

        CacheEntry(Map<Long, Badge> data, long time) {
            this.data = data;
            this.time = time;
        }
    }
}
