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
