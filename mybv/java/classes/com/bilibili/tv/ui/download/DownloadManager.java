package com.bilibili.tv.ui.download;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.bilibili.tv.ui.download.db.DownloadDatabaseHelper;
import com.bilibili.tv.ui.download.model.DownloadTask;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.PriorityBlockingQueue;

/**
 * 下载管理器
 * 负责管理所有下载任务，包括任务的添加、删除、暂停、恢复等操作
 */
public class DownloadManager {
    private static final String TAG = "DownloadManager";

    // 单例实例
    private static DownloadManager instance;

    // 上下文
    private Context context;

    // 数据库帮助类
    private DownloadDatabaseHelper databaseHelper;

    // 下载线程池（最多3个同时下载）
    private ExecutorService downloadExecutor;
    private static final int MAX_CONCURRENT_DOWNLOADS = 3;

    // 活动的下载任务（taskId -> DownloadWorker）
    private ConcurrentHashMap<String, DownloadWorker> activeWorkers;

    // 等待队列（按添加时间排序）
    private PriorityBlockingQueue<DownloadTask> waitingQueue;

    // 进度回调监听器列表
    private List<DownloadProgressListener> progressListeners;

    // 主线程Handler（用于回调到主线程）
    private Handler mainHandler;

    /**
     * 下载进度监听器接口
     */
    public interface DownloadProgressListener {
        void onProgressUpdate(DownloadTask task);
        void onStatusChanged(DownloadTask task);
        void onError(DownloadTask task, int errorCode, String errorMessage);
    }

    /**
     * 私有构造函数（单例模式）
     */
    private DownloadManager(Context context) {
        this.context = context.getApplicationContext();
        this.databaseHelper = DownloadDatabaseHelper.getInstance(context);
        this.downloadExecutor = Executors.newFixedThreadPool(MAX_CONCURRENT_DOWNLOADS);
        this.activeWorkers = new ConcurrentHashMap<>();
        this.waitingQueue = new PriorityBlockingQueue<>();
        this.progressListeners = new ArrayList<>();
        this.mainHandler = new Handler(Looper.getMainLooper());

        // 初始化：恢复未完成的下载任务
        restoreUnfinishedTasks();
    }

    /**
     * 获取单例实例
     */
    public static synchronized DownloadManager getInstance(Context context) {
        if (instance == null) {
            instance = new DownloadManager(context);
        }
        return instance;
    }

    /**
     * 添加下载任务
     */
    public void addTask(DownloadTask task) {
        Log.i(TAG, "添加下载任务: " + task.getTitle());

        // 设置初始状态
        task.setTaskId(DownloadTask.generateTaskId(task.getBvid(), task.getCid()));
        task.setStatus(DownloadTask.Status.WAITING);
        task.setCreateTime(System.currentTimeMillis());
        task.setUpdateTime(System.currentTimeMillis());

        // 检查是否已存在
        DownloadTask existingTask = databaseHelper.getTask(task.getTaskId());
        if (existingTask != null) {
            Log.w(TAG, "任务已存在: " + task.getTaskId());
            // 如果任务已存在但失败，允许重新下载
            if (existingTask.getStatus() == DownloadTask.Status.FAILED) {
                databaseHelper.deleteTask(task.getTaskId());
            } else {
                return;
            }
        }

        // 插入数据库
        databaseHelper.insertTask(task);

        // 添加到等待队列
        waitingQueue.offer(task);

        // 尝试开始下载
        scheduleNextTask();

        // 通知状态变化
        notifyStatusChanged(task);
    }

    /**
     * 暂停下载任务（手动暂停）
     */
    public void pauseTask(String taskId) {
        Log.i(TAG, "暂停下载任务: " + taskId);

        DownloadTask task = databaseHelper.getTask(taskId);
        if (task == null) {
            Log.w(TAG, "任务不存在: " + taskId);
            return;
        }

        // 设置为手动暂停
        task.setManualPause(true);
        task.setPauseType(DownloadTask.PauseType.MANUAL);
        task.setStatus(DownloadTask.Status.PAUSED);
        task.setUpdateTime(System.currentTimeMillis());

        // 更新数据库
        databaseHelper.setManualPause(taskId, true);

        // 停止下载Worker
        DownloadWorker worker = activeWorkers.get(taskId);
        if (worker != null) {
            worker.pause();
            activeWorkers.remove(taskId);
        }

        // 从等待队列中移除
        waitingQueue.remove(task);

        // 通知状态变化
        notifyStatusChanged(task);
    }

