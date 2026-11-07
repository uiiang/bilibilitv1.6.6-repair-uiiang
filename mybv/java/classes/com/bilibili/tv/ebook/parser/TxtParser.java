package com.bilibili.tv.ebook.parser;

import android.content.Context;
import android.util.Log;

import com.bilibili.tv.ebook.model.Book;
import com.bilibili.tv.ebook.model.Chapter;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CodingErrorAction;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * TXT电子书解析器
 *
 * 参考项目：参考/readest/apps/readest-app/src/utils/txt.ts
 * readest 的做法是先把 TXT 解析成带目录的章节，再转换成 EPUB 供阅读器读取。
 * 本项目已有 Book/Chapter 数据模型和按章节落盘的阅读管线，因此这里复用同一套章节识别规则，
 * 直接把 TXT 解析成 Book（章节标题 + 章节 HTML 文件 + metadata.json 缓存），
 * 不生成中间 EPUB，避免一次性把整本书压缩进内存。
 *
 * 复用 readest 的关键逻辑：
 * 1. 编码探测：UTF-8 / UTF-16LE / UTF-16BE / GBK / GB18030 / Shift-JIS
 * 2. 章标题识别：第N章/节/回/讲/篇/话、第N卷/本/册/部、楔子/前言/序章/番外…、Chapter N
 * 3. 二级标题兜底：一：标题、1 标题（第一级识别不到时才启用）
 * 4. 无任何标题时按 100 个段落为一章切分
 * 5. 卷标题作为一级目录，卷内章节作为二级目录（与 readest 生成的嵌套 navPoint 一致）
 * 6. 书名/作者优先从文件名《书名》作者：X 中提取，其次读取文件头部的“作者：X”
 */
public class TxtParser {
    private static final String TAG = "TxtParser";

    // ==================== 解析参数（与 readest txt.ts 保持一致） ====================

    private static final int ENCODING_HEAD_SAMPLE_BYTES = 64 * 1024;
    private static final int ENCODING_MID_SAMPLE_BYTES = 8 * 1024;
    private static final int HEADER_TEXT_MAX_BYTES = 128 * 1024;
    private static final int HEADER_TEXT_MAX_CHARS = 1024;
    private static final int FALLBACK_PARAGRAPHS_PER_CHAPTER = 100;

    private static final int MODE_FALLBACK = 0;
    private static final int MODE_HEADINGS_TIER1 = 1;
    private static final int MODE_HEADINGS_TIER2 = 2;

    // ==================== 中文标题正则（移植自 readest createChapterRegexps） ====================

    /** 可组成章节序号的字符：简体/繁体数字 + 大写数字 + 阿拉伯数字 */
    private static final String CJK_NUMBER_DIGITS = "零〇一二两兩三四五六七八九十壹贰貳叁叄參肆伍陆陸柒捌玖拾0-9";
    /** 序号单位 */
    private static final String CJK_NUMBER_UNITS = "百千万萬佰仟";
    private static final String CJK_NUMBER_CHARS = CJK_NUMBER_DIGITS + CJK_NUMBER_UNITS;

    /**
     * 第N章/节/回…（真实章节）或 第N卷/本/册/部/封（卷标题）。
     * 卷量词后面必须跟分隔符或直接结束，避免把“第一封信”“第四本书”这类正文误判为标题。
     */
    private static final String ZH_NUMBERED_HEADING =
        "第[ 　" + CJK_NUMBER_DIGITS + "][ 　" + CJK_NUMBER_CHARS + "]*" +
        "(?:[章节節回讲講篇话話](?:[：:、 　\\(\\)0-9]*[^\\n-]{0,36})?" +
        "|[卷本册冊部封](?:[：:、 　\\(\\)][：:、 　\\(\\)0-9]*[^\\n-]{0,36})?)";

    /** 前言类标题：楔子、前言、序章、番外、外传等 */
    private static final String ZH_PREFACE_HEADING =
        "(?:楔子|前言|简介|引言|序言|序章|总论|概论|后记|番外篇|番外|外传)(?:[：: 　][^\\n-]{0,36})?";

    /** 英文标题：Chapter 1 / Part 3: xxx / Chapter.5 */
    private static final String EN_NORMAL_HEADING =
        "(?:Chapter|Part|Section|Book|Volume|Act)\\s*" +
        "(?:\\d+|(?:[IVXLCDM]{2,}|V|X|L|C|D|M)\\b|\\.\\d{1,4})" +
        "(?:[:.\\-–—]?\\s*[^\\n]{0,50})?";

    /** 英文前言类标题：Prologue / Epilogue / Preface… */
    private static final String EN_PREFACE_HEADING =
        "(?:Prologue|Epilogue|Introduction|Foreword|Preface|Afterword)(?:[:.\\-–—]?\\s*[^\\n]{0,50})?";

