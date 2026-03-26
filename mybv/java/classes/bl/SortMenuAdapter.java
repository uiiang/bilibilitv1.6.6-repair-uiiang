package bl;

import android.support.v7.widget.RecyclerView;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.bilibili.tv.R;

import java.util.ArrayList;
import java.util.List;

public class SortMenuAdapter extends RecyclerView.a<RecyclerView.v> {
    private List<SortMenuDialog.SortGroup> groups;
    private List<FlatItem> flatItems = new ArrayList<>();
    private OnItemClickListener listener;
    private RecyclerView recyclerView;
    private int focusedPosition = -1;

    public interface OnItemClickListener {
        void onItemClick(int groupIndex, int itemIndex);
    }

    private static class FlatItem {
        int groupIndex;
        int itemIndex;
        String title;
        String name;
        boolean isSelected;
        boolean isGroupTitle;

        FlatItem(int groupIndex, int itemIndex, String title, String name, boolean isSelected, boolean isGroupTitle) {
            this.groupIndex = groupIndex;
            this.itemIndex = itemIndex;
            this.title = title;
            this.name = name;
            this.isSelected = isSelected;
            this.isGroupTitle = isGroupTitle;
        }
    }

    public SortMenuAdapter(List<SortMenuDialog.SortGroup> groups, OnItemClickListener listener) {
        this.groups = groups;
        this.listener = listener;
        buildFlatItems();
    }

    public void setRecyclerView(RecyclerView recyclerView) {
        this.recyclerView = recyclerView;
    }

    private void buildFlatItems() {
        flatItems.clear();
        for (int g = 0; g < groups.size(); g++) {
            SortMenuDialog.SortGroup group = groups.get(g);
            for (int i = 0; i < group.items.size(); i++) {
                if (i == 0 && group.title != null && !group.title.isEmpty()) {
                    flatItems.add(new FlatItem(g, i, group.title, null, false, true));
                }
                SortMenuDialog.SortItem item = group.items.get(i);
                boolean isSelected = (i == group.selectedIndex);
                flatItems.add(new FlatItem(g, i, null, item.name, isSelected, false));
            }
        }
    }

    @Override
    public RecyclerView.v a(ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_sort_menu_multi, parent, false);
        return new ViewHolder(view);
    }

    @Override
    public void a(RecyclerView.v holder, int position) {
        final ViewHolder viewHolder = (ViewHolder) holder;
        final FlatItem flatItem = flatItems.get(position);

        if (flatItem.isGroupTitle) {
            viewHolder.groupTitle.setText(flatItem.title);
            viewHolder.groupTitle.setVisibility(View.VISIBLE);
            viewHolder.itemLayout.setVisibility(View.GONE);
        } else {
            viewHolder.groupTitle.setVisibility(View.GONE);
            viewHolder.itemLayout.setVisibility(View.VISIBLE);
            viewHolder.sortName.setText(flatItem.name);
            
            if (flatItem.isSelected) {
                viewHolder.checkIcon.setVisibility(View.VISIBLE);
            } else {
                viewHolder.checkIcon.setVisibility(View.INVISIBLE);
            }
            
            final int groupIndex = flatItem.groupIndex;
            final int itemIndex = flatItem.itemIndex;
            final int pos = position;
            
            viewHolder.itemLayout.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    focusedPosition = pos;
                    if (listener != null) {
                        listener.onItemClick(groupIndex, itemIndex);
                    }
                }
            });
            
            viewHolder.itemLayout.setOnKeyListener(new View.OnKeyListener() {
                @Override
                public boolean onKey(View v, int keyCode, KeyEvent event) {
                    if (event.getAction() == KeyEvent.ACTION_DOWN) {
                        if (keyCode == KeyEvent.KEYCODE_DPAD_UP && pos == 0) {
                            return true;
                        }
                        if (keyCode == KeyEvent.KEYCODE_DPAD_DOWN && pos == flatItems.size() - 1) {
                            return true;
                        }
                    }
                    return false;
                }
            });
        }
    }

    @Override
    public int a() {
        return flatItems.size();
    }

    public void notifyDataSetChanged() {
        buildFlatItems();
        d();
        
        if (recyclerView != null && focusedPosition >= 0) {
            final int pos = focusedPosition;
            recyclerView.post(new Runnable() {
                @Override
                public void run() {
                    for (int i = 0; i < recyclerView.getChildCount(); i++) {
                        View child = recyclerView.getChildAt(i);
                        int childPos = recyclerView.g(child);
                        if (childPos == pos) {
                            LinearLayout itemLayout = (LinearLayout) child.findViewById(R.id.item_layout);
                            if (itemLayout != null && itemLayout.getVisibility() == View.VISIBLE) {
                                itemLayout.requestFocus();
                                return;
                            }
                        }
                    }
                }
            });
        }
    }

    class ViewHolder extends RecyclerView.v {
        TextView groupTitle;
        LinearLayout itemLayout;
        ImageView checkIcon;
        TextView sortName;

        ViewHolder(View itemView) {
            super(itemView);
            groupTitle = (TextView) itemView.findViewById(R.id.group_title);
            itemLayout = (LinearLayout) itemView.findViewById(R.id.item_layout);
            checkIcon = (ImageView) itemView.findViewById(R.id.check_icon);
            sortName = (TextView) itemView.findViewById(R.id.sort_name);
        }
    }
}
