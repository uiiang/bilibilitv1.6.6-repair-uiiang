package com.aryan.reader.epub;

import android.content.Context;
import android.util.Log;

import com.bilibili.tv.ebook.model.Book;
import com.bilibili.tv.ebook.model.Chapter;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * MOBI电子书解析器（JNI适配版本）
 * 
 * 包名：com.aryan.reader.epub
 * 对应JNI方法签名：Java_com_aryan_reader_epub_MobiParser_*
 * 
 * 此类必须放在此包下才能正确调用参考项目的JNI方法
 * 
 * 数据类定义为静态内部类，路径为 MobiParser$ParsedMobiData 等
 */
public class MobiParser {
    private static final String TAG = "MobiParser";
    
    private Context context;
    
    static {
        try {
            System.loadLibrary("mobi");
            System.loadLibrary("native-lib");
            Log.i(TAG, "✓ libmobi.so 和 libnative-lib.so 加载成功");
        } catch (UnsatisfiedLinkError e) {
            Log.e(TAG, "✗ 加载Native库失败", e);
        }
    }
    
    public MobiParser() {
    }
    
    public MobiParser(Context context) {
        this.context = context;
    }
    
    // ==================== 静态内部类定义 ====================
    
    /**
     * MOBI 目录条目数据类
     * JNI 构造函数签名：(Ljava/lang/String;I)V
     */
    public static class ParsedMobiTocEntry implements Comparable<ParsedMobiTocEntry> {
        private String title;
        private int filePosition;
        
        public ParsedMobiTocEntry(String title, int filePosition) {
            this.title = title;
            this.filePosition = filePosition;
        }
        
        public String getTitle() {
            return title;
        }
        
        public int getFilePosition() {
            return filePosition;
        }
        
        @Override
        public int compareTo(ParsedMobiTocEntry other) {
            return Integer.compare(this.filePosition, other.filePosition);
        }
    }
    
    /**
     * MOBI 资源数据类
     * JNI 构造函数签名：(ILjava/lang/String;[BLjava/lang/String;)V
     */
    public static class ParsedMobiResource {
        private int uid;
        private String path;
        private byte[] data;
        private String mediaType;
        
        public ParsedMobiResource(int uid, String path, byte[] data, String mediaType) {
            this.uid = uid;
            this.path = path;
            this.data = data;
            this.mediaType = mediaType;
        }
        
        public int getUid() {
            return uid;
        }
        
        public String getPath() {
            return path;
        }
        
        public byte[] getData() {
            return data;
        }
        
        public String getMediaType() {
            return mediaType;
        }
        
        public boolean isImage() {
            return mediaType != null && mediaType.startsWith("image/");
        }
        
        public boolean isCss() {
            return "text/css".equals(mediaType);
        }
    }
    
    /**
     * MOBI 解析结果数据类
     * JNI 构造函数签名：
     * (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;[Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;I)V
     */
    public static class ParsedMobiData {
        private String title;
        private String author;
        private String publisher;
        private String rawHtmlContent;
        private ParsedMobiResource[] resources;
        private ParsedMobiTocEntry[] toc;
        private int coverImageResourceUid;
        
        public ParsedMobiData(String title, String author, String publisher,
                              String rawHtmlContent, ParsedMobiResource[] resources,
                              ParsedMobiTocEntry[] toc, int coverImageResourceUid) {
            this.title = title;
            this.author = author;
            this.publisher = publisher;
            this.rawHtmlContent = rawHtmlContent;
            this.resources = resources;
            this.toc = toc;
            this.coverImageResourceUid = coverImageResourceUid;
        }
        
        public String getTitle() {
            return title;
        }
        
        public String getAuthor() {
            return author;
        }
        
        public String getPublisher() {
            return publisher;
        }
        
        public String getRawHtmlContent() {
            return rawHtmlContent;
        }
        
        public ParsedMobiResource[] getResources() {
            return resources;
        }
        
        public ParsedMobiTocEntry[] getToc() {
            return toc;
        }
        
        public int getCoverImageResourceUid() {
            return coverImageResourceUid;
        }
        
        public boolean hasToc() {
            return toc != null && toc.length > 0;
        }
        
        public int getResourceCount() {
            return resources != null ? resources.length : 0;
        }
    }
    
    // ==================== JNI 方法 ====================
    
    /**
     * 解析MOBI文件 - JNI方法
     */
    private native ParsedMobiData parseMobiFile(String filePath);
    
    // ==================== 公共方法 ====================
    
