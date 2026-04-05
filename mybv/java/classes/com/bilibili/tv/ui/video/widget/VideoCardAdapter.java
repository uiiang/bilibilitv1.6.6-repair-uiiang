package com.bilibili.tv.ui.video.widget;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup;
import com.bilibili.tv.ui.video.VideoDetailActivity;
import java.util.ArrayList;
import java.util.List;

public class VideoCardAdapter extends RecyclerView.a<RecyclerView.v> {

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
        return VideoDetailActivity.f.Companion.a(parent);
    }

    @Override
    public void a(RecyclerView.v holder, int position) {
        if (!(holder instanceof VideoDetailActivity.f)) {
            return;
        }
        VideoDetailActivity.f fHolder = (VideoDetailActivity.f) holder;
        Object item = dataList.get(position);

        if (binder != null) {
            binder.bind(fHolder, item, position);
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
        }
        if (clickListener != null) {
            final Object tagData = item;
            final int pos = position;
            fHolder.a.setTag(tagData);
            fHolder.a.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
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
                
                if (focusListener != null) {
                    focusListener.onItemFocus(position, hasFocus);
                }
            }
        });
    }

    @Override
    public int a() {
        return dataList == null ? 0 : dataList.size();
    }

    public void setData(List<?> data, VideoCardBinder b) {
        this.dataList = (List<Object>) data;
        this.binder = b;
        d();
    }

    public void setFocusBoundaryHandler(FocusBoundaryHandler handler) {
        this.focusBoundaryHandler = handler;
    }

    public void setOnItemClickListener(OnItemClickListener listener) {
        this.clickListener = listener;
    }

    public void setOnItemFocusListener(OnItemFocusListener listener) {
        this.focusListener = listener;
    }

    public void setNextFocusDownId(int resId) {
        this.nextFocusDownId = resId;
    }

    public Object getItem(int position) {
        if (dataList == null || position < 0 || position >= dataList.size()) {
            return null;
        }
        return dataList.get(position);
    }

    public VideoCardBinder getBinder() {
        return binder;
    }
}
