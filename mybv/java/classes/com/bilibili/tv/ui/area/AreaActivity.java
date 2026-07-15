package com.bilibili.tv.ui.area;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.TextView;
import android.util.Log;

import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;
import java.util.HashMap;
import java.util.LinkedHashMap;

import bl.adl;
import bl.adw;
import bl.adz;
import bl.agd;
import bl.cj;
import bl.agf;
import bl.adr;
import bl.adq;
import bl.bbi;
import bl.bbg;
import bl.abl;
import bl.agb;
import bl.wf;
import bl.wg;

import com.bilibili.tv.R;
import com.bilibili.tv.api.category.CategoryMeta;
import com.bilibili.tv.api.category.CategoryManager;
import com.bilibili.tv.ui.base.BaseSideActivity;
import com.bilibili.tv.widget.side.SideLeftSelectLinearLayout;
import com.bilibili.tv.widget.FixLinearLayoutManager;

public final class AreaActivity extends BaseSideActivity implements View.OnLongClickListener, wf {
    public static final AreaActivity.Companion Companion = new AreaActivity.Companion(null);
    private static final String f = "subarea_id";
    private int b;
    private AreaActivity.Adapter c;
    private adr d;
    private boolean e;

    @Override
    public void a(agd agdVar) {
    }

    @Override
    public int g() {
        return R.layout.activity_area;
    }

    public String a() {
        return "ott-platform.area.0.0.pv";
    }

    public static void a(Context context, int subareaId) {
        Intent intent = new Intent(context, AreaActivity.class);
        intent.putExtra(f, subareaId);
        context.startActivity(intent);
    }

    @Override
    public void a(Bundle bundle) {
        Intent intent = getIntent();
        if (intent == null) {
            return;
        }
        
        this.b = intent.getIntExtra(f, 0);
        if (this.b == 0) {
            bl.lr.b(this, "分区id错误！！！");
            return;
        }
        
        // 判断是否为特殊分区
        if (isSpecialCategory(this.b)) {
            // 特殊分区：保持原有实现（排行榜、直播、每周必看、其它）
            Log.i("AreaActivity", "Special category: " + this.b + ", using old implementation");
            initSpecialCategory(bundle);
        } else {
            // 普通分区：使用新的视频列表实现
            Log.i("AreaActivity", "Normal category: " + this.b + ", using new implementation");
            initNormalCategory(bundle);
        }
    }
    
    /**
     * 判断是否为特殊分区
     */
    private boolean isSpecialCategory(int tid) {
        return tid == CategoryManager.T2_RANKING ||
               tid == CategoryManager.T1_LIVE ||
               tid == CategoryManager.T1_WEEKLY ||
               tid == CategoryManager.T2_ELSE;
    }
    
    /**
     * 初始化特殊分区（保持原有实现）
     */
    private void initSpecialCategory(Bundle bundle) {
        b((RecyclerView) d(R.id.recycler_view));
        
        TextView titleView = (TextView) d(R.id.content_name);
        CategoryMeta categoryMeta = CategoryManager.getPrimaryCategoryBy(getApplicationContext(), this.b);
        if (categoryMeta != null) {
            titleView.setText(categoryMeta.mTypeName);
            bl.ok.a("tv_channel_pageview", new String[]{"name", categoryMeta.mTypeName});
        }
        
        this.d = new adr(getSupportFragmentManager(), R.id.fragment_container, categoryMeta);
        
        android.support.v7.widget.RecyclerView.h layoutManager = new AreaActivity.LeftLayoutManager(this, this, 1, false);
        j().setLayoutManager(layoutManager);
        
        cj<String> cjVar = new cj<>();
        int count = this.d.a();
        for (int i = 0; i < count; i++) {
            cjVar.b(i, this.d.b(i).toString());
        }
        
        this.c = new AreaActivity.Adapter(this, cjVar, this.b);
        j().setFocusable(false);
        j().setHasFixedSize(true);
        j().setAdapter(this.c);
        
        j().getViewTreeObserver().addOnGlobalFocusChangeListener(new AreaActivity.GlobalFocusChangeListener(this));
        j().getViewTreeObserver().addOnTouchModeChangeListener(new AreaActivity.TouchModeChangeListener(this));
    }
    
