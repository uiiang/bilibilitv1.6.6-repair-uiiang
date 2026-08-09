package com.bilibili.tv.ui.download;

import android.content.Context;
import android.util.Log;
import com.bilibili.tv.ui.download.model.DownloadTask;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import okhttp3.Call;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

/**
 * 下载工作线程
 * 负责实际执行下载任务，支持断点续传
 */
public class DownloadWorker implements Runnable {
    private static final String TAG = "DownloadWorker";

    // 上下文
    private Context context;

    // 下载任务
    private DownloadTask task;

    // 下载回调
    private DownloadCallback callback;

    // OkHttp客户端
    private OkHttpClient httpClient;

    // 下载Call（用于取消）
    private Call downloadCall;

    // 是否暂停
    private volatile boolean isPaused = false;

    // 是否取消
    private volatile boolean isCancelled = false;

    // 上次进度更新时间（用于节流）
    private long lastProgressUpdateTime = 0;
    private static final long PROGRESS_UPDATE_INTERVAL = 500; // 500ms

    // 下载速度计算
    private long lastSpeedCalcTime = 0;
    private long lastDownloadedSize = 0;
    private long currentSpeed = 0;

    /**
     * 下载回调接口
     */
    public interface DownloadCallback {
        void onProgress(DownloadTask task, long downloadedSize, int progress, long speed);
        void onComplete(DownloadTask task);
        void onError(DownloadTask task, int errorCode, String errorMessage);
    }

    /**
     * 构造函数
     */
    public DownloadWorker(Context context, DownloadTask task, DownloadCallback callback) {
        this.context = context;
        this.task = task;
        this.callback = callback;

        // 创建OkHttp客户端（设置超时时间）
        this.httpClient = new OkHttpClient.Builder()
            .connectTimeout(30, java.util.concurrent.TimeUnit.SECONDS)
            .readTimeout(30, java.util.concurrent.TimeUnit.SECONDS)
            .writeTimeout(30, java.util.concurrent.TimeUnit.SECONDS)
            .build();
    }

    @Override
    public void run() {
        Log.i(TAG, "开始下载任务: " + task.getTitle());

        try {
            // 执行下载
            downloadFile();

        } catch (Exception e) {
            Log.e(TAG, "下载异常: " + e.getMessage(), e);

            if (!isPaused && !isCancelled) {
                // 真正的错误，通知回调
                notifyError(1000, "下载失败: " + e.getMessage());
            }
        }
    }

