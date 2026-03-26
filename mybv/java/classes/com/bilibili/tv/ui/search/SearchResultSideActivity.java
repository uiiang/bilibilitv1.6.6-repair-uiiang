package com.bilibili.tv.ui.search;

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
import android.widget.TextView;
import java.util.List;
import java.util.ArrayList;
import java.lang.ref.WeakReference;
import bl.adl;
import bl.adw;
import bl.adz;
import bl.agd;
import bl.SearchFolder;
import bl.agf;
import com.bilibili.tv.R;
import com.bilibili.tv.ui.base.BaseSideActivity;
import com.bilibili.tv.ui.live.LiveLeftLinearLayoutManger;
import com.bilibili.tv.widget.side.SideLeftSelectLinearLayout;

public class SearchResultSideActivity extends BaseSideActivity {
    public static final String EXTRA_KEYWORD = "extra_keyword";
    public static final String EXTRA_TID = "extra_tid";
    
    private a c;
    private List<SearchFolder> folders = new ArrayList<>();
    private SearchFolder selectedFolder;
    private String keyword;
    private int initTid;
    
    @Override
    public void a(agd agdVar) {
    }
    
    @Override
    public int g() {
        return R.layout.activity_search_result_side;
    }
    
    public static void a(Context context, String keyword, int tid) {
        Intent intent = new Intent(context, SearchResultSideActivity.class);
        intent.putExtra(EXTRA_KEYWORD, keyword);
        intent.putExtra(EXTRA_TID, tid);
        context.startActivity(intent);
    }
    
