package com.bilibili.tv.ui.main.content;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.alibaba.fastjson.JSONObject;
import com.bilibili.lib.account.model.AccountInfo;
import com.bilibili.tv.MainApplication;
import com.bilibili.tv.R;
import com.bilibili.tv.ui.account.LoginActivity;
import com.bilibili.tv.ui.attention.AttentionDynamicSideActivity;
import com.bilibili.tv.ui.bangumi.follow.FollowBangumiActivity;
import com.bilibili.tv.ui.bangumi.follow.FollowPgcActivity;
import com.bilibili.tv.ui.favorite.FavoriteSideActivity;
import com.bilibili.tv.ui.main.MainActivity;
import com.bilibili.tv.widget.CircleImageView;
import com.bilibili.tv.widget.DrawLinearLayout;
import com.bilibili.tv.widget.FixGridLayoutManager;
import kotlin.TypeCastException;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import bl.*;
import mybl.CookieUtil;
import mybl.LoginCookieHelper;
import com.bilibili.tv.ui.history.VideoToviewActivity;
import com.bilibili.tv.ui.history.HistorySideActivity;
import com.bilibili.tv.ui.download.DownloadManagerActivity;
import com.bilibili.tv.widget.border.BorderGridLayoutManager;
import com.bilibili.tv.widget.side.SideRightGridLayoutManger;

/* compiled from: BL */
/* loaded from: classes.dex */
public final class MainMyFragment extends adu implements aez, wf {
    public static final a Companion = new a(null);
    private static final String d = "MainMyFragment";
    private static final int e = 4;
    private BorderGridLayoutManager a;
    private b b;
    private boolean c;

    // 我的页面默认排序：历史、动态、收藏、待看、下载、追剧、追番、登录
    public static int[] MyMap={4,1,3,2,7,6,5,0};

    @Override // bl.wf
    public String a() {
        return "ott-platform.me.0.0.pv";
    }

    @Override // bl.wf
    public boolean a_() {
        return wg.a(this);
    }

    @Override // bl.wf
    public Bundle b() {
        return null;
    }

    /* compiled from: BL */
    /* loaded from: classes.dex */
    public static final class a {
        public final int b(int i) {
            switch (i) {
                case 0:
                    return R.drawable.ic_lv0;
                case 1:
                    return R.drawable.ic_lv1;
                case 2:
                    return R.drawable.ic_lv2;
                case 3:
                    return R.drawable.ic_lv3;
                case 4:
                    return R.drawable.ic_lv4;
                case 5:
                    return R.drawable.ic_lv5;
                case 6:
                    return R.drawable.ic_lv6;
                case 7:
                    return R.drawable.ic_lv7;
                case 8:
                    return R.drawable.ic_lv8;
                case 9:
                    return R.drawable.ic_lv9;
                default:
                    return 0;
            }
        }

        private a() {
        }

        public /* synthetic */ a(bbg bbgVar) {
            this();
        }

        public final MainMyFragment a() {
            return new MainMyFragment();
        }

        public final String a(int i) {
            String string = MainApplication.a().getString(i != 0 ? i != 5000 ? i != 10000 ? i != 20000 ? i != 25000 ? i != 30000 ? i != 31000 ? R.string.user_rank_default : R.string.user_rank_31000 : R.string.user_rank_30000 : R.string.user_rank_25000 : R.string.user_rank_20000 : R.string.user_rank_10000 : R.string.user_rank_5000 : R.string.user_rank_0);
            bbi.a((Object) string, "MainApplication.getInstance().getString(res)");
            return string;
        }
    }

