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
                    if (isAdded()) {
                        refreshList();
                    }
                }
            });
        } else {
            refreshList();
        }
        DownloadManager.getInstance(getActivity()).addProgressListener(this);
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
        List<GroupedTaskAdapter.VideoGroup> groups = groupTasks(all);
        adapter.setGroups(groups);

        boolean empty = groups.isEmpty();
        emptyText.setVisibility(empty ? View.VISIBLE : View.GONE);
        emptyText.setText(showCompleted ? "暂无已下载视频" : "暂无下载任务");
        recyclerView.setVisibility(empty ? View.GONE : View.VISIBLE);
    }

    /**
     * 按bvid将任务分组（组间按首次出现顺序，组内按cid升序即分P顺序）
     */
    private List<GroupedTaskAdapter.VideoGroup> groupTasks(List<DownloadTask> tasks) {
        List<GroupedTaskAdapter.VideoGroup> result = new ArrayList<GroupedTaskAdapter.VideoGroup>();
        if (tasks == null || tasks.isEmpty()) {
            return result;
        }
        LinkedHashMap<String, GroupedTaskAdapter.VideoGroup> map = new LinkedHashMap<String, GroupedTaskAdapter.VideoGroup>();
        for (DownloadTask task : tasks) {
            if (task.getBvid() == null) {
                continue;
            }
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
            result.add(group);
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
