package com.bilibili.tv.ui.download;

import android.content.Context;
import android.os.Environment;
import android.util.Log;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/**
 * 外接存储设备管理助手
 * 
 * 功能：
 * 1. 检测外接存储设备（U盘、移动硬盘）
 * 2. 检查存储设备状态（挂载、可写）
 * 3. 检查存储空间
 * 4. 监控存储设备变化
 * 
 * Android 4.x兼容性说明：
 * - Android 4.4+：使用StorageManager反射获取存储卷列表
 * - Android 4.x：使用Environment.getExternalStorageDirectory()
 */
public class StorageManagerHelper {
    private static final String TAG = "StorageManagerHelper";

    /**
     * 获取所有挂载的外接存储设备
     * 
     * @param context 上下文
     * @return 存储设备列表
     */
    public static List<StorageDevice> getExternalStorageDevices(Context context) {
        List<StorageDevice> devices = new ArrayList<>();

        // 方法1：尝试使用StorageManager（Android 4.4+）
        if (android.os.Build.VERSION.SDK_INT >= 19) {
            try {
                devices = getStorageDevicesViaReflection(context);
                if (!devices.isEmpty()) {
                    Log.i(TAG, "通过反射获取到 " + devices.size() + " 个外接存储设备");
                    return devices;
                }
            } catch (Exception e) {
                Log.w(TAG, "反射获取存储设备失败: " + e.getMessage());
            }
        }

        // 方法2：使用Environment（兼容Android 4.x）
        if (devices.isEmpty()) {
            StorageDevice primaryExternal = getPrimaryExternalStorage(context);
            if (primaryExternal != null) {
                devices.add(primaryExternal);
                Log.i(TAG, "使用默认外接存储: " + primaryExternal.getPath());
            }
        }

        return devices;
    }

    /**
     * 获取所有已挂载的存储卷（含内部存储和外接U盘/移动硬盘）
     *
     * 用于文件夹选择器的存储设备列表：部分TV系统上 /storage 目录 listFiles()
     * 返回null或不全，无法枚举外接U盘；且U盘可能挂载在 /storage 之外的路径
     * （如 /mnt/usb_storage）。此方法通过 StorageManager.getVolumeList() 反射
     * 获取所有存储卷的真实挂载路径。
     *
     * @param context 上下文
     * @return 存储卷列表（可能为空）
     */
    public static List<StorageDevice> getAllMountedVolumes(Context context) {
        List<StorageDevice> devices = new ArrayList<>();

        // 方法1：StorageManager反射（Android 4.4+），获取所有卷（含U盘真实路径）
        if (android.os.Build.VERSION.SDK_INT >= 19) {
            try {
                Object storageManager = context.getSystemService(Context.STORAGE_SERVICE);
                if (storageManager != null) {
                    java.lang.reflect.Method getVolumeList = storageManager.getClass()
                            .getMethod("getVolumeList");
                    Object[] volumeList = (Object[]) getVolumeList.invoke(storageManager);
                    if (volumeList != null) {
                        for (Object volume : volumeList) {
                            try {
                                StorageDevice device = parseStorageVolume(volume, context);
                                if (device != null && device.getPath() != null
                                        && !device.getPath().isEmpty()) {
                                    devices.add(device);
                                }
                            } catch (Exception e) {
                                Log.w(TAG, "解析存储卷失败: " + e.getMessage());
                            }
                        }
                    }
                }
                if (!devices.isEmpty()) {
                    Log.i(TAG, "通过反射获取到 " + devices.size() + " 个存储卷");
                    return devices;
                }
            } catch (Exception e) {
                Log.w(TAG, "反射获取存储卷失败: " + e.getMessage());
            }
        }

        // 方法2：兜底（兼容Android 4.x）
        StorageDevice primaryExternal = getPrimaryExternalStorage(context);
        if (primaryExternal != null) {
            devices.add(primaryExternal);
            Log.i(TAG, "使用默认外接存储兜底: " + primaryExternal.getPath());
        }
        return devices;
    }

    /**
     * 通过反射获取存储设备列表（Android 4.4+）
     */
    private static List<StorageDevice> getStorageDevicesViaReflection(Context context) throws Exception {
        List<StorageDevice> devices = new ArrayList<>();

        Object storageManager = context.getSystemService(Context.STORAGE_SERVICE);
        if (storageManager == null) {
            return devices;
        }

        // 调用getVolumeList方法
        java.lang.reflect.Method getVolumeList = storageManager.getClass()
            .getMethod("getVolumeList");
        Object[] volumeList = (Object[]) getVolumeList.invoke(storageManager);

        if (volumeList == null || volumeList.length == 0) {
            return devices;
        }

        // 遍历存储卷
        for (Object volume : volumeList) {
            try {
                StorageDevice device = parseStorageVolume(volume, context);
                if (device != null && device.isRemovable()) {
                    devices.add(device);
                }
            } catch (Exception e) {
                Log.w(TAG, "解析存储卷失败: " + e.getMessage());
            }
        }

        return devices;
    }

