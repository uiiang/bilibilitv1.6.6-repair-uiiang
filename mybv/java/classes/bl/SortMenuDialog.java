package bl;

import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;

import com.bilibili.tv.R;
import com.bilibili.tv.ui.video.RightSlidePanelDialog;

import java.util.ArrayList;
import java.util.List;

public class SortMenuDialog extends RightSlidePanelDialog {
    
    private Activity activity;
    private List<SortGroup> groups = new ArrayList<>();
    private SortMenuAdapter adapter;
    private OnConfirmListener listener;

    public interface OnConfirmListener {
        void onConfirm(List<SortGroup> groups);
    }

    public static class SortGroup {
        public String title;
        public List<SortItem> items = new ArrayList<>();
        public int selectedIndex = 0;

        public SortGroup(String title) {
            this.title = title;
        }

        public void addItem(String name, String value) {
            items.add(new SortItem(name, value));
        }

        public String getSelectedValue() {
            if (selectedIndex >= 0 && selectedIndex < items.size()) {
                return items.get(selectedIndex).value;
            }
            return "";
        }

        public String getSelectedName() {
            if (selectedIndex >= 0 && selectedIndex < items.size()) {
                return items.get(selectedIndex).name;
            }
            return "";
        }
    }

    public static class SortItem {
        public String name;
        public String value;
        public boolean isSelected;

        public SortItem(String name, String value) {
            this.name = name;
            this.value = value;
            this.isSelected = false;
        }
    }

    public SortMenuDialog(Activity activity) {
        super(activity, 300, true);
        this.activity = activity;
    }

    public void addGroup(String title, String[] names, String[] values, String currentValue) {
        SortGroup group = new SortGroup(title);
        boolean foundMatch = false;
        for (int i = 0; i < names.length && i < values.length; i++) {
            group.addItem(names[i], values[i]);
            if (values[i].equals(currentValue)) {
                group.selectedIndex = i;
                foundMatch = true;
            }
        }
        if (!foundMatch && group.items.size() > 0) {
            group.selectedIndex = 0;
        }
        groups.add(group);
    }

    public void setSortItems(String[] names, String[] values) {
        addGroup(null, names, values, null);
    }

    public void setSortItems(String[] names, String[] values, String currentValue) {
        addGroup(null, names, values, currentValue);
    }

    public void setOnConfirmListener(OnConfirmListener listener) {
        this.listener = listener;
    }

    public void setOnSortSelectedListener(final OnSortSelectedListener singleListener) {
        this.listener = new OnConfirmListener() {
            @Override
            public void onConfirm(List<SortGroup> groups) {
                if (singleListener != null && !groups.isEmpty()) {
                    SortGroup group = groups.get(0);
                    singleListener.onSortSelected(group.getSelectedValue(), group.getSelectedName());
                }
            }
        };
    }

    public interface OnSortSelectedListener {
        void onSortSelected(String sortOrder, String sortName);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        // 先注入内容布局（父类 onCreate 中会加入 panel_content 容器）
        setContent(LayoutInflater.from(activity).inflate(R.layout.dialog_sort_menu_content, null));
        super.onCreate(savedInstanceState);

        android.support.v7.widget.RecyclerView recyclerView = (android.support.v7.widget.RecyclerView) findViewById(R.id.sort_list);
        recyclerView.setLayoutManager(new android.support.v7.widget.LinearLayoutManager(activity));
        adapter = new SortMenuAdapter(groups, new SortMenuAdapter.OnItemClickListener() {
            @Override
            public void onItemClick(int groupIndex, int itemIndex) {
                if (groupIndex >= 0 && groupIndex < groups.size()) {
                    SortGroup group = groups.get(groupIndex);
                    group.selectedIndex = itemIndex;
                    adapter.notifyDataSetChanged();
                    
                    if (groups.size() == 1) {
                        if (listener != null) {
                            listener.onConfirm(groups);
                        }
                        dismiss();
                    }
                }
            }
        });
        recyclerView.setAdapter(adapter);
        adapter.setRecyclerView(recyclerView);
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == KeyEvent.KEYCODE_BACK || keyCode == KeyEvent.KEYCODE_MENU) {
            if (listener != null) {
                listener.onConfirm(groups);
            }
            dismiss();
            return true;
        }
        return super.onKeyDown(keyCode, event);
    }

    @Override
    public void show() {
        super.show();
        final android.support.v7.widget.RecyclerView recyclerView = (android.support.v7.widget.RecyclerView) findViewById(R.id.sort_list);
        if (recyclerView != null && adapter != null && adapter.a() > 0) {
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
}
