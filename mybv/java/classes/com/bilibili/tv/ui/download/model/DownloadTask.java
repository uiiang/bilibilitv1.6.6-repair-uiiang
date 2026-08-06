package com.bilibili.tv.ui.download.model;

import android.content.ContentValues;
import android.database.Cursor;
import com.alibaba.fastjson.JSONObject;

/**
 * 下载任务实体类
 * 用于表示一个下载任务的所有信息
 * 实现Comparable接口以支持优先级队列
 */
public class DownloadTask implements Comparable<DownloadTask> {
    // ============ 基本信息 ============
    private String taskId;          // 唯一标识（bvid_cid）
    private String bvid;            // 视频BV号
    private long cid;               // 视频CID
    private String title;           // 视频标题
    private String subTitle;        // 分P标题（副标题）
    private int pageIndex;          // 分P序号（从1开始，单P视频为0）
    private int totalPageCount;     // 视频总P数（视频详情页分P总数，单P视频为1）
    private String coverUrl;        // 封面URL
    private String upName;          // UP主名称
    private long duration;          // 视频时长（秒）

    // ============ 下载信息 ============
    private long totalSize;         // 文件总大小（字节）
    private long downloadedSize;    // 已下载大小（字节）
    private int progress;           // 下载进度（0-100）
    private long speed;             // 下载速度（字节/秒）
    private String downloadPath;    // 下载文件路径（本地保存路径）
    private String videoUrl;        // 实际的视频下载URL
    private long avid;              // 视频AVID（用于API请求）
    private int segmentCount;       // 分段数量（分段视频）

    // ============ 状态信息 ============
    private Status status;          // 下载状态
    private boolean isManualPause;  // 是否手动暂停
    private PauseType pauseType;    // 暂停类型

    // ============ 时间信息 ============
    private long createTime;        // 创建时间（毫秒）
    private long updateTime;        // 更新时间（毫秒）
    private long startTime;         // 开始时间（毫秒）
    private long endTime;           // 结束时间（毫秒）

    // ============ 画质音质信息 ============
    private int quality;            // 画质ID
    private String qualityName;     // 画质名称
    private int audioQuality;       // 音质ID
    private String audioQualityName;// 音质名称
    private String codec;           // 编码格式

    // ============ 错误信息 ============
    private int errorCode;          // 错误码
    private String errorMessage;    // 错误信息

    /**
     * 下载状态枚举
     */
    public enum Status {
        WAITING(0, "等待中"),
        DOWNLOADING(1, "下载中"),
        PAUSED(2, "已暂停"),
        COMPLETED(3, "已完成"),
        FAILED(4, "下载失败");

        private final int value;
        private final String name;

        Status(int value, String name) {
            this.value = value;
            this.name = name;
        }

        public int getValue() {
            return value;
        }

        public String getName() {
            return name;
        }

        public static Status fromValue(int value) {
            for (Status status : values()) {
                if (status.value == value) {
                    return status;
                }
            }
            return WAITING;
        }
    }

    /**
     * 暂停类型枚举
     */
    public enum PauseType {
        NONE(0, "无"),
        MANUAL(1, "手动暂停"),
        NETWORK_ERROR(2, "网络错误"),
        STORAGE_ERROR(3, "存储错误"),
        APP_EXIT(4, "应用退出");

        private final int value;
        private final String name;

        PauseType(int value, String name) {
            this.value = value;
            this.name = name;
        }

        public int getValue() {
            return value;
        }

        public String getName() {
            return name;
        }

        public static PauseType fromValue(int value) {
            for (PauseType type : values()) {
                if (type.value == value) {
                    return type;
                }
            }
            return NONE;
        }
    }

    // ============ 构造函数 ============

    public DownloadTask() {
        this.status = Status.WAITING;
        this.isManualPause = false;
        this.pauseType = PauseType.NONE;
        this.createTime = System.currentTimeMillis();
        this.updateTime = System.currentTimeMillis();
    }

    // ============ Getters and Setters ============

    public String getTaskId() {
        return taskId;
    }

    public void setTaskId(String taskId) {
        this.taskId = taskId;
    }

    public String getBvid() {
        return bvid;
    }

    public void setBvid(String bvid) {
        this.bvid = bvid;
    }

    public long getCid() {
        return cid;
    }

