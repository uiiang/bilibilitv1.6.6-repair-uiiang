package mybl;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.util.Log;

import org.json.JSONObject;

import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

public class CdnSelector {
    private static final String TAG = "CdnSelector";
    private static final String PREF_NAME = "cdn_selector";
    private static final String KEY_CDN_SCORES = "cdn_scores";
    
    private static final int DEFAULT_SCORE = 70;
    private static final int MAX_SCORE = 100;
    private static final int MIN_SCORE = 0;
    private static final int RACE_TIMEOUT_MS = 5000;
    private static final int SINGLE_TIMEOUT_MS = 2000;
    private static final int TEST_BYTES = 1024;
    
    private static SharedPreferences prefs;
    private static final ExecutorService executor = Executors.newCachedThreadPool();
    private static volatile boolean raceCancelled = false;
    
    public static void init(Context context) {
        prefs = context.getApplicationContext().getSharedPreferences(PREF_NAME, Context.MODE_PRIVATE);
    }
    
    public static class CdnUrlInfo {
        public String url;
        public String cdnHost;
        public int score;
        public int id;
        public int codecid;
        public int bandwidth;
        public List<String> backupUrls;
        
        public CdnUrlInfo(String url, String cdnHost, int score) {
            this.url = url;
            this.cdnHost = cdnHost;
            this.score = score;
            this.backupUrls = new ArrayList<>();
        }
    }
    
    public static class RaceResult {
        public String winningUrl;
        public String winningCdn;
        public long raceTime;
        public boolean fromCache;
        
        public RaceResult(String url, String cdn, long time, boolean cached) {
            this.winningUrl = url;
            this.winningCdn = cdn;
            this.raceTime = time;
            this.fromCache = cached;
        }
    }
    
    public static RaceResult selectBestUrl(Context context, String videoId, List<CdnUrlInfo> urlInfos) {
        if (urlInfos == null || urlInfos.isEmpty()) {
            return null;
        }
        
        if (prefs == null) {
            init(context);
        }
        
        for (CdnUrlInfo info : urlInfos) {
            info.score = getCdnScore(info.cdnHost);
        }
        
        Collections.sort(urlInfos, new Comparator<CdnUrlInfo>() {
            @Override
            public int compare(CdnUrlInfo a, CdnUrlInfo b) {
                return Integer.compare(b.score, a.score);
            }
        });
        
        long raceStart = System.currentTimeMillis();
        raceCancelled = false;
        
        List<Callable<RaceResult>> tasks = new ArrayList<>();
        for (CdnUrlInfo info : urlInfos) {
            tasks.add(new Callable<RaceResult>() {
                @Override
                public RaceResult call() throws Exception {
                    return testUrl(info);
                }
            });
        }
        
        try {
            List<Future<RaceResult>> futures = executor.invokeAll(tasks, RACE_TIMEOUT_MS, TimeUnit.MILLISECONDS);
            
            for (Future<RaceResult> future : futures) {
                if (future.isDone() && !future.isCancelled()) {
                    try {
                        RaceResult result = future.get();
                        if (result != null && !raceCancelled) {
                            raceCancelled = true;
                            long raceTime = System.currentTimeMillis() - raceStart;
                            result.raceTime = raceTime;
                            
                            updateCdnScore(result.winningCdn, true, false);
                            
                            Log.d(TAG, "竞速完成 cdn=" + result.winningCdn + " time=" + raceTime + "ms");
                            return result;
                        }
                    } catch (Exception e) {
                    }
                }
            }
        } catch (Exception e) {
            Log.e(TAG, "竞速异常: " + e.getMessage());
        }
        
        CdnUrlInfo best = urlInfos.get(0);
        Log.d(TAG, "竞速失败，使用最高分CDN: " + best.cdnHost);
        return new RaceResult(best.url, best.cdnHost, 0, false);
    }
    
