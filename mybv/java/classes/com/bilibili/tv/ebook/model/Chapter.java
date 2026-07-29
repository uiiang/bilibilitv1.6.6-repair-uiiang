package com.bilibili.tv.ebook.model;

import java.io.Serializable;

/**
 * 章节数据模型
 * 参考自：参考/episteme/app/src/main/java/com/aryan/reader/epub/EpubChapter.kt
 *
 * 兼容设计：支持EPUB、MOBI、AZW3等多种电子书格式
 */
public class Chapter implements Serializable {
    private String chapterId;           // 章节ID
    private String title;               // 章节标题
    private String htmlFilePath;        // HTML文件路径
    private String htmlContent;         // HTML内容（可选）
    private String plainTextContent;    // 纯文本内容
    private int chapterIndex;           // 章节索引
    private int depth;                  // 目录层级

    // 关键字段：用于正确加载图片和CSS资源
    private String baseUrl;             // 基础URL（HTML文件所在目录的路径）
                                    // EPUB: 解压后的目录路径（如 file:///path/to/book/OEBPS/）
                                    // MOBI/AZW3: 转换后的HTML目录路径
                                    // 作用：WebView使用此路径解析相对路径引用

    // 构造函数
    public Chapter() {
    }

    public Chapter(String chapterId, String title, int chapterIndex) {
        this.chapterId = chapterId;
        this.title = title;
        this.chapterIndex = chapterIndex;
    }

    // Getters and Setters
    public String getChapterId() {
        return chapterId;
    }

    public void setChapterId(String chapterId) {
        this.chapterId = chapterId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getHtmlFilePath() {
        return htmlFilePath;
    }

    public void setHtmlFilePath(String htmlFilePath) {
        this.htmlFilePath = htmlFilePath;
    }

    public String getHtmlContent() {
        return htmlContent;
    }

    public void setHtmlContent(String htmlContent) {
        this.htmlContent = htmlContent;
    }

    public String getPlainTextContent() {
        return plainTextContent;
    }

    public void setPlainTextContent(String plainTextContent) {
        this.plainTextContent = plainTextContent;
    }

    public int getChapterIndex() {
        return chapterIndex;
    }

    public void setChapterIndex(int chapterIndex) {
        this.chapterIndex = chapterIndex;
    }

    public int getDepth() {
        return depth;
    }

    public void setDepth(int depth) {
        this.depth = depth;
    }

    public String getBaseUrl() {
        return baseUrl;
    }

    public void setBaseUrl(String baseUrl) {
        this.baseUrl = baseUrl;
    }

    @Override
    public String toString() {
        return "Chapter{" +
                "chapterIndex=" + chapterIndex +
                ", title='" + title + '\'' +
                ", htmlFilePath='" + htmlFilePath + '\'' +
                ", baseUrl='" + baseUrl + '\'' +
                '}';
    }
}