    @Override // bl.adu
    public void a(RecyclerView recyclerView, Bundle bundle) {
        bbi.b(recyclerView, "recyclerView");
        super.a(recyclerView, bundle);
        int b2 = adl.b(R.dimen.px_13);
        int b3 = adl.b(R.dimen.px_50);
        recyclerView.setPadding(b3, b3, b3, b3);
        final int i = e;
        final int i2 = 1;
        final boolean z = false;
        this.a = new BorderGridLayoutManager(getActivity(), i, i2, z) { // from class: com.bilibili.tv.ui.main.content.MainMyFragment$onViewCreated$1
            @Override // android.support.v7.widget.RecyclerView.h
            public View d(View view, int direction) {
                int d2 = d(view);
                if (direction == 33 && d2 < 4) {
                    FragmentActivity activity = MainMyFragment.this.getActivity();
                    if (activity == null) {
                        throw new TypeCastException("null cannot be cast to non-null type com.bilibili.tv.ui.main.MainActivity");
                    }
                    MainActivity mainActivity = (MainActivity) activity;
                    mainActivity.a(false);
                    mainActivity.b(false);
                    return mainActivity.j();
                }
                return super.d(view, direction);
            }
        };
        this.b = new b();
        recyclerView.setLayoutManager(this.a);
        recyclerView.a(new ItemDecoration(b2));
        recyclerView.setFocusable(false);
        recyclerView.setAdapter(this.b);
        recyclerView.addOnLayoutChangeListener(new e());
    }

    /* compiled from: BL */
    /* loaded from: classes.dex */
    public static final class ItemDecoration extends RecyclerView.g {
        final /* synthetic */ int a;

        ItemDecoration(int i) {
            this.a = i;
        }

        @Override // android.support.v7.widget.RecyclerView.g
        public void a(Rect rect, View view, RecyclerView recyclerView, RecyclerView.s sVar) {
            bbi.b(rect, "outRect");
            bbi.b(view, "view");
            bbi.b(recyclerView, "parent");
            int f = recyclerView.f(view);
            int top = f < MainMyFragment.e ? 0 : this.a;
            int bottom = this.a;
            int mod = f % MainMyFragment.e;
            int spacing = this.a;
            int halfSpacing = spacing / 2;
            
            int left = halfSpacing - (mod * spacing) / MainMyFragment.e;
            int right = ((mod + 1) * spacing) / MainMyFragment.e - halfSpacing;
            
            rect.set(left, top, right, bottom);
        }
    }

    /* compiled from: BL */
    /* loaded from: classes.dex */
    final class e implements View.OnLayoutChangeListener {
        e() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            if (MainMyFragment.this.b == null || !MainMyFragment.this.c) {
                return;
            }
            MainMyFragment.this.c = false;
            GridLayoutManager gridLayoutManager = MainMyFragment.this.a;
            if (gridLayoutManager == null) {
                bbi.a();
            }
            b bVar = MainMyFragment.this.b;
            if (bVar == null) {
                bbi.a();
            }
            View c = gridLayoutManager.c(bVar.e());
            FragmentActivity activity = MainMyFragment.this.getActivity();
            if (c == null || !(activity instanceof MainActivity)) {
                return;
            }
            MainActivity mainActivity = (MainActivity) activity;
            mainActivity.a(true);
            mainActivity.k();
            c.requestFocus();
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.b = null;
    }