    /** 中文第一级标题（整行匹配） */
    private static final Pattern ZH_TIER1 = Pattern.compile(
        "^(?:" + ZH_NUMBERED_HEADING + "|" + ZH_PREFACE_HEADING + "|" + EN_NORMAL_HEADING + ")\\s*$",
        Pattern.CASE_INSENSITIVE);

    /** 中文第二级标题：一：标题、1 标题（仅在第一级标题完全识别不到时启用） */
    private static final Pattern ZH_TIER2 = Pattern.compile(
        "^(?:[一二三四五六七八九十][零〇一二三四五六七八九十百千万]?[：:、 　][^\\n-]{0,36}" +
        "|[0-9]+[^\\n]{0,16})\\s*$");

    /** 英文第一级标题（整行匹配） */
    private static final Pattern EN_TIER1 = Pattern.compile(
        "^(?:" + EN_NORMAL_HEADING + "|" + EN_PREFACE_HEADING + ")\\s*$",
        Pattern.CASE_INSENSITIVE);

    /** 英文第二级标题：1.1 The Elements / 1Building Data */
    private static final Pattern EN_TIER2 = Pattern.compile(
        "^(?:\\d+\\.\\d+(?:\\.\\d+)* ?[A-Z][^\\n]{0,80}|\\d+[A-Z][^\\n]{0,80})\\s*$");

    /** 中文卷标题检测：第N卷/本/册/冊/部 */
    private static final Pattern ZH_VOLUME = Pattern.compile(
        "第[ 　]*[" + CJK_NUMBER_CHARS + "][ 　" + CJK_NUMBER_CHARS + "]*(卷|本|册|冊|部)");

    /** 英文卷标题检测 */
    private static final Pattern EN_VOLUME = Pattern.compile("\\b(Part|Volume|Book)\\b", Pattern.CASE_INSENSITIVE);

    // ==================== 书名/作者提取正则 ====================

    /** 文件名中的《书名》模式 */
    private static final Pattern TITLE_BOOK_MARK = Pattern.compile("《([^》]+)》(.*)");
    /** “作者：X”（兼容全角空格与【作者】写法） */
    private static final Pattern AUTHOR_LABELED = Pattern.compile("[【\\[]?作者[】\\]]?[：:\\s　]+(.+)");
    /** “X 著” */
    private static final Pattern AUTHOR_ZHU = Pattern.compile("[【\\[]?[\\s　]*(.+)[\\s　]+著[\\s　]*[】\\]]?");
    /** 括号包裹的作者：[X] (X) 【X】 （X）［X］ */
    private static final Pattern AUTHOR_BRACKETED = Pattern.compile(
        "[\\[\\(（【［]\\s*([^\\]\\)）】］]+?)\\s*[\\]\\)）】］]");
    /** 用于排除疑似元数据的长数字串（如“字数1023150字”） */
    private static final Pattern FOUR_DIGITS = Pattern.compile("\\d{4,}");
    /** 章节内的分隔线：连续 8 个以上的 - 或 _ */
    private static final Pattern DIVIDER_LINE = Pattern.compile("^[-_]{8,}$");

    private Context context;
    private File cacheDir;

    public TxtParser(Context context) {
        this.context = context;
        this.cacheDir = new File(context.getCacheDir(), "txt_cache");
        if (!cacheDir.exists()) {
            cacheDir.mkdirs();
        }
    }