    /**
     * 解析MOBI/AZW3文件
     */
    public Book parse(String filePath, String bookId) {
        try {
            Log.i(TAG, "开始解析MOBI文件: " + filePath);

            // 创建解压目录
            File extractionDir = createExtractionDir(bookId);

            // 关键优化：尝试从缓存加载元数据
            Book cachedBook = loadMetadataFromCache(extractionDir);
            if (cachedBook != null) {
                Log.i(TAG, "使用缓存的元数据，跳过JNI解析: " + cachedBook.getTitle() +
                      ", 章节数: " + cachedBook.getChapters().size());
                return cachedBook;
            }

            ParsedMobiData parsedData = parseMobiFile(filePath);

            if (parsedData == null || parsedData.getRawHtmlContent() == null) {
                Log.e(TAG, "JNI返回数据为空");
                return null;
            }

            Log.i(TAG, "MOBI解析成功: " + parsedData.getTitle() +
                  ", 资源数: " + parsedData.getResourceCount() +
                  ", TOC数: " + (parsedData.getToc() != null ? parsedData.getToc().length : 0));

            Map<Integer, String> imageMap = buildImageMap(parsedData.getResources());
            Map<String, String> cssFlowMap = buildCssFlowMap(parsedData.getResources());
            saveResources(parsedData.getResources(), extractionDir);

            List<Chapter> chapters = splitIntoChapters(parsedData.getRawHtmlContent(), parsedData.getToc(), imageMap, cssFlowMap);

            // 关键修复：设置章节baseUrl，用于WebView解析章节HTML中相对路径的图片资源
            // MOBI资源以文件形式保存在extractionDir下（如images/xxx.jpeg），baseUrl指向该目录后，
            // 显示层cleanChapterHtml能把本地图片转base64内嵌显示，WebView也能正确解析相对路径
            String chapterBaseUrl = "file://" + extractionDir.getAbsolutePath() + "/";
            for (Chapter chapter : chapters) {
                chapter.setBaseUrl(chapterBaseUrl);
            }

            // 关键修复：章节HTML落盘为独立文件。MOBI章节内容仅存于内存/metadata.json缓存，
            // 章节缓存（上限5章）释放htmlContent后无法从磁盘恢复，往回翻会显示"章节内容为空"。
            // 落盘后显示层loadChapterContentFromFile可按htmlFilePath从磁盘恢复章节内容。
            saveChapterHtmlFiles(chapters, extractionDir);

            Book book = new Book();
            book.setBookId(bookId);
            book.setTitle(parsedData.getTitle() != null ? parsedData.getTitle() : "Unknown Title");
            book.setAuthor(parsedData.getAuthor() != null ? parsedData.getAuthor() : "Unknown Author");
            book.setLanguage("en");
            book.setFileName(book.getTitle());
            book.setChapters(chapters);
            book.setExtractionPath(extractionDir.getAbsolutePath());

            // 关键优化：保存元数据到缓存
            saveMetadataToCache(book, extractionDir);

            Log.i(TAG, "MOBI解析完成: " + book.getTitle() + ", 章节数: " + chapters.size());

            return book;

        } catch (UnsatisfiedLinkError e) {
            Log.e(TAG, "JNI方法调用失败", e);
            return null;
        } catch (Exception e) {
            Log.e(TAG, "解析MOBI文件失败: " + filePath, e);
            return null;
        }
    }
    
    // ==================== 私有方法 ====================
    
    private Map<Integer, String> buildImageMap(ParsedMobiResource[] resources) {
        Map<Integer, String> imageMap = new HashMap<>();
        if (resources == null) return imageMap;
        
        List<ParsedMobiResource> imageResources = new ArrayList<>();
        for (ParsedMobiResource resource : resources) {
            if (resource.isImage()) {
                imageResources.add(resource);
            }
        }
        
        Collections.sort(imageResources, new Comparator<ParsedMobiResource>() {
            @Override
            public int compare(ParsedMobiResource a, ParsedMobiResource b) {
                return Integer.compare(a.getUid(), b.getUid());
            }
        });
        
        for (int i = 0; i < imageResources.size(); i++) {
            ParsedMobiResource resource = imageResources.get(i);
            imageMap.put(i + 1, resource.getPath());
        }
        
        return imageMap;
    }
    
    private Map<String, String> buildCssFlowMap(ParsedMobiResource[] resources) {
        Map<String, String> cssFlowMap = new HashMap<>();
        if (resources == null) return cssFlowMap;
        
        for (ParsedMobiResource resource : resources) {
            if (resource.isCss() && resource.getPath().startsWith("flow_")) {
                String indexStr = resource.getPath().replace("flow_", "").replace(".css", "");
                try {
                    int index = Integer.parseInt(indexStr);
                    String kindleRef = "kindle:flow:" + String.format("%04d", index) + "?mime=text/css";
                    cssFlowMap.put(kindleRef, resource.getPath());
                } catch (NumberFormatException e) {
                    // ignore
                }
            }
        }
        
        return cssFlowMap;
    }
    
