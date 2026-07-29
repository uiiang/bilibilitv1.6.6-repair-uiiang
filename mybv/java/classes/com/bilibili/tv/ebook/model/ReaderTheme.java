package com.bilibili.tv.ebook.model;

import android.graphics.Color;

/**
 * 阅读器配色方案
 * 移植自episteme参考项目
 */
public class ReaderTheme {
    private String id;
    private String name;
    private int backgroundColor;
    private int textColor;
    private boolean isDark;
    private boolean isSystem;

    public ReaderTheme(String id, String name, int backgroundColor, int textColor, boolean isDark, boolean isSystem) {
        this.id = id;
        this.name = name;
        this.backgroundColor = backgroundColor;
        this.textColor = textColor;
        this.isDark = isDark;
        this.isSystem = isSystem;
    }

    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public int getBackgroundColor() {
        return backgroundColor;
    }

    public int getTextColor() {
        return textColor;
    }

    public boolean isDark() {
        return isDark;
    }

    public boolean isSystem() {
        return isSystem;
    }

    /**
     * 预置配色方案列表
     */
    public static ReaderTheme[] getBuiltInThemes() {
        return new ReaderTheme[] {
            // System - 跟随系统（使用白色和黑色作为默认值）
            new ReaderTheme("system", "System", Color.WHITE, Color.BLACK, false, true),

            // Light - 白底黑字
            new ReaderTheme("light", "Light", Color.parseColor("#FFFFFF"), Color.parseColor("#000000"), false, false),

            // Dark - 深灰背景浅灰文字
            new ReaderTheme("dark", "Dark", Color.parseColor("#121212"), Color.parseColor("#E0E0E0"), true, false),

            // Sepia - 米黄色背景褐色文字
            new ReaderTheme("sepia", "Sepia", Color.parseColor("#FBF0D9"), Color.parseColor("#5F4B32"), false, false),

            // Slate - 深蓝灰背景浅蓝灰文字
            new ReaderTheme("slate", "Slate", Color.parseColor("#2E3440"), Color.parseColor("#ECEFF4"), true, false),

            // OLED - 纯黑背景灰色文字（适合OLED屏幕）
            new ReaderTheme("oled", "OLED", Color.parseColor("#000000"), Color.parseColor("#B0B0B0"), true, false)
        };
    }

    /**
     * 根据ID查找配色方案
     */
    public static ReaderTheme findById(String id) {
        for (ReaderTheme theme : getBuiltInThemes()) {
            if (theme.getId().equals(id)) {
                return theme;
            }
        }
        return getBuiltInThemes()[0]; // 默认返回System
    }
}