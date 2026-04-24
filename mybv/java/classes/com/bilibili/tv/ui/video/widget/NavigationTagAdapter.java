package com.bilibili.tv.ui.video.widget;

import android.content.Context;
import android.graphics.Color;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.bilibili.tv.R;
import java.util.ArrayList;
import java.util.List;

public class NavigationTagAdapter extends RecyclerView.a<NavigationTagAdapter.TagViewHolder> {
    private static final String TAG = "NavigationTag";

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
        Log.i(TAG, "构造 | 创建NavigationTagAdapter实例 | hashCode=" + this.hashCode());
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
        Log.i(TAG, "========== setTags START ==========");
        Log.i(TAG, "setTags | totalCount=" + totalCount
                + " | groupSize=" + groupSize
                + " | binder=" + (binder != null ? binder.getClass().getSimpleName() : "null")
                + " | 旧tags数量=" + tags.size()
                + " | 旧selectedPosition=" + selectedPosition);

        tags.clear();
        if (totalCount <= groupSize) {
            Log.i(TAG, "setTags | totalCount<=groupSize，不生成导航标签");
            d();
            Log.i(TAG, "========== setTags END (无标签) ==========");
            return;
        }

        int groupCount = (totalCount + groupSize - 1) / groupSize;
        Log.i(TAG, "setTags | 计算分组数: groupCount=" + groupCount);

