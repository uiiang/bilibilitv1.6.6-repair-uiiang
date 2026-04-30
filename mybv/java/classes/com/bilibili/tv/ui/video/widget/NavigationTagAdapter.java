package com.bilibili.tv.ui.video.widget;

import android.content.Context;
import android.graphics.Color;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.bilibili.tv.R;
import java.util.ArrayList;
import java.util.List;

public class NavigationTagAdapter extends RecyclerView.a<NavigationTagAdapter.TagViewHolder> {

    public static class TagItem {
        public String label;
        public int startIndex;

        public TagItem(String label, int startIndex) {
            this.label = label;
            this.startIndex = startIndex;
        }
    }

    public static class TagViewHolder extends RecyclerView.v {
        TextView textView;

        TagViewHolder(View itemView) {
            super(itemView);
            this.textView = (TextView) itemView.findViewById(R.id.nav_tag_text);
        }
    }

    public interface OnTagFocusListener {
        void onTagFocus(int tagIndex, int startIndex);
    }

    public interface OnTagClickListener {
        void onTagClick(int tagIndex, int startIndex);
    }

    public interface FocusBoundaryHandler {
        void setupFocusBoundary(View itemView, int position, int size);
    }

    private List<TagItem> tags = new ArrayList<>();
    private int selectedPosition = -1;
    private int groupSize = 10;
    private NavigationTagBinder tagBinder;
    private OnTagFocusListener listener;
    private OnTagClickListener clickListener;
    private FocusBoundaryHandler focusBoundaryHandler;
    private Context context;
    private RecyclerView attachedRecyclerView;
    
    // 滚动防抖：保存待执行的滚动请求，用于取消之前的请求
    private Runnable pendingScrollRunnable = null;

    public NavigationTagAdapter() {
    }

    public void setTags(int totalCount) {
        setTags(totalCount, 10, null);
    }

    public void setTags(int totalCount, int groupSize) {
        setTags(totalCount, groupSize, null);
    }

    public void setTags(int totalCount, int groupSize, NavigationTagBinder binder) {
        this.groupSize = groupSize;
        this.tagBinder = binder;

        tags.clear();
        if (totalCount <= groupSize) {
            d();
            return;
        }

        int groupCount = (totalCount + groupSize - 1) / groupSize;

        for (int i = 0; i < groupCount; i++) {
            int start = i * groupSize;
            int end = Math.min((i + 1) * groupSize - 1, totalCount - 1);
            String label;
            if (tagBinder != null) {
                label = tagBinder.generateLabel(i, start, end, totalCount);
            } else {
                label = (start + 1) + "-" + (end + 1);
            }
            tags.add(new TagItem(label, start));
        }

        selectedPosition = -1;
        d();
    }

    public void setCustomTags(java.util.List<TagItem> customTags, int groupSize) {
        this.groupSize = groupSize;

        tags.clear();
        if (customTags == null || customTags.isEmpty()) {
            d();
            return;
        }

        tags.addAll(customTags);

        selectedPosition = -1;
        d();
    }

    public int getGroupIndexForVideoPosition(int videoPosition) {
        if (tags.size() > 0) {
            for (int i = 0; i < tags.size(); i++) {
                int currentStart = tags.get(i).startIndex;
                int nextStart = (i + 1 < tags.size()) ? tags.get(i + 1).startIndex : Integer.MAX_VALUE;
                
                if (videoPosition >= currentStart && videoPosition < nextStart) {
                    return i;
                }
            }
            return tags.size() - 1;
        }
        
        return videoPosition / groupSize;
    }

    public int getGroupSize() {
        return groupSize;
    }
    
    public int[] getItemRange(int tagIndex) {
        if (tagIndex < 0 || tagIndex >= tags.size()) {
            return null;
        }
        
        int startIndex = tags.get(tagIndex).startIndex;
        int endIndex;
        
        if (tagIndex + 1 < tags.size()) {
            endIndex = tags.get(tagIndex + 1).startIndex - 1;
        } else {
            endIndex = Integer.MAX_VALUE;
        }
        
        return new int[]{startIndex, endIndex};
    }

    public void setSelectedPosition(int position) {
        if (selectedPosition != position) {
            final int oldSelected = selectedPosition;
            selectedPosition = position;

            if (attachedRecyclerView != null) {
                final int finalPosition = position;
                final int finalOldSelected = oldSelected;
                final int tagsSize = tags.size();
                
                Runnable notifyRunnable = new Runnable() {
                    @Override
                    public void run() {
                        if (finalOldSelected >= 0 && finalOldSelected < tagsSize) {
                            c(finalOldSelected);
                        }
                        if (finalPosition >= 0 && finalPosition < tagsSize) {
                            c(finalPosition);
                        }
                    }
                };
                
                try {
                    java.lang.reflect.Method isComputingMethod = attachedRecyclerView.getClass().getMethod("o");
                    boolean isComputing = (boolean) isComputingMethod.invoke(attachedRecyclerView);
                    
                    if (isComputing) {
                        attachedRecyclerView.post(notifyRunnable);
                    } else {
                        notifyRunnable.run();
                    }
                } catch (Exception e) {
                    attachedRecyclerView.post(notifyRunnable);
                }
            }
        }
    }

