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
            // 点击已完成的任务 -> 播放本地文件
            playLocalFile(task);
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
     * 播放本地文件
     */
    private void playLocalFile(DownloadTask task) {
        // 检查文件是否存在
        java.io.File file = new java.io.File(task.getDownloadPath());
        if (!file.exists()) {
            Toast.makeText(getContext(), "文件不存在，请重新下载", Toast.LENGTH_SHORT).show();
            return;
        }

        // 跳转到视频详情页或直接播放
        // 方案1：跳转到视频详情页
        Intent intent = new Intent(getContext(), VideoDetailActivity.class);
        intent.putExtra("bvid", task.getBvid());
        intent.putExtra("cid", task.getCid());
        intent.putExtra("title", task.getTitle());
        intent.putExtra("isLocalPlay", true); // 标记为本地播放
        intent.putExtra("localPath", task.getDownloadPath());
        startActivity(intent);

        // 方案2：直接播放本地文件（如果播放器支持）
        // Intent intent = new Intent(Intent.ACTION_VIEW);
        // intent.setDataAndType(android.net.Uri.fromFile(file), "video/mp4");
        // startActivity(intent);
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