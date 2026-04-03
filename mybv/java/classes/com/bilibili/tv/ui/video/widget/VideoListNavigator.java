package com.bilibili.tv.ui.video.widget;

import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

public class VideoListNavigator {
    private static final String TAG = "ListNav";

    private List<VideoListSection> sections = new ArrayList<>();
    private View upTarget;
    private View downTarget;
    private View epListView;
    private View episodesVideoView;
    private boolean blockEpisodeAutoFocus = true;

    public void registerSection(VideoListSection section) {
        if (section == null) {
            Log.w(TAG, "registerSection | section为null，忽略");
            return;
        }
        if (!sections.contains(section)) {
            sections.add(section);
            Log.i(TAG, "registerSection | 注册成功 | sectionId=" + section.getSectionId()
                    + " | 当前总数=" + sections.size()
                    + " | hasData=" + section.hasData());
        } else {
            Log.d(TAG, "registerSection | section已存在，跳过 | sectionId=" + section.getSectionId());
        }
    }

    public void unregisterSection(VideoListSection section) {
        int oldSize = sections.size();
        sections.remove(section);
        Log.i(TAG, "unregisterSection | sectionId=" + (section != null ? section.getSectionId() : "null")
                + " | 移除前=" + oldSize + " | 移除后=" + sections.size());
    }

    public void clearSections() {
        int count = sections.size();
        sections.clear();
        Log.i(TAG, "clearSections | 清除" + count + "个section");
    }

    public void setUpTarget(View view) {
        this.upTarget = view;
        Log.d(TAG, "setUpTarget | view=" + (view != null ? "OK" : "null"));
    }

    public void setDownTarget(View view) {
        this.downTarget = view;
        Log.d(TAG, "setDownTarget | view=" + (view != null ? "OK" : "null"));
    }

    public void setEpListView(View view) {
        this.epListView = view;
        Log.d(TAG, "setEpListView | view=" + (view != null ? "OK" : "null"));
    }

    public void setEpisodesVideoView(View view) {
        this.episodesVideoView = view;
        Log.d(TAG, "setEpisodesVideoView | view=" + (view != null ? "OK" : "null"));
    }

    public void setBlockEpisodeAutoFocus(boolean block) {
        Log.i(TAG, "setBlockEpisodeAutoFocus | " + blockEpisodeAutoFocus + " -> " + block);
        this.blockEpisodeAutoFocus = block;
    }

    public boolean handleKeyDown(View currentFocus, int keyCode) {
        String keyName = getKeyName(keyCode);
        Log.i(TAG, "handleKeyDown | keyName=" + keyName + " | keyCode=" + keyCode
                + " | currentFocus=" + (currentFocus != null ? currentFocus.getClass().getSimpleName() + "@" + currentFocus.getId() : "null")
                + " | totalSections=" + sections.size());
        return handleNavigation(currentFocus, keyCode, false);
    }

    public boolean handleKeyUp(View currentFocus, int keyCode) {
        String keyName = getKeyName(keyCode);
        Log.i(TAG, "handleKeyUp | keyName=" + keyName + " | keyCode=" + keyCode
                + " | currentFocus=" + (currentFocus != null ? currentFocus.getClass().getSimpleName() + "@" + currentFocus.getId() : "null")
                + " | totalSections=" + sections.size());
        return handleNavigation(currentFocus, keyCode, true);
    }

    private static String getKeyName(int keyCode) {
        switch (keyCode) {
            case 19: return "DPAD_UP";
            case 20: return "DPAD_DOWN";
            case 21: return "DPAD_LEFT";
            case 22: return "DPAD_RIGHT";
            case 23: return "DPAD_CENTER";
            case 66: return "ENTER";
            default: return "KEY_" + keyCode;
        }
    }

    private boolean handleNavigation(View currentFocus, int keyCode, boolean isUp) {
        VideoListSection currentSection = findSectionContainingView(currentFocus);
        List<VideoListSection> visibleSections = getVisibleSections();

        Log.d(TAG, "handleNavigation | isUp=" + isUp
                + " | currentSection=" + (currentSection != null ? "id=" + currentSection.getSectionId() : "null")
                + " | visibleSectionsCount=" + visibleSections.size());

        if (isUp) {
            return handleUp(currentFocus, currentSection, visibleSections);
        } else {
            return handleDown(currentFocus, currentSection, visibleSections);
        }
    }

