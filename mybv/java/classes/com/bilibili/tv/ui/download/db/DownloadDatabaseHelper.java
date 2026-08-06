package com.bilibili.tv.ui.download.db;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import com.bilibili.tv.ui.download.model.DownloadTask;
import java.util.ArrayList;
import java.util.List;

/**
 * 下载任务数据库帮助类
 * 负责数据库的创建、升级和CRUD操作
 */
public class DownloadDatabaseHelper extends SQLiteOpenHelper {
    private static final String TAG = "DownloadDatabase";

    // 数据库信息
    private static final String DATABASE_NAME = "download_tasks.db";
    private static final int DATABASE_VERSION = 5;

    // 表名
    private static final String TABLE_TASKS = "download_tasks";

    // 字段名
    private static final String[] COLUMNS = {
        "task_id", "bvid", "cid", "title", "subtitle", "page_index", "total_page_count", "cover_url", "up_name", "duration",
        "total_size", "downloaded_size", "progress", "speed", "download_path",
        "video_url", "avid",
        "status", "is_manual_pause", "pause_type",
        "create_time", "update_time", "start_time", "end_time",
        "quality", "quality_name", "audio_quality", "audio_quality_name", "codec",
        "error_code", "error_message"
    };

    // 单例模式
    private static DownloadDatabaseHelper instance;

    /**
     * 获取单例实例
     */
    public static synchronized DownloadDatabaseHelper getInstance(Context context) {
        if (instance == null) {
            instance = new DownloadDatabaseHelper(context.getApplicationContext());
        }
        return instance;
    }

    /**
     * 私有构造函数
     */
    private DownloadDatabaseHelper(Context context) {
        super(context, DATABASE_NAME, null, DATABASE_VERSION);
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        Log.i(TAG, "创建下载任务数据库");

        String createTableSQL = "CREATE TABLE " + TABLE_TASKS + " (" +
            "task_id TEXT PRIMARY KEY," +
            "bvid TEXT NOT NULL," +
            "cid INTEGER NOT NULL," +
            "title TEXT NOT NULL," +
            "subtitle TEXT," +
            "page_index INTEGER DEFAULT 0," +
            "total_page_count INTEGER DEFAULT 0," +
            "cover_url TEXT," +
            "up_name TEXT," +
            "duration INTEGER DEFAULT 0," +
            "total_size INTEGER DEFAULT 0," +
            "downloaded_size INTEGER DEFAULT 0," +
            "progress INTEGER DEFAULT 0," +
            "speed INTEGER DEFAULT 0," +
            "download_path TEXT," +
            "video_url TEXT," +
            "avid INTEGER DEFAULT 0," +
            "status INTEGER DEFAULT 0," +
            "is_manual_pause INTEGER DEFAULT 0," +
            "pause_type INTEGER DEFAULT 0," +
            "create_time INTEGER," +
            "update_time INTEGER," +
            "start_time INTEGER," +
            "end_time INTEGER," +
            "quality INTEGER," +
            "quality_name TEXT," +
            "audio_quality INTEGER," +
            "audio_quality_name TEXT," +
            "codec TEXT," +
            "error_code INTEGER DEFAULT 0," +
            "error_message TEXT" +
            ")";

        db.execSQL(createTableSQL);

        // 创建索引
        db.execSQL("CREATE INDEX idx_bvid ON " + TABLE_TASKS + "(bvid)");
        db.execSQL("CREATE INDEX idx_cid ON " + TABLE_TASKS + "(cid)");
        db.execSQL("CREATE INDEX idx_status ON " + TABLE_TASKS + "(status)");
        db.execSQL("CREATE INDEX idx_create_time ON " + TABLE_TASKS + "(create_time)");

        Log.i(TAG, "数据库创建完成");
    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        Log.w(TAG, "数据库升级: " + oldVersion + " -> " + newVersion);

        // 版本1到版本2：添加video_url和avid列
        if (oldVersion < 2) {
            Log.i(TAG, "添加video_url和avid列");
            db.execSQL("ALTER TABLE " + TABLE_TASKS + " ADD COLUMN video_url TEXT");
            db.execSQL("ALTER TABLE " + TABLE_TASKS + " ADD COLUMN avid INTEGER DEFAULT 0");
        }

        // 版本2到版本3：添加subtitle列（分P标题）
        if (oldVersion < 3) {
            Log.i(TAG, "添加subtitle列");
            db.execSQL("ALTER TABLE " + TABLE_TASKS + " ADD COLUMN subtitle TEXT");
        }

        // 版本3到版本4：添加page_index列（分P序号）
        if (oldVersion < 4) {
            Log.i(TAG, "添加page_index列");
            db.execSQL("ALTER TABLE " + TABLE_TASKS + " ADD COLUMN page_index INTEGER DEFAULT 0");
        }

        // 版本4到版本5：添加total_page_count列（视频总P数）
        if (oldVersion < 5) {
            Log.i(TAG, "添加total_page_count列");
            db.execSQL("ALTER TABLE " + TABLE_TASKS + " ADD COLUMN total_page_count INTEGER DEFAULT 0");
        }
    }