    /**
     * 解析TXT文件
     *
     * @param filePath TXT文件路径
     * @param bookId   书籍唯一ID（由EbookParserFactory.generateBookId生成）
     * @return Book对象，解析失败返回null
     */
    public Book parse(String filePath, String bookId) {
        File sourceFile = new File(filePath);
        if (!sourceFile.exists() || !sourceFile.isFile()) {
            Log.e(TAG, "TXT文件不存在: " + filePath);
            return null;
        }

        File extractionDir = new File(cacheDir, bookId);

        // 二次打开：直接读取metadata.json，跳过整本重新解析
        if (extractionDir.exists()) {
            Book cachedBook = loadMetadataFromCache(extractionDir);
            if (cachedBook != null) {
                Log.i(TAG, "使用缓存的元数据，跳过TXT解析: " + cachedBook.getTitle() +
                      ", 章节数: " + cachedBook.getChapters().size());
                return cachedBook;
            }
            Log.w(TAG, "TXT缓存无效，删除后重新解析: " + extractionDir.getAbsolutePath());
            deleteRecursively(extractionDir);
        }

        try {
            extractionDir.mkdirs();

            // 1. 编码探测（readest: detectEncoding）
            Charset charset = detectCharset(sourceFile);
            // 2. 读取文件头部，用于识别语言和作者
            String headerText = readHeaderText(sourceFile, charset);
            String language = detectLanguage(headerText);
            // 3. 书名/作者：文件名优先，其次文件头“作者：X”
            String[] filenameMeta = extractFilenameMetadata(filePath);
            String title = filenameMeta[0];
            String author = extractHeaderAuthor(headerText);
            if (author == null || author.isEmpty()) {
                author = filenameMeta[1];
            }

            // 4. 先扫描一遍确定标题识别级别（第一级 / 第二级 / 无标题）
            int headingMode = detectHeadingMode(sourceFile, charset, language);
            Log.i(TAG, "TXT解析参数: encoding=" + charset.name() +
                  ", language=" + language + ", headingMode=" + headingMode +
                  ", title=" + title + ", author=" + author);

            // 5. 切分章节并逐章落盘HTML
            List<Chapter> chapters;
            if (headingMode == MODE_HEADINGS_TIER1 || headingMode == MODE_HEADINGS_TIER2) {
                chapters = parseByHeadings(sourceFile, charset, language, headingMode, extractionDir);
            } else {
                chapters = parseByFallback(sourceFile, charset, extractionDir);
            }

            // 空文件兜底：保证阅读页有可显示的章节
            if (chapters.isEmpty()) {
                Log.w(TAG, "未解析到任何章节，创建空章节");
                List<String> empty = new ArrayList<>();
                chapters.add(writeChapter(extractionDir, 0, "全文", 0, empty));
            }

            Book book = new Book();
            book.setBookId(bookId);
            book.setTitle(title);
            book.setAuthor(author == null || author.isEmpty() ? "Unknown Author" : author);
            book.setLanguage(language);
            book.setFileName(sourceFile.getName());
            book.setChapters(chapters);
            book.setExtractionPath(extractionDir.getAbsolutePath());

            saveMetadataToCache(book, extractionDir);

            Log.i(TAG, "TXT解析成功: " + book.getTitle() + ", 章节数: " + chapters.size());
            return book;

        } catch (Exception e) {
            Log.e(TAG, "解析TXT文件失败: " + filePath, e);
            // 解析失败时清理半成品缓存，避免下次打开读取到不完整的目录
            deleteRecursively(extractionDir);
            return null;
        }
    }

    // ==================== 章节解析 ====================

    /**
     * 按标题切分章节（流式处理，一次只在内存中保留一个章节的正文）
     */
    private List<Chapter> parseByHeadings(File file, Charset charset, String language,
                                          int headingMode, File dir) throws IOException {
        List<Chapter> chapters = new ArrayList<>();
        List<String> buffer = new ArrayList<>();
        String currentTitle = null;
        int currentDepth = 0;
        boolean volumeOpen = false;
        int chapterIndex = 0;

        BufferedReader reader = null;
        try {
            reader = new BufferedReader(new InputStreamReader(new FileInputStream(file), charset));
            String line;
            while ((line = reader.readLine()) != null) {
                String trimmed = trimWhitespace(stripBom(line));
                HeadingMatch match = matchHeading(trimmed, language, headingMode);

                if (match != null) {
                    // 遇到新标题：先把上一章（或第一段标题前的正文）落盘
                    if (currentTitle != null || !buffer.isEmpty()) {
                        String chapterTitle = currentTitle != null ? currentTitle : deriveInitialTitle(buffer);
                        int depth = currentTitle != null ? currentDepth : 0;
                        chapters.add(writeChapter(dir, chapterIndex, chapterTitle, depth, buffer));
                        chapterIndex++;
                        buffer.clear();
                    }
                    currentTitle = match.title;
                    if (match.isVolume) {
                        // 卷标题为一级目录，卷内后续章节为二级目录
                        currentDepth = 0;
                        volumeOpen = true;
                    } else {
                        currentDepth = volumeOpen ? 1 : 0;
                    }
                } else if (!trimmed.isEmpty() && !DIVIDER_LINE.matcher(trimmed).matches()) {
                    buffer.add(trimmed);
                }
            }
        } finally {
            if (reader != null) {
                try {
                    reader.close();
                } catch (IOException e) {
                    Log.e(TAG, "关闭TXT读取流失败: " + e.getMessage());
                }
            }
        }

        // 落盘最后一章
        if (currentTitle != null || !buffer.isEmpty()) {
            String chapterTitle = currentTitle != null ? currentTitle : deriveInitialTitle(buffer);
            int depth = currentTitle != null ? currentDepth : 0;
            chapters.add(writeChapter(dir, chapterIndex, chapterTitle, depth, buffer));
        }

        Log.i(TAG, "按标题切分完成: 章节数=" + chapters.size());
        return chapters;
    }

