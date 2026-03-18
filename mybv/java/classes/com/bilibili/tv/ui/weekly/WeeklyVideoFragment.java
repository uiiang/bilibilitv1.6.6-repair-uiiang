package com.bilibili.tv.ui.weekly;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.text.format.DateUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.LinearLayout;

import tv.danmaku.ijk.media.player.IjkMediaCodecInfo;
import bl.adl;
import bl.abd;
import bl.ady;
import bl.aj;
import bl.agd;
import bl.bbi;
import bl.bbg;
import bl.adv;
import bl.vn;
import bl.vo;
import bl.nv;
import bl.ach;
import com.bilibili.tv.MainApplication;
import com.bilibili.tv.R;
import com.bilibili.tv.api.video.BiliVideoDetail;
import com.bilibili.tv.ui.video.VideoDetailActivity;
import com.bilibili.tv.widget.DrawRelativeLayout;
import com.bilibili.tv.widget.ScalableImageView;
import com.bilibili.tv.widget.border.BorderGridLayoutManager;
import com.bilibili.tv.widget.side.SideRightGridLayoutManger;
import mybl.MyBiliApiService;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.JSONArray;
import java.util.ArrayList;
import java.util.List;
import kotlin.TypeCastException;

public final class WeeklyVideoFragment extends ady {
    private static final int j = 2;
    private c c;
    private boolean e;
    private boolean g = true;
    private boolean h;
    
    private LinearLayout headerLayout;
    private TextView headerTitle;
    private TextView headerCount;
    
    private int number;
    private String name;
    private String subject;

    public static WeeklyVideoFragment newInstance(int number, String name, String subject) {
        WeeklyVideoFragment fragment = new WeeklyVideoFragment();
        fragment.number = number;
        fragment.name = name;
        fragment.subject = subject;
        return fragment;
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View rootView = inflater.inflate(R.layout.fragment_weekly_video, container, false);
        this.headerLayout = (LinearLayout) rootView.findViewById(R.id.space_header_layout);
        this.headerTitle = (TextView) rootView.findViewById(R.id.header_title);
        this.headerCount = (TextView) rootView.findViewById(R.id.header_count);
        RecyclerView recyclerView = (RecyclerView) rootView.findViewById(R.id.recycler_view);
        a(recyclerView, savedInstanceState);
        return rootView;
    }
    
    public void updateHeaderInfo(String title, int videoCount) {
        if (headerTitle != null && title != null) {
            headerTitle.setText(title);
        }
        if (headerCount != null && videoCount > 0) {
            headerCount.setText(videoCount + "个视频");
        }
    }

    @Override
    public void a(RecyclerView recyclerView, Bundle bundle) {
        bbi.b(recyclerView, "recyclerView");
        super.a(recyclerView, bundle);
        SideRightGridLayoutManger sideRightGridLayoutManger = new SideRightGridLayoutManger(getActivity(), j);
        FragmentActivity activity = getActivity();
        if (activity == null) {
            throw new TypeCastException("null cannot be cast to non-null type com.bilibili.tv.ui.weekly.WeeklyActivity");
        }
        sideRightGridLayoutManger.a(new e((WeeklyActivity) activity));
        recyclerView.setHasFixedSize(true);
        recyclerView.setLayoutManager(sideRightGridLayoutManger);
        int iB = adl.b(R.dimen.px_4);
        int iB2 = adl.b(R.dimen.px_10);
        int iB3 = adl.b(R.dimen.px_30);
        recyclerView.setPadding(iB3, iB3, iB3, iB3);
        recyclerView.a(new f(iB2, iB));
        recyclerView.a(new g(sideRightGridLayoutManger));
        this.c = new c();
        recyclerView.setAdapter(this.c);
        i();
        b();
    }

    final class e implements BorderGridLayoutManager.a {
        final WeeklyActivity b;

        e(WeeklyActivity weeklyActivity) {
            this.b = weeklyActivity;
        }

