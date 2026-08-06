package com.bilibili.tv.ui.download.adapter;

import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.bilibili.tv.R;
import com.bilibili.tv.ui.download.model.DownloadTask;
import com.bilibili.tv.widget.ScalableImageView;
import java.util.ArrayList;
import java.util.List;

/**
 * 下载任务列表适配器（简化版）
 */
public class DownloadTaskAdapter extends RecyclerView.a<DownloadTaskAdapter.ViewHolder> {

    private List<DownloadTask> taskList = new ArrayList<>();
    private OnTaskClickListener listener;
    private boolean showPageIndex; // 是否在标题后显示分P序号（第二级分P明细页使用）
    // 焦点位置记忆（跳转其它页面返回后恢复列表焦点）
    private int focusPosition = 0;

    /**
     * 任务点击监听器接口
     */
    public interface OnTaskClickListener {
        void onTaskClick(DownloadTask task, int position);
        boolean onTaskLongClick(DownloadTask task, int position);
    }

    /**
     * ViewHolder
     */
    public static class ViewHolder extends RecyclerView.v {
        public View rootView;
        public ScalableImageView coverImage;
        public TextView titleText;
        public TextView subTitleText;
        public TextView upNameText;
        public ProgressBar progressBar;
        public TextView progressText;
        public TextView fileSizeText;
        public TextView speedText;
        public TextView statusText;
        public String lastCoverUrl; // 已加载的封面URL（避免进度刷新时重复加载）

        public ViewHolder(View itemView) {
            super(itemView);
            rootView = itemView;
            coverImage = (ScalableImageView) itemView.findViewById(R.id.cover_image);
            titleText = (TextView) itemView.findViewById(R.id.title_text);
            subTitleText = (TextView) itemView.findViewById(R.id.sub_title);
            upNameText = (TextView) itemView.findViewById(R.id.up_name_text);
            progressBar = (ProgressBar) itemView.findViewById(R.id.progress_bar);
            progressText = (TextView) itemView.findViewById(R.id.progress_text);
            fileSizeText = (TextView) itemView.findViewById(R.id.file_size_text);
            speedText = (TextView) itemView.findViewById(R.id.speed_text);
            statusText = (TextView) itemView.findViewById(R.id.status_text);
        }
    }

    /**
     * 设置任务列表
     */
    public void setTaskList(List<DownloadTask> tasks) {
        this.taskList.clear();
        if (tasks != null) {
            this.taskList.addAll(tasks);
        }
        d();
    }

    /**
     * 更新单个任务
     * @return true表示任务在列表中找到并已更新；false表示任务不在列表中
     */
    public boolean updateTask(DownloadTask task) {
        for (int i = 0; i < taskList.size(); i++) {
            if (taskList.get(i).getTaskId().equals(task.getTaskId())) {
                taskList.set(i, task);
                c(i);
                return true;
            }
        }
        return false;
    }

    /**
     * 设置点击监听器
     */
    public void setOnTaskClickListener(OnTaskClickListener listener) {
        this.listener = listener;
    }

    /**
     * 设置是否在标题后显示分P序号（第二级分P明细页开启）
     */
    public void setShowPageIndex(boolean showPageIndex) {
        this.showPageIndex = showPageIndex;
    }

    /**
     * 获取最近获得焦点的列表项position（返回页面后恢复焦点用）
     */
    public int getFocusPosition() {
        return focusPosition;
    }

    @Override
    public ViewHolder a(ViewGroup viewGroup, int i) {
        View view = LayoutInflater.from(viewGroup.getContext())
            .inflate(R.layout.item_download_task, viewGroup, false);
        return new ViewHolder(view);
    }

