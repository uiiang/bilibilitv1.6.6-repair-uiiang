package com.bilibili.tv.ui.ebook;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Environment;
import android.util.Log;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

import com.bilibili.tv.ui.base.BaseActivity;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/**
 * 电子书文件选择器Activity（完全编程方式创建UI）
 */
public class EbookFileChooserActivity extends BaseActivity {

    private static final String TAG = "EbookFileChooser";
    private static final String EXTRA_SELECTED_FILE = "selected_file";
    private static final int REQUEST_CODE_SELECT_EBOOK = 1001;

    private TextView currentPathText;
    private TextView btnUp;
    private ListView fileListView;
    private TextView emptyHint;

    private File currentDir;
    private FileAdapter fileAdapter;
    private List<FileItem> fileItems = new ArrayList<>();

    // 支持的电子书格式
    private static final String[] SUPPORTED_EXTENSIONS = {".mobi", ".azw3", ".epub"};

    @Override
    public int g() {
        // 不使用XML布局，返回一个简单的布局ID
        return android.R.layout.list_content;
    }

    @Override
    public void a(Bundle bundle) {
        // 以编程方式创建布局
        createLayout();

        // 默认路径：/sdcard/Download
        File defaultDir = new File(Environment.getExternalStorageDirectory(), "Download");
        if (!defaultDir.exists()) {
            defaultDir = Environment.getExternalStorageDirectory();
        }

        // 加载文件列表
        loadDirectory(defaultDir);
    }

    @Override
    public void onDestroy() {
        // 清理视图，避免BaseActivity对ListView调用removeAllViews()
        if (fileListView != null && fileListView.getParent() != null) {
            ViewGroup parent = (ViewGroup) fileListView.getParent();
            parent.removeView(fileListView);
        }
        fileListView = null;
        
        // 调用父类的onDestroy
        super.onDestroy();
    }

    /**
     * 以编程方式创建布局
     */
    private void createLayout() {
        // 创建根布局
        LinearLayout rootLayout = new LinearLayout(this);
        rootLayout.setOrientation(LinearLayout.VERTICAL);
        rootLayout.setLayoutParams(new ViewGroup.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.MATCH_PARENT));
        rootLayout.setBackgroundColor(Color.BLACK);

