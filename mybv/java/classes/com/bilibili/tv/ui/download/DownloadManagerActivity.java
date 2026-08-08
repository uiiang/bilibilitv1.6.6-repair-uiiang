package com.bilibili.tv.ui.download;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v7.widget.RecyclerView;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import bl.adl;
import bl.adw;
import bl.adz;
import bl.bbg;
import bl.bbi;
import bl.cj;
import com.bilibili.tv.R;
import com.bilibili.tv.ui.base.BaseUpViewActivity;
import com.bilibili.tv.ui.ranking.RankingLeftLinearLayoutManger;
import com.bilibili.tv.widget.side.SideLeftSelectLinearLayout;
import java.lang.ref.WeakReference;
import kotlin.TypeCastException;

/* compiled from: BL */
/* loaded from: classes.dex */
public final class DownloadManagerActivity extends BaseUpViewActivity {
    public static final a Companion = new a(null);
    private static final String e = "fromType";
    private static final String EXTRA_FRAGMENT_INDEX = "fragment_index";
    private RecyclerView a;
    private b b;
    private Integer c = 0;
    private DownloadPagerAdapter d;
    // 记忆当前显示的Fragment索引（0:下载中，1:已下载）
    private int currentFragmentIndex = 0;
    // 跳转其它页面期间左侧导航菜单焦点是否被禁用（防止返回时窗口焦点恢复误落左侧菜单触发Fragment误切换）
    private boolean leftFocusBlocked = false;

    @Override // com.bilibili.tv.ui.base.BaseUpViewActivity
    public void a(bl.agd agdVar) {
    }

    @Override // com.bilibili.tv.ui.base.BaseActivity
    public int g() {
        return R.layout.activity_download_manager;
    }

    @Override // com.bilibili.tv.ui.base.BaseActivity
    public void a(Bundle bundle) {
        this.a = (RecyclerView) d(R.id.recycler_view);
        ((TextView) d(R.id.content_name)).setText(adl.e(R.string.download_manager));
        Intent intent = getIntent();
        this.c = intent != null ? Integer.valueOf(intent.getIntExtra(e, 0)) : null;

        // 恢复Fragment索引（从Intent或savedInstanceState）
        if (bundle != null) {
            currentFragmentIndex = bundle.getInt(EXTRA_FRAGMENT_INDEX, 0);
        } else if (intent != null) {
            currentFragmentIndex = intent.getIntExtra(EXTRA_FRAGMENT_INDEX, 0);
        }
    }

    @Override
    public void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        // 保存当前Fragment索引
        outState.putInt(EXTRA_FRAGMENT_INDEX, currentFragmentIndex);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.app.AppCompatActivity, android.app.Activity
    public void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        bbi.a((Object) supportFragmentManager, "supportFragmentManager");
        this.d = new DownloadPagerAdapter(supportFragmentManager, R.id.fragment_container);

        DownloadPagerAdapter downloadPagerAdapter = this.d;
        if (downloadPagerAdapter == null) {
            bbi.a();
        }
        int a2 = downloadPagerAdapter.a();
        cj cjVar = new cj();
        int i3 = a2 - 1;
        if (i3 >= 0) {
            int i4 = 0;
            while (true) {
                DownloadPagerAdapter downloadPagerAdapter2 = this.d;
                if (downloadPagerAdapter2 == null) {
                    bbi.a();
                }
                cjVar.b(i4, downloadPagerAdapter2.b(i4).toString());
                if (i4 == i3) {
                    break;
                } else {
                    i4++;
                }
            }
        }
        this.b = new b(this, cjVar);
        RankingLeftLinearLayoutManger rankingLeftLinearLayoutManger = new RankingLeftLinearLayoutManger(this, 1, false);
        RecyclerView recyclerView = this.a;
        if (recyclerView == null) {
            bbi.a();
        }
        recyclerView.setLayoutManager(rankingLeftLinearLayoutManger);
        RecyclerView recyclerView2 = this.a;
        if (recyclerView2 == null) {
            bbi.a();
        }
        recyclerView2.setFocusable(false);
        RecyclerView recyclerView3 = this.a;
        if (recyclerView3 == null) {
            bbi.a();
        }
        recyclerView3.setHasFixedSize(true);
        RecyclerView recyclerView4 = this.a;
        if (recyclerView4 == null) {
            bbi.a();
        }
        recyclerView4.setAdapter(this.b);

