package bl;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import com.bilibili.tv.R;
import com.bilibili.tv.widget.DrawFrameLayout;

/* compiled from: BL */
/* loaded from: classes.dex */
public final class afm5 extends adw implements View.OnFocusChangeListener, View.OnClickListener {
    public static final a Companion = new a(null);

    // UI组件
    private DrawFrameLayout downloadPathButton;
    private TextView downloadPathDetail;

    private DrawFrameLayout quality1080pButton;
    private DrawFrameLayout quality720pButton;
    private DrawFrameLayout quality480pButton;

    private DrawFrameLayout audioHighButton;
    private DrawFrameLayout audioNormalButton;

    private DrawFrameLayout codecAvcButton;
    private DrawFrameLayout codecHevcButton;

    // 设置项
    private String downloadPath = "";
    private int quality = 80; // 默认1080P
    private int audioQuality = 30280; // 默认高品质
    private String codec = "avc"; // 默认AVC

    // 文件夹选择器（右侧弹出菜单对话框，参考收藏夹页 FavoriteMenuDialog）
    private android.app.Dialog folderPickerDialog = null;
    private java.io.File folderPickerCurrentDir = null;

    @Override // bl.adw
    public boolean c() {
        return true;
    }

    @Override // bl.aea
    public void d_() {
    }

    /**
     * DPAD_LEFT处理
     * 焦点在设置按钮上时返回false（允许焦点移回左侧菜单）
     * 焦点不在按钮上时返回true（消费事件）
     */
    public final boolean b() {
        if (this.downloadPathButton != null && this.downloadPathButton.hasFocus()) {
            return false;
        }
        if (this.quality1080pButton != null && this.quality1080pButton.hasFocus()) {
            return false;
        }
        if (this.quality720pButton != null && this.quality720pButton.hasFocus()) {
            return false;
        }
        if (this.quality480pButton != null && this.quality480pButton.hasFocus()) {
            return false;
        }
        if (this.audioHighButton != null && this.audioHighButton.hasFocus()) {
            return false;
        }
        if (this.audioNormalButton != null && this.audioNormalButton.hasFocus()) {
            return false;
        }
        if (this.codecAvcButton != null && this.codecAvcButton.hasFocus()) {
            return false;
        }
        if (this.codecHevcButton != null && this.codecHevcButton.hasFocus()) {
            return false;
        }
        return true;
    }

    /**
     * DPAD_RIGHT处理
     * 面板内已有按钮获得焦点时返回false（交由框架处理焦点移动）
     * 面板内无按钮获得焦点时，主动请求焦点到第一个按钮并返回true
     */
    public final boolean a() {
        if (this.downloadPathButton == null) {
            return false;
        }
        if (this.downloadPathButton.hasFocus()
                || this.quality1080pButton.hasFocus()
                || this.quality720pButton.hasFocus()
                || this.quality480pButton.hasFocus()
                || this.audioHighButton.hasFocus()
                || this.audioNormalButton.hasFocus()
                || this.codecAvcButton.hasFocus()
                || this.codecHevcButton.hasFocus()) {
            return false;
        }
        this.downloadPathButton.requestFocus();
        return true;
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        bbi.b(inflater, "inflater");
        View inflate = inflater.inflate(R.layout.fragment_download_settings, viewGroup, false);

        // 初始化UI组件
        downloadPathButton = (DrawFrameLayout) inflate.findViewById(R.id.download_path_button);
        downloadPathDetail = (TextView) inflate.findViewById(R.id.download_path_detail);

        quality1080pButton = (DrawFrameLayout) inflate.findViewById(R.id.quality_1080p_button);
        quality720pButton = (DrawFrameLayout) inflate.findViewById(R.id.quality_720p_button);
        quality480pButton = (DrawFrameLayout) inflate.findViewById(R.id.quality_480p_button);

        audioHighButton = (DrawFrameLayout) inflate.findViewById(R.id.audio_high_button);
        audioNormalButton = (DrawFrameLayout) inflate.findViewById(R.id.audio_normal_button);

        codecAvcButton = (DrawFrameLayout) inflate.findViewById(R.id.codec_avc_button);
        codecHevcButton = (DrawFrameLayout) inflate.findViewById(R.id.codec_hevc_button);

        // 加载保存的设置
        loadSettings();

        // 设置点击事件
        downloadPathButton.setOnClickListener(this);
        quality1080pButton.setOnClickListener(this);
        quality720pButton.setOnClickListener(this);
        quality480pButton.setOnClickListener(this);
        audioHighButton.setOnClickListener(this);
        audioNormalButton.setOnClickListener(this);
        codecAvcButton.setOnClickListener(this);
        codecHevcButton.setOnClickListener(this);

        // 设置焦点监听器
        downloadPathButton.setOnFocusChangeListener(this);
        quality1080pButton.setOnFocusChangeListener(this);
        quality720pButton.setOnFocusChangeListener(this);
        quality480pButton.setOnFocusChangeListener(this);
        audioHighButton.setOnFocusChangeListener(this);
        audioNormalButton.setOnFocusChangeListener(this);
        codecAvcButton.setOnFocusChangeListener(this);
        codecHevcButton.setOnFocusChangeListener(this);

        // 设置高亮效果
        downloadPathButton.setUpDrawable(R.drawable.shadow_white_rect);
        quality1080pButton.setUpDrawable(R.drawable.shadow_white_rect);
        quality720pButton.setUpDrawable(R.drawable.shadow_white_rect);
        quality480pButton.setUpDrawable(R.drawable.shadow_white_rect);
        audioHighButton.setUpDrawable(R.drawable.shadow_white_rect);
        audioNormalButton.setUpDrawable(R.drawable.shadow_white_rect);
        codecAvcButton.setUpDrawable(R.drawable.shadow_white_rect);
        codecHevcButton.setUpDrawable(R.drawable.shadow_white_rect);

        // 更新UI显示
        updateUI();

        return inflate;
    }

