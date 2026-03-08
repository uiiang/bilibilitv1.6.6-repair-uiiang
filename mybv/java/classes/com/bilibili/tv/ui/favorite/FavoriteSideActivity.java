package com.bilibili.tv.ui.favorite;

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
import android.os.Build;
import android.view.ViewParent;
import android.widget.TextView;
import android.util.Log;
import bl.adl;
import bl.adw;
import bl.adz;
import bl.agd;
import bl.cj;
import bl.FavoriteFolder;
import bl.VideoFavoriteFolder;
import bl.CollectionFavoriteFolder;
import bl.CourseFavoriteFolder;
import bl.nv;
import bl.ach;
import bl.vo;
import bl.mg;
import bl.vn;
import bl.agf;

import com.bilibili.tv.MainApplication;
import com.bilibili.tv.R;
import com.bilibili.tv.api.favorite.BiliFavoriteBox;
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
public class FavoriteSideActivity extends BaseSideActivity {
    private a c;
    private List<FavoriteFolder> folders = new ArrayList<>();
    private FavoriteFolder selectedFolder;
    private List<FavoriteFolder> videoFolders = new ArrayList<>();
    private List<FavoriteFolder> collectionFolders = new ArrayList<>();
    private List<FavoriteFolder> courseFolders = new ArrayList<>();
    private boolean videoLoaded = false;
    private boolean collectionLoaded = false;
    private boolean courseLoaded = false;
    
    @Override // com.bilibili.tv.ui.base.BaseUpViewActivity
    public void a(agd agdVar) {
    }

    @Override // com.bilibili.tv.ui.base.BaseActivity
    public int g() {
        return R.layout.activity_favorite;
    }

    public static void a(Context context) {
        context.startActivity(new Intent(context, (Class<?>) FavoriteSideActivity.class));
    }

