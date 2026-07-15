package com.bilibili.tv.ui.main.content;

import android.app.Activity;
import android.content.ContentUris;
import android.content.Context;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.bilibili.tv.MainApplication;
import com.bilibili.tv.R;
import com.bilibili.tv.api.main.MainRecommendEx;
import com.bilibili.tv.ui.main.MainActivity;
import com.bilibili.tv.ui.video.VideoDetailActivity;
import com.bilibili.tv.util.DateHelper;
import com.bilibili.tv.widget.DrawLinearLayout;
import com.bilibili.tv.widget.DrawRelativeLayout;
import com.bilibili.tv.widget.ScalableImageView;
import com.bilibili.tv.widget.border.BorderGridLayoutManager;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import kotlin.TypeCastException;
import tv.danmaku.android.log.BLog;

import bl.*;
import com.alibaba.fastjson.JSONObject;

public abstract class BaseVideoListFragment extends adu implements aez, wf {
    
    protected VideoListAdapter adapter;
    protected BorderGridLayoutManager layoutManager;
    protected int currentPosition = 0;
    protected boolean isLoadingMore = false;
    protected boolean hasMoreData = true;
    
    protected List<MainRecommendEx.Content> ugcList = new ArrayList<>();
    protected List<MainRecommendEx.Content> ogvList = new ArrayList<>();
    
    @Override
    public String a() {
        return "ott-platform.home.0.0.pv";
    }
    
    @Override
    public boolean a_() {
        return wg.a(this);
    }
    
    @Override
    public Bundle b() {
        return null;
    }
    
    protected abstract String getPageViewEvent();
    protected abstract String getClickEventName();
    protected abstract String getLogTag();
    protected abstract void fetchData(boolean isLoadMore);
    protected abstract int getColumnCount();
    
    protected boolean hideBottomInfo() {
        return false;
    }
    
    protected void onBigCardClick(View view, String uri, int position) {}
    
    protected void onSmallCardClick(View view, String uri, int position) {
        if (uri.startsWith("bilibili_yst://video") || uri.startsWith("bilibili://video")) {
            long avid = ContentUris.parseId(Uri.parse(uri));
            Activity activity = adl.a(view.getContext());
            if (activity != null) {
                activity.startActivity(VideoDetailActivity.Companion.a(activity, avid, getCoverUrl(position)));
            }
        }
    }
    
    protected String getCoverUrl(int position) {
        if (position >= 0 && position < ugcList.size()) {
            MainRecommendEx.Content content = ugcList.get(position);
            return content != null ? content.getCover() : null;
        }
        return null;
    }
    
