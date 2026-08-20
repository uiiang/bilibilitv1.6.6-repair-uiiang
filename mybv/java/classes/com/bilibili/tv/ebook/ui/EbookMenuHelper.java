package com.bilibili.tv.ebook.ui;

import android.text.TextUtils;

import java.util.ArrayList;
import java.util.List;

/**
 * 电子书菜单统一助手
 *
 * 封装电子书模式下的右侧菜单数据构建、二级菜单索引映射、菜单项动作分发，
 * 使点播 PlayerMenuRight 与直播 LivePlayerMenuRight 复用同一套电子书菜单逻辑。
 *
 * 电子书模式判定约定：menuIndexMap 为 null 或为空列表即进入电子书模式
 * （点播在 xw.S() 中通过 setMenuIndexMap(new ArrayList<>()) 进入电子书模式）
 */
public class EbookMenuHelper {

    // 电子书菜单项文本（书架页/阅读页/普通菜单）
    public static final String MENU_CONTROL_VIDEO = "控制视频";
    public static final String MENU_SELECT_FILE = "选择文件";
    public static final String MENU_ORGANIZE_SHELF = "整理书架";
    public static final String MENU_SCREEN_PERCENT = "屏幕占比";
    public static final String MENU_VIDEO_POSITION = "视频位置";
    public static final String MENU_EXIT_READING = "退出阅读";
    public static final String MENU_CHAPTER_LIST = "章节列表";
    public static final String MENU_FONT_SIZE = "字体大小";
    public static final String MENU_COLOR_THEME = "配色方案";
    public static final String MENU_CLOSE_BOOK = "关闭书籍";
    public static final String MENU_OPEN_EBOOK = "电子书";
    public static final String MENU_CONTROL_EBOOK = "控制电子书";
    public static final String MENU_CLOSE_EBOOK = "关闭电子书";

    /**
     * 电子书菜单动作回调（由点播 xw / 直播 Activity 实现）
     *
     * 动作型菜单项（章节列表/选择文件/整理书架/退出阅读/关闭书籍/控制视频/控制电子书）
     * 由 dispatch() 分发；设置型二级菜单项（字体大小/配色方案/屏幕占比/视频位置）
     * 由 LivePlayerMenuRight 点击处理时调用 set 系列方法。
     */
    public interface EbookActions {
        void openEbookReader();

        void openEbookFileChooser();

        void showChapterList();

        void organizeBookshelf();

        void closeCurrentBook();

        void switchControlTarget(String target);

        /** 设置电子书字体大小（二级菜单 字体大小 项选中） */
        void setEbookFontSize(float fontSize);

        /** 设置电子书配色方案（二级菜单 配色方案 项选中） */
        void setEbookColorTheme(int themeIndex);

        /** 设置电子书屏幕占比（二级菜单 屏幕占比 项选中） */
        void setEbookPercent(int percentIndex);

        /** 设置视频位置（二级菜单 视频位置 项选中） */
        void setVideoPosition(int positionIndex);
    }

    /**
     * 判断是否电子书模式（menuIndexMap 为 null 或空）
     */
    public static boolean isEbookMode(List<Integer> menuIndexMap) {
        return menuIndexMap == null || menuIndexMap.isEmpty();
    }

    /**
     * 判断是否阅读页面（书架页无字体/配色列表，阅读页才有）
     */
    public static boolean isReadingPage(boolean hasFontOrThemeList) {
        return hasFontOrThemeList;
    }

    /**
     * 构建电子书模式菜单
     *
     * @param isReadingBook 是否阅读页面
     * @return 书架页 [控制视频,选择文件,整理书架,屏幕占比,视频位置,退出阅读]
     *         阅读页 [控制视频,章节列表,字体大小,配色方案,屏幕占比,关闭书籍]
     */
    public static List<String> buildEbookMenus(boolean isReadingBook) {
        List<String> menus = new ArrayList<>();
        if (!isReadingBook) {
            menus.add(MENU_CONTROL_VIDEO);
            menus.add(MENU_SELECT_FILE);
            menus.add(MENU_ORGANIZE_SHELF);
            menus.add(MENU_SCREEN_PERCENT);
            menus.add(MENU_VIDEO_POSITION);
            menus.add(MENU_EXIT_READING);
        } else {
            menus.add(MENU_CONTROL_VIDEO);
            menus.add(MENU_CHAPTER_LIST);
            menus.add(MENU_FONT_SIZE);
            menus.add(MENU_COLOR_THEME);
            menus.add(MENU_SCREEN_PERCENT);
            menus.add(MENU_CLOSE_BOOK);
        }
        return menus;
    }

