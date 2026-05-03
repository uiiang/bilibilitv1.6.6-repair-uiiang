package bl;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.bilibili.tv.MainApplication;
import com.bilibili.tv.R;
import com.bilibili.tv.ui.video.VideoDetailActivity;
import com.bilibili.tv.ui.video.widget.CompactVideoHolder;
import com.bilibili.tv.ui.video.widget.VideoCardBinder;
import com.bilibili.tv.ui.video.widget.VideoListSection;
import com.bilibili.tv.util.DateHelper;
import com.bilibili.tv.widget.ScalableImageView;
import com.bilibili.tv.player.basic.context.ResolveResourceParams;

public class EpisodeBinder implements VideoCardBinder {
    private VideoListSection videoListSection;
    private BottomEpisodeMenu bottomEpisodeMenu;
    
    public EpisodeBinder(VideoListSection videoListSection, BottomEpisodeMenu bottomEpisodeMenu) {
        this.videoListSection = videoListSection;
        this.bottomEpisodeMenu = bottomEpisodeMenu;
    }
    
    @Override
    public void bind(VideoDetailActivity.f holder, Object data, int position) {
    }
    
    @Override
    public void bindCompact(CompactVideoHolder holder, Object data, int position) {
        if (data instanceof ResolveResourceParams) {
            final ResolveResourceParams params = (ResolveResourceParams) data;
            int listType = params.mListType;
            
            holder.getTitleView().setText(params.mPageTitle);
            bindCover(holder.getCoverImageView(), params.mEpCover);
            bindDuration(holder.getDurationView(), params.mDuration);
            bindPubDate(holder.getPubdateView(), params.mPubDate);
            bindUpView(holder.getUpView(), params.mAuthor, params.mHideUpIcon, listType);
            bindPlayAndDanmaku(holder.getPlayCountView(), holder.getDanmakuView(), params.mPlays, params.mDanmakus, listType);
            bindBadge(holder.getBadgeView(), params.mBadgeText, params.mBadgeBgColor);
            
            holder.a.setOnFocusChangeListener(new View.OnFocusChangeListener() {
                @Override
                public void onFocusChange(View v, boolean hasFocus) {
                    if (hasFocus) {
                        int adapterPosition = holder.f();
                        
                        if (videoListSection != null) {
                            videoListSection.saveVideoFocusPosition(adapterPosition);
                        }
                        
                        updateNavTagSelection(adapterPosition);
                        
                        if (bottomEpisodeMenu != null) {
                            bottomEpisodeMenu.resetAutoHideTimer();
                        }
                    }
                }
            });
            
            holder.a.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    int adapterPosition = holder.f();
                    
                    if (bottomEpisodeMenu != null) {
                        bottomEpisodeMenu.resetAutoHideTimer();
                    }
                    
                    if (videoListSection != null) {
                        videoListSection.onVideoCardClicked(params.mCid, params);
                    }
                }
            });
        }
    }
    
    private void bindCover(ScalableImageView coverView, String coverUrl) {
        if (coverUrl != null && !coverUrl.isEmpty()) {
            nv imageLoader = nv.a();
            String thumbUrl = abd.get_thumb_url_c(MainApplication.a().getApplicationContext(), coverUrl);
            imageLoader.a(thumbUrl, coverView);
        }
    }
    
    private void bindDuration(TextView durationView, int duration) {
        if (duration > 0) {
            if (duration >= 3600) {
                durationView.setText(String.format("%d:%02d:%02d", 
                    duration / 3600, (duration % 3600) / 60, duration % 60));
            } else {
                durationView.setText(String.format("%02d:%02d", duration / 60, duration % 60));
            }
            durationView.setVisibility(View.VISIBLE);
        } else {
            durationView.setVisibility(View.GONE);
        }
    }
    
    private void bindPubDate(TextView pubdateView, long pubDate) {
        if (pubDate > 0) {
            pubdateView.setText(DateHelper.formatDate(pubDate));
            pubdateView.setVisibility(View.VISIBLE);
        } else {
            pubdateView.setVisibility(View.GONE);
        }
    }
    
    private void bindUpView(TextView upView, String author, boolean hideUpIcon, int listType) {
        if (listType == 2) {
            upView.setVisibility(View.GONE);
            upView.setCompoundDrawables(null, null, null, null);
            return;
        }
        
        if (author != null && !author.isEmpty()) {
            upView.setText(author);
            upView.setVisibility(View.VISIBLE);
            
            if (listType == 1 || hideUpIcon) {
                upView.setCompoundDrawables(null, null, null, null);
            } else {
                Drawable upIcon = adl.a.c(R.drawable.ic_video_info_up);
                int iconSize = adl.b(R.dimen.px_26);
                upIcon.setBounds(0, 0, iconSize, iconSize);
                int color = adl.d(R.color.white);
                upIcon.setColorFilter(color, PorterDuff.Mode.MULTIPLY);
                upView.setCompoundDrawables(upIcon, null, null, null);
            }
        } else {
            upView.setVisibility(View.GONE);
            upView.setCompoundDrawables(null, null, null, null);
        }
    }
    
    private void bindPlayAndDanmaku(TextView playCountView, TextView danmakuView, String plays, String danmakus, int listType) {
        if (listType == 2) {
            playCountView.setVisibility(View.GONE);
            danmakuView.setVisibility(View.GONE);
            return;
        }
        
        if (plays != null && !"0".equals(plays)) {
            playCountView.setText(adh.a(plays));
            playCountView.setVisibility(View.VISIBLE);
        } else {
            playCountView.setVisibility(View.GONE);
        }
        
        int danmaku = 0;
        try {
            danmaku = Integer.parseInt(danmakus != null ? danmakus : "0");
        } catch (Exception e) {}
        if (danmaku > 0) {
            danmakuView.setText(adh.a(danmaku));
            danmakuView.setVisibility(View.VISIBLE);
        } else {
            danmakuView.setVisibility(View.GONE);
        }
    }
    
    private void bindBadge(TextView badgeView, String badgeText, String badgeBgColor) {
        if (badgeText != null && !badgeText.isEmpty()) {
            badgeView.setText(badgeText);
            Context context = MainApplication.a().getApplicationContext();
            float cornerRadius = 4 * context.getResources().getDisplayMetrics().density;
            try {
                int bgColor = android.graphics.Color.parseColor(badgeBgColor);
                int alphaColor = (bgColor & 0x00FFFFFF) | (153 << 24);
                android.graphics.drawable.GradientDrawable drawable = new android.graphics.drawable.GradientDrawable();
                drawable.setShape(android.graphics.drawable.GradientDrawable.RECTANGLE);
                drawable.setCornerRadius(cornerRadius);
                drawable.setColor(alphaColor);
                badgeView.setBackground(drawable);
            } catch (Exception e) {
                android.graphics.drawable.GradientDrawable drawable = new android.graphics.drawable.GradientDrawable();
                drawable.setShape(android.graphics.drawable.GradientDrawable.RECTANGLE);
                drawable.setCornerRadius(cornerRadius);
                drawable.setColor(0x99FB7299);
                badgeView.setBackground(drawable);
            }
            badgeView.setVisibility(View.VISIBLE);
        } else {
            badgeView.setVisibility(View.GONE);
        }
    }
    
    private void updateNavTagSelection(int videoPosition) {
        if (videoListSection != null) {
            int tagIndex = videoPosition / 10;
            videoListSection.setNavTagSelectedPosition(tagIndex);
        }
    }
    
    @Override
    public long getVideoId(Object data) {
        if (data instanceof ResolveResourceParams) {
            return ((ResolveResourceParams) data).mCid;
        }
        return -1;
    }
    
    @Override
    public String getCoverUrl(Object data) {
        if (data instanceof ResolveResourceParams) {
            return ((ResolveResourceParams) data).mEpCover;
        }
        return null;
    }
    
    @Override
    public boolean isCurrentVideo(Object data, long currentVideoId) {
        return getVideoId(data) == currentVideoId;
    }
    
    @Override
    public boolean isCurrentVideoByCid(Object data, long currentCid) {
        if (data instanceof ResolveResourceParams) {
            return ((ResolveResourceParams) data).mCid == currentCid;
        }
        return false;
    }
    
    @Override
    public boolean isCurrentSeason(Object data, int currentSeasonId) {
        return false;
    }

    @Override
    public boolean hasPlayProgress(Object data, long currentCid) {
        return isCurrentVideoByCid(data, currentCid);
    }
}
