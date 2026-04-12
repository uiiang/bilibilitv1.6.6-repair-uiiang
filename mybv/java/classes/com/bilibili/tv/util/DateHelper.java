package com.bilibili.tv.util;

import android.text.format.DateUtils;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

public class DateHelper {
    
    private static final SimpleDateFormat FORMAT_THIS_YEAR = new SimpleDateFormat("MM-dd", Locale.CHINA);
    private static final SimpleDateFormat FORMAT_FULL = new SimpleDateFormat("yyyy-MM-dd", Locale.CHINA);
    
    private static final long MINUTE = 60 * 1000;
    private static final long HOUR = 60 * MINUTE;
    private static final long DAY = 24 * HOUR;
    private static final long WEEK = 7 * DAY;
    
    public static String formatDate(long timestampSeconds) {
        return formatDate(timestampSeconds, System.currentTimeMillis());
    }
    
    /**
     * 将 mm:ss 或 HH:mm:ss 格式时长字符串转换为秒数，异常返回0
     */
    public static int parseDurationStr(String durationStr) {
        if (durationStr == null || durationStr.isEmpty()) return 0;
        try {
            String[] parts = durationStr.split(":");
            if (parts.length == 2) {
                return Integer.parseInt(parts[0]) * 60 + Integer.parseInt(parts[1]);
            } else if (parts.length == 3) {
                return Integer.parseInt(parts[0]) * 3600 + Integer.parseInt(parts[1]) * 60 + Integer.parseInt(parts[2]);
            }
        } catch (Exception e) {}
        return 0;
    }

    /**
     * 将秒数格式化为可读时长字符串（mm:ss 或 H:mm:ss）
     */
    public static String formatDuration(int seconds) {
        if (seconds <= 0) return "00:00";
        if (seconds >= 3600) {
            return String.format("%d:%02d:%02d", seconds / 3600, (seconds % 3600) / 60, seconds % 60);
        } else {
            return String.format("%02d:%02d", seconds / 60, seconds % 60);
        }
    }

    /**
     * 将时长字符串（可能是秒数或mm:ss格式）统一格式化为可读时长
     */
    public static String formatDuration(String durationStr) {
        if (durationStr == null || durationStr.isEmpty()) return "";
        try {
            int seconds = Integer.parseInt(durationStr);
            return formatDuration(seconds);
        } catch (NumberFormatException e) {
            int seconds = parseDurationStr(durationStr);
            if (seconds > 0) {
                return formatDuration(seconds);
            }
            return durationStr;
        }
    }

    public static String formatDate(long timestampSeconds, long nowMillis) {
        long timestampMillis = timestampSeconds * 1000;
        
        long diff = nowMillis - timestampMillis;
        
        if (diff < 0) {
            diff = 0;
        }
        
        if (diff < WEEK) {
            return DateUtils.getRelativeTimeSpanString(
                    timestampMillis,
                    nowMillis,
                    DateUtils.MINUTE_IN_MILLIS,
                    DateUtils.FORMAT_ABBREV_RELATIVE
            ).toString();
        }
        
        Calendar nowCal = Calendar.getInstance();
        nowCal.setTimeInMillis(nowMillis);
        
        Calendar dateCal = Calendar.getInstance();
        dateCal.setTimeInMillis(timestampMillis);
        
        if (nowCal.get(Calendar.YEAR) == dateCal.get(Calendar.YEAR)) {
            return FORMAT_THIS_YEAR.format(new Date(timestampMillis));
        } else {
            return FORMAT_FULL.format(new Date(timestampMillis));
        }
    }
}
