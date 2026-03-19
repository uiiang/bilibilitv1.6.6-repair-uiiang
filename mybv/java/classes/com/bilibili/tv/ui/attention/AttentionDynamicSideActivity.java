package com.bilibili.tv.ui.attention;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Build;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import bl.adl;
import bl.abd;
import bl.adw;
import bl.adz;
import bl.agd;
import bl.mg;
import bl.nv;
import bl.ach;
import bl.vo;
import bl.vn;
import bl.agf;
import android.view.LayoutInflater;
import android.widget.ImageView;
import com.bilibili.tv.widget.CircleImageView;
import android.util.Log;
import android.view.ViewParent;

import com.bilibili.tv.MainApplication;
import com.bilibili.tv.R;
import com.bilibili.tv.ui.base.BaseSideActivity;
import com.bilibili.tv.ui.live.LiveLeftLinearLayoutManger;
import com.bilibili.tv.widget.side.SideLeftSelectLinearLayout;
import mybl.MyBiliApiService;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.JSONArray;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* compiled from: BL */
/* loaded from: classes.dex */
public class AttentionDynamicSideActivity extends BaseSideActivity {
    private a c;
    private List<UperItem> uperItems = new ArrayList<>();
    private UperItem selectedItem;
    private boolean h = false; // 是否正在加载
    private boolean g = true; // 是否有更多数据
    private int f = 1; // 当前页码
    
    @Override // com.bilibili.tv.ui.base.BaseUpViewActivity
    public void a(agd agdVar) {
    }

    @Override // com.bilibili.tv.ui.base.BaseActivity
    public int g() {
        return R.layout.activity_attention_dynamic_side;
    }

    public static void a(Context context) {
        context.startActivity(new Intent(context, AttentionDynamicSideActivity.class));
    }

