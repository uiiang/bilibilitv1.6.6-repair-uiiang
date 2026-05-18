package com.bilibili.tv.ui.auth;

import android.support.v7.widget.RecyclerView;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.bilibili.tv.R;

import java.util.List;

import mybl.RelationTagItem;

public class RelationTagAdapter extends RecyclerView.a<RecyclerView.v> {
    private List<RelationTagItem> items;
    private OnItemToggleListener listener;

    public interface OnItemToggleListener {
        void onItemToggle(RelationTagItem item, boolean isSelected, int position);
    }

    public RelationTagAdapter(List<RelationTagItem> items, OnItemToggleListener listener) {
        this.items = items;
        this.listener = listener;
    }

    @Override
    public RecyclerView.v a(ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_relation_tag_menu, parent, false);
        return new ViewHolder(view);
    }

    @Override
    public void a(RecyclerView.v holder, int position) {
        final ViewHolder viewHolder = (ViewHolder) holder;
        final RelationTagItem item = items.get(position);
        viewHolder.tagName.setText(item.getDisplayName());

        if (item.isSelected()) {
            viewHolder.checkIcon.setVisibility(View.VISIBLE);
        } else {
            viewHolder.checkIcon.setVisibility(View.INVISIBLE);
        }

        viewHolder.itemView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                boolean newSelected = !item.isSelected();
                if (listener != null) {
                    int pos = viewHolder.d();
                    if (pos != -1) {
                        listener.onItemToggle(item, newSelected, pos);
                    }
                }
            }
        });

        viewHolder.itemView.setOnKeyListener(new View.OnKeyListener() {
            @Override
            public boolean onKey(View v, int keyCode, KeyEvent event) {
                if (event.getAction() == KeyEvent.ACTION_DOWN) {
                    int pos = viewHolder.d();
                    if (pos == -1) return false;
                    if (keyCode == KeyEvent.KEYCODE_DPAD_UP && pos == 0) {
                        return true;
                    }
                    if (keyCode == KeyEvent.KEYCODE_DPAD_DOWN && pos == items.size() - 1) {
                        return true;
                    }
                }
                return false;
            }
        });
    }

    @Override
    public int a() {
        return items != null ? items.size() : 0;
    }

    public void notifyDataSetChanged() {
        d();
    }

    public void notifyItemChanged(int position) {
        c(position);
    }

    class ViewHolder extends RecyclerView.v {
        ImageView checkIcon;
        TextView tagName;
        LinearLayout itemLayout;
        View itemView;

        ViewHolder(View itemView) {
            super(itemView);
            this.itemView = itemView;
            checkIcon = (ImageView) itemView.findViewById(R.id.check_icon);
            tagName = (TextView) itemView.findViewById(R.id.tag_name);
            itemLayout = (LinearLayout) itemView;
        }
    }
}