    /**
     * 恢复下载任务
     */
    public void resumeTask(String taskId) {
        Log.i(TAG, "恢复下载任务: " + taskId);

        DownloadTask task = databaseHelper.getTask(taskId);
        if (task == null) {
            Log.w(TAG, "任务不存在: " + taskId);
            return;
        }

        // 清除暂停状态
        task.setManualPause(false);
        task.setPauseType(DownloadTask.PauseType.NONE);
        task.setStatus(DownloadTask.Status.WAITING);
        task.setUpdateTime(System.currentTimeMillis());

        // 更新数据库
        databaseHelper.setManualPause(taskId, false);
        databaseHelper.updateStatus(taskId, DownloadTask.Status.WAITING);

        // 添加到等待队列
        waitingQueue.offer(task);

        // 尝试开始下载
        scheduleNextTask();

        // 通知状态变化
        notifyStatusChanged(task);
    }

    /**
     * 删除下载任务
     */
    public void deleteTask(String taskId) {
        Log.i(TAG, "删除下载任务: " + taskId);

        // 停止下载Worker
        DownloadWorker worker = activeWorkers.get(taskId);
        if (worker != null) {
            worker.cancel();
            activeWorkers.remove(taskId);
        }

        // 从等待队列中移除
        DownloadTask task = databaseHelper.getTask(taskId);
        if (task != null) {
            waitingQueue.remove(task);
        }

        // 从数据库中删除
        databaseHelper.deleteTask(taskId);

        // 通知状态变化
        if (task != null) {
            notifyStatusChanged(task);
        }
    }

    /**
     * 重试失败的下载任务
     */
    public void retryTask(String taskId) {
        Log.i(TAG, "重试下载任务: " + taskId);

        DownloadTask task = databaseHelper.getTask(taskId);
        if (task == null) {
            Log.w(TAG, "任务不存在: " + taskId);
            return;
        }

        // 重置任务状态
        task.setStatus(DownloadTask.Status.WAITING);
        task.setErrorCode(0);
        task.setErrorMessage(null);
        task.setUpdateTime(System.currentTimeMillis());

        // 更新数据库
        databaseHelper.updateTask(task);

        // 添加到等待队列
        waitingQueue.offer(task);

        // 尝试开始下载
        scheduleNextTask();

        // 通知状态变化
        notifyStatusChanged(task);
    }

    /**
     * 暂停所有下载任务（被动暂停）
     */
    public void pauseAllByNetworkError() {
        Log.i(TAG, "网络中断，暂停所有下载任务");

        // 暂停所有活动的下载
        for (DownloadWorker worker : activeWorkers.values()) {
            worker.pause();
        }
        activeWorkers.clear();

        // 更新数据库中的所有下载中任务状态
        List<DownloadTask> downloadingTasks = databaseHelper.getDownloadingTasks();
        for (DownloadTask task : downloadingTasks) {
            task.setStatus(DownloadTask.Status.PAUSED);
            task.setPauseType(DownloadTask.PauseType.NETWORK_ERROR);
            task.setUpdateTime(System.currentTimeMillis());
            databaseHelper.updateTask(task);
            notifyStatusChanged(task);
        }

        // 清空等待队列
        waitingQueue.clear();
    }

    /**
     * 网络恢复后自动恢复下载
     */
    public void resumeOnNetworkResumed() {
        Log.i(TAG, "网络恢复，自动恢复下载");

        // 获取所有因网络中断而暂停的任务
        List<DownloadTask> networkPausedTasks = databaseHelper.getTasksByPauseType(
            DownloadTask.PauseType.NETWORK_ERROR
        );

        for (DownloadTask task : networkPausedTasks) {
            // 跳过手动暂停的任务
            if (task.isManualPause()) {
                Log.d(TAG, "跳过手动暂停的任务: " + task.getTitle());
                continue;
            }

            // 恢复下载
            task.setStatus(DownloadTask.Status.WAITING);
            task.setPauseType(DownloadTask.PauseType.NONE);
            task.setUpdateTime(System.currentTimeMillis());
            databaseHelper.updateTask(task);

            // 添加到等待队列
            waitingQueue.offer(task);

            // 通知状态变化
            notifyStatusChanged(task);
        }

        // 尝试开始下载
        scheduleNextTask();
    }

