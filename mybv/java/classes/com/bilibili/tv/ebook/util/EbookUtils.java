package com.bilibili.tv.ebook.util;

import android.content.Context;
import android.util.Log;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * 电子书工具类
 * 提供文件操作、哈希计算等通用功能
 */
public class EbookUtils {
    private static final String TAG = "EbookUtils";
    
    /**
     * 生成文件哈希值（MD5）
     * 用于生成唯一书籍ID
     */
    public static String generateFileHash(String filePath) {
        File file = new File(filePath);
        if (!file.exists()) {
            return null;
        }
        
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            FileInputStream fis = new FileInputStream(file);
            
            byte[] buffer = new byte[8192];
            int bytesRead;
            
            while ((bytesRead = fis.read(buffer)) != -1) {
                md.update(buffer, 0, bytesRead);
            }
            
            fis.close();
            
            // 转换为十六进制字符串
            byte[] hashBytes = md.digest();
            StringBuilder sb = new StringBuilder();
            for (byte b : hashBytes) {
                sb.append(String.format("%02x", b));
            }
            
            return sb.toString();
            
        } catch (NoSuchAlgorithmException | IOException e) {
            Log.e(TAG, "生成文件哈希失败", e);
            return null;
        }
    }
    
    /**
     * 复制文件
     */
    public static boolean copyFile(String sourcePath, String destPath) {
        File sourceFile = new File(sourcePath);
        File destFile = new File(destPath);
        
        if (!sourceFile.exists()) {
            Log.e(TAG, "源文件不存在: " + sourcePath);
            return false;
        }
        
        // 确保目标目录存在
        File parentDir = destFile.getParentFile();
        if (parentDir != null && !parentDir.exists()) {
            parentDir.mkdirs();
        }
        
        try {
            FileInputStream fis = new FileInputStream(sourceFile);
            FileOutputStream fos = new FileOutputStream(destFile);
            
            byte[] buffer = new byte[8192];
            int bytesRead;
            
            while ((bytesRead = fis.read(buffer)) != -1) {
                fos.write(buffer, 0, bytesRead);
            }
            
            fos.close();
            fis.close();
            
            Log.i(TAG, "文件复制成功: " + destPath);
            return true;
            
        } catch (IOException e) {
            Log.e(TAG, "文件复制失败", e);
            return false;
        }
    }
    
    /**
     * 删除目录及其内容
     */
    public static boolean deleteDirectory(File directory) {
        if (!directory.exists()) {
            return true;
        }
        
        if (directory.isDirectory()) {
            File[] files = directory.listFiles();
            if (files != null) {
                for (File file : files) {
                    deleteDirectory(file);
                }
            }
        }
        
        return directory.delete();
    }
    
    /**
     * 获取文件大小（格式化字符串）
     */
    public static String formatFileSize(long size) {
        if (size < 1024) {
            return size + " B";
        } else if (size < 1024 * 1024) {
            return String.format("%.1f KB", size / 1024.0);
        } else if (size < 1024 * 1024 * 1024) {
            return String.format("%.1f MB", size / (1024.0 * 1024));
        } else {
            return String.format("%.1f GB", size / (1024.0 * 1024 * 1024));
        }
    }
    
    /**
     * 获取缓存目录大小
     */
    public static long getCacheSize(Context context) {
        File cacheDir = new File(context.getCacheDir(), "epub_cache");
        if (!cacheDir.exists()) {
            return 0;
        }
        
        return calculateDirectorySize(cacheDir);
    }
    
    /**
     * 计算目录大小
     */
    private static long calculateDirectorySize(File directory) {
        long size = 0;
        
        if (directory.isDirectory()) {
            File[] files = directory.listFiles();
            if (files != null) {
                for (File file : files) {
                    size += calculateDirectorySize(file);
                }
            }
        } else {
            size = directory.length();
        }
        
        return size;
    }
    
    /**
     * 清理缓存
     */
    public static boolean clearCache(Context context) {
        File cacheDir = new File(context.getCacheDir(), "epub_cache");
        if (!cacheDir.exists()) {
            return true;
        }
        
        return deleteDirectory(cacheDir);
    }
}