    public void setCid(long cid) {
        this.cid = cid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSubTitle() {
        return subTitle;
    }

    public void setSubTitle(String subTitle) {
        this.subTitle = subTitle;
    }

    public int getPageIndex() {
        return pageIndex;
    }

    public void setPageIndex(int pageIndex) {
        this.pageIndex = pageIndex;
    }

    public int getTotalPageCount() {
        return totalPageCount;
    }

    public void setTotalPageCount(int totalPageCount) {
        this.totalPageCount = totalPageCount;
    }

    public String getCoverUrl() {
        return coverUrl;
    }

    public void setCoverUrl(String coverUrl) {
        this.coverUrl = coverUrl;
    }

    public String getUpName() {
        return upName;
    }

    public void setUpName(String upName) {
        this.upName = upName;
    }

    public long getDuration() {
        return duration;
    }

    public void setDuration(long duration) {
        this.duration = duration;
    }

    public long getTotalSize() {
        return totalSize;
    }

    public void setTotalSize(long totalSize) {
        this.totalSize = totalSize;
    }

    public long getDownloadedSize() {
        return downloadedSize;
    }

    public void setDownloadedSize(long downloadedSize) {
        this.downloadedSize = downloadedSize;
        // 自动计算进度
        if (totalSize > 0) {
            this.progress = (int) ((downloadedSize * 100) / totalSize);
        }
    }

    public int getProgress() {
        return progress;
    }

    public void setProgress(int progress) {
        this.progress = progress;
    }

    public long getSpeed() {
        return speed;
    }

    public void setSpeed(long speed) {
        this.speed = speed;
    }

    public String getDownloadPath() {
        return downloadPath;
    }

    public void setDownloadPath(String downloadPath) {
        this.downloadPath = downloadPath;
    }

    public String getVideoUrl() {
        return videoUrl;
    }

    public void setVideoUrl(String videoUrl) {
        this.videoUrl = videoUrl;
    }

    public long getAvid() {
        return avid;
    }

    public void setAvid(long avid) {
        this.avid = avid;
    }

    public int getSegmentCount() {
        return segmentCount;
    }

    public void setSegmentCount(int segmentCount) {
        this.segmentCount = segmentCount;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    public boolean isManualPause() {
        return isManualPause;
    }

    public void setManualPause(boolean manualPause) {
        isManualPause = manualPause;
    }

    public PauseType getPauseType() {
        return pauseType;
    }

    public void setPauseType(PauseType pauseType) {
        this.pauseType = pauseType;
    }

    public long getCreateTime() {
        return createTime;
    }

    public void setCreateTime(long createTime) {
        this.createTime = createTime;
    }

    public long getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(long updateTime) {
        this.updateTime = updateTime;
    }

    public long getStartTime() {
        return startTime;
    }

    public void setStartTime(long startTime) {
        this.startTime = startTime;
    }

    public long getEndTime() {
        return endTime;
    }

    public void setEndTime(long endTime) {
        this.endTime = endTime;
    }

    public int getQuality() {
        return quality;
    }

    public void setQuality(int quality) {
        this.quality = quality;
    }

    public String getQualityName() {
        return qualityName;
    }

    public void setQualityName(String qualityName) {
        this.qualityName = qualityName;
    }

    public int getAudioQuality() {
        return audioQuality;
    }

    public void setAudioQuality(int audioQuality) {
        this.audioQuality = audioQuality;
    }

    public String getAudioQualityName() {
        return audioQualityName;
    }

    public void setAudioQualityName(String audioQualityName) {
        this.audioQualityName = audioQualityName;
    }

    public String getCodec() {
        return codec;
    }

    public void setCodec(String codec) {
        this.codec = codec;
    }

    public int getErrorCode() {
        return errorCode;
    }

    public void setErrorCode(int errorCode) {
        this.errorCode = errorCode;
    }

    public String getErrorMessage() {
        return errorMessage;
    }

    public void setErrorMessage(String errorMessage) {
        this.errorMessage = errorMessage;
    }

    // ============ 工具方法 ============

    /**
     * 生成任务ID
     */
    public static String generateTaskId(String bvid, long cid) {
        return bvid + "_" + cid;
    }

    /**
     * 格式化文件大小
     */
    public String getFormattedSize() {
        return formatFileSize(totalSize);
    }

    /**
     * 格式化已下载大小
     */
    public String getFormattedDownloadedSize() {
        return formatFileSize(downloadedSize);
    }

    /**
     * 格式化下载速度
     */
    public String getFormattedSpeed() {
        return formatFileSize(speed) + "/s";
    }

    /**
     * 格式化文件大小（静态方法）
     */
    public static String formatFileSize(long bytes) {
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

    /**
     * 格式化时长
     */
    public String getFormattedDuration() {
        return formatDuration(duration);
    }

    /**
     * 格式化时长（静态方法）
     */
    public static String formatDuration(long seconds) {
        if (seconds <= 0) {
            return "00:00";
        }
        long minutes = seconds / 60;
        long secs = seconds % 60;
        return String.format("%02d:%02d", minutes, secs);
    }

    /**
     * 计算剩余时间（秒）
     */
    public long getRemainingTime() {
        if (speed <= 0) {
            return Long.MAX_VALUE;
        }
        long remainingSize = totalSize - downloadedSize;
        // 已下载量超过总大小（大小数据竞态）时视为即将完成
        if (remainingSize <= 0) {
            return 0;
        }
        return remainingSize / speed;
    }

    /**
     * 格式化剩余时间
     */
    public String getFormattedRemainingTime() {
        long remainingTime = getRemainingTime();
        if (remainingTime == Long.MAX_VALUE) {
            return "计算中...";
        }
        if (remainingTime <= 0) {
            return "即将完成";
        }
        long minutes = remainingTime / 60;
        long seconds = remainingTime % 60;
        if (minutes > 60) {
            long hours = minutes / 60;
            minutes = minutes % 60;
            return String.format("%d小时%d分钟", hours, minutes);
        } else if (minutes > 0) {
            return String.format("%d分钟", minutes);
        } else {
            return String.format("%d秒", seconds);
        }
    }

    // ============ 数据库相关方法 ============

    /**
     * 从Cursor创建DownloadTask对象
     */
    public static DownloadTask fromCursor(Cursor cursor) {
        DownloadTask task = new DownloadTask();
        task.setTaskId(cursor.getString(cursor.getColumnIndex("task_id")));
        task.setBvid(cursor.getString(cursor.getColumnIndex("bvid")));
        task.setCid(cursor.getLong(cursor.getColumnIndex("cid")));
        task.setTitle(cursor.getString(cursor.getColumnIndex("title")));
        task.setCoverUrl(cursor.getString(cursor.getColumnIndex("cover_url")));

        // 读取分P标题（兼容旧版本数据库）
        int subTitleIndex = cursor.getColumnIndex("subtitle");
        if (subTitleIndex != -1 && !cursor.isNull(subTitleIndex)) {
            task.setSubTitle(cursor.getString(subTitleIndex));
        }

        // 读取分P序号（兼容旧版本数据库）
        int pageIndexIndex = cursor.getColumnIndex("page_index");
        if (pageIndexIndex != -1 && !cursor.isNull(pageIndexIndex)) {
            task.setPageIndex(cursor.getInt(pageIndexIndex));
        }

        // 读取视频总P数（兼容旧版本数据库）
        int totalPageCountIndex = cursor.getColumnIndex("total_page_count");
        if (totalPageCountIndex != -1 && !cursor.isNull(totalPageCountIndex)) {
            task.setTotalPageCount(cursor.getInt(totalPageCountIndex));
        }

        task.setUpName(cursor.getString(cursor.getColumnIndex("up_name")));
        task.setDuration(cursor.getLong(cursor.getColumnIndex("duration")));
        task.setTotalSize(cursor.getLong(cursor.getColumnIndex("total_size")));
        task.setDownloadedSize(cursor.getLong(cursor.getColumnIndex("downloaded_size")));
        task.setProgress(cursor.getInt(cursor.getColumnIndex("progress")));
        task.setSpeed(cursor.getLong(cursor.getColumnIndex("speed")));
        task.setDownloadPath(cursor.getString(cursor.getColumnIndex("download_path")));

        // 读取新增字段（兼容旧版本数据库）
        int videoUrlIndex = cursor.getColumnIndex("video_url");
        if (videoUrlIndex != -1 && !cursor.isNull(videoUrlIndex)) {
            task.setVideoUrl(cursor.getString(videoUrlIndex));
        }

        int avidIndex = cursor.getColumnIndex("avid");
        if (avidIndex != -1 && !cursor.isNull(avidIndex)) {
            task.setAvid(cursor.getLong(avidIndex));
        }

        task.setStatus(Status.fromValue(cursor.getInt(cursor.getColumnIndex("status"))));
        task.setManualPause(cursor.getInt(cursor.getColumnIndex("is_manual_pause")) == 1);
        task.setPauseType(PauseType.fromValue(cursor.getInt(cursor.getColumnIndex("pause_type"))));
        task.setCreateTime(cursor.getLong(cursor.getColumnIndex("create_time")));
        task.setUpdateTime(cursor.getLong(cursor.getColumnIndex("update_time")));
        task.setStartTime(cursor.getLong(cursor.getColumnIndex("start_time")));
        task.setEndTime(cursor.getLong(cursor.getColumnIndex("end_time")));
        task.setQuality(cursor.getInt(cursor.getColumnIndex("quality")));
        task.setQualityName(cursor.getString(cursor.getColumnIndex("quality_name")));
        task.setAudioQuality(cursor.getInt(cursor.getColumnIndex("audio_quality")));
        task.setAudioQualityName(cursor.getString(cursor.getColumnIndex("audio_quality_name")));
        task.setCodec(cursor.getString(cursor.getColumnIndex("codec")));
        task.setErrorCode(cursor.getInt(cursor.getColumnIndex("error_code")));
        task.setErrorMessage(cursor.getString(cursor.getColumnIndex("error_message")));
        return task;
    }

    /**
     * 转换为ContentValues（用于数据库插入/更新）
     */
    public ContentValues toContentValues() {
        ContentValues values = new ContentValues();
        values.put("task_id", taskId);
        values.put("bvid", bvid);
        values.put("cid", cid);
        values.put("title", title);
        values.put("cover_url", coverUrl);
        values.put("subtitle", subTitle);
        values.put("page_index", pageIndex);
        values.put("total_page_count", totalPageCount);
        values.put("up_name", upName);
        values.put("duration", duration);
        values.put("total_size", totalSize);
        values.put("downloaded_size", downloadedSize);
        values.put("progress", progress);
        values.put("speed", speed);
        values.put("download_path", downloadPath);
        values.put("video_url", videoUrl);
        values.put("avid", avid);
        values.put("status", status.getValue());
        values.put("is_manual_pause", isManualPause ? 1 : 0);
        values.put("pause_type", pauseType.getValue());
        values.put("create_time", createTime);
        values.put("update_time", updateTime);
        values.put("start_time", startTime);
        values.put("end_time", endTime);
        values.put("quality", quality);
        values.put("quality_name", qualityName);
        values.put("audio_quality", audioQuality);
        values.put("audio_quality_name", audioQualityName);
        values.put("codec", codec);
        values.put("error_code", errorCode);
        values.put("error_message", errorMessage);
        return values;
    }

    /**
     * 转换为JSONObject
     */
    public JSONObject toJson() {
        JSONObject json = new JSONObject();
        json.put("taskId", taskId);
        json.put("bvid", bvid);
        json.put("cid", cid);
        json.put("title", title);
        json.put("subTitle", subTitle);
        json.put("pageIndex", pageIndex);
        json.put("totalPageCount", totalPageCount);
        json.put("coverUrl", coverUrl);
        json.put("upName", upName);
        json.put("duration", duration);
        json.put("totalSize", totalSize);
        json.put("downloadedSize", downloadedSize);
        json.put("progress", progress);
        json.put("speed", speed);
        json.put("downloadPath", downloadPath);
        json.put("status", status.getValue());
        json.put("isManualPause", isManualPause);
        json.put("pauseType", pauseType.getValue());
        json.put("createTime", createTime);
        json.put("updateTime", updateTime);
        json.put("startTime", startTime);
        json.put("endTime", endTime);
        json.put("quality", quality);
        json.put("qualityName", qualityName);
        json.put("audioQuality", audioQuality);
        json.put("audioQualityName", audioQualityName);
        json.put("codec", codec);
        json.put("errorCode", errorCode);
        json.put("errorMessage", errorMessage);
        return json;
    }

    /**
     * 实现Comparable接口
     * 定义任务优先级比较规则：
     * 1. WAITING状态的任务优先级最高，按添加时间排序（先添加的先下载）
     * 2. 其他状态的任务优先级较低
     */
    @Override
    public int compareTo(DownloadTask other) {
        if (other == null) {
            return 1;
        }

        // 获取状态优先级（数值越小优先级越高）
        int thisPriority = getStatusPriority(this.status);
        int otherPriority = getStatusPriority(other.status);

        // 先按状态优先级比较
        if (thisPriority != otherPriority) {
            return thisPriority - otherPriority;
        }

        // 状态相同，按添加时间比较（先添加的任务优先级高）
        return Long.compare(this.createTime, other.createTime);
    }

    /**
     * 获取状态优先级
     * 数值越小优先级越高
     */
    private int getStatusPriority(Status status) {
        if (status == null) {
            return 100;
        }

        switch (status) {
            case WAITING:
                return 1;  // 最高优先级
            case DOWNLOADING:
                return 50; // 中等优先级（实际不会出现在队列中）
            case PAUSED:
                return 10; // 较低优先级
            case FAILED:
                return 20; // 较低优先级
            case COMPLETED:
                return 100; // 最低优先级（实际不会出现在队列中）
            default:
                return 100;
        }
    }

    @Override
    public String toString() {
        return "DownloadTask{" +
                "taskId='" + taskId + '\'' +
                ", title='" + title + '\'' +
                ", status=" + status +
                ", progress=" + progress +
                '%';
    }
}