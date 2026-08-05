package com.bilibili.tv.ui.download;

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
import java.util.List;

/**
 * 下载中列表Fragment
 */
public class DownloadingFragment extends Fragment implements DownloadManager.DownloadProgressListener {

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

        // 关闭item变化动画，避免高频进度刷新导致item闪烁
        recyclerView.setItemAnimator(null);

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
        List<DownloadTask> downloadingTasks = DownloadManager.getInstance(getContext())
            .getDownloadingTasks();

        adapter.setTaskList(downloadingTasks);

        // 显示/隐藏空视图
        if (downloadingTasks.isEmpty()) {
            recyclerView.setVisibility(View.GONE);
            emptyView.setVisibility(View.VISIBLE);
            emptyView.setText("暂无下载任务");
        } else {
            recyclerView.setVisibility(View.VISIBLE);
            emptyView.setVisibility(View.GONE);
        }
    }

    /**
     * 处理任务点击
     */
    private void handleTaskClick(DownloadTask task) {
        switch (task.getStatus()) {
            case WAITING:
                // 等待中 -> 暂停
                DownloadManager.getInstance(getContext()).pauseTask(task.getTaskId());
                Toast.makeText(getContext(), "已暂停", Toast.LENGTH_SHORT).show();
                break;

            case DOWNLOADING:
                // 下载中 -> 暂停
                DownloadManager.getInstance(getContext()).pauseTask(task.getTaskId());
                Toast.makeText(getContext(), "已暂停", Toast.LENGTH_SHORT).show();
                break;

            case PAUSED:
                // 已暂停 -> 恢复
                DownloadManager.getInstance(getContext()).resumeTask(task.getTaskId());
                Toast.makeText(getContext(), "已恢复", Toast.LENGTH_SHORT).show();
                break;

            case FAILED:
                // 失败 -> 重试
                DownloadManager.getInstance(getContext()).retryTask(task.getTaskId());
                Toast.makeText(getContext(), "正在重试", Toast.LENGTH_SHORT).show();
                break;

            default:
                break;
        }
    }

    /**
     * 处理任务长按
     */
    private void handleTaskLongClick(DownloadTask task) {
        // 长按删除任务
        new android.app.AlertDialog.Builder(getContext())
            .setTitle("删除下载任务")
            .setMessage("确定要删除\"" + task.getTitle() + "\"吗？")
            .setPositiveButton("删除", new android.content.DialogInterface.OnClickListener() {
                @Override
                public void onClick(android.content.DialogInterface dialog, int which) {
                    DownloadManager.getInstance(getContext()).deleteTask(task.getTaskId());
                    Toast.makeText(getContext(), "已删除", Toast.LENGTH_SHORT).show();
                    refreshList();
                }
            })
            .setNegativeButton("取消", null)
            .show();
    }

    // ============ DownloadProgressListener 接口实现 ============

    @Override
    public void onProgressUpdate(DownloadTask task) {
        // 更新单个任务的进度
        if (adapter != null) {
            adapter.updateTask(task);
        }
    }

    @Override
    public void onStatusChanged(DownloadTask task) {
        // 任务仍在下载中列表（等待中/下载中/已暂停）时仅更新单项，避免整个列表重建导致焦点跳到左侧菜单；
        // 任务不在列表（已完成/失败/已删除）时才刷新整个列表
        if (adapter == null || !adapter.updateTask(task)) {
            refreshList();
        }
    }

    @Override
    public void onError(DownloadTask task, int errorCode, String errorMessage) {
        // 错误，刷新列表
        refreshList();
        Toast.makeText(getContext(), "下载失败: " + errorMessage, Toast.LENGTH_SHORT).show();
    }
}