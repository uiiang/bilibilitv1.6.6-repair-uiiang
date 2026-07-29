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
            File extractionDir = createExtractionDir(bookId);
            saveResources(parsedData.getResources(), extractionDir);
            
            List<Chapter> chapters = splitIntoChapters(parsedData.getRawHtmlContent(), parsedData.getToc(), imageMap, cssFlowMap);
            
            Book book = new Book();
            book.setBookId(bookId);
            book.setTitle(parsedData.getTitle() != null ? parsedData.getTitle() : "Unknown Title");
            book.setAuthor(parsedData.getAuthor() != null ? parsedData.getAuthor() : "Unknown Author");
            book.setLanguage("en");
            book.setFileName(book.getTitle());
            book.setChapters(chapters);
            book.setExtractionPath(extractionDir.getAbsolutePath());
            
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
}