    private File createExtractionDir(String bookId) {
        File dir;
        if (context != null) {
            dir = new File(context.getCacheDir(), "mobi_resources/" + bookId);
        } else {
            dir = new File(System.getProperty("java.io.tmpdir"), "mobi_resources/" + bookId);
        }
        dir.mkdirs();
        return dir;
    }
    
    private void saveResources(ParsedMobiResource[] resources, File dir) {
        if (resources == null) return;
        
        for (ParsedMobiResource resource : resources) {
            try {
                File file = new File(dir, resource.getPath());
                File parentDir = file.getParentFile();
                if (parentDir != null) {
                    parentDir.mkdirs();
                }
                
                FileOutputStream fos = new FileOutputStream(file);
                fos.write(resource.getData());
                fos.close();
            } catch (Exception e) {
                Log.e(TAG, "保存资源失败: " + resource.getPath(), e);
            }
        }
    }
    
    /**
     * 将章节HTML内容落盘为独立文件
     * 关键修复：MOBI章节内容仅存于内存/metadata.json缓存，没有独立HTML文件。
     * 章节缓存（上限5章）释放htmlContent后无法从磁盘恢复，往回翻会显示"章节内容为空"。
     * 落盘后显示层loadChapterContentFromFile可按htmlFilePath从磁盘恢复章节内容，形成完整闭环。
     */
    private void saveChapterHtmlFiles(List<Chapter> chapters, File extractionDir) {
        if (chapters == null || extractionDir == null) {
            return;
        }
        for (Chapter chapter : chapters) {
            String htmlContent = chapter.getHtmlContent();
            String filePath = chapter.getHtmlFilePath();
            if (htmlContent == null || htmlContent.isEmpty() || filePath == null || filePath.isEmpty()) {
                continue;
            }
            try {
                File chapterFile = new File(extractionDir, filePath);
                if (chapterFile.exists()) {
                    continue; // 已落盘，跳过
                }
                FileOutputStream fos = new FileOutputStream(chapterFile);
                fos.write(htmlContent.getBytes("UTF-8"));
                fos.close();
                Log.i(TAG, "章节HTML已落盘: " + filePath + ", 大小: " + htmlContent.length());
            } catch (Exception e) {
                Log.e(TAG, "章节HTML落盘失败: " + filePath, e);
            }
        }
    }

    private String processChapterHtml(String chapterHtml, Map<Integer, String> imageMap, Map<String, String> cssFlowMap) {
        if (chapterHtml == null) return "";
        
        try {
            Document doc = Jsoup.parse(chapterHtml);
            
            for (Element link : doc.select("link[href]")) {
                String href = link.attr("href");
                if (cssFlowMap.containsKey(href)) {
                    link.attr("href", cssFlowMap.get(href));
                }
            }
            
            for (Element img : doc.select("img")) {
                processImageElement(img, imageMap);
            }
            
            return doc.outerHtml();
        } catch (Exception e) {
            return chapterHtml;
        }
    }
    
    private void processImageElement(Element img, Map<Integer, String> imageMap) {
        String src = img.attr("src");
        
        if (src.startsWith("kindle:embed:")) {
            try {
                int embedStart = src.indexOf("embed:") + 6;
                String afterEmbed = src.substring(embedStart);
                int questionIndex = afterEmbed.indexOf("?");
                String embedIndexStr = questionIndex >= 0 ? afterEmbed.substring(0, questionIndex) : afterEmbed;
                
                int embedIndex = Integer.parseInt(embedIndexStr);
                if (imageMap.containsKey(embedIndex)) {
                    img.attr("src", imageMap.get(embedIndex));
                }
            } catch (Exception e) {
                // ignore
            }
        }
        
        if (img.hasAttr("recindex")) {
            try {
                int recIndex = Integer.parseInt(img.attr("recindex"));
                if (imageMap.containsKey(recIndex)) {
                    img.attr("src", imageMap.get(recIndex));
                    img.removeAttr("recindex");
                }
            } catch (NumberFormatException e) {
                // ignore
            }
        }
    }
    
