package com.bilibili.tv.ui.attention;

import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.bilibili.tv.R;

import java.util.List;

import bl.adz;

public class TagFilterAdapter extends adz<RecyclerView.v> {
    
    private List<TagFilterMenuDialog.TagItem> items;
    private OnItemClickListener listener;

    public interface OnItemClickListener {
        void onItemClick(TagFilterMenuDialog.TagItem item, int position);
    }

    public TagFilterAdapter(List<TagFilterMenuDialog.TagItem> items, OnItemClickListener listener) {
        this.items = items;
        this.listener = listener;
    }

    @Override
    public int e() {
        return 0;
    }

    @Override
    public RecyclerView.v a(ViewGroup viewGroup, int i) {
        View view = LayoutInflater.from(viewGroup.getContext())
            .inflate(R.layout.item_tag_filter, viewGroup, false);
        return new TagFilterViewHolder(view);
    }

    @Override
    public void a(RecyclerView.v holder, int position) {
        if (holder instanceof TagFilterViewHolder) {
            TagFilterViewHolder viewHolder = (TagFilterViewHolder) holder;
            TagFilterMenuDialog.TagItem item = items.get(position);
            
            viewHolder.title.setText(item.getDisplayName());
            viewHolder.itemView.setSelected(item.isSelected);
            
            final int pos = position;
            viewHolder.itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    if (listener != null) {
                        listener.onItemClick(items.get(pos), pos);
                    }
                }
            });
            
            viewHolder.itemView.setOnFocusChangeListener(new View.OnFocusChangeListener() {
                @Override
                public void onFocusChange(View v, boolean hasFocus) {
                    v.setSelected(hasFocus || items.get(pos).isSelected);
                }
            });
        }
    }

    @Override
    public int a() {
        return items != null ? items.size() : 0;
    }

    static class TagFilterViewHolder extends RecyclerView.v {
        TextView title;
        View itemView;

        public TagFilterViewHolder(View itemView) {
            super(itemView);
            this.itemView = itemView;
            title = (TextView) itemView.findViewById(R.id.tag_title);
        }
    }
}
