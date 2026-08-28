package com.bilibili.tv.ui.attention;

import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;

import com.bilibili.tv.R;
import com.bilibili.tv.ui.video.RightSlidePanelDialog;
import com.bilibili.tv.widget.border.BorderGridLayoutManager;
import com.bilibili.tv.widget.side.SideRightGridLayoutManger;

import java.util.ArrayList;
import java.util.List;

import bl.adl;
import bl.aj;

public class TagFilterMenuDialog extends RightSlidePanelDialog {
    
    private Activity activity;
    private List<TagItem> tagItems = new ArrayList<>();
    private long currentTagid;
    private TagFilterAdapter adapter;
    private OnTagSelectedListener listener;

    public interface OnTagSelectedListener {
        void onTagSelected(long tagid, String tagName);
    }

    public static class TagItem {
        public long tagid;
        public String name;
        public int count;
        public boolean isSelected;

        public TagItem(long tagid, String name, int count) {
            this.tagid = tagid;
            this.name = name;
            this.count = count;
            this.isSelected = false;
        }
        
        public String getDisplayName() {
            if (tagid == -1) {
                return name;
            }
            return name + "(" + count + ")";
        }
    }

    public TagFilterMenuDialog(Activity activity, List<AttentionDynamicSideActivity.TagItem> items, long currentTagid) {
        super(activity, 300, true);
        this.activity = activity;
        this.currentTagid = currentTagid;
        
        for (AttentionDynamicSideActivity.TagItem item : items) {
            this.tagItems.add(new TagItem(item.getTagid(), item.getName(), item.getCount()));
        }
        
        for (TagItem item : this.tagItems) {
            if (item.tagid == currentTagid) {
                item.isSelected = true;
                break;
            }
        }
    }

    public void setOnTagSelectedListener(OnTagSelectedListener listener) {
        this.listener = listener;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        // 先注入内容布局（父类 onCreate 中会加入 panel_content 容器）
        setContent(LayoutInflater.from(activity).inflate(R.layout.dialog_tag_filter_menu_content, null));
        super.onCreate(savedInstanceState);

        android.support.v7.widget.RecyclerView recyclerView = 
            (android.support.v7.widget.RecyclerView) findViewById(R.id.tag_filter_list);
        
        SideRightGridLayoutManger layoutManager = new SideRightGridLayoutManger(activity, 1);
        layoutManager.a(new BorderGridLayoutManager.a() {
            @Override
            public void a(View view, View view2, int i, int i2, int i3) {
            }
        });
        
        recyclerView.setLayoutManager(layoutManager);
        int padding = adl.b(R.dimen.px_30);
        recyclerView.setPadding(padding, padding, padding, padding);
        
        adapter = new TagFilterAdapter(tagItems, new TagFilterAdapter.OnItemClickListener() {
            @Override
            public void onItemClick(TagItem item, int position) {
                if (listener != null) {
                    listener.onTagSelected(item.tagid, item.name);
                }
                dismiss();
            }
        });
        
        recyclerView.setAdapter(adapter);
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == KeyEvent.KEYCODE_BACK) {
            dismiss();
            return true;
        }
        if (keyCode == KeyEvent.KEYCODE_MENU) {
            dismiss();
            return true;
        }
        return super.onKeyDown(keyCode, event);
    }

    @Override
    public void show() {
        super.show();
        android.support.v7.widget.RecyclerView recyclerView = 
            (android.support.v7.widget.RecyclerView) findViewById(R.id.tag_filter_list);
        if (recyclerView != null && adapter != null && adapter.a() > 0) {
            recyclerView.postDelayed(new Runnable() {
                @Override
                public void run() {
                    for (int i = 0; i < recyclerView.getChildCount(); i++) {
                        View child = recyclerView.getChildAt(i);
                        int position = recyclerView.g(child);
                        if (position >= 0 && position < tagItems.size() && tagItems.get(position).isSelected) {
                            child.requestFocus();
                            return;
                        }
                    }
                    if (recyclerView.getChildCount() > 0) {
                        recyclerView.getChildAt(0).requestFocus();
                    }
                }
            }, 100);
        }
    }
}