        @Override
        public final void a(View view, View view2, int i, int i2, int i3) {
            agd agdVarM = this.b.m();
            if (agdVarM == null || view == null) {
                return;
            }
            agdVarM.setUpRectDrawable(aj.a(this.b, R.drawable.shadow_white_rect));
            agdVarM.a(view, i2, i3, WeeklyVideoFragment.this.e);
            WeeklyVideoFragment.this.e = false;
        }
    }

    public static final class f extends RecyclerView.g {
        final int a;
        final int b;

        f(int i, int i2) {
            this.a = i;
            this.b = i2;
        }

        @Override
        public void a(Rect rect, View view, RecyclerView recyclerView, RecyclerView.s sVar) {
            int i;
            int i2;
            bbi.b(rect, "outRect");
            bbi.b(view, "view");
            bbi.b(recyclerView, "parent");
            int iG = recyclerView.g(view);
            int i3 = iG > WeeklyVideoFragment.j + (-1) ? this.a : 0;
            if (iG % WeeklyVideoFragment.j == 0) {
                i2 = this.b;
                i = 0;
            } else {
                i = this.b;
                i2 = 0;
            }
            rect.set(i, i3, i2, 0);
        }
    }

    public final class g extends RecyclerView.m {
        final SideRightGridLayoutManger b;

        g(SideRightGridLayoutManger sideRightGridLayoutManger) {
            this.b = sideRightGridLayoutManger;
        }

        @Override
        public void a(RecyclerView recyclerView, int i) {
            super.a(recyclerView, i);
            if (WeeklyVideoFragment.this.h || !WeeklyVideoFragment.this.g || WeeklyVideoFragment.this.c == null) {
                return;
            }
            WeeklyVideoFragment.this.g = false;
        }
    }

    @Override
    public boolean c() {
        if (isVisible() && this.c != null) {
            c cVar = this.c;
            if (cVar == null) {
                bbi.a();
            }
            if (cVar.a() > 0) {
                return true;
            }
        }
        return false;
    }

    @Override
    public void onDestroyView() {
        this.c = (c) null;
        super.onDestroyView();
    }

    @Override
    public void d_() {
        super.d_();
        b();
    }

    private final void b() {
        this.h = true;
        loadWeeklyVideos();
    }

    private void loadWeeklyVideos() {
        Activity activity = getActivity();
        if (activity != null) {
            MyBiliApiService api = (MyBiliApiService) vo.a(MyBiliApiService.class);
            if (api != null) {
                api.getWeeklyPrecious(number)
                        .a(new vn<JSONObject>() {
                            @Override
                            public void a(JSONObject data) {
                                if (c == null) {
                                    return;
                                }
                                j();
                                h = false;
                                if (data != null) {
                                    JSONArray list = data.getJSONArray("list");
                                    JSONObject config = data.getJSONObject("config");
                                    
                                    if (list != null && !list.isEmpty()) {
                                        c.a(list);
                                        
                                        String title = name;
                                        if (config != null && !TextUtils.isEmpty(config.getString("subject"))) {
                                            title = config.getString("subject");
                                        }
                                        updateHeaderInfo(title, list.size());
                                        return;
                                    }
                                }
                                g = false;
                                l();
                                WeeklyVideoFragment.this.a(R.string.nothing_show);
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
                                k();
                            }
                        });
            }
        }
    }

    public boolean isLoading() {
        return this.h;
    }

    public final class c extends RecyclerView.a<adv> implements View.OnClickListener {
        private JSONArray b = new JSONArray();

        @Override
        public int a() {
            return this.b.size();
        }

        public final void a(JSONArray list) {
            bbi.b(list, "list");
            this.b.clear();
            this.b.addAll(list);
            d();
        }

        @Override
        public adv a(ViewGroup viewGroup, int i) {
            bbi.b(viewGroup, "parent");
            return d.Companion.a(viewGroup);
        }