    // ============ CRUD 操作 ============

    /**
     * 插入下载任务
     */
    public long insertTask(DownloadTask task) {
        SQLiteDatabase db = getWritableDatabase();
        ContentValues values = task.toContentValues();

        long rowId = db.insert(TABLE_TASKS, null, values);
        if (rowId != -1) {
            Log.d(TAG, "插入下载任务成功: " + task.getTaskId());
        } else {
            Log.e(TAG, "插入下载任务失败: " + task.getTaskId());
        }

        return rowId;
    }

    /**
     * 更新下载任务
     */
    public int updateTask(DownloadTask task) {
        SQLiteDatabase db = getWritableDatabase();
        ContentValues values = task.toContentValues();

        // 更新update_time
        task.setUpdateTime(System.currentTimeMillis());
        values.put("update_time", task.getUpdateTime());

        String whereClause = "task_id = ?";
        String[] whereArgs = {task.getTaskId()};

        int rowsAffected = db.update(TABLE_TASKS, values, whereClause, whereArgs);
        if (rowsAffected > 0) {
            Log.d(TAG, "更新下载任务成功: " + task.getTaskId());
        } else {
            Log.w(TAG, "更新下载任务失败: " + task.getTaskId());
        }

        return rowsAffected;
    }

    /**
     * 删除下载任务
     */
    public int deleteTask(String taskId) {
        SQLiteDatabase db = getWritableDatabase();

        String whereClause = "task_id = ?";
        String[] whereArgs = {taskId};

        int rowsDeleted = db.delete(TABLE_TASKS, whereClause, whereArgs);
        if (rowsDeleted > 0) {
            Log.d(TAG, "删除下载任务成功: " + taskId);
        } else {
            Log.w(TAG, "删除下载任务失败: " + taskId);
        }

        return rowsDeleted;
    }

    /**
     * 查询下载任务
     */
    public DownloadTask getTask(String taskId) {
        SQLiteDatabase db = getReadableDatabase();

        String selection = "task_id = ?";
        String[] selectionArgs = {taskId};

        Cursor cursor = db.query(TABLE_TASKS, COLUMNS, selection, selectionArgs,
            null, null, null);

        DownloadTask task = null;
        if (cursor != null) {
            if (cursor.moveToFirst()) {
                task = DownloadTask.fromCursor(cursor);
            }
            cursor.close();
        }

        return task;
    }

    /**
     * 根据bvid和cid查询下载任务
     */
    public DownloadTask getTaskByBvidAndCid(String bvid, long cid) {
        String taskId = DownloadTask.generateTaskId(bvid, cid);
        return getTask(taskId);
    }

    /**
     * 查询所有下载任务
     */
    public List<DownloadTask> getAllTasks() {
        List<DownloadTask> tasks = new ArrayList<>();
        SQLiteDatabase db = getReadableDatabase();

        Cursor cursor = db.query(TABLE_TASKS, COLUMNS, null, null,
            null, null, "create_time DESC");

        if (cursor != null) {
            while (cursor.moveToNext()) {
                tasks.add(DownloadTask.fromCursor(cursor));
            }
            cursor.close();
        }

        return tasks;
    }

