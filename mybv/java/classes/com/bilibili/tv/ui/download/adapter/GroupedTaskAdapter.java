package com.bilibili.tv.ui.download.adapter;

import android.content.Context;
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
 * 下载管理第一级：视频分组列表Adapter（已下载tab专用）
 * 混排两种条目：
 *  - 多P视频（totalPageCount > 1）的分组卡片：点击进入第二级分P任务明细页
 *  - 单P视频（totalPageCount <= 1）的单任务卡片：点击同样进入第二级明细页（仅含该任务）
 */
public class GroupedTaskAdapter extends RecyclerView.a<RecyclerView.v> {
    private static final int TYPE_GROUP = 0;
    private static final int TYPE_TASK = 1;

    private final Context context;
    private final boolean showCompleted;
    private List<Item> items = new ArrayList<Item>();
    private OnGroupClickListener listener;
    private OnTaskClickListener taskListener;
    // 焦点位置记忆（跳转其它页面返回后恢复列表焦点）
    private int focusPosition = 0;

    /**
     * 列表条目：group非空表示多P分组，task非空表示单P任务
     */
    public static class Item {
        public VideoGroup group;
        public DownloadTask task;
    }

    /**
     * 视频分组：同一视频（bvid）的所有分P任务
     */
    public static class VideoGroup {
        public String bvid;
        public String title;
        public String coverUrl;
        public String upName;
        public List<DownloadTask> tasks = new ArrayList<DownloadTask>();

        public int getDownloadingCount() {
            int count = 0;
            for (DownloadTask t : tasks) {
                if (t.getStatus() == DownloadTask.Status.DOWNLOADING) count++;
            }
            return count;
        }

        public int getWaitingCount() {
            int count = 0;
            for (DownloadTask t : tasks) {
                if (t.getStatus() == DownloadTask.Status.WAITING) count++;
            }
            return count;
        }

        public int getPausedCount() {
            int count = 0;
            for (DownloadTask t : tasks) {
                if (t.getStatus() == DownloadTask.Status.PAUSED) count++;
            }
            return count;
        }

        public int getCompletedCount() {
            int count = 0;
            for (DownloadTask t : tasks) {
                if (t.getStatus() == DownloadTask.Status.COMPLETED) count++;
            }
            return count;
        }

        public int getFailedCount() {
            int count = 0;
            for (DownloadTask t : tasks) {
                if (t.getStatus() == DownloadTask.Status.FAILED) count++;
            }
            return count;
        }

        /** 组内平均进度（0-100） */
        public int getAverageProgress() {
            if (tasks.isEmpty()) return 0;
            long sum = 0;
            for (DownloadTask t : tasks) {
                sum += t.getProgress();
            }
            return (int) (sum / tasks.size());
        }

        /** 组内总大小（字节） */
        public long getTotalSize() {
            long sum = 0;
            for (DownloadTask t : tasks) {
                sum += t.getTotalSize();
            }
            return sum;
        }

        /** 组内已下载大小（字节） */
        public long getDownloadedSize() {
            long sum = 0;
            for (DownloadTask t : tasks) {
                sum += t.getDownloadedSize();
            }
            return sum;
        }
    }

    public interface OnGroupClickListener {
        void onGroupClick(VideoGroup group);
    }

    public interface OnTaskClickListener {
        void onTaskClick(DownloadTask task);
    }

    public GroupedTaskAdapter(Context context, boolean showCompleted) {
        this.context = context;
        this.showCompleted = showCompleted;
    }

    public void setItems(List<Item> items) {
        this.items = items != null ? items : new ArrayList<Item>();
        d();
    }

    /**
     * 更新任务所在组/单任务的聚合数据（仅刷新该条目，避免整表刷新丢焦点）
     *
     * @return 是否找到并更新成功
     */
    public boolean updateTask(DownloadTask task) {
        if (task == null || task.getBvid() == null) return false;
        for (int i = 0; i < items.size(); i++) {
            Item item = items.get(i);
            if (item.group != null && task.getBvid().equals(item.group.bvid)) {
                // 替换组内对应任务的最新数据
                for (int j = 0; j < item.group.tasks.size(); j++) {
                    DownloadTask old = item.group.tasks.get(j);
                    if (old.getTaskId() != null && old.getTaskId().equals(task.getTaskId())) {
                        item.group.tasks.set(j, task);
                        break;
                    }
                }
                c(i);
                return true;
            } else if (item.task != null && item.task.getTaskId() != null
                    && item.task.getTaskId().equals(task.getTaskId())) {
                item.task = task;
                c(i);
                return true;
            }
        }
        return false;
    }

    public void setOnGroupClickListener(OnGroupClickListener listener) {
        this.listener = listener;
    }

    public void setOnTaskClickListener(OnTaskClickListener listener) {
        this.taskListener = listener;
    }

    /**
     * 获取最近获得焦点的列表项position（返回页面后恢复焦点用）
     */
    public int getFocusPosition() {
        return focusPosition;
    }

    @Override
    public int a() {
        return items.size();
    }

    /** getItemViewType（混淆API） */
    @Override
    public int a(int i) {
        Item item = items.get(i);
        return item.task != null ? TYPE_TASK : TYPE_GROUP;
    }

