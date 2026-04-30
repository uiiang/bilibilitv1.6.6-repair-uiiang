package com.bilibili.tv.ui.video.widget;

import android.content.Context;
import android.graphics.Color;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bilibili.tv.R;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class ChapterListAdapter extends RecyclerView.a<ChapterListAdapter.ChapterViewHolder> {

    public static class ChapterItem {
        public String title;
        public int startTime;
        public int endTime;
        public boolean isPlayed;
        public boolean isCurrent;
    }

    public static class ChapterViewHolder extends RecyclerView.v {
        LinearLayout rootView;
        ImageView playIcon;
        TextView textView;

        ChapterViewHolder(View itemView) {
            super(itemView);
            this.rootView = (LinearLayout) itemView;
            this.playIcon = (ImageView) itemView.findViewById(R.id.chapter_play_icon);
            this.textView = (TextView) itemView.findViewById(R.id.chapter_text);
        }
    }

    public interface OnChapterClickListener {
        void onChapterClick(int chapterIndex, int startTimeSeconds);
    }

    public interface FocusBoundaryHandler {
        void setupFocusBoundary(View itemView, int position, int size);
    }

    private List<ChapterItem> chapters = new ArrayList<>();
    private int currentChapterIndex = -1;
    private OnChapterClickListener listener;
    private FocusBoundaryHandler focusBoundaryHandler;
    private Context context;
    private RecyclerView attachedRecyclerView;

    public ChapterListAdapter() {
    }

    public void setOnChapterClickListener(OnChapterClickListener l) {
        this.listener = l;
    }

    public void setFocusBoundaryHandler(FocusBoundaryHandler handler) {
        this.focusBoundaryHandler = handler;
    }

    public void attachRecyclerView(RecyclerView rv) {
        this.attachedRecyclerView = rv;
    }

    public void setChapters(JSONArray view_points, int currentPlayTimeSec) {
        chapters.clear();
        currentChapterIndex = -1;
        
        if (view_points == null || view_points.length() == 0) {
            d();
            return;
        }
        
        for (int i = 0; i < view_points.length(); i++) {
            JSONObject chapter = view_points.optJSONObject(i);
            if (chapter != null) {
                ChapterItem item = new ChapterItem();
                item.title = chapter.optString("content", "");
                item.startTime = chapter.optInt("from", 0);
                item.endTime = chapter.optInt("to", 0);
                item.isPlayed = item.startTime < currentPlayTimeSec;
                item.isCurrent = item.startTime <= currentPlayTimeSec 
                    && (i + 1 >= view_points.length() 
                        || getNextChapterStartTime(view_points, i + 1) > currentPlayTimeSec);
                
                if (item.isCurrent) {
                    currentChapterIndex = i;
                }
                chapters.add(item);
            }
        }
        d();
    }

    private int getNextChapterStartTime(JSONArray view_points, int startIndex) {
        for (int i = startIndex; i < view_points.length(); i++) {
            JSONObject chapter = view_points.optJSONObject(i);
            if (chapter != null) {
                return chapter.optInt("from", 0);
            }
        }
        return Integer.MAX_VALUE;
    }

    public int getCurrentChapterIndex() {
        return currentChapterIndex;
    }

    public void scrollToCurrentChapter() {
        if (currentChapterIndex >= 0 && attachedRecyclerView != null) {
            try {
                java.lang.reflect.Method scrollToMethod = attachedRecyclerView.getClass().getMethod("a", int.class);
                scrollToMethod.invoke(attachedRecyclerView, currentChapterIndex);
            } catch (Exception e) {
                try {
                    java.lang.reflect.Method scrollToMethod = attachedRecyclerView.getClass().getMethod("scrollToPosition", int.class);
                    scrollToMethod.invoke(attachedRecyclerView, currentChapterIndex);
                } catch (Exception e2) {
                }
            }
        }
    }

    public void focusCurrentChapter() {
        android.util.Log.i("ChapterListAdapter", "[focusCurrentChapter] currentChapterIndex=" + currentChapterIndex + ", attachedRecyclerView=" + attachedRecyclerView);
        if (currentChapterIndex >= 0 && attachedRecyclerView != null) {
            View itemView = findViewByPosition(currentChapterIndex);
            android.util.Log.i("ChapterListAdapter", "[focusCurrentChapter] itemView=" + itemView);
            if (itemView != null) {
                boolean result = itemView.requestFocus();
                android.util.Log.i("ChapterListAdapter", "[focusCurrentChapter] requestFocus result=" + result);
            } else {
                final int index = currentChapterIndex;
                attachedRecyclerView.postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        View v = findViewByPosition(index);
                        android.util.Log.i("ChapterListAdapter", "[focusCurrentChapter delayed] itemView=" + v);
                        if (v != null) {
                            boolean result = v.requestFocus();
                            android.util.Log.i("ChapterListAdapter", "[focusCurrentChapter delayed] requestFocus result=" + result);
                        }
                    }
                }, 100);
            }
        }
    }

    public View findViewByPosition(int position) {
        if (attachedRecyclerView != null && position >= 0 && position < chapters.size()) {
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

    @Override
    public ChapterViewHolder a(ViewGroup parent, int viewType) {
        if (context == null) {
            context = parent.getContext();
        }
        View view = LayoutInflater.from(context).inflate(R.layout.item_chapter, parent, false);
        return new ChapterViewHolder(view);
    }

    @Override
    public void a(ChapterViewHolder holder, final int position) {
        if (position < 0 || position >= chapters.size()) {
            return;
        }

        ChapterItem item = chapters.get(position);

        holder.textView.setText(item.title);
        
        if (item.isCurrent) {
            holder.playIcon.setVisibility(View.VISIBLE);
            holder.textView.setTypeface(null, android.graphics.Typeface.BOLD);
        } else {
            holder.playIcon.setVisibility(View.GONE);
            holder.textView.setTypeface(null, android.graphics.Typeface.NORMAL);
        }

        if (item.isPlayed) {
            holder.rootView.setSelected(true);
        } else {
            holder.rootView.setSelected(false);
        }

        if (focusBoundaryHandler != null) {
            focusBoundaryHandler.setupFocusBoundary(holder.a, position, chapters.size());
        }

        final int chapterPos = position;
        final int startTime = item.startTime;

        holder.a.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (listener != null) {
                    listener.onChapterClick(chapterPos, startTime);
                }
            }
        });
    }

    @Override
    public int a() {
        return chapters.size();
    }

    public int getChapterCount() {
        return chapters.size();
    }
    
    public int getFocusedPosition(View focusedView) {
        if (focusedView == null || attachedRecyclerView == null) {
            return -1;
        }
        for (int i = 0; i < chapters.size(); i++) {
            View itemView = findViewByPosition(i);
            if (itemView != null && (itemView == focusedView || isChildOf(focusedView, itemView))) {
                return i;
            }
        }
        return -1;
    }
    
    private boolean isChildOf(View child, View parent) {
        if (child == null || parent == null) return false;
        View current = child;
        while (current != null) {
            if (current == parent) return true;
            android.view.ViewParent vp = current.getParent();
            if (!(vp instanceof View)) break;
            current = (View) vp;
        }
        return false;
    }

    public boolean isEmpty() {
        return chapters.isEmpty();
    }
}
