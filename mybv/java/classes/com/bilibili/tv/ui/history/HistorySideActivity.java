package com.bilibili.tv.ui.history;

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
import java.util.List;
import java.util.ArrayList;
import java.lang.ref.WeakReference;
import bl.agb;
import bl.adl;
import bl.adw;
import bl.adz;
import bl.agd;
import bl.cj;
import bl.HistoryFolder;
import bl.nv;
import bl.ach;
import bl.vo;
import bl.mg;
import bl.vn;
import bl.agf;
import com.bilibili.tv.MainApplication;
import com.bilibili.tv.R;
import com.bilibili.tv.ui.base.BaseSideActivity;
import com.bilibili.tv.ui.live.LiveLeftLinearLayoutManger;
import com.bilibili.tv.widget.side.SideLeftSelectLinearLayout;
import com.alibaba.fastjson.JSONObject;

public class HistorySideActivity extends BaseSideActivity implements View.OnLongClickListener {
    private a c;
    private List<HistoryFolder> folders = new ArrayList<>();
    private HistoryFolder selectedFolder;

    @Override
    public void a(agd agdVar) {
    }

    @Override
    public int g() {
        return R.layout.activity_history;
    }

    public static void a(Context context) {
        context.startActivity(new Intent(context, (Class<?>) HistorySideActivity.class));
    }

    @Override
    public void a(Bundle bundle) {
        b((RecyclerView) d(R.id.recycler_view));
        ((TextView) d(R.id.content_name)).setText("历史记录");
        loadFolders();
    }

    @Override
    public void onPostCreate(@Nullable Bundle bundle) {
        super.onPostCreate(bundle);
        j().setLayoutManager(new LiveLeftLinearLayoutManger(this, 1, false));
        this.c = new a(this, folders);
        j().setAdapter(this.c);
        j().setFocusable(false);
        j().setHasFixedSize(true);
    }

    @Override
    public void onDestroy() {
        this.c = null;
        super.onDestroy();
    }

    @Override
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

