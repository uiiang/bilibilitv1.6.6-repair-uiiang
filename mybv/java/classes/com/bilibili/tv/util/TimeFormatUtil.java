package com.bilibili.tv.util;

public class TimeFormatUtil {
    
    public static String formatTime(int timeSeconds, int totalDuration) {
        int hours = timeSeconds / 3600;
        int minutes = (timeSeconds % 3600) / 60;
        int seconds = timeSeconds % 60;
        
        if (totalDuration > 3600) {
            return String.format("%02d:%02d:%02d", hours, minutes, seconds);
        } else {
            return String.format("%02d:%02d", minutes, seconds);
        }
    }
}
