.class public Lcom/bilibili/tv/ebook/parser/TxtParser;
.super Ljava/lang/Object;
.source "TxtParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ebook/parser/TxtParser$SegmentReader;,
        Lcom/bilibili/tv/ebook/parser/TxtParser$ChapterDraft;
    }
.end annotation


# static fields
.field private static final AUTHOR_BRACKETED:Ljava/util/regex/Pattern;

.field private static final AUTHOR_LABELED:Ljava/util/regex/Pattern;

.field private static final AUTHOR_ZHU:Ljava/util/regex/Pattern;

.field private static final CJK_NUMBER_CHARS:Ljava/lang/String; = "\u96f6\u3007\u4e00\u4e8c\u4e24\u5169\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341\u58f9\u8d30\u8cb3\u53c1\u53c4\u53c3\u8086\u4f0d\u9646\u9678\u67d2\u634c\u7396\u62fe0-9\u767e\u5343\u4e07\u842c\u4f70\u4edf"

.field private static final CJK_NUMBER_DIGITS:Ljava/lang/String; = "\u96f6\u3007\u4e00\u4e8c\u4e24\u5169\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341\u58f9\u8d30\u8cb3\u53c1\u53c4\u53c3\u8086\u4f0d\u9646\u9678\u67d2\u634c\u7396\u62fe0-9"

.field private static final CJK_NUMBER_UNITS:Ljava/lang/String; = "\u767e\u5343\u4e07\u842c\u4f70\u4edf"

.field private static final DIVIDER_LINE:Ljava/util/regex/Pattern;

.field private static final ENCODING_HEAD_SAMPLE_BYTES:I = 0x10000

.field private static final ENCODING_MID_SAMPLE_BYTES:I = 0x2000

.field private static final EN_NORMAL_HEADING:Ljava/lang/String; = "(?:Chapter|Part|Section|Book|Volume|Act)\\s*(?:\\d+|(?:[IVXLCDM]{2,}|V|X|L|C|D|M)\\b|\\.\\d{1,4})(?:[:.\\-\u2013\u2014]?\\s*[^\\n]{0,50})?"

.field private static final EN_PREFACE_HEADING:Ljava/lang/String; = "(?:Prologue|Epilogue|Introduction|Foreword|Preface|Afterword)(?:[:.\\-\u2013\u2014]?\\s*[^\\n]{0,50})?"

.field private static final EN_TIER1:Ljava/util/regex/Pattern;

.field private static final EN_TIER2:Ljava/util/regex/Pattern;

.field private static final EN_VOLUME:Ljava/util/regex/Pattern;

.field private static final FALLBACK_PARAGRAPHS_PER_CHAPTER:I = 0x64

.field private static final FOUR_DIGITS:Ljava/util/regex/Pattern;

.field private static final HEADER_TEXT_MAX_BYTES:I = 0x20000

.field private static final HEADER_TEXT_MAX_CHARS:I = 0x400

.field private static final MAX_HEADING_PART_LENGTH:I = 0x186a0

.field private static final RETRY_GAP_LINES_1:I = 0x7

.field private static final RETRY_GAP_LINES_2:I = 0x6

.field private static final SEGMENT_DASH_DIVIDER:Ljava/util/regex/Pattern;

.field private static final SEGMENT_GAP_LINES:I = 0x8

.field private static final TAG:Ljava/lang/String; = "TxtParser"

.field private static final TITLE_BOOK_MARK:Ljava/util/regex/Pattern;

.field private static final ZH_NUMBERED_HEADING:Ljava/lang/String; = "\u7b2c[ \u3000\u96f6\u3007\u4e00\u4e8c\u4e24\u5169\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341\u58f9\u8d30\u8cb3\u53c1\u53c4\u53c3\u8086\u4f0d\u9646\u9678\u67d2\u634c\u7396\u62fe0-9][ \u3000\u96f6\u3007\u4e00\u4e8c\u4e24\u5169\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341\u58f9\u8d30\u8cb3\u53c1\u53c4\u53c3\u8086\u4f0d\u9646\u9678\u67d2\u634c\u7396\u62fe0-9\u767e\u5343\u4e07\u842c\u4f70\u4edf]*(?:[\u7ae0\u8282\u7bc0\u56de\u8bb2\u8b1b\u7bc7\u8bdd\u8a71](?:[\uff1a:\u3001 \u3000\\(\\)0-9]*[^\\n-]{0,36})?|[\u5377\u672c\u518c\u518a\u90e8\u5c01](?:[\uff1a:\u3001 \u3000\\(\\)][\uff1a:\u3001 \u3000\\(\\)0-9]*[^\\n-]{0,36})?)"

.field private static final ZH_PREFACE_HEADING:Ljava/lang/String; = "(?:\u6954\u5b50|\u524d\u8a00|\u7b80\u4ecb|\u5f15\u8a00|\u5e8f\u8a00|\u5e8f\u7ae0|\u603b\u8bba|\u6982\u8bba|\u540e\u8bb0|\u756a\u5916\u7bc7|\u756a\u5916|\u5916\u4f20)(?:[\uff1a: \u3000][^\\n-]{0,36})?"

.field private static final ZH_TIER1:Ljava/util/regex/Pattern;

.field private static final ZH_TIER2:Ljava/util/regex/Pattern;

.field private static final ZH_VOLUME:Ljava/util/regex/Pattern;


# instance fields
.field private cacheDir:Ljava/io/File;