    /**
     * 应用退出时暂停所有下载
     */
    public void pauseAllOnAppExit() {
        Log.i(TAG, "应用退出，暂停所有下载");

        // 暂停所有活动的下载
        for (DownloadWorker worker : activeWorkers.values()) {
            worker.pause();
        }
        activeWorkers.clear();

        // 更新数据库中的所有下载中任务状态
        List<DownloadTask> downloadingTasks = databaseHelper.getDownloadingTasks();
        for (DownloadTask task : downloadingTasks) {
            task.setStatus(DownloadTask.Status.PAUSED);
            task.setPauseType(DownloadTask.PauseType.APP_EXIT);
            task.setUpdateTime(System.currentTimeMillis());
            databaseHelper.updateTask(task);
        }

        // 清空等待队列
        waitingQueue.clear();
    }

    /**
     * 应用启动时恢复未完成的任务
     */
    private void restoreUnfinishedTasks() {
        Log.i(TAG, "恢复未完成的下载任务");

        // 获取所有下载中状态的任务
        List<DownloadTask> downloadingTasks = databaseHelper.getDownloadingTasks();

        for (DownloadTask task : downloadingTasks) {
            // 检查是否是被动暂停（非手动暂停）
            if (!task.isManualPause()) {
                // 添加到等待队列，等待恢复
                task.setStatus(DownloadTask.Status.WAITING);
                databaseHelper.updateTask(task);
                waitingQueue.offer(task);
            }
        }

        // 尝试开始下载
        scheduleNextTask();
    }

    /**
     * 调度下一个下载任务
     */
    private void scheduleNextTask() {
        // 检查是否有空闲的下载线程
        if (activeWorkers.size() >= MAX_CONCURRENT_DOWNLOADS) {
            return;
        }

        // 从等待队列中取出下一个任务
        DownloadTask task = waitingQueue.poll();
        if (task == null) {
            return;
        }

        // 检查任务状态
        if (task.getStatus() != DownloadTask.Status.WAITING) {
            // 任务已不在等待状态，尝试下一个
            scheduleNextTask();
            return;
        }

        // 开始下载
        startDownload(task);
    }

    /**
     * 开始下载任务
     */
    private void startDownload(DownloadTask task) {
        Log.i(TAG, "开始下载: " + task.getTitle());

        // 更新任务状态
        task.setStatus(DownloadTask.Status.DOWNLOADING);
        task.setStartTime(System.currentTimeMillis());
        task.setUpdateTime(System.currentTimeMillis());
        databaseHelper.updateTask(task);

        // 创建DownloadWorker
        DownloadWorker worker = new DownloadWorker(context, task, new DownloadWorker.DownloadCallback() {
            @Override
            public void onProgress(DownloadTask task, long downloadedSize, int progress, long speed) {
                // 更新进度
                task.setDownloadedSize(downloadedSize);
                task.setProgress(progress);
                task.setSpeed(speed);
                task.setUpdateTime(System.currentTimeMillis());

                // 更新数据库
                databaseHelper.updateProgress(task.getTaskId(), downloadedSize, progress, speed);

                // 通知进度更新
                notifyProgressUpdate(task);
            }

            @Override
            public void onComplete(DownloadTask task) {
                Log.i(TAG, "下载完成: " + task.getTitle());

                // 更新任务状态
                task.setStatus(DownloadTask.Status.COMPLETED);
                task.setProgress(100);
                task.setEndTime(System.currentTimeMillis());
                task.setUpdateTime(System.currentTimeMillis());
                databaseHelper.updateTask(task);

                // 从活动列表中移除
                activeWorkers.remove(task.getTaskId());

                // 通知状态变化
                notifyStatusChanged(task);

                // 调度下一个任务
                scheduleNextTask();
            }

            @Override
            public void onError(DownloadTask task, int errorCode, String errorMessage) {
                Log.e(TAG, "下载失败: " + task.getTitle() + ", 错误: " + errorMessage);

                // 更新任务状态
                task.setStatus(DownloadTask.Status.FAILED);
                task.setErrorCode(errorCode);
                task.setErrorMessage(errorMessage);
                task.setEndTime(System.currentTimeMillis());
                task.setUpdateTime(System.currentTimeMillis());
                databaseHelper.setError(task.getTaskId(), errorCode, errorMessage);

                // 从活动列表中移除
                activeWorkers.remove(task.getTaskId());

                // 通知错误
                notifyError(task, errorCode, errorMessage);

                // 调度下一个任务
                scheduleNextTask();
            }
        });

        // 添加到活动列表
        activeWorkers.put(task.getTaskId(), worker);

        // 提交到线程池执行
        downloadExecutor.execute(worker);

        // 通知状态变化
        notifyStatusChanged(task);
    }

