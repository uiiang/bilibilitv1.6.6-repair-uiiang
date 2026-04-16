package com.bilibili.tv.ui.attention;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.text.TextUtils;

import com.bilibili.tv.widget.CircleImageView;
import com.bilibili.tv.widget.DrawTextView;
import tv.danmaku.ijk.media.player.IjkMediaCodecInfo;
import bl.adl;
import bl.ady;
import bl.abd;
import bl.aj;
import bl.agd;
import bl.bbi;
import bl.bbg;
import bl.adv;
import bl.mg;
import bl.nv;
import bl.ach;
import bl.vo;
import bl.vn;
import bl.lr;
import com.bilibili.tv.MainApplication;
import com.bilibili.tv.R;
import com.bilibili.tv.api.auth.BiliSpaceVideo;
import com.bilibili.tv.ui.video.VideoDetailActivity;
import com.bilibili.tv.util.DateHelper;
import com.bilibili.tv.widget.DrawRelativeLayout;
import com.bilibili.tv.widget.ScalableImageView;
import com.bilibili.tv.widget.border.BorderGridLayoutManager;
import com.bilibili.tv.widget.side.SideRightGridLayoutManger;
import mybl.BiliFilter;
import mybl.MyBiliApiService;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.JSONArray;
import java.util.ArrayList;
import java.util.List;
import kotlin.TypeCastException;

/* compiled from: BL */
/* loaded from: classes.dex */
public final class AttentionDynamicFragment extends ady {
    public static final a Companion = new a(null);
    private static final int j = 2;
    private c c;
    private b d;
    private boolean e;
    private int f = 1;
    private Long cursor = null;
    private int uperPage = 1;
    private String uperDynamicOffset = null;
    private int uperDynamicMode = -1;
    private boolean g = true;
    private boolean h;
    private long mid;
    private String mode;
    private String offset = "";
    private String uperFace = "";
    private View rootView;
    private View headerLayout;
    private View attentionButtonLayout;
    private CircleImageView headerFace;
    private TextView headerTitle;
    public DrawTextView attentionButton;
    private TextView headerCount;
    private TextView headerHint;

    /* compiled from: BL */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(bbg bbgVar) {
            this();
        }