        // 恢复上次显示的Fragment（或默认显示第一个）
        this.d.c(currentFragmentIndex);

        // 同步左侧导航菜单的焦点位置和选中状态（选中项始终跟随当前Fragment索引）
        this.b.e(currentFragmentIndex);
        final int fragmentIndex = currentFragmentIndex;
        // 延迟设置选中状态：首次进入时左侧RecyclerView可能尚未布局完成（无子View），
        // 需要等布局完成后设置，否则选中背景色不显示
        this.a.post(new Runnable() {
            @Override
            public void run() {
                DownloadManagerActivity.this.setLeftSelected(fragmentIndex);
                // 若左侧列表仍未布局完成则延迟重试
                if (DownloadManagerActivity.this.a != null
                        && DownloadManagerActivity.this.a.getChildCount() == 0) {
                    DownloadManagerActivity.this.a.postDelayed(new Runnable() {
                        @Override
                        public void run() {
                            DownloadManagerActivity.this.setLeftSelected(fragmentIndex);
                        }
                    }, 300L);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bilibili.tv.ui.base.BaseUpViewActivity, com.bilibili.tv.ui.base.BaseActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.b = (b) null;
        this.d = (DownloadPagerAdapter) null;
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        // 跳转其它页面（二级列表/视频详情）时，禁用左侧导航菜单的焦点能力：
        // 返回页面时系统窗口焦点恢复会优先把焦点给第一个可聚焦view（左侧"下载中"菜单项），
        // 触发其onFocusChange导致Fragment被误切换到下载中。禁用后窗口焦点只能落在右侧列表。
        if (this.a != null) {
            int childCount = this.a.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View child = this.a.getChildAt(i);
                if (child != null) {
                    child.setFocusable(false);
                }
            }
            this.leftFocusBlocked = true;
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        // 延迟恢复左侧导航菜单的焦点能力：确保系统窗口焦点恢复（onResume后的首次布局）期间
        // 左侧菜单仍不可聚焦，焦点保持在右侧列表；恢复后正常切换菜单不受影响
        if (this.leftFocusBlocked && this.a != null) {
            this.leftFocusBlocked = false;
            final RecyclerView leftRecyclerView = this.a;
            leftRecyclerView.postDelayed(new Runnable() {
                @Override // java.lang.Runnable
                public void run() {
                    if (DownloadManagerActivity.this.a == null) {
                        return;
                    }
                    int childCount = DownloadManagerActivity.this.a.getChildCount();
                    for (int i = 0; i < childCount; i++) {
                        View child = DownloadManagerActivity.this.a.getChildAt(i);
                        if (child != null) {
                            child.setFocusable(true);
                        }
                    }
                }
            }, 400L);
        }
    }

    @Override // com.bilibili.tv.ui.base.BaseActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (this.b == null || this.d == null) {
            return super.dispatchKeyEvent(keyEvent);
        }
        Integer action = keyEvent != null ? Integer.valueOf(keyEvent.getAction()) : null;
        Integer keycode = keyEvent != null ? Integer.valueOf(keyEvent.getKeyCode()) : null;
        if (action != null && action.intValue() == 0) {
            View currentFocus = getCurrentFocus();
            if (currentFocus == null || keycode == null) {
                return super.dispatchKeyEvent(keyEvent);
            }
            if (keycode.intValue() == KeyEvent.KEYCODE_MENU) {
                // 下载中列表：按菜单键弹出右侧批量操作菜单（样式对齐收藏页右侧排序菜单）
                if (currentFragmentIndex == 0) {
                    Fragment rightFragment = this.d.d(currentFragmentIndex);
                    View fragmentView = rightFragment != null ? rightFragment.getView() : null;
                    if (fragmentView != null && isDescendantOf(fragmentView, currentFocus)) {
                        showDownloadingMenu();
                        return true;
                    }
                }
            }
            if (keycode.intValue() == KeyEvent.KEYCODE_DPAD_UP || keycode.intValue() == KeyEvent.KEYCODE_DPAD_DOWN) {
                // 上下键：阻止右侧列表的焦点预测跳入左侧导航菜单（对齐收藏/历史页的防跳出逻辑）
                try {
                    View predicted = currentFocus.focusSearch(keycode.intValue() == KeyEvent.KEYCODE_DPAD_DOWN
                            ? View.FOCUS_DOWN : View.FOCUS_UP);
                    View leftLayoutView = this.a;
                    View fragmentView = null;
                    if (this.d != null && this.b != null) {
                        Fragment rightFragment = this.d.d(this.b.f());
                        if (rightFragment != null && rightFragment.getView() != null) {
                            fragmentView = rightFragment.getView();
                        }
                    }
                    boolean isPredictedInLeft = isDescendantOf(leftLayoutView, predicted);
                    boolean isCurrentInFragment = isDescendantOf(fragmentView, currentFocus);
                    boolean isPredictedSameAsCurrent = (predicted == currentFocus);
                    if (predicted != null && isPredictedInLeft && isCurrentInFragment) {
                        return true;
                    }
                    if (isPredictedSameAsCurrent && isCurrentInFragment) {
                        return true;
                    }
                } catch (Exception ignored) {
                }
                return super.dispatchKeyEvent(keyEvent);
            }
            if (keycode.intValue() == KeyEvent.KEYCODE_DPAD_LEFT) {
                // 从右侧面板按左键返回左侧导航菜单
                // 检查焦点是否在右侧面板（通过父View的tag判断）
                if (currentFocus.getParent() instanceof View) {
                    Object tag = ((View) currentFocus.getParent()).getTag();
                    if (android.text.TextUtils.equals((CharSequence) tag, adw.a)) {
                        // 定位到当前Fragment索引对应的菜单项（右侧列表返回时定位到所属菜单项）
                        View target = null;
                        int childCount = this.a.getChildCount();
                        if (currentFragmentIndex >= 0 && currentFragmentIndex < childCount) {
                            target = this.a.getChildAt(currentFragmentIndex);
                        }
                        if (target == null) {
                            // 兜底：查找当前选中的菜单项
                            for (int i = 0; i < childCount; i++) {
                                View childAt = this.a.getChildAt(i);
                                if (childAt != null && childAt.isSelected()) {
                                    target = childAt;
                                    break;
                                }
                            }
                        }
                        if (target != null) {
                            target.requestFocus();
                        }
                        this.b.b(false);
                    }
                }
            } else if (keycode.intValue() == KeyEvent.KEYCODE_DPAD_RIGHT) {
                // 从左侧导航菜单按右键进入右侧面板
                // 必须先判断焦点在左侧导航菜单
                if (currentFocus instanceof SideLeftSelectLinearLayout) {
                    Fragment d2 = this.d.d(this.b.f());
                    if (d2 == null) {
                        return true;
                    }
                    // 检查右侧Fragment是否有内容
                    if (d2 instanceof bl.adw) {
                        if (!((bl.adw) d2).c()) {
                            return true;
                        }
                    }
                    ((SideLeftSelectLinearLayout) currentFocus).c();
                    this.b.b(true);
                }
            }
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    /**
     * 弹出"下载中"列表的右侧批量操作菜单（样式对齐收藏页右侧排序菜单）
     */
    private void showDownloadingMenu() {
        if (isFinishing()) {
            return;
        }
        // 无下载任务时不弹出菜单
        if (DownloadManager.getInstance(this).getDownloadingCount() == 0) {
            return;
        }
        Fragment rightFragment = this.d.d(currentFragmentIndex);
        if (!(rightFragment instanceof DownloadingFragment)) {
            return;
        }
        final DownloadingFragment fragment = (DownloadingFragment) rightFragment;

        // 至少1个任务正在下载/等待中 -> 显示"全部暂停"；所有任务都暂停中 -> 显示"全部开始"
        final boolean hasActive = fragment.hasActiveDownloadingTasks();

        final java.util.List<String> names = new java.util.ArrayList<String>();
        if (hasActive) {
            names.add("全部暂停");
        } else {
            names.add("全部开始");
        }
        names.add("全部删除");

        DownloadingMenuDialog dialog = new DownloadingMenuDialog(this);
        dialog.setItems(names);
        dialog.setOnMenuItemClickListener(new DownloadingMenuDialog.OnMenuItemClickListener() {
            @Override
            public void onMenuItemClick(int index) {
                if (index == 0) {
                    if (hasActive) {
                        DownloadManager.getInstance(DownloadManagerActivity.this).pauseAllTasks();
                        android.widget.Toast.makeText(DownloadManagerActivity.this, "已全部暂停", android.widget.Toast.LENGTH_SHORT).show();
                    } else {
                        DownloadManager.getInstance(DownloadManagerActivity.this).resumeAllTasks();
                        android.widget.Toast.makeText(DownloadManagerActivity.this, "已全部开始", android.widget.Toast.LENGTH_SHORT).show();
                    }
                } else if (index == 1) {
                    // 全部删除：弹确认框后清空任务并清除本地临时文件
                    showDeleteAllConfirmDialog();
                }
            }
        });
        dialog.show();
    }

    /**
     * "全部删除"确认对话框
     */
    private void showDeleteAllConfirmDialog() {
        if (isFinishing()) {
            return;
        }
        new android.app.AlertDialog.Builder(this)
            .setTitle("删除全部下载任务")
            .setMessage("确定要删除所有下载中任务，并清除本地文件吗？")
            .setPositiveButton("删除", new android.content.DialogInterface.OnClickListener() {
                @Override
                public void onClick(android.content.DialogInterface dialog, int which) {
                    DownloadManager.getInstance(DownloadManagerActivity.this).deleteAllDownloadingTasks();
                    android.widget.Toast.makeText(DownloadManagerActivity.this, "已全部删除", android.widget.Toast.LENGTH_SHORT).show();
                    // 删除不会自动移除列表项，需显式刷新"下载中"列表UI
                    Fragment rightFragment = DownloadManagerActivity.this.d.d(DownloadManagerActivity.this.currentFragmentIndex);
                    if (rightFragment instanceof DownloadingFragment) {
                        ((DownloadingFragment) rightFragment).refreshDownloadingList();
                    }
                }
            })
            .setNegativeButton("取消", null)
            .show();
    }

    /**
     * 判断child是否是指定parent的后代View（对齐收藏/历史页的焦点判定逻辑）
     */
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

    /**
     * 设置左侧导航菜单的选中项（与当前Fragment索引同步）：
     * - 有焦点的项保持焦点高亮（粉色），由焦点监听器维护
     * - 当前Fragment对应的菜单项无焦点时显示灰色背景（焦点在右侧列表时的显示效果）
     * - 其余项清除背景
     */
    private void setLeftSelected(int index) {
        if (this.a == null) {
            return;
        }
        int childCount = this.a.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View child = this.a.getChildAt(i);
            if (child == null) {
                continue;
            }
            if (child.hasFocus()) {
                // 有焦点的项保持焦点高亮（粉色），由焦点监听器维护
                child.setSelected(true);
            } else if (i == index) {
                // 当前Fragment对应的菜单项无焦点时显示灰色背景
                if (child instanceof SideLeftSelectLinearLayout) {
                    ((SideLeftSelectLinearLayout) child).c();
                }
            } else {
                child.setSelected(false);
            }
        }
    }

    /* compiled from: BL */
    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(bbg bbgVar) {
            this();
        }

        public final void a(Context context, int i) {
            bbi.b(context, "context");
            Intent intent = new Intent(context, DownloadManagerActivity.class);
            intent.putExtra(DownloadManagerActivity.e, i);
            context.startActivity(intent);
        }

        public final int b() {
            return 1;
        }
    }

    /* compiled from: BL */
    /* loaded from: classes.dex */
    public static final class b extends adz<c> implements Runnable {
        private int a;
        private final WeakReference<DownloadManagerActivity> b;
        private final cj<String> c;
        private boolean d; // 标记焦点是否在右侧面板
        private long g;    // 上次聚焦时间戳（防抖，对齐收藏/历史页）

        @Override // bl.adz
        public int e() {
            return 1;
        }

        public b(DownloadManagerActivity downloadManagerActivity, cj<String> cjVar) {
            bbi.b(downloadManagerActivity, "activity");
            bbi.b(cjVar, "titles");
            this.b = new WeakReference<>(downloadManagerActivity);
            this.c = cjVar;
        }

        public final void e(int i) {
            this.a = i;
        }

        public final int f() {
            return this.a;
        }

        @Override // android.support.v7.widget.RecyclerView.a
        /* renamed from: c */
        public c a(ViewGroup viewGroup, int i) {
            bbi.b(viewGroup, "parent");
            View inflate = android.view.LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.recycler_view_item_sider_left_title, viewGroup, false);
            bbi.a((Object) inflate, "view");
            return new c(inflate);
        }

        @Override // bl.adz, android.support.v7.widget.RecyclerView.a
        public void a(c cVar, int i) {
            bbi.b(cVar, "viewHolder");
            TextView textView = cVar.z();
            if (textView != null) {
                cj<String> cjVar = this.c;
                textView.setText(cjVar != null ? (CharSequence) cjVar.a(i) : null);
            }
            cVar.a.setOnFocusChangeListener(new View.OnFocusChangeListener() {
                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(final View view, boolean z) {
                    bbi.b(view, "v");
                    DownloadManagerActivity activity = b.this.b.get();
                    if (!z) {
                        // 失焦：取消未执行的延迟切换任务
                        view.removeCallbacks(b.this);
                        // 焦点移动到右侧面板时保持选中背景色（对齐收藏/历史页）
                        if (b.this.d) {
                            return;
                        }
                        // 该项对应当前Fragment时（进入页面/返回时焦点短暂落在左侧菜单后跳转到右侧列表），
                        // 显示"焦点进入右侧列表"的灰色背景（对齐收藏/历史页DPAD_RIGHT后的显示效果）
                        if (activity != null && !activity.isFinishing()
                                && i == activity.currentFragmentIndex) {
                            if (cVar.a instanceof SideLeftSelectLinearLayout) {
                                ((SideLeftSelectLinearLayout) cVar.a).c();
                            }
                            return;
                        }
                        cVar.a.setSelected(false);
                        TextView titleView = cVar.z();
                        if (titleView != null) {
                            titleView.setMaxLines(1);
                        }
                        return;
                    }
                    // 聚焦
                    if (activity == null || activity.isFinishing()) {
                        return;
                    }
                    // 重置"焦点在右侧面板"标记：菜单项获得焦点后允许自动切换右侧列表（对齐收藏/历史页）
                    b.this.b(false);
                    // 500ms内再次聚焦时取消上一次的延迟切换任务（防抖）
                    if (System.currentTimeMillis() - b.this.g < 500L) {
                        view.removeCallbacks(b.this);
                    }
                    b.this.e(i);
                    b.this.g = System.currentTimeMillis();
                    cVar.a.setSelected(true);
                    // 处理SideLeftSelectLinearLayout的焦点动画
                    View view4 = cVar.a;
                    if (view4 == null) {
                        throw new TypeCastException(
                                "null cannot be cast to non-null type com.bilibili.tv.widget.side.SideLeftSelectLinearLayout");
                    }
                    ((SideLeftSelectLinearLayout) view4).a();
                    TextView titleView2 = cVar.z();
                    if (titleView2 != null) {
                        titleView2.setMaxLines(3);
                    }
                    // 延迟500ms后二次校验（焦点仍在该菜单项才切换Fragment），防止返回页面时误切换
                    view.postDelayed(b.this, 500L);
                    // 点击菜单项立即切换Fragment
                    final int itemIndex = i;
                    cVar.a.setOnClickListener(new View.OnClickListener() {
                        @Override // android.view.View.OnClickListener
                        public void onClick(View v) {
                            DownloadManagerActivity act = b.this.b.get();
                            if (act == null || act.isFinishing() || act.d == null) {
                                return;
                            }
                            if (act.currentFragmentIndex == itemIndex) {
                                return;
                            }
                            act.d.c(itemIndex);
                            act.currentFragmentIndex = itemIndex;
                            // 同步左侧导航菜单选中状态（选中项跟随当前Fragment索引）
                            act.setLeftSelected(itemIndex);
                        }
                    });
                }
            });
        }

        @Override // bl.adz, android.support.v7.widget.RecyclerView.a
        public int a() {
            cj<String> cjVar = this.c;
            return cjVar != null ? cjVar.b() : 0;
        }

        @Override // bl.adz, android.support.v7.widget.RecyclerView.a
        public int a(int i) {
            return 1;
        }

        public final void b(boolean z) {
            this.d = z;
        }

        /**
         * 延迟切换的二次校验（对齐收藏/历史页）：
         * 只有左侧菜单项仍持有焦点且已附着窗口时才真正切换Fragment，
         * 防止从其它页面返回时窗口焦点恢复短暂落在左侧菜单导致误切换
         */
        @Override // java.lang.Runnable
        public void run() {
            DownloadManagerActivity activity = this.b.get();
            if (activity == null || activity.isFinishing() || activity.d == null) {
                return;
            }
            if (this.c == null || this.a >= this.c.b()) {
                return;
            }
            try {
                // 焦点在右侧面板时跳过（防御性检查）
                if (this.d) {
                    return;
                }
                // 在左侧RecyclerView中找到对应position的item
                RecyclerView leftRv = activity.a;
                View targetChild = null;
                if (leftRv != null) {
                    for (int i = 0; i < leftRv.getChildCount(); i++) {
                        View child = leftRv.getChildAt(i);
                        if (leftRv.g(child) == this.a) {
                            targetChild = child;
                            break;
                        }
                    }
                }
                // 校验child仍存在、已附着并持有焦点
                boolean isAttached = false;
                if (targetChild != null) {
                    if (Build.VERSION.SDK_INT >= 21) {
                        isAttached = targetChild.isAttachedToWindow();
                    } else {
                        isAttached = targetChild.getParent() != null;
                    }
                }
                if (targetChild == null || !isAttached || !targetChild.hasFocus()) {
                    return;
                }
                // 已是当前Fragment则不重复切换
                if (activity.currentFragmentIndex == this.a) {
                    return;
                }
                activity.d.c(this.a);
                activity.currentFragmentIndex = this.a;
                // 同步左侧导航菜单选中状态（选中项跟随当前Fragment索引）
                activity.setLeftSelected(this.a);
            } catch (Exception ignored) {
            }
        }
    }

    /* compiled from: BL */
    /* loaded from: classes.dex */
    public static final class c extends bl.adv {
        public static final a Companion = new a(null);
        private final TextView n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(View view) {
            super(view);
            bbi.b(view, "itemView");
            this.n = (TextView) a(view, R.id.title);
        }

        public final TextView z() {
            return this.n;
        }

        /* compiled from: BL */
        /* loaded from: classes.dex */
        public static final class a {
            private a() {
            }

            public /* synthetic */ a(bbg bbgVar) {
                this();
            }

            public final c a(ViewGroup viewGroup) {
                bbi.b(viewGroup, "parent");
                View inflate = android.view.LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.recycler_view_item_sider_left_title, viewGroup, false);
                bbi.a((Object) inflate, "view");
                return new c(inflate);
            }
        }
    }
}