    @Override
    public void a(RecyclerView recyclerView, Bundle bundle) {
        // android.util.Log.i("BaseVideoListFragment", "========== a(RecyclerView) START ==========");
        // android.util.Log.i("BaseVideoListFragment", "Fragment: " + this.getClass().getSimpleName());
        // android.util.Log.i("BaseVideoListFragment", "RecyclerView: " + (recyclerView != null ? recyclerView.getClass().getSimpleName() : "null"));
        // if (recyclerView != null) {
        //     android.util.Log.i("BaseVideoListFragment", "RecyclerView focusable: " + recyclerView.isFocusable());
        //     android.util.Log.i("BaseVideoListFragment", "RecyclerView clickable: " + recyclerView.isClickable());
        //     android.util.Log.i("BaseVideoListFragment", "RecyclerView focusableInTouchMode: " + recyclerView.isFocusableInTouchMode());

        //     View parent = (View) recyclerView.getParent();
        //     if (parent != null) {
        //         android.util.Log.i("BaseVideoListFragment", "Parent: " + parent.getClass().getSimpleName());
        //         android.util.Log.i("BaseVideoListFragment", "Parent focusable: " + parent.isFocusable());
        //         android.util.Log.i("BaseVideoListFragment", "Parent clickable: " + parent.isClickable());
        //     }
        // }

        bbi.b(recyclerView, "recyclerView");
        super.a(recyclerView, bundle);
        ok.a(getPageViewEvent(), new String[0]);

        int spacing = adl.b(R.dimen.px_6);
        int padding = adl.b(R.dimen.px_50);
        int paddingBottom = adl.b(R.dimen.px_306);
        recyclerView.setPadding(padding, spacing, padding, paddingBottom);
        
        final int columnCount = getColumnCount();
        this.layoutManager = new BorderGridLayoutManager(getActivity(), columnCount, 1, false) {
            @Override
            public View d(View view, int direction) {
                if (view == null) {
                    bbi.a();
                }
                
                if (BaseVideoListFragment.this.isLoadingMore) {
                    return view;
                }
                
                int position = d(view);
                int row = position / columnCount;
                
                if (direction == 33 && row == 0) {
                    FragmentActivity activity = BaseVideoListFragment.this.getActivity();
                    if (activity == null) {
                        return null;  // Activity不存在，返回null
                    }
                    
                    // 兼容不同类型的Activity
                    if (activity instanceof MainActivity) {
                        MainActivity mainActivity = (MainActivity) activity;
                        mainActivity.a(false);
                        mainActivity.b(false);
                        return mainActivity.j();
                    } else {
                        // 非MainActivity，返回null（焦点保持原地）
                        return null;
                    }
                }
                
                return super.d(view, direction);
            }
        };
        
        this.adapter = new VideoListAdapter(this);
        recyclerView.setLayoutManager(this.layoutManager);
        this.layoutManager.a(new SpanSizeLookupImpl());
        recyclerView.a(new ItemDecorationImpl(spacing, columnCount));
        recyclerView.setFocusable(false);
        recyclerView.setAdapter(this.adapter);
        
        if (this.ugcList.isEmpty()) {
            fetchData(false);
        }

        recyclerView.a(new ScrollListener());

        // 添加最终验证日志
        // android.util.Log.i("BaseVideoListFragment", "========== a(RecyclerView) END ==========");
        // android.util.Log.i("BaseVideoListFragment", "LayoutManager created: " + (this.layoutManager != null));
        // android.util.Log.i("BaseVideoListFragment", "Adapter created: " + (this.adapter != null));
        // if (this.layoutManager != null) {
        //     android.util.Log.i("BaseVideoListFragment", "LayoutManager column count: " + this.layoutManager.c());
        // }
        // if (this.adapter != null) {
        //     android.util.Log.i("BaseVideoListFragment", "Adapter item count: " + this.adapter.a());
        // }
    }
    
    @Override
    public void onDestroyView() {
        super.onDestroyView();
        this.adapter = null;
    }
    
    @Override
    public void setUserVisibleHint(boolean visible) {
        super.setUserVisibleHint(visible);
        if (!visible || getActivity() == null) {
            return;
        }
        FragmentActivity activity = getActivity();
        if (activity == null) {
            return;
        }
        MainActivity mainActivity = (MainActivity) activity;
        RecyclerView recyclerView = d();
        if (recyclerView != null) {
            recyclerView.a(this.currentPosition);
        }
        RecyclerView recyclerView2 = d();
        if (recyclerView2 == null) {
            bbi.a();
        }
        View focusedView = recyclerView2.getLayoutManager().c(this.currentPosition);
        if (focusedView == null || !mainActivity.h()) {
            return;
        }
        focusedView.requestFocus();
    }
    
    public boolean isLoading() {
        return this.isLoadingMore;
    }
    
    @Override
    public View e_() {
        if (this.adapter != null) {
            if (this.adapter.a() == 0) {
                return null;
            }
            if (this.layoutManager == null) {
                bbi.a();
                return null;
            }
            View view = this.layoutManager.c(this.currentPosition);
            if (view != null && !view.isFocusable()) {
                this.currentPosition = 1;
                view = this.layoutManager.c(this.currentPosition);
            }
            return view;
        }
        return null;
    }
    