    @Override // com.bilibili.tv.ui.base.BaseActivity
    public void a(Bundle bundle) {
        b((RecyclerView) d(R.id.recycler_view));
        ((TextView) d(R.id.content_name)).setText("我的收藏");
        loadAllFolders();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.app.AppCompatActivity, android.app.Activity
    public void onPostCreate(@Nullable Bundle bundle) {
        super.onPostCreate(bundle);
        j().setLayoutManager(new LiveLeftLinearLayoutManger(this, 1, false));
        this.c = new a(this, folders);
        j().setAdapter(this.c);
        j().setFocusable(false);
        j().setHasFixedSize(true);
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
            // 预测 focusSearch 目标，拦截从右侧（fragment）向左侧跳转的导航，防止在右侧加载或视图变更时发生意外切换
            if (keyCode == 20 || keyCode == 19) {
                try {
                    View predicted = currentFocus.focusSearch(keyCode == 20 ? View.FOCUS_DOWN : View.FOCUS_UP);
                    View fragmentView = null;
                    Fragment h = h();
                    if (h != null && h.getView() != null) {
                        fragmentView = h.getView();
                    }
                    if (predicted != null && isDescendantOf(j(), predicted) && isDescendantOf(fragmentView, currentFocus)) {
                        return true;
                    }
                } catch (Exception ignored) {
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
    
    private void loadAllFolders() {
        loadVideoFolders();
        loadCollectionFolders();
        loadCourseFolders();
    }
    
    private void checkAllLoaded() {
        if (videoLoaded && collectionLoaded && courseLoaded) {
            folders.clear();
            folders.addAll(videoFolders);
            folders.addAll(collectionFolders);
            folders.addAll(courseFolders);
            if (c != null) {
                c.d();
            }
            if (!folders.isEmpty()) {
                showVideoList(folders.get(0));
            }
        }
    }
    
    private void loadVideoFolders() {
        mg account = mg.a(this);
        if (account != null) {
            String referer = "https://space.bilibili.com/" + account.d() + "/favlist";
            ((MyBiliApiService) vo.a(MyBiliApiService.class))
                .getCreatedFolderList(account.d(), "333.1387", referer)
                .a(new vn<JSONObject>() {
                    @Override
                    public void a(JSONObject result) {
                        videoFolders.clear();
                        if (result != null) {
                            JSONArray list = result.getJSONArray("list");
                            if (list != null && !list.isEmpty()) {
                                for (int i = 0; i < list.size(); i++) {
                                    JSONObject item = list.getJSONObject(i);
                                    BiliFavoriteBox box = new BiliFavoriteBox();
                                    box.setMId(item.getLongValue("id"));
                                    box.setMName(item.getString("title"));
                                    box.setMCount(item.getIntValue("media_count"));
                                    box.setMMid(item.getLongValue("mid"));
                                    videoFolders.add(new VideoFavoriteFolder(box));
                                }
                            }
                        }
                        videoLoaded = true;
                        checkAllLoaded();
                    }
                    
                    @Override
                    public boolean isCancel() {
                        return isFinishing();
                    }
                    
                    @Override
                    public void onError(Throwable t) {
                        adl.a.a(t, FavoriteSideActivity.this);
                        videoLoaded = true;
                        checkAllLoaded();
                    }
                });
        } else {
            videoLoaded = true;
            checkAllLoaded();
        }
    }
    
    private void loadCollectionFolders() {
        mg account = mg.a(this);
        if (account != null) {
            try {
                String sessdata = account.getSESSDATA();
                if (TextUtils.isEmpty(sessdata)) {
                    collectionLoaded = true;
                    checkAllLoaded();
                    return;
                }
                ((MyBiliApiService) vo.a(MyBiliApiService.class))
                    .getCollectedFolders(1, 50, Long.valueOf(account.d()), "SESSDATA=" + sessdata)
                    .a(new vn<JSONObject>() {
                        @Override
                        public void a(JSONObject result) {
                            collectionFolders.clear();
                            if (result != null && result.getJSONArray("list") != null) {
                                JSONArray list = result.getJSONArray("list");
                                for (int i = 0; i < list.size(); i++) {
                                    collectionFolders.add(new CollectionFavoriteFolder(list.getJSONObject(i)));
                                }
                            }
                            collectionLoaded = true;
                            checkAllLoaded();
                        }
                        
                        @Override
                        public boolean isCancel() {
                            return isFinishing();
                        }
                        
                        @Override
                        public void onError(Throwable t) {
                            collectionLoaded = true;
                            checkAllLoaded();
                        }
                    });
            } catch (Exception e) {
                collectionLoaded = true;
                checkAllLoaded();
            }
        } else {
            collectionLoaded = true;
            checkAllLoaded();
        }
    }
    
    private void loadCourseFolders() {
        mg account = mg.a(this);
        if (account != null) {
            try {
                String sessdata = account.getSESSDATA();
                if (TextUtils.isEmpty(sessdata)) {
                    courseLoaded = true;
                    checkAllLoaded();
                    return;
                }
                ((MyBiliApiService) vo.a(MyBiliApiService.class))
                    .getFavoritePugv(1, 50, Long.valueOf(account.d()), "SESSDATA=" + sessdata)
                    .a(new vn<JSONObject>() {
                        @Override
                        public void a(JSONObject result) {
                            courseFolders.clear();
                            if (result != null && result.getJSONArray("items") != null) {
                                JSONArray list = result.getJSONArray("items");
                                for (int i = 0; i < list.size(); i++) {
                                    courseFolders.add(new CourseFavoriteFolder(list.getJSONObject(i)));
                                }
                            }
                            courseLoaded = true;
                            checkAllLoaded();
                        }
                        
                        @Override
                        public boolean isCancel() {
                            return isFinishing();
                        }
                        
                        @Override
                        public void onError(Throwable t) {
                            courseLoaded = true;
                            checkAllLoaded();
                        }
                    });
            } catch (Exception e) {
                courseLoaded = true;
                checkAllLoaded();
            }
        } else {
            courseLoaded = true;
            checkAllLoaded();
        }
    }
    
    private void showVideoList(FavoriteFolder folder) {
        if (selectedFolder == folder) {
            return;
        }
        
        selectedFolder = folder;
        
        FavoriteVideoFragment fragment;
        if (folder instanceof CollectionFavoriteFolder) {
            // 对于合集类型，传递 fid 和 mid 参数
            CollectionFavoriteFolder collectionFolder = (CollectionFavoriteFolder) folder;
            fragment = FavoriteVideoFragment.newInstance(
                folder.getId(),
                folder.getType(),
                collectionFolder.getFid(),
                collectionFolder.getMid()
            );
        } else {
            // 对于其他类型，使用默认构造函数
            fragment = FavoriteVideoFragment.newInstance(
                folder.getId(),
                folder.getType()
            );
        }
        
        getSupportFragmentManager()
            .beginTransaction()
            .replace(R.id.fragment_container, fragment)
            .commit();
    }

    /* compiled from: BL */
    public static class a extends adz<RecyclerView.v> implements Runnable {
        private WeakReference<FavoriteSideActivity> a;
        private List<FavoriteFolder> folders;
        private int c;
        private long d;
        private boolean e;

        @Override // bl.adz
        public int e() {
            return 0;
        }

        public a(FavoriteSideActivity activity, List<FavoriteFolder> folders) {
            this.a = new WeakReference<>(activity);
            this.folders = folders;
        }

        @Override // android.support.v7.widget.RecyclerView.a
        public RecyclerView.v a(ViewGroup viewGroup, int i) {
            return agf.a(viewGroup);
        }

        @Override // bl.adz, android.support.v7.widget.RecyclerView.a
        public void a(final RecyclerView.v vVar, int i) {
            if (vVar instanceof agf) {
                final FavoriteFolder folder = folders.get(i);
                
                agf holder = (agf) vVar;
                if (folder.getTitle() != null) {
                    holder.n.setText(folder.getTitle());
                }
                // 初始设置为1行，超出部分截断
                holder.n.setMaxLines(1);
                
                vVar.a.setTag(R.id.position, Integer.valueOf(i));
                vVar.a.setTag(folder);
                
                vVar.a.setOnFocusChangeListener(new View.OnFocusChangeListener() {
                    @Override
                    public void onFocusChange(View view, boolean z) {
                        FavoriteSideActivity activity = a.this.a.get();
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
                        int f = vVar.f();
                        if (System.currentTimeMillis() - a.this.d < 500) {
                            view.removeCallbacks(a.this);
                        }
                        a.this.c = f;
                        a.this.d = System.currentTimeMillis();
                        vVar.a.setSelected(true);
                        if (vVar.a instanceof SideLeftSelectLinearLayout) {
                            ((SideLeftSelectLinearLayout) vVar.a).a();
                        }
                        // 焦点移入时展开为多行显示
                        TextView textView = holder.n;
                        textView.setMaxLines(3);
                        activity.b(4);
                        // 安全版：安排延迟 Runnable，但在执行前做二次校验；同时保留点击触发
                        view.postDelayed(a.this, 500L);
                        vVar.a.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                FavoriteSideActivity act = a.this.a.get();
                                if (act == null || act.isFinishing()) {
                                    return;
                                }
                                act.showVideoList(folder);
                            }
                        });
                    }
                });
            }
        }

        @Override // bl.adz, android.support.v7.widget.RecyclerView.a
        public int a() {
            return folders.size();
        }

        public void b(boolean z) {
            this.e = z;
        }

        public int f() {
            return this.c;
        }

        @Override // java.lang.Runnable
        public void run() {
            FavoriteSideActivity activity = this.a.get();
            if (activity == null || activity.isFinishing()) return;
            if (this.folders == null || this.c >= this.folders.size()) return;
            try {
                // 如果 adapter 行为被临时禁用，跳过
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

                // 检查右侧 fragment 是否处于加载中
                Fragment frag = activity.h();
                if (frag instanceof FavoriteVideoFragment) {
                    FavoriteVideoFragment fv = (FavoriteVideoFragment) frag;
                    if (fv.isLoading()) return;
                }

                // 二次校验通过后执行切换
                activity.showVideoList(this.folders.get(this.c));
            } catch (Exception ignored) {
            }
        }
    }
}