    public int getSelectedPosition() {
        return selectedPosition;
    }

    public int getStartIndex(int position) {
        if (position >= 0 && position < tags.size()) {
            return tags.get(position).startIndex;
        }
        return -1;
    }

    public String getLabel(int position) {
        if (position >= 0 && position < tags.size()) {
            return tags.get(position).label;
        }
        return null;
    }

    public void setOnTagFocusListener(OnTagFocusListener l) {
        this.listener = l;
    }

    public void setOnTagClickListener(OnTagClickListener l) {
        this.clickListener = l;
    }

    public void setFocusBoundaryHandler(FocusBoundaryHandler handler) {
        this.focusBoundaryHandler = handler;
    }

    public void attachRecyclerView(RecyclerView rv) {
        this.attachedRecyclerView = rv;
    }

    @Override
    public TagViewHolder a(ViewGroup parent, int viewType) {
        if (context == null) {
            context = parent.getContext();
        }
        View view = LayoutInflater.from(context).inflate(R.layout.item_nav_tag, parent, false);
        return new TagViewHolder(view);
    }

    @Override
    public void a(TagViewHolder holder, final int position) {
        if (position < 0 || position >= tags.size()) {
            return;
        }

        TagItem item = tags.get(position);
        boolean isSelected = (position == selectedPosition);

        holder.textView.setText(item.label);
        holder.textView.setSelected(isSelected);

        if (focusBoundaryHandler != null) {
            focusBoundaryHandler.setupFocusBoundary(holder.a, position, tags.size());
        }

        final int tagPos = position;
        final int startIdx = item.startIndex;

        holder.a.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            @Override
            public void onFocusChange(View v, boolean hasFocus) {
                if (hasFocus) {
                    if (listener != null) {
                        listener.onTagFocus(tagPos, startIdx);
                    }
                }
            }
        });
    }

    @Override
    public int a() {
        return tags.size();
    }

    public int getTagCount() {
        return tags.size();
    }

    public boolean isEmpty() {
        return tags.isEmpty();
    }

    public void scrollToPosition(int position) {
        if (attachedRecyclerView != null && position >= 0 && position < tags.size()) {
            try {
                java.lang.reflect.Method scrollToMethod = attachedRecyclerView.getClass().getMethod("a", int.class);
                scrollToMethod.invoke(attachedRecyclerView, position);
            } catch (Exception e) {
                try {
                    java.lang.reflect.Method scrollToMethod = attachedRecyclerView.getClass().getMethod("scrollToPosition", int.class);
                    scrollToMethod.invoke(attachedRecyclerView, position);
                } catch (Exception e2) {
                }
            }
        }
    }

    public void scrollToPositionWithOffset(int position) {
        if (attachedRecyclerView != null && position >= 0 && position < tags.size()) {
            if (pendingScrollRunnable != null) {
                attachedRecyclerView.removeCallbacks(pendingScrollRunnable);
                pendingScrollRunnable = null;
            }

            final int finalPosition = position;
            pendingScrollRunnable = new Runnable() {
                @Override
                public void run() {
                    if (attachedRecyclerView == null) {
                        return;
                    }
                    
                    Object layoutManager = attachedRecyclerView.getLayoutManager();
                    if (layoutManager != null) {
                        try {
                            java.lang.reflect.Method scrollToWithOffset = layoutManager.getClass().getMethod("b", int.class, int.class);
                            scrollToWithOffset.invoke(layoutManager, finalPosition, 0);
                        } catch (Exception e) {
                            try {
                                java.lang.reflect.Method scrollToMethod = attachedRecyclerView.getClass().getMethod("a", int.class);
                                scrollToMethod.invoke(attachedRecyclerView, finalPosition);
                            } catch (Exception e2) {
                            }
                        }
                    }
                    pendingScrollRunnable = null;
                }
            };
            attachedRecyclerView.post(pendingScrollRunnable);
        }
    }

    public View findViewByPosition(int position) {
        if (attachedRecyclerView != null && position >= 0 && position < tags.size()) {
            try {
                Object layoutManager = attachedRecyclerView.getLayoutManager();
                if (layoutManager != null) {
                    java.lang.reflect.Method findViewMethod = layoutManager.getClass().getMethod("c", int.class);
                    return (View) findViewMethod.invoke(layoutManager, position);
                }
            } catch (Exception e) {
            }
        }
        return null;
    }

    public List<TagItem> getTags() {
        return new ArrayList<>(tags);
    }
}
