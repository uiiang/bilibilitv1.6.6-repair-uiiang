package com.bilibili.tv.ui.download;

import android.content.Context;
import android.util.Log;
import android.widget.Toast;
import com.bilibili.tv.R;
import com.bilibili.tv.ui.download.model.DownloadTask;
import java.util.List;

/**
 * 视频详情页下载助手
 * 简化VideoDetailActivity的集成工作
 */
public class VideoDetailDownloadHelper {
    private static final String TAG = "VideoDetailDownloadHelper";

    /**
     * 显示下载选项对话框
     *
     * @param context 上下文
     * @param avid 视频AVID
     * @param bvid 视频BV号
     * @param cid 视频CID
     * @param title 视频标题
     * @param subTitle 分P标题（无分P时为null）
     * @param coverUrl 封面URL
     * @param upName UP主名称
     * @param duration 视频时长（秒）
     * @param pageIndex 分P序号（从1开始，单P视频传1）
     * @param totalPageCount 视频总P数（单P视频为1）
     * @param qualityList 可用的画质列表（如：["1080P", "720P", "480P"]）
     */
    public static void showDownloadDialog(
            Context context,
            long avid,
            String bvid,
            long cid,
            String title,
            String subTitle,
            String coverUrl,
            String upName,
            long duration,
            int pageIndex,
            int totalPageCount,
            List<String> qualityList
    ) {
        // 画质、音质、编码等参数已在设置页配置，点击下载按钮直接开始下载，不再弹出画质选择对话框
        Log.i(TAG, "直接开始下载(使用设置中配置的画质): " + title);

        // 从SharedPreferences读取默认画质设置
        android.content.SharedPreferences prefs = context.getSharedPreferences("download_settings", Context.MODE_PRIVATE);
        int defaultQuality = prefs.getInt("quality", 80); // 默认1080P

        // 转换为画质名称并直接开始下载
        String qualityStr = convertQualityIdToString(defaultQuality);
        startDownload(context, avid, bvid, cid, title, subTitle, coverUrl, upName, duration, pageIndex, totalPageCount, qualityStr);
    }

    /**
     * 将画质ID转换为字符串
     */
    private static String convertQualityIdToString(int qualityId) {
        switch (qualityId) {
            case 80:
                return "1080P 高清";
            case 64:
                return "720P 高清";
            case 32:
                return "480P 清晰";
            case 16:
                return "360P 流畅";
            default:
                return "1080P 高清";
        }
    }

