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

    /** XML声明中的 encoding="xxx" */
    private static final java.util.regex.Pattern XML_ENCODING_PATTERN =
            java.util.regex.Pattern.compile("(?i)encoding\\s*=\\s*[\"']([A-Za-z0-9_\\-\\.]+)[\"']");
    /** HTML meta 中的 charset=xxx */
    private static final java.util.regex.Pattern HTML_CHARSET_PATTERN =
            java.util.regex.Pattern.compile("(?i)charset\\s*=\\s*[\"']?([A-Za-z0-9_\\-\\.]+)");

    /**
     * 探测EPUB内XML/HTML文件的字符编码
     * 依次检查：BOM、XML声明 encoding、meta charset，无法识别时按UTF-8处理
     * 用于兼容 GBK/GB2312 等非UTF-8编码的中文EPUB
     */
    public static String detectFileEncoding(File file) {
        if (file == null || !file.exists()) {
            return "UTF-8";
        }

        FileInputStream fis = null;
        try {
            fis = new FileInputStream(file);
            byte[] buffer = new byte[4096];
            int len = fis.read(buffer);
            if (len <= 0) {
                return "UTF-8";
            }

            // 1. BOM
            if (len >= 3 && (buffer[0] & 0xFF) == 0xEF && (buffer[1] & 0xFF) == 0xBB && (buffer[2] & 0xFF) == 0xBF) {
                return "UTF-8";
            }
            if (len >= 2 && (buffer[0] & 0xFF) == 0xFF && (buffer[1] & 0xFF) == 0xFE) {
                return "UTF-16LE";
            }
            if (len >= 2 && (buffer[0] & 0xFF) == 0xFE && (buffer[1] & 0xFF) == 0xFF) {
                return "UTF-16BE";
            }

            // 2. XML声明 / meta charset（头部按ISO-8859-1读取，避免用错误编码解码声明本身）
            String head = new String(buffer, 0, len, "ISO-8859-1");
            String encoding = matchGroup(head, XML_ENCODING_PATTERN);
            if (encoding == null) {
                encoding = matchGroup(head, HTML_CHARSET_PATTERN);
            }
            if (encoding != null && isSupportedCharset(encoding)) {
                return encoding;
            }
        } catch (Exception e) {
            Log.w(TAG, "探测文件编码失败: " + file.getAbsolutePath(), e);
        } finally {
            if (fis != null) {
                try {
                    fis.close();
                } catch (IOException e) {
                    Log.e(TAG, "关闭文件输入流失败", e);
                }
            }
        }

        return "UTF-8";
    }

    private static String matchGroup(String text, java.util.regex.Pattern pattern) {
        java.util.regex.Matcher matcher = pattern.matcher(text);
        return matcher.find() ? matcher.group(1) : null;
    }

    private static boolean isSupportedCharset(String name) {
        try {
            return java.nio.charset.Charset.isSupported(name);
        } catch (Exception e) {
            return false;
        }
    }
    
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
            FileInputStream fis = null;
            try {
                fis = new FileInputStream(file);

                byte[] buffer = new byte[8192];
                int bytesRead;

                while ((bytesRead = fis.read(buffer)) != -1) {
                    md.update(buffer, 0, bytesRead);
                }
            } finally {
                if (fis != null) {
                    try {
                        fis.close();
                    } catch (IOException e) {
                        Log.e(TAG, "关闭文件输入流失败", e);
                    }
                }
            }

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
            FileInputStream fis = null;
            FileOutputStream fos = null;
            try {
                fis = new FileInputStream(sourceFile);
                fos = new FileOutputStream(destFile);

                byte[] buffer = new byte[8192];
                int bytesRead;

                while ((bytesRead = fis.read(buffer)) != -1) {
                    fos.write(buffer, 0, bytesRead);
                }
            } finally {
                if (fos != null) {
                    try {
                        fos.close();
                    } catch (IOException e) {
                        Log.e(TAG, "关闭文件输出流失败", e);
                    }
                }
                if (fis != null) {
                    try {
                        fis.close();
                    } catch (IOException e) {
                        Log.e(TAG, "关闭文件输入流失败", e);
                    }
                }
            }

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