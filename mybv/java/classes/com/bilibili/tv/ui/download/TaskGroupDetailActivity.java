package com.bilibili.tv.ui.download;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentTransaction;
import android.widget.TextView;
import com.bilibili.tv.R;

/**
 * 下载管理第二级：同一视频的分P任务明细页
 * 通过bvid过滤展示该视频的所有下载任务，复用DownloadingFragment/DownloadedFragment
 */
public class TaskGroupDetailActivity extends FragmentActivity {
    public static final String EXTRA_BVID = "group_bvid";
    public static final String EXTRA_TITLE = "group_title";
    public static final String EXTRA_SHOW_COMPLETED = "group_show_completed";

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_task_group_detail);

        String bvid = getIntent().getStringExtra(EXTRA_BVID);
        String title = getIntent().getStringExtra(EXTRA_TITLE);
        boolean showCompleted = getIntent().getBooleanExtra(EXTRA_SHOW_COMPLETED, false);

        TextView titleView = (TextView) findViewById(R.id.task_group_title);
        titleView.setText(title != null && !title.isEmpty() ? title : "分P任务列表");

        // 添加分P任务列表Fragment（带bvid过滤参数）
        Fragment fragment = showCompleted ? new DownloadedFragment() : new DownloadingFragment();
        Bundle args = new Bundle();
        args.putString(DownloadingFragment.ARG_BVID, bvid);
        fragment.setArguments(args);

        FragmentTransaction ft = getSupportFragmentManager().beginTransaction();
        ft.replace(R.id.fragment_container, fragment);
        ft.commit();
    }
}
