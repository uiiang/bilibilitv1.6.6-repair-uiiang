package com.bilibili.tv.ebook.parser;

import android.content.Context;
import android.util.Log;

import com.bilibili.tv.ebook.model.Book;

import java.io.File;

/**
 * 电子书解析器工厂（更新版）
 * 根据文件扩展名选择合适的解析器
 * 
 * 更新内容：
 * - 使用com.aryan.reader.epub.MobiParser（JNI适配版本）
 *   该类与参考项目的JNI方法签名一致
 */
public class EbookParserFactory {
    private static final String TAG = "EbookParserFactory";
    
    private Context context;
    private EpubParser epubParser;
    private com.aryan.reader.epub.MobiParser mobiParser;
    
    public EbookParserFactory(Context context) {
        this.context = context;
        this.epubParser = new EpubParser(context);
        this.mobiParser = new com.aryan.reader.epub.MobiParser(context);
    }
    
    /**
     * 解析电子书文件
     * @param filePath 文件路径
     * @param bookId 书籍唯一ID
     * @return Book对象，解析失败返回null
     */
    public Book parse(String filePath, String bookId) {
        String extension = getFileExtension(filePath);
        
        if (extension == null) {
            Log.e(TAG, "无法识别文件类型: " + filePath);
            return null;
        }
        
        switch (extension.toLowerCase()) {
            case "epub":
                Log.i(TAG, "使用EPUB解析器");
                return epubParser.parse(filePath, bookId);
                
            case "mobi":
            case "azw3":
                Log.i(TAG, "使用MOBI解析器（JNI版本）");
                return mobiParser.parse(filePath, bookId);
                
            default:
                Log.e(TAG, "不支持的文件格式: " + extension);
                return null;
        }
    }
    
    /**
     * 获取文件扩展名
     */
    private String getFileExtension(String filePath) {
        if (filePath == null || filePath.isEmpty()) {
            return null;
        }
        
        int lastDot = filePath.lastIndexOf('.');
        if (lastDot > 0 && lastDot < filePath.length() - 1) {
            return filePath.substring(lastDot + 1);
        }
        
        return null;
    }
    
    /**
     * 检查文件是否支持
     */
    public boolean isSupported(String filePath) {
        String extension = getFileExtension(filePath);
        if (extension == null) {
            return false;
        }
        
        switch (extension.toLowerCase()) {
            case "epub":
            case "mobi":
            case "azw3":
                return true;
            default:
                return false;
        }
    }
    
    /**
     * 生成书籍ID
     */
    public static String generateBookId(String filePath) {
        File file = new File(filePath);
        String fileName = file.getName();
        long lastModified = file.lastModified();
        
        return fileName + "_" + lastModified;
    }
}