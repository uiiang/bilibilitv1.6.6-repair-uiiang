package com.bilibili.tv.ui.video.widget;

import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.bilibili.tv.ui.video.VideoDetailActivity;
import java.util.ArrayList;
import java.util.List;

public class VideoCardAdapter extends RecyclerView.a<RecyclerView.v> {
    private static final String TAG = "CardAdapter";

    public interface FocusBoundaryHandler {
        void setupFocusBoundary(View itemView, int position, int size);
    }

    public interface OnItemClickListener {
        void onItemClick(Object data, int position);
    }

    public interface OnItemFocusListener {
        void onItemFocus(int position, boolean hasFocus);
    }

    private List<Object> dataList = new ArrayList();
    private VideoCardBinder binder;
    private FocusBoundaryHandler focusBoundaryHandler;
    private OnItemClickListener clickListener;
    private OnItemFocusListener focusListener;
    private int nextFocusDownId = View.NO_ID;

    @Override
    public RecyclerView.v a(ViewGroup parent, int viewType) {
        Log.d(TAG, "onCreateViewHolder | viewType=" + viewType);
        return VideoDetailActivity.f.Companion.a(parent);
    }

    @Override
    public void a(RecyclerView.v holder, int position) {
        Log.i(TAG, "onBindViewHolder | position=" + position
                + " | totalSize=" + (dataList == null ? 0 : dataList.size())
                + " | binder=" + (binder != null ? binder.getClass().getSimpleName() : "null")
                + " | holderClass=" + (holder != null ? holder.getClass().getSimpleName() : "null"));

        if (!(holder instanceof VideoDetailActivity.f)) {
            Log.w(TAG, "onBindViewHolder | position=" + position + " | holder类型不匹配，跳过");
            return;
        }
        VideoDetailActivity.f fHolder = (VideoDetailActivity.f) holder;
        Object item = dataList.get(position);

        Log.d(TAG, "onBindViewHolder | position=" + position
                + " | itemClass=" + (item != null ? item.getClass().getSimpleName() : "null"));

        if (binder != null) {
            binder.bind(fHolder, item, position);
        } else {
            Log.w(TAG, "onBindViewHolder | position=" + position + " | binder为null，无法绑定数据!");
        }
        View itemView = fHolder.a;
        if (itemView != null) {
            int size = dataList.size();
            if (position == 0) {
                itemView.setNextFocusLeftId(itemView.getId());
            } else {
                itemView.setNextFocusLeftId(View.NO_ID);
            }
            if (position == size - 1) {
                itemView.setNextFocusRightId(itemView.getId());
            } else {
                itemView.setNextFocusRightId(View.NO_ID);
            }
            if (nextFocusDownId != View.NO_ID) {
                itemView.setNextFocusDownId(nextFocusDownId);
            }
            Log.i(TAG, "onBindViewHolder | position=" + position
                    + " | 焦点边界 | isFirst=" + (position == 0)
                    + " | isLast=" + (position == size - 1)
                    + " | nextFocusDownId=" + nextFocusDownId);
        }
        if (clickListener != null) {
            final Object tagData = item;
            final int pos = position;
            fHolder.a.setTag(tagData);
            fHolder.a.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    Log.i(TAG, "onClick | position=" + pos
                            + " | dataClass=" + (tagData != null ? tagData.getClass().getSimpleName() : "null"));
                    clickListener.onItemClick(tagData, pos);
                }
            });
        }
        fHolder.a.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            @Override
            public void onFocusChange(View v, boolean hasFocus) {
                VideoDetailActivity.f fHolder2 = (VideoDetailActivity.f) holder;
                if (fHolder2.z() != null) {
                    fHolder2.z().setUpEnabled(hasFocus);
                }
                Log.i(TAG, "========== Card onFocusChange ==========");
                Log.i(TAG, "Card onFocusChange | position=" + position
                        + " | hasFocus=" + hasFocus
                        + " | viewId=" + v.getId()
                        + " | viewClass=" + v.getClass().getSimpleName()
                        + " | 边框状态=" + (fHolder2.z() != null ? (hasFocus ? "显示" : "隐藏") : "null"));
                if (hasFocus) {
                    Log.i(TAG, "Card onFocusChange | >>> 卡片获得焦点 | position=" + position);
                } else {
                    Log.i(TAG, "Card onFocusChange | <<< 卡片失去焦点 | position=" + position);
                }
                Log.i(TAG, "========== Card onFocusChange END ==========");
                
                if (focusListener != null) {
                    focusListener.onItemFocus(position, hasFocus);
                }
            }
        });
    }

    @Override
    public int a() {
        int count = dataList == null ? 0 : dataList.size();
        Log.d(TAG, "getItemCount | return=" + count);
        return count;
    }

    public void setData(List<?> data, VideoCardBinder b) {
        this.dataList = (List<Object>) data;
        this.binder = b;
        Log.i(TAG, "setData | dataSize=" + (data == null ? 0 : data.size())
                + " | binderClass=" + (b != null ? b.getClass().getSimpleName() : "null"));
        d();
    }

    public void setFocusBoundaryHandler(FocusBoundaryHandler handler) {
        this.focusBoundaryHandler = handler;
        Log.d(TAG, "setFocusBoundaryHandler | handler=" + (handler != null ? "已设置" : "null"));
    }

    public void setOnItemClickListener(OnItemClickListener listener) {
        this.clickListener = listener;
        Log.d(TAG, "setOnItemClickListener | listener=" + (listener != null ? "已设置" : "null"));
    }

    public void setOnItemFocusListener(OnItemFocusListener listener) {
        this.focusListener = listener;
        Log.d(TAG, "setOnItemFocusListener | listener=" + (listener != null ? "已设置" : "null"));
    }

    public void setNextFocusDownId(int resId) {
        this.nextFocusDownId = resId;
        Log.d(TAG, "setNextFocusDownId | resId=" + resId);
    }

    public Object getItem(int position) {
        if (dataList == null || position < 0 || position >= dataList.size()) {
            Log.w(TAG, "getItem | position=" + position + " | 越界! totalSize="
                    + (dataList == null ? 0 : dataList.size()));
            return null;
        }
        return dataList.get(position);
    }

    public VideoCardBinder getBinder() {
        return binder;
    }
}
