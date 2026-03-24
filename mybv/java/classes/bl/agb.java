package bl;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.GridLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;

import com.bilibili.tv.MainApplication;
import com.bilibili.tv.R;
import com.bilibili.tv.widget.DrawTextView;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class agb extends Dialog implements View.OnClickListener, View.OnFocusChangeListener {

    public static final int TYPE_EXIT = 1;

    private a builder;

    public agb(Context context) {
        super(context);
    }

    public agb(Context context, int themeResId) {
        super(context, themeResId);
    }

    public agb(a builder) {
        super(builder.activity);
        this.builder = builder;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        
        if (builder.type == TYPE_EXIT) {
            setupExitDialog();
        } else {
            setupFilterDialog();
        }
    }

    private void setupExitDialog() {
        View view = LayoutInflater.from(builder.activity).inflate(R.layout.dialog_exit, null);
        setContentView(view);

        TextView titleView = (TextView) view.findViewById(R.id.title);
        TextView confirmView = (TextView) view.findViewById(R.id.confirm_view);
        TextView cancelView = (TextView) view.findViewById(R.id.cancel_view);

        if (builder.title != null) {
            titleView.setText(builder.title);
        }

        if (builder.confirmText != null) {
            confirmView.setText(builder.confirmText);
        } else {
            confirmView.setVisibility(View.GONE);
        }

        if (builder.cancelText != null) {
            cancelView.setText(builder.cancelText);
        } else {
            cancelView.setVisibility(View.GONE);
        }

        confirmView.setOnClickListener(this);
        cancelView.setOnClickListener(this);
        confirmView.setOnFocusChangeListener(this);
        cancelView.setOnFocusChangeListener(this);

        if (confirmView instanceof afz) {
            ((afz) confirmView).setUpDrawable(R.drawable.shadow_red_rect);
        }
        if (cancelView instanceof afz) {
            ((afz) cancelView).setUpDrawable(R.drawable.shadow_red_rect);
        }

        if (builder.focusCancel) {
            cancelView.requestFocus();
        } else {
            confirmView.requestFocus();
        }
    }

    private void setupFilterDialog() {
        int marginFirst = adl.b(R.dimen.px_10);
        int marginBetween = adl.b(R.dimen.px_6);
        int marginTop = adl.b(R.dimen.px_20);
        int textColor = adl.d(R.color.white_50);
        int groupTitleColor = adl.d(R.color.white_80);
        float groupTitleSize = adl.a(R.dimen.px_36);
        float itemTextSize = adl.a(R.dimen.px_42);

        RelativeLayout rootLayout = new RelativeLayout(getContext());
        rootLayout.setLayoutParams(new RelativeLayout.LayoutParams(
            RelativeLayout.LayoutParams.MATCH_PARENT,
            RelativeLayout.LayoutParams.MATCH_PARENT
        ));
        rootLayout.setBackgroundColor(adl.d(R.color.black_60));

        LinearLayout contentLayout = new LinearLayout(getContext());
        contentLayout.setOrientation(LinearLayout.VERTICAL);
        contentLayout.setPadding(adl.b(R.dimen.px_10), adl.b(R.dimen.px_10), 
                                 adl.b(R.dimen.px_10), adl.b(R.dimen.px_10));
        
        RelativeLayout.LayoutParams contentParams = new RelativeLayout.LayoutParams(
            RelativeLayout.LayoutParams.WRAP_CONTENT,
            RelativeLayout.LayoutParams.WRAP_CONTENT
        );
        contentParams.addRule(RelativeLayout.CENTER_IN_PARENT, RelativeLayout.TRUE);
        contentLayout.setLayoutParams(contentParams);

        final List<DrawTextView> selectedViews = new ArrayList<>();
        final List<GridLayout> gridLayouts = new ArrayList<>();
        final List<DrawTextView> groupSelectedViews = new ArrayList<>();
        boolean firstFocusSet = false;
        List<GroupData> groups = builder.groups;
        int groupCount = groups != null ? groups.size() : 0;

        if (groupCount > 0) {
            if (builder.title != null && !builder.title.isEmpty()) {
                TextView dialogTitle = new TextView(getContext());
                dialogTitle.setText(builder.title);
                dialogTitle.setTextColor(groupTitleColor);
                dialogTitle.setTextSize(android.util.TypedValue.COMPLEX_UNIT_PX, groupTitleSize);
                LinearLayout.LayoutParams titleParams = new LinearLayout.LayoutParams(
                    LinearLayout.LayoutParams.WRAP_CONTENT,
                    LinearLayout.LayoutParams.WRAP_CONTENT
                );
                dialogTitle.setLayoutParams(titleParams);
                contentLayout.addView(dialogTitle);
            }

            for (int groupIndex = 0; groupIndex < groupCount; groupIndex++) {
                final int currentGroupIndex = groupIndex;
                GroupData group = groups.get(groupIndex);

                if (groupCount > 1 && group.title != null && !group.title.isEmpty()) {
                    TextView groupTitle = new TextView(getContext());
                    groupTitle.setText(group.title);
                    groupTitle.setTextColor(groupTitleColor);
                    groupTitle.setTextSize(android.util.TypedValue.COMPLEX_UNIT_PX, groupTitleSize);
                    groupTitle.setPadding(0, adl.b(R.dimen.px_20), 0, marginTop);
                    LinearLayout.LayoutParams titleParams = new LinearLayout.LayoutParams(
                        LinearLayout.LayoutParams.WRAP_CONTENT,
                        LinearLayout.LayoutParams.WRAP_CONTENT
                    );
                    groupTitle.setLayoutParams(titleParams);
                    contentLayout.addView(groupTitle);
                }

                final GridLayout gridLayout = new GridLayout(getContext());
                gridLayout.setColumnCount(3);
                gridLayout.setOrientation(GridLayout.HORIZONTAL);
                LinearLayout.LayoutParams gridParams = new LinearLayout.LayoutParams(
                    LinearLayout.LayoutParams.WRAP_CONTENT,
                    LinearLayout.LayoutParams.WRAP_CONTENT
                );
                gridLayout.setLayoutParams(gridParams);
                gridLayouts.add(gridLayout);

                if (group.options != null) {
                    int maxTextWidth = 0;
                    DrawTextView tempView = new DrawTextView(getContext());
                    tempView.setTextSize(android.util.TypedValue.COMPLEX_UNIT_PX, itemTextSize);
                    tempView.setLayoutParams(new ViewGroup.LayoutParams(
                        ViewGroup.LayoutParams.WRAP_CONTENT,
                        ViewGroup.LayoutParams.WRAP_CONTENT
                    ));
                    for (String key : group.options.keySet()) {
                        tempView.setText(key);
                        tempView.measure(View.MeasureSpec.UNSPECIFIED, View.MeasureSpec.UNSPECIFIED);
                        int width = tempView.getMeasuredWidth();
                        if (width > maxTextWidth) {
                            maxTextWidth = width;
                        }
                    }
                    int itemWidth = maxTextWidth + adl.b(R.dimen.px_24);
                    if (itemWidth < adl.b(R.dimen.px_200)) {
                        itemWidth = adl.b(R.dimen.px_200);
                    }
                    int itemHeight = adl.b(R.dimen.px_72);

                    DrawTextView firstItemView = null;
                    DrawTextView selectedInView = null;
                    int index = 0;
                    for (Map.Entry<String, Object> entry : group.options.entrySet()) {
                        index++;
                        final DrawTextView itemView = new DrawTextView(getContext());
                        itemView.setFocusable(true);

                        GridLayout.LayoutParams params = new GridLayout.LayoutParams();
                        params.width = itemWidth;
                        params.height = itemHeight;

                        int leftMargin = ((index - 1) % 3 == 0) ? marginFirst : marginBetween;
                        int top = (index > 3) ? marginTop : 0;
                        params.setMargins(leftMargin, top, 0, 0);
                        itemView.setLayoutParams(params);

                        itemView.setGravity(Gravity.CENTER);
                        itemView.setTextColor(textColor);
                        itemView.setFocusableInTouchMode(true);
                        itemView.getPaint().setTextSize(itemTextSize);
                        itemView.setText(entry.getKey());
                        final Object tagValue = group.useKeyAsTag ? entry.getKey() : entry.getValue();
                        itemView.setTag(new TagData(groupIndex, tagValue));
                        
                        final int fi = groupIndex;
                        itemView.setOnFocusChangeListener(new View.OnFocusChangeListener() {
                            @Override
                            public void onFocusChange(View v, boolean hasFocus) {
                                DrawTextView item = (DrawTextView) v;
                                if (hasFocus) {
                                    item.setUpEnabled(true);
                                } else {
                                    DrawTextView groupSelected = groupSelectedViews.get(fi);
                                    item.setUpEnabled(item == groupSelected);
                                }
                            }
                        });
                        
                        itemView.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                TagData tagData = (TagData) v.getTag();
                                updateGroupSelection(gridLayouts.get(fi), (DrawTextView) v, groupSelectedViews, fi);
                                if (builder.groupClickListener != null) {
                                    builder.groupClickListener.onGroupItemClick(
                                        agb.this, v, fi, tagData.value);
                                }
                            }
                        });
                        itemView.setUpDrawable(R.drawable.shadow_white_rect_with_withe_background);

                        gridLayout.addView(itemView);

                        if (index == 1) {
                            firstItemView = itemView;
                        }

                        if (group.selectedValue != null && 
                            entry.getValue() != null && entry.getValue().equals(group.selectedValue)) {
                            selectedInView = itemView;
                        }
                    }

                    DrawTextView viewToSelect = (selectedInView != null) ? selectedInView : firstItemView;
                    if (viewToSelect != null) {
                        viewToSelect.setUpEnabled(true);
                        selectedViews.add(viewToSelect);
                        groupSelectedViews.add(viewToSelect);
                        if (!firstFocusSet) {
                            viewToSelect.requestFocus();
                            firstFocusSet = true;
                        }
                    } else {
                        groupSelectedViews.add(null);
                    }
                }

                contentLayout.addView(gridLayout);
            }
        }

        if (!firstFocusSet) {
            View firstItem = findFirstDrawTextView(contentLayout);
            if (firstItem != null) {
                firstItem.requestFocus();
            }
        }

        rootLayout.addView(contentLayout);
        setContentView(rootLayout);
    }

    private void updateGroupSelection(GridLayout gridLayout, DrawTextView selectedView, 
                                       List<DrawTextView> groupSelectedViews, int groupIndex) {
        for (int i = 0; i < gridLayout.getChildCount(); i++) {
            View child = gridLayout.getChildAt(i);
            if (child instanceof DrawTextView) {
                DrawTextView item = (DrawTextView) child;
                item.setUpEnabled(item == selectedView);
            }
        }
        groupSelectedViews.set(groupIndex, selectedView);
    }

    private View findFirstDrawTextView(View parent) {
        if (parent instanceof DrawTextView) {
            return parent;
        }
        if (parent instanceof ViewGroup) {
            ViewGroup group = (ViewGroup) parent;
            for (int i = 0; i < group.getChildCount(); i++) {
                View found = findFirstDrawTextView(group.getChildAt(i));
                if (found != null) {
                    return found;
                }
            }
        }
        return null;
    }

    @Override
    public void onClick(View v) {
        int id = v.getId();
        if (id == R.id.cancel_view) {
            if (builder.cancelClickListener != null) {
                builder.cancelClickListener.a(this, v);
            }
        } else if (id == R.id.confirm_view) {
            if (builder.confirmClickListener != null) {
                builder.confirmClickListener.a(this, v);
            }
        }
    }

    @Override
    public void onFocusChange(View v, boolean hasFocus) {
        if (v.getId() == R.id.cancel_view || v.getId() == R.id.confirm_view) {
            if (v instanceof DrawTextView) {
                ((DrawTextView) v).setUpEnabled(hasFocus);
            }
        }
    }

    @Override
    protected void onStart() {
        super.onStart();
        Window window = getWindow();
        window.setBackgroundDrawable(new ColorDrawable(0));

        WindowManager wm = (WindowManager) MainApplication.a().getSystemService(Context.WINDOW_SERVICE);
        DisplayMetrics metrics = new DisplayMetrics();
        wm.getDefaultDisplay().getRealMetrics(metrics);
        window.setLayout(metrics.widthPixels, metrics.heightPixels);
    }

    public interface b {
        void a(agb dialog, View view);
    }

    public interface c {
        void a(agb dialog, View view, String value);
    }

    public interface GroupClickListener {
        void onGroupItemClick(agb dialog, View view, int groupIndex, Object value);
    }

    private static class TagData {
        int groupIndex;
        Object value;

        TagData(int groupIndex, Object value) {
            this.groupIndex = groupIndex;
            this.value = value;
        }
    }

    public static class GroupData {
        public String title;
        public LinkedHashMap<String, Object> options;
        public Object selectedValue;
        public boolean useKeyAsTag;

        public GroupData(String title, LinkedHashMap<String, Object> options, Object selectedValue) {
            this.title = title;
            this.options = options;
            this.selectedValue = selectedValue;
            this.useKeyAsTag = false;
        }
    }

    public static class a {
        private Activity activity;
        private int type = 2;
        private String title;
        private String confirmText;
        private String cancelText;
        private b confirmClickListener;
        private b cancelClickListener;
        private boolean focusCancel = false;

        private List<GroupData> groups;
        private GroupClickListener groupClickListener;

        public a(Activity activity) {
            this.activity = activity;
        }

        public a a(int type) {
            this.type = type;
            return this;
        }

        public a a(String title) {
            this.title = title;
            return this;
        }

        public a a(String text, b listener) {
            this.confirmText = text;
            this.confirmClickListener = listener;
            return this;
        }

        public a b(String text, b listener) {
            this.cancelText = text;
            this.cancelClickListener = listener;
            return this;
        }

        public a a(LinkedHashMap<String, Object> options, c listener) {
            if (this.groups == null) {
                this.groups = new ArrayList<>();
            }
            GroupData groupData = new GroupData(null, options, null);
            groupData.useKeyAsTag = true;
            this.groups.add(groupData);
            this.groupClickListener = new GroupClickListener() {
                @Override
                public void onGroupItemClick(agb dialog, View view, int groupIndex, Object value) {
                    if (listener != null) {
                        listener.a(dialog, view, value != null ? value.toString() : null);
                    }
                }
            };
            return this;
        }

        public a a(Object selectedValue) {
            if (this.groups != null && !this.groups.isEmpty()) {
                this.groups.get(0).selectedValue = selectedValue;
            }
            return this;
        }

        public a a(boolean focusCancel) {
            this.focusCancel = focusCancel;
            return this;
        }

        public agb a() {
            return new agb(this);
        }

        public a addGroup(String title, LinkedHashMap<String, Object> options, Object selectedValue) {
            if (this.groups == null) {
                this.groups = new ArrayList<>();
            }
            this.groups.add(new GroupData(title, options, selectedValue));
            return this;
        }

        public a setGroupClickListener(GroupClickListener listener) {
            this.groupClickListener = listener;
            return this;
        }
    }
}
