package com.bilibili.tv.ebook.model;

import java.io.File;

/**
 * 书架项数据模型
 * 用于在书架中显示一本书的基本信息
 */
public class BookshelfItem {
    private String bookId;          // 书籍ID（文件路径）
    private String title;           // 书籍名称
    private String author;          // 作者名字
    private String fileExtension;   // 文件后缀名（.epub, .mobi等）
    private int chapterIndex;       // 当前章节索引
    private String chapterTitle;    // 当前章节标题
    private float progressPercentage; // 阅读进度百分比
    private long lastReadTime;      // 最后阅读时间戳
    private String filePath;        // 文件路径

    public BookshelfItem(String bookId) {
        this.bookId = bookId;
    }

    // Getters and Setters
    public String getBookId() {
        return bookId;
    }

    public void setBookId(String bookId) {
        this.bookId = bookId;
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

    public String getFileExtension() {
        return fileExtension;
    }

    public void setFileExtension(String fileExtension) {
        this.fileExtension = fileExtension;
    }

    public int getChapterIndex() {
        return chapterIndex;
    }

    public void setChapterIndex(int chapterIndex) {
        this.chapterIndex = chapterIndex;
    }

    public String getChapterTitle() {
        return chapterTitle;
    }

    public void setChapterTitle(String chapterTitle) {
        this.chapterTitle = chapterTitle;
    }

    public float getProgressPercentage() {
        return progressPercentage;
    }

    public void setProgressPercentage(float progressPercentage) {
        this.progressPercentage = progressPercentage;
    }

    public long getLastReadTime() {
        return lastReadTime;
    }

    public void setLastReadTime(long lastReadTime) {
        this.lastReadTime = lastReadTime;
    }

    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }

    /**
     * 从Book对象创建BookshelfItem
     */
    public static BookshelfItem fromBook(Book book, ReadingProgress progress, String filePath) {
        BookshelfItem item = new BookshelfItem(book.getBookId());

        item.setTitle(book.getTitle());
        item.setAuthor(book.getAuthor());
        item.setFilePath(filePath);

        // 获取文件后缀名
        if (filePath != null) {
            int dotIndex = filePath.lastIndexOf('.');
            if (dotIndex > 0 && dotIndex < filePath.length() - 1) {
                item.setFileExtension(filePath.substring(dotIndex + 1).toUpperCase());
            }
        }

        // 从阅读进度中获取信息
        if (progress != null) {
            item.setChapterIndex(progress.getCurrentChapterIndex());
            item.setProgressPercentage(progress.getProgressPercentage());
            item.setLastReadTime(progress.getLastReadTimestamp());

            // 获取章节标题
            if (book.getChapters() != null && progress.getCurrentChapterIndex() >= 0
                && progress.getCurrentChapterIndex() < book.getChapters().size()) {
                Chapter chapter = book.getChapters().get(progress.getCurrentChapterIndex());
                item.setChapterTitle(chapter.getTitle());
            }
        }

        return item;
    }
}