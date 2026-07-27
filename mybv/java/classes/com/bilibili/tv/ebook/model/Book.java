package com.bilibili.tv.ebook.model;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

/**
 * 电子书数据模型
 * 参考自：参考/episteme/app/src/main/java/com/aryan/reader/epub/EpubBook.kt
 */
public class Book implements Serializable {
    private String bookId;              // 唯一标识
    private String fileName;            // 文件名
    private String title;               // 书名
    private String author;              // 作者
    private String language;            // 语言
    private String coverImagePath;      // 封面图片路径
    private List<Chapter> chapters;     // 章节列表
    private String extractionPath;      // 解压路径
    private Map<String, String> css;    // CSS 样式

    // 构造函数
    public Book() {
    }

    public Book(String bookId, String title) {
        this.bookId = bookId;
        this.title = title;
    }

    // Getters and Setters
    public String getBookId() {
        return bookId;
    }

    public void setBookId(String bookId) {
        this.bookId = bookId;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public String getCoverImagePath() {
        return coverImagePath;
    }

    public void setCoverImagePath(String coverImagePath) {
        this.coverImagePath = coverImagePath;
    }

    public List<Chapter> getChapters() {
        return chapters;
    }

    public void setChapters(List<Chapter> chapters) {
        this.chapters = chapters;
    }

    public String getExtractionPath() {
        return extractionPath;
    }

    public void setExtractionPath(String extractionPath) {
        this.extractionPath = extractionPath;
    }

    public Map<String, String> getCss() {
        return css;
    }

    public void setCss(Map<String, String> css) {
        this.css = css;
    }

    @Override
    public String toString() {
        return "Book{" +
                "bookId='" + bookId + '\'' +
                ", title='" + title + '\'' +
                ", author='" + author + '\'' +
                ", chaptersCount=" + (chapters != null ? chapters.size() : 0) +
                '}';
    }
}