    private List<Chapter> splitIntoChapters(String rawHtml, ParsedMobiTocEntry[] toc, 
                                            Map<Integer, String> imageMap, Map<String, String> cssFlowMap) {
        List<Chapter> chapters = new ArrayList<>();
        
        if (rawHtml == null || rawHtml.isEmpty()) {
            return chapters;
        }
        
        byte[] rawHtmlBytes = rawHtml.getBytes();
        List<ParsedMobiTocEntry> sortedToc = new ArrayList<>();
        
        if (toc != null && toc.length > 0) {
            sortedToc.addAll(Arrays.asList(toc));
            Collections.sort(sortedToc, new Comparator<ParsedMobiTocEntry>() {
                @Override
                public int compare(ParsedMobiTocEntry a, ParsedMobiTocEntry b) {
                    return Integer.compare(a.getFilePosition(), b.getFilePosition());
                }
            });
        }
        
        if (!sortedToc.isEmpty()) {
            for (int i = 0; i < sortedToc.size(); i++) {
                ParsedMobiTocEntry tocEntry = sortedToc.get(i);
                int startByte = tocEntry.getFilePosition();
                int endByte;
                
                if (i + 1 < sortedToc.size()) {
                    endByte = sortedToc.get(i + 1).getFilePosition();
                } else {
                    endByte = rawHtmlBytes.length;
                }
                
                if (startByte < endByte && startByte < rawHtmlBytes.length) {
                    int length = Math.min(endByte - startByte, rawHtmlBytes.length - startByte);
                    String chapterHtml = new String(rawHtmlBytes, startByte, length);
                    
                    String processedHtml = processChapterHtml(chapterHtml, imageMap, cssFlowMap);
                    
                    Chapter chapter = new Chapter();
                    chapter.setChapterIndex(i);
                    chapter.setTitle(tocEntry.getTitle());
                    chapter.setHtmlContent(processedHtml);
                    chapter.setHtmlFilePath("chapter_" + i + ".html");
                    chapter.setChapterId("mobi_chapter_" + i);
                    
                    chapters.add(chapter);
                }
            }
        } else {
            String[] parts = rawHtml.split("(?i)<mbp:pagebreak\\s*/>");
            
            int chapterIndex = 0;
            for (String part : parts) {
                if (part.trim().isEmpty()) continue;
                
                String processedHtml = processChapterHtml(part, imageMap, cssFlowMap);
                
                Chapter chapter = new Chapter();
                chapter.setChapterIndex(chapterIndex);
                chapter.setTitle("Chapter " + (chapterIndex + 1));
                chapter.setHtmlContent(processedHtml);
                chapter.setHtmlFilePath("chapter_" + chapterIndex + ".html");
                chapter.setChapterId("mobi_chapter_" + chapterIndex);
                
                chapters.add(chapter);
                chapterIndex++;
            }
        }
        
        if (chapters.isEmpty()) {
            String processedHtml = processChapterHtml(rawHtml, imageMap, cssFlowMap);
            
            Chapter chapter = new Chapter();
            chapter.setChapterIndex(0);
            chapter.setTitle("Full Content");
            chapter.setHtmlContent(processedHtml);
            chapter.setHtmlFilePath("chapter_0.html");
            chapter.setChapterId("mobi_chapter_0");
            chapters.add(chapter);
        }
        
        return chapters;
    }
    
    public static boolean isNativeLibLoaded() {
        return true;
    }