    /**
     * 初始化普通分区（新实现）
     */
    private void initNormalCategory(Bundle bundle) {
        // Log.i("AreaActivity", "========== initNormalCategory START ==========");
        // Log.i("AreaActivity", "TID: " + this.b);

        // 使用新的布局（包含顶部header和视频列表）
        setContentView(R.layout.activity_area_normal);

        // 设置分区标题
        android.widget.TextView titleView = (android.widget.TextView) findViewById(R.id.content_name);
        // Log.i("AreaActivity", "titleView=" + titleView);
        if (titleView != null) {
            CategoryMeta categoryMeta = CategoryManager.getPrimaryCategoryBy(getApplicationContext(), this.b);
            // Log.i("AreaActivity", "categoryMeta=" + categoryMeta + ", tid=" + this.b);
            if (categoryMeta != null) {
                // Log.i("AreaActivity", "Setting title: " + categoryMeta.mTypeName);
                titleView.setText(categoryMeta.mTypeName);
            } else {
                Log.w("AreaActivity", "categoryMeta is null!");
            }
        } else {
            Log.e("AreaActivity", "titleView is null!");
        }

        // 加载Fragment到fragment_container
        // Log.i("AreaActivity", "Creating AreaVideoListFragment");
        AreaVideoListFragment fragment = AreaVideoListFragment.newInstance(this.b);
        // Log.i("AreaActivity", "Fragment created: " + fragment.hashCode());

        android.support.v4.app.FragmentTransaction transaction = getSupportFragmentManager().beginTransaction();
        transaction.replace(R.id.fragment_container, fragment);
        transaction.commitNow(); // 使用commitNow立即执行
        // Log.i("AreaActivity", "========== initNormalCategory END ==========");
    }

    @Override
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        // 普通分区：不处理特殊按键（无左侧菜单，无排序功能）
        if (!isSpecialCategory(this.b)) {
            return super.dispatchKeyEvent(keyEvent);
        }
        
        // 特殊分区：保持原有按键处理逻辑
        if (this.c == null || this.d == null) {
            return super.dispatchKeyEvent(keyEvent);
        }
        
        int action = keyEvent.getAction();
        int keyCode = keyEvent.getKeyCode();
        
        if (action == KeyEvent.ACTION_DOWN && keyCode == KeyEvent.KEYCODE_MENU) {
            View currentFocus = getCurrentFocus();
            Fragment frag = h();
            if (currentFocus != null && frag != null && frag.getView() != null) {
                if (isDescendantOf(frag.getView(), currentFocus)) {
                    showSortMenu();
                    return true;
                }
            }
        }
        
        if (action == KeyEvent.ACTION_DOWN) {
            View currentFocus = getCurrentFocus();
            if (currentFocus == null) {
                return super.dispatchKeyEvent(keyEvent);
            }
            
            switch (keyCode) {
                case KeyEvent.KEYCODE_DPAD_LEFT:
                    if (TextUtils.equals((CharSequence) ((View) currentFocus.getParent()).getTag(), adw.a)) {
                        this.c.b(false);
                        break;
                    }
                    break;
                case KeyEvent.KEYCODE_DPAD_RIGHT:
                    Fragment h = h();
                    if (h == null) {
                        return true;
                    }
                    if ((h instanceof adw) && !((adw) h).c()) {
                        return true;
                    }
                    if (currentFocus instanceof SideLeftSelectLinearLayout) {
                        ((SideLeftSelectLinearLayout) currentFocus).c();
                        this.c.b(true);
                        break;
                    }
                    break;
            }
        }
        
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override
    public Fragment h() {
        if (this.d == null || this.c == null) {
            return null;
        }
        return this.d.d(this.c.f());
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        this.c = null;
        this.d = null;
    }