    /**
     * 根据状态查询下载任务
     */
    public List<DownloadTask> getTasksByStatus(DownloadTask.Status status) {
        List<DownloadTask> tasks = new ArrayList<>();
        SQLiteDatabase db = getReadableDatabase();

        String selection = "status = ?";
        String[] selectionArgs = {String.valueOf(status.getValue())};

        Cursor cursor = db.query(TABLE_TASKS, COLUMNS, selection, selectionArgs,
            null, null, "create_time DESC");

        if (cursor != null) {
            while (cursor.moveToNext()) {
                tasks.add(DownloadTask.fromCursor(cursor));
            }
            cursor.close();
        }

        return tasks;
    }

    /**
     * 查询下载中的任务
     */
    public List<DownloadTask> getDownloadingTasks() {
        List<DownloadTask> tasks = new ArrayList<>();
        SQLiteDatabase db = getReadableDatabase();

        String selection = "status IN (?, ?, ?)";
        String[] selectionArgs = {
            String.valueOf(DownloadTask.Status.WAITING.getValue()),
            String.valueOf(DownloadTask.Status.DOWNLOADING.getValue()),
            String.valueOf(DownloadTask.Status.PAUSED.getValue())
        };

        Cursor cursor = db.query(TABLE_TASKS, COLUMNS, selection, selectionArgs,
            null, null, "create_time DESC");

        if (cursor != null) {
            while (cursor.moveToNext()) {
                tasks.add(DownloadTask.fromCursor(cursor));
            }
            cursor.close();
        }

        return tasks;
    }

    /**
     * 查询已完成的任务（按完成时间倒序排序）
     */
    public List<DownloadTask> getCompletedTasks() {
        List<DownloadTask> tasks = new ArrayList<>();
        SQLiteDatabase db = getReadableDatabase();

        String selection = "status = ?";
        String[] selectionArgs = {String.valueOf(DownloadTask.Status.COMPLETED.getValue())};

        Cursor cursor = db.query(TABLE_TASKS, COLUMNS, selection, selectionArgs,
            null, null, "end_time DESC, create_time DESC");

        if (cursor != null) {
            while (cursor.moveToNext()) {
                tasks.add(DownloadTask.fromCursor(cursor));
            }
            cursor.close();
        }

        return tasks;
    }

    /**
     * 查询失败的任务
     */
    public List<DownloadTask> getFailedTasks() {
        return getTasksByStatus(DownloadTask.Status.FAILED);
    }

    /**
     * 根据暂停类型查询任务
     */
    public List<DownloadTask> getTasksByPauseType(DownloadTask.PauseType pauseType) {
        List<DownloadTask> tasks = new ArrayList<>();
        SQLiteDatabase db = getReadableDatabase();

        String selection = "pause_type = ? AND status = ?";
        String[] selectionArgs = {
            String.valueOf(pauseType.getValue()),
            String.valueOf(DownloadTask.Status.PAUSED.getValue())
        };

        Cursor cursor = db.query(TABLE_TASKS, COLUMNS, selection, selectionArgs,
            null, null, "create_time DESC");

        if (cursor != null) {
            while (cursor.moveToNext()) {
                tasks.add(DownloadTask.fromCursor(cursor));
            }
            cursor.close();
        }

        return tasks;
    }

    /**
     * 更新任务进度
     */
    public int updateProgress(String taskId, long downloadedSize, int progress, long speed) {
        SQLiteDatabase db = getWritableDatabase();

        ContentValues values = new ContentValues();
        values.put("downloaded_size", downloadedSize);
        values.put("progress", progress);
        values.put("speed", speed);
        values.put("update_time", System.currentTimeMillis());

        String whereClause = "task_id = ?";
        String[] whereArgs = {taskId};

        return db.update(TABLE_TASKS, values, whereClause, whereArgs);
    }

    /**
     * 更新任务状态
     */
    public int updateStatus(String taskId, DownloadTask.Status status) {
        SQLiteDatabase db = getWritableDatabase();

        ContentValues values = new ContentValues();
        values.put("status", status.getValue());
        values.put("update_time", System.currentTimeMillis());

        String whereClause = "task_id = ?";
        String[] whereArgs = {taskId};

        return db.update(TABLE_TASKS, values, whereClause, whereArgs);
    }

