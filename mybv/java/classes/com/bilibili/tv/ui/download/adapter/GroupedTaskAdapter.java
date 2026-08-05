package com.bilibili.tv.ui.download.adapter;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.bilibili.tv.R;
import com.bilibili.tv.ui.download.model.DownloadTask;
import com.bilibili.tv.widget.ScalableImageView;
import java.util.ArrayList;
import java.util.List;

/**
 * 下载管理第一级：视频分组列表Adapter
 * 同一视频（bvid）的多个分P任务聚合成一组显示
 * 显示：封面 + 视频标题 + 分P总数 + 聚合状态
 */
public class GroupedTaskAdapter extends RecyclerView.a<GroupedTaskAdapter.GroupHolder> {
    private final Context context;
    private final boolean showCompleted;
    private List<VideoGroup> groups = new ArrayList<VideoGroup>();
    private OnGroupClickListener listener;

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

    public GroupedTaskAdapter(Context context, boolean showCompleted) {
        this.context = context;
        this.showCompleted = showCompleted;
    }

    public void setGroups(List<VideoGroup> groups) {
        this.groups = groups != null ? groups : new ArrayList<VideoGroup>();
        d();
    }

    /**
     * 更新任务所在组的聚合数据（仅刷新该组，避免整表刷新丢焦点）
     *
     * @return 是否找到并更新成功
     */
    public boolean updateTask(DownloadTask task) {
        if (task == null || task.getBvid() == null) return false;
        for (int i = 0; i < groups.size(); i++) {
            VideoGroup group = groups.get(i);
            if (task.getBvid().equals(group.bvid)) {
                // 替换组内对应任务的最新数据
                for (int j = 0; j < group.tasks.size(); j++) {
                    DownloadTask old = group.tasks.get(j);
                    if (old.getTaskId() != null && old.getTaskId().equals(task.getTaskId())) {
                        group.tasks.set(j, task);
                        break;
                    }
                }
                c(i);
                return true;
            }
        }
        return false;
    }

    public void setOnGroupClickListener(OnGroupClickListener listener) {
        this.listener = listener;
    }

    @Override
    public int a() {
        return groups.size();
    }

    @Override
    public GroupHolder a(ViewGroup viewGroup, int i) {
        View view = LayoutInflater.from(context).inflate(R.layout.item_video_group, viewGroup, false);
        return new GroupHolder(view);
    }

    @Override
    public void a(final GroupHolder holder, int i) {
        final VideoGroup group = groups.get(i);
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

        holder.rootView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (listener != null) {
                    listener.onGroupClick(group);
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
