package bl;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.provider.DocumentsContract;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import com.bilibili.tv.R;
import com.bilibili.tv.widget.DrawFrameLayout;
import com.bilibili.tv.ui.download.StorageManagerHelper;
import java.util.List;

/* compiled from: BL */
/* loaded from: classes.dex */
public final class afm5 extends adw implements View.OnFocusChangeListener, View.OnClickListener {
    public static final a Companion = new a(null);

    // UI组件
    private DrawFrameLayout downloadPathButton;
    private TextView downloadPathText;

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

    private static final int REQUEST_CODE_OPEN_DIRECTORY = 1001;

    @Override // bl.adw
    public boolean c() {
        return true;
    }

    @Override // bl.aea
    public void d_() {
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        bbi.b(inflater, "inflater");
        View inflate = inflater.inflate(R.layout.fragment_download_settings, viewGroup, false);

        // 初始化UI组件
        downloadPathButton = (DrawFrameLayout) inflate.findViewById(R.id.download_path_button);
        downloadPathText = (TextView) inflate.findViewById(R.id.download_path_text);

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
        Context context = getContext();
        if (context == null) {
            return;
        }

        SharedPreferences prefs = context.getSharedPreferences("download_settings", Context.MODE_PRIVATE);
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
        Context context = getContext();
        if (context == null) {
            return;
        }

        SharedPreferences prefs = context.getSharedPreferences("download_settings", Context.MODE_PRIVATE);
        SharedPreferences.Editor editor = prefs.edit();
        editor.putString("download_path", downloadPath);
        editor.putInt("quality", quality);
        editor.putInt("audio_quality", audioQuality);
        editor.putString("codec", codec);
        editor.apply();

        Log.i("afm5", "保存设置: path=" + downloadPath + ", quality=" + quality + ", audio=" + audioQuality + ", codec=" + codec);
        Toast.makeText(context, "设置已保存", Toast.LENGTH_SHORT).show();
    }

    /**
     * 更新UI显示
     */
    private void updateUI() {
        // 更新下载路径显示
        if (downloadPath == null || downloadPath.isEmpty()) {
            downloadPathText.setText("未设置");
        } else {
            downloadPathText.setText(downloadPath);
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
     * 更新按钮选中状态
     */
    private void updateButtonState(DrawFrameLayout button, boolean selected) {
        if (selected) {
            button.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
        } else {
            button.setBackgroundResource(R.color.transparent);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == downloadPathButton) {
            openDirectoryPicker();
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
            if (hasFocus) {
                button.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
            } else {
                // 根据选中状态恢复背景
                boolean selected = false;
                if (view == quality1080pButton && quality == 80) selected = true;
                else if (view == quality720pButton && quality == 64) selected = true;
                else if (view == quality480pButton && quality == 32) selected = true;
                else if (view == audioHighButton && audioQuality == 30280) selected = true;
                else if (view == audioNormalButton && audioQuality == 30216) selected = true;
                else if (view == codecAvcButton && codec.equals("avc")) selected = true;
                else if (view == codecHevcButton && codec.equals("hevc")) selected = true;

                if (!selected) {
                    button.setBackgroundResource(R.color.transparent);
                }
            }
        }
    }

    /**
     * 打开目录选择器
     */
    private void openDirectoryPicker() {
        try {
            Activity activity = getActivity();
            if (activity == null) {
                return;
            }

            // 检测外接存储设备
            List<StorageManagerHelper.StorageDevice> devices = StorageManagerHelper.getExternalStorageDevices(activity);
            if (devices.isEmpty()) {
                Toast.makeText(activity, "未检测到外接存储设备", Toast.LENGTH_SHORT).show();
                return;
            }

            // 使用第一个可用设备
            StorageManagerHelper.StorageDevice device = null;
            for (StorageManagerHelper.StorageDevice d : devices) {
                if (d.isAvailable()) {
                    device = d;
                    break;
                }
            }

            if (device == null) {
                Toast.makeText(activity, "没有可用的存储设备", Toast.LENGTH_SHORT).show();
                return;
            }

            // 使用Intent打开目录选择器（Android 5.0+）
            if (android.os.Build.VERSION.SDK_INT >= 21) {
                Intent intent = new Intent(Intent.ACTION_OPEN_DOCUMENT_TREE);
                intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
                intent.addFlags(Intent.FLAG_GRANT_WRITE_URI_PERMISSION);
                intent.addFlags(Intent.FLAG_GRANT_PERSISTABLE_URI_PERMISSION);
                intent.addFlags(Intent.FLAG_GRANT_PREFIX_URI_PERMISSION);
                startActivityForResult(intent, REQUEST_CODE_OPEN_DIRECTORY);
            } else {
                // Android 4.x：直接使用设备路径
                downloadPath = device.getPath();
                updateUI();
                saveSettings();
                Toast.makeText(activity, "已设置下载路径: " + downloadPath, Toast.LENGTH_SHORT).show();
            }

        } catch (Exception e) {
            Log.e("afm5", "打开目录选择器失败: " + e.getMessage(), e);
            Toast.makeText(getContext(), "打开目录选择器失败", Toast.LENGTH_SHORT).show();
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);

        if (requestCode == REQUEST_CODE_OPEN_DIRECTORY && resultCode == Activity.RESULT_OK && data != null) {
            Uri uri = data.getData();
            if (uri != null) {
                Activity activity = getActivity();
                if (activity != null) {
                    // 获取持久化权限
                    activity.getContentResolver().takePersistableUriPermission(
                        uri,
                        Intent.FLAG_GRANT_READ_URI_PERMISSION | Intent.FLAG_GRANT_WRITE_URI_PERMISSION
                    );

                    // 转换为文件路径
                    String path = uri.getPath();
                    Log.i("afm5", "选择的目录URI: " + uri + ", path: " + path);

                    downloadPath = path;
                    updateUI();
                    saveSettings();

                    Toast.makeText(activity, "已设置下载路径", Toast.LENGTH_SHORT).show();
                }
            }
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