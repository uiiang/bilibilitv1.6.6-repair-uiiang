package com.bilibili.tv.ui.download;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import com.bilibili.tv.R;
import com.bilibili.tv.api.video.BiliVideoDetail;
import com.bilibili.tv.ui.download.adapter.EpisodeSelectAdapter;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/**
 * 分P选择Activity
 * 用于选择要下载的分P视频
 */
public class EpisodeSelectActivity extends Activity {

    private static final String TAG = "EpisodeSelect";

    // Intent参数
    public static final String EXTRA_AVID = "avid";
    public static final String EXTRA_BVID = "bvid";
    public static final String EXTRA_TITLE = "title";
    public static final String EXTRA_COVER = "cover";
    public static final String EXTRA_UP_NAME = "up_name";
    public static final String EXTRA_EPISODES = "episodes";

    private RecyclerView episodeListView;
    private EpisodeSelectAdapter adapter;
    private TextView selectedCountText;
    private TextView totalSizeText;
    private Button startDownloadButton;
    private Button cancelButton;
    private TextView selectAllCheckbox;

    private long avid;
    private String bvid;
    private String title;
    private String cover;
    private String upName;
    private List<BiliVideoDetail.Page> episodeList;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_episode_select);

        // 获取Intent参数
        Intent intent = getIntent();
        avid = intent.getLongExtra(EXTRA_AVID, 0);
        bvid = intent.getStringExtra(EXTRA_BVID);
        title = intent.getStringExtra(EXTRA_TITLE);
        cover = intent.getStringExtra(EXTRA_COVER);
        upName = intent.getStringExtra(EXTRA_UP_NAME);
        episodeList = intent.getParcelableArrayListExtra(EXTRA_EPISODES);

        Log.i(TAG, "onCreate: avid=" + avid + ", bvid=" + bvid + ", title=" + title);
        Log.i(TAG, "onCreate: episodeList size=" + (episodeList != null ? episodeList.size() : 0));

        initViews();
        setupAdapter();
    }

    private void initViews() {
        episodeListView = (RecyclerView) findViewById(R.id.episode_list);
        selectedCountText = (TextView) findViewById(R.id.selected_count);
        totalSizeText = (TextView) findViewById(R.id.total_size);
        startDownloadButton = (Button) findViewById(R.id.start_download_button);
        cancelButton = (Button) findViewById(R.id.cancel_button);
        selectAllCheckbox = (TextView) findViewById(R.id.select_all_checkbox);

        // 设置视频信息
        TextView titleText = (TextView) findViewById(R.id.video_title);
        TextView upNameText = (TextView) findViewById(R.id.up_name);
        TextView totalCountText = (TextView) findViewById(R.id.total_count);

        if (title != null) {
            titleText.setText("视频标题: " + title);
        }
        if (upName != null) {
            upNameText.setText("UP主: " + upName);
        }
        if (episodeList != null) {
            totalCountText.setText("总分P数: " + episodeList.size());
        }

        // 设置按钮点击事件
        cancelButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();
            }
        });

        startDownloadButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startDownload();
            }
        });

        // 全选/取消全选点击事件
        selectAllCheckbox.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                toggleSelectAll();
            }
        });
    }

    /**
     * 切换全选/取消全选
     */
    private void toggleSelectAll() {
        if (adapter == null) {
            return;
        }
        if (adapter.getSelectedCount() == episodeList.size()) {
            adapter.unselectAll();
        } else {
            adapter.selectAll();
        }
        updateSelectedInfo();
    }

    private void setupAdapter() {
        if (episodeList == null || episodeList.isEmpty()) {
            Log.w(TAG, "episodeList is null or empty");
            return;
        }

        adapter = new EpisodeSelectAdapter(this, episodeList);
        adapter.setVideoCoverUrl(cover); // 视频主封面（分P first_frame为空时兜底）
        episodeListView.setLayoutManager(new LinearLayoutManager(this));
        episodeListView.setAdapter(adapter);

        // 设置点击监听器
        adapter.setOnEpisodeClickListener(new EpisodeSelectAdapter.OnEpisodeClickListener() {
            @Override
            public void onEpisodeClick(int position, boolean isSelected) {
                updateSelectedInfo();
            }
        });

        // 默认全选第一个
        adapter.selectAll();
        updateSelectedInfo();

        // 进入页面后自动聚焦到列表第一个item（保证遥控器焦点位置可见）
        episodeListView.post(new Runnable() {
            @Override
            public void run() {
                if (episodeListView.getChildCount() > 0) {
                    episodeListView.getChildAt(0).requestFocus();
                } else {
                    episodeListView.requestFocus();
                }
            }
        });
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        // 菜单键：全选/全不选
        if (keyCode == KeyEvent.KEYCODE_MENU) {
            toggleSelectAll();
            return true;
        }

        View focusedView = getCurrentFocus();

        // 判断焦点是否在分P列表内（沿parent链向上查找RecyclerView，兼容焦点在item或item子view上）
        // 注意：parent链顶层是ViewRootImpl（实现ViewParent但不是View），必须用ViewParent遍历避免强转崩溃
        boolean focusInList = false;
        android.view.ViewParent p = focusedView != null ? focusedView.getParent() : null;
        while (p != null) {
            if (p == episodeListView) {
                focusInList = true;
                break;
            }
            p = p.getParent();
        }

        // 焦点在分P列表中：左键移到取消按钮，右键移到开始下载按钮
        if (focusInList) {
            switch (keyCode) {
                case KeyEvent.KEYCODE_DPAD_LEFT:
                    cancelButton.requestFocus();
                    return true;
                case KeyEvent.KEYCODE_DPAD_RIGHT:
                    if (startDownloadButton.isEnabled()) {
                        startDownloadButton.requestFocus();
                    } else {
                        cancelButton.requestFocus();
                    }
                    return true;
            }
        }

        // 如果焦点在底部按钮上
        if (focusedView == cancelButton || focusedView == startDownloadButton) {
            switch (keyCode) {
                case KeyEvent.KEYCODE_DPAD_UP:
                    // 上键：焦点移动回RecyclerView
                    if (episodeListView.getAdapter() != null && episodeListView.getAdapter().a() > 0) {
                        episodeListView.requestFocus();
                        // 将焦点移动到第一个可见的item
                        View firstVisibleChild = episodeListView.getChildAt(0);
                        if (firstVisibleChild != null) {
                            firstVisibleChild.requestFocus();
                        }
                    }
                    return true;
            }
        }

        return super.onKeyDown(keyCode, event);
    }

    /**
     * 更新已选择信息
     */
    private void updateSelectedInfo() {
        if (adapter == null) {
            return;
        }

        int selectedCount = adapter.getSelectedCount();
        selectedCountText.setText("已选择: " + selectedCount + "个");

        // 计算总大小
        long totalSize = 0;
        Set<Integer> selectedEpisodes = adapter.getSelectedEpisodes();
        for (int index : selectedEpisodes) {
            BiliVideoDetail.Page page = episodeList.get(index);
            totalSize += estimateFileSize(page);
        }
        totalSizeText.setText("总大小: " + formatFileSize(totalSize));

        // 启用/禁用下载按钮
        startDownloadButton.setEnabled(selectedCount > 0);

        // 同步全选/取消全选文字状态
        boolean isAllSelected = (selectedCount == episodeList.size());
        selectAllCheckbox.setText(isAllSelected ? "✓ 全选/取消全选" : "○ 全选/取消全选");
        selectAllCheckbox.setTextColor(isAllSelected ? Color.parseColor("#FB7299") : Color.parseColor("#333333"));
    }

    /**
     * 开始下载
     */
    private void startDownload() {
        if (adapter == null) {
            return;
        }

        Set<Integer> selectedEpisodes = adapter.getSelectedEpisodes();
        if (selectedEpisodes.isEmpty()) {
            Toast.makeText(this, "请选择要下载的分P", Toast.LENGTH_SHORT).show();
            return;
        }

        Log.i(TAG, "startDownload: selectedEpisodes count=" + selectedEpisodes.size());

        // 添加下载任务
        int taskCount = 0;
        for (int index : selectedEpisodes) {
            BiliVideoDetail.Page page = episodeList.get(index);
            long cid = page.mCid;
            String partTitle = page.mTitle;

            Log.i(TAG, "startDownload: adding task for index=" + index + ", cid=" + cid + ", partTitle=" + partTitle);

            // 调用VideoDetailDownloadHelper添加下载任务（分P序号从1开始）
            VideoDetailDownloadHelper.startDownload(
                    this,
                    avid,
                    bvid,
                    cid,
                    title,
                    partTitle,
                    cover,
                    upName,
                    page.duration, // duration单位是秒
                    index + 1, // 分P序号（从1开始）
                    episodeList.size(), // 视频总P数
                    null // qualityList参数为null，使用默认画质
            );

            taskCount++;
        }

        // 显示提示
        Toast.makeText(this, "已添加" + taskCount + "个视频到下载队列", Toast.LENGTH_SHORT).show();

        // 返回视频详情页
        finish();
    }

    /**
     * 预估文件大小（假设720P画质约为1MB/秒）
     */
    private long estimateFileSize(BiliVideoDetail.Page page) {
        if (page.duration > 0) {
            return page.duration * 1024 * 1024L; // duration单位是秒
        }
        return 100 * 1024 * 1024L; // 默认100MB
    }

    /**
     * 格式化文件大小
     */
    private String formatFileSize(long size) {
        if (size < 1024) {
            return size + "B";
        } else if (size < 1024 * 1024) {
            return String.format("%.2fKB", size / 1024.0);
        } else if (size < 1024 * 1024 * 1024) {
            return String.format("%.2fMB", size / (1024.0 * 1024));
        } else {
            return String.format("%.2fGB", size / (1024.0 * 1024 * 1024));
        }
    }

    /**
     * 启动分P选择Activity的静态方法
     */
    public static void start(Context context, long avid, String bvid, String title,
                            String cover, String upName, List<BiliVideoDetail.Page> episodeList) {
        Intent intent = new Intent(context, EpisodeSelectActivity.class);
        intent.putExtra(EXTRA_AVID, avid);
        intent.putExtra(EXTRA_BVID, bvid);
        intent.putExtra(EXTRA_TITLE, title);
        intent.putExtra(EXTRA_COVER, cover);
        intent.putExtra(EXTRA_UP_NAME, upName);
        intent.putParcelableArrayListExtra(EXTRA_EPISODES, new ArrayList<>(episodeList));
        context.startActivity(intent);
    }
}