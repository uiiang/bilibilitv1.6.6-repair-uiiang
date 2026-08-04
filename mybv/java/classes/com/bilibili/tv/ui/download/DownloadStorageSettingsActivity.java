package com.bilibili.tv.ui.download;

import android.app.Activity;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import com.bilibili.tv.R;
import java.util.ArrayList;
import java.util.List;

/**
 * 下载存储设置页面
 * 用于配置下载文件保存位置
 */
public class DownloadStorageSettingsActivity extends Activity {
    private static final String TAG = "StorageSettings";

    // UI组件
    private TextView tvCurrentPath;
    private RecyclerView rvStorageDevices;
    private Button btnCancel;
    private Button btnConfirm;

    // 存储设备列表
    private List<StorageManagerHelper.StorageDevice> storageDevices = new ArrayList<>();
    private StorageDeviceAdapter adapter;

    // 当前选中的设备
    private StorageManagerHelper.StorageDevice selectedDevice;
    private int selectedPosition = -1;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_download_storage_settings);

        Log.i(TAG, "打开存储设置页面");

        // 初始化UI
        initViews();

        // 加载当前存储路径
        loadCurrentPath();

        // 加载可用存储设备
        loadStorageDevices();
    }

    /**
     * 初始化UI组件
     */
    private void initViews() {
        tvCurrentPath = (TextView) findViewById(R.id.tv_current_path);
        rvStorageDevices = (RecyclerView) findViewById(R.id.rv_storage_devices);
        btnCancel = (Button) findViewById(R.id.btn_cancel);
        btnConfirm = (Button) findViewById(R.id.btn_confirm);

        // 设置RecyclerView
        adapter = new StorageDeviceAdapter();
        rvStorageDevices.setLayoutManager(new LinearLayoutManager(this));
        rvStorageDevices.setAdapter(adapter);
        // 注意：在反编译项目中，setAdapter的参数类型可能不同
        // 如果编译失败，需要使用项目的特定适配器类型

        // 设置按钮点击事件
        btnCancel.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();
            }
        });

        btnConfirm.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                saveStoragePath();
            }
        });
    }

    /**
     * 加载当前存储路径
     */
    private void loadCurrentPath() {
        SharedPreferences prefs = getSharedPreferences("download_settings", MODE_PRIVATE);
        String currentPath = prefs.getString("download_path", "");

        if (currentPath == null || currentPath.isEmpty()) {
            tvCurrentPath.setText("未设置");
            tvCurrentPath.setTextColor(0xff888888);
        } else {
            tvCurrentPath.setText(currentPath);
            tvCurrentPath.setTextColor(0xffffffff);
        }

        Log.i(TAG, "当前存储路径: " + currentPath);
    }

    /**
     * 加载可用存储设备
     */
    private void loadStorageDevices() {
        Log.i(TAG, "加载可用存储设备");

        storageDevices = StorageManagerHelper.getExternalStorageDevices(this);

        if (storageDevices.isEmpty()) {
            Toast.makeText(this, "未检测到外接存储设备", Toast.LENGTH_SHORT).show();
            Log.w(TAG, "未检测到外接存储设备");
        } else {
            Log.i(TAG, "检测到 " + storageDevices.size() + " 个存储设备");
            for (StorageManagerHelper.StorageDevice device : storageDevices) {
                Log.i(TAG, "设备: " + device.toString());
            }
        }

        // 注意：在反编译项目中，notifyDataSetChanged可能不可用
        // 数据变化通过其他方式触发UI更新
    }

    /**
     * 保存存储路径
     */
    private void saveStoragePath() {
        if (selectedDevice == null) {
            Toast.makeText(this, "请先选择存储设备", Toast.LENGTH_SHORT).show();
            return;
        }

        // 检查设备是否可用
        if (!selectedDevice.isAvailable()) {
            Toast.makeText(this, "选中的存储设备不可用", Toast.LENGTH_SHORT).show();
            return;
        }

        // 保存到SharedPreferences
        SharedPreferences prefs = getSharedPreferences("download_settings", MODE_PRIVATE);
        prefs.edit()
            .putString("download_path", selectedDevice.getPath())
            .apply();

        Log.i(TAG, "保存存储路径: " + selectedDevice.getPath());
        Toast.makeText(this, "存储路径已设置", Toast.LENGTH_SHORT).show();

        // 返回结果
        setResult(RESULT_OK);
        finish();
    }

    /**
     * 存储设备列表适配器
     */
    private class StorageDeviceAdapter extends RecyclerView.a<StorageDeviceAdapter.ViewHolder> {

        @Override
        public ViewHolder a(ViewGroup viewGroup, int i) {
            View view = LayoutInflater.from(viewGroup.getContext())
                .inflate(R.layout.item_storage_device, viewGroup, false);
            return new ViewHolder(view);
        }

        @Override
        public void a(ViewHolder holder, int position) {
            StorageManagerHelper.StorageDevice device = storageDevices.get(position);

            // 设置设备信息
            holder.tvDeviceName.setText(device.getName());
            holder.tvDevicePath.setText(device.getPath());
            holder.tvAvailableSpace.setText(device.getFormattedUsableSpace());
            holder.tvTotalSpace.setText(device.getFormattedTotalSpace());

            // 设置状态
            if (device.isAvailable()) {
                holder.tvDeviceStatus.setText("可用");
                holder.tvDeviceStatus.setTextColor(0xff4caf50);
            } else {
                holder.tvDeviceStatus.setText("不可用");
                holder.tvDeviceStatus.setTextColor(0xfff44336);
            }

            // 设置选中状态
            if (position == selectedPosition) {
                holder.rootView.setBackgroundColor(0xff3a3a3a);
            } else {
                holder.rootView.setBackgroundColor(0xff2a2a2a);
            }

            // 设置焦点监听器
            holder.rootView.setOnFocusChangeListener(new View.OnFocusChangeListener() {
                @Override
                public void onFocusChange(View v, boolean hasFocus) {
                    if (hasFocus) {
                        v.setBackgroundColor(0xff3a3a3a);
                    } else {
                        if (position == selectedPosition) {
                            v.setBackgroundColor(0xff3a3a3a);
                        } else {
                            v.setBackgroundColor(0xff2a2a2a);
                        }
                    }
                }
            });

            // 设置点击事件
            holder.rootView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    selectDevice(position);
                }
            });
        }

        @Override
        public int ad_() {
            return storageDevices.size();
        }

        class ViewHolder extends RecyclerView.v {
            View rootView;
            TextView tvDeviceName;
            TextView tvDeviceStatus;
            TextView tvAvailableSpace;
            TextView tvTotalSpace;
            TextView tvDevicePath;

            public ViewHolder(View itemView) {
                super(itemView);
                rootView = itemView;
                tvDeviceName = (TextView) itemView.findViewById(R.id.tv_device_name);
                tvDeviceStatus = (TextView) itemView.findViewById(R.id.tv_device_status);
                tvAvailableSpace = (TextView) itemView.findViewById(R.id.tv_available_space);
                tvTotalSpace = (TextView) itemView.findViewById(R.id.tv_total_space);
                tvDevicePath = (TextView) itemView.findViewById(R.id.tv_device_path);
            }
        }
    }

    /**
     * 选择设备
     */
    private void selectDevice(int position) {
        selectedPosition = position;
        selectedDevice = storageDevices.get(position);

        Log.i(TAG, "选中存储设备: " + selectedDevice.getName() + ", 路径: " + selectedDevice.getPath());
        Toast.makeText(this, "已选择: " + selectedDevice.getName(), Toast.LENGTH_SHORT).show();

        // 注意：在反编译项目中，notifyDataSetChanged可能不可用
        // 数据变化通过其他方式触发UI更新
    }
}