    @Override
    public boolean onLongClick(View v) {
        bbi.b(v, "v");
        
        Map<String, String> map = new HashMap<>();
        map.put("page", String.valueOf(this.b));
        abl.a.a("ott-platform.area.sort.0.click", map);
        
        View currentFocus = getCurrentFocus();
        if (currentFocus == null) {
            return true;
        }
        
        Fragment fragment = h();
        if (!(fragment instanceof adq)) {
            return true;
        }
        
        showSortMenu();
        return true;
    }

    private void showSortMenu() {
        Fragment fragment = h();
        if (!(fragment instanceof adq)) {
            return;
        }
        
        final adq areaFragment = (adq) fragment;
        final View selectedView = getSelectedView();
        
        bl.SortMenuDialog dialog = new bl.SortMenuDialog(this);
        dialog.addGroup(null,
            new String[]{"综合排序", "最新发布", "最多播放", "最多评论", "最多弹幕", "最多收藏"},
            new String[]{"default", "senddate", "view", "reply", "danmaku", "favorite"},
            getCurrentSortValue(areaFragment));
        dialog.setOnSortSelectedListener(new bl.SortMenuDialog.OnSortSelectedListener() {
            @Override
            public void onSortSelected(String sortOrder, String sortName) {
                RegionApiManager.ListOrder listOrder = getSortOrderFromString(sortOrder);
                areaFragment.a(listOrder);
                
                if (selectedView != null) {
                    selectedView.requestFocus();
                }
            }
        });
        dialog.show();
    }

    private View getSelectedView() {
        RecyclerView leftRv = j();
        if (leftRv == null) {
            return null;
        }
        for (int i = 0; i < leftRv.getChildCount(); i++) {
            View child = leftRv.getChildAt(i);
            if (child.isSelected()) {
                return child;
            }
        }
        return null;
    }

    private String getCurrentSortValue(adq fragment) {
        RegionApiManager.ListOrder order = fragment.b();
        if (order == null) {
            return "default";
        }
        return order.toString();
    }

    private RegionApiManager.ListOrder getSortOrderFromString(String value) {
        if (value == null) {
            return RegionApiManager.ListOrder.DEFAULT;
        }
        switch (value) {
            case "senddate":
                return RegionApiManager.ListOrder.SENDDATE;
            case "view":
                return RegionApiManager.ListOrder.VIEW;
            case "reply":
                return RegionApiManager.ListOrder.REPLY;
            case "danmaku":
                return RegionApiManager.ListOrder.DANMAKU;
            case "favorite":
                return RegionApiManager.ListOrder.FAVORITE;
            default:
                return RegionApiManager.ListOrder.DEFAULT;
        }
    }

    private boolean isDescendantOf(View parent, View child) {
        if (parent == null || child == null) {
            return false;
        }
        ViewParent p = child.getParent();
        while (p instanceof View) {
            if (p == parent) {
                return true;
            }
            p = p.getParent();
        }
        return false;
    }

    @Override
    public boolean a_() {
        return wg.a(this);
    }

    @Override
    public Bundle b() {
        Bundle bundle = new Bundle();
        bundle.putString("page", String.valueOf(this.b));
        return bundle;
    }

    public static class Companion {
        private Companion() {
        }

        public Companion(bbg bbgVar) {
            this();
        }

        public void a(Context context, int subareaId) {
            AreaActivity.a(context, subareaId);
        }
    }

    private static class LeftLayoutManager extends FixLinearLayoutManager {
        private final AreaActivity activity;

        public LeftLayoutManager(AreaActivity activity, Context context, int orientation, boolean reverseLayout) {
            super(context, orientation, reverseLayout);
            this.activity = activity;
        }

