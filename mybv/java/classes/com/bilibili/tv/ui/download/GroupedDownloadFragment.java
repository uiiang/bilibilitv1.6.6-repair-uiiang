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
import bl.adw;
import com.bilibili.tv.R;
import com.bilibili.tv.ui.download.adapter.GroupedTaskAdapter;
import com.bilibili.tv.ui.download.model.DownloadTask;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;

/**
 * 下载管理第一级：视频分组列表Fragment
 * 同一视频的多个分P任务聚合成一组显示，点击分组进入第二级分P任务明细页
 * 下载中/已下载两个tab各持有一个实例（showCompleted区分）
 */
public class GroupedDownloadFragment extends Fragment implements DownloadManager.DownloadProgressListener {
    private static final String ARG_SHOW_COMPLETED = "show_completed";

    private boolean showCompleted;
    private RecyclerView recyclerView;
    private TextView emptyText;
    private GroupedTaskAdapter adapter;

    public static GroupedDownloadFragment newInstance(boolean showCompleted) {
        GroupedDownloadFragment fragment = new GroupedDownloadFragment();
        Bundle args = new Bundle();
        args.putBoolean(ARG_SHOW_COMPLETED, showCompleted);
        fragment.setArguments(args);
        return fragment;
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (getArguments() != null) {
            showCompleted = getArguments().getBoolean(ARG_SHOW_COMPLETED, false);
        }
    }

    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_download_list, container, false);
        recyclerView = (RecyclerView) view.findViewById(R.id.recycler_view);
        // 标记右侧面板（对齐收藏/历史页的adw.a标记），左键从列表返回左侧导航时用于识别焦点所在面板
        recyclerView.setTag(adw.a);
        emptyText = (TextView) view.findViewById(R.id.empty_text);

        recyclerView.setLayoutManager(new LinearLayoutManager(getActivity()));
        recyclerView.setItemAnimator(null); // 关闭item变化动画，避免进度刷新闪烁

        adapter = new GroupedTaskAdapter(getActivity(), showCompleted);
        adapter.setOnGroupClickListener(new GroupedTaskAdapter.OnGroupClickListener() {
            @Override
            public void onGroupClick(GroupedTaskAdapter.VideoGroup group) {
                openGroupDetail(group);
            }
        });
        // 单P任务点击：直接弹出操作菜单（本地播放/选择播放器/重命名/删除），不进入二级页
        adapter.setOnTaskClickListener(new GroupedTaskAdapter.OnTaskClickListener() {
            @Override
            public void onTaskClick(DownloadTask task) {
                showTaskMenu(task);
            }
        });
        recyclerView.setAdapter(adapter);
        return view;
    }

    @Override
    public void onResume() {
        super.onResume();
        // 延迟到FragmentManager事务结束后再刷新列表：
        // onResume期间refreshList中列表为空时setVisibility(GONE)会使RecyclerView失去焦点，
        // 焦点回落左侧导航菜单触发onFocusChange切换Fragment，此时FragmentManager正在执行
        // resume事务，导致"FragmentManager is already executing transactions"崩溃
        final View root = getView();
        if (root != null) {
            root.post(new Runnable() {
                @Override
                public void run() {
                    if (!isAdded()) {
                        return;
                    }
                    refreshList();
                    // notifyDataSetChanged后RecyclerView是异步布局，必须等布局完成、新holder创建后
                    // 再恢复焦点，否则findViewHolderForAdapterPosition返回null导致焦点恢复失败
                    final RecyclerView rv = recyclerView;
                    if (rv != null) {
                        rv.post(new Runnable() {
                            @Override
                            public void run() {
                                if (isAdded()) {
                                    // 刷新后恢复焦点到之前的列表项（跳转其它页面返回场景）
                                    restoreFocus();
                                }
                            }
                        });
                    }
                }
            });
        } else {
            refreshList();
        }
        DownloadManager.getInstance(getActivity()).addProgressListener(this);
    }

    /**
     * 恢复焦点到记忆的列表项位置（跳转其它页面返回后使用）
     */
    private void restoreFocus() {
        if (recyclerView == null || adapter == null) return;
        int focusPosition = adapter.getFocusPosition();
        if (focusPosition >= 0 && adapter.a() > focusPosition) {
            RecyclerView.v holder = recyclerView.c(focusPosition);
            if (holder != null && holder.a != null) {
                holder.a.requestFocus();
            }
        }
    }

    @Override
    public void onPause() {
        super.onPause();
        DownloadManager.getInstance(getActivity()).removeProgressListener(this);
    }

    private void refreshList() {
        if (recyclerView == null) return;
        List<DownloadTask> all = showCompleted
            ? DownloadManager.getInstance(getActivity()).getCompletedTasks()
            : DownloadManager.getInstance(getActivity()).getDownloadingTasks();
        List<GroupedTaskAdapter.Item> items = groupTasks(all);
        adapter.setItems(items);

        boolean empty = items.isEmpty();
        emptyText.setVisibility(empty ? View.VISIBLE : View.GONE);
        emptyText.setText(showCompleted ? "暂无已下载视频" : "暂无下载任务");
        recyclerView.setVisibility(empty ? View.GONE : View.VISIBLE);
    }

    /**
     * 生成第一级列表条目：
     * 以视频详情页是否包含分P视频为准（totalPageCount > 1），多P视频按bvid分组；
     * 兼容旧数据：totalPageCount为0（升级前创建的任务无该字段）时，若同一bvid已有多个任务，
     * 说明是多P视频，也按分组显示；否则作为单任务条目显示。
     * 组间按首次出现顺序，组内按cid升序（分P顺序），单任务条目追加在分组之后。
     */
    private List<GroupedTaskAdapter.Item> groupTasks(List<DownloadTask> tasks) {
        List<GroupedTaskAdapter.Item> result = new ArrayList<GroupedTaskAdapter.Item>();
        if (tasks == null || tasks.isEmpty()) {
            return result;
        }
        // 统计每个bvid的任务数（用于兼容旧数据判断多P视频）
        java.util.Map<String, Integer> bvidCount = new java.util.HashMap<String, Integer>();
        for (DownloadTask task : tasks) {
            if (task.getBvid() == null) {
                continue;
            }
            Integer count = bvidCount.get(task.getBvid());
            bvidCount.put(task.getBvid(), count == null ? 1 : count + 1);
        }

        LinkedHashMap<String, GroupedTaskAdapter.VideoGroup> map = new LinkedHashMap<String, GroupedTaskAdapter.VideoGroup>();
        List<DownloadTask> singleTasks = new ArrayList<DownloadTask>();
        for (DownloadTask task : tasks) {
            if (task.getBvid() == null) {
                continue;
            }
            // 判断是否多P视频：新数据以视频详情页总P数为准（>1）；旧数据（totalPageCount=0）
            // 同一bvid有多个任务时也按多P处理
            Integer bvidTaskCount = bvidCount.get(task.getBvid());
            boolean isMultiPage = task.getTotalPageCount() > 1 || (task.getTotalPageCount() == 0 && bvidTaskCount != null && bvidTaskCount > 1);
            if (isMultiPage) {
                GroupedTaskAdapter.VideoGroup group = map.get(task.getBvid());
                if (group == null) {
                    group = new GroupedTaskAdapter.VideoGroup();
                    group.bvid = task.getBvid();
                    group.title = task.getTitle();
                    group.coverUrl = task.getCoverUrl();
                    group.upName = task.getUpName();
                    map.put(task.getBvid(), group);
                }
                group.tasks.add(task);
            } else {
                // 单P视频：直接作为单任务条目
                singleTasks.add(task);
            }
        }
        for (GroupedTaskAdapter.VideoGroup group : map.values()) {
            // 组内按cid升序（分P顺序）
            Collections.sort(group.tasks, new Comparator<DownloadTask>() {
                @Override
                public int compare(DownloadTask a, DownloadTask b) {
                    long diff = a.getCid() - b.getCid();
                    return diff > 0 ? 1 : (diff < 0 ? -1 : 0);
                }
            });
            GroupedTaskAdapter.Item item = new GroupedTaskAdapter.Item();
            item.group = group;
            result.add(item);
        }
        // 单P任务条目追加在分组之后（按数据库创建时间倒序，即最近下载在前）
        Collections.sort(singleTasks, new Comparator<DownloadTask>() {
            @Override
            public int compare(DownloadTask a, DownloadTask b) {
                long diff = b.getCreateTime() - a.getCreateTime();
                return diff > 0 ? 1 : (diff < 0 ? -1 : 0);
            }
        });
        for (DownloadTask task : singleTasks) {
            GroupedTaskAdapter.Item item = new GroupedTaskAdapter.Item();
            item.task = task;
            result.add(item);
        }
        return result;
    }

    /**
     * 点击分组：进入第二级分P任务明细页
     */
    private void openGroupDetail(GroupedTaskAdapter.VideoGroup group) {
        Intent intent = new Intent(getActivity(), TaskGroupDetailActivity.class);
        intent.putExtra(TaskGroupDetailActivity.EXTRA_BVID, group.bvid);
        intent.putExtra(TaskGroupDetailActivity.EXTRA_TITLE, group.title);
        intent.putExtra(TaskGroupDetailActivity.EXTRA_SHOW_COMPLETED, showCompleted);
        startActivity(intent);
    }

    // ============ 单P任务操作菜单（与DownloadedFragment二级页行为一致） ============

    private void showTaskMenu(final DownloadTask task) {
        final String[] items = {"本地播放", "选择播放器", "文件重命名", "删除"};

        android.util.Log.i("GroupedDownloadFragment", "showTaskMenu: taskId=" + task.getTaskId());
        android.util.Log.i("GroupedDownloadFragment", "showTaskMenu: title=" + task.getTitle());
        android.util.Log.i("GroupedDownloadFragment", "showTaskMenu: downloadPath=" + task.getDownloadPath());
        android.util.Log.i("GroupedDownloadFragment", "showTaskMenu: status=" + task.getStatus());

        new android.app.AlertDialog.Builder(getContext())
            .setTitle(task.getTitle())
            .setItems(items, new android.content.DialogInterface.OnClickListener() {
                @Override
                public void onClick(android.content.DialogInterface dialog, int which) {
                    // 重新从数据库获取最新的任务信息（防止数据不一致）
                    DownloadTask latestTask = DownloadManager.getInstance(getContext()).getTask(task.getTaskId());
                    if (latestTask == null) {
                        android.widget.Toast.makeText(getContext(), "任务不存在", android.widget.Toast.LENGTH_SHORT).show();
                        return;
                    }

                    switch (which) {
                        case 0: // 本地播放
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

    private void showRenameDialog(final DownloadTask task) {
        String filePath = task.getDownloadPath();
        if (filePath == null || filePath.isEmpty()) {
            android.widget.Toast.makeText(getContext(), "文件路径无效", android.widget.Toast.LENGTH_SHORT).show();
            return;
        }

        String oldFileName = filePath.substring(filePath.lastIndexOf('/') + 1);
        final String fileExtension = oldFileName.contains(".") ?
            oldFileName.substring(oldFileName.lastIndexOf('.')) : "";
        String fileNameWithoutExt = oldFileName.contains(".") ?
            oldFileName.substring(0, oldFileName.lastIndexOf('.')) : oldFileName;

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
                        android.widget.Toast.makeText(getContext(), "文件名不能为空", android.widget.Toast.LENGTH_SHORT).show();
                        return;
                    }

                    if (newFileNameWithoutExt.contains("/") || newFileNameWithoutExt.contains("\\") ||
                        newFileNameWithoutExt.contains(":") || newFileNameWithoutExt.contains("*") ||
                        newFileNameWithoutExt.contains("?") || newFileNameWithoutExt.contains("\"") ||
                        newFileNameWithoutExt.contains("<") || newFileNameWithoutExt.contains(">") ||
                        newFileNameWithoutExt.contains("|")) {
                        android.widget.Toast.makeText(getContext(), "文件名包含非法字符", android.widget.Toast.LENGTH_SHORT).show();
                        return;
                    }

                    renameLocalFile(task, newFileNameWithoutExt + fileExtension);
                }
            })
            .setNegativeButton("取消", null)
            .show();
    }

    private void renameLocalFile(DownloadTask task, String newFileName) {
        try {
            String oldFilePath = task.getDownloadPath();
            android.util.Log.i("GroupedDownloadFragment", "renameLocalFile: oldFilePath=" + oldFilePath);

            java.io.File oldFile = new java.io.File(oldFilePath);

            if (!oldFile.exists()) {
                android.widget.Toast.makeText(getContext(), "文件不存在", android.widget.Toast.LENGTH_SHORT).show();
                return;
            }

            String parentDir = oldFilePath.substring(0, oldFilePath.lastIndexOf('/'));
            String newFilePath = parentDir + "/" + newFileName;
            android.util.Log.i("GroupedDownloadFragment", "renameLocalFile: newFilePath=" + newFilePath);

            java.io.File newFile = new java.io.File(newFilePath);

            if (newFile.exists()) {
                android.widget.Toast.makeText(getContext(), "文件名已存在", android.widget.Toast.LENGTH_SHORT).show();
                return;
            }

            boolean success = oldFile.renameTo(newFile);
            android.util.Log.i("GroupedDownloadFragment", "renameLocalFile: rename success=" + success);

            if (success) {
                task.setDownloadPath(newFilePath);
                android.util.Log.i("GroupedDownloadFragment", "renameLocalFile: task.downloadPath updated to=" + task.getDownloadPath());

                DownloadManager.getInstance(getContext()).updateTask(task);
                android.util.Log.i("GroupedDownloadFragment", "renameLocalFile: database updated");

                android.widget.Toast.makeText(getContext(), "重命名成功", android.widget.Toast.LENGTH_SHORT).show();
                refreshList();
            } else {
                android.widget.Toast.makeText(getContext(), "重命名失败", android.widget.Toast.LENGTH_SHORT).show();
            }
        } catch (Exception e) {
            android.util.Log.e("GroupedDownloadFragment", "renameLocalFile error", e);
            android.widget.Toast.makeText(getContext(), "重命名失败：" + e.getMessage(), android.widget.Toast.LENGTH_SHORT).show();
        }
    }

    private void handleTaskLongClick(DownloadTask task) {
        new android.app.AlertDialog.Builder(getContext())
            .setTitle("删除已下载视频")
            .setMessage("确定要删除\"" + task.getTitle() + "\"吗？\n文件将被删除，无法恢复。")
            .setPositiveButton("删除", new android.content.DialogInterface.OnClickListener() {
                @Override
                public void onClick(android.content.DialogInterface dialog, int which) {
                    deleteLocalFile(task);
                    DownloadManager.getInstance(getContext()).deleteTask(task.getTaskId());
                    android.widget.Toast.makeText(getContext(), "已删除", android.widget.Toast.LENGTH_SHORT).show();
                    refreshList();
                }
            })
            .setNegativeButton("取消", null)
            .show();
    }

    private void playLocalFileWithChooser(DownloadTask task) {
        String downloadPath = task.getDownloadPath();
        if (downloadPath == null || downloadPath.isEmpty()) {
            android.widget.Toast.makeText(getContext(), "文件路径为空", android.widget.Toast.LENGTH_SHORT).show();
            return;
        }

        final java.io.File file = new java.io.File(downloadPath);
        if (!file.exists()) {
            android.widget.Toast.makeText(getContext(), "文件不存在，请重新下载", android.widget.Toast.LENGTH_SHORT).show();
            return;
        }

        if (!file.canRead()) {
            android.widget.Toast.makeText(getContext(), "文件无法读取，请检查权限", android.widget.Toast.LENGTH_SHORT).show();
            return;
        }

        if (file.length() == 0) {
            android.widget.Toast.makeText(getContext(), "文件大小为0，可能下载未完成", android.widget.Toast.LENGTH_SHORT).show();
            return;
        }

        try {
            android.content.Intent intent = new android.content.Intent(android.content.Intent.ACTION_VIEW);
            android.net.Uri uri;

            if (android.os.Build.VERSION.SDK_INT >= 24) {
                uri = android.support.v4.content.FileProvider.a(getContext(), getContext().getPackageName() + ".fileprovider", file);
                intent.addFlags(android.content.Intent.FLAG_GRANT_READ_URI_PERMISSION);
            } else {
                uri = android.net.Uri.fromFile(file);
            }

            intent.setDataAndType(uri, "video/*");
            intent.addFlags(android.content.Intent.FLAG_ACTIVITY_NEW_TASK);

            android.content.Intent chooserIntent = android.content.Intent.createChooser(intent, "选择播放器");
            chooserIntent.addFlags(android.content.Intent.FLAG_ACTIVITY_NEW_TASK);

            startActivity(chooserIntent);
        } catch (Exception e) {
            android.util.Log.e("GroupedDownloadFragment", "playLocalFileWithChooser error", e);
            android.widget.Toast.makeText(getContext(), "播放失败：" + e.getMessage(), android.widget.Toast.LENGTH_SHORT).show();
        }
    }

    private void playLocalFile(DownloadTask task) {
        android.util.Log.i("GroupedDownloadFragment", "playLocalFile: taskId=" + task.getTaskId());
        android.util.Log.i("GroupedDownloadFragment", "playLocalFile: downloadPath=" + task.getDownloadPath());

        String downloadPath = task.getDownloadPath();
        if (downloadPath == null || downloadPath.isEmpty()) {
            android.widget.Toast.makeText(getContext(), "文件路径为空", android.widget.Toast.LENGTH_SHORT).show();
            return;
        }

        final java.io.File file = new java.io.File(downloadPath);
        android.util.Log.i("GroupedDownloadFragment", "playLocalFile: file path=" + file.getAbsolutePath());
        android.util.Log.i("GroupedDownloadFragment", "playLocalFile: file exists=" + file.exists());
        android.util.Log.i("GroupedDownloadFragment", "playLocalFile: file length=" + file.length());
        android.util.Log.i("GroupedDownloadFragment", "playLocalFile: file canRead=" + file.canRead());

        if (!file.exists()) {
            android.widget.Toast.makeText(getContext(), "文件不存在，请重新下载", android.widget.Toast.LENGTH_SHORT).show();
            return;
        }

        if (!file.canRead()) {
            android.widget.Toast.makeText(getContext(), "文件无法读取，请检查权限", android.widget.Toast.LENGTH_SHORT).show();
            return;
        }

        if (file.length() == 0) {
            android.widget.Toast.makeText(getContext(), "文件大小为0，可能下载未完成", android.widget.Toast.LENGTH_SHORT).show();
            return;
        }

        try {
            android.content.Intent intent = new android.content.Intent(android.content.Intent.ACTION_VIEW);
            android.net.Uri uri;

            if (android.os.Build.VERSION.SDK_INT >= 24) {
                try {
                    uri = android.support.v4.content.FileProvider.a(getContext(), getContext().getPackageName() + ".fileprovider", file);
                    intent.addFlags(android.content.Intent.FLAG_GRANT_READ_URI_PERMISSION);
                    android.util.Log.i("GroupedDownloadFragment", "playLocalFile: FileProvider URI=" + uri.toString());
                } catch (Exception e) {
                    android.util.Log.w("GroupedDownloadFragment", "FileProvider error, fallback to online play", e);
                    android.widget.Toast.makeText(getContext(), "本地播放失败，尝试在线播放", android.widget.Toast.LENGTH_SHORT).show();
                    playOnlineVideo(task);
                    return;
                }
            } else {
                uri = android.net.Uri.fromFile(file);
                android.util.Log.i("GroupedDownloadFragment", "playLocalFile: direct file URI=" + uri.toString());
            }

            intent.setDataAndType(uri, "video/*");
            intent.addFlags(android.content.Intent.FLAG_ACTIVITY_NEW_TASK);

            if (intent.resolveActivity(getActivity().getPackageManager()) != null) {
                android.util.Log.i("GroupedDownloadFragment", "playLocalFile: starting player activity");
                startActivity(intent);
            } else {
                android.widget.Toast.makeText(getContext(), "未找到视频播放器，尝试在线播放", android.widget.Toast.LENGTH_SHORT).show();
                playOnlineVideo(task);
            }
        } catch (Exception e) {
            android.util.Log.e("GroupedDownloadFragment", "playLocalFile error", e);
            android.widget.Toast.makeText(getContext(), "播放失败：" + e.getMessage(), android.widget.Toast.LENGTH_SHORT).show();
            playOnlineVideo(task);
        }
    }

    private void playOnlineVideo(DownloadTask task) {
        android.content.Intent intent = new android.content.Intent(getContext(), com.bilibili.tv.ui.video.VideoDetailActivity.class);
        intent.putExtra("bundle_ac_id", task.getAvid());
        if (task.getCoverUrl() != null && !task.getCoverUrl().isEmpty()) {
            intent.putExtra("preload_cover", task.getCoverUrl());
        }
        intent.putExtra("download_auto_play", true);
        startActivity(intent);
    }

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

    // ============ 下载进度监听 ============

    @Override
    public void onProgressUpdate(DownloadTask task) {
        if (getActivity() == null) return;
        getActivity().runOnUiThread(new Runnable() {
            @Override
            public void run() {
                if (adapter != null) {
                    // 进度刷新只更新任务所在组，避免整表刷新丢焦点
                    adapter.updateTask(task);
                }
            }
        });
    }

    @Override
    public void onStatusChanged(DownloadTask task) {
        if (getActivity() == null) return;
        getActivity().runOnUiThread(new Runnable() {
            @Override
            public void run() {
                // 任务对应组仍在当前列表（等待中/下载中/已暂停）时仅更新该组，避免整表刷新丢焦点；
                // 组整体移出列表（所有分P完成/失败/删除）时才整表刷新
                if (adapter == null || !adapter.updateTask(task)) {
                    refreshList();
                }
            }
        });
    }

    @Override
    public void onError(DownloadTask task, int errorCode, String errorMessage) {
        if (getActivity() == null) return;
        getActivity().runOnUiThread(new Runnable() {
            @Override
            public void run() {
                refreshList();
            }
        });
    }
}
