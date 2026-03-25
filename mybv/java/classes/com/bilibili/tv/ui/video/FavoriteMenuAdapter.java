package com.bilibili.tv.ui.video;

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

import mybl.FavoriteFolder;

public class FavoriteMenuAdapter extends RecyclerView.a<RecyclerView.v> {
    private List<FavoriteFolder> folders;
    private OnItemCheckedChangeListener listener;

    public interface OnItemCheckedChangeListener {
        void onItemCheckedChange(FavoriteFolder folder, boolean isChecked, int position);
    }

    public FavoriteMenuAdapter(List<FavoriteFolder> folders, OnItemCheckedChangeListener listener) {
        this.folders = folders;
        this.listener = listener;
    }

    @Override
    public RecyclerView.v a(ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_favorite_menu, parent, false);
        return new ViewHolder(view);
    }

    @Override
    public void a(RecyclerView.v holder, int position) {
        final ViewHolder viewHolder = (ViewHolder) holder;
        final FavoriteFolder folder = folders.get(position);
        viewHolder.favoriteName.setText(folder.getTitle());
        
        if (folder.isFavored()) {
            viewHolder.checkIcon.setVisibility(View.VISIBLE);
        } else {
            viewHolder.checkIcon.setVisibility(View.INVISIBLE);
        }
        
        viewHolder.itemView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                boolean newChecked = !folder.isFavored();
                if (listener != null) {
                    int pos = viewHolder.d();
                    if (pos != -1) {
                        listener.onItemCheckedChange(folder, newChecked, pos);
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
                    if (keyCode == KeyEvent.KEYCODE_DPAD_DOWN && pos == folders.size() - 1) {
                        return true;
                    }
                }
                return false;
            }
        });
    }

    @Override
    public int a() {
        return folders != null ? folders.size() : 0;
    }

    public void notifyDataSetChanged() {
        d();
    }

    public void notifyItemChanged(int position) {
        c(position);
    }

    class ViewHolder extends RecyclerView.v {
        ImageView checkIcon;
        TextView favoriteName;
        LinearLayout itemLayout;
        View itemView;

        ViewHolder(View itemView) {
            super(itemView);
            this.itemView = itemView;
            checkIcon = (ImageView) itemView.findViewById(R.id.check_icon);
            favoriteName = (TextView) itemView.findViewById(R.id.favorite_name);
            itemLayout = (LinearLayout) itemView;
        }
    }
}
