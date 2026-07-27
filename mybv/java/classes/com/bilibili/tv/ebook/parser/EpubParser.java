package com.bilibili.tv.ebook.parser;

import android.content.Context;
import android.util.Log;

import com.bilibili.tv.ebook.model.Book;
import com.bilibili.tv.ebook.model.Chapter;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.*;
import java.util.*;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/**
 * EPUB电子书解析器
 * 参考自：参考/episteme/app/src/main/java/com/aryan/reader/epub/EpubParser.kt
 * 
 * 使用Jsoup解析EPUB文件，支持：
 * 1. EPUB文件解压
 * 2. OPF文件解析
 * 3. 章节内容提取
 */
public class EpubParser {
    private static final String TAG = "EpubParser";
    
    private Context context;
    private File cacheDir;
    
    public EpubParser(Context context) {
        this.context = context;
        this.cacheDir = new File(context.getCacheDir(), "epub_cache");
        if (!cacheDir.exists()) {
            cacheDir.mkdirs();
        }
    }
    
    /**
     * 解析EPUB文件
     * @param filePath EPUB文件路径
     * @param bookId 书籍唯一ID
     * @return Book对象，解析失败返回null
     */
    public Book parse(String filePath, String bookId) {
        try {
            Log.i(TAG, "开始解析EPUB文件: " + filePath);
            
            // 1. 解压EPUB文件
            File extractionDir = unzipEpub(filePath, bookId);
            if (extractionDir == null) {
                Log.e(TAG, "解压EPUB文件失败");
                return null;
            }
            
            // 2. 查找OPF文件
            File opfFile = findOpfFile(extractionDir);
            if (opfFile == null) {
                Log.e(TAG, "未找到OPF文件");
                return null;
            }
            
            // 3. 解析OPF文件
            Book book = parseOpf(opfFile, extractionDir);
            if (book == null) {
                Log.e(TAG, "解析OPF文件失败");
                return null;
            }
            
            // 4. 设置书籍ID和路径
            book.setBookId(bookId);
            book.setExtractionPath(extractionDir.getAbsolutePath());
            
            Log.i(TAG, "EPUB解析成功: " + book.getTitle() + 
                  ", 章节数: " + book.getChapters().size());
            
            return book;
            
        } catch (Exception e) {
            Log.e(TAG, "解析EPUB文件失败: " + filePath, e);
            return null;
        }
    }
    
    /**
     * 解压EPUB文件
     */
    private File unzipEpub(String filePath, String bookId) throws IOException {
        File extractionDir = new File(cacheDir, bookId);
        
        // 如果已存在，直接返回
        if (extractionDir.exists()) {
            Log.i(TAG, "使用已缓存的解压目录: " + extractionDir.getAbsolutePath());
            return extractionDir;
        }
        
        extractionDir.mkdirs();
        
        ZipFile zipFile = null;
        try {
            zipFile = new ZipFile(filePath);
            Enumeration<? extends ZipEntry> entries = zipFile.entries();
            
            while (entries.hasMoreElements()) {
                ZipEntry entry = entries.nextElement();
                File file = new File(extractionDir, entry.getName());
                
                if (entry.isDirectory()) {
                    file.mkdirs();
                } else {
                    // 确保父目录存在
                    file.getParentFile().mkdirs();
                    
                    // 写入文件内容
                    InputStream is = zipFile.getInputStream(entry);
                    FileOutputStream fos = new FileOutputStream(file);
                    
                    byte[] buffer = new byte[8192];
                    int len;
                    while ((len = is.read(buffer)) > 0) {
                        fos.write(buffer, 0, len);
                    }
                    
                    fos.close();
                    is.close();
                }
            }
            
            Log.i(TAG, "EPUB解压完成: " + extractionDir.getAbsolutePath());
            return extractionDir;
            
        } finally {
            if (zipFile != null) {
                zipFile.close();
            }
        }
    }
    
    /**
     * 查找OPF文件
     */
    private File findOpfFile(File extractionDir) throws Exception {
        // 1. 读取container.xml
        File containerFile = new File(extractionDir, "META-INF/container.xml");
        
        if (containerFile.exists()) {
            Document doc = Jsoup.parse(containerFile, "UTF-8");
            Element rootfile = doc.selectFirst("rootfile");
            
            if (rootfile != null) {
                String opfPath = rootfile.attr("full-path");
                File opfFile = new File(extractionDir, opfPath);
                if (opfFile.exists()) {
                    Log.i(TAG, "找到OPF文件: " + opfPath);
                    return opfFile;
                }
            }
        }
        
        // 2. 查找默认OPF文件
        File[] opfFiles = extractionDir.listFiles(new FileFilter() {
            @Override
            public boolean accept(File file) {
                return file.getName().endsWith(".opf");
            }
        });
        
        if (opfFiles != null && opfFiles.length > 0) {
            Log.i(TAG, "使用默认OPF文件: " + opfFiles[0].getName());
            return opfFiles[0];
        }
        
        throw new Exception("OPF file not found");
    }
    