    @Override
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        wh.a().a(this, !hidden);
    }
    
    protected static final class SpanSizeLookupImpl extends GridLayoutManager.c {
        @Override
        public int a(int position) {
            return 1;
        }
    }
    
    protected static final class ItemDecorationImpl extends RecyclerView.g {
        final int space;
        final int columnCount;
        
        ItemDecorationImpl(int space, int columnCount) {
            this.space = space;
            this.columnCount = columnCount;
        }
        
        @Override
        public void a(Rect outRect, View view, RecyclerView parent, RecyclerView.s state) {
            bbi.b(outRect, "outRect");
            bbi.b(view, "view");
            bbi.b(parent, "parent");
            
            int itemSpace = this.space;
            if (this.columnCount == 3 || this.columnCount == 4) {
                itemSpace = this.space * 2;
            }
            
            outRect.left = itemSpace;
            outRect.right = itemSpace;
            outRect.top = itemSpace;
            outRect.bottom = itemSpace;
        }
    }
    
    protected class ScrollListener extends RecyclerView.m {
        @Override
        public void a(RecyclerView recyclerView, int newState) {
            super.a(recyclerView, newState);
            if (BaseVideoListFragment.this.isLoadingMore || !BaseVideoListFragment.this.hasMoreData || BaseVideoListFragment.this.adapter == null) {
                return;
            }
            BorderGridLayoutManager lm = BaseVideoListFragment.this.layoutManager;
            if (lm == null) {
                return;
            }
            int lastVisible = lm.p();
            if (lm.x() > 0) {
                int threshold = lastVisible + 20;
                if (threshold >= lm.H() - 1) {
                    int totalCount = lm.H();
                    if (totalCount > lm.x()) {
                        BaseVideoListFragment.this.fetchData(true);
                    }
                }
            }
        }
    }
    
    protected class VideoListAdapter extends RecyclerView.a<adv> {
        private final WeakReference<BaseVideoListFragment> fragmentRef;
        private final int thumbWidth;
        private final int thumbHeight;
        private int columnCount = 2;
        
        public VideoListAdapter(BaseVideoListFragment fragment) {
            this.fragmentRef = new WeakReference<>(fragment);
            this.thumbWidth = adl.b(R.dimen.px_512);
            this.thumbHeight = adl.b(R.dimen.px_335);
            this.columnCount = abd.get_home_column(fragment.getActivity());
        }
        
        @Override
        public int a() {
            return BaseVideoListFragment.this.ugcList != null ? BaseVideoListFragment.this.ugcList.size() : 0;
        }
        
        @Override
        public adv a(ViewGroup parent, int viewType) {
            bbi.b(parent, "parent");
            if (viewType == 1) {
                return BigCardViewHolder.Companion.a(parent, this.fragmentRef);
            }
            if (this.columnCount == 3 || this.columnCount == 4) {
                View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.recycler_view_item_main_recommend_compact, parent, false);
                bbi.a((Object) view, "view");
                return new SmallCardViewHolder(view, this.fragmentRef);
            }
            return SmallCardViewHolder.Companion.a(parent, this.fragmentRef);
        }
        
        @Override
        public void a(adv holder, int position) {
            if (holder instanceof SmallCardViewHolder) {
                holder.a.setTag(R.id.position, Integer.valueOf(position));
                if (BaseVideoListFragment.this.ugcList.size() < position + 1) {
                    ((SmallCardViewHolder) holder).getUpView().setVisibility(View.INVISIBLE);
                    return;
                }
                SmallCardViewHolder vh = (SmallCardViewHolder) holder;
                vh.getUpView().setVisibility(View.VISIBLE);
                MainRecommendEx.Content content = BaseVideoListFragment.this.ugcList.get(position);
                if (content == null) {
                    holder.a.setFocusable(false);
                    holder.a.setVisibility(View.GONE);
                    ViewGroup.LayoutParams params = holder.a.getLayoutParams();
                    if (params != null) {
                        params.width = 0;
                    }
                    return;
                }
                holder.a.setFocusable(true);
                holder.a.setVisibility(View.VISIBLE);
                
                if (this.columnCount == 3 || this.columnCount == 4) {
                    int screenWidth = holder.a.getResources().getDisplayMetrics().widthPixels;
                    int horizontalPadding = adl.b(R.dimen.px_50) * 2 + adl.b(R.dimen.px_20) + adl.b(R.dimen.px_10);
                    int itemWidth = (screenWidth - horizontalPadding) / this.columnCount;
                    int imageHeight = (int) (itemWidth * 0.56f);
                    ViewGroup.LayoutParams imgParams = vh.getCoverView().getLayoutParams();
                    if (imgParams != null) {
                        imgParams.height = imageHeight;
                    }
                    ViewGroup.LayoutParams itemParams = holder.a.getLayoutParams();
                    if (itemParams == null) {
                        itemParams = new ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
                    }
                    holder.a.setLayoutParams(itemParams);
                }
                
                if (!TextUtils.isEmpty(content.getTitle())) {
                    vh.getTitleView().setText(content.getTitle());
                }
                
                String badge = content.getBadge();
                if (!TextUtils.isEmpty(badge) && vh.getBadgeView() != null) {
                    vh.getBadgeView().setText(badge);
                    vh.getBadgeView().setVisibility(View.VISIBLE);
                } else if (vh.getBadgeView() != null) {
                    vh.getBadgeView().setVisibility(View.GONE);
                }
                
                if (!TextUtils.isEmpty(content.getCover())) {
                    nv.a().a(abd.get_thumb_url_with_size(MainApplication.a().getApplicationContext(), content.getCover(), this.thumbWidth, this.thumbHeight), vh.getCoverView());
                }
                if (!TextUtils.isEmpty(content.getUri())) {
                    holder.a.setTag(content.getUri());
                }
                if (!TextUtils.isEmpty(content.getOwnerName())) {
                    vh.getUpView().setText(content.getOwnerName());
                    vh.getUpView().setVisibility(View.VISIBLE);
                } else {
                    vh.getUpView().setVisibility(View.GONE);
                }
                
                BaseVideoListFragment fragment = this.fragmentRef.get();
                boolean hideBottom = fragment != null && fragment.hideBottomInfo();
                
                if (hideBottom) {
                    if (vh.getBottomInfoLayout() != null) {
                        vh.getBottomInfoLayout().setVisibility(View.GONE);
                    }
                } else {
                    if (vh.getBottomInfoLayout() != null) {
                        vh.getBottomInfoLayout().setVisibility(View.VISIBLE);
                    }
                    vh.getPlayView().setVisibility(View.VISIBLE);
                    vh.getPlayView().setText(adh.a(content.getPlay()));
                    int danmaku = content.getDanmaku();
                    if (danmaku > 0) {
                        vh.getDanmakuView().setText(adh.a(danmaku));
                        vh.getDanmakuView().setVisibility(View.VISIBLE);
                    } else {
                        vh.getDanmakuView().setVisibility(View.GONE);
                    }
                    int duration = content.getDuration();
                    if (duration >= 3600) {
                        vh.getDurationView().setText(String.format("%d:%02d:%02d", duration / 3600, (duration % 3600) / 60, duration % 60));
                    } else {
                        vh.getDurationView().setText(String.format("%02d:%02d", duration / 60, duration % 60));
                    }
                    vh.getDurationView().setVisibility(View.VISIBLE);
                }
                long pubdate = content.getPubdate();
                if (vh.getPubdateView() != null) {
                    if (pubdate < 0) {
                        long online = -pubdate - 1;
                        vh.getPubdateView().setText("在线" + adh.a((int) online));
                        vh.getPubdateView().setVisibility(View.VISIBLE);
                    } else if (pubdate > 0) {
                        vh.getPubdateView().setText(DateHelper.formatDate(pubdate));
                        vh.getPubdateView().setVisibility(View.VISIBLE);
                    } else {
                        vh.getPubdateView().setVisibility(View.GONE);
                    }
                }
                holder.a.setTag(R.id.report_position, Integer.valueOf(position + 1));
            }
        }
        
        @Override
        public int a(int position) {
            return 2;
        }
        
        public void setData(List<MainRecommendEx.Content> ogv, List<MainRecommendEx.Content> ugc) {
            bbi.b(ogv, "ogvList");
            bbi.b(ugc, "ugcList");
            
            ArrayList<MainRecommendEx.Content> allList = new ArrayList<>();
            for (MainRecommendEx.Content content : ogv) {
                if (content != null) {
                    allList.add(content);
                }
            }
            for (MainRecommendEx.Content content : ugc) {
                if (content != null) {
                    allList.add(content);
                }
            }
            
            BaseVideoListFragment.this.ugcList = allList;
            BaseVideoListFragment.this.ogvList = ogv;
            
            BaseVideoListFragment fragment = this.fragmentRef.get();
            if (fragment != null) {
                fragment.currentPosition = 0;
                RecyclerView recyclerView = fragment.d();
                if (recyclerView != null) {
                    recyclerView.a(0);
                }
            }
            
            d();
        }
        
        public void appendData(List<MainRecommendEx.Content> ugc) {
            bbi.b(ugc, "ugcList");
            
            ArrayList<MainRecommendEx.Content> newItems = new ArrayList<>();
            for (MainRecommendEx.Content content : ugc) {
                if (content != null) {
                    newItems.add(content);
                }
            }
            
            int oldSize = BaseVideoListFragment.this.ugcList.size();
            BaseVideoListFragment.this.ugcList.addAll(newItems);
            
            d(oldSize);
        }
    }
    
    protected static class SmallCardViewHolder extends adv implements View.OnClickListener, View.OnFocusChangeListener {
        public static final Companion Companion = new Companion();
        private final TextView titleView;
        private final ScalableImageView coverView;
        private final TextView upView;
        private final TextView playView;
        private final TextView danmakuView;
        private final TextView durationView;
        private final TextView pubdateView;
        private final TextView badgeView;
        private final View bottomInfoLayout;
        private final View itemView;
        private final WeakReference<BaseVideoListFragment> fragmentRef;
        
        public SmallCardViewHolder(View view, WeakReference<BaseVideoListFragment> ref) {
            super(view);
            this.fragmentRef = ref;
            this.itemView = view;
            this.titleView = (TextView) view.findViewById(R.id.title);
            this.coverView = (ScalableImageView) view.findViewById(R.id.img);
            this.upView = (TextView) view.findViewById(R.id.up);
            this.playView = (TextView) view.findViewById(R.id.play);
            this.danmakuView = (TextView) view.findViewById(R.id.danmaku);
            this.durationView = (TextView) view.findViewById(R.id.duration);
            this.pubdateView = (TextView) view.findViewById(R.id.pubdate);
            this.badgeView = (TextView) view.findViewById(R.id.tag_text);
            this.bottomInfoLayout = view.findViewById(R.id.bottom_info_layout);

            android.util.Log.i("BaseVideoListFragment", "========== SmallCardViewHolder Created ==========");
            android.util.Log.i("BaseVideoListFragment", "View: " + view.getClass().getSimpleName());
            android.util.Log.i("BaseVideoListFragment", "View clickable: " + view.isClickable());
            android.util.Log.i("BaseVideoListFragment", "View focusable: " + view.isFocusable());

            if (view instanceof DrawRelativeLayout) {
                ((DrawRelativeLayout) view).setUpDrawable(R.drawable.shadow_white_rect);
            } else if (view instanceof DrawLinearLayout) {
                ((DrawLinearLayout) view).setUpDrawable(R.drawable.shadow_white_rect);
            }

            Context ctx = view.getContext();
            android.graphics.drawable.Drawable upIcon = ctx.getResources().getDrawable(R.drawable.ic_video_info_up);
            android.graphics.drawable.Drawable playIcon = ctx.getResources().getDrawable(R.drawable.ic_video_info_play);
            android.graphics.drawable.Drawable danmakuIcon = ctx.getResources().getDrawable(R.drawable.ic_video_info_danmaku);
            int iconSize = ctx.getResources().getDimensionPixelSize(R.dimen.px_26);
            upIcon.setBounds(0, 0, iconSize, iconSize);
            playIcon.setBounds(0, 0, iconSize, iconSize);
            danmakuIcon.setBounds(0, 0, iconSize, iconSize);
            int color = ctx.getResources().getColor(R.color.white);
            upIcon.setColorFilter(color, android.graphics.PorterDuff.Mode.MULTIPLY);
            playIcon.setColorFilter(color, android.graphics.PorterDuff.Mode.MULTIPLY);
            danmakuIcon.setColorFilter(color, android.graphics.PorterDuff.Mode.MULTIPLY);
            this.upView.setCompoundDrawables(upIcon, null, null, null);
            this.playView.setCompoundDrawables(playIcon, null, null, null);
            this.danmakuView.setCompoundDrawables(danmakuIcon, null, null, null);

            view.setOnClickListener(this);
            view.setOnFocusChangeListener(this);
            
            // Android TV: 添加KeyListener监听确认键
            // 原因：BaseSideActivity的dispatchKeyEvent可能拦截KeyEvent，导致onClick无法自动触发
            // 解决方案：手动监听KEYCODE_DPAD_CENTER，绕过Activity层的拦截
            view.setOnKeyListener(new View.OnKeyListener() {
                @Override
                public boolean onKey(View v, int keyCode, KeyEvent event) {
                    if (keyCode == KeyEvent.KEYCODE_DPAD_CENTER && event.getAction() == KeyEvent.ACTION_UP) {
                        // android.util.Log.i("BaseVideoListFragment", "========== DPAD_CENTER KEY UP ==========");
                        // android.util.Log.i("BaseVideoListFragment", "View: " + v.getClass().getSimpleName());
                        // 直接调用onClick，绕过Activity的dispatchKeyEvent拦截
                        onClick(v);
                        return true;
                    }
                    return false;
                }
            });

            // android.util.Log.i("BaseVideoListFragment", "After setting listener - View clickable: " + view.isClickable());
        }
        
        public final TextView getTitleView() { return this.titleView; }
        public final ScalableImageView getCoverView() { return this.coverView; }
        public final TextView getUpView() { return this.upView; }
        public final TextView getPlayView() { return this.playView; }
        public final TextView getDanmakuView() { return this.danmakuView; }
        public final TextView getDurationView() { return this.durationView; }
        public final TextView getPubdateView() { return this.pubdateView; }
        
        public final TextView getBadgeView() { return this.badgeView; }
        
        public final View getBottomInfoLayout() { return this.bottomInfoLayout; }
        
        public static final class Companion {
            public final SmallCardViewHolder a(ViewGroup parent, WeakReference<BaseVideoListFragment> ref) {
                bbi.b(parent, "parent");
                bbi.b(ref, "fragmentRef");
                View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.recycler_view_item_main_recommend_video, parent, false);
                bbi.a((Object) view, "view");
                return new SmallCardViewHolder(view, ref);
            }
        }
        
        @Override
        public void onClick(View v) {
            // android.util.Log.i("BaseVideoListFragment", "========== onClick CALLED ==========");
            bbi.b(v, "v");
            BaseVideoListFragment fragment = this.fragmentRef.get();

            // android.util.Log.i("BaseVideoListFragment", "Fragment: " + (fragment != null ? fragment.getClass().getSimpleName() : "null"));

            if (fragment != null) {
                abl.a.a(fragment.getClickEventName());
            }

            Object tag = v.getTag();
            // android.util.Log.i("BaseVideoListFragment", "Tag: " + tag + " (type: " + (tag != null ? tag.getClass().getSimpleName() : "null") + ")");

            if (tag instanceof String) {
                Object posTag = v.getTag(R.id.position);
                int position = posTag instanceof Integer ? (Integer) posTag : -1;
                // android.util.Log.i("BaseVideoListFragment", "Calling onSmallCardClick with uri=" + tag + ", position=" + position);
                if (fragment != null) {
                    fragment.onSmallCardClick(v, (String) tag, position);
                }
            } else {
                android.util.Log.w("BaseVideoListFragment", "Tag is not String, skipping onSmallCardClick");
            }

            Object reportPos = v.getTag(R.id.report_position);
            if (reportPos instanceof Integer && fragment != null) {
                ok.a(fragment.getPageViewEvent().replace("pageview", "click"), "type", "video", "position", reportPos.toString());
            }
        }
        
        @Override
        public void onFocusChange(View v, boolean hasFocus) {
            // android.util.Log.i("BaseVideoListFragment", "========== onFocusChange ==========");
            // android.util.Log.i("BaseVideoListFragment", "View: " + v.getClass().getSimpleName() + ", hasFocus: " + hasFocus);

            BaseVideoListFragment fragment = this.fragmentRef.get();
            if (fragment == null) {
                android.util.Log.w("BaseVideoListFragment", "Fragment is null in onFocusChange");
                return;
            }
            Object tag = v.getTag(R.id.position);
            if (tag instanceof Integer) {
                fragment.currentPosition = (Integer) tag;
                android.util.Log.i("BaseVideoListFragment", "Current position: " + fragment.currentPosition);
            }
            adj.a(v, hasFocus);
            if (this.itemView instanceof DrawRelativeLayout) {
                ((DrawRelativeLayout) this.itemView).setUpEnabled(hasFocus);
            } else if (this.itemView instanceof DrawLinearLayout) {
                ((DrawLinearLayout) this.itemView).setUpEnabled(hasFocus);
            }
            this.titleView.setSelected(hasFocus);
        }
    }
    
    protected static class BigCardViewHolder extends adv implements View.OnClickListener, View.OnFocusChangeListener {
        public static final Companion Companion = new Companion();
        private final TextView titleView;
        private final ScalableImageView coverView;
        private final ScalableImageView blackCoverView;
        private final View itemView;
        private final WeakReference<BaseVideoListFragment> fragmentRef;
        
        public BigCardViewHolder(View view, WeakReference<BaseVideoListFragment> ref) {
            super(view);
            this.fragmentRef = ref;
            this.itemView = view;
            this.titleView = (TextView) a(view, R.id.title);
            this.coverView = (ScalableImageView) a(view, R.id.img);
            this.blackCoverView = (ScalableImageView) a(view, R.id.black_img);
            view.setOnClickListener(this);
            view.setOnFocusChangeListener(this);
        }
        
        public final TextView getTitleView() { return this.titleView; }
        public final ScalableImageView getCoverView() { return this.coverView; }
        public final ScalableImageView getBlackCoverView() { return this.blackCoverView; }
        
        public static final class Companion {
            public final BigCardViewHolder a(ViewGroup parent, WeakReference<BaseVideoListFragment> ref) {
                bbi.b(parent, "parent");
                bbi.b(ref, "fragmentRef");
                View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.recycler_view_item_main_recommend_big, parent, false);
                bbi.a((Object) view, "view");
                return new BigCardViewHolder(view, ref);
            }
        }
        
        @Override
        public void onClick(View v) {
            bbi.b(v, "v");
            BaseVideoListFragment fragment = this.fragmentRef.get();
            if (fragment != null) {
                abl.a.a(fragment.getClickEventName());
            }
        }
        
        @Override
        public void onFocusChange(View v, boolean hasFocus) {
            BaseVideoListFragment fragment = this.fragmentRef.get();
            if (fragment == null) {
                return;
            }
            Object tag = v.getTag(R.id.position);
            if (tag instanceof Integer) {
                fragment.currentPosition = (Integer) tag;
            }
            adj.a(v, hasFocus);
        }
    }
}