    @Override
    public RecyclerView.v a(ViewGroup viewGroup, int i) {
        if (i == TYPE_TASK) {
            View view = LayoutInflater.from(context).inflate(R.layout.item_download_task, viewGroup, false);
            return new TaskHolder(view);
        }
        View view = LayoutInflater.from(context).inflate(R.layout.item_video_group, viewGroup, false);
        return new GroupHolder(view);
    }

    @Override
    public void a(RecyclerView.v holder, int i) {
        Item item = items.get(i);
        if (item == null) return;
        if (holder instanceof TaskHolder) {
            bindTask((TaskHolder) holder, item.task, i);
        } else if (holder instanceof GroupHolder) {
            bindGroup((GroupHolder) holder, item.group);
        }
    }

    private void bindGroup(final GroupHolder holder, final VideoGroup group) {
        if (group == null) return;
        holder.titleText.setText(group.title != null ? group.title : "");
        if (group.coverUrl != null && !group.coverUrl.isEmpty()) {
            holder.coverImage.setImageURI(group.coverUrl);
        } else {
            holder.coverImage.setImageResource(R.drawable.bili_default_image_tv);
        }
        holder.countText.setText("共" + group.tasks.size() + "个分P");

        if (showCompleted) {
            // 已下载tab：显示完成数和总大小
            holder.statusText.setText("已完成 " + group.getCompletedCount() + "/" + group.tasks.size()
                + " 个分P · " + formatSize(group.getDownloadedSize()));
        } else {
            // 下载中tab：显示聚合进度和各状态计数
            StringBuilder sb = new StringBuilder();
            sb.append("总进度 ").append(group.getAverageProgress()).append("%");
            if (group.getDownloadingCount() > 0) {
                sb.append(" · 下载中 ").append(group.getDownloadingCount());
            }
            if (group.getWaitingCount() > 0) {
                sb.append(" · 等待 ").append(group.getWaitingCount());
            }
            if (group.getPausedCount() > 0) {
                sb.append(" · 暂停 ").append(group.getPausedCount());
            }
            if (group.getFailedCount() > 0) {
                sb.append(" · 失败 ").append(group.getFailedCount());
            }
            holder.statusText.setText(sb.toString());
        }

        // 记录焦点位置（返回页面后恢复焦点用）
        holder.rootView.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            @Override
            public void onFocusChange(View v, boolean hasFocus) {
                if (hasFocus) {
                    focusPosition = holder.f();
                }
            }
        });

        holder.rootView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (listener != null) {
                    listener.onGroupClick(group);
                }
            }
        });
    }

    private void bindTask(final TaskHolder holder, final DownloadTask task, final int position) {
        if (task == null) return;

        // 标题
        holder.titleText.setText(task.getTitle() != null ? task.getTitle() : "");

        // 副标题：已完成的任务显示文件名（右对齐），其他显示分P标题（左对齐）
        if (task.getStatus() == DownloadTask.Status.COMPLETED) {
            String filePath = task.getDownloadPath();
            if (filePath != null && !filePath.isEmpty()) {
                // 提取文件名（SAF content URI中文被URL编码，需解码；兼容普通文件路径）
                String fileName = com.bilibili.tv.ui.download.SafFileHelper.getFileNameFromPath(
                        holder.titleText.getContext(), filePath);
                holder.subTitleText.setText(fileName);
                holder.subTitleText.setVisibility(View.VISIBLE);
                holder.subTitleText.setGravity(android.view.Gravity.END);
            } else {
                holder.subTitleText.setVisibility(View.GONE);
            }
        } else {
            if (task.getSubTitle() != null && !task.getSubTitle().isEmpty()) {
                holder.subTitleText.setText(task.getSubTitle());
                holder.subTitleText.setVisibility(View.VISIBLE);
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

        // 记录焦点位置（返回页面后恢复焦点用）
        holder.rootView.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            @Override
            public void onFocusChange(View v, boolean hasFocus) {
                if (hasFocus) {
                    focusPosition = holder.f();
                }
            }
        });

        // 点击事件：单P任务直接弹出操作菜单（本地播放/选择播放器/重命名/删除），不进入二级页
        holder.rootView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (taskListener != null) {
                    taskListener.onTaskClick(task);
                }
            }
        });
    }

    static class GroupHolder extends RecyclerView.v {
        public View rootView;
        public ScalableImageView coverImage;
        public TextView titleText;
        public TextView countText;
        public TextView statusText;

        GroupHolder(View itemView) {
            super(itemView);
            rootView = itemView;
            coverImage = (ScalableImageView) itemView.findViewById(R.id.group_cover);
            titleText = (TextView) itemView.findViewById(R.id.group_title);
            countText = (TextView) itemView.findViewById(R.id.group_count_text);
            statusText = (TextView) itemView.findViewById(R.id.group_status_text);
        }
    }

    static class TaskHolder extends RecyclerView.v {
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

        TaskHolder(View itemView) {
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

    private static String formatSize(long bytes) {
        if (bytes < 1024) {
            return bytes + " B";
        } else if (bytes < 1024 * 1024) {
            return String.format("%.1f KB", bytes / 1024.0);
        } else if (bytes < 1024 * 1024 * 1024) {
            return String.format("%.1f MB", bytes / (1024.0 * 1024));
        } else {
            return String.format("%.2f GB", bytes / (1024.0 * 1024 * 1024));
        }
    }
}