    // ============ 查询方法 ============

    /**
     * 获取所有下载任务
     */
    public List<DownloadTask> getAllTasks() {
        return databaseHelper.getAllTasks();
    }

    /**
     * 获取下载中的任务（包括等待中、下载中、已暂停）
     */
    public List<DownloadTask> getDownloadingTasks() {
        return databaseHelper.getDownloadingTasks();
    }

    /**
     * 获取已完成的任务
     */
    public List<DownloadTask> getCompletedTasks() {
        return databaseHelper.getCompletedTasks();
    }

    /**
     * 获取失败的任务
     */
    public List<DownloadTask> getFailedTasks() {
        return databaseHelper.getFailedTasks();
    }

    /**
     * 根据任务ID获取任务
     */
    public DownloadTask getTask(String taskId) {
        return databaseHelper.getTask(taskId);
    }

    /**
     * 根据bvid和cid获取任务
     */
    public DownloadTask getTaskByBvidAndCid(String bvid, long cid) {
        return databaseHelper.getTaskByBvidAndCid(bvid, cid);
    }

    /**
     * 获取下载中的任务数量
     */
    public int getDownloadingCount() {
        return databaseHelper.getDownloadingCount();
    }

    /**
     * 获取已完成的任务数量
     */
    public int getCompletedCount() {
        return databaseHelper.getCompletedCount();
    }

    // ============ 监听器管理 ============

    /**
     * 添加进度监听器
     */
    public void addProgressListener(DownloadProgressListener listener) {
        if (!progressListeners.contains(listener)) {
            progressListeners.add(listener);
        }
    }

    /**
     * 移除进度监听器
     */
    public void removeProgressListener(DownloadProgressListener listener) {
        progressListeners.remove(listener);
    }

    /**
     * 通知进度更新
     */
    private void notifyProgressUpdate(DownloadTask task) {
        mainHandler.post(new Runnable() {
            @Override
            public void run() {
                for (DownloadProgressListener listener : progressListeners) {
                    listener.onProgressUpdate(task);
                }
            }
        });
    }

    /**
     * 通知状态变化
     */
    private void notifyStatusChanged(DownloadTask task) {
        mainHandler.post(new Runnable() {
            @Override
            public void run() {
                for (DownloadProgressListener listener : progressListeners) {
                    listener.onStatusChanged(task);
                }
            }
        });
    }

    /**
     * 通知错误
     */
    private void notifyError(DownloadTask task, int errorCode, String errorMessage) {
        mainHandler.post(new Runnable() {
            @Override
            public void run() {
                for (DownloadProgressListener listener : progressListeners) {
                    listener.onError(task, errorCode, errorMessage);
                }
            }
        });
    }

    /**
     * 清理资源
     */
    public void cleanup() {
        Log.i(TAG, "清理下载管理器资源");

        // 停止所有下载
        pauseAllOnAppExit();

        // 关闭线程池
        if (downloadExecutor != null && !downloadExecutor.isShutdown()) {
            downloadExecutor.shutdown();
        }
    }
}