.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 96
    const-string v0, "^(?:\u7b2c[ \u3000\u96f6\u3007\u4e00\u4e8c\u4e24\u5169\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341\u58f9\u8d30\u8cb3\u53c1\u53c4\u53c3\u8086\u4f0d\u9646\u9678\u67d2\u634c\u7396\u62fe0-9][ \u3000\u96f6\u3007\u4e00\u4e8c\u4e24\u5169\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341\u58f9\u8d30\u8cb3\u53c1\u53c4\u53c3\u8086\u4f0d\u9646\u9678\u67d2\u634c\u7396\u62fe0-9\u767e\u5343\u4e07\u842c\u4f70\u4edf]*(?:[\u7ae0\u8282\u7bc0\u56de\u8bb2\u8b1b\u7bc7\u8bdd\u8a71](?:[\uff1a:\u3001 \u3000\\(\\)0-9]*[^\\n-]{0,36})?|[\u5377\u672c\u518c\u518a\u90e8\u5c01](?:[\uff1a:\u3001 \u3000\\(\\)][\uff1a:\u3001 \u3000\\(\\)0-9]*[^\\n-]{0,36})?)|(?:\u6954\u5b50|\u524d\u8a00|\u7b80\u4ecb|\u5f15\u8a00|\u5e8f\u8a00|\u5e8f\u7ae0|\u603b\u8bba|\u6982\u8bba|\u540e\u8bb0|\u756a\u5916\u7bc7|\u756a\u5916|\u5916\u4f20)(?:[\uff1a: \u3000][^\\n-]{0,36})?|(?:Chapter|Part|Section|Book|Volume|Act)\\s*(?:\\d+|(?:[IVXLCDM]{2,}|V|X|L|C|D|M)\\b|\\.\\d{1,4})(?:[:.\\-\u2013\u2014]?\\s*[^\\n]{0,50})?)\\s*$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bilibili/tv/ebook/parser/TxtParser;->ZH_TIER1:Ljava/util/regex/Pattern;

    .line 101
    const-string v0, "^(?:[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341][\u96f6\u3007\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341\u767e\u5343\u4e07]?[\uff1a:\u3001 \u3000][^\\n-]{0,36}|[0-9]+[^\\n]{0,16})\\s*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bilibili/tv/ebook/parser/TxtParser;->ZH_TIER2:Ljava/util/regex/Pattern;

    .line 106
    const-string v0, "^(?:(?:Chapter|Part|Section|Book|Volume|Act)\\s*(?:\\d+|(?:[IVXLCDM]{2,}|V|X|L|C|D|M)\\b|\\.\\d{1,4})(?:[:.\\-\u2013\u2014]?\\s*[^\\n]{0,50})?|(?:Prologue|Epilogue|Introduction|Foreword|Preface|Afterword)(?:[:.\\-\u2013\u2014]?\\s*[^\\n]{0,50})?)\\s*$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bilibili/tv/ebook/parser/TxtParser;->EN_TIER1:Ljava/util/regex/Pattern;

    .line 111
    const-string v0, "^(?:\\d+\\.\\d+(?:\\.\\d+)* ?[A-Z][^\\n]{0,80}|\\d+[A-Z][^\\n]{0,80})\\s*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bilibili/tv/ebook/parser/TxtParser;->EN_TIER2:Ljava/util/regex/Pattern;

    .line 115
    const-string v0, "\u7b2c[ \u3000]*[\u96f6\u3007\u4e00\u4e8c\u4e24\u5169\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341\u58f9\u8d30\u8cb3\u53c1\u53c4\u53c3\u8086\u4f0d\u9646\u9678\u67d2\u634c\u7396\u62fe0-9\u767e\u5343\u4e07\u842c\u4f70\u4edf][ \u3000\u96f6\u3007\u4e00\u4e8c\u4e24\u5169\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341\u58f9\u8d30\u8cb3\u53c1\u53c4\u53c3\u8086\u4f0d\u9646\u9678\u67d2\u634c\u7396\u62fe0-9\u767e\u5343\u4e07\u842c\u4f70\u4edf]*(\u5377|\u672c|\u518c|\u518a|\u90e8)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bilibili/tv/ebook/parser/TxtParser;->ZH_VOLUME:Ljava/util/regex/Pattern;

    .line 119
    const-string v0, "\\b(Part|Volume|Book)\\b"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bilibili/tv/ebook/parser/TxtParser;->EN_VOLUME:Ljava/util/regex/Pattern;

    .line 124
    const-string v0, "\u300a([^\u300b]+)\u300b(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bilibili/tv/ebook/parser/TxtParser;->TITLE_BOOK_MARK:Ljava/util/regex/Pattern;

    .line 126
    const-string v0, "[\u3010\\[]?\u4f5c\u8005[\u3011\\]]?[\uff1a:\\s\u3000]+(.+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bilibili/tv/ebook/parser/TxtParser;->AUTHOR_LABELED:Ljava/util/regex/Pattern;

    .line 128
    const-string v0, "[\u3010\\[]?[\\s\u3000]*(.+)[\\s\u3000]+\u8457[\\s\u3000]*[\u3011\\]]?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bilibili/tv/ebook/parser/TxtParser;->AUTHOR_ZHU:Ljava/util/regex/Pattern;

    .line 130
    const-string v0, "[\\[\\(\uff08\u3010\uff3b]\\s*([^\\]\\)\uff09\u3011\uff3d]+?)\\s*[\\]\\)\uff09\u3011\uff3d]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bilibili/tv/ebook/parser/TxtParser;->AUTHOR_BRACKETED:Ljava/util/regex/Pattern;

    .line 133
    const-string v0, "\\d{4,}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bilibili/tv/ebook/parser/TxtParser;->FOUR_DIGITS:Ljava/util/regex/Pattern;

    .line 135
    const-string v0, "^[-_]{8,}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bilibili/tv/ebook/parser/TxtParser;->DIVIDER_LINE:Ljava/util/regex/Pattern;

    .line 137
    const-string v0, "^-{8,}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bilibili/tv/ebook/parser/TxtParser;->SEGMENT_DASH_DIVIDER:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/bilibili/tv/ebook/parser/TxtParser;->context:Landroid/content/Context;

    .line 144
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "txt_cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bilibili/tv/ebook/parser/TxtParser;->cacheDir:Ljava/io/File;

    .line 145
    iget-object v0, p0, Lcom/bilibili/tv/ebook/parser/TxtParser;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 146
    iget-object v0, p0, Lcom/bilibili/tv/ebook/parser/TxtParser;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 148
    :cond_1f
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    invoke-static {p0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->stripBom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    invoke-static {p0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->trimWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/bilibili/tv/ebook/parser/TxtParser;->SEGMENT_DASH_DIVIDER:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/bilibili/tv/ebook/parser/TxtParser;->DIVIDER_LINE:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private buildChapterHtml(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 543
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x400

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 544
    const-string v0, "<html><head>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">"

    .line 545
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</head><body>"

    .line 546
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    if-eqz p1, :cond_33

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    .line 548
    const-string v0, "<h2>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/parser/TxtParser;->escapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</h2>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    :cond_33
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 551
    const-string v3, "<p>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->escapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "</p>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 553
    :cond_57
    const-string v0, "</body></html>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private buildSegmentChapters(Ljava/util/List;Ljava/lang/String;[Z[I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "[Z[I)",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ebook/parser/TxtParser$ChapterDraft;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 293
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 294
    if-eqz p1, :cond_10

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    move-object v0, v6

    .line 341
    :goto_11
    return-object v0

    .line 298
    :cond_12
    const-string v0, "zh"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 299
    new-array v0, v1, [Ljava/util/regex/Pattern;

    sget-object v1, Lcom/bilibili/tv/ebook/parser/TxtParser;->ZH_TIER1:Ljava/util/regex/Pattern;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bilibili/tv/ebook/parser/TxtParser;->ZH_TIER2:Ljava/util/regex/Pattern;

    aput-object v1, v0, v5

    .line 302
    :goto_24
    array-length v3, v0

    move v1, v2

    :goto_26
    if-ge v1, v3, :cond_e3

    aget-object v4, v0, v1

    .line 303
    invoke-direct {p0, p1, v4}, Lcom/bilibili/tv/ebook/parser/TxtParser;->findHeadingIndexes(Ljava/util/List;Ljava/util/regex/Pattern;)Ljava/util/List;

    move-result-object v7

    .line 304
    invoke-direct {p0, p1, v7}, Lcom/bilibili/tv/ebook/parser/TxtParser;->isGoodSplit(Ljava/util/List;Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_42

    .line 302
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 300
    :cond_37
    new-array v0, v1, [Ljava/util/regex/Pattern;

    sget-object v1, Lcom/bilibili/tv/ebook/parser/TxtParser;->EN_TIER1:Ljava/util/regex/Pattern;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bilibili/tv/ebook/parser/TxtParser;->EN_TIER2:Ljava/util/regex/Pattern;

    aput-object v1, v0, v5

    goto :goto_24

    .line 309
    :cond_42
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_6d

    .line 310
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 311
    new-instance v0, Lcom/bilibili/tv/ebook/parser/TxtParser$ChapterDraft;

    invoke-direct {p0, v1}, Lcom/bilibili/tv/ebook/parser/TxtParser;->deriveInitialTitle(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v2, v1, v2}, Lcom/bilibili/tv/ebook/parser/TxtParser$ChapterDraft;-><init>(Ljava/lang/String;ILjava/util/List;Z)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6d
    move v1, v2

    .line 314
    :goto_6e
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_e0

    .line 315
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 316
    add-int/lit8 v0, v1, 0x1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_c7

    add-int/lit8 v0, v1, 0x1

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v3, v0

    .line 317
    :goto_93
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 318
    const-string v4, "zh"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cd

    .line 319
    sget-object v4, Lcom/bilibili/tv/ebook/parser/TxtParser;->ZH_VOLUME:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    .line 322
    :goto_ab
    if-eqz v4, :cond_d8

    .line 325
    aput-boolean v5, p3, v2

    move v4, v2

    .line 329
    :goto_b0
    new-instance v9, Ljava/util/ArrayList;

    add-int/lit8 v8, v8, 0x1

    invoke-interface {p1, v8, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {v9, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 330
    new-instance v3, Lcom/bilibili/tv/ebook/parser/TxtParser$ChapterDraft;

    invoke-direct {v3, v0, v4, v9, v5}, Lcom/bilibili/tv/ebook/parser/TxtParser$ChapterDraft;-><init>(Ljava/lang/String;ILjava/util/List;Z)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6e

    .line 316
    :cond_c7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v3, v0

    goto :goto_93

    .line 320
    :cond_cd
    sget-object v4, Lcom/bilibili/tv/ebook/parser/TxtParser;->EN_VOLUME:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    goto :goto_ab

    .line 327
    :cond_d8
    aget-boolean v4, p3, v2

    if-eqz v4, :cond_de

    move v4, v5

    goto :goto_b0

    :cond_de
    move v4, v2

    goto :goto_b0

    :cond_e0
    move-object v0, v6

    .line 332
    goto/16 :goto_11

    :cond_e3
    move v0, v2

    .line 336
    :goto_e4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_112

    .line 337
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v3, v0, 0x64

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 338
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 339
    new-instance v1, Lcom/bilibili/tv/ebook/parser/TxtParser$ChapterDraft;

    aget v4, p4, v2

    add-int/lit8 v5, v4, 0x1

    aput v5, p4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v2, v3, v2}, Lcom/bilibili/tv/ebook/parser/TxtParser$ChapterDraft;-><init>(Ljava/lang/String;ILjava/util/List;Z)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    add-int/lit8 v0, v0, 0x64

    goto :goto_e4

    :cond_112
    move-object v0, v6

    .line 341
    goto/16 :goto_11
.end method

.method private deleteRecursively(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 1105
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1119
    :cond_8
    :goto_8
    return-void

    .line 1108
    :cond_9
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1109
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 1110
    if-eqz v1, :cond_21

    .line 1111
    array-length v2, v1

    const/4 v0, 0x0

    :goto_17
    if-ge v0, v2, :cond_21

    aget-object v3, v1, v0

    .line 1112
    invoke-direct {p0, v3}, Lcom/bilibili/tv/ebook/parser/TxtParser;->deleteRecursively(Ljava/io/File;)V

    .line 1111
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 1116
    :cond_21
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1117
    const-string v0, "TxtParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5220\u9664\u6587\u4ef6\u5931\u8d25: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method private deriveInitialTitle(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/16 v7, 0x10

    .line 492
    const-string v1, ""

    .line 493
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 494
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 499
    :goto_1b
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 500
    const-string v0, "\u5f00\u7bc7"

    .line 515
    :cond_23
    :goto_23
    return-object v0

    .line 502
    :cond_24
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v7, :cond_23

    .line 504
    const-string v1, "[\\s\\p{P}]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 505
    array-length v5, v4

    move v2, v3

    :goto_32
    if-ge v2, v5, :cond_3d

    aget-object v1, v4, v2

    .line 506
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_48

    move-object v0, v1

    .line 511
    :cond_3d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v7, :cond_23

    .line 512
    invoke-virtual {v0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    .line 505
    :cond_48
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_32

    :cond_4c
    move-object v0, v1

    goto :goto_1b
.end method

.method private detectCharset(Ljava/io/File;)Ljava/nio/charset/Charset;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0xff

    const/16 v9, 0xfe

    const/4 v8, 0x2

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 603
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 604
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gtz v1, :cond_18

    .line 605
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 662
    :goto_17
    return-object v0

    .line 608
    :cond_18
    const-wide/32 v6, 0x10000

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v1, v6

    .line 609
    const-wide/16 v6, 0x0

    invoke-direct {p0, p1, v6, v7, v1}, Lcom/bilibili/tv/ebook/parser/TxtParser;->readBytes(Ljava/io/File;JI)[B

    move-result-object v3

    .line 612
    array-length v6, v3

    if-lt v6, v8, :cond_3c

    aget-byte v6, v3, v2

    and-int/lit16 v6, v6, 0xff

    if-ne v6, v10, :cond_3c

    aget-byte v6, v3, v0

    and-int/lit16 v6, v6, 0xff

    if-ne v6, v9, :cond_3c

    .line 613
    const-string v0, "utf-16le"

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->resolveCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_17

    .line 615
    :cond_3c
    array-length v6, v3

    if-lt v6, v8, :cond_52

    aget-byte v6, v3, v2

    and-int/lit16 v6, v6, 0xff

    if-ne v6, v9, :cond_52

    aget-byte v6, v3, v0

    and-int/lit16 v6, v6, 0xff

    if-ne v6, v10, :cond_52

    .line 616
    const-string v0, "utf-16be"

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->resolveCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_17

    .line 618
    :cond_52
    array-length v6, v3

    const/4 v7, 0x3

    if-lt v6, v7, :cond_75

    aget-byte v6, v3, v2

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0xef

    if-ne v6, v7, :cond_75

    aget-byte v6, v3, v0

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0xbb

    if-ne v6, v7, :cond_75

    aget-byte v6, v3, v8

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0xbf

    if-ne v6, v7, :cond_75

    .line 620
    const-string v0, "utf-8"

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->resolveCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_17

    .line 624
    :cond_75
    invoke-direct {p0, v3}, Lcom/bilibili/tv/ebook/parser/TxtParser;->isStrictUtf8([B)Z

    move-result v6

    if-eqz v6, :cond_a4

    .line 626
    int-to-long v6, v1

    const-wide/16 v8, 0x2

    mul-long/2addr v6, v8

    cmp-long v6, v4, v6

    if-lez v6, :cond_9a

    .line 627
    int-to-long v0, v1

    sub-long v0, v4, v0

    const-wide/16 v6, 0x2000

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 628
    int-to-long v6, v0

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    .line 629
    invoke-direct {p0, p1, v4, v5, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->readBytes(Ljava/io/File;JI)[B

    move-result-object v0

    .line 630
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->isStrictUtf8([B)Z

    move-result v0

    .line 632
    :cond_9a
    if-eqz v0, :cond_a4

    .line 633
    const-string v0, "utf-8"

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->resolveCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto/16 :goto_17

    .line 639
    :cond_a4
    invoke-direct {p0, v3}, Lcom/bilibili/tv/ebook/parser/TxtParser;->isMostlyUtf8([B)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 640
    const-string v0, "utf-8"

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->resolveCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto/16 :goto_17

    .line 644
    :cond_b2
    const/16 v0, 0x400

    array-length v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v1, v2

    move v0, v2

    .line 646
    :goto_bb
    if-ge v1, v4, :cond_ca

    .line 647
    aget-byte v2, v3, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v5, 0x80

    if-lt v2, v5, :cond_c7

    .line 648
    add-int/lit8 v0, v0, 0x1

    .line 646
    :cond_c7
    add-int/lit8 v1, v1, 0x1

    goto :goto_bb

    .line 651
    :cond_ca
    if-lez v4, :cond_e0

    int-to-double v0, v0

    int-to-double v6, v4

    div-double/2addr v0, v6

    .line 652
    :goto_cf
    const-wide v6, 0x3fd3333333333333L    # 0.3

    cmpl-double v2, v0, v6

    if-lez v2, :cond_e3

    .line 653
    const-string v0, "gbk"

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->resolveCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto/16 :goto_17

    .line 651
    :cond_e0
    const-wide/16 v0, 0x0

    goto :goto_cf

    .line 655
    :cond_e3
    const-wide v6, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v0, v6

    if-lez v0, :cond_102

    .line 656
    invoke-direct {p0, v3, v4}, Lcom/bilibili/tv/ebook/parser/TxtParser;->looksLikeShiftJis([BI)Z

    move-result v0

    if-eqz v0, :cond_fa

    .line 657
    const-string v0, "shift_jis"

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->resolveCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto/16 :goto_17

    .line 659
    :cond_fa
    const-string v0, "gb18030"

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->resolveCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto/16 :goto_17

    .line 662
    :cond_102
    const-string v0, "utf-8"

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->resolveCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto/16 :goto_17
.end method

.method private detectLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 826
    if-nez p1, :cond_5

    .line 827
    const-string v0, "en"

    .line 835
    :goto_4
    return-object v0

    .line 829
    :cond_5
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 830
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 831
    const/16 v2, 0x4e00

    if-lt v1, v2, :cond_19

    const v2, 0x9fff

    if-le v1, v2, :cond_21

    :cond_19
    const/16 v2, 0x3400

    if-lt v1, v2, :cond_24

    const/16 v2, 0x4dbf

    if-gt v1, v2, :cond_24

    .line 832
    :cond_21
    const-string v0, "zh"

    goto :goto_4

    .line 829
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 835
    :cond_27
    const-string v0, "en"

    goto :goto_4
.end method

.method private escapeXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 558
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 559
    :cond_8
    const-string v0, ""

    .line 561
    :goto_a
    return-object v0

    :cond_b
    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<"

    const-string v2, "&lt;"

    .line 562
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">"

    const-string v2, "&gt;"

    .line 563
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "&quot;"

    .line 564
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    const-string v2, "&apos;"

    .line 565
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private extractChapters(Ljava/io/File;Ljava/nio/charset/Charset;Ljava/lang/String;ILjava/io/File;Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/String;",
            "I",
            "Ljava/io/File;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ebook/model/Chapter;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 255
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 256
    new-array v3, v1, [Z

    aput-boolean v0, v3, v0

    .line 257
    new-array v4, v1, [I

    aput v1, v4, v0

    .line 258
    const/4 v0, 0x0

    .line 260
    new-instance v5, Lcom/bilibili/tv/ebook/parser/TxtParser$SegmentReader;

    invoke-direct {v5, p1, p2, p4}, Lcom/bilibili/tv/ebook/parser/TxtParser$SegmentReader;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;I)V

    .line 263
    :goto_15
    :try_start_15
    invoke-virtual {v5}, Lcom/bilibili/tv/ebook/parser/TxtParser$SegmentReader;->nextSegment()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_58

    .line 264
    invoke-direct {p0, v1, p3, v3, v4}, Lcom/bilibili/tv/ebook/parser/TxtParser;->buildSegmentChapters(Ljava/util/List;Ljava/lang/String;[Z[I)Ljava/util/List;

    move-result-object v1

    .line 265
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v1, v0

    :goto_24
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ebook/parser/TxtParser$ChapterDraft;

    .line 266
    iget-boolean v7, v0, Lcom/bilibili/tv/ebook/parser/TxtParser$ChapterDraft;->detected:Z

    if-nez v7, :cond_47

    if-eqz v1, :cond_47

    iget-boolean v7, v1, Lcom/bilibili/tv/ebook/parser/TxtParser$ChapterDraft;->detected:Z

    if-eqz v7, :cond_47

    .line 268
    iget-object v7, v1, Lcom/bilibili/tv/ebook/parser/TxtParser$ChapterDraft;->lines:Ljava/util/List;

    iget-object v0, v0, Lcom/bilibili/tv/ebook/parser/TxtParser$ChapterDraft;->lines:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_41
    .catchall {:try_start_15 .. :try_end_41} :catchall_42

    goto :goto_24

    .line 281
    :catchall_42
    move-exception v0

    invoke-virtual {v5}, Lcom/bilibili/tv/ebook/parser/TxtParser$SegmentReader;->close()V

    .line 282
    throw v0

    .line 271
    :cond_47
    if-eqz v1, :cond_54

    .line 272
    :try_start_49
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {p0, v1, p5, v7, p6}, Lcom/bilibili/tv/ebook/parser/TxtParser;->writeChapterDraft(Lcom/bilibili/tv/ebook/parser/TxtParser$ChapterDraft;Ljava/io/File;IZ)Lcom/bilibili/tv/ebook/model/Chapter;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_54
    move-object v1, v0

    .line 275
    goto :goto_24

    :cond_56
    move-object v0, v1

    .line 276
    goto :goto_15

    .line 277
    :cond_58
    if-eqz v0, :cond_65

    .line 278
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, v0, p5, v1, p6}, Lcom/bilibili/tv/ebook/parser/TxtParser;->writeChapterDraft(Lcom/bilibili/tv/ebook/parser/TxtParser$ChapterDraft;Ljava/io/File;IZ)Lcom/bilibili/tv/ebook/model/Chapter;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_65
    .catchall {:try_start_49 .. :try_end_65} :catchall_42

    .line 281
    :cond_65
    invoke-virtual {v5}, Lcom/bilibili/tv/ebook/parser/TxtParser$SegmentReader;->close()V

    .line 284
    const-string v0, "TxtParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5206\u6bb5\u5207\u5206\u5b8c\u6210: gap="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", \u7ae0\u8282\u6570="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return-object v2
.end method

.method private extractFilenameMetadata(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 843
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 844
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 845
    if-lez v1, :cond_18

    .line 846
    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 848
    :cond_18
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 849
    const-string v0, "\u672a\u547d\u540d"

    .line 852
    :cond_20
    sget-object v1, Lcom/bilibili/tv/ebook/parser/TxtParser;->TITLE_BOOK_MARK:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 853
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 854
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5a

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 855
    :goto_3a
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5c

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 856
    :goto_48
    invoke-direct {p0, v2}, Lcom/bilibili/tv/ebook/parser/TxtParser;->parseAuthorFragment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 857
    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5f

    :goto_54
    aput-object v0, v2, v6

    aput-object v3, v2, v5

    move-object v0, v2

    .line 861
    :goto_59
    return-object v0

    :cond_5a
    move-object v1, v0

    .line 854
    goto :goto_3a

    .line 855
    :cond_5c
    const-string v2, ""

    goto :goto_48

    :cond_5f
    move-object v0, v1

    .line 857
    goto :goto_54

    .line 861
    :cond_61
    new-array v1, v4, [Ljava/lang/String;

    aput-object v0, v1, v6

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->parseLabeledAuthor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    move-object v0, v1

    goto :goto_59
.end method

.method private extractHeaderAuthor(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 868
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 869
    :cond_a
    const-string v0, ""

    .line 890
    :cond_c
    :goto_c
    return-object v0

    .line 871
    :cond_d
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 872
    array-length v4, v3

    move v2, v1

    :goto_15
    if-ge v2, v4, :cond_3b

    aget-object v0, v3, v2

    .line 873
    sget-object v5, Lcom/bilibili/tv/ebook/parser/TxtParser;->AUTHOR_LABELED:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 874
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 875
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->stripWrappingPunctuation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 876
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->isPlausibleAuthorName(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 872
    :cond_37
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_15

    .line 881
    :cond_3b
    array-length v2, v3

    :goto_3c
    if-ge v1, v2, :cond_62

    aget-object v0, v3, v1

    .line 882
    sget-object v4, Lcom/bilibili/tv/ebook/parser/TxtParser;->AUTHOR_ZHU:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 883
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 884
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->stripWrappingPunctuation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 885
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->isPlausibleAuthorName(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 881
    :cond_5e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3c

    .line 890
    :cond_62
    const-string v0, ""

    goto :goto_c
.end method

.method private findHeadingIndexes(Ljava/util/List;Ljava/util/regex/Pattern;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/regex/Pattern;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 345
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 346
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_28

    .line 347
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 348
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    :cond_24
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 351
    :cond_28
    return-object v2
.end method

.method private isGoodSplit(Ljava/util/List;Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 359
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 360
    const/4 v0, 0x0

    .line 383
    :goto_7
    return v0

    .line 363
    :cond_8
    const-wide/16 v6, 0x0

    .line 364
    const/4 v4, 0x0

    .line 365
    const/4 v3, 0x0

    .line 366
    const/4 v2, 0x0

    .line 367
    const/4 v0, 0x0

    move v1, v0

    :goto_f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4b

    .line 368
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2e

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_2e

    .line 369
    const/4 v3, 0x0

    .line 370
    add-int/lit8 v2, v2, 0x1

    .line 367
    :goto_2a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    .line 372
    :cond_2e
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v5, v3, v0

    .line 373
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v8, v0

    add-long/2addr v6, v8

    .line 374
    if-le v5, v4, :cond_63

    move v3, v5

    move v4, v5

    .line 375
    goto :goto_2a

    .line 380
    :cond_4b
    const v0, 0x186a0

    if-le v4, v0, :cond_52

    .line 381
    const/4 v0, 0x0

    goto :goto_7

    .line 383
    :cond_52
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_5f

    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-lez v0, :cond_61

    :cond_5f
    const/4 v0, 0x1

    goto :goto_7

    :cond_61
    const/4 v0, 0x0

    goto :goto_7

    :cond_63
    move v3, v5

    goto :goto_2a
.end method

.method private isMostlyUtf8([B)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 712
    if-eqz p1, :cond_6

    array-length v0, p1

    if-nez v0, :cond_7

    .line 726
    :cond_6
    :goto_6
    return v1

    .line 715
    :cond_7
    array-length v0, p1

    const/16 v2, 0x2710

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 716
    new-instance v3, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v3, p1, v1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 717
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    move v2, v1

    .line 721
    :goto_21
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_35

    .line 722
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xfffd

    if-ne v4, v5, :cond_32

    .line 723
    add-int/lit8 v2, v2, 0x1

    .line 721
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 726
    :cond_35
    int-to-double v4, v2

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    int-to-double v2, v0

    div-double v2, v4, v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_6

    const/4 v1, 0x1

    goto :goto_6
.end method

.method private isPlausibleAuthorName(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 936
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_12

    .line 942
    :cond_11
    :goto_11
    return v0

    .line 939
    :cond_12
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_11

    const v1, 0xff1a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_11

    .line 942
    sget-object v1, Lcom/bilibili/tv/ebook/parser/TxtParser;->FOUR_DIGITS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v0, 0x1

    goto :goto_11
.end method

.method private isStrictUtf8([B)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 670
    if-eqz p1, :cond_7

    array-length v2, p1

    if-nez v2, :cond_8

    .line 691
    :cond_7
    :goto_7
    return v0

    .line 673
    :cond_8
    array-length v2, p1

    invoke-direct {p0, p1, v1, v2}, Lcom/bilibili/tv/ebook/parser/TxtParser;->tryDecodeUtf8([BII)Z

    move-result v2

    if-nez v2, :cond_7

    .line 676
    const/4 v2, 0x3

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v3, v1

    .line 677
    :goto_18
    if-gt v3, v4, :cond_36

    move v2, v1

    .line 678
    :goto_1b
    if-gt v2, v4, :cond_32

    .line 679
    if-nez v3, :cond_24

    if-nez v2, :cond_24

    .line 678
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 682
    :cond_24
    array-length v5, p1

    sub-int/2addr v5, v3

    sub-int/2addr v5, v2

    .line 683
    const/16 v6, 0x10

    if-lt v5, v6, :cond_21

    .line 686
    invoke-direct {p0, p1, v3, v5}, Lcom/bilibili/tv/ebook/parser/TxtParser;->tryDecodeUtf8([BII)Z

    move-result v5

    if-eqz v5, :cond_21

    goto :goto_7

    .line 677
    :cond_32
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_18

    :cond_36
    move v0, v1

    .line 691
    goto :goto_7
.end method

.method private loadMetadataFromCache(Ljava/io/File;)Lcom/bilibili/tv/ebook/model/Book;
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 994
    new-instance v1, Ljava/io/File;

    const-string v2, "metadata.json"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 995
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_f

    .line 1046
    :cond_e
    :goto_e
    return-object v0

    .line 1002
    :cond_f
    :try_start_f
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_248
    .catchall {:try_start_f .. :try_end_14} :catchall_1f8

    .line 1003
    :try_start_14
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v1, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_20} :catch_24d
    .catchall {:try_start_14 .. :try_end_20} :catchall_242

    .line 1004
    :try_start_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1006
    :goto_25
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_60

    .line 1007
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2e} :catch_2f
    .catchall {:try_start_20 .. :try_end_2e} :catchall_245

    goto :goto_25

    .line 1044
    :catch_2f
    move-exception v1

    .line 1045
    :goto_30
    :try_start_30
    const-string v4, "TxtParser"

    const-string v5, "\u52a0\u8f7dTXT\u5143\u6570\u636e\u7f13\u5b58\u5931\u8d25"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_245

    .line 1048
    if-eqz v2, :cond_3c

    .line 1050
    :try_start_39
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_1d9

    .line 1055
    :cond_3c
    :goto_3c
    if-eqz v3, :cond_e

    .line 1057
    :try_start_3e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_e

    .line 1058
    :catch_42
    move-exception v1

    .line 1059
    const-string v2, "TxtParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5173\u95ed\u7f13\u5b58\u6587\u4ef6\u6d41\u5931\u8d25: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 1010
    :cond_60
    :try_start_60
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1011
    new-instance v1, Lcom/bilibili/tv/ebook/model/Book;

    invoke-direct {v1}, Lcom/bilibili/tv/ebook/model/Book;-><init>()V

    .line 1012
    const-string v5, "bookId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/bilibili/tv/ebook/model/Book;->setBookId(Ljava/lang/String;)V

    .line 1013
    const-string v5, "title"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/bilibili/tv/ebook/model/Book;->setTitle(Ljava/lang/String;)V

    .line 1014
    const-string v5, "author"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/bilibili/tv/ebook/model/Book;->setAuthor(Ljava/lang/String;)V

    .line 1015
    const-string v5, "language"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/bilibili/tv/ebook/model/Book;->setLanguage(Ljava/lang/String;)V

    .line 1016
    const-string v5, "fileName"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/bilibili/tv/ebook/model/Book;->setFileName(Ljava/lang/String;)V

    .line 1017
    const-string v5, "extractionPath"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/bilibili/tv/ebook/model/Book;->setExtractionPath(Ljava/lang/String;)V

    .line 1019
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1020
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1021
    const-string v7, "chapters"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 1022
    if-eqz v7, :cond_114

    .line 1023
    const/4 v4, 0x0

    :goto_cf
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v4, v8, :cond_114

    .line 1024
    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 1025
    new-instance v9, Lcom/bilibili/tv/ebook/model/Chapter;

    invoke-direct {v9}, Lcom/bilibili/tv/ebook/model/Chapter;-><init>()V

    .line 1026
    const-string v10, "chapterId"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/bilibili/tv/ebook/model/Chapter;->setChapterId(Ljava/lang/String;)V

    .line 1027
    const-string v10, "chapterIndex"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/bilibili/tv/ebook/model/Chapter;->setChapterIndex(I)V

    .line 1028
    const-string v10, "title"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/bilibili/tv/ebook/model/Chapter;->setTitle(Ljava/lang/String;)V

    .line 1029
    const-string v10, "htmlFilePath"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/bilibili/tv/ebook/model/Chapter;->setHtmlFilePath(Ljava/lang/String;)V

    .line 1030
    const-string v10, "depth"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v9, v8}, Lcom/bilibili/tv/ebook/model/Chapter;->setDepth(I)V

    .line 1032
    invoke-virtual {v9, v5}, Lcom/bilibili/tv/ebook/model/Chapter;->setBaseUrl(Ljava/lang/String;)V

    .line 1033
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1023
    add-int/lit8 v4, v4, 0x1

    goto :goto_cf

    .line 1036
    :cond_114
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_117} :catch_2f
    .catchall {:try_start_60 .. :try_end_117} :catchall_245

    move-result v4

    if-eqz v4, :cond_163

    .line 1048
    if-eqz v2, :cond_11f

    .line 1050
    :try_start_11c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_11f
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_11f} :catch_145

    .line 1055
    :cond_11f
    :goto_11f
    if-eqz v3, :cond_e

    .line 1057
    :try_start_121
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_124
    .catch Ljava/io/IOException; {:try_start_121 .. :try_end_124} :catch_126

    goto/16 :goto_e

    .line 1058
    :catch_126
    move-exception v1

    .line 1059
    const-string v2, "TxtParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5173\u95ed\u7f13\u5b58\u6587\u4ef6\u6d41\u5931\u8d25: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 1051
    :catch_145
    move-exception v1

    .line 1052
    const-string v2, "TxtParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5173\u95ed\u7f13\u5b58\u8bfb\u53d6\u6d41\u5931\u8d25: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11f

    .line 1039
    :cond_163
    :try_start_163
    invoke-virtual {v1, v6}, Lcom/bilibili/tv/ebook/model/Book;->setChapters(Ljava/util/List;)V

    .line 1041
    const-string v4, "TxtParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TXT\u5143\u6570\u636e\u7f13\u5b58\u52a0\u8f7d\u6210\u529f: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/bilibili/tv/ebook/model/Book;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", \u7ae0\u8282\u6570: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_190
    .catch Ljava/lang/Exception; {:try_start_163 .. :try_end_190} :catch_2f
    .catchall {:try_start_163 .. :try_end_190} :catchall_245

    .line 1048
    if-eqz v2, :cond_195

    .line 1050
    :try_start_192
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_195
    .catch Ljava/io/IOException; {:try_start_192 .. :try_end_195} :catch_19d

    .line 1055
    :cond_195
    :goto_195
    if-eqz v3, :cond_19a

    .line 1057
    :try_start_197
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_19a
    .catch Ljava/io/IOException; {:try_start_197 .. :try_end_19a} :catch_1bb

    :cond_19a
    :goto_19a
    move-object v0, v1

    .line 1042
    goto/16 :goto_e

    .line 1051
    :catch_19d
    move-exception v0

    .line 1052
    const-string v2, "TxtParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5173\u95ed\u7f13\u5b58\u8bfb\u53d6\u6d41\u5931\u8d25: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_195

    .line 1058
    :catch_1bb
    move-exception v0

    .line 1059
    const-string v2, "TxtParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5173\u95ed\u7f13\u5b58\u6587\u4ef6\u6d41\u5931\u8d25: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19a

    .line 1051
    :catch_1d9
    move-exception v1

    .line 1052
    const-string v2, "TxtParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5173\u95ed\u7f13\u5b58\u8bfb\u53d6\u6d41\u5931\u8d25: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c

    .line 1048
    :catchall_1f8
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    :goto_1fb
    if-eqz v2, :cond_200

    .line 1050
    :try_start_1fd
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_200
    .catch Ljava/io/IOException; {:try_start_1fd .. :try_end_200} :catch_206

    .line 1055
    :cond_200
    :goto_200
    if-eqz v3, :cond_205

    .line 1057
    :try_start_202
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_205
    .catch Ljava/io/IOException; {:try_start_202 .. :try_end_205} :catch_224

    .line 1062
    :cond_205
    :goto_205
    throw v1

    .line 1051
    :catch_206
    move-exception v0

    .line 1052
    const-string v2, "TxtParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5173\u95ed\u7f13\u5b58\u8bfb\u53d6\u6d41\u5931\u8d25: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_200

    .line 1058
    :catch_224
    move-exception v0

    .line 1059
    const-string v2, "TxtParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5173\u95ed\u7f13\u5b58\u6587\u4ef6\u6d41\u5931\u8d25: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_205

    .line 1048
    :catchall_242
    move-exception v1

    move-object v2, v0

    goto :goto_1fb

    :catchall_245
    move-exception v0

    move-object v1, v0

    goto :goto_1fb

    .line 1044
    :catch_248
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto/16 :goto_30

    :catch_24d
    move-exception v1

    move-object v2, v0

    goto/16 :goto_30
.end method

.method private looksLikeShiftJis([BI)Z
    .locals 7

    .prologue
    const/16 v6, 0xfc

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 730
    move v4, v1

    :goto_5
    add-int/lit8 v2, p2, -0x1

    if-ge v4, v2, :cond_3e

    .line 731
    aget-byte v2, p1, v4

    and-int/lit16 v2, v2, 0xff

    .line 732
    add-int/lit8 v3, v4, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v5, v3, 0xff

    .line 733
    const/16 v3, 0x81

    if-lt v2, v3, :cond_1b

    const/16 v3, 0x9f

    if-le v2, v3, :cond_21

    :cond_1b
    const/16 v3, 0xe0

    if-lt v2, v3, :cond_36

    if-gt v2, v6, :cond_36

    :cond_21
    move v3, v0

    .line 734
    :goto_22
    const/16 v2, 0x40

    if-lt v5, v2, :cond_2a

    const/16 v2, 0x7e

    if-le v5, v2, :cond_30

    :cond_2a
    const/16 v2, 0x80

    if-lt v5, v2, :cond_38

    if-gt v5, v6, :cond_38

    :cond_30
    move v2, v0

    .line 735
    :goto_31
    if-eqz v3, :cond_3a

    if-eqz v2, :cond_3a

    .line 739
    :goto_35
    return v0

    :cond_36
    move v3, v1

    .line 733
    goto :goto_22

    :cond_38
    move v2, v1

    .line 734
    goto :goto_31

    .line 730
    :cond_3a
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_5

    :cond_3e
    move v0, v1

    .line 739
    goto :goto_35
.end method

.method private parseAuthorFragment(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 908
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 909
    :cond_8
    const-string v0, ""

    .line 919
    :cond_a
    :goto_a
    return-object v0

    .line 911
    :cond_b
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/parser/TxtParser;->parseLabeledAuthor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 912
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 915
    sget-object v0, Lcom/bilibili/tv/ebook/parser/TxtParser;->AUTHOR_BRACKETED:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 916
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 917
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->stripWrappingPunctuation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 919
    :cond_2b
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/parser/TxtParser;->stripWrappingPunctuation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private parseLabeledAuthor(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 894
    if-nez p1, :cond_5

    .line 895
    const-string v0, ""

    .line 904
    :cond_4
    :goto_4
    return-object v0

    .line 897
    :cond_5
    sget-object v0, Lcom/bilibili/tv/ebook/parser/TxtParser;->AUTHOR_LABELED:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 898
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 899
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->stripWrappingPunctuation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 900
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->isPlausibleAuthorName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 904
    :cond_20
    const-string v0, ""

    goto :goto_4
.end method

.method private readBytes(Ljava/io/File;JI)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 790
    const/4 v1, 0x0

    .line 792
    :try_start_2
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_6e

    .line 793
    :try_start_9
    invoke-virtual {v2, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 794
    new-array v1, p4, [B

    move v3, v0

    .line 796
    :goto_f
    if-ge v3, p4, :cond_19

    .line 797
    sub-int v0, p4, v3

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    .line 798
    if-gtz v0, :cond_28

    .line 803
    :cond_19
    if-ge v3, p4, :cond_49

    .line 804
    new-array v0, v3, [B

    .line 805
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_93

    .line 810
    if-eqz v2, :cond_27

    .line 812
    :try_start_24
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_2b

    .line 808
    :cond_27
    :goto_27
    return-object v0

    .line 801
    :cond_28
    add-int/2addr v0, v3

    move v3, v0

    .line 802
    goto :goto_f

    .line 813
    :catch_2b
    move-exception v1

    .line 814
    const-string v2, "TxtParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5173\u95ed\u968f\u673a\u8bfb\u53d6\u6d41\u5931\u8d25: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 810
    :cond_49
    if-eqz v2, :cond_4e

    .line 812
    :try_start_4b
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_50

    :cond_4e
    :goto_4e
    move-object v0, v1

    .line 808
    goto :goto_27

    .line 813
    :catch_50
    move-exception v0

    .line 814
    const-string v2, "TxtParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5173\u95ed\u968f\u673a\u8bfb\u53d6\u6d41\u5931\u8d25: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 810
    :catchall_6e
    move-exception v0

    :goto_6f
    if-eqz v1, :cond_74

    .line 812
    :try_start_71
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_75

    .line 817
    :cond_74
    :goto_74
    throw v0

    .line 813
    :catch_75
    move-exception v1

    .line 814
    const-string v2, "TxtParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5173\u95ed\u968f\u673a\u8bfb\u53d6\u6d41\u5931\u8d25: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    .line 810
    :catchall_93
    move-exception v0

    move-object v1, v2

    goto :goto_6f
.end method

.method private readHeaderText(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x400

    .line 780
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x20000

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 781
    const-wide/16 v2, 0x0

    invoke-direct {p0, p1, v2, v3, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->readBytes(Ljava/io/File;JI)[B

    move-result-object v1

    .line 782
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 783
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_24

    .line 784
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 786
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private resolveCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 3

    .prologue
    .line 746
    if-nez p1, :cond_3e

    const-string v0, "utf-8"

    .line 747
    :goto_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 748
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 749
    const-string v2, "gbk"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 750
    const-string v0, "gb18030"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 751
    const-string v0, "gb2312"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 762
    :cond_1e
    :goto_1e
    const-string v0, "utf-8"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 764
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_27
    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 766
    :try_start_33
    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 767
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3c} :catch_83

    move-result-object v0

    .line 773
    :goto_3d
    return-object v0

    .line 746
    :cond_3e
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 752
    :cond_43
    const-string v2, "gb18030"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 753
    const-string v0, "gbk"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 754
    const-string v0, "gb2312"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 755
    :cond_56
    const-string v2, "shift_jis"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 756
    const-string v0, "shift-jis"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 757
    const-string v0, "sjis"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 758
    :cond_69
    const-string v2, "utf-16"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 759
    const-string v0, "utf-16le"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 760
    const-string v0, "utf-16be"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 773
    :cond_7c
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_3d

    .line 769
    :catch_83
    move-exception v0

    goto :goto_27
.end method

.method private saveMetadataToCache(Lcom/bilibili/tv/ebook/model/Book;Ljava/io/File;)V
    .locals 8

    .prologue
    .line 1070
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v0, "metadata.json"

    invoke-direct {v1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1072
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1073
    const-string v0, "bookId"

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getBookId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1074
    const-string v0, "title"

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1075
    const-string v0, "author"

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getAuthor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1076
    const-string v0, "language"

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1077
    const-string v0, "fileName"

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1078
    const-string v0, "extractionPath"

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getExtractionPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1080
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 1081
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a0

    .line 1082
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_55
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ebook/model/Chapter;

    .line 1083
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1084
    const-string v6, "chapterId"

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getChapterId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1085
    const-string v6, "chapterIndex"

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getChapterIndex()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1086
    const-string v6, "title"

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1087
    const-string v6, "htmlFilePath"

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getHtmlFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1088
    const-string v6, "depth"

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getDepth()I

    move-result v0

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1089
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_96} :catch_97

    goto :goto_55

    .line 1099
    :catch_97
    move-exception v0

    .line 1100
    const-string v1, "TxtParser"

    const-string v2, "\u4fdd\u5b58TXT\u5143\u6570\u636e\u7f13\u5b58\u5931\u8d25"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1102
    :goto_9f
    return-void

    .line 1092
    :cond_a0
    :try_start_a0
    const-string v0, "chapters"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1094
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->writeTextFile(Ljava/io/File;Ljava/lang/String;)V

    .line 1096
    const-string v0, "TxtParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TXT\u5143\u6570\u636e\u7f13\u5b58\u4fdd\u5b58\u6210\u529f: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \u5927\u5c0f: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1097
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1096
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_dc} :catch_97

    goto :goto_9f
.end method

.method private static stripBom(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 951
    if-nez p0, :cond_5

    .line 952
    const-string p0, ""

    .line 957
    :cond_4
    :goto_4
    return-object p0

    .line 954
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v1, 0xfeff

    if-ne v0, v1, :cond_4

    .line 955
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_4
.end method

.method private stripWrappingPunctuation(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 926
    if-nez p1, :cond_5

    .line 927
    const-string v0, ""

    .line 929
    :goto_4
    return-object v0

    :cond_5
    invoke-static {p1}, Lcom/bilibili/tv/ebook/parser/TxtParser;->trimWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "^[\\p{P}\\p{S}\\s\u3000]+|[\\p{P}\\p{S}\\s\u3000]+$"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private static trimWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const v6, 0xfeff

    const/16 v5, 0x3000

    const/16 v4, 0xa0

    const/16 v3, 0x20

    .line 964
    if-nez p0, :cond_e

    .line 965
    const-string v0, ""

    .line 985
    :goto_d
    return-object v0

    .line 967
    :cond_e
    const/4 v1, 0x0

    .line 968
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 969
    :goto_13
    if-ge v1, v0, :cond_24

    .line 970
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 971
    if-le v2, v3, :cond_21

    if-eq v2, v5, :cond_21

    if-eq v2, v4, :cond_21

    if-ne v2, v6, :cond_24

    .line 972
    :cond_21
    add-int/lit8 v1, v1, 0x1

    .line 976
    goto :goto_13

    .line 977
    :cond_24
    :goto_24
    if-le v0, v1, :cond_37

    .line 978
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 979
    if-le v2, v3, :cond_34

    if-eq v2, v5, :cond_34

    if-eq v2, v4, :cond_34

    if-ne v2, v6, :cond_37

    .line 980
    :cond_34
    add-int/lit8 v0, v0, -0x1

    .line 984
    goto :goto_24

    .line 985
    :cond_37
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method private tryDecodeUtf8([BII)Z
    .locals 2

    .prologue
    .line 695
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 696
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 697
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 699
    :try_start_16
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1d} :catch_1f

    .line 700
    const/4 v0, 0x1

    .line 702
    :goto_1e
    return v0

    .line 701
    :catch_1f
    move-exception v0

    .line 702
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method private writeChapter(Ljava/io/File;ILjava/lang/String;ILjava/util/List;)Lcom/bilibili/tv/ebook/model/Chapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bilibili/tv/ebook/model/Chapter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 523
    new-instance v0, Lcom/bilibili/tv/ebook/model/Chapter;

    invoke-direct {v0}, Lcom/bilibili/tv/ebook/model/Chapter;-><init>()V

    .line 524
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "txt_chapter_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ebook/model/Chapter;->setChapterId(Ljava/lang/String;)V

    .line 525
    invoke-virtual {v0, p2}, Lcom/bilibili/tv/ebook/model/Chapter;->setChapterIndex(I)V

    .line 526
    invoke-virtual {v0, p3}, Lcom/bilibili/tv/ebook/model/Chapter;->setTitle(Ljava/lang/String;)V

    .line 527
    invoke-virtual {v0, p4}, Lcom/bilibili/tv/ebook/model/Chapter;->setDepth(I)V

    .line 529
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chapter_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".html"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 530
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ebook/model/Chapter;->setHtmlFilePath(Ljava/lang/String;)V

    .line 531
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ebook/model/Chapter;->setBaseUrl(Ljava/lang/String;)V

    .line 533
    invoke-direct {p0, p3, p5}, Lcom/bilibili/tv/ebook/parser/TxtParser;->buildChapterHtml(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 534
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v3, v2}, Lcom/bilibili/tv/ebook/parser/TxtParser;->writeTextFile(Ljava/io/File;Ljava/lang/String;)V

    .line 536
    return-object v0
.end method

.method private writeChapterDraft(Lcom/bilibili/tv/ebook/parser/TxtParser$ChapterDraft;Ljava/io/File;IZ)Lcom/bilibili/tv/ebook/model/Chapter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    new-instance v0, Lcom/bilibili/tv/ebook/model/Chapter;

    invoke-direct {v0}, Lcom/bilibili/tv/ebook/model/Chapter;-><init>()V

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "txt_chapter_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ebook/model/Chapter;->setChapterId(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v0, p3}, Lcom/bilibili/tv/ebook/model/Chapter;->setChapterIndex(I)V

    .line 391
    iget-object v1, p1, Lcom/bilibili/tv/ebook/parser/TxtParser$ChapterDraft;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ebook/model/Chapter;->setTitle(Ljava/lang/String;)V

    .line 392
    iget v1, p1, Lcom/bilibili/tv/ebook/parser/TxtParser$ChapterDraft;->depth:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ebook/model/Chapter;->setDepth(I)V

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chapter_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".html"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 395
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ebook/model/Chapter;->setHtmlFilePath(Ljava/lang/String;)V

    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ebook/model/Chapter;->setBaseUrl(Ljava/lang/String;)V

    .line 398
    if-eqz p4, :cond_76

    .line 399
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/bilibili/tv/ebook/parser/TxtParser$ChapterDraft;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/bilibili/tv/ebook/parser/TxtParser$ChapterDraft;->lines:Ljava/util/List;

    invoke-direct {p0, v1, v3}, Lcom/bilibili/tv/ebook/parser/TxtParser;->buildChapterHtml(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/bilibili/tv/ebook/parser/TxtParser;->writeTextFile(Ljava/io/File;Ljava/lang/String;)V

    .line 401
    :cond_76
    return-object v0
.end method

.method private writeTextFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 569
    .line 572
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_5a

    .line 573
    :try_start_6
    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v0, "UTF-8"

    invoke-direct {v1, v3, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_a4

    .line 574
    :try_start_d
    invoke-virtual {v1, p2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 575
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_a7

    .line 577
    if-eqz v1, :cond_18

    .line 579
    :try_start_15
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_1e

    .line 584
    :cond_18
    :goto_18
    if-eqz v3, :cond_1d

    .line 586
    :try_start_1a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_3c

    .line 592
    :cond_1d
    :goto_1d
    return-void

    .line 580
    :catch_1e
    move-exception v0

    .line 581
    const-string v1, "TxtParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5173\u95ed\u7ae0\u8282\u8f93\u51fa\u6d41\u5931\u8d25: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 587
    :catch_3c
    move-exception v0

    .line 588
    const-string v1, "TxtParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5173\u95ed\u7ae0\u8282\u6587\u4ef6\u6d41\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 577
    :catchall_5a
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_5d
    if-eqz v1, :cond_62

    .line 579
    :try_start_5f
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_68

    .line 584
    :cond_62
    :goto_62
    if-eqz v3, :cond_67

    .line 586
    :try_start_64
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_86

    .line 591
    :cond_67
    :goto_67
    throw v0

    .line 580
    :catch_68
    move-exception v1

    .line 581
    const-string v2, "TxtParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5173\u95ed\u7ae0\u8282\u8f93\u51fa\u6d41\u5931\u8d25: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    .line 587
    :catch_86
    move-exception v1

    .line 588
    const-string v2, "TxtParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5173\u95ed\u7ae0\u8282\u6587\u4ef6\u6d41\u5931\u8d25: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67

    .line 577
    :catchall_a4
    move-exception v0

    move-object v1, v2

    goto :goto_5d

    :catchall_a7
    move-exception v0

    goto :goto_5d
.end method


# virtual methods
.method public parse(Ljava/lang/String;Ljava/lang/String;)Lcom/bilibili/tv/ebook/model/Book;
    .locals 13

    .prologue
    .line 158
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 160
    :cond_11
    const-string v0, "TxtParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TXT\u6587\u4ef6\u4e0d\u5b58\u5728: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v0, 0x0

    .line 239
    :goto_2a
    return-object v0

    .line 164
    :cond_2b
    new-instance v5, Ljava/io/File;

    iget-object v0, p0, Lcom/bilibili/tv/ebook/parser/TxtParser;->cacheDir:Ljava/io/File;

    invoke-direct {v5, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 168
    invoke-direct {p0, v5}, Lcom/bilibili/tv/ebook/parser/TxtParser;->loadMetadataFromCache(Ljava/io/File;)Lcom/bilibili/tv/ebook/model/Book;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_6d

    .line 170
    const-string v1, "TxtParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4f7f\u7528\u7f13\u5b58\u7684\u5143\u6570\u636e\uff0c\u8df3\u8fc7TXT\u89e3\u6790: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Book;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \u7ae0\u8282\u6570: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 171
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 174
    :cond_6d
    const-string v0, "TxtParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TXT\u7f13\u5b58\u65e0\u6548\uff0c\u5220\u9664\u540e\u91cd\u65b0\u89e3\u6790: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-direct {p0, v5}, Lcom/bilibili/tv/ebook/parser/TxtParser;->deleteRecursively(Ljava/io/File;)V

    .line 179
    :cond_8c
    :try_start_8c
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 182
    invoke-direct {p0, v1}, Lcom/bilibili/tv/ebook/parser/TxtParser;->detectCharset(Ljava/io/File;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 184
    invoke-direct {p0, v1, v2}, Lcom/bilibili/tv/ebook/parser/TxtParser;->readHeaderText(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->detectLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 187
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/parser/TxtParser;->extractFilenameMetadata(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 188
    const/4 v6, 0x0

    aget-object v12, v4, v6

    .line 189
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->extractHeaderAuthor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 190
    if-eqz v10, :cond_ae

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 191
    :cond_ae
    const/4 v0, 0x1

    aget-object v10, v4, v0

    .line 194
    :cond_b1
    const-string v0, "TxtParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TXT\u89e3\u6790\u53c2\u6570: encoding="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", language="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", title="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", author="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/16 v4, 0x8

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/bilibili/tv/ebook/parser/TxtParser;->extractChapters(Ljava/io/File;Ljava/nio/charset/Charset;Ljava/lang/String;ILjava/io/File;Z)Ljava/util/List;

    move-result-object v7

    .line 201
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    if-gt v0, v4, :cond_1ee

    .line 202
    const/4 v4, 0x7

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/bilibili/tv/ebook/parser/TxtParser;->extractChapters(Ljava/io/File;Ljava/nio/charset/Charset;Ljava/lang/String;ILjava/io/File;Z)Ljava/util/List;

    move-result-object v0

    .line 203
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 204
    const/4 v4, 0x1

    if-le v0, v4, :cond_1e9

    const/4 v4, 0x7

    .line 205
    :goto_109
    const-string v6, "TxtParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u7ae0\u8282\u6570\u8fc7\u5c11("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")\uff0c\u4e8c\u6b21\u63a2\u6d4b: gap="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", \u7ae0\u8282\u6570="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", \u91c7\u7528gap="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-direct {p0, v5}, Lcom/bilibili/tv/ebook/parser/TxtParser;->deleteRecursively(Ljava/io/File;)V

    .line 209
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 210
    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/bilibili/tv/ebook/parser/TxtParser;->extractChapters(Ljava/io/File;Ljava/nio/charset/Charset;Ljava/lang/String;ILjava/io/File;Z)Ljava/util/List;

    move-result-object v0

    move-object v11, v0

    .line 215
    :goto_151
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16f

    .line 216
    const-string v0, "TxtParser"

    const-string v2, "\u672a\u89e3\u6790\u5230\u4efb\u4f55\u7ae0\u8282\uff0c\u521b\u5efa\u7a7a\u7ae0\u8282"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 218
    const/4 v6, 0x0

    const-string v7, "\u5168\u6587"

    const/4 v8, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/bilibili/tv/ebook/parser/TxtParser;->writeChapter(Ljava/io/File;ILjava/lang/String;ILjava/util/List;)Lcom/bilibili/tv/ebook/model/Chapter;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_16f
    new-instance v0, Lcom/bilibili/tv/ebook/model/Book;

    invoke-direct {v0}, Lcom/bilibili/tv/ebook/model/Book;-><init>()V

    .line 222
    invoke-virtual {v0, p2}, Lcom/bilibili/tv/ebook/model/Book;->setBookId(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v0, v12}, Lcom/bilibili/tv/ebook/model/Book;->setTitle(Ljava/lang/String;)V

    .line 224
    if-eqz v10, :cond_182

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1ec

    :cond_182
    const-string v2, "Unknown Author"

    :goto_184
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ebook/model/Book;->setAuthor(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ebook/model/Book;->setLanguage(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ebook/model/Book;->setFileName(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0, v11}, Lcom/bilibili/tv/ebook/model/Book;->setChapters(Ljava/util/List;)V

    .line 228
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ebook/model/Book;->setExtractionPath(Ljava/lang/String;)V

    .line 230
    invoke-direct {p0, v0, v5}, Lcom/bilibili/tv/ebook/parser/TxtParser;->saveMetadataToCache(Lcom/bilibili/tv/ebook/model/Book;Ljava/io/File;)V

    .line 232
    const-string v1, "TxtParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TXT\u89e3\u6790\u6210\u529f: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Book;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \u7ae0\u8282\u6570: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c8
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_1c8} :catch_1ca

    goto/16 :goto_2a

    .line 235
    :catch_1ca
    move-exception v0

    .line 236
    const-string v1, "TxtParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u89e3\u6790TXT\u6587\u4ef6\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    invoke-direct {p0, v5}, Lcom/bilibili/tv/ebook/parser/TxtParser;->deleteRecursively(Ljava/io/File;)V

    .line 239
    const/4 v0, 0x0

    goto/16 :goto_2a

    .line 204
    :cond_1e9
    const/4 v4, 0x6

    goto/16 :goto_109

    :cond_1ec
    move-object v2, v10

    .line 224
    goto :goto_184

    :cond_1ee
    move-object v11, v7

    goto/16 :goto_151
.end method
