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
        String videoUrl = task.getVideoUrl();
        if (videoUrl == null || videoUrl.isEmpty()) {
            throw new IOException("视频URL为空，无法下载");
        }

        Log.i(TAG, "使用下载URL: " + videoUrl);

        // 确保下载目录存在
        File downloadDir = new File(task.getDownloadPath()).getParentFile();
        if (downloadDir != null && !downloadDir.exists()) {
            downloadDir.mkdirs();
        }

        // 创建临时文件（下载完成后重命名）
        File tempFile = new File(task.getDownloadPath() + ".tmp");
        File finalFile = new File(task.getDownloadPath());

        // 检查是否需要断点续传
        long startPos = 0;
        if (tempFile.exists()) {
            startPos = tempFile.length();
            Log.i(TAG, "断点续传，已下载: " + DownloadTask.formatFileSize(startPos));
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
        InputStream inputStream = response.body().byteStream();
        FileOutputStream outputStream = new FileOutputStream(tempFile, startPos > 0);

        byte[] buffer = new byte[8192]; // 8KB buffer
        int bytesRead;
        long downloadedSize = startPos;
        long startTime = System.currentTimeMillis();

        // 初始化速度计算
        lastSpeedCalcTime = startTime;
        lastDownloadedSize = downloadedSize;

        try {
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
                    tempFile.delete();
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

        } finally {
            // 关闭资源
            try {
                outputStream.close();
            } catch (IOException e) {
                Log.w(TAG, "关闭输出流失败", e);
            }

            try {
                inputStream.close();
            } catch (IOException e) {
                Log.w(TAG, "关闭输入流失败", e);
            }

            // 关闭响应
            response.close();
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