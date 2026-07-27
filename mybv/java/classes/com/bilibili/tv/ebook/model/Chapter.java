package com.bilibili.tv.ebook.model;

import java.io.Serializable;

/**
 * 章节数据模型
 * 参考自：参考/episteme/app/src/main/java/com/aryan/reader/epub/EpubChapter.kt
 */
public class Chapter implements Serializable {
    private String chapterId;           // 章节ID
    private String title;               // 章节标题
    private String htmlFilePath;        // HTML文件路径
    private String htmlContent;         // HTML内容（可选）
    private String plainTextContent;    // 纯文本内容
    private int chapterIndex;           // 章节索引
    private int depth;                  // 目录层级

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

    @Override
    public String toString() {
        return "Chapter{" +
                "chapterIndex=" + chapterIndex +
                ", title='" + title + '\'' +
                ", htmlFilePath='" + htmlFilePath + '\'' +
                '}';
    }
}