        // 创建顶部布局（路径和上级按钮）
        LinearLayout topLayout = new LinearLayout(this);
        topLayout.setOrientation(LinearLayout.HORIZONTAL);
        topLayout.setLayoutParams(new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT,
                LinearLayout.LayoutParams.WRAP_CONTENT));
        topLayout.setPadding(30, 30, 30, 30);
        topLayout.setBackgroundColor(Color.parseColor("#80000000"));

        // 当前路径文本
        currentPathText = new TextView(this);
        currentPathText.setLayoutParams(new LinearLayout.LayoutParams(
                0,
                LinearLayout.LayoutParams.WRAP_CONTENT,
                1.0f));
        currentPathText.setTextColor(Color.WHITE);
        currentPathText.setTextSize(18);
        currentPathText.setText("/sdcard/Download");
        topLayout.addView(currentPathText);

        // 上级按钮
        btnUp = new TextView(this);
        btnUp.setLayoutParams(new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.WRAP_CONTENT,
                LinearLayout.LayoutParams.WRAP_CONTENT));
        btnUp.setTextColor(Color.parseColor("#CCCCCC"));
        btnUp.setTextSize(18);
        btnUp.setText("↑ 上级");
        btnUp.setPadding(30, 0, 30, 0);
        btnUp.setFocusable(true);
        btnUp.setBackgroundColor(Color.parseColor("#1A1A1A"));
        topLayout.addView(btnUp);

        rootLayout.addView(topLayout);

        // 创建文件列表
        fileListView = new ListView(this);
        fileListView.setLayoutParams(new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT,
                0,
                1.0f));
        fileListView.setBackgroundColor(Color.BLACK);
        rootLayout.addView(fileListView);

        // 创建空提示文本
        emptyHint = new TextView(this);
        emptyHint.setLayoutParams(new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT,
                LinearLayout.LayoutParams.MATCH_PARENT));
        emptyHint.setTextColor(Color.parseColor("#808080"));
        emptyHint.setTextSize(21);
        emptyHint.setText("没有找到电子书文件");
        emptyHint.setGravity(Gravity.CENTER);
        emptyHint.setVisibility(View.GONE);
        rootLayout.addView(emptyHint);

        // 设置为内容视图
        setContentView(rootLayout);

        // 设置适配器
        fileAdapter = new FileAdapter();
        fileListView.setAdapter(fileAdapter);

        // 设置上级按钮点击监听
        btnUp.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                navigateUp();
            }
        });

        // 设置上级按钮按键监听（支持遥控器）
        btnUp.setOnKeyListener(new View.OnKeyListener() {
            @Override
            public boolean onKey(View v, int keyCode, KeyEvent event) {
                if (event.getAction() == KeyEvent.ACTION_UP &&
                    (keyCode == KeyEvent.KEYCODE_DPAD_CENTER || keyCode == KeyEvent.KEYCODE_ENTER)) {
                    navigateUp();
                    return true;
                }
                return false;
            }
        });

        // 设置文件列表点击监听
        fileListView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                if (position >= 0 && position < fileItems.size()) {
                    FileItem item = fileItems.get(position);
                    handleItemClick(item);
                }
            }
        });
    }

    /**
     * 加载指定目录的文件列表
     */
    private void loadDirectory(File dir) {
        if (!dir.exists() || !dir.isDirectory()) {
            Log.w(TAG, "目录不存在或不是目录: " + dir.getAbsolutePath());
            Toast.makeText(this, "无法访问目录", Toast.LENGTH_SHORT).show();
            return;
        }

        currentDir = dir;
        currentPathText.setText(dir.getAbsolutePath());

        // 清空列表
        fileItems.clear();

        // 获取文件列表
        File[] files = dir.listFiles();
        if (files == null || files.length == 0) {
            showEmptyHint(true);
            fileAdapter.notifyDataSetChanged();
            return;
        }

        // 排序：文件夹优先，然后按名称排序
        List<File> fileList = new ArrayList<>(Arrays.asList(files));
        Collections.sort(fileList, new Comparator<File>() {
            @Override
            public int compare(File f1, File f2) {
                if (f1.isDirectory() && !f2.isDirectory()) {
                    return -1;
                } else if (!f1.isDirectory() && f2.isDirectory()) {
                    return 1;
                } else {
                    return f1.getName().compareToIgnoreCase(f2.getName());
                }
            }
        });

        // 添加文件夹和符合条件的文件
        for (File file : fileList) {
            if (file.isDirectory()) {
                // 添加文件夹
                fileItems.add(new FileItem(file, true));
            } else if (isEbookFile(file)) {
                // 添加电子书文件
                fileItems.add(new FileItem(file, false));
            }
        }

        showEmptyHint(fileItems.isEmpty());
        fileAdapter.notifyDataSetChanged();

        // 设置焦点到第一项
        if (!fileItems.isEmpty()) {
            fileListView.postDelayed(new Runnable() {
                @Override
                public void run() {
                    fileListView.setSelection(0);
                    fileListView.requestFocus();
                }
            }, 100);
        }
    }

    /**
     * 检查文件是否为电子书文件
     */
    private boolean isEbookFile(File file) {
        String name = file.getName().toLowerCase();
        for (String ext : SUPPORTED_EXTENSIONS) {
            if (name.endsWith(ext)) {
                return true;
            }
        }
        return false;
    }

    /**
     * 导航到上级目录
     */
    private void navigateUp() {
        if (currentDir == null) {
            return;
        }

        File parentDir = currentDir.getParentFile();
        if (parentDir != null && parentDir.canRead()) {
            loadDirectory(parentDir);
        } else {
            Toast.makeText(this, "无法访问上级目录", Toast.LENGTH_SHORT).show();
        }
    }

    /**
     * 显示/隐藏空提示
     */
    private void showEmptyHint(boolean show) {
        emptyHint.setVisibility(show ? View.VISIBLE : View.GONE);
        fileListView.setVisibility(show ? View.GONE : View.VISIBLE);
    }

    /**
     * 处理文件项点击
     */
    private void handleItemClick(FileItem item) {
        if (item.isDirectory) {
            // 打开文件夹
            loadDirectory(item.file);
        } else {
            // 选择文件
            selectFile(item.file);
        }
    }

    /**
     * 选择文件，返回结果
     */
    private void selectFile(File file) {
        Intent resultIntent = new Intent();
        resultIntent.putExtra(EXTRA_SELECTED_FILE, file.getAbsolutePath());
        setResult(RESULT_OK, resultIntent);
        finish();
    }

    /**
     * 获取选中的文件路径（静态方法）
     */
    public static String getSelectedFile(Intent data) {
        if (data != null) {
            return data.getStringExtra(EXTRA_SELECTED_FILE);
        }
        return null;
    }

    /**
     * 文件项数据类
     */
    private static class FileItem {
        File file;
        boolean isDirectory;

        FileItem(File file, boolean isDirectory) {
            this.file = file;
            this.isDirectory = isDirectory;
        }
    }

    /**
     * ListView适配器
     */
    private class FileAdapter extends BaseAdapter {

        @Override
        public int getCount() {
            return fileItems.size();
        }

        @Override
        public Object getItem(int position) {
            return fileItems.get(position);
        }

        @Override
        public long getItemId(int position) {
            return position;
        }

        @Override
        public View getView(int position, View convertView, ViewGroup parent) {
            LinearLayout itemLayout;

            if (convertView == null) {
                // 创建文件项布局
                itemLayout = new LinearLayout(parent.getContext());
                itemLayout.setOrientation(LinearLayout.HORIZONTAL);
                itemLayout.setLayoutParams(new ListView.LayoutParams(
                        ListView.LayoutParams.MATCH_PARENT,
                        ListView.LayoutParams.WRAP_CONTENT));
                itemLayout.setPadding(30, 30, 30, 30);
                itemLayout.setFocusable(true);
                itemLayout.setClickable(true);
                itemLayout.setBackgroundColor(Color.parseColor("#1A1A1A"));

                // 图标文本
                TextView iconText = new TextView(parent.getContext());
                iconText.setLayoutParams(new LinearLayout.LayoutParams(90, 90));
                iconText.setGravity(Gravity.CENTER);
                iconText.setTextColor(Color.WHITE);
                iconText.setTextSize(21);
                itemLayout.addView(iconText);

                // 文件名文本
                TextView nameText = new TextView(parent.getContext());
                LinearLayout.LayoutParams nameParams = new LinearLayout.LayoutParams(
                        0,
                        LinearLayout.LayoutParams.WRAP_CONTENT,
                        1.0f);
                nameParams.setMargins(30, 0, 0, 0);
                nameText.setLayoutParams(nameParams);
                nameText.setTextColor(Color.WHITE);
                nameText.setTextSize(18);
                nameText.setSingleLine(true);
                itemLayout.addView(nameText);

                // 设置tag以便复用（使用position作为key，避免依赖R.id）
                itemLayout.setTag(0, iconText);
                itemLayout.setTag(1, nameText);
            } else {
                itemLayout = (LinearLayout) convertView;
            }

            FileItem item = fileItems.get(position);
            TextView iconText = (TextView) itemLayout.getTag(0);
            TextView nameText = (TextView) itemLayout.getTag(1);

            nameText.setText(item.file.getName());

            // 设置图标（使用Unicode emoji）
            if (item.isDirectory) {
                iconText.setText("📁"); // 文件夹图标
            } else {
                iconText.setText("📄"); // 文件图标
            }

            return itemLayout;
        }
    }
}