    @Override // android.support.v4.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        if (!z || d() == null || this.b == null) {
            return;
        }
        this.c = true;
        b bVar = this.b;
        if (bVar == null) {
            bbi.a();
        }
        FragmentActivity activity = getActivity();
        if (activity == null) {
            bbi.a();
        }
        bbi.a((Object) activity, "activity!!");
        bVar.a((Activity) activity, false);
    }

    @Override // bl.aez
    public View e_() {
        if (this.b != null) {
            b bVar = this.b;
            if (bVar == null) {
                bbi.a();
            }
            if (bVar.a() == 0) {
                return null;
            }
            GridLayoutManager gridLayoutManager = this.a;
            if (gridLayoutManager == null) {
                bbi.a();
            }
            int o = gridLayoutManager.o();
            return gridLayoutManager.c(o);
        }
        return null;
    }

    public final void e() {
        if (d() == null || this.b == null) {
            return;
        }
        this.c = true;
        b bVar = this.b;
        if (bVar == null) {
            bbi.a();
        }
        FragmentActivity activity = getActivity();
        if (activity == null) {
            bbi.a();
        }
        bbi.a((Object) activity, "activity!!");
        bVar.a((Activity) activity, true);
    }

    /* compiled from: BL */
    /* loaded from: classes.dex */
    static final class b extends RecyclerView.a<adv> implements View.OnClickListener, View.OnLongClickListener {
        private final int[] titles = {R.string.login, R.string.my_attention, R.string.my_toview, R.string.my_favorite, R.string.my_history, R.string.bangumi_main_follow, R.string.pgc_main_follow, R.string.download_manager};
        private final int[] colors = {R.color.color_1, R.color.color_2, R.color.color_3, R.color.color_5, R.color.color_6, R.color.color_4, R.color.color_7, R.color.color_8};
        private final int[] logos = {R.drawable.ic_user_center_default_avatar, R.drawable.ic_group_180, R.drawable.ic_toview_180, R.drawable.ic_user_center_star, R.drawable.ic_user_center_history, R.drawable.ic_bangumi_favourite, R.drawable.ic_bangumi_favourite, R.drawable.selector_main_download_manager};
        private AccountInfo d;
        private boolean e;
        private int f;

        public b() {
            mg a2 = mg.a(MainApplication.a());
            if (a2 != null) {
                this.d = a2.c();
                this.e = a2.a();
            }
            StringBuilder sb = new StringBuilder("adapter init: loggedIn=").append(this.e).append(", MyMap=");
            for (int m : MyMap) {
                sb.append(m).append(",");
            }
            Log.i("MainMyAccount", sb.toString());
        }

        public final int e() {
            return this.f;
        }

        public final void e(int i) {
            this.f = i;
        }

        @Override // android.support.v7.widget.RecyclerView.a
        public adv a(ViewGroup viewGroup, int i) {
            bbi.b(viewGroup, "parent");
            return ((c)null).Companion.a(viewGroup);
        }

        @Override // android.support.v7.widget.RecyclerView.a
        public void a(adv advVar, int i) {
            int i2;
            bbi.b(advVar, "viewHolder");
            if (advVar instanceof c) {
                c cVar = (c) advVar;
                int realIndex = effectiveIndex(i);
                Log.i("MainMyAccount", "bind: pos=" + i + ", realIndex=" + realIndex + ", myMap=" + MyMap[realIndex] + ", setLongClick=" + (MyMap[realIndex] == 0));
                cVar.z().setText(this.titles[MyMap[realIndex]]);
                nv.a().a(this.logos[MyMap[realIndex]], cVar.A());
                cVar.A().setVisibility(0);
                Drawable c = adl.a.c(R.drawable.background_item_main);
                c.setColorFilter(adl.d(this.colors[i]), PorterDuff.Mode.SRC_ATOP);
                advVar.a.setBackgroundDrawable(c);
                cVar.E().setVisibility(8);
                cVar.F().setVisibility(8);
                cVar.C().setVisibility(8);
                cVar.D().setVisibility(8);
                advVar.a.setTag(R.id.position, Integer.valueOf(i));
                advVar.a.setOnClickListener(this);
                if (MyMap[realIndex] == 0) {
                    // 长按头像弹出多账号切换列表
                    advVar.a.setOnLongClickListener(this);
                }
                if (MyMap[realIndex] == 0 && this.d != null) {
                    AccountInfo accountInfo = this.d;
                    if (accountInfo == null) {
                        bbi.a();
                    }
                    if (accountInfo.mAvatar != null) {
                        nv a2 = nv.a();
                        a2.a(accountInfo.mAvatar, cVar.A());
                    }
                    if (accountInfo.mUserName != null) {
                        TextView z = cVar.z();
                        z.setText(accountInfo.mUserName);
                    }
                }
            }
        }

        @Override // android.support.v7.widget.RecyclerView.a
        public int a() {
            // 未启用隐藏功能时，隐藏"下载"入口
            if (isDownloadHidden()) {
                int count = 0;
                for (int i = 0; i < MyMap.length; i++) {
                    if (MyMap[i] != 7) {
                        count++;
                    }
                }
                return count;
            }
            return this.titles.length;
        }

        // 是否隐藏下载入口（未启用隐藏功能时隐藏）
        private boolean isDownloadHidden() {
            return !abd.b(MainApplication.a().getApplicationContext());
        }

        // 将列表位置映射到 MyMap 实际索引（未启用隐藏功能时跳过"下载"项）
        private int effectiveIndex(int position) {
            int count = 0;
            for (int i = 0; i < MyMap.length; i++) {
                if (isDownloadHidden() && MyMap[i] == 7) {
                    continue;
                }
                if (count == position) {
                    return i;
                }
                count++;
            }
            return position;
        }

        public final void a(Activity activity, boolean z) {
            bbi.b(activity, "activity");
            if (z || !this.e) {
                mg a2 = mg.a(MainApplication.a());
                bbi.a((Object) a2, "BiliAccount.get(MainApplication.getInstance())");
                boolean a3 = a2.a();
                Log.i("MainMyAccount", "refresh login state: old=" + this.e + ", new=" + a3 + ", force=" + z);
                if (this.e != a3) {
                    this.e = a3;
                    mg a4 = mg.a(MainApplication.a());
                    if (a4 != null) {
                        this.d = a4.c();
                    }
                    if (activity instanceof MainActivity) {
                        MainActivity mainActivity = (MainActivity) activity;
                        mainActivity.a(false);
                        View j = mainActivity.j();
                        if (j != null) {
                            j.requestFocus();
                        }
                    }
                    d();
                }
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v) {
            bbi.b(v, "v");
            Context context = v.getContext();
            bbi.a((Object) context, "v.context");
            Activity a2 = adl.a(context);
            if (a2 != null) {
                Object tag = v.getTag(R.id.position);
                int intValue = tag != null ? ((Integer) tag).intValue() : 0;
                Log.i("MainMyAccount", "onClick: pos=" + intValue + ", myMap=" + MyMap[effectiveIndex(intValue)] + ", loggedIn=" + this.e);
                switch (MyMap[effectiveIndex(intValue)]) {
                    case 0:
                        if (!this.e) {
                            LoginActivity.Companion.a(a2, MainActivity.Companion.a());
                            this.f = intValue;
                            return;
                        }
                        if (a2 instanceof MainActivity) {
                            agb.a aVar = new agb.a(a2);
                            aVar.a(1).a(adl.e(R.string.is_really_confirmed_to_logout)).a(adl.e(R.string.logout), new a(a2)).b(adl.e(R.string.logout_cancel), bb.a);
                            aVar.a().show();
                        }
                        return;
                    case 1:
                        if (!this.e) {
                            LoginActivity.Companion.a(a2, MainActivity.Companion.a());
                            this.f = intValue;
                            return;
                        }
                        // 跳转到新的动态页面（左右分栏）
                        AttentionDynamicSideActivity.a(a2);
                        ok.a("tv_my_mybangumi_click", "action", "1");
                        return;
                    case 2:
                        if (!this.e) {
                            LoginActivity.Companion.a(a2, MainActivity.Companion.a());
                            this.f = intValue;
                            return;
                        }
                        VideoToviewActivity.Companion.a(a2, VideoToviewActivity.Companion.b());
                        return;
                    case 3:
                        if (!this.e) {
                            LoginActivity.Companion.a(a2, MainActivity.Companion.a());
                            this.f = intValue;
                            return;
                        }
                        FavoriteSideActivity.a(a2);
                        ok.a("tv_my_favourite_click", "action", "1");
                        return;
                    case 4:
                        if (!this.e) {
                            LoginActivity.Companion.a(a2, MainActivity.Companion.a());
                            this.f = intValue;
                            return;
                        }
                        HistorySideActivity.a(a2);
                        ok.a("tv_my_history_click", "action", "1");
                        return;
                    case 5:
                        if (!this.e) {
                            LoginActivity.Companion.a(a2, MainActivity.Companion.a());
                            this.f = intValue;
                            return;
                        }
                        FollowBangumiActivity.Companion.a(a2);
                        ok.a("tv_my_bangumi_follow_click", "action", "1");
                        return;
                    case 6:
                        if (!this.e) {
                            LoginActivity.Companion.a(a2, MainActivity.Companion.a());
                            this.f = intValue;
                            return;
                        }
                        FollowPgcActivity.Companion.a(a2);
                        ok.a("tv_my_pgc_follow_click", "action", "1");
                        return;
                    case 7:
                        // 下载管理不需要登录，直接进入
                        DownloadManagerActivity.Companion.a(a2, 1);
                        return;
                    default:
                        return;
                }
            }
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View v) {
            Context context = v.getContext();
            Activity a2 = adl.a(context);
            Object tag = v.getTag(R.id.position);
            int position = tag != null ? ((Integer) tag).intValue() : -1;
            int myMapValue = -1;
            if (position >= 0) {
                int realIndex = effectiveIndex(position);
                if (realIndex >= 0 && realIndex < MyMap.length) {
                    myMapValue = MyMap[realIndex];
                }
            }
            Log.i("MainMyAccount", "onLongClick: position=" + position + ", myMapValue=" + myMapValue + ", loggedIn=" + this.e);
            // 头像卡 = MyMap 中值为 0 的卡片（支持自定义排序后头像不在 position 0）
            if (myMapValue != 0) {
                return false;
            }
            try {
                mg accountManager = mg.a(MainApplication.a());
                AccountInfo accountInfo = accountManager.c();
                // 未登录：不保存当前账号，直接弹出已保存账号列表，可切换到其它已登录账号
                if (accountInfo == null) {
                    if (abd.get_accounts(context).isEmpty()) {
                        Log.i("MainMyAccount", "not logged in and no saved accounts, skip dialog");
                        return false;
                    }
                    Log.i("MainMyAccount", "not logged in, show saved accounts dialog only");
                    showAccountSwitchDialog(context, a2);
                    return true;
                }
                File accountFile = new File(context.getFilesDir(), "bili.account.storage");
                File passportFile = new File(context.getFilesDir(), "bili.passport.storage");
                Log.i("MainMyAccount", "files exists: account=" + accountFile.exists() + ", passport=" + passportFile.exists());
                // 读取当前账号凭证文件原文
                String accountStorage = readFirstLine(accountFile);
                String passportStorage = readFirstLine(passportFile);
                Log.i("MainMyAccount", "read storage len: account=" + (accountStorage == null ? -1 : accountStorage.length()) + ", passport=" + (passportStorage == null ? -1 : passportStorage.length()));
                String mid = String.valueOf(accountInfo.mMid);
                String username = accountInfo.mUserName;
                Log.i("MainMyAccount", "save current account: mid=" + mid + ", username=" + username);
                // 校验cookie文件中的DedeUserID是否与当前登录mid一致，
                // 防止登录新账号后cookie文件仍是旧账号导致保存到错误的凭证快照
                String cookieMid = extractDedeUserId(accountStorage);
                Log.i("MainMyAccount", "verify cookie: fileDedeUserId=" + cookieMid + ", currentMid=" + mid);
                if (cookieMid == null || !cookieMid.equals(mid)) {
                    // cookie与当前账号不一致：在后台线程调用refreshToken获取当前账号的cookie后再保存
                    Log.i("MainMyAccount", "cookie DedeUserID mismatch, refresh cookies in background");
                    android.widget.Toast.makeText(context, "正在刷新账号凭证...", android.widget.Toast.LENGTH_SHORT).show();
                    final Context ctx = context;
                    final Activity act = a2;
                    final String fMid = mid;
                    final String fUsername = username;
                    final File fPassportFile = passportFile;
                    new Thread(new Runnable() {
                        @Override
                        public void run() {
                            final String refreshed = LoginCookieHelper.refreshCookiesAndReadAccountStorageSync(ctx);
                            act.runOnUiThread(new Runnable() {
                                @Override
                                public void run() {
                                    if (refreshed != null && !refreshed.isEmpty()) {
                                        // 刷新成功：重新读取token文件，保存当前账号快照并弹窗
                                        String newPassportStorage = readFirstLine(fPassportFile);
                                        Log.i("MainMyAccount", "refresh success, account len=" + refreshed.length() + ", passport len=" + (newPassportStorage == null ? -1 : newPassportStorage.length()));
                                        saveAccountAndShowDialog(ctx, act, fMid, fUsername, refreshed, newPassportStorage);
                                    } else {
                                        // 刷新失败：不保存可能错误的旧快照，避免把旧账号cookie当成当前账号凭证
                                        Log.i("MainMyAccount", "refresh failed, skip saving current account");
                                        android.widget.Toast.makeText(ctx, "刷新账号凭证失败，请稍后重试", android.widget.Toast.LENGTH_SHORT).show();
                                    }
                                }
                            });
                        }
                    }).start();
                    return true;
                }
                // cookie与当前账号一致，直接保存
                saveAccountAndShowDialog(context, a2, mid, username, accountStorage, passportStorage);
            } catch (Exception e) {
                Log.i("MainMyAccount", "onLongClick error: " + e.toString());
                e.printStackTrace();
                return false;
            }
            return true;
        }

        // 将当前账号保存进账号列表并弹出多账号切换对话框（账号横向排列，圆形头像+用户名）
        private void saveAccountAndShowDialog(Context context, Activity activity, String mid, String username, String accountStorage, String passportStorage) {
            try {
                // 获取当前账号头像（用于账号列表展示）
                String avatar = null;
                try {
                    mg accountManager = mg.a(MainApplication.a());
                    if (accountManager != null && accountManager.c() != null) {
                        avatar = accountManager.c().mAvatar;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                // 将当前账号保存进账号列表
                abd.add_account(context, mid, username, avatar, accountStorage, passportStorage);
                // 弹出账号切换对话框
                showAccountSwitchDialog(context, activity);
            } catch (Exception e) {
                Log.i("MainMyAccount", "saveAccountAndShowDialog error: " + e.toString());
                e.printStackTrace();
            }
        }

        // 弹出多账号切换对话框（账号横向排列，圆形头像+用户名，超出宽度可横向滚动）
        private void showAccountSwitchDialog(final Context context, final Activity activity) {
            try {
                final JSONObject accounts = abd.get_accounts(context);
                final List<String> mids = new ArrayList<String>();
                for (Map.Entry<String, Object> entry : accounts.entrySet()) {
                    mids.add(entry.getKey());
                }
                final Activity activityFinal = activity;
                final Context ctx = context;
                final AlertDialog[] dialogRef = new AlertDialog[1];
                Log.i("MainMyAccount", "show dialog, items=" + (mids.size() + 1));

                // 横向排列的账号列表：第1项为"添加账号"，后续为已登录账号
                final LinearLayout container = new LinearLayout(context);
                container.setOrientation(LinearLayout.HORIZONTAL);
                container.setGravity(android.view.Gravity.CENTER);
                int pad = dp(context, 24);
                container.setPadding(pad, pad, pad, pad);
                container.addView(buildAccountItem(context, activityFinal, ctx, accounts, mids, -1, null, "添加账号", dialogRef));
                for (int i = 0; i < mids.size(); i++) {
                    JSONObject account = accounts.getJSONObject(mids.get(i));
                    container.addView(buildAccountItem(context, activityFinal, ctx, accounts, mids, i, account, account.getString("username"), dialogRef));
                }

                // 账号较多超出屏幕宽度时，用HorizontalScrollView支持遥控器横向滚动访问
                android.widget.HorizontalScrollView scrollView = new android.widget.HorizontalScrollView(context);
                scrollView.setHorizontalScrollBarEnabled(false);
                scrollView.setFillViewport(true);
                scrollView.addView(container);

                AlertDialog dialog = new AlertDialog.Builder(context)
                        .setView(scrollView)
                        .create();
                // 对话框底色换成半透明深灰黑，白字清晰、焦点高亮明显、观感不刺眼
                android.graphics.drawable.GradientDrawable dialogBg = new android.graphics.drawable.GradientDrawable();
                dialogBg.setColor(0xE61E1E1E);
                dialogBg.setCornerRadius(dp(context, 12));
                if (dialog.getWindow() != null) {
                    dialog.getWindow().setBackgroundDrawable(dialogBg);
                }
                dialogRef[0] = dialog;
                dialog.show();
                // 限制对话框宽度为屏幕宽减去左右边距（160dp），超出部分由HorizontalScrollView横向滚动
                if (dialog.getWindow() != null) {
                    int dialogWidth = context.getResources().getDisplayMetrics().widthPixels - dp(context, 160);
                    if (dialogWidth > 0) {
                        dialog.getWindow().setLayout(dialogWidth, android.view.ViewGroup.LayoutParams.WRAP_CONTENT);
                    }
                }
                // 初始焦点定位到"添加账号"项
                container.post(new Runnable() {
                    @Override
                    public void run() {
                        if (container.getChildCount() > 0) {
                            container.getChildAt(0).requestFocus();
                        }
                    }
                });
            } catch (Exception e) {
                Log.i("MainMyAccount", "showAccountSwitchDialog error: " + e.toString());
                e.printStackTrace();
            }
        }

        // 构建横向账号item：index=-1 为"添加账号"，否则为已登录账号（index对应mids下标）
        private View buildAccountItem(final Context context, final Activity activity, final Context ctx, final JSONObject accounts, final List<String> mids, final int index, final JSONObject account, String displayName, final AlertDialog[] dialogRef) {
            LinearLayout item = new LinearLayout(context);
            item.setOrientation(LinearLayout.VERTICAL);
            item.setGravity(android.view.Gravity.CENTER_HORIZONTAL);
            item.setFocusable(true);
            item.setClickable(true);
            int pad = dp(context, 12);
            item.setPadding(pad, pad, pad, pad);

            // 上方圆形头像
            int avatarSize = dp(context, 88);
            LinearLayout.LayoutParams avatarLp = new LinearLayout.LayoutParams(avatarSize, avatarSize);
            if (index == -1) {
                // "添加账号"：灰色圆形 + "+"
                TextView plus = new TextView(context);
                plus.setLayoutParams(avatarLp);
                android.graphics.drawable.GradientDrawable circle = new android.graphics.drawable.GradientDrawable();
                circle.setShape(android.graphics.drawable.GradientDrawable.OVAL);
                circle.setColor(0xFF666666);
                plus.setBackground(circle);
                plus.setText("+");
                plus.setTextColor(android.graphics.Color.WHITE);
                plus.setTextSize(52.0f);
                plus.setGravity(android.view.Gravity.CENTER);
                item.addView(plus);
            } else {
                CircleImageView avatar = new CircleImageView(context);
                avatar.setLayoutParams(avatarLp);
                String avatarUrl = account != null ? account.getString("avatar") : null;
                if (avatarUrl != null && !avatarUrl.isEmpty()) {
                    nv.a().a(avatarUrl, avatar);
                } else {
                    avatar.setImageResource(R.drawable.ic_user_center_default_avatar);
                }
                item.addView(avatar);
            }

            // 下方用户名
            TextView name = new TextView(context);
            name.setText(displayName);
            name.setTextSize(16.0f);
            name.setTextColor(android.graphics.Color.WHITE);
            name.setGravity(android.view.Gravity.CENTER);
            LinearLayout.LayoutParams nameLp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            nameLp.topMargin = dp(context, 8);
            name.setLayoutParams(nameLp);
            item.addView(name);

            // 焦点效果：聚焦时高亮白背景（粉底上清晰可见）
            android.graphics.drawable.StateListDrawable selector = new android.graphics.drawable.StateListDrawable();
            selector.addState(new int[]{android.R.attr.state_focused}, new android.graphics.drawable.ColorDrawable(0x99FFFFFF));
            selector.addState(new int[0], new android.graphics.drawable.ColorDrawable(0x00000000));
            item.setBackground(selector);

            item.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    if (index == -1) {
                        // 添加新账号：关闭对话框并进入登录页
                        if (dialogRef[0] != null && dialogRef[0].isShowing()) {
                            dialogRef[0].dismiss();
                        }
                        LoginActivity.Companion.a(activity, MainActivity.Companion.a());
                        return;
                    }
                    try {
                        // 切换账号：将目标账号凭证写回文件并重启
                        JSONObject target = accounts.getJSONObject(mids.get(index));
                        Log.i("MainMyAccount", "switch to account: mid=" + mids.get(index) + ", account_info_len=" + target.getString("account_info").length() + ", passport_info_len=" + target.getString("passport_info").length());
                        FileWriter accountWriter = new FileWriter(
                                new File(ctx.getFilesDir(), "bili.account.storage"));
                        accountWriter.write(target.getString("account_info"));
                        accountWriter.close();
                        FileWriter passportWriter = new FileWriter(
                                new File(ctx.getFilesDir(), "bili.passport.storage"));
                        passportWriter.write(target.getString("passport_info"));
                        passportWriter.close();
                        System.exit(0);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            });
            return item;
        }

        // dp 转 px
        private static int dp(Context context, int value) {
            return (int) (value * context.getResources().getDisplayMetrics().density + 0.5f);
        }

        // 读取凭证文件的单行内容（文件为Base64单行格式）
        private static String readFirstLine(File file) {
            try {
                if (file == null || !file.exists()) {
                    return null;
                }
                BufferedReader reader = new BufferedReader(new FileReader(file));
                String line = reader.readLine();
                reader.close();
                return line;
            } catch (Exception e) {
                return null;
            }
        }

        // 从账号cookie文件内容（Base64(JSON)）中提取DedeUserID
        private static String extractDedeUserId(String accountStorage) {
            try {
                if (accountStorage == null || accountStorage.isEmpty()) {
                    return null;
                }
                byte[] decoded = android.util.Base64.decode(accountStorage, android.util.Base64.NO_WRAP);
                String json = new String(decoded, "UTF-8");
                JSONObject obj = com.alibaba.fastjson.JSON.parseObject(json);
                if (obj == null) {
                    return null;
                }
                com.alibaba.fastjson.JSONArray cookies = obj.getJSONArray("cookies");
                if (cookies == null) {
                    return null;
                }
                for (int i = 0; i < cookies.size(); i++) {
                    JSONObject cookie = cookies.getJSONObject(i);
                    if (cookie != null && "DedeUserID".equals(cookie.getString("name"))) {
                        return cookie.getString("value");
                    }
                }
                return null;
            } catch (Exception e) {
                return null;
            }
        }

        /* compiled from: BL */
        /* loaded from: classes.dex */
        final class a implements agb.b {
            final /* synthetic */ Activity b;

            a(Activity activity) {
                this.b = activity;
            }

            @Override // bl.agb.b
            public final void a(final agb agbVar, View view) {
                // 退出登录前，先从多账号列表删除当前账号
                Context ctx = ((MainActivity) this.b).getApplicationContext();
                mg accountManager = mg.a(ctx);
                AccountInfo accountInfo = accountManager.c();
                if (accountInfo != null) {
                    abd.del_account(ctx, String.valueOf(accountInfo.mMid));
                }
                abn abnVar = abn.a;
                mg a = mg.a(((MainActivity) this.b).getApplicationContext());
                bbi.a((Object) a, "BiliAccount.get(activity.applicationContext)");
                abnVar.a(a).a(new ja<Void, Void>() { // from class: bl.MainMyFragment.b.a.1
                    @Override // bl.ja
                    public final Void a(jb<Void> jbVar) {
                        CookieUtil.clearCookies(a);
                        b.this.e(0);
                        ((MainActivity) a.this.b).l();
                        ok.a("tv_my_signout_click", new String[0]);
                        agbVar.dismiss();
                        return null;
                    }
                }, jb.b);
            }
        }

        /* compiled from: BL */
        /* renamed from: bl.MainMyFragment$b$b */
        /* loaded from: classes.dex */
        static final class bb implements agb.b {
            public static final bb a = new bb();

            bb() {
            }

            @Override // bl.agb.b
            public final void a(agb agbVar, View view) {
                agbVar.dismiss();
            }
        }

    }

    /* compiled from: BL */
    /* loaded from: classes.dex */
    static final class c extends adv {
        public static final a Companion = new a(null);
        private final TextView n;
        private final CircleImageView o;
        private final ImageView q;
        private final ImageView r;
        private final TextView s;
        private final TextView t;

        private final DrawLinearLayout u;
        private final LinearLayout v;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(View view) {
            super(view);
            bbi.b(view, "itemView");
            this.n = (TextView) a(view, R.id.name);
            this.o = (CircleImageView) a(view, R.id.img_icon);
            this.q = (ImageView) a(view, R.id.sex);
            this.r = (ImageView) a(view, R.id.level);
            this.s = (TextView) a(view, R.id.member);
            this.t = (TextView) a(view, R.id.coin);
            this.u = (DrawLinearLayout) view;
            this.v = (LinearLayout) a(view, R.id.fuck_layout);
            this.u.setUpDrawable(R.drawable.shadow_item_main);
            view.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: bl.MainMyFragment.c.1
                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view, boolean hasFocus) {
                    adj.a(view, hasFocus);
                    c.this.G().setUpEnabled(hasFocus);
                }
            });
        }

        public final TextView z() {
            return this.n;
        }

        public final CircleImageView A() {
            return this.o;
        }

        public final ImageView C() {
            return this.q;
        }

        public final ImageView D() {
            return this.r;
        }

        public final TextView E() {
            return this.s;
        }

        public final TextView F() {
            return this.t;
        }

        public final DrawLinearLayout G() {
            return this.u;
        }

        public final LinearLayout H() {
            return this.v;
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
                View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.recycler_view_item_main_my, viewGroup, false);
                bbi.a((Object) inflate, "view");
                return new c(inflate);
            }
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        wh.a().a(this, !z);
    }
}