    @Override // com.bilibili.tv.ui.base.BaseActivity
    public void a(Bundle bundle) {
        b((RecyclerView) d(R.id.recycler_view));
        ((TextView) d(R.id.content_name)).setText("动态");
        loadUperList();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.app.AppCompatActivity, android.app.Activity
    public void onPostCreate(@Nullable Bundle bundle) {
        super.onPostCreate(bundle);
        j().setLayoutManager(new LiveLeftLinearLayoutManger(this, 1, false));
        this.c = new a(this, uperItems);
        j().setAdapter(this.c);
        j().setFocusable(false);
        j().setHasFixedSize(true);
        // 添加滚动监听器，实现翻页加载
        j().a(new RecyclerView.m() {
            @Override
            public void a(RecyclerView recyclerView, int i) {
                super.a(recyclerView, i);
                if (AttentionDynamicSideActivity.this.h || !AttentionDynamicSideActivity.this.g || AttentionDynamicSideActivity.this.c == null) {
                    return;
                }
                LiveLeftLinearLayoutManger layoutManager = (LiveLeftLinearLayoutManger) recyclerView.getLayoutManager();
                if (layoutManager == null) {
                    return;
                }
                int lastVisibleItemPosition = layoutManager.p();
                if (layoutManager.x() > 0) {
                    int loadThreshold = lastVisibleItemPosition + 10;
                    if (loadThreshold >= layoutManager.H() - 1) {
                        int totalItemCount = layoutManager.H();
                        if (totalItemCount > layoutManager.x()) {
                            AttentionDynamicSideActivity.this.f++;
                            AttentionDynamicSideActivity.this.loadFollowings();
                        }
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bilibili.tv.ui.base.BaseUpViewActivity, com.bilibili.tv.ui.base.BaseActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.c = null;
        super.onDestroy();
    }

    @Override // com.bilibili.tv.ui.base.BaseSideActivity, com.bilibili.tv.ui.base.BaseActivity, android.support.v7.app.AppCompatActivity, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (this.c == null) {
            return super.dispatchKeyEvent(keyEvent);
        }
        int action = keyEvent.getAction();
        int keyCode = keyEvent.getKeyCode();
        if (action == 0) {
            View currentFocus = getCurrentFocus();
            if (currentFocus == null) {
                return super.dispatchKeyEvent(keyEvent);
            }

            // 处理右侧面板 header 区域的焦点逻辑
            Fragment currentFragment = h();
            if (currentFragment instanceof AttentionDynamicFragment) {
                AttentionDynamicFragment adf = (AttentionDynamicFragment) currentFragment;
                if (adf.attentionButton != null && adf.attentionButton.isFocused()) {
                    if (keyCode == KeyEvent.KEYCODE_DPAD_DOWN) {
                        if (adf.mRecyclerView != null && adf.mRecyclerView.getChildCount() > 0) {
                            View firstChild = adf.mRecyclerView.getChildAt(0);
                            if (firstChild != null) {
                                firstChild.requestFocus();
                                return true;
                            }
                        }
                    } else if (keyCode == KeyEvent.KEYCODE_DPAD_LEFT || keyCode == KeyEvent.KEYCODE_DPAD_RIGHT) {
                        return true;
                    }
                }
                if (keyCode == KeyEvent.KEYCODE_DPAD_UP && adf.mRecyclerView != null) {
                    View focusedView = adf.mRecyclerView.getFocusedChild();
                    if (focusedView != null) {
                        int focusedPosition = adf.mRecyclerView.g(focusedView);
                        if (focusedPosition >= 0 && focusedPosition < 2) {
                            if (adf.attentionButton != null && adf.attentionButton.getVisibility() == View.VISIBLE) {
                                adf.attentionButton.requestFocus();
                                return true;
                            }
                        }
                    }
                }
            }

            switch (keyCode) {
                case 21:
                    if (TextUtils.equals((CharSequence) ((View) currentFocus.getParent()).getTag(), adw.a)) {
                        this.c.b(false);
                        break;
                    }
                    break;
                case 22:
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

            // 预测 focusSearch 的目标：若系统会把焦点移到左侧而右侧仍在加载，则吞掉按键
            int dir = -1;
            if (keyCode == KeyEvent.KEYCODE_DPAD_DOWN) dir = View.FOCUS_DOWN;
            else if (keyCode == KeyEvent.KEYCODE_DPAD_UP) dir = View.FOCUS_UP;
            else if (keyCode == KeyEvent.KEYCODE_DPAD_LEFT) dir = View.FOCUS_LEFT;
            else if (keyCode == KeyEvent.KEYCODE_DPAD_RIGHT) dir = View.FOCUS_RIGHT;
            if (dir != -1) {
                try {
                    View predicted = currentFocus.focusSearch(dir);
                    if (predicted != null) {
                        RecyclerView leftRv = j();
                        if (leftRv != null && isDescendantOfView(predicted, leftRv)) {
                            Fragment frag = h();
                            if (frag instanceof AttentionDynamicFragment) {
                                AttentionDynamicFragment adf = (AttentionDynamicFragment) frag;
                                if (adf.isLoading()) {
                                    return true;
                                }
                            }
                        }
                    }
                } catch (Exception ignored) {
                }
            }
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    private boolean isDescendantOfFragment(View view, Fragment fragment) {
        if (view == null || fragment == null) return false;
        View fragView = fragment.getView();
        if (fragView == null) return false;
        View cur = view;
        while (cur != null) {
            if (cur == fragView) return true;
            ViewParent parent = cur.getParent();
            if (!(parent instanceof View)) break;
            cur = (View) parent;
        }
        return false;
    }

    private boolean isDescendantOfView(View view, View parentView) {
        if (view == null || parentView == null) return false;
        View cur = view;
        while (cur != null) {
            if (cur == parentView) return true;
            ViewParent parent = cur.getParent();
            if (!(parent instanceof View)) break;
            cur = (View) parent;
        }
        return false;
    }

    @Override // com.bilibili.tv.ui.base.BaseSideActivity
    public Fragment h() {
        if (getSupportFragmentManager() == null) {
            return null;
        }
        return getSupportFragmentManager().findFragmentById(R.id.fragment_container);
    }
    

    
    private void loadUperList() {
        // 添加"全部动态"项
        uperItems.clear();
        uperItems.add(new UperItem(-1, "全部动态", "", true));
        
        // 重置参数
        this.f = 1;
        this.g = true;
        
        // 加载关注的UP主列表
        loadFollowings();
    }
    
    private void loadFollowings() {
        if (this.h || !this.g) {
            return;
        }
        
        this.h = true;
        
        mg biliAccount = mg.a(this);
        if (biliAccount != null) {
            ((MyBiliApiService) vo.a(MyBiliApiService.class)).getFollowings(biliAccount.e(), biliAccount.d(), "attention", 30, this.f).a(new vn<JSONObject>() {
                @Override
                public void a(JSONObject response) {
                    if (AttentionDynamicSideActivity.this.c == null) {
                        return;
                    }
                    
                    AttentionDynamicSideActivity.this.h = false;
                    
                    if (response == null || response.getJSONArray("list") == null || response.getJSONArray("list").size() == 0) {
                        if (AttentionDynamicSideActivity.this.f == 1) {
                            // 第一页无数据
                        }
                        AttentionDynamicSideActivity.this.g = false;
                        AttentionDynamicSideActivity.this.updateUperList();
                        return;
                    }
                    
                    JSONArray list = response.getJSONArray("list");
                    for (int i = 0; i < list.size(); i++) {
                        JSONObject item = list.getJSONObject(i);
                        uperItems.add(new UperItem(
                            item.getLongValue("mid"),
                            item.getString("uname"),
                            item.getString("face"),
                            false
                        ));
                    }
                    
                    AttentionDynamicSideActivity.this.g = list.size() == 30;
                    AttentionDynamicSideActivity.this.updateUperList();
                }
                
                @Override
                public boolean isCancel() {
                    return isFinishing();
                }
                
                @Override
                public void onError(Throwable t) {
                    adl.a.a(t, AttentionDynamicSideActivity.this);
                    if (AttentionDynamicSideActivity.this.c == null) {
                        return;
                    }
                    AttentionDynamicSideActivity.this.h = false;
                    AttentionDynamicSideActivity.this.updateUperList();
                }
            });
        } else {
            this.h = false;
            this.updateUperList();
        }
    }
    
    private void updateUperList() {
        if (c != null) {
            // 保存当前焦点位置
            final RecyclerView recyclerView = j();
            View focusedView = recyclerView.getFocusedChild();
            final int focusedPosition;
            if (focusedView != null) {
                focusedPosition = recyclerView.g(focusedView);
            } else {
                focusedPosition = -1;
            }
            
            // 禁止 adapter 在数据更新期间触发其延迟 runnable 导致切换
            c.b(true);
            // 更新数据
            c.d();

            // 恢复焦点位置，并在恢复后允许 adapter 响应焦点事件
            if (focusedPosition != -1 && focusedPosition < uperItems.size()) {
                recyclerView.post(new Runnable() {
                    @Override
                    public void run() {
                        if (recyclerView.getChildCount() > 0) {
                            // 尝试找到原来的位置或附近的位置
                            for (int i = 0; i < recyclerView.getChildCount(); i++) {
                                View child = recyclerView.getChildAt(i);
                                int childPosition = recyclerView.g(child);
                                if (childPosition == focusedPosition) {
                                    child.requestFocus();
                                    // 允许 adapter 响应
                                    c.b(false);
                                    return;
                                }
                            }
                            // 如果找不到原来的位置，焦点移动到第一个可见项
                            recyclerView.getChildAt(0).requestFocus();
                        }
                        c.b(false);
                    }
                });
            } else {
                // 没有原焦点，立即恢复 adapter 行为
                c.b(false);
            }
        }
        // 仅在未选择任何项时，才默认显示第一个视频列表，避免数据更新时强制切换
        if (!uperItems.isEmpty() && selectedItem == null) {
            showVideoList(uperItems.get(0));
        }
    }
    
    private void showVideoList(UperItem item) {
        if (selectedItem == item) {
            return;
        }
        
        selectedItem = item;
        
        AttentionDynamicFragment fragment;
        if (item.isAllDynamic()) {
            fragment = AttentionDynamicFragment.newInstance(-1, "all", "", null);
        } else {
            fragment = AttentionDynamicFragment.newInstance(item.getMid(), "uper", item.getName(), item.getFace());
        }
        
        getSupportFragmentManager()
            .beginTransaction()
            .replace(R.id.fragment_container, fragment)
            .commit();
    }

    /* compiled from: BL */
    public static class a extends adz<RecyclerView.v> implements Runnable {
        private WeakReference<AttentionDynamicSideActivity> a;
        private List<UperItem> uperItems;
        private int c;
        private long d;
        private boolean e;

        @Override // bl.adz
        public int e() {
            return 0;
        }

        public a(AttentionDynamicSideActivity activity, List<UperItem> items) {
            this.a = new WeakReference<>(activity);
            this.uperItems = items;
        }

        @Override // android.support.v7.widget.RecyclerView.a
        public RecyclerView.v a(ViewGroup viewGroup, int i) {
            return agf.a(viewGroup);
        }

        @Override // bl.adz, android.support.v7.widget.RecyclerView.a
        public void a(final RecyclerView.v vVar, int i) {
            if (vVar instanceof agf) {
                final UperItem item = uperItems.get(i);
                
                agf holder = (agf) vVar;
                if (item.getName() != null) {
                    holder.n.setText(item.getName());
                }
                // 初始设置为1行，超出部分截断
                holder.n.setMaxLines(1);
                
                // 设置头像
                if (item.getFace() != null && !item.isAllDynamic()) {
                    // 显示圆形头像
                    nv.a().a(abd.get_thumb_url_c(MainApplication.a(), item.getFace()), holder.A());
                    holder.A().setVisibility(View.VISIBLE);
                    // 文字左边距调整为头像右边距
                    android.view.ViewGroup.MarginLayoutParams textParams = (android.view.ViewGroup.MarginLayoutParams) holder.n.getLayoutParams();
                    textParams.leftMargin = holder.n.getContext().getResources().getDimensionPixelSize(R.dimen.px_16);
                    holder.n.setLayoutParams(textParams);
                } else if (item.isAllDynamic()) {
                    // 全部动态显示应用图标
                    holder.A().setImageResource(R.mipmap.ic_launcher);
                    holder.A().setVisibility(View.VISIBLE);
                    // 文字左边距调整为头像右边距
                    android.view.ViewGroup.MarginLayoutParams textParams = (android.view.ViewGroup.MarginLayoutParams) holder.n.getLayoutParams();
                    textParams.leftMargin = holder.n.getContext().getResources().getDimensionPixelSize(R.dimen.px_16);
                    holder.n.setLayoutParams(textParams);
                }
                // 无头像时使用布局默认值（头像gone，文字左边距与右侧一致px_46）
                
                vVar.a.setTag(R.id.position, Integer.valueOf(i));
                vVar.a.setTag(item);
                
                vVar.a.setOnFocusChangeListener(new View.OnFocusChangeListener() {
                    @Override
                    public void onFocusChange(View view, boolean z) {
                        AttentionDynamicSideActivity activity = a.this.a.get();
                        if (!z) {
                                    // 失去焦点时取消延迟 runnable，防止在数据变更或视图重建期间触发切换
                                    view.removeCallbacks(a.this);
                                    if (a.this.e) {
                                        return;
                                    }
                            vVar.a.setSelected(false);
                            // 焦点移出时恢复为单行显示
                            TextView textView = holder.n;
                            textView.setMaxLines(1);
                            return;
                        }
                        if (activity == null || activity.isFinishing()) {
                            return;
                        }
                        // 焦点移入左侧目录时，恢复 adapter 的自动切换功能
                        a.this.b(false);
                        int f = vVar.f();
                        // 自动切换逻辑已移除：不再 postDelayed 自动调用 showVideoList
                        a.this.c = f;
                        // 记录获得焦点的时间并安排安全的延迟 Runnable（保留焦点触发 UX）
                        a.this.d = System.currentTimeMillis();
                        view.postDelayed(a.this, 500L);
                        // 点击或确认键触发切换（显式确认）
                        vVar.a.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                AttentionDynamicSideActivity act = a.this.a.get();
                                if (act == null || act.isFinishing()) return;
                                act.showVideoList(item);
                            }
                        });
                        vVar.a.setSelected(true);
                        if (vVar.a instanceof SideLeftSelectLinearLayout) {
                            ((SideLeftSelectLinearLayout) vVar.a).a();
                        }
                        // 焦点移入时展开为多行显示
                        TextView textView = holder.n;
                        textView.setMaxLines(3);
                        activity.b(4);
                    }
                });
            }
        }

        @Override // bl.adz, android.support.v7.widget.RecyclerView.a
        public int a() {
            return uperItems.size();
        }

        public void b(boolean z) {
            this.e = z;
        }

        public int f() {
            return this.c;
        }

        @Override // java.lang.Runnable
        public void run() {
            AttentionDynamicSideActivity activity = this.a.get();
            if (activity == null || activity.isFinishing()) return;
            if (this.uperItems == null || this.c >= this.uperItems.size()) return;
            try {
                // 若 adapter 被临时禁用，跳过
                if (this.e) return;

                // 在 RecyclerView 中找到对应 position 的 child
                RecyclerView leftRv = activity.j();
                View targetChild = null;
                if (leftRv != null) {
                    for (int i = 0; i < leftRv.getChildCount(); i++) {
                        View child = leftRv.getChildAt(i);
                        if (leftRv.g(child) == this.c) {
                            targetChild = child;
                            break;
                        }
                    }
                }

                // 校验 child 仍存在、已附着并持有焦点
                boolean isAttached = false;
                if (targetChild != null) {
                    if (Build.VERSION.SDK_INT >= 21) {
                        isAttached = targetChild.isAttachedToWindow();
                    } else {
                        isAttached = targetChild.getParent() != null;
                    }
                }
                if (targetChild == null || !isAttached || !targetChild.hasFocus()) return;

                // 检查右侧 fragment 是否处于加载中，若在加载则不切换
                Fragment frag = activity.h();
                if (frag instanceof AttentionDynamicFragment) {
                    AttentionDynamicFragment adf = (AttentionDynamicFragment) frag;
                    if (adf.isLoading()) return;
                }

                // 二次校验通过后执行切换
                activity.showVideoList(this.uperItems.get(this.c));
            } catch (Exception ignored) {
            }
        }
    }
    
    /* compiled from: BL */
    /* loaded from: classes.dex */
    public static class UperItem {
        private long mid;
        private String name;
        private String face;
        private boolean allDynamic;
        
        public UperItem(long mid, String name, String face, boolean allDynamic) {
            this.mid = mid;
            this.name = name;
            this.face = face;
            this.allDynamic = allDynamic;
        }
        
        public long getMid() {
            return mid;
        }
        
        public String getName() {
            return name;
        }
        
        public String getFace() {
            return face;
        }
        
        public boolean isAllDynamic() {
            return allDynamic;
        }
    }
}