    private boolean handleDown(View currentFocus, VideoListSection currentSection, List<VideoListSection> visibleSections) {
        Log.i(TAG, "handleDown | 开始处理DOWN导航");

        if (currentSection != null) {
            int currentIndex = getSectionIndex(currentSection);
            Log.d(TAG, "handleDown | 当前在section内 | currentIndex=" + currentIndex
                    + " | visibleSize=" + visibleSections.size());

            if (currentIndex >= 0 && currentIndex < visibleSections.size() - 1) {
                VideoListSection target = visibleSections.get(currentIndex + 1);
                Log.i(TAG, "handleDown | 跳转到下一个section | targetId=" + target.getSectionId());
                return focusSection(target);
            }
            if (downTarget != null && downTarget.getVisibility() == View.VISIBLE) {
                Log.i(TAG, "handleDown | 已是最后一个section，跳转到downTarget");
                downTarget.requestFocus();
                return true;
            }
            Log.d(TAG, "handleDown | 无可跳转目标，返回false(不消费事件)");
            return false;
        }

        Log.d(TAG, "handleDown | 当前不在任何section内，查找第一个可见section");
        for (VideoListSection section : visibleSections) {
            if (section.hasData()) {
                Log.i(TAG, "handleDown | 跳转到第一个有数据的section | targetId=" + section.getSectionId());
                return focusSection(section);
            }
        }

        if (downTarget != null && downTarget.getVisibility() == View.VISIBLE) {
            Log.i(TAG, "handleDown | 无可见section，跳转到downTarget");
            downTarget.requestFocus();
            return true;
        }
        Log.d(TAG, "handleDown | 无任何目标，返回false");
        return false;
    }

    private boolean handleUp(View currentFocus, VideoListSection currentSection, List<VideoListSection> visibleSections) {
        Log.i(TAG, "handleUp | 开始处理UP导航");

        if (currentSection != null) {
            int currentIndex = getSectionIndex(currentSection);
            Log.d(TAG, "handleUp | 当前在section内 | currentIndex=" + currentIndex
                    + " | visibleSize=" + visibleSections.size());

            if (currentIndex > 0) {
                VideoListSection target = visibleSections.get(currentIndex - 1);
                Log.i(TAG, "handleUp | 跳转到上一个section | targetId=" + target.getSectionId());
                return focusSection(target);
            }
            if (upTarget != null && upTarget.getVisibility() == View.VISIBLE) {
                Log.i(TAG, "handleUp | 已是第一个section，跳转到upTarget");
                upTarget.requestFocus();
                return true;
            }
            Log.d(TAG, "handleUp | 无可跳转目标，返回false");
            return false;
        }

        Log.d(TAG, "handleUp | 当前不在任何section内，查找最后一个可见section");
        if (!visibleSections.isEmpty()) {
            VideoListSection lastSection = visibleSections.get(visibleSections.size() - 1);
            Log.i(TAG, "handleUp | 跳转到最后一个visible section | targetId=" + lastSection.getSectionId());
            return focusSection(lastSection);
        }

        if (upTarget != null && upTarget.getVisibility() == View.VISIBLE) {
            Log.i(TAG, "handleUp | 无可见section，跳转到upTarget");
            upTarget.requestFocus();
            return true;
        }
        Log.d(TAG, "handleUp | 无任何目标，返回false");
        return false;
    }

