package com.bilibili.tv.ebook.parser;

import android.content.Context;
import android.util.Log;

import com.bilibili.tv.ebook.model.Book;
import com.bilibili.tv.ebook.model.Chapter;
import com.bilibili.tv.ebook.util.EbookUtils;

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

            // 关键优化：尝试从缓存加载元数据
            Book cachedBook = loadMetadataFromCache(extractionDir);
            if (cachedBook != null) {
                // 兼容修复：旧版本解析带命名空间前缀（如 <opf:manifest><opf:item>）的OPF时
                // 会解析出0个章节并写入缓存，这里检测到空章节缓存时删除后重新解析，
                // 避免修复后仍然提示"书籍内容为空"
                if (cachedBook.getChapters() != null && !cachedBook.getChapters().isEmpty()) {
                    Log.i(TAG, "使用缓存的元数据，跳过HTML解析: " + cachedBook.getTitle() +
                          ", 章节数: " + cachedBook.getChapters().size());
                    return cachedBook;
                }
                Log.w(TAG, "缓存中章节为空，删除缓存并重新解析: " + extractionDir.getAbsolutePath());
                new File(extractionDir, "metadata.json").delete();
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

            // 关键优化：保存元数据到缓存
            saveMetadataToCache(book, extractionDir);

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

        // 如果已存在，校验缓存完整性；不完整则删除后重新解压
        if (extractionDir.exists()) {
            if (isExtractionValid(extractionDir)) {
                Log.i(TAG, "使用已缓存的解压目录: " + extractionDir.getAbsolutePath());
                return extractionDir;
            }
            Log.w(TAG, "缓存目录不完整，删除后重新解压: " + extractionDir.getAbsolutePath());
            deleteRecursively(extractionDir);
        }

        // 先解压到临时目录，解压成功后再重命名为正式目录
        // 避免解压中途失败时留下不完整的缓存目录，导致后续一直解析失败
        File tempDir = new File(cacheDir, bookId + ".tmp");
        if (tempDir.exists()) {
            deleteRecursively(tempDir);
        }
        tempDir.mkdirs();

        ZipFile zipFile = null;
        try {
            zipFile = new ZipFile(filePath);
            Enumeration<? extends ZipEntry> entries = zipFile.entries();

            while (entries.hasMoreElements()) {
                ZipEntry entry = entries.nextElement();
                File file = new File(tempDir, entry.getName());

                if (entry.isDirectory()) {
                    file.mkdirs();
                } else {
                    // 确保父目录存在
                    file.getParentFile().mkdirs();

                    // 写入文件内容（使用try-finally确保异常时流也关闭，避免FD泄漏）
                    InputStream is = null;
                    FileOutputStream fos = null;
                    try {
                        is = zipFile.getInputStream(entry);
                        fos = new FileOutputStream(file);

                        byte[] buffer = new byte[8192];
                        int len;
                        while ((len = is.read(buffer)) > 0) {
                            fos.write(buffer, 0, len);
                        }
                    } finally {
                        if (fos != null) {
                            try {
                                fos.close();
                            } catch (IOException e) {
                                Log.e(TAG, "关闭输出流失败: " + e.getMessage());
                            }
                        }
                        if (is != null) {
                            try {
                                is.close();
                            } catch (IOException e) {
                                Log.e(TAG, "关闭输入流失败: " + e.getMessage());
                            }
                        }
                    }
                }
            }
        } catch (IOException e) {
            // 解压失败，清理临时目录，避免留下不完整的缓存
            deleteRecursively(tempDir);
            throw e;
        } finally {
            if (zipFile != null) {
                try {
                    zipFile.close();
                } catch (IOException e) {
                    Log.e(TAG, "关闭ZipFile失败: " + e.getMessage());
                }
            }
        }

        // 解压成功，重命名为正式目录
        if (tempDir.renameTo(extractionDir)) {
            Log.i(TAG, "EPUB解压完成: " + extractionDir.getAbsolutePath());
            return extractionDir;
        }

        // 重命名失败（目标目录可能已被并发创建），清理临时目录后返回已有目录
        deleteRecursively(tempDir);
        if (extractionDir.exists()) {
            return extractionDir;
        }
        throw new IOException("重命名解压目录失败: " + extractionDir.getAbsolutePath());
    }

    /**
     * 校验解压目录是否完整
     */
    private boolean isExtractionValid(File extractionDir) {
        // 有元数据缓存则视为完整
        if (new File(extractionDir, "metadata.json").exists()) {
            return true;
        }
        // 否则必须能定位到OPF文件才算完整
        try {
            return findOpfFile(extractionDir) != null;
        } catch (Exception e) {
            return false;
        }
    }

    /**
     * 递归删除文件或目录
     */
    private void deleteRecursively(File file) {
        if (file == null || !file.exists()) {
            return;
        }
        if (file.isDirectory()) {
            File[] children = file.listFiles();
            if (children != null) {
                for (File child : children) {
                    deleteRecursively(child);
                }
            }
        }
        if (!file.delete()) {
            Log.w(TAG, "删除文件失败: " + file.getAbsolutePath());
        }
    }
    
    /**
     * 查找OPF文件
     */
    private File findOpfFile(File extractionDir) throws Exception {
        // 1. 读取container.xml
        File containerFile = new File(extractionDir, "META-INF/container.xml");
        
        if (containerFile.exists()) {
            Document doc = Jsoup.parse(containerFile, EbookUtils.detectFileEncoding(containerFile));
            // 使用 *| 通配命名空间，兼容 <rootfile> 和 <ns:rootfile> 两种写法
            Element rootfile = doc.selectFirst("*|rootfile");
            
            if (rootfile != null) {
                String opfPath = rootfile.attr("full-path");
                // 兼容修复：full-path 可能是百分号编码，解码后再定位OPF
                File opfFile = new File(extractionDir, decodeHrefPath(opfPath));
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
        // 探测实际编码，兼容GBK/GB2312等非UTF-8的OPF文件
        Document doc = Jsoup.parse(opfFile, EbookUtils.detectFileEncoding(opfFile));

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

        // 5. 尝试解析NCX文件（获取多级目录结构）
        NcxParseResult ncxResult = parseNcxFile(manifest, baseDir, opfFile);

        // 6. 解析章节（使用NCX层级信息和标题）
        List<Chapter> chapters = parseChapters(manifest, spineOrder, baseDir, ncxResult);
        book.setChapters(chapters);

        return book;
    }
    
    /**
     * 解析元数据
     */
    private void parseMetadata(Document doc, Book book) {
        // 调试：输出整个metadata部分的HTML结构
        // 使用 *| 通配命名空间，兼容 <metadata> 和 <opf:metadata> 两种写法
        Element metadataElement = doc.selectFirst("*|metadata");
        if (metadataElement != null) {
            Log.d(TAG, "找到metadata元素，内容:\n" + metadataElement.html());
        } else {
            Log.w(TAG, "未找到metadata元素，尝试查找根元素下的所有元素");
            Elements allElements = doc.children();
            for (Element elem : allElements) {
                Log.d(TAG, "根元素: " + elem.tagName() + ", 子元素数: " + elem.children().size());
            }
        }

        // 标题 - 尝试多种选择器（EPUB使用Dublin Core命名空间）
        Element titleElement = null;

        // 方法1: 通配命名空间，兼容 <metadata><dc:title> 和 <opf:metadata><dc:title> 等写法
        titleElement = doc.selectFirst("*|metadata *|title");
        if (titleElement == null) {
            // 方法2: 尝试全局Dublin Core选择器
            titleElement = doc.selectFirst("dc|title");
        }
        if (titleElement == null) {
            // 方法4: 遍历metadata下的所有子元素，查找title标签
            if (metadataElement != null) {
                for (Element child : metadataElement.children()) {
                    String tagName = child.tagName().toLowerCase();
                    if (tagName.equals("title") || tagName.endsWith(":title")) {
                        titleElement = child;
                        Log.d(TAG, "通过遍历找到title元素: " + child.tagName());
                        break;
                    }
                }
            }
        }
        if (titleElement == null) {
            // 方法5: 使用属性选择器（可能title在某些属性中）
            titleElement = doc.selectFirst("*[property~=title]");
        }

        if (titleElement != null) {
            String titleText = titleElement.text().trim();
            if (!titleText.isEmpty()) {
                book.setTitle(titleText);
                Log.i(TAG, "解析到书籍标题: " + titleText + " (使用选择器: " + titleElement.tagName() + ")");
            } else {
                Log.w(TAG, "title元素内容为空");
                book.setTitle("Unknown Title");
            }
        } else {
            book.setTitle("Unknown Title");
            Log.w(TAG, "未找到书籍标题元数据");
        }

        // 作者 - 尝试多种选择器
        Element authorElement = null;

        // 方法1: 通配命名空间，兼容 <metadata><dc:creator> 和 <opf:metadata><dc:creator> 等写法
        authorElement = doc.selectFirst("*|metadata *|creator");
        if (authorElement == null) {
            // 方法2: 尝试全局Dublin Core选择器
            authorElement = doc.selectFirst("dc|creator");
        }
        if (authorElement == null) {
            // 方法4: 遍历metadata下的所有子元素，查找creator标签
            if (metadataElement != null) {
                for (Element child : metadataElement.children()) {
                    String tagName = child.tagName().toLowerCase();
                    if (tagName.equals("creator") || tagName.endsWith(":creator")) {
                        authorElement = child;
                        Log.d(TAG, "通过遍历找到creator元素: " + child.tagName());
                        break;
                    }
                }
            }
        }
        if (authorElement == null) {
            // 方法5: 使用属性选择器
            authorElement = doc.selectFirst("*[property~=creator]");
        }

        if (authorElement != null) {
            String authorText = authorElement.text().trim();
            if (!authorText.isEmpty()) {
                book.setAuthor(authorText);
                Log.i(TAG, "解析到作者: " + authorText + " (使用选择器: " + authorElement.tagName() + ")");
            } else {
                Log.w(TAG, "creator元素内容为空");
                book.setAuthor("Unknown Author");
            }
        } else {
            book.setAuthor("Unknown Author");
            Log.w(TAG, "未找到作者元数据");
        }

        // 语言
        Element languageElement = doc.selectFirst("*|metadata *|language");
        if (languageElement == null) {
            languageElement = doc.selectFirst("dc|language");
        }
        if (languageElement == null) {
            // 遍历查找
            if (metadataElement != null) {
                for (Element child : metadataElement.children()) {
                    String tagName = child.tagName().toLowerCase();
                    if (tagName.equals("language") || tagName.endsWith(":language")) {
                        languageElement = child;
                        break;
                    }
                }
            }
        }
        if (languageElement != null) {
            book.setLanguage(languageElement.text());
        } else {
            book.setLanguage("en");
        }

        Log.i(TAG, "元数据解析完成: 标题=" + book.getTitle() +
              ", 作者=" + book.getAuthor() + ", 语言=" + book.getLanguage());
    }
    
    /**
     * 解析Manifest
     */
    private Map<String, ManifestItem> parseManifest(Document doc) {
        Map<String, ManifestItem> manifest = new HashMap<>();
        // 使用 *| 通配命名空间，兼容 <manifest><item> 和 <opf:manifest><opf:item> 两种写法
        // （EPUB4J 等工具生成的 OPF 会给所有标签加 opf: 前缀）
        Elements items = doc.select("*|manifest *|item");
        
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
        // 使用 *| 通配命名空间，兼容 <spine><itemref> 和 <opf:spine><opf:itemref> 两种写法
        Elements items = doc.select("*|spine *|itemref");

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
     * NCX解析结果类
     */
    private static class NcxParseResult {
        Map<String, Integer> depthMap = new HashMap<>();
        Map<String, String> titleMap = new HashMap<>(); // 文件路径 -> NCX标题
    }

    /**
     * 解析NCX文件（获取多级目录结构）
     * 参考自：参考/episteme/app/src/main/java/com/aryan/reader/epub/EpubParser.kt
     * 
     * 关键修复：使用XML解析器，避免HTML解析器扁平化嵌套的navPoint
     */
    private NcxParseResult parseNcxFile(Map<String, ManifestItem> manifest, File baseDir, File opfFile) {
        NcxParseResult result = new NcxParseResult();

        try {
            // 查找NCX文件（通常在manifest中有ncx标记）
            File ncxFile = null;

            // 方法1: 从manifest中查找
            for (ManifestItem item : manifest.values()) {
                String itemHref = item.getHref() != null ? item.getHref() : "";
                if (item.getMediaType().contains("application/x-dtbncx+xml") ||
                    item.getId().toLowerCase().contains("ncx") ||
                    itemHref.toLowerCase().endsWith(".ncx")) {
                    ncxFile = new File(baseDir, decodeHrefPath(itemHref));
                    break;
                }
            }

            // 方法2: 如果manifest中没有，直接查找.ncx文件
            if (ncxFile == null || !ncxFile.exists()) {
                File[] ncxFiles = baseDir.listFiles(new FileFilter() {
                    @Override
                    public boolean accept(File file) {
                        return file.getName().endsWith(".ncx");
                    }
                });

                if (ncxFiles != null && ncxFiles.length > 0) {
                    ncxFile = ncxFiles[0];
                }
            }

            if (ncxFile == null || !ncxFile.exists()) {
                Log.w(TAG, "未找到NCX文件，将使用扁平章节列表");
                return result;
            }

            Log.i(TAG, "找到NCX文件: " + ncxFile.getAbsolutePath());

            // 关键修复：使用XML解析器，避免HTML解析器扁平化嵌套的navPoint
            Document ncxDoc = Jsoup.parse(ncxFile, EbookUtils.detectFileEncoding(ncxFile), "",
                    new org.jsoup.parser.Parser(new org.jsoup.parser.XmlTreeBuilder()));
            // 使用 *| 通配命名空间，兼容 <navMap> 和 <ncx:navMap> 两种写法
            Element navMap = ncxDoc.selectFirst("*|navMap");

            if (navMap != null) {
                Log.i(TAG, "找到navMap元素，子元素数: " + navMap.children().size());

                // 递归解析navMap
                parseNavMapRecursive(navMap, ncxFile.getParentFile(), opfFile.getParentFile(), 0, result);
                Log.i(TAG, "NCX解析完成，depthMap大小: " + result.depthMap.size() + ", titleMap大小: " + result.titleMap.size());
            } else {
                Log.w(TAG, "NCX文件中没有找到navMap元素");
            }

        } catch (Exception e) {
            Log.e(TAG, "解析NCX文件失败", e);
        }

        return result;
    }

    /**
     * 递归解析navMap，获取章节层级信息
     * 参考自：参考/episteme/app/src/main/java/com/aryan/reader/epub/EpubParser.kt
     * 
     * 关键修复：
     * 1. 使用XML解析器，navPoint标签大小写保持原样
     * 2. 同时提取depth和title，构建ncxTitleMap
     * 3. 处理路径规范化，将NCX路径转换为相对于OPF目录的路径
     */
    private void parseNavMapRecursive(Element parent, File ncxFileParentDir, File opfFileParentDir, int depth,
                                       NcxParseResult result) {
        Elements children = parent.children();

        Log.d(TAG, "parseNavMapRecursive: depth=" + depth + ", 子元素数=" + children.size());

        for (Element child : children) {
            // XML解析器保留原始大小写，但仍然使用equalsIgnoreCase以确保兼容性
            // 使用本地名比较，兼容 <navPoint> 和 <ncx:navPoint> 两种写法
            if (!localNameOf(child).equalsIgnoreCase("navPoint")) {
                continue;
            }

            // 获取章节标题（navLabel下的text元素）和章节路径
            // 遍历子元素取本地名，兼容带命名空间前缀的NCX
            String title = "未知章节";
            String src = "";
            for (Element navChild : child.children()) {
                String childName = localNameOf(navChild);
                if (childName.equalsIgnoreCase("navLabel")) {
                    String labelText = navChild.text().trim();
                    if (!labelText.isEmpty()) {
                        title = labelText;
                    }
                } else if (childName.equalsIgnoreCase("content")) {
                    src = navChild.attr("src");
                }
            }

            Log.d(TAG, "解析navPoint: id=" + child.attr("id") + 
                  ", title=" + title + ", src=" + src + ", depth=" + depth);

            if (!src.isEmpty()) {
                // 关键修复：路径规范化（参考episteme实现）
                // 1. 去掉fragment部分（#后面的内容）
                String filePath = src.split("#")[0];

                // 2. NCX中的路径是相对于NCX文件位置的
                //    需要转换为相对于OPF目录的路径（用于与spine href匹配）
                //    因为NCX和OPF通常在同一目录，直接使用相对路径即可
                //    但需要处理路径中的./和../

                // 使用File API规范化路径（兼容Android 4.x）
                File fullPath = new File(ncxFileParentDir, filePath);
                File canonicalPath;
                try {
                    canonicalPath = fullPath.getCanonicalFile();
                } catch (Exception e) {
                    canonicalPath = fullPath.getAbsoluteFile();
                }

                // 计算相对于OPF目录的路径
                String normalizedPath;
                if (ncxFileParentDir.equals(opfFileParentDir)) {
                    // NCX和OPF在同一目录，直接使用filePath
                    normalizedPath = filePath;
                } else {
                    // NCX和OPF在不同目录，需要计算相对路径
                    String canonicalPathStr = canonicalPath.getAbsolutePath();
                    String opfParentPath = opfFileParentDir.getAbsolutePath();

                    if (canonicalPathStr.startsWith(opfParentPath)) {
                        normalizedPath = canonicalPathStr.substring(opfParentPath.length() + 1);
                    } else {
                        // 降级：直接使用filePath
                        normalizedPath = filePath;
                    }
                }

                // 规范化路径分隔符（使用/）
                normalizedPath = normalizedPath.replace("\\", "/");
                // 兼容修复：解码百分号编码，保证与manifest href解码后的路径一致
                normalizedPath = decodeHrefPath(normalizedPath);

                // 避免重复添加同一个路径（参考episteme的实现）
                if (!result.depthMap.containsKey(normalizedPath)) {
                    result.depthMap.put(normalizedPath, depth);
                    result.titleMap.put(normalizedPath, title);
                    Log.i(TAG, "章节: " + title + ", depth=" + depth + ", path=" + normalizedPath +
                          ", src=" + src + ", ncxDir=" + ncxFileParentDir.getName());
                } else {
                    Log.w(TAG, "跳过重复路径: " + normalizedPath + " (已存在depth=" + result.depthMap.get(normalizedPath) + ")");
                }
            }

            // 递归解析嵌套的navPoint子元素
            parseNavMapRecursive(child, ncxFileParentDir, opfFileParentDir, depth + 1, result);
        }
    }

    /**
     * 解析章节内容（使用NCX层级信息）
     */
    private List<Chapter> parseChapters(Map<String, ManifestItem> manifest,
                                         List<String> spineOrder,
                                         File baseDir,
                                         NcxParseResult ncxResult) {
        List<Chapter> chapters = new ArrayList<>();
        int chapterIndex = 0;

        for (String itemId : spineOrder) {
            ManifestItem item = manifest.get(itemId);
            if (item != null && isHtmlItem(item)) {
                try {
                    Chapter chapter = parseChapter(item, chapterIndex, baseDir, ncxResult);
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
     * 解析单个章节（使用NCX层级信息）
     *
     * 兼容设计：设置baseUrl以支持图片和CSS资源加载
     * - EPUB: file:///path/to/book/OEBPS/ (章节所在目录)
     * - MOBI/AZW3: 转换后的HTML目录
     */
    private Chapter parseChapter(ManifestItem item, int index, File baseDir,
                                  NcxParseResult ncxResult)
            throws IOException {
        String href = item.getHref();
        // 兼容修复：OPF中的href可能是百分号编码（如 chapter%201.xhtml），
        // 解码后才能定位到解压后的真实文件名
        String filePath = decodeHrefPath(href);
        File chapterFile = new File(baseDir, filePath);
        Log.i(TAG, "解析章节文件: " + chapterFile.getAbsolutePath() + " (href=" + href + ")");

        // 探测实际编码，兼容GBK/GB2312等非UTF-8的章节文件
        Document doc = Jsoup.parse(chapterFile, EbookUtils.detectFileEncoding(chapterFile));

        Chapter chapter = new Chapter();
        chapter.setChapterId(item.getId());
        chapter.setChapterIndex(index);
        chapter.setHtmlFilePath(filePath);
        chapter.setHtmlContent(doc.outerHtml());
        chapter.setPlainTextContent(doc.text());

        // 关键修复：设置baseUrl，用于WebView正确解析相对路径
        // baseUrl是章节HTML文件所在的目录路径（使用file://协议）
        File chapterDir = chapterFile.getParentFile();
        if (chapterDir != null) {
            String baseUrl = "file://" + chapterDir.getAbsolutePath() + "/";
            chapter.setBaseUrl(baseUrl);
            Log.i(TAG, "设置baseUrl: " + baseUrl);
        }

        // 关键修复：优先从NCX的titleMap中提取标题
        String title = null;
        if (ncxResult != null && ncxResult.titleMap != null) {
            // NCX中的路径已统一解码，优先用解码后的路径匹配，兼容历史原始href
            title = ncxResult.titleMap.get(filePath);
            if (title == null) {
                title = ncxResult.titleMap.get(href);
            }
            if (title != null) {
                Log.i(TAG, "从NCX获取标题: " + title + ", href=" + href);
            } else {
                Log.w(TAG, "NCX titleMap中未找到href=" + href + ", titleMap大小=" + ncxResult.titleMap.size());
                // 调试：打印titleMap中的所有键
                for (String key : ncxResult.titleMap.keySet()) {
                    Log.d(TAG, "titleMap key: " + key + " -> " + ncxResult.titleMap.get(key));
                }
            }
        }

        // 如果NCX中没有标题，从HTML的<title>标签提取
        if (title == null || title.isEmpty()) {
            Element titleElement = doc.selectFirst("title");
            if (titleElement != null && !titleElement.text().isEmpty()) {
                title = titleElement.text();
                Log.i(TAG, "从HTML获取标题: " + title);
            } else {
                title = "Chapter " + (index + 1);
                Log.w(TAG, "使用默认标题: " + title);
            }
        }

        chapter.setTitle(title);

        // 设置章节层级深度（从NCX depthMap中查找）
        int depth = 0; // 默认为0级（顶级）
        if (ncxResult != null && ncxResult.depthMap != null) {
            Integer depthValue = ncxResult.depthMap.get(filePath);
            if (depthValue == null) {
                depthValue = ncxResult.depthMap.get(href);
            }
            if (depthValue != null) {
                depth = depthValue;
                Log.i(TAG, "从NCX获取depth: " + depth + ", href=" + href);
            } else {
                Log.w(TAG, "NCX depthMap中未找到href=" + href + ", depthMap大小=" + ncxResult.depthMap.size());
            }
        }
        chapter.setDepth(depth);

        Log.i(TAG, "章节解析完成: " + chapter.getTitle() + ", depth=" + depth + ", href=" + href);

        return chapter;
    }

    /**
     * 从缓存加载元数据
     * 关键优化：避免每次都解析HTML文件
     */
    private Book loadMetadataFromCache(File extractionDir) {
        try {
            File metadataFile = new File(extractionDir, "metadata.json");
            if (!metadataFile.exists()) {
                Log.d(TAG, "缓存文件不存在: " + metadataFile.getAbsolutePath());
                return null;
            }

            Log.i(TAG, "开始加载缓存的元数据: " + metadataFile.getAbsolutePath());

            // 读取JSON文件（使用try-finally确保异常时流也关闭，避免FD泄漏）
            java.io.FileInputStream fis = null;
            java.io.BufferedReader reader = null;
            try {
                fis = new java.io.FileInputStream(metadataFile);
                reader = new java.io.BufferedReader(new java.io.InputStreamReader(fis, "UTF-8"));
                StringBuilder sb = new StringBuilder();
                String line;
                while ((line = reader.readLine()) != null) {
                    sb.append(line);
                }
                return parseMetadataJson(sb.toString());
            } finally {
                if (reader != null) {
                    try {
                        reader.close();
                    } catch (Exception e) {
                        Log.e(TAG, "关闭reader失败: " + e.getMessage());
                    }
                }
                if (fis != null) {
                    try {
                        fis.close();
                    } catch (Exception e) {
                        Log.e(TAG, "关闭fis失败: " + e.getMessage());
                    }
                }
            }

        } catch (Exception e) {
            Log.e(TAG, "加载缓存元数据失败", e);
            return null;
        }
    }

    /**
     * 解析元数据JSON（从缓存中读取）
     */
    private Book parseMetadataJson(String json) {
        try {
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
                java.util.List<Chapter> chapters = new java.util.ArrayList<>();
                for (int i = 0; i < chaptersArray.length(); i++) {
                    org.json.JSONObject chapterObj = chaptersArray.getJSONObject(i);
                    Chapter chapter = new Chapter();
                    chapter.setChapterId(chapterObj.optString("chapterId"));
                    chapter.setChapterIndex(chapterObj.optInt("chapterIndex"));
                    chapter.setTitle(chapterObj.optString("title"));
                    // 兼容旧缓存：历史版本可能保存了百分号编码的路径，读取时统一解码
                    chapter.setHtmlFilePath(decodeHrefPath(chapterObj.optString("htmlFilePath")));
                    chapter.setBaseUrl(decodeHrefPath(chapterObj.optString("baseUrl")));
                    chapter.setDepth(chapterObj.optInt("depth"));

                    // 性能优化：延迟加载章节内容
                    // 不在这里加载所有章节的HTML内容，而是在显示时加载
                    // 这样可以大幅提升打开速度（从7-8秒降到几百毫秒）

                    chapters.add(chapter);
                }
                book.setChapters(chapters);
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
     * 关键优化：避免下次解析HTML文件
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

            // 保存章节列表（不保存内容，只保存元数据）
            org.json.JSONArray chaptersArray = new org.json.JSONArray();
            if (book.getChapters() != null) {
                for (Chapter chapter : book.getChapters()) {
                    org.json.JSONObject chapterObj = new org.json.JSONObject();
                    chapterObj.put("chapterId", chapter.getChapterId());
                    chapterObj.put("chapterIndex", chapter.getChapterIndex());
                    chapterObj.put("title", chapter.getTitle());
                    chapterObj.put("htmlFilePath", chapter.getHtmlFilePath());
                    chapterObj.put("baseUrl", chapter.getBaseUrl());
                    chapterObj.put("depth", chapter.getDepth());
                    // 注意：不保存htmlContent和plainTextContent，因为太大
                    chaptersArray.put(chapterObj);
                }
            }
            jsonObj.put("chapters", chaptersArray);

            // 写入文件（使用try-finally确保异常时流也关闭，避免FD泄漏）
            java.io.FileOutputStream fos = null;
            java.io.OutputStreamWriter writer = null;
            try {
                fos = new java.io.FileOutputStream(metadataFile);
                writer = new java.io.OutputStreamWriter(fos, "UTF-8");
                writer.write(jsonObj.toString());
                writer.flush();
            } finally {
                if (writer != null) {
                    try {
                        writer.close();
                    } catch (Exception e) {
                        Log.e(TAG, "关闭writer失败: " + e.getMessage());
                    }
                }
                if (fos != null) {
                    try {
                        fos.close();
                    } catch (Exception e) {
                        Log.e(TAG, "关闭fos失败: " + e.getMessage());
                    }
                }
            }

            Log.i(TAG, "元数据缓存保存成功: " + metadataFile.getAbsolutePath() +
                  ", 大小: " + metadataFile.length() + " bytes");

        } catch (Exception e) {
            Log.e(TAG, "保存元数据缓存失败", e);
        }
    }

    /**
     * 递归查找文件
     * 用于处理章节文件在不同子目录中的情况
     */
    private File findFileRecursively(File dir, String fileName) {
        if (!dir.isDirectory()) {
            return null;
        }

        // 先检查当前目录
        File file = new File(dir, fileName);
        if (file.exists()) {
            return file;
        }

        // 递归搜索子目录
        File[] children = dir.listFiles();
        if (children != null) {
            for (File child : children) {
                if (child.isDirectory()) {
                    File found = findFileRecursively(child, fileName);
                    if (found != null) {
                        return found;
                    }
                }
            }
        }

        return null;
    }

    /**
     * 获取元素标签的本地名（去掉命名空间前缀，如 opf:item -> item）
     * 用于兼容带命名空间前缀的XML文档
     */
    private static String localNameOf(Element element) {
        String tagName = element.tagName();
        int colonIndex = tagName.indexOf(':');
        return colonIndex >= 0 ? tagName.substring(colonIndex + 1) : tagName;
    }

    /**
     * 解码href中的百分号编码（如 chapter%201.xhtml -> chapter 1.xhtml）
     * 注意：不处理 '+'，因为路径中的 '+' 是普通字符而不是空格
     */
    private static String decodeHrefPath(String href) {
        if (href == null || href.indexOf('%') < 0) {
            return href;
        }

        StringBuilder result = new StringBuilder(href.length());
        java.io.ByteArrayOutputStream bytes = new java.io.ByteArrayOutputStream();
        int i = 0;
        while (i < href.length()) {
            char c = href.charAt(i);
            if (c == '%' && i + 2 < href.length()
                    && isHexDigit(href.charAt(i + 1)) && isHexDigit(href.charAt(i + 2))) {
                bytes.write(Integer.parseInt(href.substring(i + 1, i + 3), 16));
                i += 3;
            } else {
                flushDecodedBytes(bytes, result);
                result.append(c);
                i++;
            }
        }
        flushDecodedBytes(bytes, result);
        return result.toString();
    }

    private static void flushDecodedBytes(java.io.ByteArrayOutputStream bytes, StringBuilder out) {
        if (bytes.size() == 0) {
            return;
        }
        try {
            out.append(new String(bytes.toByteArray(), "UTF-8"));
        } catch (java.io.UnsupportedEncodingException e) {
            // UTF-8 一定可用，这里不会发生
        }
        bytes.reset();
    }

    private static boolean isHexDigit(char c) {
        return (c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || (c >= 'A' && c <= 'F');
    }

    /**
     * 判断manifest项是否为HTML章节
     * 正常情况按 media-type 判断；部分不规范EPUB缺失 media-type 时按扩展名兜底
     */
    private static boolean isHtmlItem(ManifestItem item) {
        String mediaType = item.getMediaType();
        if (mediaType != null && mediaType.toLowerCase().contains("html")) {
            return true;
        }
        String href = item.getHref();
        if (href != null) {
            String lower = href.toLowerCase();
            int queryIndex = lower.indexOf('?');
            if (queryIndex >= 0) {
                lower = lower.substring(0, queryIndex);
            }
            return lower.endsWith(".xhtml") || lower.endsWith(".xht")
                    || lower.endsWith(".html") || lower.endsWith(".htm");
        }
        return false;
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