    /**
     * 电子书模式下，将显示索引映射到父类能够识别的二级菜单索引
     *
     * 映射基于当前菜单列表的项内容（数据驱动），自动适配"删除书籍"等条件菜单项
     * 引起的显示索引偏移，构建方与映射方无需同步索引约定。
     *
     * @param menuList     当前电子书菜单列表（main_list）
     * @param displayIndex 菜单显示索引
     * @return 二级菜单索引：字体大小→4、配色方案→5、屏幕占比→10、视频位置→13，无二级菜单→-1
     */
    public static int getOriginalMenuIndex(List<String> menuList, int displayIndex) {
        if (menuList == null || displayIndex < 0 || displayIndex >= menuList.size()) {
            return -1;
        }
        String item = menuList.get(displayIndex);
        if (TextUtils.equals(item, MENU_FONT_SIZE)) {
            return 4;
        }
        if (TextUtils.equals(item, MENU_COLOR_THEME)) {
            return 5;
        }
        if (TextUtils.equals(item, MENU_SCREEN_PERCENT)) {
            return 10;
        }
        if (TextUtils.equals(item, MENU_VIDEO_POSITION)) {
            return 13;
        }
        return -1;
    }

    /**
     * 电子书模式下，二级菜单的当前选中索引
     *
     * @param displayIndex 菜单显示索引（0-5）
     * @param isReadingPage 是否阅读页面
     * @param fontId        字体大小选中索引
     * @param themeId       配色方案选中索引
     * @param percentId     屏幕占比选中索引
     * @return 当前选中索引
     */
    public static int getSelection(int displayIndex, boolean isReadingPage,
                                   int fontId, int themeId, int percentId) {
        switch (displayIndex) {
            case 0: // 控制视频
            case 1: // 章节列表/选择文件
                return 0;
            case 2:
                // 书架页面: 整理书架 → 0
                // 阅读页面: 字体大小 → fontId
                return isReadingPage ? fontId : 0;
            case 3:
                // 书架页面: 屏幕占比 → percentId
                // 阅读页面: 配色方案 → themeId
                return isReadingPage ? themeId : percentId;
            case 4:
                // 书架页面: 视频位置 → 0
                // 阅读页面: 屏幕占比 → percentId
                return isReadingPage ? percentId : 0;
            default:
                return 0;
        }
    }

    /**
     * 判断是否是电子书菜单项
     */
    public static boolean isEbookMenuItem(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return TextUtils.equals(str, MENU_CONTROL_VIDEO)
                || TextUtils.equals(str, MENU_SELECT_FILE)
                || TextUtils.equals(str, MENU_ORGANIZE_SHELF)
                || TextUtils.equals(str, MENU_SCREEN_PERCENT)
                || TextUtils.equals(str, MENU_VIDEO_POSITION)
                || TextUtils.equals(str, MENU_EXIT_READING)
                || TextUtils.equals(str, MENU_CHAPTER_LIST)
                || TextUtils.equals(str, MENU_FONT_SIZE)
                || TextUtils.equals(str, MENU_COLOR_THEME)
                || TextUtils.equals(str, MENU_CLOSE_BOOK)
                || TextUtils.equals(str, MENU_OPEN_EBOOK)
                || TextUtils.equals(str, MENU_CONTROL_EBOOK)
                || TextUtils.equals(str, MENU_CLOSE_EBOOK);
    }

    /**
     * 电子书菜单项动作分发
     *
     * @param str     菜单项文本
     * @param actions 动作回调
     * @return true = 动作已处理（菜单应关闭）；false = 需要二级菜单（继续执行到 super.a()）
     */
    public static boolean dispatch(String str, EbookActions actions) {
        if (actions == null || TextUtils.isEmpty(str)) {
            return false;
        }

        if (TextUtils.equals(str, MENU_CHAPTER_LIST)) {
            actions.showChapterList();
            return true;
        }

        if (TextUtils.equals(str, MENU_SELECT_FILE)) {
            actions.openEbookFileChooser();
            return true;
        }

        if (TextUtils.equals(str, MENU_ORGANIZE_SHELF)) {
            actions.organizeBookshelf();
            return true;
        }

        if (TextUtils.equals(str, MENU_EXIT_READING) || TextUtils.equals(str, MENU_CLOSE_EBOOK)) {
            actions.openEbookReader(); // 再次调用会关闭电子书面板
            return true;
        }

        if (TextUtils.equals(str, MENU_CLOSE_BOOK)) {
            actions.closeCurrentBook(); // 关闭当前书籍，返回书架页面
            return true;
        }

        if (TextUtils.equals(str, MENU_CONTROL_VIDEO)) {
            actions.switchControlTarget("video");
            return true;
        }

        if (TextUtils.equals(str, MENU_CONTROL_EBOOK)) {
            actions.switchControlTarget("ebook");
            return true;
        }

        if (TextUtils.equals(str, MENU_OPEN_EBOOK)) {
            actions.openEbookReader();
            return true;
        }

        // 字体大小/配色方案/屏幕占比/视频位置：需要二级菜单，返回 false
        return false;
    }
}