    /**
     * 从缓存加载元数据
     * 关键优化：避免每次都调用JNI解析
     */
    private Book loadMetadataFromCache(File extractionDir) {
        try {
            File metadataFile = new File(extractionDir, "metadata.json");
            if (!metadataFile.exists()) {
                Log.d(TAG, "缓存文件不存在: " + metadataFile.getAbsolutePath());
                return null;
            }

            Log.i(TAG, "开始加载缓存的元数据: " + metadataFile.getAbsolutePath());

            // 读取JSON文件
            java.io.FileInputStream fis = new java.io.FileInputStream(metadataFile);
            java.io.BufferedReader reader = new java.io.BufferedReader(new java.io.InputStreamReader(fis, "UTF-8"));
            StringBuilder sb = new StringBuilder();
            String line;
            while ((line = reader.readLine()) != null) {
                sb.append(line);
            }
            reader.close();
            fis.close();

            String json = sb.toString();
            Log.d(TAG, "读取到的JSON长度: " + json.length());

            // 解析JSON
            org.json.JSONObject jsonObj = new org.json.JSONObject(json);

            Book book = new Book();
            book.setBookId(jsonObj.optString("bookId"));
            book.setTitle(jsonObj.optString("title"));
            book.setAuthor(jsonObj.optString("author"));
            book.setLanguage(jsonObj.optString("language"));
            book.setExtractionPath(jsonObj.optString("extractionPath"));

            // 解析章节列表
            org.json.JSONArray chaptersArray = jsonObj.optJSONArray("chapters");
            if (chaptersArray != null) {
                // 关键修复：缓存未保存baseUrl字段，从extractionPath推导并恢复到每个章节，
                // 否则从缓存打开的书图片相对路径无法解析（与parse()首次解析时一致）
                String restoredBaseUrl = null;
                if (book.getExtractionPath() != null && !book.getExtractionPath().isEmpty()) {
                    restoredBaseUrl = "file://" + book.getExtractionPath() + "/";
                }
                java.util.List<com.bilibili.tv.ebook.model.Chapter> chapters = new java.util.ArrayList<>();
                for (int i = 0; i < chaptersArray.length(); i++) {
                    org.json.JSONObject chapterObj = chaptersArray.getJSONObject(i);
                    com.bilibili.tv.ebook.model.Chapter chapter = new com.bilibili.tv.ebook.model.Chapter();
                    chapter.setChapterId(chapterObj.optString("chapterId"));
                    chapter.setChapterIndex(chapterObj.optInt("chapterIndex"));
                    chapter.setTitle(chapterObj.optString("title"));
                    chapter.setHtmlFilePath(chapterObj.optString("htmlFilePath"));
                    chapter.setDepth(chapterObj.optInt("depth"));
                    if (restoredBaseUrl != null) {
                        chapter.setBaseUrl(restoredBaseUrl);
                    }

                    // 关键修复：MOBI章节内容保存在JSON中
                    String htmlContent = chapterObj.optString("htmlContent");
                    if (htmlContent != null && !htmlContent.isEmpty()) {
                        chapter.setHtmlContent(htmlContent);
                        Log.d(TAG, "从缓存加载MOBI章节内容: " + chapter.getTitle() +
                              ", html长度: " + htmlContent.length());
                    }

                    chapters.add(chapter);
                }
                book.setChapters(chapters);
                // 关键修复：旧缓存章节可能未落盘，恢复时补齐落盘，保证缓存释放后可回退
                saveChapterHtmlFiles(chapters, extractionDir);
            }

            Log.i(TAG, "缓存元数据加载成功: " + book.getTitle() + ", 章节数: " + book.getChapters().size());
            return book;

        } catch (Exception e) {
            Log.e(TAG, "加载缓存元数据失败", e);
            return null;
        }
    }

    /**
     * 保存元数据到缓存
     * 关键优化：避免下次调用JNI解析
     */
    private void saveMetadataToCache(Book book, File extractionDir) {
        try {
            File metadataFile = new File(extractionDir, "metadata.json");

            Log.i(TAG, "开始保存元数据到缓存: " + metadataFile.getAbsolutePath());

            // 构建JSON对象
            org.json.JSONObject jsonObj = new org.json.JSONObject();
            jsonObj.put("bookId", book.getBookId());
            jsonObj.put("title", book.getTitle());
            jsonObj.put("author", book.getAuthor());
            jsonObj.put("language", book.getLanguage());
            jsonObj.put("extractionPath", book.getExtractionPath());

            // 保存章节列表（MOBI需要保存HTML内容，因为没有单独的HTML文件）
            org.json.JSONArray chaptersArray = new org.json.JSONArray();
            if (book.getChapters() != null) {
                for (com.bilibili.tv.ebook.model.Chapter chapter : book.getChapters()) {
                    org.json.JSONObject chapterObj = new org.json.JSONObject();
                    chapterObj.put("chapterId", chapter.getChapterId());
                    chapterObj.put("chapterIndex", chapter.getChapterIndex());
                    chapterObj.put("title", chapter.getTitle());
                    chapterObj.put("htmlFilePath", chapter.getHtmlFilePath());
                    chapterObj.put("depth", chapter.getDepth());
                    chapterObj.put("htmlContent", chapter.getHtmlContent()); // 保存HTML内容
                    chaptersArray.put(chapterObj);
                }
            }
            jsonObj.put("chapters", chaptersArray);

            // 写入文件
            java.io.FileOutputStream fos = new java.io.FileOutputStream(metadataFile);
            java.io.OutputStreamWriter writer = new java.io.OutputStreamWriter(fos, "UTF-8");
            writer.write(jsonObj.toString());
            writer.flush();
            writer.close();
            fos.close();

            Log.i(TAG, "元数据缓存保存成功: " + metadataFile.getAbsolutePath() +
                  ", 大小: " + metadataFile.length() + " bytes");

        } catch (Exception e) {
            Log.e(TAG, "保存元数据缓存失败", e);
        }
    }
}