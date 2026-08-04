package com.bilibili.tv.ui.download.adapter;

import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.bilibili.tv.R;
import com.bilibili.tv.ui.download.model.DownloadTask;
import java.util.ArrayList;
import java.util.List;

/**
 * 下载任务列表适配器（简化版）
 */
public class DownloadTaskAdapter extends RecyclerView.a<DownloadTaskAdapter.ViewHolder> {

    private List<DownloadTask> taskList = new ArrayList<>();
    private OnTaskClickListener listener;

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
        public android.widget.ImageView coverImage;
        public TextView titleText;
        public TextView upNameText;
        public ProgressBar progressBar;
        public TextView progressText;
        public TextView fileSizeText;
        public TextView speedText;
        public TextView statusText;

        public ViewHolder(View itemView) {
            super(itemView);
            rootView = itemView;
            coverImage = (android.widget.ImageView) itemView.findViewById(R.id.cover_image);
            titleText = (TextView) itemView.findViewById(R.id.title_text);
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
        // 在反编译项目中，数据更新可能通过其他方式触发
        // 暂时移除notifyDataSetChanged()调用
    }

    /**
     * 更新单个任务
     */
    public void updateTask(DownloadTask task) {
        for (int i = 0; i < taskList.size(); i++) {
            if (taskList.get(i).getTaskId().equals(task.getTaskId())) {
                taskList.set(i, task);
                // 在反编译项目中，数据更新可能通过其他方式触发
                // 暂时移除notifyItemChanged()调用
                return;
            }
        }
    }

    /**
     * 设置点击监听器
     */
    public void setOnTaskClickListener(OnTaskClickListener listener) {
        this.listener = listener;
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

        // 标题
        holder.titleText.setText(task.getTitle());

        // UP主
        holder.upNameText.setText("UP主: " + (task.getUpName() != null ? task.getUpName() : "未知"));

        // 封面图（使用默认图片）
        holder.coverImage.setImageResource(R.drawable.bili_default_image_tv);

        // 进度
        holder.progressBar.setProgress(task.getProgress());
        holder.progressText.setText(task.getProgress() + "%");

        // 文件大小
        holder.fileSizeText.setText(task.getFormattedDownloadedSize() + "/" + task.getFormattedSize());

        // 下载速度
        if (task.getStatus() == DownloadTask.Status.DOWNLOADING) {
            holder.speedText.setText(task.getFormattedSpeed());
        } else {
            holder.speedText.setText("");
        }

        // 状态文本
        String statusText = "";

        switch (task.getStatus()) {
            case WAITING:
                statusText = "等待中";
                break;

            case DOWNLOADING:
                statusText = task.getFormattedRemainingTime();
                break;

            case PAUSED:
                if (task.isManualPause()) {
                    statusText = "已暂停";
                } else {
                    statusText = "暂停中";
                }
                break;

            case COMPLETED:
                statusText = "已完成";
                break;

            case FAILED:
                statusText = "下载失败";
                break;
        }

        holder.statusText.setText(statusText);

        // 点击事件
        holder.rootView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (listener != null) {
                    listener.onTaskClick(task, position);
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