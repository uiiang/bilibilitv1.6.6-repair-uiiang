package com.bilibili.tv.ui.search;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.provider.SearchRecentSuggestions;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import bl.adl;
import bl.afh;
import bl.agb;
import bl.bbg;
import bl.bbi;
import bl.lk;
import bl.lr;
import bl.ok;
import bl.wf;
import bl.wg;
import com.bilibili.tv.R;
import com.bilibili.tv.api.category.CategoryManager;
import com.bilibili.tv.api.category.CategoryMeta;
import com.bilibili.tv.ui.base.BaseActivity;
import com.bilibili.tv.ui.search.SearchKeyboardView;
import java.util.List;
import java.util.ListIterator;
import kotlin.TypeCastException;
import kotlin.text.Regex;
import tv.danmaku.android.log.BLog;

public final class SearchActivity extends BaseActivity implements View.OnLongClickListener, wf {
    private static final String j = "SearchActivity";
    private static final String k = "com.bilibili.tv.ui.search.SearchActivity.EXTRA_TID";
    public View a;
    private SearchKeyboardView b;
    private boolean c;
    private boolean d;
    private int e;
    private afh f;
    private int h;
    private String i;
    public static final a Companion = new a(null);

    @Override
    public String a() {
        return "ott-search.search.0.0.pv";
    }

    @Override
    public boolean a_() {
        return wg.a(this);
    }

    @Override
    public Bundle b() {
        return null;
    }

    @Override
    public int g() {
        return R.layout.activity_search;
    }

    public final SearchKeyboardView h() {
        return this.b;
    }

    public final View i() {
        View view = this.a;
        if (view == null) {
            bbi.b("focusHolder");
        }
        return view;
    }

    public final void setFocusHolder(View view) {
        bbi.b(view, "<set-?>");
        this.a = view;
    }

    public final void a(boolean z) {
        this.c = z;
    }

    public final boolean j() {
        return this.c;
    }

    public final void b(boolean z) {
        this.d = z;
    }

    public final boolean k() {
        return this.d;
    }

    public static final class a {
        private a() {
        }

        public a(bbg bbgVar) {
            this();
        }

        public final String a() {
            return SearchActivity.j;
        }

        public final String b() {
            return SearchActivity.k;
        }

        public final void a(Context context, Integer num) {
            Intent intent = new Intent(context, (Class<?>) SearchActivity.class);
            intent.putExtra(b(), num);
            if (context != null) {
                context.startActivity(intent);
            }
        }
    }

    @Override
    public void a(Bundle bundle) {
        if (getIntent() != null) {
            this.e = getIntent().getIntExtra(k, 0);
            BLog.i(j, "search tid is " + this.e);
        }
        this.b = (SearchKeyboardView) d(R.id.keyboard_view);
        this.a = d(R.id.focus_holder);
        SearchKeyboardView searchKeyboardView = this.b;
        if (searchKeyboardView == null) {
            bbi.a();
        }
        searchKeyboardView.setSearchCallback(new b());
        String str = "首页";
        CategoryMeta primaryCategoryBy = CategoryManager.getPrimaryCategoryBy(getApplicationContext(), this.e);
        if (this.e != 0 && primaryCategoryBy != null) {
            str = primaryCategoryBy.mTypeName;
            bbi.a((Object) str, "categoryMeta.mTypeName");
        }
        ok.a("tv_search_pageview", "from", str);
        SearchKeyboardView searchKeyboardView2 = this.b;
        if (searchKeyboardView2 == null) {
            bbi.a();
        }
        searchKeyboardView2.requestFocus();
    }

    public final class b implements SearchKeyboardView.f {
        b() {
        }

        @Override
        public void a() {
            if (!SearchActivity.this.q()) {
                SearchActivity.this.t();
            }
            afh afhVar = SearchActivity.this.f;
            if (afhVar == null) {
                bbi.a();
            }
            afhVar.b();
            SearchActivity.this.i = "";
        }

        @Override
        public void a(String str) {
            bbi.b(str, "text");
            BLog.d(SearchActivity.Companion.a(), "get suggestion for " + str);
            String str2 = str;
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            if (str2.length() > 0) {
                if (!SearchActivity.this.q()) {
                    SearchActivity.this.t();
                }
                afh afhVar = SearchActivity.this.f;
                if (afhVar == null) {
                    bbi.a();
                }
                afhVar.a(str);
            }
        }

