package com.bilibili.tv.ui.video.widget;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class VideoListNavigator {
    private static final String TAG = "ListNav";

    private List<VideoListSection> sections = new ArrayList<>();
    private Map<Integer, Integer> visualOrderMap = new HashMap<>();
    private View upTarget;
    private View downTarget;
    private View epListView;
    private View episodesVideoView;
    private boolean blockEpisodeAutoFocus = true;

    public void registerSection(VideoListSection section) {
        if (section == null) {
            return;
        }
        if (!sections.contains(section)) {
            sections.add(section);
        }
    }

    public void unregisterSection(VideoListSection section) {
        sections.remove(section);
    }

    public void clearSections() {
        sections.clear();
        visualOrderMap.clear();
    }

    public void updateVisualOrder(int sectionId, int visualIndex) {
        visualOrderMap.put(sectionId, visualIndex);
    }

    public void setUpTarget(View view) {
        this.upTarget = view;
    }

    public void setDownTarget(View view) {
        this.downTarget = view;
    }

    public void setEpListView(View view) {
        this.epListView = view;
    }

    public void setEpisodesVideoView(View view) {
        this.episodesVideoView = view;
    }

    public void setBlockEpisodeAutoFocus(boolean block) {
        this.blockEpisodeAutoFocus = block;
    }

    public boolean handleKeyDown(View currentFocus, int keyCode) {
        return handleNavigation(currentFocus, keyCode, false);
    }

    public boolean handleKeyUp(View currentFocus, int keyCode) {
        return handleNavigation(currentFocus, keyCode, true);
    }

    private boolean handleNavigation(View currentFocus, int keyCode, boolean isUp) {
        VideoListSection currentSection = findSectionContainingView(currentFocus);
        List<VideoListSection> visibleSections = getVisibleSections();

        if (isUp) {
            return handleUp(currentFocus, currentSection, visibleSections);
        } else {
            return handleDown(currentFocus, currentSection, visibleSections);
        }
    }

    private boolean handleDown(View currentFocus, VideoListSection currentSection, List<VideoListSection> visibleSections) {
        List<VideoListSection> visualSorted = getVisualSortedSections(visibleSections);

        if (currentSection != null) {
            int currentIndex = getVisualIndex(currentSection, visualSorted);

            if (currentIndex >= 0 && currentIndex < visualSorted.size() - 1) {
                VideoListSection target = visualSorted.get(currentIndex + 1);
                return focusSection(target);
            }
            if (downTarget != null && downTarget.getVisibility() == View.VISIBLE) {
                downTarget.requestFocus();
                return true;
            }
            return false;
        }

        if (!visualSorted.isEmpty()) {
            VideoListSection first = visualSorted.get(0);
            return focusSection(first);
        }

        if (downTarget != null && downTarget.getVisibility() == View.VISIBLE) {
            downTarget.requestFocus();
            return true;
        }
        return false;
    }

    private boolean handleUp(View currentFocus, VideoListSection currentSection, List<VideoListSection> visibleSections) {
        List<VideoListSection> visualSorted = getVisualSortedSections(visibleSections);

        if (currentSection != null) {
            int currentIndex = getVisualIndex(currentSection, visualSorted);

            if (currentIndex > 0) {
                VideoListSection target = visualSorted.get(currentIndex - 1);
                return focusSection(target);
            }
            if (upTarget != null && upTarget.getVisibility() == View.VISIBLE) {
                upTarget.requestFocus();
                return true;
            }
            return false;
        }

        if (!visualSorted.isEmpty()) {
            VideoListSection lastSection = visualSorted.get(visualSorted.size() - 1);
            return focusSection(lastSection);
        }

        if (upTarget != null && upTarget.getVisibility() == View.VISIBLE) {
            upTarget.requestFocus();
            return true;
        }
        return false;
    }

    private boolean focusSection(VideoListSection section) {
        if (section == null) {
            return false;
        }
        if (!section.hasData()) {
            return false;
        }

        View focusView = section.restoreFocusPosition();
        if (focusView != null) {
            boolean success = focusView.requestFocus();
            return true;
        }

        RecyclerView recyclerView = section.getRecyclerView();
        if (recyclerView != null && recyclerView.getChildCount() > 0) {
            View fallbackView = recyclerView.getChildAt(0);
            boolean success = fallbackView.requestFocus();
            return true;
        }

        return false;
    }

    public VideoListSection findSectionContainingView(View view) {
        if (view == null) {
            return null;
        }
        for (VideoListSection section : sections) {
            if (section == view) {
                return section;
            }
            RecyclerView rv = section.getRecyclerView();
            if (rv != null && rv == view) {
                return section;
            }
            if (rv != null) {
                for (int i = 0; i < rv.getChildCount(); i++) {
                    View child = rv.getChildAt(i);
                    if (child == view) {
                        return section;
                    }
                    if (isDescendantOf(child, view)) {
                        return section;
                    }
                }
            }
        }
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
                return section;
            }
        }
        return null;
    }

    public int getSectionIndex(VideoListSection section) {
        int index = sections.indexOf(section);
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
        return result;
    }

    private List<VideoListSection> getVisualSortedSections(List<VideoListSection> visibleSections) {
        if (visualOrderMap.isEmpty()) {
            return new ArrayList<>(visibleSections);
        }

        List<VideoListSection> sorted = new ArrayList<>(visibleSections);
        java.util.Collections.sort(sorted, new java.util.Comparator<VideoListSection>() {
            @Override
            public int compare(VideoListSection a, VideoListSection b) {
                int orderA = visualOrderMap.containsKey(a.getSectionId()) ? visualOrderMap.get(a.getSectionId()) : 999;
                int orderB = visualOrderMap.containsKey(b.getSectionId()) ? visualOrderMap.get(b.getSectionId()) : 999;
                return orderA - orderB;
            }
        });

        return sorted;
    }

    private int getVisualIndex(VideoListSection section, List<VideoListSection> visualSorted) {
        for (int i = 0; i < visualSorted.size(); i++) {
            if (visualSorted.get(i) == section) {
                return i;
            }
        }
        return -1;
    }

    public List<VideoListSection> getAllSections() {
        return new ArrayList<>(sections);
    }

    public int getSectionCount() {
        return sections.size();
    }
}
