package com.bilibili.tv.ui.download;

import android.app.Activity;
import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.bilibili.tv.R;

import java.util.ArrayList;
import java.util.List;

/**
 * 下载管理"下载中"列表的右侧批量操作菜单
 * 样式对齐收藏页右侧排序菜单（右侧300dp深色面板 + 全屏遮罩 + 可聚焦列表项）
 */
public class DownloadingMenuDialog extends Dialog {

    private Activity activity;
    private List<String> itemNames = new ArrayList<>();
    private OnMenuItemClickListener listener;

    public interface OnMenuItemClickListener {
        void onMenuItemClick(int index);
    }

    public DownloadingMenuDialog(Activity activity) {
        super(activity);
        this.activity = activity;
    }

    public void setItems(List<String> names) {
        itemNames.clear();
        if (names != null) {
            itemNames.addAll(names);
        }
    }

    public void setOnMenuItemClickListener(OnMenuItemClickListener listener) {
        this.listener = listener;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        setContentView(R.layout.dialog_downloading_menu);

        Window dialogWindow = getWindow();
        dialogWindow.setBackgroundDrawable(new ColorDrawable(0));
        dialogWindow.setFlags(
            WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS | WindowManager.LayoutParams.FLAG_FULLSCREEN,
            WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS | WindowManager.LayoutParams.FLAG_FULLSCREEN
        );
        WindowManager.LayoutParams windowParams = dialogWindow.getAttributes();
        windowParams.width = WindowManager.LayoutParams.MATCH_PARENT;
        windowParams.height = WindowManager.LayoutParams.MATCH_PARENT;
        dialogWindow.setAttributes(windowParams);

        View decorView = dialogWindow.getDecorView();
        decorView.setPadding(0, 0, 0, 0);

        LinearLayout menuContainer = (LinearLayout) findViewById(R.id.menu_container);
        menuContainer.setFocusable(true);
        menuContainer.setFocusableInTouchMode(true);

        View dimBackground = findViewById(R.id.dim_background);
        dimBackground.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                dismiss();
            }
        });

        android.support.v7.widget.RecyclerView recyclerView = (android.support.v7.widget.RecyclerView) findViewById(R.id.sort_list);
        recyclerView.setLayoutManager(new android.support.v7.widget.LinearLayoutManager(activity));
        recyclerView.setAdapter(new MenuAdapter());
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == KeyEvent.KEYCODE_BACK || keyCode == KeyEvent.KEYCODE_MENU) {
            dismiss();
            return true;
        }
        return super.onKeyDown(keyCode, event);
    }

    @Override
    public void show() {
        super.show();
        // 菜单弹出后焦点默认定位到第一个菜单项
        final android.support.v7.widget.RecyclerView recyclerView = (android.support.v7.widget.RecyclerView) findViewById(R.id.sort_list);
        if (recyclerView != null && itemNames.size() > 0) {
            recyclerView.postDelayed(new Runnable() {
                @Override
                public void run() {
                    for (int i = 0; i < recyclerView.getChildCount(); i++) {
                        View child = recyclerView.getChildAt(i);
                        LinearLayout itemLayout = (LinearLayout) child.findViewById(R.id.item_layout);
                        if (itemLayout != null && itemLayout.getVisibility() == View.VISIBLE) {
                            itemLayout.requestFocus();
                            return;
                        }
                    }
                }
            }, 100);
        }
    }

    /**
     * 菜单项适配器（复用收藏页排序菜单的item布局）
     */
    private class MenuAdapter extends android.support.v7.widget.RecyclerView.a<MenuAdapter.ViewHolder> {

        @Override
        public ViewHolder a(ViewGroup parent, int viewType) {
            View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_sort_menu_multi, parent, false);
            return new ViewHolder(view);
        }

        @Override
        public void a(final ViewHolder holder, final int position) {
            holder.groupTitle.setVisibility(View.GONE);
            holder.itemLayout.setVisibility(View.VISIBLE);
            holder.sortName.setText(itemNames.get(position));
            holder.itemLayout.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    if (listener != null) {
                        listener.onMenuItemClick(position);
                    }
                    dismiss();
                }
            });
            // 阻止方向键焦点移出菜单（对齐收藏页排序菜单的边界处理）
            holder.itemLayout.setOnKeyListener(new View.OnKeyListener() {
                @Override
                public boolean onKey(View v, int keyCode, KeyEvent event) {
                    if (event.getAction() == KeyEvent.ACTION_DOWN) {
                        if (keyCode == KeyEvent.KEYCODE_DPAD_UP && position == 0) {
                            return true;
                        }
                        if (keyCode == KeyEvent.KEYCODE_DPAD_DOWN && position == itemNames.size() - 1) {
                            return true;
                        }
                    }
                    return false;
                }
            });
        }

        @Override
        public int a() {
            return itemNames.size();
        }

        class ViewHolder extends android.support.v7.widget.RecyclerView.v {
            TextView groupTitle;
            LinearLayout itemLayout;
            TextView sortName;

            ViewHolder(View itemView) {
                super(itemView);
                groupTitle = (TextView) itemView.findViewById(R.id.group_title);
                itemLayout = (LinearLayout) itemView.findViewById(R.id.item_layout);
                sortName = (TextView) itemView.findViewById(R.id.sort_name);
            }
        }
    }
}
