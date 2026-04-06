package com.bilibili.tv.ui.video.widget;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup;
import com.bilibili.tv.ui.video.VideoDetailActivity;
import bl.abd;
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

    private static final int VIEW_TYPE_NORMAL = 0;
    private static final int VIEW_TYPE_COMPACT = 1;

    private List<Object> dataList = new ArrayList();
    private VideoCardBinder binder;
    private FocusBoundaryHandler focusBoundaryHandler;
    private OnItemClickListener clickListener;
    private OnItemFocusListener focusListener;
    private int nextFocusDownId = View.NO_ID;
    private boolean useCompactLayout = false;

    public VideoCardAdapter() {}

    public VideoCardAdapter(Context context) {
        this.useCompactLayout = abd.get_other_column(context) == abd.OTHER_COLUMN_COMPACT;
    }

    public void setUseCompactLayout(boolean compact) {
        this.useCompactLayout = compact;
    }

    public boolean isUseCompactLayout() {
        return this.useCompactLayout;
    }

    @Override
    public int a(int position) {
        return useCompactLayout ? VIEW_TYPE_COMPACT : VIEW_TYPE_NORMAL;
    }

    @Override
    public RecyclerView.v a(ViewGroup parent, int viewType) {
        if (viewType == VIEW_TYPE_COMPACT) {
            return CompactVideoHolder.Companion.create(parent);
        } else {
            return VideoDetailActivity.f.Companion.a(parent);
        }
    }

    @Override
    public void a(RecyclerView.v holder, int position) {
        Object item = dataList.get(position);
        View itemView = holder.a;
        int size = dataList.size();

        if (holder instanceof VideoDetailActivity.f) {
            bindNormalHolder((VideoDetailActivity.f) holder, item, position, size);
        } else if (holder instanceof CompactVideoHolder) {
            bindCompactHolder((CompactVideoHolder) holder, item, position, size);
        }
    }

    private void bindNormalHolder(final VideoDetailActivity.f fHolder, final Object item, final int position, int size) {
        if (binder != null) {
            binder.bind(fHolder, item, position);
        }
        View itemView = fHolder.a;
        if (itemView != null) {
            setupFocusBoundary(itemView, position, size);
            if (nextFocusDownId != View.NO_ID) {
                itemView.setNextFocusDownId(nextFocusDownId);
            }
        }
        if (clickListener != null) {
            fHolder.a.setTag(item);
            fHolder.a.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    clickListener.onItemClick(item, position);
                }
            });
        }
        fHolder.a.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            @Override
            public void onFocusChange(View v, boolean hasFocus) {
                if (fHolder.z() != null) {
                    fHolder.z().setUpEnabled(hasFocus);
                }
                if (focusListener != null) {
                    focusListener.onItemFocus(position, hasFocus);
                }
            }
        });
    }

    private void bindCompactHolder(final CompactVideoHolder compactHolder, final Object item, final int position, int size) {
        if (binder != null) {
            binder.bindCompact(compactHolder, item, position);
        }
        View itemView = compactHolder.a;
        if (itemView != null) {
            setupFocusBoundary(itemView, position, size);
            if (nextFocusDownId != View.NO_ID) {
                itemView.setNextFocusDownId(nextFocusDownId);
            }
        }
        if (clickListener != null) {
            compactHolder.a.setTag(item);
            compactHolder.a.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    clickListener.onItemClick(item, position);
                }
            });
        }
        compactHolder.a.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            @Override
            public void onFocusChange(View v, boolean hasFocus) {
                if (compactHolder.getRootLayout() != null) {
                    compactHolder.getRootLayout().setUpEnabled(hasFocus);
                }
                if (focusListener != null) {
                    focusListener.onItemFocus(position, hasFocus);
                }
            }
        });
    }

    private void setupFocusBoundary(View itemView, int position, int size) {
        if (itemView == null) return;
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