            if (keyCode == 20 || keyCode == 19) {
                try {
                    View predicted = currentFocus.focusSearch(keyCode == 20 ? View.FOCUS_DOWN : View.FOCUS_UP);
                    View leftLayoutView = j();
                    View fragmentView = null;
                    Fragment h = h();
                    if (h != null && h.getView() != null) {
                        fragmentView = h.getView();
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
                case 82:
                    Fragment fragment = h();
                    if (fragment instanceof HistoryVideoFragment) {
                        View fragmentView = fragment.getView();
                        if (fragmentView != null && isDescendantOf(fragmentView, currentFocus)) {
                            if (HistoryVideoFragment.currentAvid >= 0 && HistoryVideoFragment.currentPos >= 0) {
                                showDeleteConfirmDialog();
                                return true;
                            }
                        }
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

    @Override
    public boolean onLongClick(View view) {
        Fragment frag = h();
        if (!(frag instanceof HistoryVideoFragment)) {
            return true;
        }

        View currentFocus = getCurrentFocus();
        View fragmentView = frag.getView();
        if (fragmentView != null && isDescendantOf(fragmentView, currentFocus)) {
            showClearConfirmDialog();
            return true;
        }
        return false;
    }

    private void showDeleteConfirmDialog() {
        agb.a dialogBuilder = new agb.a(this);
        dialogBuilder.a(1).a("确认删除该条历史记录？")
                .b(getString(R.string.confirm), new DeleteConfirmClickListener())
                .a(getString(R.string.cancel), null);
        dialogBuilder.a().show();
    }

    private void showClearConfirmDialog() {
        agb.a dialogBuilder = new agb.a(this);
        dialogBuilder.a(1).a("确认清空所有历史记录？")
                .b(getString(R.string.confirm), new ClearConfirmClickListener())
                .a(getString(R.string.cancel), null);
        dialogBuilder.a().show();
    }

    private class ClearConfirmClickListener implements agb.b {
        @Override
        public void a(agb dialog, View view) {
            Fragment frag = h();
            if (frag instanceof HistoryVideoFragment) {
                ((HistoryVideoFragment) frag).clearAllHistory();
            }
            dialog.dismiss();
        }
    }

    private class DeleteConfirmClickListener implements agb.b {
        @Override
        public void a(agb dialog, View view) {
            Fragment frag = h();
            if (frag instanceof HistoryVideoFragment) {
                ((HistoryVideoFragment) frag).deleteCurrentHistory();
            }
            dialog.dismiss();
        }
    }

    private void loadFolders() {
        folders.clear();
        folders.add(new HistoryFolder("视频", "archive", 0));
        folders.add(new HistoryFolder("直播", "live", 0));

        if (!folders.isEmpty()) {
            showHistoryList(folders.get(0));
        }
    }

    private void showHistoryList(HistoryFolder folder) {
        if (selectedFolder == folder) {
            return;
        }

        selectedFolder = folder;
        HistoryVideoFragment fragment;
        HistoryFolder currentHistoryType = (HistoryFolder) folder;
        fragment = HistoryVideoFragment.newInstance(currentHistoryType.getHistoryType());

        getSupportFragmentManager()
                .beginTransaction()
                .replace(R.id.fragment_container, fragment)
                .commit();
    }

    public static class a extends adz<RecyclerView.v> implements Runnable {
        private WeakReference<HistorySideActivity> a;
        private List<HistoryFolder> folders;
        private int c;
        private long d;
        private boolean e;

        @Override
        public int e() {
            return 0;
        }

        public a(HistorySideActivity activity, List<HistoryFolder> folders) {
            this.a = new WeakReference<>(activity);
            this.folders = folders;
        }

        @Override
        public RecyclerView.v a(ViewGroup viewGroup, int i) {
            return agf.a(viewGroup);
        }

        @Override
        public void a(final RecyclerView.v vVar, int i) {
            if (vVar instanceof agf) {
                final HistoryFolder folder = folders.get(i);

                agf holder = (agf) vVar;
                if (folder.getTitle() != null) {
                    holder.n.setText(folder.getTitle());
                }
                holder.n.setMaxLines(1);

                vVar.a.setTag(R.id.position, Integer.valueOf(i));
                vVar.a.setTag(folder);

                vVar.a.setOnFocusChangeListener(new View.OnFocusChangeListener() {
                    @Override
                    public void onFocusChange(View view, boolean z) {
                        HistorySideActivity activity = a.this.a.get();
                        if (!z) {
                            view.removeCallbacks(a.this);
                            if (a.this.e) {
                                return;
                            }
                            vVar.a.setSelected(false);
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
                        TextView textView = holder.n;
                        textView.setMaxLines(3);
                        activity.b(4);
                        view.postDelayed(a.this, 500L);
                        vVar.a.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                HistorySideActivity act = a.this.a.get();
                                if (act == null || act.isFinishing()) {
                                    return;
                                }
                                act.showHistoryList(folder);
                            }
                        });
                    }
                });
            }
        }

        @Override
        public int a() {
            return folders.size();
        }

        public void b(boolean z) {
            this.e = z;
        }

        public int f() {
            return this.c;
        }

        @Override
        public void run() {
            HistorySideActivity activity = a.this.a.get();
            if (activity == null || activity.isFinishing()) {
                return;
            }
            if (this.folders == null || this.c >= this.folders.size())
                return;
            try {
                // 如果 adapter 行为被临时禁用，跳过
                if (this.e)
                    return;

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
                if (targetChild == null || !isAttached || !targetChild.hasFocus())
                    return;

                // 检查右侧 fragment 是否处于加载中
                Fragment frag = activity.h();
                if (frag instanceof HistoryVideoFragment) {
                    HistoryVideoFragment hv = (HistoryVideoFragment) frag;
                    if (hv.isLoading())
                        return;
                }

                // 二次校验通过后执行切换
                activity.showHistoryList(folders.get(a.this.c));
            } catch (Exception ignored) {
            }

        }
    }
}