    /**
     * 没有任何标题时的兜底：每 100 个段落切分为一章（readest: fallbackParagraphsPerChapter）
     */
    private List<Chapter> parseByFallback(File file, Charset charset, File dir) throws IOException {
        List<Chapter> chapters = new ArrayList<>();
        List<String> buffer = new ArrayList<>();
        int chapterIndex = 0;

        BufferedReader reader = null;
        try {
            reader = new BufferedReader(new InputStreamReader(new FileInputStream(file), charset));
            String line;
            while ((line = reader.readLine()) != null) {
                String trimmed = trimWhitespace(stripBom(line));
                if (trimmed.isEmpty() || DIVIDER_LINE.matcher(trimmed).matches()) {
                    continue;
                }
                buffer.add(trimmed);
                if (buffer.size() >= FALLBACK_PARAGRAPHS_PER_CHAPTER) {
                    chapters.add(writeChapter(dir, chapterIndex, String.valueOf(chapterIndex + 1), 0, buffer));
                    chapterIndex++;
                    buffer.clear();
                }
            }
        } finally {
            if (reader != null) {
                try {
                    reader.close();
                } catch (IOException e) {
                    Log.e(TAG, "关闭TXT读取流失败: " + e.getMessage());
                }
            }
        }

        if (!buffer.isEmpty()) {
            chapters.add(writeChapter(dir, chapterIndex, String.valueOf(chapterIndex + 1), 0, buffer));
        }

        Log.i(TAG, "无标题兜底切分完成: 章节数=" + chapters.size());
        return chapters;
    }

    /**
     * 扫描整本文件确定标题识别级别：
     * 只要出现第一级标题就用第一级；否则出现第二级标题就用第二级；都没有则按段落兜底。
     */
    private int detectHeadingMode(File file, Charset charset, String language) throws IOException {
        Pattern tier1 = "zh".equals(language) ? ZH_TIER1 : EN_TIER1;
        Pattern tier2 = "zh".equals(language) ? ZH_TIER2 : EN_TIER2;

        int result = MODE_FALLBACK;
        BufferedReader reader = null;
        try {
            reader = new BufferedReader(new InputStreamReader(new FileInputStream(file), charset));
            String line;
            while ((line = reader.readLine()) != null) {
                String trimmed = trimWhitespace(stripBom(line));
                if (trimmed.isEmpty()) {
                    continue;
                }
                if (tier1.matcher(trimmed).matches()) {
                    return MODE_HEADINGS_TIER1;
                }
                if (result == MODE_FALLBACK && tier2.matcher(trimmed).matches()) {
                    result = MODE_HEADINGS_TIER2;
                }
            }
        } finally {
            if (reader != null) {
                try {
                    reader.close();
                } catch (IOException e) {
                    Log.e(TAG, "关闭TXT扫描流失败: " + e.getMessage());
                }
            }
        }
        return result;
    }

    /**
     * 匹配一行标题
     */
    private HeadingMatch matchHeading(String line, String language, int headingMode) {
        if (line == null || line.isEmpty()) {
            return null;
        }
        Pattern pattern;
        if (headingMode == MODE_HEADINGS_TIER1) {
            pattern = "zh".equals(language) ? ZH_TIER1 : EN_TIER1;
        } else {
            pattern = "zh".equals(language) ? ZH_TIER2 : EN_TIER2;
        }
        Matcher matcher = pattern.matcher(line);
        if (!matcher.matches()) {
            return null;
        }
        boolean isVolume = "zh".equals(language)
            ? ZH_VOLUME.matcher(line).find()
            : EN_VOLUME.matcher(line).find();
        return new HeadingMatch(line, isVolume);
    }

    /**
     * 第一个标题之前的正文，用首行内容作为目录条目名称（与 readest 一致）
     */
    private String deriveInitialTitle(List<String> lines) {
        String firstLine = "";
        for (String line : lines) {
            if (!line.isEmpty()) {
                firstLine = line;
                break;
            }
        }
        if (firstLine.isEmpty()) {
            return "开篇";
        }
        if (firstLine.length() > 16) {
            // 长行取首个词，避免目录条目过长
            String[] parts = firstLine.split("[\\s\\p{P}]");
            for (String part : parts) {
                if (!part.isEmpty()) {
                    firstLine = part;
                    break;
                }
            }
            if (firstLine.length() > 16) {
                firstLine = firstLine.substring(0, 16);
            }
        }
        return firstLine;
    }