    private static RaceResult testUrl(CdnUrlInfo info) {
        HttpURLConnection conn = null;
        InputStream is = null;
        try {
            URL url = new URL(info.url);
            conn = (HttpURLConnection) url.openConnection();
            conn.setConnectTimeout(SINGLE_TIMEOUT_MS);
            conn.setReadTimeout(SINGLE_TIMEOUT_MS);
            conn.setRequestProperty("Range", "bytes=0-" + (TEST_BYTES - 1));
            conn.setRequestProperty("User-Agent", "Bilibili Freedoooooom/MarkII");
            
            int responseCode = conn.getResponseCode();
            if (responseCode == HttpURLConnection.HTTP_OK || responseCode == HttpURLConnection.HTTP_PARTIAL) {
                is = conn.getInputStream();
                byte[] buffer = new byte[TEST_BYTES];
                int totalRead = 0;
                int read;
                while (totalRead < TEST_BYTES && (read = is.read(buffer, totalRead, TEST_BYTES - totalRead)) > 0) {
                    totalRead += read;
                }
                
                if (totalRead > 0 && !raceCancelled) {
                    return new RaceResult(info.url, info.cdnHost, 0, false);
                }
            }
        } catch (Exception e) {
        } finally {
            if (is != null) try { is.close(); } catch (Exception e) {}
            if (conn != null) try { conn.disconnect(); } catch (Exception e) {}
        }
        return null;
    }
    
    public static int getCdnScore(String cdnHost) {
        try {
            if (prefs == null) return DEFAULT_SCORE;
            String scoresJson = prefs.getString(KEY_CDN_SCORES, "{}");
            JSONObject scores = new JSONObject(scoresJson);
            
            if (scores.has(cdnHost)) {
                JSONObject cdnRecord = scores.getJSONObject(cdnHost);
                return cdnRecord.optInt("score", DEFAULT_SCORE);
            }
        } catch (Exception e) {
        }
        return DEFAULT_SCORE;
    }
    
    public static void updateCdnScore(String cdnHost, boolean success, boolean timeout) {
        try {
            String scoresJson = prefs.getString(KEY_CDN_SCORES, "{}");
            JSONObject scores = new JSONObject(scoresJson);
            
            JSONObject record;
            if (scores.has(cdnHost)) {
                record = scores.getJSONObject(cdnHost);
            } else {
                record = new JSONObject();
                record.put("score", DEFAULT_SCORE);
                record.put("failStreak", 0);
                record.put("timeoutCount", 0);
                record.put("successCount", 0);
            }
            
            int score = record.optInt("score", DEFAULT_SCORE);
            int failStreak = record.optInt("failStreak", 0);
            int timeoutCount = record.optInt("timeoutCount", 0);
            int successCount = record.optInt("successCount", 0);
            
            if (success) {
                score = Math.min(MAX_SCORE, score + 10);
                failStreak = 0;
                successCount++;
            } else {
                score = Math.max(MIN_SCORE, score - 20);
                failStreak++;
                if (timeout) {
                    score = Math.max(MIN_SCORE, score - 30);
                    timeoutCount++;
                }
                if (failStreak >= 3) {
                    score = Math.max(MIN_SCORE, score - 30);
                }
            }
            
            record.put("score", score);
            record.put("failStreak", failStreak);
            record.put("timeoutCount", timeoutCount);
            record.put("successCount", successCount);
            record.put("lastUpdateTime", System.currentTimeMillis());
            if (!success) {
                record.put("lastFailTime", System.currentTimeMillis());
            }
            
            scores.put(cdnHost, record);
            prefs.edit().putString(KEY_CDN_SCORES, scores.toString()).apply();
        } catch (Exception e) {
        }
    }
    
    public static void reportPlaybackResult(String cdnHost, boolean success, boolean timeout) {
        updateCdnScore(cdnHost, success, timeout);
    }
    
    public static String extractCdnHost(String url) {
        try {
            Uri uri = Uri.parse(url);
            return uri.getHost();
        } catch (Exception e) {
            return "";
        }
    }
}
