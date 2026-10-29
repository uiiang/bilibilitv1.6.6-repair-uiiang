package com.bilibili.tv.ui.video.widget;

import android.view.View;
import android.view.ViewGroup;
import android.view.LayoutInflater;
import android.widget.TextView;
import com.bilibili.tv.R;
import com.bilibili.tv.widget.ScalableImageView;
import com.bilibili.tv.widget.DrawLinearLayout;
import bl.bbi;

public class CompactVideoHolder extends android.support.v7.widget.RecyclerView.v {
    public final View a;
    private ScalableImageView coverImageView;
    private TextView titleView;
    private TextView upView;
    private TextView playCountView;
    private TextView danmakuView;
    private TextView pubdateView;
    private TextView durationView;
    private TextView badgeView;
    private TextView indexBadgeView;
    private DrawLinearLayout rootLayout;

    public CompactVideoHolder(View itemView) {
        super(itemView);
        this.a = itemView;
        this.coverImageView = (ScalableImageView) itemView.findViewById(R.id.img);
        this.titleView = (TextView) itemView.findViewById(R.id.title);
        this.upView = (TextView) itemView.findViewById(R.id.up);
        this.playCountView = (TextView) itemView.findViewById(R.id.play);
        this.danmakuView = (TextView) itemView.findViewById(R.id.danmaku);
        this.pubdateView = (TextView) itemView.findViewById(R.id.pubdate);
        this.durationView = (TextView) itemView.findViewById(R.id.duration);
        this.badgeView = (TextView) itemView.findViewById(R.id.badge);
        this.indexBadgeView = (TextView) itemView.findViewById(R.id.index_badge);
        this.rootLayout = (DrawLinearLayout) itemView;
        this.rootLayout.setUpDrawable(R.drawable.shadow_white_rect);
        
        android.content.Context ctx = itemView.getContext();
        VideoCardIcons.apply(ctx, this.upView, this.playCountView, this.danmakuView,
                VideoCardIcons.SIZE_COMPACT, R.color.white_50);
    }

    public ScalableImageView getCoverImageView() {
        return this.coverImageView;
    }

    public TextView getTitleView() {
        return this.titleView;
    }

    public TextView getUpView() {
        return this.upView;
    }

    public TextView getPlayCountView() {
        return this.playCountView;
    }

    public TextView getDanmakuView() {
        return this.danmakuView;
    }

    public TextView getPubdateView() {
        return this.pubdateView;
    }

    public TextView getDurationView() {
        return this.durationView;
    }

    public TextView getBadgeView() {
        return this.badgeView;
    }

    public TextView getIndexBadgeView() {
        return this.indexBadgeView;
    }

    public DrawLinearLayout getRootLayout() {
        return this.rootLayout;
    }

    public static final class Companion {
        private Companion() {}

        public CompactVideoHolder create(ViewGroup parent) {
            bbi.b(parent, "parent");
            View view = LayoutInflater.from(parent.getContext())
                    .inflate(R.layout.recycler_view_item_video_info_compact, parent, false);
            bbi.a((Object) view, "view");
            return new CompactVideoHolder(view);
        }
    }

    public static final Companion Companion = new Companion();
}