        @Override
        public void a(adv advVar, int i) {
            bbi.b(advVar, "viewHolder");
            if (advVar instanceof d) {
                JSONObject item = this.b.getJSONObject(i);
                if (item.containsKey("pic")) {
                    nv.a().a(abd.get_thumb_url_c(MainApplication.a(), item.getString("pic")), ((d) advVar).z());
                }
                if (item.containsKey("title")) {
                    ((d) advVar).A().setText(item.getString("title"));
                }
                JSONObject owner = item.getJSONObject("owner");
                String upName = null;
                if (owner != null && owner.containsKey("name")) {
                    upName = owner.getString("name");
                }
                if (upName != null) {
                    ((d) advVar).B().setText(upName);
                }
                JSONObject stat = item.getJSONObject("stat");
                if (stat != null) {
                    ((d) advVar).C().setText(bl.adh.a(stat.getLongValue("view")));
                    int danmaku = stat.getIntValue("danmaku");
                    if (danmaku > 0) {
                        ((d) advVar).danmakuInImage.setText(bl.adh.a(danmaku));
                        ((d) advVar).danmakuInImage.setVisibility(View.VISIBLE);
                    } else {
                        ((d) advVar).danmakuInImage.setVisibility(View.GONE);
                    }
                }
                long pubdate = item.getLongValue("pubdate");
                if (pubdate > 0) {
                    ((d) advVar).D().setText(DateUtils.getRelativeTimeSpanString(
                            pubdate * ((long) IjkMediaCodecInfo.RANK_MAX),
                            System.currentTimeMillis(), 1000L));
                    ((d) advVar).D().setVisibility(View.VISIBLE);
                } else {
                    ((d) advVar).D().setVisibility(View.GONE);
                }
                int durationVal = item.getIntValue("duration");
                if (durationVal >= 3600) {
                    ((d) advVar).E().setText(String.format("%d:%02d:%02d", durationVal / 3600, (durationVal % 3600) / 60, durationVal % 60));
                } else {
                    ((d) advVar).E().setText(String.format("%02d:%02d", durationVal / 60, durationVal % 60));
                }
                View view = advVar.a;
                bbi.a((Object) view, "viewHolder.itemView");
                view.setTag(item);
                advVar.a.setTag(R.id.position, Integer.valueOf(i));
                advVar.a.setOnClickListener(this);
            }
        }

        @Override
        public void onClick(View view) {
            bbi.b(view, "v");
            Context context = view.getContext();
            bbi.a((Object) context, "v.context");
            Activity activityA = adl.a(context);
            if (activityA != null) {
                Object tag = view.getTag();
                if (tag instanceof JSONObject) {
                    JSONObject item = (JSONObject) tag;
                    long id = item.getLongValue("aid");
                    activityA.startActivity(VideoDetailActivity.Companion.a((Context) activityA, id));
                }
            }
        }
    }

    public static final class d extends adv implements View.OnFocusChangeListener {
        public static final a Companion = new a(null);
        private ScalableImageView n;
        private TextView o;
        private TextView p;
        private TextView q;
        private TextView r;
        private TextView duration;
        private TextView danmakuInImage;
        private DrawRelativeLayout s;

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
            this.s = (DrawRelativeLayout) a(view, R.id.draw);
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
            view.setOnFocusChangeListener(this);
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

        public final DrawRelativeLayout F() {
            return this.s;
        }

        @Override
        public void onFocusChange(View view, boolean z) {
            DrawRelativeLayout drawRelativeLayout = this.s;
            if (drawRelativeLayout != null) {
                drawRelativeLayout.setUpEnabled(z);
            }
        }

        public static final class a {
            private a() {
            }

            public /* synthetic */ a(bbg bbgVar) {
                this();
            }

            public final d a(ViewGroup viewGroup) {
                bbi.b(viewGroup, "parent");
                View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.recycler_view_item_video_info, viewGroup, false);
                bbi.a(inflate, "view");
                return new d(inflate);
            }
        }
    }
}
