package com.bilibili.tv.ui.attention;

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
import android.widget.FrameLayout;
import android.widget.TextView;
import bl.adl;
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
        }
        return super.dispatchKeyEvent(keyEvent);
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
            
            // 更新数据
            c.d();
            
            // 恢复焦点位置
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
                                    return;
                                }
                            }
                            // 如果找不到原来的位置，焦点移动到第一个可见项
                            recyclerView.getChildAt(0).requestFocus();
                        }
                    }
                });
            }
        }
        if (!uperItems.isEmpty()) {
            showVideoList(uperItems.get(0));
        }
    }
    
    private void showVideoList(UperItem item) {
        android.util.Log.d("AttentionDynamicSideActivity", "showVideoList() called, item: " + item.getName() + ", mid: " + item.getMid() + ", isAllDynamic: " + item.isAllDynamic());
        if (selectedItem == item) {
            android.util.Log.d("AttentionDynamicSideActivity", "Selected item is same as current, returning");
            return;
        }
        
        // 确保右侧容器的布局参数正确
        FrameLayout fragmentContainer = (FrameLayout) findViewById(R.id.fragment_container);
        if (fragmentContainer != null) {
            ViewGroup.LayoutParams params = fragmentContainer.getLayoutParams();
            if (params != null) {
                params.width = ViewGroup.LayoutParams.MATCH_PARENT;
                params.height = ViewGroup.LayoutParams.MATCH_PARENT;
                fragmentContainer.setLayoutParams(params);
                android.util.Log.d("AttentionDynamicSideActivity", "Fragment container layout params updated: " + params.width + "x" + params.height);
            }
        }
        
        selectedItem = item;
        
        AttentionDynamicFragment fragment;
        if (item.isAllDynamic()) {
            // 全部动态
            fragment = AttentionDynamicFragment.newInstance(-1, "all", "");
            android.util.Log.d("AttentionDynamicSideActivity", "Creating all dynamic fragment");
        } else {
            // 单个UP主
            fragment = AttentionDynamicFragment.newInstance(item.getMid(), "uper", item.getName());
            android.util.Log.d("AttentionDynamicSideActivity", "Creating uper fragment for mid: " + item.getMid() + ", name: " + item.getName());
        }
        
        getSupportFragmentManager()
            .beginTransaction()
            .replace(R.id.fragment_container, fragment)
            .commit();
        android.util.Log.d("AttentionDynamicSideActivity", "Fragment transaction committed");
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
                
                // 设置头像
                // agf类只有n字段用于显示文字，没有头像字段
                // 头像需要在布局文件中定义并在agf类中添加相应字段
                // 暂时注释掉头像显示逻辑
                /*
                if (item.getFace() != null && !item.isAllDynamic()) {
                    // 显示圆形头像
                    nv.a().a(ach.c(MainApplication.a(), item.getFace()), holder.A());
                    holder.A().setVisibility(View.VISIBLE);
                } else {
                    // 全部动态显示默认图标
                    holder.A().setVisibility(View.GONE);
                }
                */
                
                vVar.a.setTag(R.id.position, Integer.valueOf(i));
                vVar.a.setTag(item);
                
                vVar.a.setOnFocusChangeListener(new View.OnFocusChangeListener() {
                    @Override
                    public void onFocusChange(View view, boolean z) {
                        AttentionDynamicSideActivity activity = a.this.a.get();
                        if (!z) {
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
                        int f = vVar.f();
                        if (System.currentTimeMillis() - a.this.d < 500) {
                            view.removeCallbacks(a.this);
                        }
                        a.this.c = f;
                        view.postDelayed(a.this, 500L);
                        a.this.d = System.currentTimeMillis();
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
            if (activity == null || activity.isFinishing()) {
                return;
            }
            if (this.uperItems != null && this.c < this.uperItems.size()) {
                activity.showVideoList(this.uperItems.get(this.c));
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