    private boolean focusSection(VideoListSection section) {
        if (section == null) {
            Log.e(TAG, "focusSection | section为null!");
            return false;
        }
        if (!section.hasData()) {
            Log.w(TAG, "focusSection | section无数据! sectionId=" + section.getSectionId());
            return false;
        }

        int expectedPosition = section.getFocusPosition();
        Log.i(TAG, "========== focusSection START ==========");
        Log.i(TAG, "focusSection | 目标sectionId=" + section.getSectionId()
                + " | 预期焦点位置=" + expectedPosition);

        View focusView = section.restoreFocusPosition();
        if (focusView != null) {
            int actualPosition = getChildPosition(section, focusView);
            Log.i(TAG, "focusSection | restoreFocus成功"
                    + " | 预期position=" + expectedPosition
                    + " | 实际position=" + actualPosition
                    + " | viewClass=" + focusView.getClass().getSimpleName());
            Log.i(TAG, "focusSection | >>> requestFocus执行");
            boolean success = focusView.requestFocus();
            Log.i(TAG, "focusSection | <<< requestFocus返回 " + success);
            Log.i(TAG, "========== focusSection END ==========");
            return true;
        }

        RecyclerView recyclerView = section.getRecyclerView();
        if (recyclerView != null && recyclerView.getChildCount() > 0) {
            View fallbackView = recyclerView.getChildAt(0);
            int fallbackPosition = 0;
            Log.w(TAG, "focusSection | restoreFocus返回null，fallback到第1个child"
                    + " | 预期position=" + expectedPosition
                    + " | fallbackPosition=" + fallbackPosition);
            Log.i(TAG, "focusSection | >>> fallback requestFocus执行");
            boolean success = fallbackView.requestFocus();
            Log.i(TAG, "focusSection | <<< fallback requestFocus返回 " + success);
            Log.i(TAG, "========== focusSection END ==========");
            return true;
        }

        Log.e(TAG, "focusSection | 无法聚焦! sectionId=" + section.getSectionId()
                + " | childCount=" + (recyclerView != null ? recyclerView.getChildCount() : "rv=null"));
        Log.i(TAG, "========== focusSection END ==========");
        return false;
    }

    private int getChildPosition(VideoListSection section, View view) {
        if (section == null || view == null) return -1;
        RecyclerView rv = section.getRecyclerView();
        if (rv == null) return -1;
        for (int i = 0; i < rv.getChildCount(); i++) {
            if (rv.getChildAt(i) == view) {
                return i;
            }
        }
        return -1;
    }

    public VideoListSection findSectionContainingView(View view) {
        if (view == null) {
            Log.d(TAG, "findSectionContainingView | view为null");
            return null;
        }
        for (VideoListSection section : sections) {
            if (section == view) {
                Log.d(TAG, "findSectionContainingView | 匹配到section本身 | id=" + section.getSectionId());
                return section;
            }
            RecyclerView rv = section.getRecyclerView();
            if (rv != null && rv == view) {
                Log.d(TAG, "findSectionContainingView | 匹配到recyclerView | id=" + section.getSectionId());
                return section;
            }
            if (rv != null) {
                for (int i = 0; i < rv.getChildCount(); i++) {
                    View child = rv.getChildAt(i);
                    if (child == view) {
                        Log.d(TAG, "findSectionContainingView | 匹配到直接子view | id="
                                + section.getSectionId() + " | childIndex=" + i);
                        return section;
                    }
                    if (isDescendantOf(child, view)) {
                        Log.d(TAG, "findSectionContainingView | 匹配到后代子view | id="
                                + section.getSectionId() + " | ancestorChildIdx=" + i);
                        return section;
                    }
                }
            }
        }
        Log.d(TAG, "findSectionContainingView | 未找到匹配section | viewClass="
                + view.getClass().getSimpleName() + " | id=" + view.getId());
        return null;
    }

    private boolean isDescendantOf(View parent, View child) {
        if (parent == null || child == null) return false;
        View p = child.getParent() instanceof View ? (View) child.getParent() : null;
        while (p != null) {
            if (p == parent) return true;
            p = p.getParent() instanceof View ? (View) p.getParent() : null;
        }
        return false;
    }

    public VideoListSection findSectionById(int sectionId) {
        for (VideoListSection section : sections) {
            if (section.getSectionId() == sectionId) {
                Log.d(TAG, "findSectionById | 找到 | sectionId=" + sectionId);
                return section;
            }
        }
        Log.d(TAG, "findSectionById | 未找到 | sectionId=" + sectionId);
        return null;
    }

    public int getSectionIndex(VideoListSection section) {
        int index = sections.indexOf(section);
        Log.d(TAG, "getSectionIndex | sectionId=" + (section != null ? section.getSectionId() : "null")
                + " | index=" + index);
        return index;
    }

    private List<VideoListSection> getVisibleSections() {
        List<VideoListSection> result = new ArrayList<>();
        for (VideoListSection section : sections) {
            boolean isVisible = section.getVisibility() == View.VISIBLE;
            boolean hasD = section.hasData();
            if (isVisible && hasD) {
                result.add(section);
            }
        }
        Log.d(TAG, "getVisibleSections | total=" + sections.size() + " | visible+hasData=" + result.size());
        return result;
    }

    public List<VideoListSection> getAllSections() {
        return new ArrayList<>(sections);
    }

    public int getSectionCount() {
        return sections.size();
    }
}