    /**
     * 加载保存的设置
     */
    private void loadSettings() {
        Activity activity = getActivity();
        if (activity == null) {
            return;
        }

        SharedPreferences prefs = activity.getSharedPreferences("download_settings", Context.MODE_PRIVATE);
        downloadPath = prefs.getString("download_path", "");
        quality = prefs.getInt("quality", 80); // 默认1080P
        audioQuality = prefs.getInt("audio_quality", 30280); // 默认高品质
        codec = prefs.getString("codec", "avc"); // 默认AVC

        Log.i("afm5", "加载设置: path=" + downloadPath + ", quality=" + quality + ", audio=" + audioQuality + ", codec=" + codec);
    }

    /**
     * 保存设置
     */
    private void saveSettings() {
        Activity activity = getActivity();
        if (activity == null) {
            return;
        }

        SharedPreferences prefs = activity.getSharedPreferences("download_settings", Context.MODE_PRIVATE);
        SharedPreferences.Editor editor = prefs.edit();
        editor.putString("download_path", downloadPath);
        editor.putInt("quality", quality);
        editor.putInt("audio_quality", audioQuality);
        editor.putString("codec", codec);
        editor.apply();

        Log.i("afm5", "保存设置: path=" + downloadPath + ", quality=" + quality + ", audio=" + audioQuality + ", codec=" + codec);
    }

    /**
     * 更新UI显示
     */
    private void updateUI() {
        // 更新下载路径显示（按钮固定显示"修改"，完整路径单独展示）
        if (downloadPathDetail != null) {
            if (downloadPath == null || downloadPath.isEmpty()) {
                downloadPathDetail.setText("未设置");
            } else {
                downloadPathDetail.setText(downloadPath);
            }
        }

        // 更新画质按钮状态
        updateButtonState(quality1080pButton, quality == 80);
        updateButtonState(quality720pButton, quality == 64);
        updateButtonState(quality480pButton, quality == 32);

        // 更新音质按钮状态
        updateButtonState(audioHighButton, audioQuality == 30280);
        updateButtonState(audioNormalButton, audioQuality == 30216);

        // 更新编码按钮状态
        updateButtonState(codecAvcButton, codec.equals("avc"));
        updateButtonState(codecHevcButton, codec.equals("hevc"));
    }