        @Override
        public void b(String str) {
            android.util.Log.i("SearchActivity", "b(String) called with: " + str);
            bbi.b(str, "searchText");
            if (TextUtils.isEmpty(str)) {
                lr.b(SearchActivity.this, SearchActivity.this.getString(R.string.search_none_word));
            } else {
                SearchActivity.this.a(str);
            }
        }
    }

    @Override
    public void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        t();
    }

    public final void a(String str) {
        android.util.Log.i("SearchActivity", "a(String) called with: " + str);
        bbi.b(str, "text");
        BLog.i(j, "search " + str);
        String str2 = str;
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        this.i = str;
        b(str);
        SearchResultSideActivity.a((Context) this, str, this.e);
    }

    private final void b(String str) {
        BLog.i(j, "保存搜索历史: " + str);
        new SearchRecentSuggestions(this, "uii.ang.bilitv.provider.TvSearchSuggestionProvider", 1).saveRecentQuery(str, null);
        truncateSearchHistory(50);
        BLog.i(j, "保存搜索历史成功");
    }

    private void truncateSearchHistory(int maxCount) {
        android.net.Uri uri = android.net.Uri.parse("content://uii.ang.bilitv.provider.TvSearchSuggestionProvider/suggestions");
        android.database.Cursor cursor = null;
        try {
            cursor = getContentResolver().query(uri, null, null, null, "_id ASC");
            if (cursor != null) {
                int count = cursor.getCount();
                if (count > maxCount) {
                    int toDelete = count - maxCount;
                    cursor.moveToFirst();
                    for (int i = 0; i < toDelete; i++) {
                        String id = cursor.getString(cursor.getColumnIndex("_id"));
                        android.net.Uri deleteUri = android.net.Uri.withAppendedPath(uri, id);
                        getContentResolver().delete(deleteUri, null, null);
                        cursor.moveToNext();
                    }
                }
            }
        } catch (Exception e) {
            BLog.e(j, "truncateSearchHistory error: " + e.getMessage());
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    public final boolean q() {
        if (this.f != null) {
            afh afhVar = this.f;
            if (afhVar == null) {
                bbi.a();
            }
            if (afhVar.isVisible()) {
                return true;
            }
        }
        return false;
    }

    public final View l() {
        SearchKeyboardView searchKeyboardView = this.b;
        if (searchKeyboardView == null) {
            bbi.a();
        }
        View k2 = searchKeyboardView.k(this.h);
        if (k2 == null) {
            SearchKeyboardView searchKeyboardView2 = this.b;
            if (searchKeyboardView2 == null) {
                bbi.a();
            }
            return searchKeyboardView2.k(6);
        }
        if (this.h == 0) {
            SearchKeyboardView searchKeyboardView3 = this.b;
            if (searchKeyboardView3 == null) {
                bbi.a();
            }
            searchKeyboardView3.getSearchText().setFocusable(true);
        }
        return k2;
    }

    private final void s() {
        SearchKeyboardView searchKeyboardView = this.b;
        if (searchKeyboardView != null) {
            searchKeyboardView.B();
        }
    }

    @Override
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (this.b == null) {
            return super.dispatchKeyEvent(keyEvent);
        }
        Integer valueOf = keyEvent != null ? Integer.valueOf(keyEvent.getAction()) : null;
        Integer valueOf2 = keyEvent != null ? Integer.valueOf(keyEvent.getKeyCode()) : null;
        if (valueOf != null && valueOf.intValue() == 0) {
            View currentFocus = getCurrentFocus();
            if (currentFocus == null) {
                return super.dispatchKeyEvent(keyEvent);
            }
            if (valueOf2 != null && valueOf2.intValue() == 21) {
                View view = this.a;
                if (view == null) {
                    bbi.b("focusHolder");
                }
                if (currentFocus == view) {
                    return true;
                }
            } else if (valueOf2 != null && valueOf2.intValue() == 22) {
                View view2 = this.a;
                if (view2 == null) {
                    bbi.b("focusHolder");
                }
                if (currentFocus == view2) {
                    return true;
                }
                Object parent = currentFocus.getParent();
                if (!(parent instanceof View)) {
                    parent = null;
                }
                View view3 = (View) parent;
                if (view3 == this.b) {
                    SearchKeyboardView searchKeyboardView = this.b;
                    if (searchKeyboardView == null) {
                        bbi.a();
                    }
                    int g = searchKeyboardView.g(currentFocus);
                    if (g == 0 || g % 6 == 0 || g == 39) {
                        this.h = g;
                        if (q()) {
                            afh afhVar = this.f;
                            if (afhVar == null) {
                                bbi.a();
                            }
                            afhVar.a();
                        }
                        return true;
                    }
                } else {
                    Object tag = view3 != null ? view3.getTag() : null;
                    if (TextUtils.equals((CharSequence) (tag instanceof CharSequence ? tag : null), "search_layout")) {
                        SearchKeyboardView searchKeyboardView2 = this.b;
                        if (searchKeyboardView2 == null) {
                            bbi.a();
                        }
                        View k2 = searchKeyboardView2.k(39);
                        if (k2 != null) {
                            k2.requestFocus();
                            return true;
                        }
                    }
                }
            } else if (valueOf2 != null && valueOf2.intValue() == 19) {
                View view4 = this.a;
                if (view4 == null) {
                    bbi.b("focusHolder");
                }
                if (currentFocus == view4) {
                    return true;
                }
            } else if (valueOf2 != null && valueOf2.intValue() == 20) {
                View view5 = this.a;
                if (view5 == null) {
                    bbi.b("focusHolder");
                }
                if (currentFocus == view5) {
                    return true;
                }
                SearchKeyboardView searchKeyboardView3 = this.b;
                if (searchKeyboardView3 == null) {
                    bbi.a();
                }
                if (currentFocus == searchKeyboardView3.getSearchText()) {
                    SearchKeyboardView searchKeyboardView4 = this.b;
                    if (searchKeyboardView4 == null) {
                        bbi.a();
                    }
                    searchKeyboardView4.j(1);
                    return true;
                }
            } else if (valueOf2 != null && valueOf2.intValue() == 4) {
                SearchKeyboardView searchKeyboardView5 = this.b;
                if (searchKeyboardView5 == null) {
                    bbi.a();
                }
                if (searchKeyboardView5.getSearchText().getText().toString().length() > 0) {
                    s();
                    SearchKeyboardView searchKeyboardView6 = this.b;
                    if (searchKeyboardView6 == null) {
                        bbi.a();
                    }
                    searchKeyboardView6.j(1);
                    return true;
                }
            }
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    public final void t() {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Fragment findFragmentByTag = supportFragmentManager.findFragmentByTag(afh.Companion.a());
        if (!(findFragmentByTag instanceof afh)) {
            findFragmentByTag = null;
        }
        this.f = (afh) findFragmentByTag;
        if (this.f == null) {
            this.f = afh.Companion.b();
        }
        afh afhVar = this.f;
        if (afhVar == null) {
            bbi.a();
        }
        if (!afhVar.isAdded()) {
            supportFragmentManager.beginTransaction().add(R.id.fragment_container, this.f, afh.Companion.a()).commitAllowingStateLoss();
            return;
        }
        FragmentTransaction show = supportFragmentManager.beginTransaction().show(this.f);
        adl.a.a(supportFragmentManager, show);
    }

    @Override
    public boolean onLongClick(View view) {
        bbi.b(view, "v");
        if (q()) {
            afh afhVar = this.f;
            if (afhVar == null) {
                bbi.a();
            }
            if (afhVar.c()) {
                agb.a aVar = new agb.a(this);
                aVar.a(1).a("确认清除搜索历史?").a(getString(R.string.confirm), new c()).b(getString(R.string.cancel), DismissListener.INSTANCE);
                aVar.a().show();
                return true;
            }
        }
        return true;
    }

    public final class c implements agb.b {
        c() {
        }

        @Override
        public final void a(agb agbVar, View view) {
            SearchActivity.this.f.d();
            ok.a("tv_search_clearall_click", new String[0]);
            agbVar.dismiss();
        }
    }

    public static final class DismissListener implements agb.b {
        public static final DismissListener INSTANCE = new DismissListener();

        DismissListener() {
        }

        @Override
        public final void a(agb agbVar, View view) {
            agbVar.dismiss();
        }
    }
}