    /**
     * 生成章节HTML并写入磁盘，返回章节元数据（正文不常驻内存，显示时按需读取）
     */
    private Chapter writeChapter(File dir, int index, String title, int depth,
                                 List<String> lines) throws IOException {
        Chapter chapter = new Chapter();
        chapter.setChapterId("txt_chapter_" + index);
        chapter.setChapterIndex(index);
        chapter.setTitle(title);
        chapter.setDepth(depth);

        String fileName = "chapter_" + index + ".html";
        chapter.setHtmlFilePath(fileName);
        chapter.setBaseUrl("file://" + dir.getAbsolutePath() + "/");

        String html = buildChapterHtml(title, lines);
        writeTextFile(new File(dir, fileName), html);

        return chapter;
    }

    /**
     * 章节HTML：每行正文一个<p>，与 readest 的 formatSegment 一致
     */
    private String buildChapterHtml(String title, List<String> lines) {
        StringBuilder sb = new StringBuilder(1024);
        sb.append("<html><head>")
          .append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">")
          .append("</head><body>");
        if (title != null && !title.isEmpty()) {
            sb.append("<h2>").append(escapeXml(title)).append("</h2>");
        }
        for (String line : lines) {
            sb.append("<p>").append(escapeXml(line)).append("</p>");
        }
        sb.append("</body></html>");
        return sb.toString();
    }

    private String escapeXml(String text) {
        if (text == null || text.isEmpty()) {
            return "";
        }
        return text.replace("&", "&amp;")
                   .replace("<", "&lt;")
                   .replace(">", "&gt;")
                   .replace("\"", "&quot;")
                   .replace("'", "&apos;");
    }

    private void writeTextFile(File file, String content) throws IOException {
        FileOutputStream fos = null;
        OutputStreamWriter writer = null;
        try {
            fos = new FileOutputStream(file);
            writer = new OutputStreamWriter(fos, "UTF-8");
            writer.write(content);
            writer.flush();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    Log.e(TAG, "关闭章节输出流失败: " + e.getMessage());
                }
            }
            if (fos != null) {
                try {
                    fos.close();
                } catch (IOException e) {
                    Log.e(TAG, "关闭章节文件流失败: " + e.getMessage());
                }
            }
        }
    }

    // ==================== 编码探测（移植自 readest detectEncoding） ====================

    /**
     * 探测文件编码：
     * 1. BOM 优先（UTF-16LE / UTF-16BE / UTF-8 BOM）
     * 2. 严格 UTF-8 校验（头部 + 中部采样，容忍采样边界截断）
     * 3. 高位字节比例判断 GBK / GB18030，并区分 Shift-JIS
     */
    private Charset detectCharset(File file) throws IOException {
        long fileSize = file.length();
        if (fileSize <= 0) {
            return Charset.forName("UTF-8");
        }

        int headLength = (int) Math.min(fileSize, ENCODING_HEAD_SAMPLE_BYTES);
        byte[] head = readBytes(file, 0, headLength);

        // 1. BOM
        if (head.length >= 2 && (head[0] & 0xFF) == 0xFF && (head[1] & 0xFF) == 0xFE) {
            return resolveCharset("utf-16le");
        }
        if (head.length >= 2 && (head[0] & 0xFF) == 0xFE && (head[1] & 0xFF) == 0xFF) {
            return resolveCharset("utf-16be");
        }
        if (head.length >= 3 && (head[0] & 0xFF) == 0xEF &&
            (head[1] & 0xFF) == 0xBB && (head[2] & 0xFF) == 0xBF) {
            return resolveCharset("utf-8");
        }

        // 2. 严格 UTF-8 校验（含中部采样，降低大文件前段是UTF-8后段乱码的误判）
        if (isStrictUtf8(head)) {
            boolean midValid = true;
            if (fileSize > (long) headLength * 2) {
                int midLength = (int) Math.min(fileSize - headLength, ENCODING_MID_SAMPLE_BYTES);
                long midStart = (fileSize - midLength) / 2;
                byte[] mid = readBytes(file, midStart, midLength);
                midValid = isStrictUtf8(mid);
            }
            if (midValid) {
                return resolveCharset("utf-8");
            }
        }

        // 3. 按高位字节比例推断东亚编码
        int sampleLength = Math.min(1024, head.length);
        int highByteCount = 0;
        for (int i = 0; i < sampleLength; i++) {
            if ((head[i] & 0xFF) >= 0x80) {
                highByteCount++;
            }
        }
        double highByteRatio = sampleLength > 0 ? (double) highByteCount / sampleLength : 0;
        if (highByteRatio > 0.3) {
            return resolveCharset("gbk");
        }
        if (highByteRatio > 0.1) {
            if (looksLikeShiftJis(head, sampleLength)) {
                return resolveCharset("shift_jis");
            }
            return resolveCharset("gb18030");
        }

        return resolveCharset("utf-8");
    }

    /**
     * 严格 UTF-8 校验。采样可能从多字节字符中间开始/结束，
     * 因此失败时尝试去掉首尾各 0~3 个字节后重新校验。
     */
    private boolean isStrictUtf8(byte[] sample) {
        if (sample == null || sample.length == 0) {
            return true;
        }
        if (tryDecodeUtf8(sample, 0, sample.length)) {
            return true;
        }
        int maxOffset = Math.min(3, sample.length - 1);
        for (int startOffset = 0; startOffset <= maxOffset; startOffset++) {
            for (int endOffset = 0; endOffset <= maxOffset; endOffset++) {
                if (startOffset == 0 && endOffset == 0) {
                    continue;
                }
                int length = sample.length - startOffset - endOffset;
                if (length < 16) {
                    continue;
                }
                if (tryDecodeUtf8(sample, startOffset, length)) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean tryDecodeUtf8(byte[] buffer, int offset, int length) {
        CharsetDecoder decoder = Charset.forName("UTF-8").newDecoder()
            .onMalformedInput(CodingErrorAction.REPORT)
            .onUnmappableCharacter(CodingErrorAction.REPORT);
        try {
            decoder.decode(ByteBuffer.wrap(buffer, offset, length));
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    private boolean looksLikeShiftJis(byte[] sample, int length) {
        for (int i = 0; i < length - 1; i++) {
            int b1 = sample[i] & 0xFF;
            int b2 = sample[i + 1] & 0xFF;
            boolean lead = (b1 >= 0x81 && b1 <= 0x9F) || (b1 >= 0xE0 && b1 <= 0xFC);
            boolean trail = (b2 >= 0x40 && b2 <= 0x7E) || (b2 >= 0x80 && b2 <= 0xFC);
            if (lead && trail) {
                return true;
            }
        }
        return false;
    }

    /**
     * 按常见别名链解析可用字符集（readest resolveSupportedEncoding）
     */
    private Charset resolveCharset(String detected) {
        String normalized = detected == null ? "utf-8" : detected.toLowerCase();
        List<String> candidates = new ArrayList<>();
        candidates.add(normalized);
        if ("gbk".equals(normalized)) {
            candidates.add("gb18030");
            candidates.add("gb2312");
        } else if ("gb18030".equals(normalized)) {
            candidates.add("gbk");
            candidates.add("gb2312");
        } else if ("shift_jis".equals(normalized)) {
            candidates.add("shift-jis");
            candidates.add("sjis");
        } else if ("utf-16".equals(normalized)) {
            candidates.add("utf-16le");
            candidates.add("utf-16be");
        }
        candidates.add("utf-8");

        for (String candidate : candidates) {
            try {
                if (Charset.isSupported(candidate)) {
                    return Charset.forName(candidate);
                }
            } catch (Exception e) {
                // 非法字符集名称，继续尝试下一个
            }
        }
        return Charset.forName("UTF-8");
    }

    /**
     * 读取文件头部文本（前 128KB → 前 1024 字符），用于语言/作者识别
     */
    private String readHeaderText(File file, Charset charset) throws IOException {
        int length = (int) Math.min(file.length(), HEADER_TEXT_MAX_BYTES);
        byte[] bytes = readBytes(file, 0, length);
        String text = new String(bytes, charset);
        if (text.length() > HEADER_TEXT_MAX_CHARS) {
            text = text.substring(0, HEADER_TEXT_MAX_CHARS);
        }
        return text + "\n";
    }

    private byte[] readBytes(File file, long start, int length) throws IOException {
        java.io.RandomAccessFile raf = null;
        try {
            raf = new java.io.RandomAccessFile(file, "r");
            raf.seek(start);
            byte[] buffer = new byte[length];
            int total = 0;
            while (total < length) {
                int read = raf.read(buffer, total, length - total);
                if (read <= 0) {
                    break;
                }
                total += read;
            }
            if (total < length) {
                byte[] shorter = new byte[total];
                System.arraycopy(buffer, 0, shorter, 0, total);
                return shorter;
            }
            return buffer;
        } finally {
            if (raf != null) {
                try {
                    raf.close();
                } catch (IOException e) {
                    Log.e(TAG, "关闭随机读取流失败: " + e.getMessage());
                }
            }
        }
    }

    // ==================== 语言 / 书名 / 作者 ====================

    /**
     * 语言识别：头部出现汉字即按中文处理，否则按英文（对应 readest detectLanguage + inferLangFromScript）
     */
    private String detectLanguage(String headerText) {
        if (headerText == null) {
            return "en";
        }
        for (int i = 0; i < headerText.length(); i++) {
            char c = headerText.charAt(i);
            if ((c >= 0x4E00 && c <= 0x9FFF) || (c >= 0x3400 && c <= 0x4DBF)) {
                return "zh";
            }
        }
        return "en";
    }

    /**
     * 从文件名提取书名与作者（readest extractTxtFilenameMetadata）
     * 支持：《书名》作者：张三.txt、《书名》[张三].txt、《书名》张三.txt
     */
    private String[] extractFilenameMetadata(String filePath) {
        String base = new File(filePath).getName();
        int dotIndex = base.lastIndexOf('.');
        if (dotIndex > 0) {
            base = base.substring(0, dotIndex);
        }
        if (base.isEmpty()) {
            base = "未命名";
        }

        Matcher bookMark = TITLE_BOOK_MARK.matcher(base);
        if (bookMark.find()) {
            String title = bookMark.group(1) != null ? bookMark.group(1).trim() : base;
            String rest = bookMark.group(2) != null ? bookMark.group(2).trim() : "";
            String author = parseAuthorFragment(rest);
            return new String[]{title.isEmpty() ? base : title, author};
        }

        // 无《》时保留完整文件名作为书名，只提取“作者：X”形式，避免把【书名】误当作者
        return new String[]{base, parseLabeledAuthor(base)};
    }

    /**
     * 从文件头部读取作者（readest extractAuthorAndLanguage）
     */
    private String extractHeaderAuthor(String headerText) {
        if (headerText == null || headerText.isEmpty()) {
            return "";
        }
        String[] lines = headerText.split("\n");
        for (String line : lines) {
            Matcher matcher = AUTHOR_LABELED.matcher(line.trim());
            if (matcher.find()) {
                String name = stripWrappingPunctuation(matcher.group(1));
                if (isPlausibleAuthorName(name)) {
                    return name;
                }
            }
        }
        for (String line : lines) {
            Matcher matcher = AUTHOR_ZHU.matcher(line.trim());
            if (matcher.find()) {
                String name = stripWrappingPunctuation(matcher.group(1));
                if (isPlausibleAuthorName(name)) {
                    return name;
                }
            }
        }
        return "";
    }

    private String parseLabeledAuthor(String text) {
        if (text == null) {
            return "";
        }
        Matcher matcher = AUTHOR_LABELED.matcher(text);
        if (matcher.find()) {
            String name = stripWrappingPunctuation(matcher.group(1));
            if (isPlausibleAuthorName(name)) {
                return name;
            }
        }
        return "";
    }

    private String parseAuthorFragment(String text) {
        if (text == null || text.isEmpty()) {
            return "";
        }
        String labeled = parseLabeledAuthor(text);
        if (!labeled.isEmpty()) {
            return labeled;
        }
        Matcher bracketed = AUTHOR_BRACKETED.matcher(text);
        if (bracketed.find()) {
            return stripWrappingPunctuation(bracketed.group(1));
        }
        return stripWrappingPunctuation(text);
    }

    /**
     * 去掉首尾标点/符号，避免“作者：『张三』”之类的书名号残留
     */
    private String stripWrappingPunctuation(String text) {
        if (text == null) {
            return "";
        }
        return trimWhitespace(text).replaceAll("^[\\p{P}\\p{S}\\s　]+|[\\p{P}\\p{S}\\s　]+$", "").trim();
    }

    /**
     * 过滤“作者：2024/08/01发表于：…”这类元数据串
     */
    private boolean isPlausibleAuthorName(String name) {
        if (name == null || name.isEmpty() || name.length() > 20) {
            return false;
        }
        if (name.indexOf(':') >= 0 || name.indexOf('：') >= 0) {
            return false;
        }
        return !FOUR_DIGITS.matcher(name).find();
    }

    // ==================== 文本工具 ====================

    /**
     * 去掉行首可能存在的 BOM（UTF-16/带BOM的UTF-8首行会出现）
     */
    private String stripBom(String line) {
        if (line == null) {
            return "";
        }
        if (!line.isEmpty() && line.charAt(0) == '\uFEFF') {
            return line.substring(1);
        }
        return line;
    }

    /**
     * 去首尾空白（包含全角空格和不可见空格，Java trim() 不处理这些）
     */
    private String trimWhitespace(String line) {
        if (line == null) {
            return "";
        }
        int start = 0;
        int end = line.length();
        while (start < end) {
            char c = line.charAt(start);
            if (c <= ' ' || c == '\u3000' || c == '\u00A0' || c == '\uFEFF') {
                start++;
            } else {
                break;
            }
        }
        while (end > start) {
            char c = line.charAt(end - 1);
            if (c <= ' ' || c == '\u3000' || c == '\u00A0' || c == '\uFEFF') {
                end--;
            } else {
                break;
            }
        }
        return line.substring(start, end);
    }

    // ==================== 元数据缓存（与EpubParser/MobiParser一致） ====================

    /**
     * 从缓存加载元数据，章节正文不加载，显示时按需从磁盘读取
     */
    private Book loadMetadataFromCache(File extractionDir) {
        File metadataFile = new File(extractionDir, "metadata.json");
        if (!metadataFile.exists()) {
            return null;
        }

        FileInputStream fis = null;
        BufferedReader reader = null;
        try {
            fis = new FileInputStream(metadataFile);
            reader = new BufferedReader(new InputStreamReader(fis, "UTF-8"));
            StringBuilder sb = new StringBuilder();
            String line;
            while ((line = reader.readLine()) != null) {
                sb.append(line);
            }

            JSONObject json = new JSONObject(sb.toString());
            Book book = new Book();
            book.setBookId(json.optString("bookId"));
            book.setTitle(json.optString("title"));
            book.setAuthor(json.optString("author"));
            book.setLanguage(json.optString("language"));
            book.setFileName(json.optString("fileName"));
            book.setExtractionPath(json.optString("extractionPath"));

            String baseUrl = "file://" + extractionDir.getAbsolutePath() + "/";
            List<Chapter> chapters = new ArrayList<>();
            JSONArray chaptersArray = json.optJSONArray("chapters");
            if (chaptersArray != null) {
                for (int i = 0; i < chaptersArray.length(); i++) {
                    JSONObject chapterObj = chaptersArray.getJSONObject(i);
                    Chapter chapter = new Chapter();
                    chapter.setChapterId(chapterObj.optString("chapterId"));
                    chapter.setChapterIndex(chapterObj.optInt("chapterIndex"));
                    chapter.setTitle(chapterObj.optString("title"));
                    chapter.setHtmlFilePath(chapterObj.optString("htmlFilePath"));
                    chapter.setDepth(chapterObj.optInt("depth"));
                    // 统一使用当前缓存目录，避免缓存目录迁移后路径失效
                    chapter.setBaseUrl(baseUrl);
                    chapters.add(chapter);
                }
            }
            if (chapters.isEmpty()) {
                return null;
            }
            book.setChapters(chapters);

            Log.i(TAG, "TXT元数据缓存加载成功: " + book.getTitle() + ", 章节数: " + chapters.size());
            return book;

        } catch (Exception e) {
            Log.e(TAG, "加载TXT元数据缓存失败", e);
            return null;
        } finally {
            if (reader != null) {
                try {
                    reader.close();
                } catch (IOException e) {
                    Log.e(TAG, "关闭缓存读取流失败: " + e.getMessage());
                }
            }
            if (fis != null) {
                try {
                    fis.close();
                } catch (IOException e) {
                    Log.e(TAG, "关闭缓存文件流失败: " + e.getMessage());
                }
            }
        }
    }

    /**
     * 保存元数据（章节正文已在独立HTML文件中，这里不重复保存，避免缓存过大）
     */
    private void saveMetadataToCache(Book book, File extractionDir) {
        try {
            File metadataFile = new File(extractionDir, "metadata.json");

            JSONObject json = new JSONObject();
            json.put("bookId", book.getBookId());
            json.put("title", book.getTitle());
            json.put("author", book.getAuthor());
            json.put("language", book.getLanguage());
            json.put("fileName", book.getFileName());
            json.put("extractionPath", book.getExtractionPath());

            JSONArray chaptersArray = new JSONArray();
            if (book.getChapters() != null) {
                for (Chapter chapter : book.getChapters()) {
                    JSONObject chapterObj = new JSONObject();
                    chapterObj.put("chapterId", chapter.getChapterId());
                    chapterObj.put("chapterIndex", chapter.getChapterIndex());
                    chapterObj.put("title", chapter.getTitle());
                    chapterObj.put("htmlFilePath", chapter.getHtmlFilePath());
                    chapterObj.put("depth", chapter.getDepth());
                    chaptersArray.put(chapterObj);
                }
            }
            json.put("chapters", chaptersArray);

            writeTextFile(metadataFile, json.toString());

            Log.i(TAG, "TXT元数据缓存保存成功: " + metadataFile.getAbsolutePath() +
                  ", 大小: " + metadataFile.length() + " bytes");

        } catch (Exception e) {
            Log.e(TAG, "保存TXT元数据缓存失败", e);
        }
    }

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
     * 标题匹配结果
     */
    private static class HeadingMatch {
        final String title;
        final boolean isVolume;

        HeadingMatch(String title, boolean isVolume) {
            this.title = title;
            this.isVolume = isVolume;
        }
    }
}