    /**
     * 更新按钮选中状态（与设置页其它项目一致：未选中 white_10，选中 white_50）
     */
    private void updateButtonState(DrawFrameLayout button, boolean selected) {
        if (selected) {
            button.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
        } else {
            button.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == downloadPathButton) {
            showFolderPicker();
        } else if (view == quality1080pButton) {
            quality = 80;
            updateUI();
            saveSettings();
        } else if (view == quality720pButton) {
            quality = 64;
            updateUI();
            saveSettings();
        } else if (view == quality480pButton) {
            quality = 32;
            updateUI();
            saveSettings();
        } else if (view == audioHighButton) {
            audioQuality = 30280;
            updateUI();
            saveSettings();
        } else if (view == audioNormalButton) {
            audioQuality = 30216;
            updateUI();
            saveSettings();
        } else if (view == codecAvcButton) {
            codec = "avc";
            updateUI();
            saveSettings();
        } else if (view == codecHevcButton) {
            codec = "hevc";
            updateUI();
            saveSettings();
        }
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean hasFocus) {
        if (view instanceof DrawFrameLayout) {
            DrawFrameLayout button = (DrawFrameLayout) view;
            // 焦点高亮与其它设置页一致，使用 setUpEnabled 控制白色描边
            button.setUpEnabled(hasFocus);
            if (!hasFocus) {
                // 失去焦点后根据选中状态恢复背景
                boolean selected = false;
                if (view == quality1080pButton && quality == 80) selected = true;
                else if (view == quality720pButton && quality == 64) selected = true;
                else if (view == quality480pButton && quality == 32) selected = true;
                else if (view == audioHighButton && audioQuality == 30280) selected = true;
                else if (view == audioNormalButton && audioQuality == 30216) selected = true;
                else if (view == codecAvcButton && codec.equals("avc")) selected = true;
                else if (view == codecHevcButton && codec.equals("hevc")) selected = true;

                updateButtonState(button, selected);
            }
        }
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        // 防止 Activity 销毁时对话框残留（对话框是独立窗口，不会进入 BaseActivity 的 removeAllViews）
        hideFolderPicker();
    }