        public final AttentionDynamicFragment a() {
            return new AttentionDynamicFragment();
        }
    }

    private String uperName = "";

  public static AttentionDynamicFragment newInstance(long mid, String mode) {
        AttentionDynamicFragment fragment = new AttentionDynamicFragment();
        fragment.mid = mid;
        fragment.mode = mode;
        return fragment;
    }
    
    public static AttentionDynamicFragment newInstance(long mid, String mode, String uperName) {
        AttentionDynamicFragment fragment = new AttentionDynamicFragment();
        fragment.mid = mid;
        fragment.mode = mode;
        fragment.uperName = uperName;
        return fragment;
    }

    public static AttentionDynamicFragment newInstance(long mid, String mode, String uperName, String uperFace) {
        AttentionDynamicFragment fragment = new AttentionDynamicFragment();
        fragment.mid = mid;
        fragment.mode = mode;
        fragment.uperName = uperName;
        fragment.uperFace = uperFace;
        return fragment;
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle bundle) {
        this.rootView = inflater.inflate(R.layout.fragment_attention_dynamic_video, container, false);
        this.headerLayout = this.rootView.findViewById(R.id.dynamic_header_layout);
        this.attentionButtonLayout = this.rootView.findViewById(R.id.dynamic_header_attention_layout);
        this.headerFace = (CircleImageView) this.rootView.findViewById(R.id.dynamic_header_face);
        this.headerTitle = (TextView) this.rootView.findViewById(R.id.dynamic_header_title);
        this.attentionButton = (DrawTextView) this.rootView.findViewById(R.id.dynamic_header_attention);
        this.headerCount = (TextView) this.rootView.findViewById(R.id.dynamic_header_count);
        this.headerHint = (TextView) this.rootView.findViewById(R.id.dynamic_header_hint);
        initHeader();
        RecyclerView recyclerView = (RecyclerView) this.rootView.findViewById(R.id.recycler_view);
        a(recyclerView, bundle);
        return this.rootView;
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
    }

    private void initHeader() {
        if ("all".equals(mode)) {
            if (this.headerTitle != null) {
                this.headerTitle.setText("全部动态");
            }
            if (this.headerFace != null) {
                this.headerFace.setImageResource(R.mipmap.ic_launcher);
                this.headerFace.setVisibility(View.VISIBLE);
            }
            if (this.attentionButtonLayout != null) {
                this.attentionButtonLayout.setVisibility(View.GONE);
            }
            if (this.headerCount != null) {
                this.headerCount.setVisibility(View.GONE);
            }
        } else if ("uper".equals(mode)) {
            if (this.headerTitle != null) {
                this.headerTitle.setText(this.uperName != null ? this.uperName : "");
            }
            if (this.headerFace != null && this.uperFace != null && !this.uperFace.isEmpty()) {
                nv.a().a(abd.get_thumb_url_c(MainApplication.a(), this.uperFace), this.headerFace);
                this.headerFace.setVisibility(View.VISIBLE);
            } else if (this.headerFace != null) {
                this.headerFace.setImageResource(R.mipmap.ic_launcher);
                this.headerFace.setVisibility(View.VISIBLE);
            }
            if (this.attentionButtonLayout != null) {
                this.attentionButtonLayout.setVisibility(View.VISIBLE);
            }
            if (this.attentionButton != null) {
                this.attentionButton.setUpDrawable(R.drawable.shadow_red_rect);
                this.attentionButton.setOnFocusChangeListener(new View.OnFocusChangeListener() {
                    @Override
                    public void onFocusChange(View view, boolean z) {
                        ((DrawTextView) view).setUpEnabled(z);
                    }
                });
                this.attentionButton.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View view) {
                        mg account = mg.a(getActivity());
                        if (account == null) return;
                        String cookie = mybl.CookieUtil.getFullCookieWithDevice(account);
                        String csrf = mybl.CookieUtil.getBiliJct(account);
                        ((MyBiliApiService) vo.a(MyBiliApiService.class)).modifyRelation(
                            mid,
                            AttentionDynamicFragment.this.attentionButton.getText().equals("已关注") ? 2 : 1,
                            11, csrf, cookie
                        ).a(new vn<JSONObject>() {
                            @Override
                            public void a(JSONObject response) {
                                boolean followed = AttentionDynamicFragment.this.attentionButton.getText().equals("已关注");
                                AttentionDynamicFragment.this.attentionButton.setText(followed ? "＋关注" : "已关注");
                                lr.b(getContext(), followed ? "取消关注成功" : "关注成功");
                            }

                            @Override
                            public void onError(Throwable th) {
                                boolean followed = AttentionDynamicFragment.this.attentionButton.getText().equals("已关注");
                                lr.b(getContext(), followed ? "取消关注失败" : "关注失败");
                            }

                            @Override
                            public boolean isCancel() {
                                return getActivity() == null || getActivity().isFinishing();
                            }
                        });
                    }
                });
                mg account = mg.a(getActivity());
                if (account != null) {
                    String cookie = mybl.CookieUtil.getFullCookieWithDevice(account);
                    ((MyBiliApiService) vo.a(MyBiliApiService.class)).getRelation(mid, cookie)
                        .a(new vn<JSONObject>() {
                            @Override
                            public void a(JSONObject response) {
                                int attribute = response.getIntValue("attribute");
                                if (attribute == 2 || attribute == 6) {
                                    AttentionDynamicFragment.this.attentionButton.setText("已关注");
                                }
                            }

                            @Override
                            public void onError(Throwable th) {}

                            @Override
                            public boolean isCancel() {
                                return getActivity() == null || getActivity().isFinishing();
                            }
                        });
                }
            }
        }
    }

    public void updateHeaderCount(int count) {
        if (this.headerCount != null && "uper".equals(mode)) {
            this.headerCount.setText(count > 0 ? count + "条" : "");
            this.headerCount.setVisibility(View.VISIBLE);
        }
    }

    @Override // bl.ady
    public void a(RecyclerView recyclerView, Bundle bundle) {
        bbi.b(recyclerView, "recyclerView");
        super.a(recyclerView, bundle);
        this.mRecyclerView = recyclerView;
        SideRightGridLayoutManger sideRightGridLayoutManger = new SideRightGridLayoutManger(getActivity(), j);
        FragmentActivity activity = getActivity();
        if (activity == null) {
            throw new TypeCastException("null cannot be cast to non-null type com.bilibili.tv.ui.attention.AttentionDynamicSideActivity");
        }
        sideRightGridLayoutManger.a(new e((AttentionDynamicSideActivity) activity));
        recyclerView.setLayoutManager(sideRightGridLayoutManger);
        int iB = adl.b(R.dimen.px_4);
        int iB2 = adl.b(R.dimen.px_10);
        int iB3 = adl.b(R.dimen.px_30);
        recyclerView.setPadding(iB3, iB3, iB3, iB3);
        recyclerView.a(new f(iB2, iB));
        recyclerView.a(new g(sideRightGridLayoutManger));
        this.c = new c(uperName);
        recyclerView.setAdapter(this.c);
        i();
        this.d = new b();
        b();
        // recyclerView.requestLayout();
    }

    // 保存 RecyclerView 引用，用于外部判断是否在底部
    public RecyclerView mRecyclerView;

    // 外部判断当前 Fragment 是否正在加载下一页
    public boolean isLoading() {
        return this.h;
    }

    // 外部判断右侧列表是否已经到达底部
    public boolean isAtBottom() {
        if (this.mRecyclerView == null) return false;
        Object lm = this.mRecyclerView.getLayoutManager();
        if (lm instanceof SideRightGridLayoutManger) {
            SideRightGridLayoutManger s = (SideRightGridLayoutManger) lm;
            try {
                return s.p() >= s.H() - 1;
            } catch (Exception ignored) {
                return false;
            }
        }
        return false;
    }

    /* compiled from: BL */
    final class e implements BorderGridLayoutManager.a {
        final /* synthetic */ AttentionDynamicSideActivity b;

        e(AttentionDynamicSideActivity attentionDynamicSideActivity) {
            this.b = attentionDynamicSideActivity;
        }

        @Override // com.bilibili.tv.widget.border.BorderGridLayoutManager.a
        public final void a(View view, View view2, int i, int i2, int i3) {
            agd agdVarM = this.b.m();
            if (agdVarM == null || view == null) {
                return;
            }
            agdVarM.setUpRectDrawable(aj.a(this.b, R.drawable.shadow_white_rect));
            agdVarM.a(view, i2, i3, AttentionDynamicFragment.this.e);
            AttentionDynamicFragment.this.e = false;
        }
    }

    /* compiled from: BL */
    public static final class f extends RecyclerView.g {
        final /* synthetic */ int a;
        final /* synthetic */ int b;

        f(int i, int i2) {
            this.a = i;
            this.b = i2;
        }

        @Override // android.support.v7.widget.RecyclerView.g
        public void a(Rect rect, View view, RecyclerView recyclerView, RecyclerView.s sVar) {
            int i;
            int i2;
            bbi.b(rect, "outRect");
            bbi.b(view, "view");
            bbi.b(recyclerView, "parent");
            int iG = recyclerView.g(view);
            int i3 = iG > AttentionDynamicFragment.j + (-1) ? this.a : 0;
            if (iG % AttentionDynamicFragment.j == 0) {
                i2 = this.b;
                i = 0;
            } else {
                i = this.b;
                i2 = 0;
            }
            rect.set(i, i3, i2, 0);
        }
    }

    /* compiled from: BL */
    public final class g extends RecyclerView.m {
        final /* synthetic */ SideRightGridLayoutManger b;

        g(SideRightGridLayoutManger sideRightGridLayoutManger) {
            this.b = sideRightGridLayoutManger;
        }

        @Override // android.support.v7.widget.RecyclerView.m
        public void a(RecyclerView recyclerView, int i) {
            super.a(recyclerView, i);
            if (AttentionDynamicFragment.this.h || AttentionDynamicFragment.this.c == null || !AttentionDynamicFragment.this.g) {
                return;
            }
            int iP = this.b.p();
            if (this.b.x() <= 0 || iP + 10 < this.b.H() - 1 || this.b.H() <= this.b.x()) {
                return;
            }
            if ("uper".equals(mode) && uperDynamicMode != abd.SPACE_MODE_DYNAMIC) {
                uperPage++;
            }
            AttentionDynamicFragment.this.b();
        }
    }

    @Override // bl.adw
    public boolean c() {
        if (isVisible() && this.c != null) {
            return this.c.a() > 0;
        }
        return false;
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroyView() {
        this.c = (c) null;
        this.d = (b) null;
        super.onDestroyView();
    }

    @Override // bl.ady, bl.aea
    public void d_() {
        super.d_();
        this.f = 1;
        this.cursor = null;
        this.uperPage = 1;
        this.uperDynamicOffset = null;
        this.uperDynamicMode = -1;
        this.offset = "";
        b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b() {
        this.h = true;
        if ("all".equals(mode)) {
            loadAllDynamic();
        } else if ("uper".equals(mode)) {
            if (uperDynamicMode == -1) {
                uperDynamicMode = abd.get_space_dynamic_mode(getActivity());
            }
            mg account = mg.a(getActivity());
            if (account != null && account.a() && uperDynamicMode == abd.SPACE_MODE_DYNAMIC) {
                loadUperDynamicVideos();
            } else {
                loadUperVideos();
            }
        }
    }
    
    /* compiled from: BL */
    final class b extends vn<Object> {
        public b() {
        }

        @Override // bl.vm
        public boolean isCancel() {
            return getActivity() == null || c == null;
        }

        @Override // bl.vm
        public void onError(Throwable th) {
            adl.a.a(th, getActivity());
            if (c == null) {
                return;
            }
            h = false;
            if (f == 1) {
                k();
            }
        }

        @Override // bl.vn
        public void a(Object o) {
        }
    }
    
    private void loadAllDynamic() {
        Activity activity = getActivity();
        if (activity != null) {
            MyBiliApiService api = (MyBiliApiService) vo.a(MyBiliApiService.class);
            mg account = mg.a(activity);
            if (account != null) {
                String cookie = mybl.CookieUtil.getFullCookieWithDevice(account);
                api.getFeedVideos(offset, cookie).a(new vn<JSONObject>() {
                    @Override
                    public void a(JSONObject response) {
                        if (c == null) {
                            return;
                        }
                        j();
                        h = false;
                        if (response != null && response.getJSONArray("items") != null && response.getJSONArray("items").size() > 0) {
                            List<BiliSpaceVideo> videos = new ArrayList<>();
                            JSONArray items = response.getJSONArray("items");
                            for (int i = 0; i < items.size(); i++) {
                                JSONObject item = items.getJSONObject(i);
                                JSONObject modules = item.getJSONObject("modules");
                                if (modules != null) {
                                    BiliSpaceVideo v = BiliSpaceVideo.fromFeedDynamic(modules);
                                    if (v != null) {
                                        videos.add(v);
                                    }
                                }
                            }
                            videos = BiliFilter.filterBiliSpaceVideo(videos, "动态");
                            if (f == 1) {
                                c.a(videos);
                            } else {
                                c.b(videos);
                            }
                            f++;
                            g = response.getBoolean("has_more");
                            offset = response.getString("offset");
                            View view = getView();
                            if (view != null) {
                                view.requestLayout();
                            }
                            return;
                        }
                        g = false;
                        if (f == 1) {
                            l();
                            AttentionDynamicFragment.this.a(R.string.nothing_show);
                        }
                    }
                    
                    @Override
                    public boolean isCancel() {
                        return getActivity() == null || c == null;
                    }
                    
                    @Override
                    public void onError(Throwable th) {
                        adl.a.a(th, getActivity());
                        if (c == null) {
                            return;
                        }
                        h = false;
                        if (f == 1) {
                            k();
                        }
                    }
                });
            }
        }
    }
    
    private void loadUperVideos() {
        Activity activity = getActivity();
        if (activity != null) {
            mg account = mg.a(activity);
            if (account != null) {
                String cookie = mybl.CookieUtil.getFullCookieWithDevice(account);
                MyBiliApiService api = (MyBiliApiService) vo.a(MyBiliApiService.class);
                api.getSpaceArcSearch(mid, uperPage, 40, 0, null, "", true, "web", "333.1387", cookie)
                .a(new vn<JSONObject>() {
                    @Override
                    public void a(JSONObject data) {
                        if (c == null) {
                            return;
                        }
                        j();
                        h = false;
                        try {
                            if (data == null) {
                                g = false;
                                if (uperPage == 1) {
                                    l();
                                    AttentionDynamicFragment.this.a(R.string.nothing_show);
                                }
                                return;
                            }
                            JSONObject pageObj = data.getJSONObject("page");
                            int totalCount = pageObj != null ? pageObj.getIntValue("count") : 0;
                            int pn = pageObj != null ? pageObj.getIntValue("pn") : 1;
                            int ps = pageObj != null ? pageObj.getIntValue("ps") : 40;

                            JSONObject listObj = data.getJSONObject("list");
                            JSONArray vlist = listObj != null ? listObj.getJSONArray("vlist") : null;
                            if (vlist != null && vlist.size() > 0) {
                                List<BiliSpaceVideo> videos = new ArrayList<>();
                                for (int i = 0; i < vlist.size(); i++) {
                                    videos.add(BiliSpaceVideo.fromVlist(vlist.getJSONObject(i)));
                                }
                                List<BiliSpaceVideo> list = BiliFilter.filterBiliSpaceVideo(videos, "个人投稿");
                                if (uperPage == 1) {
                                    c.a(list);
                                    updateHeaderCount(totalCount);
                                } else {
                                    c.b(list);
                                }
                                g = pn * ps < totalCount && list.size() > 0;
                                View view = getView();
                                if (view != null) {
                                    view.requestLayout();
                                }
                                if (g && c.a() < 8) {
                                    uperPage++;
                                    try {
                                        Thread.sleep(1000);
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                    }
                                    AttentionDynamicFragment.this.b();
                                }
                                return;
                            }
                        } catch (Exception e) {
                            android.util.Log.i("AttentionDynamic", "loadUperVideos parse error: " + e.getMessage());
                        }
                        g = false;
                        if (uperPage == 1) {
                            l();
                            AttentionDynamicFragment.this.a(R.string.nothing_show);
                        }
                    }
                    
                    @Override
                    public boolean isCancel() {
                        return getActivity() == null || c == null;
                    }
                    
                    @Override
                    public void onError(Throwable th) {
                        adl.a.a(th, getActivity());
                        if (c == null) {
                            return;
                        }
                        h = false;
                        if (uperPage == 1) {
                            k();
                        }
                    }
                });
            }
        }
    }
    
    private void loadUperDynamicVideos() {
        Activity activity = getActivity();
        if (activity == null)
            return;
        mg account = mg.a(activity);
        if (account == null)
            return;
        String cookie = mybl.CookieUtil.getFullCookieWithDevice(account);
        MyBiliApiService api = (MyBiliApiService) vo.a(MyBiliApiService.class);
        String offset = this.uperDynamicOffset;
        
        api.getSpaceDynamicFeed(mid, offset, -480, "web", cookie)
        .a(new vn<JSONObject>() {
            @Override
            public boolean isCancel() {
                return getActivity() == null || c == null;
            }

            @Override
            public void onError(Throwable th) {
                android.util.Log.i("AttentionDynamic", "loadUperDynamicVideos error: " + th.getMessage());
                adl.a.a(th, getActivity());
                h = false;
                if (uperDynamicOffset == null)
                    k();
            }

            @Override
            public void a(JSONObject resp) {
                if (c == null)
                    return;
                j();
                h = false;
                try {
                    if (resp == null) {
                        g = false;
                        if (uperDynamicOffset == null) {
                            k();
                            AttentionDynamicFragment.this.a(R.string.nothing_show);
                        }
                        return;
                    }
                    
                    boolean hasMoreFlag = resp.getBooleanValue("has_more");
                    String nextOffset = resp.getString("offset");
                    JSONArray items = resp.getJSONArray("items");
                    
                    if (items != null && items.size() > 0) {
                        List<BiliSpaceVideo> videos = new ArrayList<>();
                        for (int i = 0; i < items.size(); i++) {
                            JSONObject item = items.getJSONObject(i);
                            String type = item.getString("type");
                            if (!"DYNAMIC_TYPE_AV".equals(type)) {
                                continue;
                            }
                            JSONObject modules = item.getJSONObject("modules");
                            if (modules == null)
                                continue;
                            BiliSpaceVideo v = BiliSpaceVideo.fromFeedDynamic(modules);
                            if (v != null) {
                                videos.add(v);
                            }
                        }
                        
                        if (videos.size() > 0) {
                            if (uperDynamicOffset == null) {
                                c.a(videos);
                            } else {
                                c.b(videos);
                            }
                            uperDynamicOffset = nextOffset;
                            g = hasMoreFlag;
                            View view = getView();
                            if (view != null)
                                view.requestLayout();
                            return;
                        }
                    }
                    
                    g = false;
                    if (uperDynamicOffset == null) {
                        k();
                        AttentionDynamicFragment.this.a(R.string.nothing_show);
                    }
                } catch (Exception e) {
                    android.util.Log.i("AttentionDynamic", "loadUperDynamicVideos parse error: " + e.getMessage());
                    g = false;
                    if (uperDynamicOffset == null) {
                        k();
                        AttentionDynamicFragment.this.a(R.string.nothing_show);
                    }
                }
            }
        });
    }

    /* compiled from: BL */
    static final class c extends RecyclerView.a<adv> implements View.OnClickListener, View.OnFocusChangeListener {
        private List<BiliSpaceVideo> a = new ArrayList();
        private String uperName;

        public c(String uperName) {
            this.uperName = uperName;
        }

        @Override // android.support.v7.widget.RecyclerView.a
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public adv a(ViewGroup viewGroup, int i) {
            bbi.b(viewGroup, "parent");
            return ((d)null).Companion.a(viewGroup);
        }

        @Override // android.support.v7.widget.RecyclerView.a
        public void a(adv advVar, int i) {
            bbi.b(advVar, "viewHolder");
            if (advVar instanceof d) {
                d dVar = (d) advVar;
                BiliSpaceVideo video = this.a.get(i);
                dVar.A().setText(video.title);
                if (video.authorName != null && !video.authorName.isEmpty()) {
                    dVar.B().setText(video.authorName);
                    dVar.B().setVisibility(View.VISIBLE);
                } else {
                    dVar.B().setVisibility(View.GONE);
                }
                if (video.playStr != null && !video.playStr.isEmpty()) {
                    dVar.C().setText(video.playStr);
                } else {
                    dVar.C().setText("0");
                }
                if (video.danmakuStr != null && !video.danmakuStr.isEmpty()) {
                    dVar.F().setText(video.danmakuStr);
                    dVar.F().setVisibility(View.VISIBLE);
                } else {
                    dVar.F().setVisibility(View.GONE);
                }
                if (video.pubTimeStr != null && !video.pubTimeStr.isEmpty()) {
                    dVar.D().setText(video.pubTimeStr);
                    dVar.D().setVisibility(View.VISIBLE);
                } else {
                    dVar.D().setVisibility(View.GONE);
                }
                if (video.durationStr != null && !video.durationStr.isEmpty()) {
                    dVar.E().setText(video.durationStr);
                }
                if (video.cover != null) {
                    nv.a().a(abd.get_thumb_url_c(MainApplication.a(), video.cover), dVar.z());
                }
                if (video.badgeText != null && !video.badgeText.isEmpty()) {
                    dVar.G().setText(video.badgeText);
                    dVar.G().setVisibility(View.VISIBLE);
                    if (video.badgeBgColor != null && !video.badgeBgColor.isEmpty()) {
                        try {
                            dVar.G().setBackgroundColor(android.graphics.Color.parseColor(video.badgeBgColor));
                        } catch (Exception e) {}
                    }
                } else {
                    dVar.G().setVisibility(View.GONE);
                }
                View view = advVar.a;
                bbi.a((Object) view, "viewHolder.itemView");
                view.setTag(video);
                view.setOnClickListener(this);
                view.setOnFocusChangeListener(this);
            }
        }

        @Override // bl.adz, android.support.v7.widget.RecyclerView.a
        public int a() {
            return this.a.size();
        }

        public final void a(List<BiliSpaceVideo> list) {
            bbi.b(list, "list");
            this.a.clear();
            this.a.addAll(list);
            d(0);
        }

        public final void b(List<BiliSpaceVideo> list) {
            bbi.b(list, "list");
            int size = this.a.size();
            this.a.addAll(list);
            d(size);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            bbi.b(view, "v");
            Object tag = view.getTag();
            Context context = view.getContext();
            bbi.a((Object) context, "v.context");
            Activity a2 = adl.a(context);
            if (a2 == null) {
                return;
            }
            if (tag instanceof BiliSpaceVideo) {
                BiliSpaceVideo video = (BiliSpaceVideo) tag;
                long aid = video.aid > 0 ? video.aid : Long.parseLong(video.param);
                a2.startActivity(VideoDetailActivity.Companion.a(a2, aid, video.cover));
            }
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean hasFocus) {
            if (view instanceof DrawRelativeLayout) {
                ((DrawRelativeLayout) view).setUpEnabled(hasFocus);
            }
        }
    }

    /* compiled from: BL */
    public static final class d extends adv {
        public static final a Companion = new a(null);
        private ScalableImageView n;
        private TextView o;
        private TextView p;
        private TextView q;
        private TextView r;
        private TextView duration;
        private TextView danmakuInImage;
        private TextView badge;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(View view) {
            super(view);
            bbi.b(view, "itemView");
            this.n = (ScalableImageView) a(view, R.id.img);
            this.o = (TextView) a(view, R.id.title);
            this.p = (TextView) a(view, R.id.up);
            this.q = (TextView) a(view, R.id.play);
            this.r = (TextView) a(view, R.id.pubdate);
            this.duration = (TextView) a(view, R.id.duration);
            this.danmakuInImage = (TextView) a(view, R.id.danmaku);
            this.badge = (TextView) a(view, R.id.badge);
            android.graphics.drawable.Drawable c = bl.adl.a.c(R.drawable.ic_video_info_up);
            android.graphics.drawable.Drawable c2 = bl.adl.a.c(R.drawable.ic_video_info_play);
            android.graphics.drawable.Drawable c3 = bl.adl.a.c(R.drawable.ic_video_info_danmaku);
            int b = bl.adl.b(R.dimen.px_26);
            c.setBounds(0, 0, b, b);
            c2.setBounds(0, 0, b, b);
            c3.setBounds(0, 0, b, b);
            int danmakuColor = bl.adl.d(R.color.white);
            c.setColorFilter(danmakuColor, android.graphics.PorterDuff.Mode.MULTIPLY);
            c2.setColorFilter(danmakuColor, android.graphics.PorterDuff.Mode.MULTIPLY);
            c3.setColorFilter(danmakuColor, android.graphics.PorterDuff.Mode.MULTIPLY);
            this.p.setCompoundDrawables(c, null, null, null);
            this.q.setCompoundDrawables(c2, null, null, null);
            this.danmakuInImage.setCompoundDrawables(c3, null, null, null);
        }

        public final ScalableImageView z() {
            return this.n;
        }

        public final TextView A() {
            return this.o;
        }

        public final TextView B() {
            return this.p;
        }

        public final TextView C() {
            return this.q;
        }

        public final TextView D() {
            return this.r;
        }

        public final TextView E() {
            return this.duration;
        }

        public final TextView F() {
            return this.danmakuInImage;
        }

        public final TextView G() {
            return this.badge;
        }

        /* compiled from: BL */
        /* loaded from: classes.dex */
        public static final class a {
            private a() {
            }

            public /* synthetic */ a(bbg bbgVar) {
                this();
            }

            public final d a(ViewGroup viewGroup) {
                bbi.b(viewGroup, "parent");
                View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.recycler_view_item_video_info, viewGroup, false);
                bbi.a((Object) inflate, "view");
                return new d(inflate);
            }
        }
    }
}