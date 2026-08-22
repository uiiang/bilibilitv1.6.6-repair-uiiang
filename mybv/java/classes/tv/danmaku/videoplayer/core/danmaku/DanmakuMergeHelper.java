package tv.danmaku.videoplayer.core.danmaku;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import tv.danmaku.videoplayer.core.danmaku.comment.CommentItem;

/**
 * 重复弹幕合并工具：
 * 开启后，注入前按"内容+模式+颜色"分组，2秒时间窗口内的重复弹幕合并为一条，
 * 并在文本后直接拼接 "xN" 显示合并数量（保留组内第一条弹幕作为代表，保留其 dmid 供去重）。
 */
public class DanmakuMergeHelper {
    private static final String TAG = "DanmakuMergeHelper";

    /** 合并开关（状态单一来源，由右侧菜单"合并重复"控制并持久化） */
    private static volatile boolean sMergeEnabled = false;

    /** 合并时间窗口：2 秒 */
    private static final long MERGE_WINDOW_MS = 2000L;

    /** 开关持久化：SharedPreferences 名称与 key */
    private static final String PREFS_NAME = "danmaku_settings";
    private static final String MERGE_KEY = "danmaku_merge_duplicate";

    public static void setMergeEnabled(boolean enabled) {
        sMergeEnabled = enabled;
        Log.i(TAG, "merge enabled=" + enabled);
    }

    public static boolean isMergeEnabled() {
        return sMergeEnabled;
    }

    /** 从 SharedPreferences 读取合并开关并同步到内存态（弹幕注入前调用，确保状态不迟到） */
    public static void loadFromPrefs(Context context) {
        try {
            if (context == null) {
                return;
            }
            SharedPreferences prefs = context.getSharedPreferences(PREFS_NAME, 0);
            setMergeEnabled(prefs.getBoolean(MERGE_KEY, false));
        } catch (Exception e) {
            Log.i(TAG, "loadFromPrefs fail: " + e.getMessage());
        }
    }

    /** 将当前合并开关状态写入 SharedPreferences */
    public static void saveToPrefs(Context context) {
        try {
            if (context == null) {
                return;
            }
            context.getSharedPreferences(PREFS_NAME, 0).edit().putBoolean(MERGE_KEY, sMergeEnabled).apply();
        } catch (Exception e) {
            Log.i(TAG, "saveToPrefs fail: " + e.getMessage());
        }
    }

    /** 合并组（内部） */
    private static class MergeGroup {
        CommentItem rep;      // 代表弹幕（组内第一条）
        String rawText;       // 原始文本（未加 (N)）
        int count;            // 合并数量
        long lastTimeMs;      // 组内最后一条时间
    }

    /**
     * 合并重复弹幕。内部先按时间升序排序再按 2 秒窗口合并（兼容 seg.so/list.so 乱序返回）。
     * 仅合并普通弹幕（mode 1-6），高级弹幕（mode 7+）与空弹幕不合并。
     */
    public static List<CommentItem> merge(List<CommentItem> items) {
        if (items == null || items.size() < 2) {
            return items;
        }
        // seg.so/list.so 返回顺序均可能乱序（实测 seg.so: 3304,13307,12094,10613；
        // list.so: 10613,12094,13307,3304）。乱序输入下"时间窗口"判断会失效：
        // 每条都因小于组内 lastTimeMs 而独立成组（merge 4->4 不合并），
        // 必须先按时间升序排序再合并
        List<CommentItem> sorted = new ArrayList<CommentItem>(items);
        java.util.Collections.sort(sorted, new java.util.Comparator<CommentItem>() {
            @Override
            public int compare(CommentItem a, CommentItem b) {
                return a.mTimeMilli < b.mTimeMilli ? -1 : (a.mTimeMilli > b.mTimeMilli ? 1 : 0);
            }
        });
        List<CommentItem> result = new ArrayList<CommentItem>(sorted.size());
        Map<String, MergeGroup> groups = new HashMap<String, MergeGroup>();
        for (CommentItem item : sorted) {
            if (item == null || TextUtils.isEmpty(item.mText)) {
                result.add(item);
                continue;
            }
            int type = item.getCommentType();
            if (type < 1 || type > 6) {
                // 高级弹幕/特殊弹幕不参与合并
                result.add(item);
                continue;
            }
            String key = item.mText.trim().toLowerCase() + "|" + type + "|" + item.getViewTextColor();
            MergeGroup group = groups.get(key);
            // 仅当时间在窗口内且不早于组内最后一条才合并；排序后时间必为升序，
            // 下界判断兜底防御（正常情况下恒成立）
            if (group != null && item.mTimeMilli >= group.lastTimeMs
                    && item.mTimeMilli - group.lastTimeMs <= MERGE_WINDOW_MS) {
                group.count++;
                group.lastTimeMs = item.mTimeMilli;
                group.rep.mTimeMilli = item.mTimeMilli;
                // 关键：代表弹幕时间已更新为组内最后一条，dmid 必须同步更新，
                // 否则 yl.hasDanmaku(time,dmid) 去重因时间失配而失效，list.so 回退
                // 等二次注入会把合并代表重复注入（实测出现原始"11"与"11x3"同屏）
                group.rep.mRemoteDmId = item.mRemoteDmId;
                // 关键：rawText 末尾可能带 "\n"（setBody 添加），直接拼接会产生 "内容\nx3"
                // 被渲染引擎按多行弹幕处理导致内容行丢失（只显示 "x3"），必须先去尾随换行
                group.rep.mText = stripTrailingNewlines(group.rawText) + " x" + group.count;
                group.rep.mAppendLineFeedChar = false;
                group.rep.mLineCount = 1;
            } else {
                MergeGroup newGroup = new MergeGroup();
                newGroup.rep = item;
                newGroup.rawText = item.mText;
                newGroup.count = 1;
                newGroup.lastTimeMs = item.mTimeMilli;
                groups.put(key, newGroup);
                result.add(item);
            }
        }
        Log.i(TAG, "merge " + items.size() + " -> " + result.size());
        return result;
    }

    /** 去掉字符串末尾的换行/回车/空白（setBody 会给弹幕文本末尾追加 "\n"） */
    private static String stripTrailingNewlines(String s) {
        if (s == null || s.length() == 0) {
            return s;
        }
        int end = s.length();
        while (end > 0) {
            char c = s.charAt(end - 1);
            if (c != '\n' && c != '\r' && c != ' ') {
                break;
            }
            end--;
        }
        return s.substring(0, end);
    }
}
