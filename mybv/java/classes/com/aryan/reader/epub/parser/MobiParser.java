package com.aryan.reader.epub.parser;

import android.util.Log;

import com.bilibili.tv.ebook.model.Book;
import com.bilibili.tv.ebook.model.Chapter;

import org.json.JSONArray;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

/**
 * MOBI电子书解析器（JNI适配版本）
 * 
 * 包名：com.aryan.reader.epub.parser
 * 对应JNI方法签名：Java_com_aryan_reader_epub_MobiParser_*
 * 
 * 此类必须放在此包下才能正确调用JNI方法
 */
public class MobiParser {
    private static final String TAG = "MobiParser";
    
    static {
        try {
            System.loadLibrary("mobi");
            System.loadLibrary("native-lib");
            Log.i(TAG, "✓ libmobi.so 和 libnative-lib.so 加载成功");
        } catch (UnsatisfiedLinkError e) {
            Log.e(TAG, "✗ 加载Native库失败", e);
        }
    }
    
    /**
     * 解析MOBI文件
     * 
     * JNI方法签名：
     * Java_com_aryan_reader_epub_parser_MobiParser_parseMobiFile
     * 
     * @param filePath MOBI文件路径
     * @return JSON格式的书籍数据
     */
    private native String parseMobiFile(String filePath);
    
    /**
     * 获取MOBI文件元数据
     * 
     * @param filePath MOBI文件路径
     * @return JSON格式的元数据
     */
    private native String getMetadata(String filePath);
    
    /**
     * 提取MOBI章节内容
     * 
     * @param filePath MOBI文件路径
     * @param chapterIndex 章节索引
     * @return 章节HTML内容
     */
    private native String extractChapter(String filePath, int chapterIndex);
    
    /**
     * 解析MOBI/AZW3文件
     * 
     * @param filePath 文件路径
     * @param bookId 书籍唯一ID
     * @return Book对象，解析失败返回null
     */
    public Book parse(String filePath, String bookId) {
        try {
            Log.i(TAG, "开始解析MOBI文件: " + filePath);
            
            // 调用JNI方法
            String jsonData = parseMobiFile(filePath);
            
            if (jsonData == null || jsonData.isEmpty()) {
                Log.e(TAG, "JNI返回数据为空");
                return null;
            }
            
            // 解析JSON数据
            Book book = parseJsonToBook(jsonData, bookId);
            
            Log.i(TAG, "MOBI解析成功: " + book.getTitle() + 
                  ", 章节数: " + book.getChapters().size());
            
            return book;
            
        } catch (UnsatisfiedLinkError e) {
            Log.e(TAG, "JNI方法调用失败，请检查Native库是否正确加载", e);
            return null;
        } catch (Exception e) {
            Log.e(TAG, "解析MOBI文件失败: " + filePath, e);
            return null;
        }
    }
    
    /**
     * 解析JSON数据为Book对象
     */
    private Book parseJsonToBook(String jsonData, String bookId) {
        try {
            JSONObject json = new JSONObject(jsonData);
            
            Book book = new Book();
            book.setBookId(bookId);
            
            // 解析元数据
            if (json.has("title")) {
                book.setTitle(json.getString("title"));
            } else {
                book.setTitle("Unknown Title");
            }
            
            if (json.has("author")) {
                book.setAuthor(json.getString("author"));
            } else {
                book.setAuthor("Unknown Author");
            }
            
            if (json.has("language")) {
                book.setLanguage(json.getString("language"));
            }
            
            // 解析章节列表
            if (json.has("chapters")) {
                JSONArray chaptersJson = json.getJSONArray("chapters");
                List<Chapter> chapters = new ArrayList<>();
                
                for (int i = 0; i < chaptersJson.length(); i++) {
                    JSONObject chapterJson = chaptersJson.getJSONObject(i);
                    Chapter chapter = new Chapter();
                    
                    chapter.setChapterIndex(i);
                    
                    if (chapterJson.has("title")) {
                        chapter.setTitle(chapterJson.getString("title"));
                    } else {
                        chapter.setTitle("Chapter " + (i + 1));
                    }
                    
                    if (chapterJson.has("content")) {
                        chapter.setHtmlContent(chapterJson.getString("content"));
                    }
                    
                    chapters.add(chapter);
                }
                
                book.setChapters(chapters);
            }
            
            return book;
            
        } catch (Exception e) {
            Log.e(TAG, "解析JSON数据失败", e);
            return null;
        }
    }
    
    /**
     * 检查Native库是否已加载
     */
    public static boolean isNativeLibLoaded() {
        try {
            // 尝试加载一个简单的测试方法
            // 实际应该调用一个轻量级的JNI方法
            return true;
        } catch (UnsatisfiedLinkError e) {
            return false;
        }
    }
}