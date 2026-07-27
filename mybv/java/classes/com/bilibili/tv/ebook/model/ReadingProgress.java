package com.bilibili.tv.ebook.model;

/**
 * 阅读进度模型
 * 用于保存和恢复阅读位置
 */
public class ReadingProgress {
    private String bookId;              // 书籍ID
    private int currentChapterIndex;    // 当前章节索引
    private int currentPage;            // 当前页码（可选）
    private float progressPercentage;   // 阅读百分比
    private long lastReadTimestamp;     // 最后阅读时间
    private int fontSize;               // 字体大小

    // 构造函数
    public ReadingProgress() {
        this.fontSize = 16; // 默认字体大小
        this.lastReadTimestamp = System.currentTimeMillis();
    }

    public ReadingProgress(String bookId) {
        this();
        this.bookId = bookId;
    }

    // Getters and Setters
    public String getBookId() {
        return bookId;
    }

    public void setBookId(String bookId) {
        this.bookId = bookId;
    }

    public int getCurrentChapterIndex() {
        return currentChapterIndex;
    }

    public void setCurrentChapterIndex(int currentChapterIndex) {
        this.currentChapterIndex = currentChapterIndex;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public float getProgressPercentage() {
        return progressPercentage;
    }

    public void setProgressPercentage(float progressPercentage) {
        this.progressPercentage = progressPercentage;
    }

    public long getLastReadTimestamp() {
        return lastReadTimestamp;
    }

    public void setLastReadTimestamp(long lastReadTimestamp) {
        this.lastReadTimestamp = lastReadTimestamp;
    }

    public int getFontSize() {
        return fontSize;
    }

    public void setFontSize(int fontSize) {
        this.fontSize = fontSize;
    }

    /**
     * 更新阅读时间戳
     */
    public void updateTimestamp() {
        this.lastReadTimestamp = System.currentTimeMillis();
    }

    @Override
    public String toString() {
        return "ReadingProgress{" +
                "bookId='" + bookId + '\'' +
                ", currentChapterIndex=" + currentChapterIndex +
                ", progressPercentage=" + progressPercentage +
                ", fontSize=" + fontSize +
                '}';
    }
}