    /**
     * 下载文件
     */
    private void downloadFile() throws IOException {
        // 获取实际的视频下载URL
        // 改造：任务添加时不再预取URL，真正开始下载时才请求获取（并发数由下载队列控制，最多3个同时请求），
        // 将URL获取分散到各任务启动时，避免批量添加多个分P时并发请求playurl接口触发风控
        String videoUrl = task.getVideoUrl();
        if (videoUrl == null || videoUrl.isEmpty()) {
            videoUrl = BilibiliDownloadApi.getDownloadUrl(context, task.getAvid(), task.getBvid(), task.getCid(), task.getQuality());
            if (videoUrl == null || videoUrl.isEmpty()) {
                throw new IOException("获取下载URL失败");
            }
            task.setVideoUrl(videoUrl);
            // 回写数据库，避免重启/暂停恢复后URL丢失重复获取
            try {
                com.bilibili.tv.ui.download.db.DownloadDatabaseHelper.getInstance(context)
                        .updateVideoUrl(task.getTaskId(), videoUrl);
            } catch (Exception e) {
                Log.w(TAG, "回写下载URL到数据库失败: " + e.getMessage());
            }
            Log.i(TAG, "获取下载URL成功: " + videoUrl);
        }

        Log.i(TAG, "使用下载URL: " + videoUrl);

        // 下载目标：可能是文件路径或SAF的content:// URI（外接U盘，Android 8.0+必须走SAF）
        String downloadPath = task.getDownloadPath();
        if (downloadPath == null || downloadPath.isEmpty()) {
            throw new IOException("下载路径为空");
        }
        boolean isSaf = downloadPath.startsWith("content://");
        Log.i(TAG, "下载目标: " + downloadPath + (isSaf ? " (SAF)" : " (File)"));

        // 检查是否需要断点续传
        long startPos = 0;
        File tempFile = null;
        File finalFile = null;
        if (isSaf) {
            // SAF：直接使用目标URI，断点续传按文件已写入大小
            try {
                long size = SafFileHelper.getFileSize(context, downloadPath);
                if (size > 0) {
                    startPos = size;
                    Log.i(TAG, "SAF断点续传，已下载: " + DownloadTask.formatFileSize(startPos));
                }
            } catch (Exception e) {
                Log.w(TAG, "读取SAF文件大小失败: " + e.getMessage());
            }
        } else {
            // File：确保下载目录存在，使用临时文件
            File downloadDir = new File(downloadPath).getParentFile();
            if (downloadDir != null && !downloadDir.exists()) {
                downloadDir.mkdirs();
            }
            tempFile = new File(downloadPath + ".tmp");
            finalFile = new File(downloadPath);
            if (tempFile.exists()) {
                startPos = tempFile.length();
                Log.i(TAG, "断点续传，已下载: " + DownloadTask.formatFileSize(startPos));
            }
        }

        // 构建请求（使用实际的视频URL）
        Request.Builder requestBuilder = new Request.Builder()
            .url(videoUrl) // 使用实际的视频下载URL
            .addHeader("User-Agent", "BilibiliTV/1.0")
            .addHeader("Referer", "https://www.bilibili.com");

        // 添加Range头（断点续传）
        if (startPos > 0) {
            requestBuilder.addHeader("Range", "bytes=" + startPos + "-");
        }

        Request request = requestBuilder.build();

        // 发起请求
        downloadCall = httpClient.newCall(request);
        Response response = downloadCall.execute();

        // 检查响应
        if (!response.isSuccessful()) {
            int code = response.code();
            String message = "HTTP错误: " + code;

            if (code == 404) {
                message = "资源不存在(404)";
            } else if (code == 403) {
                message = "访问被拒绝(403)";
            }

            throw new IOException(message);
        }

        // 获取文件总大小
        long contentLength = response.body().contentLength();
        if (startPos > 0 && response.code() == 206) {
            // 断点续传，contentLength是剩余部分的大小
            contentLength += startPos;
        }

        if (contentLength <= 0) {
            contentLength = task.getTotalSize(); // 使用预估大小
        }

        task.setTotalSize(contentLength);
        Log.i(TAG, "文件总大小: " + DownloadTask.formatFileSize(contentLength));

        // 开始下载
        // 关键修复：inputStream/outputStream 的获取也纳入 try-finally 范围，
        // 避免打开输出流失败（磁盘满/U盘拔出/权限问题）时 InputStream 与 Response 泄漏连接与文件描述符
        InputStream inputStream = null;
        java.io.OutputStream outputStream = null;
        try {
            inputStream = response.body().byteStream();
            if (isSaf) {
                // SAF：通过ContentResolver打开输出流，"wa"追加模式实现断点续传
                String mode = startPos > 0 ? "wa" : "w";
                outputStream = context.getContentResolver().openOutputStream(
                        android.net.Uri.parse(downloadPath), mode);
                if (outputStream == null) {
                    throw new IOException("无法打开SAF输出流");
                }
            } else {
                outputStream = new FileOutputStream(tempFile, startPos > 0);
            }

            byte[] buffer = new byte[8192]; // 8KB buffer
            int bytesRead;
            long downloadedSize = startPos;
            long startTime = System.currentTimeMillis();

            // 初始化速度计算
            lastSpeedCalcTime = startTime;
            lastDownloadedSize = downloadedSize;

            while ((bytesRead = inputStream.read(buffer)) != -1) {
                // 检查是否暂停或取消
                if (isPaused) {
                    Log.i(TAG, "下载已暂停: " + task.getTitle());
                    outputStream.flush();
                    return;
                }

                if (isCancelled) {
                    Log.i(TAG, "下载已取消: " + task.getTitle());
                    outputStream.close();
                    if (isSaf) {
                        // SAF：删除已创建的content URI文件
                        try {
                            SafFileHelper.delete(context, downloadPath);
                        } catch (Exception e) {
                            Log.w(TAG, "SAF取消删除文件失败: " + e.getMessage());
                        }
                    } else if (tempFile != null) {
                        tempFile.delete();
                    }
                    return;
                }

                // 写入文件
                outputStream.write(buffer, 0, bytesRead);
                downloadedSize += bytesRead;

                // 计算进度
                int progress = 0;
                if (contentLength > 0) {
                    progress = (int) ((downloadedSize * 100) / contentLength);
                }

                // 计算下载速度
                long currentTime = System.currentTimeMillis();
                long elapsedTime = currentTime - lastSpeedCalcTime;

                if (elapsedTime >= 1000) { // 每秒计算一次速度
                    long downloadedInPeriod = downloadedSize - lastDownloadedSize;
                    currentSpeed = (downloadedInPeriod * 1000) / elapsedTime;

                    lastSpeedCalcTime = currentTime;
                    lastDownloadedSize = downloadedSize;
                }

                // 节流：每500ms更新一次进度
                if (currentTime - lastProgressUpdateTime >= PROGRESS_UPDATE_INTERVAL) {
                    notifyProgress(downloadedSize, progress, currentSpeed);
                    lastProgressUpdateTime = currentTime;
                }
            }

            // 下载完成
            outputStream.flush();
            outputStream.close();
            inputStream.close();

            if (isSaf) {
                // SAF：文件已直接写入目标URI，无需重命名
                long totalTime = System.currentTimeMillis() - startTime;
                long avgSpeed = (downloadedSize * 1000) / totalTime;
                Log.i(TAG, "SAF下载完成: " + task.getTitle() + ", 平均速度: " + DownloadTask.formatFileSize(avgSpeed) + "/s");

                // 通知完成
                notifyComplete();
            } else {
                // 重命名临时文件
                if (tempFile.renameTo(finalFile)) {
                    Log.i(TAG, "下载完成: " + task.getTitle());

                    // 计算总耗时
                    long totalTime = System.currentTimeMillis() - startTime;
                    long avgSpeed = (downloadedSize * 1000) / totalTime;
                    Log.i(TAG, "平均速度: " + DownloadTask.formatFileSize(avgSpeed) + "/s");

                    // 通知完成
                    notifyComplete();
                } else {
                    throw new IOException("重命名文件失败");
                }
            }

        } finally {
            // 关闭资源（outputStream/inputStream 可能因打开失败为 null，需判空）
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (IOException e) {
                    Log.w(TAG, "关闭输出流失败", e);
                }
            }

            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    Log.w(TAG, "关闭输入流失败", e);
                }
            }

            // 关闭响应
            try {
                response.close();
            } catch (Exception e) {
                Log.w(TAG, "关闭响应失败", e);
            }
        }
    }

    /**
     * 暂停下载
     */
    public void pause() {
        Log.i(TAG, "暂停下载: " + task.getTitle());
        isPaused = true;

        // 取消网络请求
        if (downloadCall != null && !downloadCall.isCanceled()) {
            downloadCall.cancel();
        }
    }

    /**
     * 取消下载
     */
    public void cancel() {
        Log.i(TAG, "取消下载: " + task.getTitle());
        isCancelled = true;

        // 取消网络请求
        if (downloadCall != null && !downloadCall.isCanceled()) {
            downloadCall.cancel();
        }
    }

    // ============ 通知方法 ============

    /**
     * 通知进度更新
     */
    private void notifyProgress(long downloadedSize, int progress, long speed) {
        if (callback != null) {
            callback.onProgress(task, downloadedSize, progress, speed);
        }
    }

    /**
     * 通知下载完成
     */
    private void notifyComplete() {
        if (callback != null) {
            callback.onComplete(task);
        }
    }

    /**
     * 通知下载错误
     */
    private void notifyError(int errorCode, String errorMessage) {
        if (callback != null) {
            callback.onError(task, errorCode, errorMessage);
        }
    }
}