    /**
     * 开始下载视频（公开方法，供分P选择Activity调用）
     *
     * @param pageIndex 分P序号（从1开始，单P视频传1）
     * @param totalPageCount 视频总P数（单P视频为1）
     */
    public static void startDownload(
            Context context,
            long avid,
            String bvid,
            long cid,
            String title,
            String subTitle,
            String coverUrl,
            String upName,
            long duration,
            int pageIndex,
            int totalPageCount,
            String quality
    ) {
        Log.i(TAG, "开始下载: " + title + ", 画质: " + quality);

        // ========== 关键修复：下载前存储检查 ==========
        // 1. 检查下载路径是否已设置
        String downloadBasePath = getDownloadBasePath(context);
        if (downloadBasePath == null || downloadBasePath.isEmpty()) {
            Log.w(TAG, "下载路径未设置");
            showErrorDialog(context, "无法下载", "请先在设置中配置下载保存位置");
            return;
        }

        // 2. 检查存储设备是否挂载
        java.io.File downloadDir = new java.io.File(downloadBasePath);
        if (!downloadDir.exists() || !downloadDir.isDirectory()) {
            Log.w(TAG, "存储设备未挂载或路径无效: " + downloadBasePath);
            showErrorDialog(context, "无法下载", "外接存储设备未挂载或路径无效");
            return;
        }

        // 3. 检查存储设备是否可写
        if (!downloadDir.canWrite()) {
            Log.w(TAG, "存储设备不可写: " + downloadBasePath);
            showErrorDialog(context, "无法下载", "存储设备不可写，请检查权限");
            return;
        }

        // 4. 粗略检查存储空间（基于视频时长估算）
        long estimatedSize = estimateFileSize(duration);
        long availableSpace = downloadDir.getUsableSpace();
        if (availableSpace < estimatedSize) {
            Log.w(TAG, "存储空间不足: 需要 " + estimatedSize + "，可用 " + availableSpace);
            showErrorDialog(context, "存储空间不足",
                "需要: " + formatFileSize(estimatedSize) + "\n可用: " + formatFileSize(availableSpace));
            return;
        }

        Log.i(TAG, "存储检查通过，路径: " + downloadBasePath + ", 可用空间: " + formatFileSize(availableSpace));
        // ========== 存储检查结束 ==========

        // 在后台线程中获取下载URL并添加任务
        new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    // 画质字符串转换为ID
                    int qualityId = convertQualityToId(quality);
                    Log.i(TAG, "画质ID: " + qualityId);

                    // 调用API获取下载URL
                    String videoUrl = BilibiliDownloadApi.getDownloadUrl(context, avid, bvid, cid, qualityId);
                    if (videoUrl == null || videoUrl.isEmpty()) {
                        Log.e(TAG, "获取下载URL失败");
                        // 在主线程中显示错误提示
                        ((android.app.Activity) context).runOnUiThread(new Runnable() {
                            @Override
                            public void run() {
                                Toast.makeText(context, "获取下载URL失败", Toast.LENGTH_SHORT).show();
                            }
                        });
                        return;
                    }

                    Log.i(TAG, "获取到下载URL: " + videoUrl);

                    // 创建下载任务
                    DownloadTask task = new DownloadTask();
                    task.setTaskId(DownloadTask.generateTaskId(bvid, cid));
                    task.setBvid(bvid);
                    task.setCid(cid);
                    task.setAvid(avid);
                    task.setTitle(title);
                    task.setSubTitle(subTitle);
                    task.setPageIndex(pageIndex);
                    task.setTotalPageCount(totalPageCount);
                    task.setCoverUrl(coverUrl);
                    task.setUpName(upName);
                    task.setDuration(duration);
                    task.setQuality(qualityId);
                    task.setQualityName(quality);
                    task.setVideoUrl(videoUrl);
                    task.setStatus(DownloadTask.Status.WAITING);
                    task.setCreateTime(System.currentTimeMillis());
                    task.setUpdateTime(System.currentTimeMillis());

                    // 设置下载路径（使用bvid作为文件夹名，同一视频的多个分P保存到同一文件夹）
                    String downloadPath = getDownloadPath(context, bvid, cid, title, subTitle, pageIndex);
                    task.setDownloadPath(downloadPath);

                    // 添加到下载管理器
                    DownloadManager.getInstance(context).addTask(task);

                    // 在主线程中显示成功提示
                    ((android.app.Activity) context).runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            Toast.makeText(context, "已添加到下载列表", Toast.LENGTH_SHORT).show();
                        }
                    });

                } catch (Exception e) {
                    Log.e(TAG, "添加下载任务失败: " + e.getMessage(), e);
                    // 在主线程中显示错误提示
                    ((android.app.Activity) context).runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            Toast.makeText(context, "添加下载任务失败: " + e.getMessage(), Toast.LENGTH_SHORT).show();
                        }
                    });
                }
            }
        }).start();
    }

    /**
     * 将画质字符串转换为ID
     */
    private static int convertQualityToId(String quality) {
        if (quality == null) {
            return 80; // 默认1080P
        }

        if (quality.contains("1080")) {
            return 80;
        } else if (quality.contains("720")) {
            return 64;
        } else if (quality.contains("480")) {
            return 32;
        } else if (quality.contains("360")) {
            return 16;
        }

        return 80; // 默认1080P
    }

    /**
     * 显示错误对话框
     */
    private static void showErrorDialog(Context context, String title, String message) {
        if (context instanceof android.app.Activity) {
            ((android.app.Activity) context).runOnUiThread(new Runnable() {
                @Override
                public void run() {
                    new android.app.AlertDialog.Builder(context)
                        .setTitle(title)
                        .setMessage(message)
                        .setPositiveButton("确定", null)
                        .show();
                }
            });
        }
    }

    /**
     * 估算文件大小（基于视频时长）
     * 假设1080P视频平均码率为2Mbps
     */
    private static long estimateFileSize(long duration) {
        if (duration <= 0) {
            return 100 * 1024 * 1024; // 默认100MB
        }

        // 2Mbps * duration(秒) / 8 = 字节数
        // 再增加20%作为缓冲
        long estimatedBytes = (long) (2 * 1024 * 1024 * duration / 8 * 1.2);
        return estimatedBytes;
    }

    /**
     * 格式化文件大小
     */
    private static String formatFileSize(long bytes) {
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
     * 获取下载基础路径（从SharedPreferences读取）
     */
    private static String getDownloadBasePath(Context context) {
        // 从SharedPreferences获取下载路径
        android.content.SharedPreferences prefs = context.getSharedPreferences("download_settings", android.content.Context.MODE_PRIVATE);
        String basePath = prefs.getString("download_path", "");

        if (basePath == null || basePath.isEmpty()) {
            // 如果未设置，返回null（触发设置提示）
            return null;
        }

        return basePath;
    }

    /**
     * 获取下载路径（带文件名）
     * 使用bvid作为文件夹名，同一视频的多个分P保存到同一文件夹
     * 文件名规则：
     *   单P：BV号_视频标题(前10字).mp4
     *   分P：BV号_分P标题(前10字)_分P序号.mp4
     */
    private static String getDownloadPath(Context context, String bvid, long cid, String title, String subTitle, int pageIndex) {
        // 从SharedPreferences获取下载路径
        android.content.SharedPreferences prefs = context.getSharedPreferences("download_settings", android.content.Context.MODE_PRIVATE);
        String basePath = prefs.getString("download_path", "");

        if (basePath == null || basePath.isEmpty()) {
            // 如果未设置，返回null
            return null;
        }

        // 构建完整路径：basePath/bvid/文件名.mp4
        // 这样同一视频的多个分P会保存到同一文件夹中
        String videoDir = basePath + "/" + bvid;

        // 创建视频文件夹（如果不存在）
        java.io.File dir = new java.io.File(videoDir);
        if (!dir.exists()) {
            dir.mkdirs();
        }

        return videoDir + "/" + buildFileName(bvid, title, subTitle, pageIndex);
    }

    /**
     * 构建下载文件名
     * 单P：BV号_视频标题(前10字).mp4
     * 分P：BV号_分P标题(前10字)_分P序号.mp4
     */
    private static String buildFileName(String bvid, String title, String subTitle, int pageIndex) {
        boolean isMultiP = subTitle != null && !subTitle.isEmpty();
        String namePart = isMultiP ? subTitle : title;
        String safe = sanitizeFileName(namePart);
        if (safe.length() > 10) {
            safe = safe.substring(0, 10);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(bvid).append("_").append(safe);
        if (isMultiP) {
            sb.append("_").append(pageIndex);
        }
        sb.append(".mp4");
        return sb.toString();
    }

    /**
     * 清理文件名中的非法字符（删除无法作为文件名的特殊字符）
     */
    private static String sanitizeFileName(String name) {
        if (name == null) {
            return "";
        }
        // 删除非法字符：\/:*?"<>| 以及换行、制表符等控制字符
        return name.replaceAll("[\\\\/:*?\"<>|\\r\\n\\t]", "");
    }

    /**
     * 检查任务是否已存在
     */
    public static boolean isTaskExists(Context context, String bvid, long cid) {
        DownloadTask task = DownloadManager.getInstance(context)
            .getTaskByBvidAndCid(bvid, cid);
        return task != null;
    }

    /**
     * 获取任务状态
     */
    public static String getTaskStatus(Context context, String bvid, long cid) {
        DownloadTask task = DownloadManager.getInstance(context)
            .getTaskByBvidAndCid(bvid, cid);

        if (task == null) {
            return null;
        }

        switch (task.getStatus()) {
            case WAITING:
                return "等待中";
            case DOWNLOADING:
                return "下载中 " + task.getProgress() + "%";
            case PAUSED:
                return "已暂停";
            case COMPLETED:
                return "已完成";
            case FAILED:
                return "下载失败";
            default:
                return "未知状态";
        }
    }
}