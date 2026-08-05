package com.bilibili.tv.ui.download.adapter;

import android.content.Context;
import android.graphics.Color;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.bilibili.tv.R;
import com.bilibili.tv.api.video.BiliVideoDetail;
import com.bilibili.tv.widget.ScalableImageView;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * 分P选择列表适配器
 */
public class EpisodeSelectAdapter extends RecyclerView.a<EpisodeSelectAdapter.EpisodeViewHolder> {

    // 勾选状态颜色
    private static final int COLOR_CHECKED = Color.parseColor("#FB7299");
    private static final int COLOR_UNCHECKED = Color.parseColor("#CCCCCC");

    private Context context;
    private List<BiliVideoDetail.Page> episodeList;
    private Set<Integer> selectedEpisodes = new HashSet<>();
    private OnEpisodeClickListener listener;
    private String videoCoverUrl; // 视频主封面（first_frame为空时兜底）

    public interface OnEpisodeClickListener {
        void onEpisodeClick(int position, boolean isSelected);
    }

    public EpisodeSelectAdapter(Context context, List<BiliVideoDetail.Page> episodeList) {
        this.context = context;
        this.episodeList = episodeList;
    }

    public void setOnEpisodeClickListener(OnEpisodeClickListener listener) {
        this.listener = listener;
    }

    /**
     * 设置视频主封面URL（分P first_frame为空时的兜底封面）
     */
    public void setVideoCoverUrl(String videoCoverUrl) {
        this.videoCoverUrl = videoCoverUrl;
    }

    @Override
    public EpisodeViewHolder a(ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(context).inflate(R.layout.item_episode_select, parent, false);
        return new EpisodeViewHolder(view);
    }

    @Override
    public void a(EpisodeViewHolder holder, int position) {
        BiliVideoDetail.Page page = episodeList.get(position);

        // 设置分P标题
        String title = "P" + (position + 1) + "  " + page.mTitle;
        holder.episodeTitle.setText(title);

        // 设置预估大小（根据时长估算，假设720P画质约为1MB/秒）
        long estimatedSize = estimateFileSize(page);
        holder.episodeSize.setText(formatFileSize(estimatedSize));

        // 加载封面图片（优先first_frame，为空时使用视频主封面）
        String frameUrl = page.firstFrame;
        if ((frameUrl == null || frameUrl.isEmpty()) && videoCoverUrl != null) {
            frameUrl = videoCoverUrl;
        }
        if (frameUrl != null && !frameUrl.isEmpty()) {
            holder.coverImage.setImageURI(frameUrl);
        } else {
            holder.coverImage.setImageResource(R.drawable.bili_default_image_tv);
        }

        // 显示勾选状态（文字符号，兼容Android 4.x）
        boolean isSelected = selectedEpisodes.contains(position);
        holder.checkBox.setText(isSelected ? "✓" : "○");
        holder.checkBox.setTextColor(isSelected ? COLOR_CHECKED : COLOR_UNCHECKED);

        // 焦点变化时更新背景
        holder.rootView.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            @Override
            public void onFocusChange(View v, boolean hasFocus) {
                if (hasFocus) {
                    holder.rootView.setBackgroundColor(Color.parseColor("#33FB7299"));
                } else {
                    holder.rootView.setBackgroundColor(isSelected ? Color.parseColor("#1AFB7299") : Color.TRANSPARENT);
                }
            }
        });

        // 设置背景色（已选择的显示淡粉色背景）
        holder.rootView.setBackgroundColor(isSelected ? Color.parseColor("#1AFB7299") : Color.TRANSPARENT);

        // 点击事件
        holder.rootView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (selectedEpisodes.contains(position)) {
                    selectedEpisodes.remove(position);
                } else {
                    selectedEpisodes.add(position);
                }
                c(position);
                if (listener != null) {
                    listener.onEpisodeClick(position, selectedEpisodes.contains(position));
                }
            }
        });
    }

    @Override
    public int a() {
        return episodeList != null ? episodeList.size() : 0;
    }

    /**
     * 全选
     */
    public void selectAll() {
        selectedEpisodes.clear();
        for (int i = 0; i < episodeList.size(); i++) {
            selectedEpisodes.add(i);
        }
        d();
    }

    /**
     * 取消全选
     */
    public void unselectAll() {
        selectedEpisodes.clear();
        d();
    }

    /**
     * 切换全选/取消全选
     */
    public void toggleSelectAll() {
        if (selectedEpisodes.size() == episodeList.size()) {
            unselectAll();
        } else {
            selectAll();
        }
    }

    /**
     * 获取已选择的分P索引集合
     */
    public Set<Integer> getSelectedEpisodes() {
        return selectedEpisodes;
    }

    /**
     * 获取已选择的分P数量
     */
    public int getSelectedCount() {
        return selectedEpisodes.size();
    }

    /**
     * 预估文件大小（假设720P画质约为1MB/秒）
     */
    private long estimateFileSize(BiliVideoDetail.Page page) {
        if (page.duration > 0) {
            return page.duration * 1024 * 1024L; // duration单位是秒
        }
        return 100 * 1024 * 1024L; // 默认100MB
    }

    /**
     * 格式化文件大小
     */
    private String formatFileSize(long size) {
        if (size < 1024) {
            return size + "B";
        } else if (size < 1024 * 1024) {
            return String.format("%.2fKB", size / 1024.0);
        } else if (size < 1024 * 1024 * 1024) {
            return String.format("%.2fMB", size / (1024.0 * 1024));
        } else {
            return String.format("%.2fGB", size / (1024.0 * 1024 * 1024));
        }
    }

    public static class EpisodeViewHolder extends RecyclerView.v {
        TextView checkBox;
        ScalableImageView coverImage;
        TextView episodeTitle;
        TextView episodeSize;
        View rootView;

        public EpisodeViewHolder(View itemView) {
            super(itemView);
            rootView = itemView;
            checkBox = (TextView) itemView.findViewById(R.id.checkbox);
            coverImage = (ScalableImageView) itemView.findViewById(R.id.episode_cover);
            episodeTitle = (TextView) itemView.findViewById(R.id.episode_title);
            episodeSize = (TextView) itemView.findViewById(R.id.episode_size);
        }
    }
}