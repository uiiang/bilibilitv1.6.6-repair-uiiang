package com.bilibili.tv.ebook.util;

import android.content.Context;
import android.util.Log;

import com.bilibili.tv.ebook.model.Book;
import com.bilibili.tv.ebook.model.BookshelfItem;
import com.bilibili.tv.ebook.model.ReadingProgress;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/**
 * 书架管理器
 * 管理所有打开过的书籍列表
 *
 * 存储介质：外部公共目录 /sdcard/Download/ebook_data/bookshelf.json（可跨 APP 共享），
 * 外部不可写时由 EbookFileStore 自动降级回退 SharedPreferences。
 */
public class BookshelfManager {
    private static final String TAG = "BookshelfManager";

    private Context context;

    public BookshelfManager(Context context) {
        this.context = context;
    }

    /**
     * 添加书籍到书架（如果已存在则更新）
     */
    public void addToBookshelf(Book book, ReadingProgress progress, String filePath) {
        if (book == null || filePath == null) {
            return;
        }

        List<BookshelfItem> items = getBookshelfItems();

        // 查找是否已存在
        String bookId = book.getBookId();
        BookshelfItem existingItem = null;
        for (BookshelfItem item : items) {
            if (item.getBookId().equals(bookId)) {
                existingItem = item;
                break;
            }
        }

        // 创建新的书架项
        BookshelfItem newItem = BookshelfItem.fromBook(book, progress, filePath);

        if (existingItem != null) {
            // 已存在，更新信息
            items.remove(existingItem);
            Log.i(TAG, "更新书架中的书籍: " + book.getTitle());
        } else {
            // 新书籍
            Log.i(TAG, "添加新书籍到书架: " + book.getTitle());
        }

        items.add(0, newItem); // 添加到列表开头

        // 按最后阅读时间排序（最新的在前）
        Collections.sort(items, new Comparator<BookshelfItem>() {
            @Override
            public int compare(BookshelfItem lhs, BookshelfItem rhs) {
                return Long.compare(rhs.getLastReadTime(), lhs.getLastReadTime());
            }
        });

        // 保存（EbookFileStore 内部处理 JSON 文件/SharedPreferences 存储）
        saveBookshelfItems(items);
    }

    /**
     * 获取书架中的所有书籍
     */
    public List<BookshelfItem> getBookshelfItems() {
        List<BookshelfItem> items = new ArrayList<>();

        String json = EbookFileStore.getInstance(context).getBookshelfJson();
        if (json.isEmpty()) {
            return items;
        }

        try {
            JSONArray jsonArray = new JSONArray(json);
            for (int i = 0; i < jsonArray.length(); i++) {
                JSONObject obj = jsonArray.getJSONObject(i);
                BookshelfItem item = new BookshelfItem(obj.optString("bookId"));

                item.setTitle(obj.optString("title"));
                item.setAuthor(obj.optString("author"));
                item.setFileExtension(obj.optString("fileExtension"));
                item.setChapterIndex(obj.optInt("chapterIndex"));
                item.setChapterTitle(obj.optString("chapterTitle"));
                item.setProgressPercentage((float) obj.optDouble("progressPercentage"));
                item.setLastReadTime(obj.optLong("lastReadTime"));
                item.setFilePath(obj.optString("filePath"));

                items.add(item);
            }
        } catch (JSONException e) {
            Log.e(TAG, "解析书架数据失败: " + e.getMessage());
        }

        return items;
    }

    /**
     * 保存书架列表
     */
    private void saveBookshelfItems(List<BookshelfItem> items) {
        try {
            JSONArray jsonArray = new JSONArray();
            for (BookshelfItem item : items) {
                JSONObject obj = new JSONObject();
                obj.put("bookId", item.getBookId());
                obj.put("title", item.getTitle());
                obj.put("author", item.getAuthor());
                obj.put("fileExtension", item.getFileExtension());
                obj.put("chapterIndex", item.getChapterIndex());
                obj.put("chapterTitle", item.getChapterTitle());
                obj.put("progressPercentage", item.getProgressPercentage());
                obj.put("lastReadTime", item.getLastReadTime());
                obj.put("filePath", item.getFilePath());

                jsonArray.put(obj);
            }

            EbookFileStore.getInstance(context).saveBookshelfJson(jsonArray.toString());
            Log.i(TAG, "书架已保存，共 " + items.size() + " 本书");
        } catch (JSONException e) {
            Log.e(TAG, "保存书架数据失败: " + e.getMessage());
        }
    }

    /**
     * 从书架中删除书籍
     */
    public void removeFromBookshelf(String bookId) {
        List<BookshelfItem> items = getBookshelfItems();

        for (int i = 0; i < items.size(); i++) {
            if (items.get(i).getBookId().equals(bookId)) {
                items.remove(i);
                Log.i(TAG, "从书架删除书籍: " + bookId);
                break;
            }
        }

        saveBookshelfItems(items);
    }

    /**
     * 清空书架
     */
    public void clearBookshelf() {
        EbookFileStore.getInstance(context).saveBookshelfJson("[]");
        Log.i(TAG, "书架已清空");
    }
}