    /**
     * 设置任务为手动暂停
     */
    public int setManualPause(String taskId, boolean isManualPause) {
        SQLiteDatabase db = getWritableDatabase();

        ContentValues values = new ContentValues();
        values.put("is_manual_pause", isManualPause ? 1 : 0);
        values.put("status", DownloadTask.Status.PAUSED.getValue());
        if (isManualPause) {
            values.put("pause_type", DownloadTask.PauseType.MANUAL.getValue());
        }
        values.put("update_time", System.currentTimeMillis());

        String whereClause = "task_id = ?";
        String[] whereArgs = {taskId};

        return db.update(TABLE_TASKS, values, whereClause, whereArgs);
    }

    /**
     * 设置任务错误信息
     */
    public int setError(String taskId, int errorCode, String errorMessage) {
        SQLiteDatabase db = getWritableDatabase();

        ContentValues values = new ContentValues();
        values.put("status", DownloadTask.Status.FAILED.getValue());
        values.put("error_code", errorCode);
        values.put("error_message", errorMessage);
        values.put("end_time", System.currentTimeMillis());
        values.put("update_time", System.currentTimeMillis());

        String whereClause = "task_id = ?";
        String[] whereArgs = {taskId};

        return db.update(TABLE_TASKS, values, whereClause, whereArgs);
    }

    /**
     * 清空所有任务
     */
    public int deleteAllTasks() {
        SQLiteDatabase db = getWritableDatabase();
        return db.delete(TABLE_TASKS, null, null);
    }

    /**
     * 获取任务总数
     */
    public int getTaskCount() {
        SQLiteDatabase db = getReadableDatabase();

        String sql = "SELECT COUNT(*) FROM " + TABLE_TASKS;
        Cursor cursor = db.rawQuery(sql, null);

        int count = 0;
        if (cursor != null) {
            if (cursor.moveToFirst()) {
                count = cursor.getInt(0);
            }
            cursor.close();
        }

        return count;
    }

    /**
     * 获取下载中的任务数量
     */
    public int getDownloadingCount() {
        SQLiteDatabase db = getReadableDatabase();

        String sql = "SELECT COUNT(*) FROM " + TABLE_TASKS +
            " WHERE status IN (?, ?, ?)";
        String[] args = {
            String.valueOf(DownloadTask.Status.WAITING.getValue()),
            String.valueOf(DownloadTask.Status.DOWNLOADING.getValue()),
            String.valueOf(DownloadTask.Status.PAUSED.getValue())
        };

        Cursor cursor = db.rawQuery(sql, args);

        int count = 0;
        if (cursor != null) {
            if (cursor.moveToFirst()) {
                count = cursor.getInt(0);
            }
            cursor.close();
        }

        return count;
    }

    /**
     * 获取已完成的任务数量
     */
    public int getCompletedCount() {
        SQLiteDatabase db = getReadableDatabase();

        String sql = "SELECT COUNT(*) FROM " + TABLE_TASKS +
            " WHERE status = ?";
        String[] args = {String.valueOf(DownloadTask.Status.COMPLETED.getValue())};

        Cursor cursor = db.rawQuery(sql, args);

        int count = 0;
        if (cursor != null) {
            if (cursor.moveToFirst()) {
                count = cursor.getInt(0);
            }
            cursor.close();
        }

        return count;
    }

    /**
     * 批量删除已完成的任务
     */
    public int deleteCompletedTasks() {
        SQLiteDatabase db = getWritableDatabase();

        String whereClause = "status = ?";
        String[] whereArgs = {String.valueOf(DownloadTask.Status.COMPLETED.getValue())};

        return db.delete(TABLE_TASKS, whereClause, whereArgs);
    }

    /**
     * 批量删除失败的任务
     */
    public int deleteFailedTasks() {
        SQLiteDatabase db = getWritableDatabase();

        String whereClause = "status = ?";
        String[] whereArgs = {String.valueOf(DownloadTask.Status.FAILED.getValue())};

        return db.delete(TABLE_TASKS, whereClause, whereArgs);
    }
}