        StringBuilder sb = new StringBuilder("[");
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
            if (i > 0) sb.append(", ");
            sb.append(label);
        }
        sb.append("]");
        Log.i(TAG, "setTags | 生成的标签列表: " + sb.toString());

        selectedPosition = -1;
        d();
        Log.i(TAG, "========== setTags END | 标签数=" + tags.size() + " ==========");
    }

    public void setCustomTags(java.util.List<TagItem> customTags, int groupSize) {
        this.groupSize = groupSize;
        Log.i(TAG, "========== setCustomTags START ==========");
        Log.i(TAG, "setCustomTags | customTags数量=" + (customTags != null ? customTags.size() : 0)
                + " | groupSize=" + groupSize);

        tags.clear();
        if (customTags == null || customTags.isEmpty()) {
            Log.i(TAG, "setCustomTags | customTags为空，不生成导航标签");
            d();
            Log.i(TAG, "========== setCustomTags END (无标签) ==========");
            return;
        }

        tags.addAll(customTags);
        
        StringBuilder sb = new StringBuilder("[");
        for (int i = 0; i < tags.size(); i++) {
            if (i > 0) sb.append(", ");
            sb.append(tags.get(i).label);
        }
        sb.append("]");
        Log.i(TAG, "setCustomTags | 标签列表: " + sb.toString());

        selectedPosition = -1;
        d();
        Log.i(TAG, "========== setCustomTags END | 标签数=" + tags.size() + " ==========");
    }

    public int getGroupIndexForVideoPosition(int videoPosition) {
        // 如果使用自定义标签（基于startIndex），需要遍历查找
        // 自定义标签的startIndex可能不均匀（如基于时间段的分组）
        if (tags.size() > 0) {
            for (int i = 0; i < tags.size(); i++) {
                int currentStart = tags.get(i).startIndex;
                int nextStart = (i + 1 < tags.size()) ? tags.get(i + 1).startIndex : Integer.MAX_VALUE;
                
                if (videoPosition >= currentStart && videoPosition < nextStart) {
                    Log.i(TAG, "getGroupIndexForVideoPosition | videoPosition=" + videoPosition 
                            + " -> tagIndex=" + i + " (自定义标签范围: " + currentStart + "-" + (nextStart - 1) + ")");
                    return i;
                }
            }
            // 如果没找到，返回最后一个标签
            int lastIndex = tags.size() - 1;
            Log.i(TAG, "getGroupIndexForVideoPosition | videoPosition=" + videoPosition 
                    + " -> tagIndex=" + lastIndex + " (fallback到最后一个标签)");
            return lastIndex;
        }
        
        // 默认：均匀分组（如选集菜单）
        int result = videoPosition / groupSize;
        Log.i(TAG, "getGroupIndexForVideoPosition | videoPosition=" + videoPosition 
                + " -> tagIndex=" + result + " (均匀分组，groupSize=" + groupSize + ")");
        return result;
    }

    public int getGroupSize() {
        return groupSize;
    }
    
    /**
     * 获取指定标签对应的视频/截图范围
     * @param tagIndex 标签索引
     * @return int[2]: [startIndex, endIndex] (inclusive)，如果无效返回null
     */
    public int[] getItemRange(int tagIndex) {
        if (tagIndex < 0 || tagIndex >= tags.size()) {
            return null;
        }
        
        int startIndex = tags.get(tagIndex).startIndex;
        int endIndex;
        
        if (tagIndex + 1 < tags.size()) {
            // 有下一个标签，范围是当前标签startIndex到下一个标签startIndex-1
            endIndex = tags.get(tagIndex + 1).startIndex - 1;
        } else {
            // 最后一个标签，范围到数据末尾
            // 由于Adapter不知道数据总数，这里返回startIndex，由调用者处理
            endIndex = Integer.MAX_VALUE;  // 表示到末尾
        }
        
        Log.i(TAG, "getItemRange | tagIndex=" + tagIndex + " -> [" + startIndex + ", " + endIndex + "]");
        return new int[]{startIndex, endIndex};
    }

    public void setSelectedPosition(int position) {
        Log.i(TAG, "========== setSelectedPosition START ==========");
        Log.i(TAG, "setSelectedPosition | " + selectedPosition + " -> " + position
                + " | tagsSize=" + tags.size());

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
                            Log.i(TAG, "setSelectedPosition | notifyItemChanged旧位置: " + finalOldSelected);
                        }
                        if (finalPosition >= 0 && finalPosition < tagsSize) {
                            c(finalPosition);
                            Log.i(TAG, "setSelectedPosition | notifyItemChanged新位置: " + finalPosition);
                        }
                    }
                };
                
                try {
                    java.lang.reflect.Method isComputingMethod = attachedRecyclerView.getClass().getMethod("o");
                    boolean isComputing = (boolean) isComputingMethod.invoke(attachedRecyclerView);
                    
                    if (isComputing) {
                        Log.i(TAG, "setSelectedPosition | RecyclerView正在计算布局，使用post延迟执行");
                        attachedRecyclerView.post(notifyRunnable);
                    } else {
                        notifyRunnable.run();
                    }
                } catch (Exception e) {
                    Log.w(TAG, "setSelectedPosition | isComputingLayout检查失败，使用post延迟执行: " + e.getMessage());
                    attachedRecyclerView.post(notifyRunnable);
                }
            }

            String oldLabel = (oldSelected >= 0 && oldSelected < tags.size()) ? tags.get(oldSelected).label : "none";
            String newLabel = (position >= 0 && position < tags.size()) ? tags.get(position).label : "none";
            Log.i(TAG, "setSelectedPosition | 选中标签切换: " + oldLabel + " -> " + newLabel);
        } else {
            Log.i(TAG, "setSelectedPosition | 位置未变化，跳过: " + position);
        }
        Log.i(TAG, "========== setSelectedPosition END ==========");
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
        Log.i(TAG, "setOnTagFocusListener | listener="
                + (l != null ? l.getClass().getSimpleName() : "null"));
        this.listener = l;
    }

    public void setOnTagClickListener(OnTagClickListener l) {
        Log.i(TAG, "setOnTagClickListener | listener="
                + (l != null ? l.getClass().getSimpleName() : "null"));
        this.clickListener = l;
    }

    public void setFocusBoundaryHandler(FocusBoundaryHandler handler) {
        Log.i(TAG, "setFocusBoundaryHandler | handler="
                + (handler != null ? handler.getClass().getSimpleName() : "null"));
        this.focusBoundaryHandler = handler;
    }

    public void attachRecyclerView(RecyclerView rv) {
        Log.i(TAG, "attachRecyclerView | recyclerView="
                + (rv != null ? "OK(hashCode=" + rv.hashCode() + ")" : "null")
                + " | 替换旧的=" + (attachedRecyclerView != null ? "YES" : "NO"));
        this.attachedRecyclerView = rv;
    }

    @Override
    public TagViewHolder a(ViewGroup parent, int viewType) {
        Log.i(TAG, "onCreateViewHolder | viewType=" + viewType
                + " | parent=" + (parent != null ? parent.getClass().getSimpleName() : "null"));

        if (context == null) {
            context = parent.getContext();
        }
        View view = LayoutInflater.from(context).inflate(R.layout.item_nav_tag, parent, false);
        Log.i(TAG, "onCreateViewHolder | 创建view完成 | hashCode=" + view.hashCode());
        return new TagViewHolder(view);
    }

    @Override
    public void a(TagViewHolder holder, final int position) {
        Log.i(TAG, "onBindViewHolder | position=" + position
                + "/" + (tags.size() - 1));

        if (position < 0 || position >= tags.size()) {
            Log.w(TAG, "onBindViewHolder | position越界! position=" + position + " | tagsSize=" + tags.size());
            return;
        }

        TagItem item = tags.get(position);
        boolean isSelected = (position == selectedPosition);

        Log.i(TAG, "onBindViewHolder | label=" + item.label
                + " | startIndex=" + item.startIndex
                + " | isSelected=" + isSelected);

        holder.textView.setText(item.label);
        holder.textView.setSelected(isSelected);

        if (focusBoundaryHandler != null) {
            focusBoundaryHandler.setupFocusBoundary(holder.a, position, tags.size());
        }

        final int tagPos = position;
        final int startIdx = item.startIndex;
        final String tagLabel = item.label;

        holder.a.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            @Override
            public void onFocusChange(View v, boolean hasFocus) {
                Log.i(TAG, "========== Tag.onFocusChange START ==========");
                Log.i(TAG, "Tag.onFocusChange | 事件类型=焦点变化"
                        + " | hasFocus=" + hasFocus
                        + " | 用户操作=" + (hasFocus ? "遥控器移动到该标签" : "离开该标签")
                        + " | 标签位置=position=" + tagPos
                        + " | 标签文本=label=" + tagLabel
                        + " | 起始索引=startIndex=" + startIdx
                        + " | 组件ID=itemView.id=0x" + Integer.toHexString(v.getId())
                        + " | DOM路径=NavigationTagAdapter.TagViewHolder[" + tagPos + "]");

                if (hasFocus) {
                    Log.i(TAG, "Tag.onFocusChange | 焦点跳转路径: 外部组件 → 导航标签[" + tagLabel + "]");
                    Log.i(TAG, "Tag.onFocusChange | 预期焦点目标: 导航标签[" + tagLabel + "] (position=" + tagPos + ")");

                    if (listener != null) {
                        Log.i(TAG, "Tag.onFocusChange | >>> 回调onTagFocus给VideoListSection"
                                + " | position=" + tagPos + ", startIndex=" + startIdx);
                        listener.onTagFocus(tagPos, startIdx);
                        Log.i(TAG, "Tag.onFocusChange | <<< onTagFocus回调完成");
                    } else {
                        Log.w(TAG, "Tag.onFocusChange | listener为null，无法回调!");
                    }
                } else {
                    Log.i(TAG, "Tag.onFocusChange | 焦点跳转路径: 导航标签[" + tagLabel + "] → 外部组件"
                            + " | 当前selectedPosition=" + selectedPosition);
                }

                Log.i(TAG, "========== Tag.onFocusChange END ==========");
            }
        });

        Log.i(TAG, "onBindViewHolder | 完成 | position=" + position);
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
        Log.i(TAG, "scrollToPosition | position=" + position + " | tagsSize=" + tags.size());
        if (attachedRecyclerView != null && position >= 0 && position < tags.size()) {
            try {
                java.lang.reflect.Method scrollToMethod = attachedRecyclerView.getClass().getMethod("a", int.class);
                scrollToMethod.invoke(attachedRecyclerView, position);
                Log.i(TAG, "scrollToPosition | 执行滚动到position=" + position);
            } catch (Exception e) {
                Log.w(TAG, "scrollToPosition | a(int)调用失败: " + e.getMessage() + "，尝试scrollToPosition");
                try {
                    java.lang.reflect.Method scrollToMethod = attachedRecyclerView.getClass().getMethod("scrollToPosition", int.class);
                    scrollToMethod.invoke(attachedRecyclerView, position);
                    Log.i(TAG, "scrollToPosition | 执行滚动到position=" + position);
                } catch (Exception e2) {
                    Log.w(TAG, "scrollToPosition | scrollToPosition调用失败: " + e2.getMessage());
                }
            }
        } else {
            Log.w(TAG, "scrollToPosition | 无法滚动 | attachedRecyclerView=" 
                    + (attachedRecyclerView != null ? "OK" : "null")
                    + " | position=" + position);
        }
    }

    public void scrollToPositionWithOffset(int position) {
        Log.i(TAG, "scrollToPositionWithOffset | position=" + position + " | tagsSize=" + tags.size());
        if (attachedRecyclerView != null && position >= 0 && position < tags.size()) {
            // 取消之前待执行的滚动请求
            if (pendingScrollRunnable != null) {
                attachedRecyclerView.removeCallbacks(pendingScrollRunnable);
                pendingScrollRunnable = null;
                Log.i(TAG, "scrollToPositionWithOffset | 取消之前的滚动请求");
            }

            final int finalPosition = position;
            pendingScrollRunnable = new Runnable() {
                @Override
                public void run() {
                    if (attachedRecyclerView == null) {
                        Log.i(TAG, "scrollToPositionWithOffset | attachedRecyclerView为null，返回");
                        return;
                    }
                    // 使用scrollToPosition让RecyclerView自己决定滚动位置
                    // 与视频卡片列表的滚动行为保持一致，焦点item会自然出现在屏幕右侧
                    try {
                        java.lang.reflect.Method scrollToMethod = attachedRecyclerView.getClass().getMethod("a", int.class);
                        scrollToMethod.invoke(attachedRecyclerView, finalPosition);
                        Log.i(TAG, "scrollToPositionWithOffset | a(int)成功 | position=" + finalPosition);
                    } catch (Exception e) {
                        Log.w(TAG, "scrollToPositionWithOffset | a(int)失败: " + e.getMessage());
                    }
                    pendingScrollRunnable = null;
                }
            };
            attachedRecyclerView.post(pendingScrollRunnable);
        } else {
            Log.w(TAG, "scrollToPositionWithOffset | 无法滚动 | attachedRecyclerView=" 
                    + (attachedRecyclerView != null ? "OK" : "null")
                    + " | position=" + position);
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
                Log.w(TAG, "findViewByPosition | c(int)失败: " + e.getMessage());
            }
        }
        return null;
    }

    public List<TagItem> getTags() {
        return new ArrayList<>(tags);
    }
}
