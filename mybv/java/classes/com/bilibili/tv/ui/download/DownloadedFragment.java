package com.bilibili.tv.ui.download;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import com.bilibili.tv.R;
import com.bilibili.tv.ui.download.adapter.DownloadTaskAdapter;
import com.bilibili.tv.ui.download.model.DownloadTask;
import com.bilibili.tv.ui.video.VideoDetailActivity;
import java.util.List;

/**
 * 已下载列表Fragment
 */
public class DownloadedFragment extends Fragment implements DownloadManager.DownloadProgressListener {

    private RecyclerView recyclerView;
    private DownloadTaskAdapter adapter;
    private TextView emptyView;
    // 焦点位置记忆
    private int focusPosition = 0;

    @Override
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        // 注册下载进度监听器
        DownloadManager.getInstance(getContext()).addProgressListener(this);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        // 移除下载进度监听器
        DownloadManager.getInstance(getContext()).removeProgressListener(this);
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_download_list, container, false);

        recyclerView = (RecyclerView) view.findViewById(R.id.recycler_view);
        emptyView = view.findViewById(R.id.empty_text);

        setupRecyclerView();

        return view;
    }

    @Override
    public void onResume() {
        super.onResume();
        refreshList();

        // 恢复焦点位置
        if (focusPosition > 0 && adapter.a() > focusPosition) {
            recyclerView.post(new Runnable() {
                @Override
                public void run() {
                    RecyclerView.v holder = recyclerView.c(focusPosition);
                    if (holder != null && holder.a != null) {
                        holder.a.requestFocus();
                    }
                }
            });
        }
    }

    /**
     * 设置RecyclerView
     */
    private void setupRecyclerView() {
        LinearLayoutManager layoutManager = new LinearLayoutManager(getContext());
        recyclerView.setLayoutManager(layoutManager);

        adapter = new DownloadTaskAdapter();
        recyclerView.setAdapter(adapter);

        // 设置点击监听器
        adapter.setOnTaskClickListener(new DownloadTaskAdapter.OnTaskClickListener() {
            @Override
            public void onTaskClick(DownloadTask task, int position) {
                // 记录焦点位置
                focusPosition = position;
                handleTaskClick(task);
            }

            @Override
            public boolean onTaskLongClick(DownloadTask task, int position) {
                handleTaskLongClick(task);
                return true;
            }
        });

        // 初始加载数据
        refreshList();
    }

    /**
     * 刷新列表
     */
    private void refreshList() {
        List<DownloadTask> completedTasks = DownloadManager.getInstance(getContext())
            .getCompletedTasks();

        // 检查所有任务的路径是否有效
        for (DownloadTask task : completedTasks) {
            android.util.Log.i("DownloadedFragment", "refreshList: taskId=" + task.getTaskId() +
                ", title=" + task.getTitle() + ", downloadPath=" + task.getDownloadPath());
            if (task.getDownloadPath() == null || task.getDownloadPath().isEmpty()) {
                android.util.Log.w("DownloadedFragment", "refreshList: 发现路径为空的任务: " + task.getTaskId());
            }
        }

        adapter.setTaskList(completedTasks);

        // 显示/隐藏空视图
        if (completedTasks.isEmpty()) {
            recyclerView.setVisibility(View.GONE);
            emptyView.setVisibility(View.VISIBLE);
            emptyView.setText("暂无已下载视频");
        } else {
            recyclerView.setVisibility(View.VISIBLE);
            emptyView.setVisibility(View.GONE);
        }
    }

    /**
     * 处理任务点击
     */
    private void handleTaskClick(DownloadTask task) {
        if (task.getStatus() == DownloadTask.Status.COMPLETED) {
            // 已完成的任务：弹出菜单选择操作
            showTaskMenu(task);
        }
    }

    /**
     * 显示任务操作菜单
     */
    private void showTaskMenu(final DownloadTask task) {
        final String[] items = {"本地播放", "选择播放器", "文件重命名", "删除"};

        android.util.Log.i("DownloadedFragment", "showTaskMenu: taskId=" + task.getTaskId());
        android.util.Log.i("DownloadedFragment", "showTaskMenu: title=" + task.getTitle());
        android.util.Log.i("DownloadedFragment", "showTaskMenu: downloadPath=" + task.getDownloadPath());
        android.util.Log.i("DownloadedFragment", "showTaskMenu: status=" + task.getStatus());

        new android.app.AlertDialog.Builder(getContext())
            .setTitle(task.getTitle())
            .setItems(items, new android.content.DialogInterface.OnClickListener() {
                @Override
                public void onClick(android.content.DialogInterface dialog, int which) {
                    // 重新从数据库获取最新的任务信息（防止数据不一致）
                    DownloadTask latestTask = DownloadManager.getInstance(getContext()).getTask(task.getTaskId());
                    if (latestTask == null) {
                        Toast.makeText(getContext(), "任务不存在", Toast.LENGTH_SHORT).show();
                        return;
                    }

                    android.util.Log.i("DownloadedFragment", "showTaskMenu: onClick which=" + which);
                    android.util.Log.i("DownloadedFragment", "showTaskMenu: onClick latestTask.downloadPath=" + latestTask.getDownloadPath());

                    switch (which) {
                        case 0: // 本地播放
                            android.util.Log.i("DownloadedFragment", "showTaskMenu: onClick 本地播放, downloadPath=" + latestTask.getDownloadPath());
                            playLocalFile(latestTask);
                            break;
                        case 1: // 选择播放器
                            playLocalFileWithChooser(latestTask);
                            break;
                        case 2: // 文件重命名
                            showRenameDialog(latestTask);
                            break;
                        case 3: // 删除
                            handleTaskLongClick(latestTask);
                            break;
                    }
                }
            })
            .setNegativeButton("取消", null)
            .show();
    }

    /**
     * 显示文件重命名对话框
     */
    private void showRenameDialog(final DownloadTask task) {
        // 获取当前文件名（不含扩展名）
        String filePath = task.getDownloadPath();
        if (filePath == null || filePath.isEmpty()) {
            Toast.makeText(getContext(), "文件路径无效", Toast.LENGTH_SHORT).show();
            return;
        }

        String oldFileName = filePath.substring(filePath.lastIndexOf('/') + 1);
        final String fileExtension = oldFileName.contains(".") ? 
            oldFileName.substring(oldFileName.lastIndexOf('.')) : "";
        String fileNameWithoutExt = oldFileName.contains(".") ? 
            oldFileName.substring(0, oldFileName.lastIndexOf('.')) : oldFileName;

        // 创建输入对话框
        android.widget.EditText input = new android.widget.EditText(getContext());
        input.setText(fileNameWithoutExt);
        input.selectAll();

        new android.app.AlertDialog.Builder(getContext())
            .setTitle("重命名文件")
            .setMessage("请输入新的文件名（不含扩展名）")
            .setView(input)
            .setPositiveButton("确定", new android.content.DialogInterface.OnClickListener() {
                @Override
                public void onClick(android.content.DialogInterface dialog, int which) {
                    String newFileNameWithoutExt = input.getText().toString().trim();
                    if (newFileNameWithoutExt.isEmpty()) {
                        Toast.makeText(getContext(), "文件名不能为空", Toast.LENGTH_SHORT).show();
                        return;
                    }

                    // 检查文件名是否包含非法字符
                    if (newFileNameWithoutExt.contains("/") || newFileNameWithoutExt.contains("\\") ||
                        newFileNameWithoutExt.contains(":") || newFileNameWithoutExt.contains("*") ||
                        newFileNameWithoutExt.contains("?") || newFileNameWithoutExt.contains("\"") ||
                        newFileNameWithoutExt.contains("<") || newFileNameWithoutExt.contains(">") ||
                        newFileNameWithoutExt.contains("|")) {
                        Toast.makeText(getContext(), "文件名包含非法字符", Toast.LENGTH_SHORT).show();
                        return;
                    }

                    // 执行重命名
                    renameLocalFile(task, newFileNameWithoutExt + fileExtension);
                }
            })
            .setNegativeButton("取消", null)
            .show();
    }

    /**
     * 重命名本地文件
     */
    private void renameLocalFile(DownloadTask task, String newFileName) {
        try {
            String oldFilePath = task.getDownloadPath();
            android.util.Log.i("DownloadedFragment", "renameLocalFile: oldFilePath=" + oldFilePath);
            
            java.io.File oldFile = new java.io.File(oldFilePath);
            
            if (!oldFile.exists()) {
                Toast.makeText(getContext(), "文件不存在", Toast.LENGTH_SHORT).show();
                return;
            }

            // 构建新文件路径
            String parentDir = oldFilePath.substring(0, oldFilePath.lastIndexOf('/'));
            String newFilePath = parentDir + "/" + newFileName;
            android.util.Log.i("DownloadedFragment", "renameLocalFile: newFilePath=" + newFilePath);
            
            java.io.File newFile = new java.io.File(newFilePath);

            // 检查新文件是否已存在
            if (newFile.exists()) {
                Toast.makeText(getContext(), "文件名已存在", Toast.LENGTH_SHORT).show();
                return;
            }

            // 重命名文件
            boolean success = oldFile.renameTo(newFile);
            android.util.Log.i("DownloadedFragment", "renameLocalFile: rename success=" + success);
            
            if (success) {
                // 更新数据库中的文件路径
                task.setDownloadPath(newFilePath);
                android.util.Log.i("DownloadedFragment", "renameLocalFile: task.downloadPath updated to=" + task.getDownloadPath());
                
                DownloadManager.getInstance(getContext()).updateTask(task);
                android.util.Log.i("DownloadedFragment", "renameLocalFile: database updated");

                Toast.makeText(getContext(), "重命名成功", Toast.LENGTH_SHORT).show();
                
                // 刷新列表
                refreshList();
            } else {
                Toast.makeText(getContext(), "重命名失败", Toast.LENGTH_SHORT).show();
            }
        } catch (Exception e) {
            android.util.Log.e("DownloadedFragment", "renameLocalFile error", e);
            Toast.makeText(getContext(), "重命名失败：" + e.getMessage(), Toast.LENGTH_SHORT).show();
        }
    }

    /**
     * 处理任务长按
     */
    private void handleTaskLongClick(DownloadTask task) {
        // 长按删除任务
        new android.app.AlertDialog.Builder(getContext())
            .setTitle("删除已下载视频")
            .setMessage("确定要删除\"" + task.getTitle() + "\"吗？\n文件将被删除，无法恢复。")
            .setPositiveButton("删除", new android.content.DialogInterface.OnClickListener() {
                @Override
                public void onClick(android.content.DialogInterface dialog, int which) {
                    // 删除本地文件
                    deleteLocalFile(task);

                    // 删除任务记录
                    DownloadManager.getInstance(getContext()).deleteTask(task.getTaskId());

                    Toast.makeText(getContext(), "已删除", Toast.LENGTH_SHORT).show();
                    refreshList();
                }
            })
            .setNegativeButton("取消", null)
            .show();
    }

    /**
     * 播放本地文件（显示应用选择器）
     * 让用户选择使用哪个播放器
     */
    private void playLocalFileWithChooser(DownloadTask task) {
        // 检查文件路径
        String downloadPath = task.getDownloadPath();
        if (downloadPath == null || downloadPath.isEmpty()) {
            Toast.makeText(getContext(), "文件路径为空", Toast.LENGTH_SHORT).show();
            return;
        }

        // 检查文件是否存在
        final java.io.File file = new java.io.File(downloadPath);
        if (!file.exists()) {
            Toast.makeText(getContext(), "文件不存在，请重新下载", Toast.LENGTH_SHORT).show();
            return;
        }

        // 检查文件是否可读
        if (!file.canRead()) {
            Toast.makeText(getContext(), "文件无法读取，请检查权限", Toast.LENGTH_SHORT).show();
            return;
        }

        // 检查文件大小
        if (file.length() == 0) {
            Toast.makeText(getContext(), "文件大小为0，可能下载未完成", Toast.LENGTH_SHORT).show();
            return;
        }

        // 使用Intent选择器播放本地文件
        try {
            android.content.Intent intent = new android.content.Intent(android.content.Intent.ACTION_VIEW);
            android.net.Uri uri;

            // 兼容Android 7.0+，使用FileProvider
            if (android.os.Build.VERSION.SDK_INT >= 24) {
                uri = android.support.v4.content.FileProvider.a(getContext(), getContext().getPackageName() + ".fileprovider", file);
                intent.addFlags(android.content.Intent.FLAG_GRANT_READ_URI_PERMISSION);
            } else {
                uri = android.net.Uri.fromFile(file);
            }

            intent.setDataAndType(uri, "video/*");
            intent.addFlags(android.content.Intent.FLAG_ACTIVITY_NEW_TASK);

            // 创建选择器Intent，让用户选择播放器
            android.content.Intent chooserIntent = android.content.Intent.createChooser(intent, "选择播放器");
            chooserIntent.addFlags(android.content.Intent.FLAG_ACTIVITY_NEW_TASK);

            startActivity(chooserIntent);
        } catch (Exception e) {
            android.util.Log.e("DownloadedFragment", "playLocalFileWithChooser error", e);
            Toast.makeText(getContext(), "播放失败：" + e.getMessage(), Toast.LENGTH_SHORT).show();
        }
    }

    /**
     * 播放本地文件
     * 直接启动播放器播放本地视频文件，不经过视频详情页
     */
    private void playLocalFile(DownloadTask task) {
        // 添加详细日志
        android.util.Log.i("DownloadedFragment", "playLocalFile: taskId=" + task.getTaskId());
        android.util.Log.i("DownloadedFragment", "playLocalFile: downloadPath=" + task.getDownloadPath());

        // 检查文件路径
        String downloadPath = task.getDownloadPath();
        if (downloadPath == null || downloadPath.isEmpty()) {
            Toast.makeText(getContext(), "文件路径为空", Toast.LENGTH_SHORT).show();
            return;
        }

        // 检查文件是否存在
        final java.io.File file = new java.io.File(downloadPath);
        android.util.Log.i("DownloadedFragment", "playLocalFile: file path=" + file.getAbsolutePath());
        android.util.Log.i("DownloadedFragment", "playLocalFile: file exists=" + file.exists());
        android.util.Log.i("DownloadedFragment", "playLocalFile: file length=" + file.length());
        android.util.Log.i("DownloadedFragment", "playLocalFile: file canRead=" + file.canRead());

        if (!file.exists()) {
            Toast.makeText(getContext(), "文件不存在，请重新下载", Toast.LENGTH_SHORT).show();
            return;
        }

        // 检查文件是否可读
        if (!file.canRead()) {
            Toast.makeText(getContext(), "文件无法读取，请检查权限", Toast.LENGTH_SHORT).show();
            return;
        }

        // 检查文件大小
        if (file.length() == 0) {
            Toast.makeText(getContext(), "文件大小为0，可能下载未完成", Toast.LENGTH_SHORT).show();
            return;
        }

        // 使用系统播放器直接播放本地文件
        try {
            android.content.Intent intent = new android.content.Intent(android.content.Intent.ACTION_VIEW);
            android.net.Uri uri;

            // 兼容Android 7.0+，使用FileProvider
            if (android.os.Build.VERSION.SDK_INT >= 24) {
                // Android 7.0+ 使用FileProvider.a()创建content:// URI
                try {
                    uri = android.support.v4.content.FileProvider.a(getContext(), getContext().getPackageName() + ".fileprovider", file);
                    intent.addFlags(android.content.Intent.FLAG_GRANT_READ_URI_PERMISSION);
                    android.util.Log.i("DownloadedFragment", "playLocalFile: FileProvider URI=" + uri.toString());
                } catch (Exception e) {
                    // FileProvider异常，回退到在线播放
                    android.util.Log.w("DownloadedFragment", "FileProvider error, fallback to online play", e);
                    Toast.makeText(getContext(), "本地播放失败，尝试在线播放", Toast.LENGTH_SHORT).show();
                    playOnlineVideo(task);
                    return;
                }
            } else {
                // Android 7.0以下，直接使用文件路径
                uri = android.net.Uri.fromFile(file);
                android.util.Log.i("DownloadedFragment", "playLocalFile: direct file URI=" + uri.toString());
            }

            intent.setDataAndType(uri, "video/*");
            intent.addFlags(android.content.Intent.FLAG_ACTIVITY_NEW_TASK);

            // 检查是否有可用的播放器
            if (intent.resolveActivity(getActivity().getPackageManager()) != null) {
                android.util.Log.i("DownloadedFragment", "playLocalFile: starting player activity");
                startActivity(intent);
            } else {
                // 如果没有系统播放器，回退到原有方式（通过网络播放）
                Toast.makeText(getContext(), "未找到视频播放器，尝试在线播放", Toast.LENGTH_SHORT).show();
                playOnlineVideo(task);
            }
        } catch (Exception e) {
            android.util.Log.e("DownloadedFragment", "playLocalFile error", e);
            Toast.makeText(getContext(), "播放失败：" + e.getMessage(), Toast.LENGTH_SHORT).show();
            // 回退到在线播放
            playOnlineVideo(task);
        }
    }

    /**
     * 在线播放视频（回退方案）
     */
    private void playOnlineVideo(DownloadTask task) {
        android.content.Intent intent = new android.content.Intent(getContext(), VideoDetailActivity.class);
        intent.putExtra("bundle_ac_id", task.getAvid());
        if (task.getCoverUrl() != null && !task.getCoverUrl().isEmpty()) {
            intent.putExtra("preload_cover", task.getCoverUrl());
        }
        intent.putExtra("download_auto_play", true);
        startActivity(intent);
    }

    /**
     * 删除本地文件
     */
    private void deleteLocalFile(DownloadTask task) {
        try {
            java.io.File file = new java.io.File(task.getDownloadPath());
            if (file.exists()) {
                file.delete();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // ============ DownloadProgressListener 接口实现 ============

    @Override
    public void onProgressUpdate(DownloadTask task) {
        // 已下载列表不需要更新进度
    }

    @Override
    public void onStatusChanged(DownloadTask task) {
        // 状态变化，刷新列表
        refreshList();
    }

    @Override
    public void onError(DownloadTask task, int errorCode, String errorMessage) {
        // 错误，刷新列表
        refreshList();
    }
}