    /**
     * 解析OPF文件
     */
    private Book parseOpf(File opfFile, File extractionDir) throws IOException {
        Document doc = Jsoup.parse(opfFile, "UTF-8");

        Book book = new Book();

        // 1. 解析元数据
        parseMetadata(doc, book);

        // 2. 解析manifest
        Map<String, ManifestItem> manifest = parseManifest(doc);

        // 3. 解析spine（阅读顺序）
        List<String> spineOrder = parseSpine(doc, manifest);

        // 4. 获取OPF文件所在目录作为baseDir（用于解析章节文件）
        File baseDir = opfFile.getParentFile();
        Log.i(TAG, "OPF文件所在目录: " + baseDir.getAbsolutePath());

        // 5. 解析章节
        List<Chapter> chapters = parseChapters(manifest, spineOrder, baseDir);
        book.setChapters(chapters);

        return book;
    }
    
    /**
     * 解析元数据
     */
    private void parseMetadata(Document doc, Book book) {
        // 标题
        Element titleElement = doc.selectFirst("metadata title");
        if (titleElement != null) {
            book.setTitle(titleElement.text());
        } else {
            book.setTitle("Unknown Title");
        }
        
        // 作者
        Element authorElement = doc.selectFirst("metadata creator");
        if (authorElement != null) {
            book.setAuthor(authorElement.text());
        } else {
            book.setAuthor("Unknown Author");
        }
        
        // 语言
        Element languageElement = doc.selectFirst("metadata language");
        if (languageElement != null) {
            book.setLanguage(languageElement.text());
        } else {
            book.setLanguage("en");
        }
        
        Log.i(TAG, "元数据解析: 标题=" + book.getTitle() + 
              ", 作者=" + book.getAuthor());
    }
    
    /**
     * 解析Manifest
     */
    private Map<String, ManifestItem> parseManifest(Document doc) {
        Map<String, ManifestItem> manifest = new HashMap<>();
        Elements items = doc.select("manifest item");
        
        for (Element item : items) {
            String id = item.attr("id");
            String href = item.attr("href");
            String mediaType = item.attr("media-type");
            
            manifest.put(id, new ManifestItem(id, href, mediaType));
        }
        
        Log.i(TAG, "Manifest项数: " + manifest.size());
        return manifest;
    }
    
    /**
     * 解析Spine（阅读顺序）
     */
    private List<String> parseSpine(Document doc, Map<String, ManifestItem> manifest) {
        List<String> spineOrder = new ArrayList<>();
        Elements items = doc.select("spine itemref");
        
        for (Element item : items) {
            String idref = item.attr("idref");
            if (manifest.containsKey(idref)) {
                spineOrder.add(idref);
            }
        }
        
        Log.i(TAG, "Spine项数: " + spineOrder.size());
        return spineOrder;
    }
    
    /**
     * 解析章节内容
     */
    private List<Chapter> parseChapters(Map<String, ManifestItem> manifest,
                                         List<String> spineOrder,
                                         File baseDir) {
        List<Chapter> chapters = new ArrayList<>();
        int chapterIndex = 0;

        for (String itemId : spineOrder) {
            ManifestItem item = manifest.get(itemId);
            if (item != null && item.getMediaType().contains("html")) {
                try {
                    Chapter chapter = parseChapter(item, chapterIndex, baseDir);
                    chapters.add(chapter);
                    chapterIndex++;
                } catch (Exception e) {
                    Log.w(TAG, "解析章节失败: " + itemId, e);
                }
            }
        }

        Log.i(TAG, "解析章节数: " + chapters.size());
        return chapters;
    }

    /**
     * 解析单个章节
     */
    private Chapter parseChapter(ManifestItem item, int index, File baseDir)
            throws IOException {
        File chapterFile = new File(baseDir, item.getHref());
        Log.d(TAG, "解析章节文件: " + chapterFile.getAbsolutePath() + " (href=" + item.getHref() + ")");

        Document doc = Jsoup.parse(chapterFile, "UTF-8");

        Chapter chapter = new Chapter();
        chapter.setChapterId(item.getId());
        chapter.setChapterIndex(index);
        chapter.setHtmlFilePath(item.getHref());
        chapter.setHtmlContent(doc.outerHtml());
        chapter.setPlainTextContent(doc.text());

        // 提取标题
        Element titleElement = doc.selectFirst("title");
        if (titleElement != null && !titleElement.text().isEmpty()) {
            chapter.setTitle(titleElement.text());
        } else {
            chapter.setTitle("Chapter " + (index + 1));
        }

        return chapter;
    }
    
    /**
     * Manifest项辅助类
     */
    private static class ManifestItem {
        private String id;
        private String href;
        private String mediaType;
        
        public ManifestItem(String id, String href, String mediaType) {
            this.id = id;
            this.href = href;
            this.mediaType = mediaType;
        }
        
        public String getId() {
            return id;
        }
        
        public String getHref() {
            return href;
        }
        
        public String getMediaType() {
            return mediaType;
        }
    }
}