    /**
     * 解析StorageVolume对象（反射）
     */
    private static StorageDevice parseStorageVolume(Object volume, Context context) throws Exception {
        Class<?> volumeClass = volume.getClass();

        // 获取路径
        java.lang.reflect.Method getPath = volumeClass.getMethod("getPath");
        String path = (String) getPath.invoke(volume);

        // 获取是否为可移除设备
        java.lang.reflect.Method isRemovable = volumeClass.getMethod("isRemovable");
        boolean removable = (Boolean) isRemovable.invoke(volume);

        // 获取描述（设备名称）
        String description = "";
        try {
            java.lang.reflect.Method getDescription = volumeClass.getMethod("getDescription", Context.class);
            description = (String) getDescription.invoke(volume, context);
        } catch (Exception e) {
            // Android 4.x可能没有此方法
            description = "外接存储";
        }

        // 获取存储状态
        File dir = new File(path);
        long totalSpace = dir.getTotalSpace();
        long usableSpace = dir.getUsableSpace();
        boolean mounted = dir.exists() && dir.isDirectory();

        return new StorageDevice(
            description,
            path,
            removable,
            mounted,
            dir.canWrite(),
            totalSpace,
            usableSpace
        );
    }

    /**
     * 获取主外接存储（兼容Android 4.x）
     */
    private static StorageDevice getPrimaryExternalStorage(Context context) {
        File externalDir = context.getExternalFilesDir(null);
        if (externalDir == null) {
            externalDir = Environment.getExternalStorageDirectory();
        }

        if (externalDir == null) {
            return null;
        }

        String state = Environment.getExternalStorageState();
        boolean mounted = Environment.MEDIA_MOUNTED.equals(state);
        boolean writable = mounted && externalDir.canWrite();

        return new StorageDevice(
            "外接存储",
            externalDir.getAbsolutePath(),
            true, // 假设为可移除设备
            mounted,
            writable,
            externalDir.getTotalSpace(),
            externalDir.getUsableSpace()
        );
    }

    /**
     * 检查存储设备是否可写
     * 
     * @param path 存储路径
     * @return 是否可写
     */
    public static boolean isStorageWritable(String path) {
        if (path == null || path.isEmpty()) {
            return false;
        }

        File dir = new File(path);
        if (!dir.exists() || !dir.isDirectory()) {
            return false;
        }

        // 尝试创建测试文件
        File testFile = new File(dir, ".test_write_" + System.currentTimeMillis());
        try {
            boolean created = testFile.createNewFile();
            if (created) {
                testFile.delete();
                return true;
            }
        } catch (Exception e) {
            Log.w(TAG, "存储设备不可写: " + path + ", " + e.getMessage());
        }

        return false;
    }

    /**
     * 检查存储设备是否已挂载
     * 
     * @param path 存储路径
     * @return 是否已挂载
     */
    public static boolean isStorageMounted(String path) {
        if (path == null || path.isEmpty()) {
            return false;
        }

        File dir = new File(path);
        return dir.exists() && dir.isDirectory();
    }

    /**
     * 获取可用存储空间
     * 
     * @param path 存储路径
     * @return 可用空间（字节）
     */
    public static long getAvailableSpace(String path) {
        if (path == null || path.isEmpty()) {
            return 0;
        }

        File dir = new File(path);
        if (!dir.exists()) {
            return 0;
        }

        return dir.getUsableSpace();
    }

    /**
     * 格式化存储空间大小
     * 
     * @param bytes 字节数
     * @return 格式化后的字符串
     */
    public static String formatStorageSize(long bytes) {
        if (bytes < 1024) {
            return bytes + " B";
        } else if (bytes < 1024 * 1024) {
            return String.format("%.1f KB", bytes / 1024.0);
        } else if (bytes < 1024 * 1024 * 1024) {
            return String.format("%.1f MB", bytes / (1024.0 * 1024));
        } else {
            return String.format("%.2f GB", bytes / (1024.0 * 1024 * 1024));
        }
    }

    /**
     * 存储设备信息类
     */
    public static class StorageDevice {
        private String name;          // 设备名称
        private String path;          // 设备路径
        private boolean removable;    // 是否为可移除设备
        private boolean mounted;      // 是否已挂载
        private boolean writable;     // 是否可写
        private long totalSpace;      // 总空间（字节）
        private long usableSpace;     // 可用空间（字节）

        public StorageDevice(String name, String path, boolean removable, 
                            boolean mounted, boolean writable, 
                            long totalSpace, long usableSpace) {
            this.name = name;
            this.path = path;
            this.removable = removable;
            this.mounted = mounted;
            this.writable = writable;
            this.totalSpace = totalSpace;
            this.usableSpace = usableSpace;
        }

        // Getters
        public String getName() { return name; }
        public String getPath() { return path; }
        public boolean isRemovable() { return removable; }
        public boolean isMounted() { return mounted; }
        public boolean isWritable() { return writable; }
        public long getTotalSpace() { return totalSpace; }
        public long getUsableSpace() { return usableSpace; }

        /**
         * 获取格式化的总空间
         */
        public String getFormattedTotalSpace() {
            return formatStorageSize(totalSpace);
        }

        /**
         * 获取格式化的可用空间
         */
        public String getFormattedUsableSpace() {
            return formatStorageSize(usableSpace);
        }

        /**
         * 检查设备是否可用
         */
        public boolean isAvailable() {
            return mounted && writable && usableSpace > 0;
        }

        @Override
        public String toString() {
            return String.format("%s (%s, 可用 %s)", 
                name, getFormattedTotalSpace(), getFormattedUsableSpace());
        }
    }
}