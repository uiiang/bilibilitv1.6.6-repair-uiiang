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
import android.widget.TextView;
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
            ((com.bilibili.tv.api.favorite.BiliFavoriteVideoApiService) vo.a(com.bilibili.tv.api.favorite.BiliFavoriteVideoApiService.class))
                .getStatedBoxList(account.e(), Long.valueOf(account.d()), 0L)
                .a(new vn<List<BiliFavoriteBox>>() {
                    @Override
                    public void a(List<BiliFavoriteBox> list) {
                        videoFolders.clear();
                        if (list != null && !list.isEmpty()) {
                            for (BiliFavoriteBox box : list) {
                                videoFolders.add(new VideoFavoriteFolder(box));
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
            ((MyBiliApiService) vo.a(MyBiliApiService.class))
                .getCollectedFolders(1, 50, Long.valueOf(account.d()), "SESSDATA=" + account.getSESSDATA())
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
                        adl.a.a(t, FavoriteSideActivity.this);
                        collectionLoaded = true;
                        checkAllLoaded();
                    }
                });
        } else {
            collectionLoaded = true;
            checkAllLoaded();
        }
    }
    
    private void loadCourseFolders() {
        mg account = mg.a(this);
        if (account != null) {
            ((MyBiliApiService) vo.a(MyBiliApiService.class))
                .getFavoritePugv(1, 50, Long.valueOf(account.d()), "SESSDATA=" + account.getSESSDATA())
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
                        adl.a.a(t, FavoriteSideActivity.this);
                        courseLoaded = true;
                        checkAllLoaded();
                    }
                });
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
                
                vVar.a.setTag(R.id.position, Integer.valueOf(i));
                vVar.a.setTag(folder);
                
                vVar.a.setOnFocusChangeListener(new View.OnFocusChangeListener() {
                    @Override
                    public void onFocusChange(View view, boolean z) {
                        FavoriteSideActivity activity = a.this.a.get();
                        if (!z) {
                            if (a.this.e) {
                                return;
                            }
                            vVar.a.setSelected(false);
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
                        activity.b(4);
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
            if (activity == null || activity.isFinishing()) {
                return;
            }
            if (this.folders != null && this.c < this.folders.size()) {
                activity.showVideoList(this.folders.get(this.c));
            }
        }
    }
}