    @Override
    public void a(Bundle bundle) {
        b((RecyclerView) d(R.id.recycler_view));
        ((TextView) d(R.id.content_name)).setText("搜索");
        
        if (getIntent() != null) {
            keyword = getIntent().getStringExtra(EXTRA_KEYWORD);
            initTid = getIntent().getIntExtra(EXTRA_TID, 0);
        }
        
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
            }
        }

        return super.dispatchKeyEvent(keyEvent);
    }
    
    @Override
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
    
    private void loadFolders() {
        folders.clear();
        folders.add(new SearchFolder("视频", 0));
        folders.add(new SearchFolder("番剧", 1));
        folders.add(new SearchFolder("影视", 2));
        folders.add(new SearchFolder("直播", 3));
        folders.add(new SearchFolder("用户", 4));

        if (!folders.isEmpty()) {
            int selectIndex = 0;
            for (int i = 0; i < folders.size(); i++) {
                if (folders.get(i).getTid() == initTid) {
                    selectIndex = i;
                    break;
                }
            }
            showSearchResultList(folders.get(selectIndex));
        }
    }
    
    private void showSearchResultList(SearchFolder folder) {
        if (selectedFolder == folder) {
            return;
        }

        selectedFolder = folder;
        SearchResultVideoFragment fragment = SearchResultVideoFragment.newInstance(keyword, folder.getTid());

        getSupportFragmentManager()
                .beginTransaction()
                .replace(R.id.fragment_container, fragment)
                .commit();
    }
    
    public String getKeyword() {
        return keyword;
    }
    
    public int getCurrentTid() {
        if (selectedFolder != null) {
            return selectedFolder.getTid();
        }
        return 0;
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
    
    private void showSortMenu() {
        Fragment frag = h();
        if (!(frag instanceof SearchResultVideoFragment)) {
            return;
        }
        
        SearchResultVideoFragment sv = (SearchResultVideoFragment) frag;
        int tid = sv.getTid();
        
        switch (tid) {
            case 0:
                showVideoSortMenu(sv);
                break;
            case 1:
            case 2:
                return;
            case 3:
                showLiveSortMenu(sv);
                break;
            case 4:
                showUserSortMenu(sv);
                break;
        }
    }
    
    private void showVideoSortMenu(final SearchResultVideoFragment fragment) {
        bl.SortMenuDialog dialog = new bl.SortMenuDialog(this);
        
        dialog.addGroup("排序",
            new String[]{"综合排序", "最多播放", "最新发布", "最多弹幕", "最多收藏"},
            new String[]{"", "click", "pubdate", "dm", "stow"},
            fragment.getOrder());
        
        dialog.addGroup("日期",
            new String[]{"全部日期", "最近一天", "最近一周", "最近半年"},
            new String[]{"", "1", "7", "180"},
            fragment.getDateType());
        
        dialog.addGroup("时长",
            new String[]{"全部时长", "10分钟以下", "10-30分钟", "30-60分钟", "60分钟以上"},
            new String[]{"", "1", "2", "3", "4"},
            fragment.getDuration());
        
        dialog.setOnConfirmListener(new bl.SortMenuDialog.OnConfirmListener() {
            @Override
            public void onConfirm(List<bl.SortMenuDialog.SortGroup> groups) {
                View selectedView = getSelectedView();
                
                String order = groups.get(0).getSelectedValue();
                String dateType = groups.get(1).getSelectedValue();
                String duration = groups.get(2).getSelectedValue();
                
                fragment.updateSearchParams(order, dateType, duration);
                
                if (selectedView != null) {
                    selectedView.requestFocus();
                }
            }
        });
        dialog.show();
    }
    
    private String getDateRange(int days) {
        long endTime = System.currentTimeMillis() / 1000;
        long beginTime = endTime - (days * 24 * 60 * 60L);
        return String.valueOf(beginTime) + "," + String.valueOf(endTime);
    }
    
    private void showLiveSortMenu(final SearchResultVideoFragment fragment) {
        bl.SortMenuDialog dialog = new bl.SortMenuDialog(this);
        dialog.addGroup(null,
            new String[]{"综合排序", "最新开播"},
            new String[]{"online", "live_time"},
            fragment.getLiveOrder());
        dialog.setOnSortSelectedListener(new bl.SortMenuDialog.OnSortSelectedListener() {
            @Override
            public void onSortSelected(String sortOrder, String sortName) {
                View selectedView = getSelectedView();
                fragment.setLiveOrder(sortOrder);
                if (selectedView != null) {
                    selectedView.requestFocus();
                }
            }
        });
        dialog.show();
    }
    
    private void showUserSortMenu(final SearchResultVideoFragment fragment) {
        bl.SortMenuDialog dialog = new bl.SortMenuDialog(this);
        dialog.addGroup(null,
            new String[]{"默认排序", "粉丝数由高到低", "粉丝数由低到高", "Lv等级由高到低", "Lv等级由低到高"},
            new String[]{"", "fans", "fans_asc", "level", "level_asc"},
            fragment.getUserOrder());
        dialog.setOnSortSelectedListener(new bl.SortMenuDialog.OnSortSelectedListener() {
            @Override
            public void onSortSelected(String sortOrder, String sortName) {
                View selectedView = getSelectedView();
                fragment.setUserOrder(sortOrder);
                if (selectedView != null) {
                    selectedView.requestFocus();
                }
            }
        });
        dialog.show();
    }
    
    public static class a extends adz<RecyclerView.v> implements Runnable {
        private WeakReference<SearchResultSideActivity> a;
        private List<SearchFolder> folders;
        private int c;
        private long d;
        private boolean e;

        @Override
        public int e() {
            return 0;
        }

        public a(SearchResultSideActivity activity, List<SearchFolder> folders) {
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
                final SearchFolder folder = folders.get(i);

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
                        SearchResultSideActivity activity = a.this.a.get();
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
                        a.this.e = false;
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
                                SearchResultSideActivity act = a.this.a.get();
                                if (act == null || act.isFinishing()) {
                                    return;
                                }
                                act.showSearchResultList(folder);
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
            SearchResultSideActivity activity = a.this.a.get();
            if (activity == null || activity.isFinishing()) {
                return;
            }
            if (this.folders == null || this.c >= this.folders.size())
                return;
            try {
                if (this.e)
                    return;

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

                boolean isAttached = false;
                if (targetChild != null) {
                    if (android.os.Build.VERSION.SDK_INT >= 21) {
                        isAttached = targetChild.isAttachedToWindow();
                    } else {
                        isAttached = targetChild.getParent() != null;
                    }
                }
                if (targetChild == null || !isAttached || !targetChild.hasFocus())
                    return;

                Fragment frag = activity.h();
                if (frag instanceof SearchResultVideoFragment) {
                    SearchResultVideoFragment sv = (SearchResultVideoFragment) frag;
                    if (sv.isLoading())
                        return;
                }

                activity.showSearchResultList(folders.get(a.this.c));
            } catch (Exception ignored) {
            }
        }
    }
}