    /**
     * 显示文件夹选择器（右侧弹出菜单对话框，参考收藏夹页 FavoriteMenuDialog）
     * 布局模式：全屏透明背景 + 右侧 300dp 半透明面板
     * 默认目录：/sdcard/Download 或系统默认下载文件夹
     * 只显示文件夹，带"确定"按钮选择当前打开的文件夹
     * 按返回键退出对话框（Dialog 默认处理），不修改选择目录
     */
    private void showFolderPicker() {
        final Activity activity = getActivity();
        if (activity == null) {
            return;
        }

        // 检查存储权限（Android 6.0+）
        if (android.os.Build.VERSION.SDK_INT >= 23) {
            if (activity.checkSelfPermission(android.Manifest.permission.READ_EXTERNAL_STORAGE)
                    != android.content.pm.PackageManager.PERMISSION_GRANTED) {
                Log.w("afm5", "没有存储权限，请求权限");
                activity.requestPermissions(
                        new String[]{android.Manifest.permission.READ_EXTERNAL_STORAGE},
                        1002
                );
                Toast.makeText(activity, "请授予存储权限后再试", Toast.LENGTH_SHORT).show();
                return;
            }
        }

        // 隐藏已存在的对话框
        hideFolderPicker();

        // 默认目录：系统下载文件夹，其次 /sdcard/Download，最后外部存储根目录
        java.io.File defaultDir = android.os.Environment.getExternalStoragePublicDirectory(
                android.os.Environment.DIRECTORY_DOWNLOADS);
        if (defaultDir == null || !defaultDir.exists()) {
            defaultDir = new java.io.File(android.os.Environment.getExternalStorageDirectory(), "Download");
        }
        if (!defaultDir.exists()) {
            defaultDir = android.os.Environment.getExternalStorageDirectory();
        }
        folderPickerCurrentDir = defaultDir;

        // 根布局：全屏 FrameLayout（左侧透明 dim 区域 + 右侧 300dp 面板）
        final android.widget.FrameLayout rootLayout = new android.widget.FrameLayout(activity);

        // 左侧透明区域（占位，保持与收藏夹菜单一致的布局结构）
        View dimView = new View(activity);
        dimView.setBackgroundColor(android.graphics.Color.TRANSPARENT);
        rootLayout.addView(dimView, new android.widget.FrameLayout.LayoutParams(
                android.widget.FrameLayout.LayoutParams.MATCH_PARENT,
                android.widget.FrameLayout.LayoutParams.MATCH_PARENT
        ));

        // 右侧面板（300dp，垂直，半透明黑色）
        final android.widget.LinearLayout panel = new android.widget.LinearLayout(activity);
        panel.setOrientation(android.widget.LinearLayout.VERTICAL);
        panel.setBackgroundColor(android.graphics.Color.parseColor("#CC000000"));
        android.widget.FrameLayout.LayoutParams panelParams = new android.widget.FrameLayout.LayoutParams(
                (int) android.util.TypedValue.applyDimension(
                        android.util.TypedValue.COMPLEX_UNIT_DIP, 300,
                        activity.getResources().getDisplayMetrics()),
                android.widget.FrameLayout.LayoutParams.MATCH_PARENT
        );
        panelParams.gravity = android.view.Gravity.RIGHT;
        rootLayout.addView(panel, panelParams);

        // 标题
        android.widget.TextView titleView = new android.widget.TextView(activity);
        titleView.setText("选择下载文件夹");
        titleView.setTextColor(android.graphics.Color.WHITE);
        titleView.setTextSize(android.util.TypedValue.COMPLEX_UNIT_SP, 18);
        titleView.setPadding(24, 24, 24, 24);
        titleView.setGravity(android.view.Gravity.CENTER);
        panel.addView(titleView, new android.widget.LinearLayout.LayoutParams(
                android.widget.LinearLayout.LayoutParams.MATCH_PARENT,
                android.widget.LinearLayout.LayoutParams.WRAP_CONTENT
        ));

        // 路径显示
        final android.widget.TextView pathView = new android.widget.TextView(activity);
        pathView.setTextColor(android.graphics.Color.LTGRAY);
        pathView.setTextSize(android.util.TypedValue.COMPLEX_UNIT_SP, 14);
        pathView.setPadding(24, 8, 24, 8);
        panel.addView(pathView, new android.widget.LinearLayout.LayoutParams(
                android.widget.LinearLayout.LayoutParams.MATCH_PARENT,
                android.widget.LinearLayout.LayoutParams.WRAP_CONTENT
        ));

        // 文件夹列表（只显示文件夹）
        final android.widget.ListView folderListView = new android.widget.ListView(activity);
        folderListView.setDivider(new android.graphics.drawable.ColorDrawable(android.graphics.Color.DKGRAY));
        folderListView.setDividerHeight(1);
        folderListView.setFocusable(true);
        folderListView.setFocusableInTouchMode(true);
        folderListView.setDescendantFocusability(android.view.ViewGroup.FOCUS_BEFORE_DESCENDANTS);
        folderListView.setCacheColorHint(android.graphics.Color.TRANSPARENT);
        panel.addView(folderListView, new android.widget.LinearLayout.LayoutParams(
                android.widget.LinearLayout.LayoutParams.MATCH_PARENT, 0, 1f
        ));

        // 确定按钮：选择当前打开的文件夹（DrawFrameLayout，焦点高亮与设置页其它按钮一致）
        final com.bilibili.tv.widget.DrawFrameLayout confirmButton = new com.bilibili.tv.widget.DrawFrameLayout(activity);
        confirmButton.setFocusable(true);
        confirmButton.setFocusableInTouchMode(true);
        confirmButton.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
        confirmButton.setUpDrawable(R.drawable.shadow_white_rect);
        android.widget.TextView confirmText = new android.widget.TextView(activity);
        confirmText.setText("确定");
        confirmText.setTextColor(android.graphics.Color.WHITE);
        confirmText.setTextSize(android.util.TypedValue.COMPLEX_UNIT_SP, 18);
        confirmText.setGravity(android.view.Gravity.CENTER);
        confirmButton.addView(confirmText, new android.widget.FrameLayout.LayoutParams(
                android.widget.FrameLayout.LayoutParams.MATCH_PARENT,
                android.widget.FrameLayout.LayoutParams.MATCH_PARENT
        ));
        int confirmHeight = (int) android.util.TypedValue.applyDimension(
                android.util.TypedValue.COMPLEX_UNIT_DIP, 56,
                activity.getResources().getDisplayMetrics());
        android.widget.LinearLayout.LayoutParams confirmLp = new android.widget.LinearLayout.LayoutParams(
                android.widget.LinearLayout.LayoutParams.MATCH_PARENT, confirmHeight);
        confirmLp.setMargins(24, 16, 24, 16);
        panel.addView(confirmButton, confirmLp);

        // 创建对话框（独立窗口，不加入 Activity 视图层级，避免 BaseActivity 销毁时 removeAllViews 崩溃）
        // 参考收藏夹页 FavoriteMenuDialog：requestWindowFeature(1) + 透明背景 + setFlags(0x600, 0x600) + 全屏窗口
        final android.app.Dialog dialog = new android.app.Dialog(activity);
        dialog.requestWindowFeature(1); // 无标题栏
        dialog.setContentView(rootLayout);
        dialog.getWindow().setBackgroundDrawable(new android.graphics.drawable.ColorDrawable(0));
        dialog.getWindow().setFlags(0x600, 0x600); // FLAG_LAYOUT_NO_LIMITS | FLAG_FULLSCREEN
        android.view.WindowManager.LayoutParams params = dialog.getWindow().getAttributes();
        params.width = android.view.WindowManager.LayoutParams.MATCH_PARENT;
        params.height = android.view.WindowManager.LayoutParams.MATCH_PARENT;
        dialog.getWindow().setAttributes(params);
        dialog.setCanceledOnTouchOutside(false);
        folderPickerDialog = dialog;

        Log.i("afm5", "文件夹选择对话框已显示，默认目录: " + defaultDir.getAbsolutePath());

        // 加载文件夹列表
        loadFolderList(folderListView, pathView, defaultDir);

        // 确定按钮点击：选择当前文件夹
        confirmButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (folderPickerCurrentDir == null) {
                    return;
                }
                downloadPath = folderPickerCurrentDir.getAbsolutePath();
                Log.i("afm5", "确认选择下载文件夹: " + downloadPath);
                updateUI();
                saveSettings();
                hideFolderPicker();
            }
        });

        // 焦点导航：列表最后一项按"下"键时，焦点移动到确定按钮（ListView 会消费方向键，需在 OnKeyListener 中提前拦截）
        folderListView.setOnKeyListener(new View.OnKeyListener() {
            @Override
            public boolean onKey(View v, int keyCode, android.view.KeyEvent event) {
                if (event.getAction() == android.view.KeyEvent.ACTION_DOWN
                        && keyCode == android.view.KeyEvent.KEYCODE_DPAD_DOWN) {
                    int selected = folderListView.getSelectedItemPosition();
                    // 已到最后一项（或列表为空）时，向下移动焦点到确定按钮
                    if (selected >= folderListView.getCount() - 1) {
                        confirmButton.requestFocus();
                        return true;
                    }
                }
                return false;
            }
        });

        // 确定按钮按"上"键回到列表
        confirmButton.setOnKeyListener(new View.OnKeyListener() {
            @Override
            public boolean onKey(View v, int keyCode, android.view.KeyEvent event) {
                if (event.getAction() == android.view.KeyEvent.ACTION_DOWN
                        && keyCode == android.view.KeyEvent.KEYCODE_DPAD_UP) {
                    folderListView.requestFocus();
                    return true;
                }
                return false;
            }
        });

        // 确定按钮焦点高亮（与设置页其它按钮一致的白色描边）
        confirmButton.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            @Override
            public void onFocusChange(View v, boolean hasFocus) {
                confirmButton.setUpEnabled(hasFocus);
            }
        });

        // 显示对话框
        dialog.show();

        // 列表自动请求焦点
        folderListView.post(new Runnable() {
            @Override
            public void run() {
                folderListView.requestFocus();
            }
        });
    }

    /**
     * 加载文件夹列表（只显示文件夹，文件夹优先，按名称排序）
     */
    private void loadFolderList(final android.widget.ListView listView, final android.widget.TextView pathView,
                                final java.io.File currentDir) {
        final Activity activity = getActivity();
        if (activity == null) {
            return;
        }
        folderPickerCurrentDir = currentDir;

        // 更新路径显示
        pathView.setText("当前: " + currentDir.getAbsolutePath());

        // 获取子项
        java.io.File[] files = currentDir.listFiles();
        if (files == null) {
            Log.e("afm5", "listFiles()返回null，可能没有权限或目录不存在");
            Toast.makeText(activity, "无法访问目录", Toast.LENGTH_SHORT).show();
            return;
        }

        // 只收集文件夹（跳过隐藏目录），按名称排序
        java.util.List<java.io.File> folderList = new java.util.ArrayList<>();
        for (java.io.File file : files) {
            if (file.isDirectory() && !file.getName().startsWith(".")) {
                folderList.add(file);
            }
        }
        java.util.Collections.sort(folderList, new java.util.Comparator<java.io.File>() {
            @Override
            public int compare(java.io.File a, java.io.File b) {
                return a.getName().compareToIgnoreCase(b.getName());
            }
        });

        // 构建显示项：上级目录 + 文件夹
        java.util.List<String> items = new java.util.ArrayList<>();
        final java.util.List<java.io.File> allFiles = new java.util.ArrayList<>();

        if (currentDir.getParentFile() != null) {
            items.add("↑ 上级");
            allFiles.add(null);
        }
        for (java.io.File folder : folderList) {
            items.add("📁 " + folder.getName());
            allFiles.add(folder);
        }

        Log.i("afm5", "加载文件夹列表: " + currentDir.getAbsolutePath() + ", 共 " + items.size() + " 项");

        // 适配器（白色文本，选中蓝色背景）
        android.widget.ArrayAdapter<String> adapter = new android.widget.ArrayAdapter<String>(
                activity, android.R.layout.simple_list_item_1, items
        ) {
            @Override
            public android.view.View getView(int position, android.view.View convertView, android.view.ViewGroup parent) {
                android.view.View view = super.getView(position, convertView, parent);
                if (view instanceof android.widget.TextView) {
                    android.widget.TextView textView = (android.widget.TextView) view;
                    textView.setTextColor(android.graphics.Color.WHITE);
                    textView.setTextSize(android.util.TypedValue.COMPLEX_UNIT_SP, 16);
                    textView.setPadding(16, 16, 16, 16);
                }
                if (parent instanceof android.widget.ListView) {
                    android.widget.ListView lv = (android.widget.ListView) parent;
                    if (position == lv.getSelectedItemPosition()) {
                        view.setBackgroundColor(android.graphics.Color.parseColor("#1E90FF"));
                    } else {
                        view.setBackgroundColor(android.graphics.Color.TRANSPARENT);
                    }
                }
                return view;
            }
        };

        // 选中项变化时刷新背景色
        listView.setOnItemSelectedListener(new android.widget.AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(android.widget.AdapterView<?> parent, android.view.View view, int position, long id) {
                parent.post(new Runnable() {
                    @Override
                    public void run() {
                        ((android.widget.ListView) parent).invalidateViews();
                    }
                });
            }

            @Override
            public void onNothingSelected(android.widget.AdapterView<?> parent) {
            }
        });

        listView.setAdapter(adapter);

        // 点击：进入文件夹或返回上级
        listView.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(android.widget.AdapterView<?> parent, android.view.View view, int position, long id) {
                java.io.File selected = allFiles.get(position);
                if (selected == null) {
                    // 上级目录
                    loadFolderList(listView, pathView, currentDir.getParentFile());
                } else {
                    // 进入文件夹
                    loadFolderList(listView, pathView, selected);
                }
            }
        });

        // 返回键：由 Dialog 统一处理（dismiss，不修改选择目录）
    }

    /**
     * 隐藏文件夹选择器（关闭对话框）
     */
    private void hideFolderPicker() {
        if (folderPickerDialog != null) {
            try {
                folderPickerDialog.dismiss();
            } catch (Exception e) {
                Log.w("afm5", "关闭文件夹选择对话框异常: " + e.getMessage());
            }
            folderPickerDialog = null;
        }
        folderPickerCurrentDir = null;
        Log.i("afm5", "文件夹选择对话框已关闭");

        // 恢复焦点到下载路径按钮
        if (downloadPathButton != null) {
            downloadPathButton.requestFocus();
        }
    }

    /* compiled from: BL */
    /* loaded from: classes.dex */
    public static final class a {
        public /* synthetic */ a(agb agbVar) {
            this();
        }

        private a() {
        }

        public final afm5 a() {
            return new afm5();
        }
    }
}