    @Override
    public void a(ViewHolder holder, int i) {
        final DownloadTask task = taskList.get(i);
        final int position = i;

        // 标题（第二级分P明细页在标题后显示分P序号，便于分辨第几个分P）
        if (showPageIndex && task.getPageIndex() > 0) {
            holder.titleText.setText(task.getTitle() + "  P" + task.getPageIndex());
        } else {
            holder.titleText.setText(task.getTitle());
        }

        // 副标题：已完成的任务显示文件名，其他显示分P标题
        if (task.getStatus() == DownloadTask.Status.COMPLETED) {
            // 已完成：显示本地文件名（右对齐）
            String filePath = task.getDownloadPath();
            if (filePath != null && !filePath.isEmpty()) {
                // 提取文件名
                String fileName = filePath.substring(filePath.lastIndexOf('/') + 1);
                holder.subTitleText.setText(fileName);
                holder.subTitleText.setVisibility(View.VISIBLE);
                // 设置右对齐
                holder.subTitleText.setGravity(android.view.Gravity.END);
            } else {
                holder.subTitleText.setVisibility(View.GONE);
            }
        } else {
            // 其他状态：显示分P标题（左对齐）
            if (task.getSubTitle() != null && !task.getSubTitle().isEmpty()) {
                holder.subTitleText.setText(task.getSubTitle());
                holder.subTitleText.setVisibility(View.VISIBLE);
                // 设置左对齐
                holder.subTitleText.setGravity(android.view.Gravity.START);
            } else {
                holder.subTitleText.setVisibility(View.GONE);
            }
        }

        // UP主
        holder.upNameText.setText("UP主: " + (task.getUpName() != null ? task.getUpName() : "未知"));

        // 封面图（Fresco加载网络图片，URL未变化时跳过重复加载）
        String coverUrl = task.getCoverUrl();
        if (coverUrl != null && !coverUrl.isEmpty()) {
            if (!coverUrl.equals(holder.lastCoverUrl)) {
                holder.coverImage.setImageURI(coverUrl);
                holder.lastCoverUrl = coverUrl;
            }
        } else {
            if (holder.lastCoverUrl != null) {
                holder.coverImage.setImageResource(R.drawable.bili_default_image_tv);
                holder.lastCoverUrl = null;
            }
        }

        // 进度
        holder.progressBar.setProgress(task.getProgress());
        holder.progressText.setText(task.getProgress() + "%");

        // 状态文本
        String statusText = "";

        switch (task.getStatus()) {
            case WAITING:
                statusText = "等待中";
                break;

            case DOWNLOADING:
                statusText = "下载中";
                break;

            case PAUSED:
                statusText = "已暂停";
                break;

            case COMPLETED:
                statusText = "已完成";
                break;

            case FAILED:
                statusText = "下载失败";
                break;
        }

        holder.statusText.setText(statusText);

        // 下载速度/剩余时间
        if (task.getStatus() == DownloadTask.Status.DOWNLOADING) {
            holder.speedText.setText(task.getFormattedSpeed() + " · 剩余" + task.getFormattedRemainingTime());
        } else if (task.getStatus() == DownloadTask.Status.WAITING) {
            holder.speedText.setText("等待开始");
        } else {
            holder.speedText.setText("");
        }

        // 文件大小
        if (task.getStatus() == DownloadTask.Status.COMPLETED) {
            holder.fileSizeText.setText(task.getFormattedSize());
        } else {
            holder.fileSizeText.setText(task.getFormattedDownloadedSize() + " / " + task.getFormattedSize());
        }

        // 点击事件
        holder.rootView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (listener != null) {
                    listener.onTaskClick(task, position);
                }
            }
        });

        // 记录焦点位置（返回页面后恢复焦点用）
        holder.rootView.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            @Override
            public void onFocusChange(View v, boolean hasFocus) {
                if (hasFocus) {
                    focusPosition = position;
                }
            }
        });

        holder.rootView.setOnLongClickListener(new View.OnLongClickListener() {
            @Override
            public boolean onLongClick(View v) {
                if (listener != null) {
                    return listener.onTaskLongClick(task, position);
                }
                return false;
            }
        });
    }

    @Override
    public int a() {
        return taskList.size();
    }

    /**
     * 获取任务列表
     */
    public List<DownloadTask> getTaskList() {
        return taskList;
    }
}