        @Override
        public View d(View view, int direction) {
            View result = super.d(view, direction);
            if (direction == View.FOCUS_LEFT && activity.c != null) {
                activity.c.b(false);
            }
            return result;
        }
    }

    private static class GlobalFocusChangeListener implements ViewTreeObserver.OnGlobalFocusChangeListener {
        private final WeakReference<AreaActivity> activityRef;

        public GlobalFocusChangeListener(AreaActivity activity) {
            this.activityRef = new WeakReference<>(activity);
        }

        @Override
        public void onGlobalFocusChanged(View oldFocus, View newFocus) {
            AreaActivity activity = activityRef.get();
            if (activity == null || activity.isFinishing()) {
                return;
            }
            
            if (oldFocus != null && oldFocus.getParent() instanceof View) {
                View parent = (View) oldFocus.getParent();
                if (TextUtils.equals((CharSequence) parent.getTag(), adw.a)) {
                    oldFocus.setSelected(false);
                }
            }
        }
    }

    private static class TouchModeChangeListener implements ViewTreeObserver.OnTouchModeChangeListener {
        private final WeakReference<AreaActivity> activityRef;

        public TouchModeChangeListener(AreaActivity activity) {
            this.activityRef = new WeakReference<>(activity);
        }

        @Override
        public void onTouchModeChanged(boolean isInTouchMode) {
            AreaActivity activity = activityRef.get();
            if (activity == null || activity.isFinishing()) {
                return;
            }
            activity.e = isInTouchMode;
        }
    }

    public static class Adapter extends adz<RecyclerView.v> implements Runnable {
        private final WeakReference<AreaActivity> activityRef;
        private final cj<String> items;
        private final int subareaId;
        private int currentPosition;
        private long lastFocusTime;
        private boolean isFocused;

        @Override
        public int e() {
            return 0;
        }

        public Adapter(AreaActivity activity, cj<String> items, int subareaId) {
            this.activityRef = new WeakReference<>(activity);
            this.items = items;
            this.subareaId = subareaId;
        }

        @Override
        public RecyclerView.v a(ViewGroup viewGroup, int i) {
            return agf.a(viewGroup);
        }

        @Override
        public void a(final RecyclerView.v vVar, int i) {
            if (vVar instanceof agf) {
                if (this.items != null) {
                    ((agf) vVar).n.setText(this.items.a(i));
                }
                
                vVar.a.setOnFocusChangeListener(new View.OnFocusChangeListener() {
                    @Override
                    public void onFocusChange(View view, boolean hasFocus) {
                        AreaActivity activity = activityRef.get();
                        if (!hasFocus) {
                            view.removeCallbacks(Adapter.this);
                            if (isFocused) {
                                return;
                            }
                            vVar.a.setSelected(false);
                            return;
                        }
                        
                        if (activity == null || activity.isFinishing() || activity.d == null) {
                            return;
                        }
                        
                        int position = vVar.f();
                        if (System.currentTimeMillis() - lastFocusTime < 500) {
                            view.removeCallbacks(Adapter.this);
                        }
                        
                        currentPosition = position;
                        lastFocusTime = System.currentTimeMillis();
                        isFocused = false;
                        vVar.a.setSelected(true);
                        
                        if (vVar.a instanceof SideLeftSelectLinearLayout) {
                            ((SideLeftSelectLinearLayout) vVar.a).a();
                        }
                        
                        activity.b(4);
                        view.postDelayed(Adapter.this, 300L);
                    }
                });
            }
        }

        @Override
        public int a() {
            if (this.items == null) {
                return 0;
            }
            return this.items.b();
        }

        public void b(boolean isFocused) {
            this.isFocused = isFocused;
        }

        public int f() {
            return this.currentPosition;
        }

        @Override
        public void run() {
            AreaActivity activity = activityRef.get();
            if (activity == null || activity.isFinishing() || activity.d == null) {
                return;
            }
            activity.d.c(this.currentPosition);
        }
    }
}
