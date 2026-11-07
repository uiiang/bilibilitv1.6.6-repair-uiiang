.class public Lcom/bilibili/tv/ebook/parser/TxtParser;
.super Ljava/lang/Object;
.source "TxtParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ebook/parser/TxtParser$HeadingMatch;
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

.field private static final MODE_FALLBACK:I = 0x0

.field private static final MODE_HEADINGS_TIER1:I = 0x1

.field private static final MODE_HEADINGS_TIER2:I = 0x2

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

    .line 92
    const-string v0, "^(?:\u7b2c[ \u3000\u96f6\u3007\u4e00\u4e8c\u4e24\u5169\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341\u58f9\u8d30\u8cb3\u53c1\u53c4\u53c3\u8086\u4f0d\u9646\u9678\u67d2\u634c\u7396\u62fe0-9][ \u3000\u96f6\u3007\u4e00\u4e8c\u4e24\u5169\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341\u58f9\u8d30\u8cb3\u53c1\u53c4\u53c3\u8086\u4f0d\u9646\u9678\u67d2\u634c\u7396\u62fe0-9\u767e\u5343\u4e07\u842c\u4f70\u4edf]*(?:[\u7ae0\u8282\u7bc0\u56de\u8bb2\u8b1b\u7bc7\u8bdd\u8a71](?:[\uff1a:\u3001 \u3000\\(\\)0-9]*[^\\n-]{0,36})?|[\u5377\u672c\u518c\u518a\u90e8\u5c01](?:[\uff1a:\u3001 \u3000\\(\\)][\uff1a:\u3001 \u3000\\(\\)0-9]*[^\\n-]{0,36})?)|(?:\u6954\u5b50|\u524d\u8a00|\u7b80\u4ecb|\u5f15\u8a00|\u5e8f\u8a00|\u5e8f\u7ae0|\u603b\u8bba|\u6982\u8bba|\u540e\u8bb0|\u756a\u5916\u7bc7|\u756a\u5916|\u5916\u4f20)(?:[\uff1a: \u3000][^\\n-]{0,36})?|(?:Chapter|Part|Section|Book|Volume|Act)\\s*(?:\\d+|(?:[IVXLCDM]{2,}|V|X|L|C|D|M)\\b|\\.\\d{1,4})(?:[:.\\-\u2013\u2014]?\\s*[^\\n]{0,50})?)\\s*$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bilibili/tv/ebook/parser/TxtParser;->ZH_TIER1:Ljava/util/regex/Pattern;

    .line 97
    const-string v0, "^(?:[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341][\u96f6\u3007\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341\u767e\u5343\u4e07]?[\uff1a:\u3001 \u3000][^\\n-]{0,36}|[0-9]+[^\\n]{0,16})\\s*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bilibili/tv/ebook/parser/TxtParser;->ZH_TIER2:Ljava/util/regex/Pattern;

    .line 102
    const-string v0, "^(?:(?:Chapter|Part|Section|Book|Volume|Act)\\s*(?:\\d+|(?:[IVXLCDM]{2,}|V|X|L|C|D|M)\\b|\\.\\d{1,4})(?:[:.\\-\u2013\u2014]?\\s*[^\\n]{0,50})?|(?:Prologue|Epilogue|Introduction|Foreword|Preface|Afterword)(?:[:.\\-\u2013\u2014]?\\s*[^\\n]{0,50})?)\\s*$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bilibili/tv/ebook/parser/TxtParser;->EN_TIER1:Ljava/util/regex/Pattern;

    .line 107
    const-string v0, "^(?:\\d+\\.\\d+(?:\\.\\d+)* ?[A-Z][^\\n]{0,80}|\\d+[A-Z][^\\n]{0,80})\\s*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bilibili/tv/ebook/parser/TxtParser;->EN_TIER2:Ljava/util/regex/Pattern;

    .line 111
    const-string v0, "\u7b2c[ \u3000]*[\u96f6\u3007\u4e00\u4e8c\u4e24\u5169\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341\u58f9\u8d30\u8cb3\u53c1\u53c4\u53c3\u8086\u4f0d\u9646\u9678\u67d2\u634c\u7396\u62fe0-9\u767e\u5343\u4e07\u842c\u4f70\u4edf][ \u3000\u96f6\u3007\u4e00\u4e8c\u4e24\u5169\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341\u58f9\u8d30\u8cb3\u53c1\u53c4\u53c3\u8086\u4f0d\u9646\u9678\u67d2\u634c\u7396\u62fe0-9\u767e\u5343\u4e07\u842c\u4f70\u4edf]*(\u5377|\u672c|\u518c|\u518a|\u90e8)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bilibili/tv/ebook/parser/TxtParser;->ZH_VOLUME:Ljava/util/regex/Pattern;

    .line 115
    const-string v0, "\\b(Part|Volume|Book)\\b"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bilibili/tv/ebook/parser/TxtParser;->EN_VOLUME:Ljava/util/regex/Pattern;

    .line 120
    const-string v0, "\u300a([^\u300b]+)\u300b(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bilibili/tv/ebook/parser/TxtParser;->TITLE_BOOK_MARK:Ljava/util/regex/Pattern;

    .line 122
    const-string v0, "[\u3010\\[]?\u4f5c\u8005[\u3011\\]]?[\uff1a:\\s\u3000]+(.+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bilibili/tv/ebook/parser/TxtParser;->AUTHOR_LABELED:Ljava/util/regex/Pattern;

    .line 124
    const-string v0, "[\u3010\\[]?[\\s\u3000]*(.+)[\\s\u3000]+\u8457[\\s\u3000]*[\u3011\\]]?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bilibili/tv/ebook/parser/TxtParser;->AUTHOR_ZHU:Ljava/util/regex/Pattern;

    .line 126
    const-string v0, "[\\[\\(\uff08\u3010\uff3b]\\s*([^\\]\\)\uff09\u3011\uff3d]+?)\\s*[\\]\\)\uff09\u3011\uff3d]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bilibili/tv/ebook/parser/TxtParser;->AUTHOR_BRACKETED:Ljava/util/regex/Pattern;

    .line 129
    const-string v0, "\\d{4,}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bilibili/tv/ebook/parser/TxtParser;->FOUR_DIGITS:Ljava/util/regex/Pattern;

    .line 131
    const-string v0, "^[-_]{8,}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bilibili/tv/ebook/parser/TxtParser;->DIVIDER_LINE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/bilibili/tv/ebook/parser/TxtParser;->context:Landroid/content/Context;

    .line 138
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "txt_cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bilibili/tv/ebook/parser/TxtParser;->cacheDir:Ljava/io/File;

    .line 139
    iget-object v0, p0, Lcom/bilibili/tv/ebook/parser/TxtParser;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 140
    iget-object v0, p0, Lcom/bilibili/tv/ebook/parser/TxtParser;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 142
    :cond_1f
    return-void
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
    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x400

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 453
    const-string v0, "<html><head>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">"

    .line 454
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</head><body>"

    .line 455
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    if-eqz p1, :cond_33

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    .line 457
    const-string v0, "<h2>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/parser/TxtParser;->escapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</h2>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
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

    .line 460
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

    .line 462
    :cond_57
    const-string v0, "</body></html>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private deleteRecursively(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 985
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    .line 999
    :cond_8
    :goto_8
    return-void

    .line 988
    :cond_9
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 989
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 990
    if-eqz v1, :cond_21

    .line 991
    array-length v2, v1

    const/4 v0, 0x0

    :goto_17
    if-ge v0, v2, :cond_21

    aget-object v3, v1, v0

    .line 992
    invoke-direct {p0, v3}, Lcom/bilibili/tv/ebook/parser/TxtParser;->deleteRecursively(Ljava/io/File;)V

    .line 991
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 996
    :cond_21
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_8

    .line 997
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

    .line 401
    const-string v1, ""

    .line 402
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 403
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 408
    :goto_1b
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 409
    const-string v0, "\u5f00\u7bc7"

    .line 424
    :cond_23
    :goto_23
    return-object v0

    .line 411
    :cond_24
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v7, :cond_23

    .line 413
    const-string v1, "[\\s\\p{P}]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 414
    array-length v5, v4

    move v2, v3

    :goto_32
    if-ge v2, v5, :cond_3d

    aget-object v1, v4, v2

    .line 415
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_48

    move-object v0, v1

    .line 420
    :cond_3d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v7, :cond_23

    .line 421
    invoke-virtual {v0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    .line 414
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

    .line 512
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 513
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gtz v1, :cond_18

    .line 514
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 565
    :goto_17
    return-object v0

    .line 517
    :cond_18
    const-wide/32 v6, 0x10000

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v1, v6

    .line 518
    const-wide/16 v6, 0x0

    invoke-direct {p0, p1, v6, v7, v1}, Lcom/bilibili/tv/ebook/parser/TxtParser;->readBytes(Ljava/io/File;JI)[B

    move-result-object v3

    .line 521
    array-length v6, v3

    if-lt v6, v8, :cond_3c

    aget-byte v6, v3, v2

    and-int/lit16 v6, v6, 0xff

    if-ne v6, v10, :cond_3c

    aget-byte v6, v3, v0

    and-int/lit16 v6, v6, 0xff

    if-ne v6, v9, :cond_3c

    .line 522
    const-string v0, "utf-16le"

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->resolveCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_17

    .line 524
    :cond_3c
    array-length v6, v3

    if-lt v6, v8, :cond_52

    aget-byte v6, v3, v2

    and-int/lit16 v6, v6, 0xff

    if-ne v6, v9, :cond_52

    aget-byte v6, v3, v0

    and-int/lit16 v6, v6, 0xff

    if-ne v6, v10, :cond_52

    .line 525
    const-string v0, "utf-16be"

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->resolveCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_17

    .line 527
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

    .line 529
    const-string v0, "utf-8"

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->resolveCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_17

    .line 533
    :cond_75
    invoke-direct {p0, v3}, Lcom/bilibili/tv/ebook/parser/TxtParser;->isStrictUtf8([B)Z

    move-result v6

    if-eqz v6, :cond_a4

    .line 535
    int-to-long v6, v1

    const-wide/16 v8, 0x2

    mul-long/2addr v6, v8

    cmp-long v6, v4, v6

    if-lez v6, :cond_9a

    .line 536
    int-to-long v0, v1

    sub-long v0, v4, v0

    const-wide/16 v6, 0x2000

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 537
    int-to-long v6, v0

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    .line 538
    invoke-direct {p0, p1, v4, v5, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->readBytes(Ljava/io/File;JI)[B

    move-result-object v0

    .line 539
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->isStrictUtf8([B)Z

    move-result v0

    .line 541
    :cond_9a
    if-eqz v0, :cond_a4

    .line 542
    const-string v0, "utf-8"

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->resolveCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto/16 :goto_17

    .line 547
    :cond_a4
    const/16 v0, 0x400

    array-length v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v1, v2

    move v0, v2

    .line 549
    :goto_ad
    if-ge v1, v4, :cond_bc

    .line 550
    aget-byte v2, v3, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v5, 0x80

    if-lt v2, v5, :cond_b9

    .line 551
    add-int/lit8 v0, v0, 0x1

    .line 549
    :cond_b9
    add-int/lit8 v1, v1, 0x1

    goto :goto_ad

    .line 554
    :cond_bc
    if-lez v4, :cond_d2

    int-to-double v0, v0

    int-to-double v6, v4

    div-double/2addr v0, v6

    .line 555
    :goto_c1
    const-wide v6, 0x3fd3333333333333L    # 0.3

    cmpl-double v2, v0, v6

    if-lez v2, :cond_d5

    .line 556
    const-string v0, "gbk"

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->resolveCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto/16 :goto_17

    .line 554
    :cond_d2
    const-wide/16 v0, 0x0

    goto :goto_c1

    .line 558
    :cond_d5
    const-wide v6, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v0, v6

    if-lez v0, :cond_f4

    .line 559
    invoke-direct {p0, v3, v4}, Lcom/bilibili/tv/ebook/parser/TxtParser;->looksLikeShiftJis([BI)Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 560
    const-string v0, "shift_jis"

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->resolveCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto/16 :goto_17

    .line 562
    :cond_ec
    const-string v0, "gb18030"

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->resolveCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto/16 :goto_17

    .line 565
    :cond_f4
    const-string v0, "utf-8"

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->resolveCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto/16 :goto_17
.end method

.method private detectHeadingMode(Ljava/io/File;Ljava/nio/charset/Charset;Ljava/lang/String;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    const-string v0, "zh"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    sget-object v0, Lcom/bilibili/tv/ebook/parser/TxtParser;->ZH_TIER1:Ljava/util/regex/Pattern;

    .line 343
    :goto_a
    const-string v1, "zh"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    sget-object v1, Lcom/bilibili/tv/ebook/parser/TxtParser;->ZH_TIER2:Ljava/util/regex/Pattern;

    .line 345
    :goto_14
    const/4 v4, 0x0

    .line 346
    const/4 v2, 0x0

    .line 348
    :try_start_16
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_25
    .catchall {:try_start_16 .. :try_end_25} :catchall_a1

    move v2, v4

    .line 350
    :cond_26
    :goto_26
    :try_start_26
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7d

    .line 351
    invoke-direct {p0, v4}, Lcom/bilibili/tv/ebook/parser/TxtParser;->stripBom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/bilibili/tv/ebook/parser/TxtParser;->trimWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 352
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_26

    .line 355
    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_41
    .catchall {:try_start_26 .. :try_end_41} :catchall_c7

    move-result v5

    if-eqz v5, :cond_6f

    .line 356
    const/4 v2, 0x1

    .line 363
    if-eqz v3, :cond_4a

    .line 365
    :try_start_47
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_51

    .line 371
    :cond_4a
    :goto_4a
    return v2

    .line 342
    :cond_4b
    sget-object v0, Lcom/bilibili/tv/ebook/parser/TxtParser;->EN_TIER1:Ljava/util/regex/Pattern;

    goto :goto_a

    .line 343
    :cond_4e
    sget-object v1, Lcom/bilibili/tv/ebook/parser/TxtParser;->EN_TIER2:Ljava/util/regex/Pattern;

    goto :goto_14

    .line 366
    :catch_51
    move-exception v0

    .line 367
    const-string v1, "TxtParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5173\u95edTXT\u626b\u63cf\u6d41\u5931\u8d25: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 358
    :cond_6f
    if-nez v2, :cond_26

    :try_start_71
    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_78
    .catchall {:try_start_71 .. :try_end_78} :catchall_c7

    move-result v4

    if-eqz v4, :cond_26

    .line 359
    const/4 v2, 0x2

    goto :goto_26

    .line 363
    :cond_7d
    if-eqz v3, :cond_4a

    .line 365
    :try_start_7f
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_83

    goto :goto_4a

    .line 366
    :catch_83
    move-exception v0

    .line 367
    const-string v1, "TxtParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5173\u95edTXT\u626b\u63cf\u6d41\u5931\u8d25: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 363
    :catchall_a1
    move-exception v0

    move-object v1, v2

    :goto_a3
    if-eqz v1, :cond_a8

    .line 365
    :try_start_a5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_a9

    .line 370
    :cond_a8
    :goto_a8
    throw v0

    .line 366
    :catch_a9
    move-exception v1

    .line 367
    const-string v2, "TxtParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5173\u95edTXT\u626b\u63cf\u6d41\u5931\u8d25: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    .line 363
    :catchall_c7
    move-exception v0

    move-object v1, v3

    goto :goto_a3
.end method

.method private detectLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 706
    if-nez p1, :cond_5

    .line 707
    const-string v0, "en"

    .line 715
    :goto_4
    return-object v0

    .line 709
    :cond_5
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 710
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 711
    const/16 v2, 0x4e00

    if-lt v1, v2, :cond_19

    const v2, 0x9fff

    if-le v1, v2, :cond_21

    :cond_19
    const/16 v2, 0x3400

    if-lt v1, v2, :cond_24

    const/16 v2, 0x4dbf

    if-gt v1, v2, :cond_24

    .line 712
    :cond_21
    const-string v0, "zh"

    goto :goto_4

    .line 709
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 715
    :cond_27
    const-string v0, "en"

    goto :goto_4
.end method

.method private escapeXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 467
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 468
    :cond_8
    const-string v0, ""

    .line 470
    :goto_a
    return-object v0

    :cond_b
    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<"

    const-string v2, "&lt;"

    .line 471
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">"

    const-string v2, "&gt;"

    .line 472
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "&quot;"

    .line 473
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    const-string v2, "&apos;"

    .line 474
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private extractFilenameMetadata(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 723
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 724
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 725
    if-lez v1, :cond_18

    .line 726
    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 728
    :cond_18
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 729
    const-string v0, "\u672a\u547d\u540d"

    .line 732
    :cond_20
    sget-object v1, Lcom/bilibili/tv/ebook/parser/TxtParser;->TITLE_BOOK_MARK:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 733
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 734
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5a

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 735
    :goto_3a
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5c

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 736
    :goto_48
    invoke-direct {p0, v2}, Lcom/bilibili/tv/ebook/parser/TxtParser;->parseAuthorFragment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 737
    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5f

    :goto_54
    aput-object v0, v2, v6

    aput-object v3, v2, v5

    move-object v0, v2

    .line 741
    :goto_59
    return-object v0

    :cond_5a
    move-object v1, v0

    .line 734
    goto :goto_3a

    .line 735
    :cond_5c
    const-string v2, ""

    goto :goto_48

    :cond_5f
    move-object v0, v1

    .line 737
    goto :goto_54

    .line 741
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

    .line 748
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 749
    :cond_a
    const-string v0, ""

    .line 770
    :cond_c
    :goto_c
    return-object v0

    .line 751
    :cond_d
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 752
    array-length v4, v3

    move v2, v1

    :goto_15
    if-ge v2, v4, :cond_3b

    aget-object v0, v3, v2

    .line 753
    sget-object v5, Lcom/bilibili/tv/ebook/parser/TxtParser;->AUTHOR_LABELED:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 754
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 755
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->stripWrappingPunctuation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 756
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->isPlausibleAuthorName(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 752
    :cond_37
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_15

    .line 761
    :cond_3b
    array-length v2, v3

    :goto_3c
    if-ge v1, v2, :cond_62

    aget-object v0, v3, v1

    .line 762
    sget-object v4, Lcom/bilibili/tv/ebook/parser/TxtParser;->AUTHOR_ZHU:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 763
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 764
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->stripWrappingPunctuation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 765
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->isPlausibleAuthorName(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 761
    :cond_5e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3c

    .line 770
    :cond_62
    const-string v0, ""

    goto :goto_c
.end method

.method private isPlausibleAuthorName(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 816
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_12

    .line 822
    :cond_11
    :goto_11
    return v0

    .line 819
    :cond_12
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_11

    const v1, 0xff1a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_11

    .line 822
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

    .line 573
    if-eqz p1, :cond_7

    array-length v2, p1

    if-nez v2, :cond_8

    .line 594
    :cond_7
    :goto_7
    return v0

    .line 576
    :cond_8
    array-length v2, p1

    invoke-direct {p0, p1, v1, v2}, Lcom/bilibili/tv/ebook/parser/TxtParser;->tryDecodeUtf8([BII)Z

    move-result v2

    if-nez v2, :cond_7

    .line 579
    const/4 v2, 0x3

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v3, v1

    .line 580
    :goto_18
    if-gt v3, v4, :cond_36

    move v2, v1

    .line 581
    :goto_1b
    if-gt v2, v4, :cond_32

    .line 582
    if-nez v3, :cond_24

    if-nez v2, :cond_24

    .line 581
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 585
    :cond_24
    array-length v5, p1

    sub-int/2addr v5, v3

    sub-int/2addr v5, v2

    .line 586
    const/16 v6, 0x10

    if-lt v5, v6, :cond_21

    .line 589
    invoke-direct {p0, p1, v3, v5}, Lcom/bilibili/tv/ebook/parser/TxtParser;->tryDecodeUtf8([BII)Z

    move-result v5

    if-eqz v5, :cond_21

    goto :goto_7

    .line 580
    :cond_32
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_18

    :cond_36
    move v0, v1

    .line 594
    goto :goto_7
.end method

.method private loadMetadataFromCache(Ljava/io/File;)Lcom/bilibili/tv/ebook/model/Book;
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 874
    new-instance v1, Ljava/io/File;

    const-string v2, "metadata.json"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 875
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_f

    .line 926
    :cond_e
    :goto_e
    return-object v0

    .line 882
    :cond_f
    :try_start_f
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_248
    .catchall {:try_start_f .. :try_end_14} :catchall_1f8

    .line 883
    :try_start_14
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v1, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_20} :catch_24d
    .catchall {:try_start_14 .. :try_end_20} :catchall_242

    .line 884
    :try_start_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 886
    :goto_25
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_60

    .line 887
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2e} :catch_2f
    .catchall {:try_start_20 .. :try_end_2e} :catchall_245

    goto :goto_25

    .line 924
    :catch_2f
    move-exception v1

    .line 925
    :goto_30
    :try_start_30
    const-string v4, "TxtParser"

    const-string v5, "\u52a0\u8f7dTXT\u5143\u6570\u636e\u7f13\u5b58\u5931\u8d25"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_245

    .line 928
    if-eqz v2, :cond_3c

    .line 930
    :try_start_39
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_1d9

    .line 935
    :cond_3c
    :goto_3c
    if-eqz v3, :cond_e

    .line 937
    :try_start_3e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_e

    .line 938
    :catch_42
    move-exception v1

    .line 939
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

    .line 890
    :cond_60
    :try_start_60
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 891
    new-instance v1, Lcom/bilibili/tv/ebook/model/Book;

    invoke-direct {v1}, Lcom/bilibili/tv/ebook/model/Book;-><init>()V

    .line 892
    const-string v5, "bookId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/bilibili/tv/ebook/model/Book;->setBookId(Ljava/lang/String;)V

    .line 893
    const-string v5, "title"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/bilibili/tv/ebook/model/Book;->setTitle(Ljava/lang/String;)V

    .line 894
    const-string v5, "author"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/bilibili/tv/ebook/model/Book;->setAuthor(Ljava/lang/String;)V

    .line 895
    const-string v5, "language"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/bilibili/tv/ebook/model/Book;->setLanguage(Ljava/lang/String;)V

    .line 896
    const-string v5, "fileName"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/bilibili/tv/ebook/model/Book;->setFileName(Ljava/lang/String;)V

    .line 897
    const-string v5, "extractionPath"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/bilibili/tv/ebook/model/Book;->setExtractionPath(Ljava/lang/String;)V

    .line 899
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

    .line 900
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 901
    const-string v7, "chapters"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 902
    if-eqz v7, :cond_114

    .line 903
    const/4 v4, 0x0

    :goto_cf
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v4, v8, :cond_114

    .line 904
    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 905
    new-instance v9, Lcom/bilibili/tv/ebook/model/Chapter;

    invoke-direct {v9}, Lcom/bilibili/tv/ebook/model/Chapter;-><init>()V

    .line 906
    const-string v10, "chapterId"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/bilibili/tv/ebook/model/Chapter;->setChapterId(Ljava/lang/String;)V

    .line 907
    const-string v10, "chapterIndex"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/bilibili/tv/ebook/model/Chapter;->setChapterIndex(I)V

    .line 908
    const-string v10, "title"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/bilibili/tv/ebook/model/Chapter;->setTitle(Ljava/lang/String;)V

    .line 909
    const-string v10, "htmlFilePath"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/bilibili/tv/ebook/model/Chapter;->setHtmlFilePath(Ljava/lang/String;)V

    .line 910
    const-string v10, "depth"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v9, v8}, Lcom/bilibili/tv/ebook/model/Chapter;->setDepth(I)V

    .line 912
    invoke-virtual {v9, v5}, Lcom/bilibili/tv/ebook/model/Chapter;->setBaseUrl(Ljava/lang/String;)V

    .line 913
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 903
    add-int/lit8 v4, v4, 0x1

    goto :goto_cf

    .line 916
    :cond_114
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_117} :catch_2f
    .catchall {:try_start_60 .. :try_end_117} :catchall_245

    move-result v4

    if-eqz v4, :cond_163

    .line 928
    if-eqz v2, :cond_11f

    .line 930
    :try_start_11c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_11f
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_11f} :catch_145

    .line 935
    :cond_11f
    :goto_11f
    if-eqz v3, :cond_e

    .line 937
    :try_start_121
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_124
    .catch Ljava/io/IOException; {:try_start_121 .. :try_end_124} :catch_126

    goto/16 :goto_e

    .line 938
    :catch_126
    move-exception v1

    .line 939
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

    .line 931
    :catch_145
    move-exception v1

    .line 932
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

    .line 919
    :cond_163
    :try_start_163
    invoke-virtual {v1, v6}, Lcom/bilibili/tv/ebook/model/Book;->setChapters(Ljava/util/List;)V

    .line 921
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

    .line 928
    if-eqz v2, :cond_195

    .line 930
    :try_start_192
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_195
    .catch Ljava/io/IOException; {:try_start_192 .. :try_end_195} :catch_19d

    .line 935
    :cond_195
    :goto_195
    if-eqz v3, :cond_19a

    .line 937
    :try_start_197
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_19a
    .catch Ljava/io/IOException; {:try_start_197 .. :try_end_19a} :catch_1bb

    :cond_19a
    :goto_19a
    move-object v0, v1

    .line 922
    goto/16 :goto_e

    .line 931
    :catch_19d
    move-exception v0

    .line 932
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

    .line 938
    :catch_1bb
    move-exception v0

    .line 939
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

    .line 931
    :catch_1d9
    move-exception v1

    .line 932
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

    .line 928
    :catchall_1f8
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    :goto_1fb
    if-eqz v2, :cond_200

    .line 930
    :try_start_1fd
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_200
    .catch Ljava/io/IOException; {:try_start_1fd .. :try_end_200} :catch_206

    .line 935
    :cond_200
    :goto_200
    if-eqz v3, :cond_205

    .line 937
    :try_start_202
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_205
    .catch Ljava/io/IOException; {:try_start_202 .. :try_end_205} :catch_224

    .line 942
    :cond_205
    :goto_205
    throw v1

    .line 931
    :catch_206
    move-exception v0

    .line 932
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

    .line 938
    :catch_224
    move-exception v0

    .line 939
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

    .line 928
    :catchall_242
    move-exception v1

    move-object v2, v0

    goto :goto_1fb

    :catchall_245
    move-exception v0

    move-object v1, v0

    goto :goto_1fb

    .line 924
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

    .line 610
    move v4, v1

    :goto_5
    add-int/lit8 v2, p2, -0x1

    if-ge v4, v2, :cond_3e

    .line 611
    aget-byte v2, p1, v4

    and-int/lit16 v2, v2, 0xff

    .line 612
    add-int/lit8 v3, v4, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v5, v3, 0xff

    .line 613
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

    .line 614
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

    .line 615
    :goto_31
    if-eqz v3, :cond_3a

    if-eqz v2, :cond_3a

    .line 619
    :goto_35
    return v0

    :cond_36
    move v3, v1

    .line 613
    goto :goto_22

    :cond_38
    move v2, v1

    .line 614
    goto :goto_31

    .line 610
    :cond_3a
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_5

    :cond_3e
    move v0, v1

    .line 619
    goto :goto_35
.end method

.method private matchHeading(Ljava/lang/String;Ljava/lang/String;I)Lcom/bilibili/tv/ebook/parser/TxtParser$HeadingMatch;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 378
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_9
    move-object v0, v1

    .line 394
    :goto_a
    return-object v0

    .line 382
    :cond_b
    const/4 v0, 0x1

    if-ne p3, v0, :cond_27

    .line 383
    const-string v0, "zh"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    sget-object v0, Lcom/bilibili/tv/ebook/parser/TxtParser;->ZH_TIER1:Ljava/util/regex/Pattern;

    .line 387
    :goto_18
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 388
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_35

    move-object v0, v1

    .line 389
    goto :goto_a

    .line 383
    :cond_24
    sget-object v0, Lcom/bilibili/tv/ebook/parser/TxtParser;->EN_TIER1:Ljava/util/regex/Pattern;

    goto :goto_18

    .line 385
    :cond_27
    const-string v0, "zh"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    sget-object v0, Lcom/bilibili/tv/ebook/parser/TxtParser;->ZH_TIER2:Ljava/util/regex/Pattern;

    goto :goto_18

    :cond_32
    sget-object v0, Lcom/bilibili/tv/ebook/parser/TxtParser;->EN_TIER2:Ljava/util/regex/Pattern;

    goto :goto_18

    .line 391
    :cond_35
    const-string v0, "zh"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 392
    sget-object v0, Lcom/bilibili/tv/ebook/parser/TxtParser;->ZH_VOLUME:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    .line 394
    :goto_47
    new-instance v1, Lcom/bilibili/tv/ebook/parser/TxtParser$HeadingMatch;

    invoke-direct {v1, p1, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser$HeadingMatch;-><init>(Ljava/lang/String;Z)V

    move-object v0, v1

    goto :goto_a

    .line 393
    :cond_4e
    sget-object v0, Lcom/bilibili/tv/ebook/parser/TxtParser;->EN_VOLUME:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    goto :goto_47
.end method

.method private parseAuthorFragment(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 788
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 789
    :cond_8
    const-string v0, ""

    .line 799
    :cond_a
    :goto_a
    return-object v0

    .line 791
    :cond_b
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/parser/TxtParser;->parseLabeledAuthor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 792
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 795
    sget-object v0, Lcom/bilibili/tv/ebook/parser/TxtParser;->AUTHOR_BRACKETED:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 796
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 797
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->stripWrappingPunctuation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 799
    :cond_2b
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/parser/TxtParser;->stripWrappingPunctuation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private parseByFallback(Ljava/io/File;Ljava/nio/charset/Charset;Ljava/io/File;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/nio/charset/Charset;",
            "Ljava/io/File;",
            ")",
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
    const/4 v7, 0x0

    .line 299
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 300
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 303
    const/4 v1, 0x0

    .line 305
    :try_start_c
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_d9

    move v2, v7

    .line 307
    :cond_1c
    :goto_1c
    :try_start_1c
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_65

    .line 308
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->stripBom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->trimWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c

    sget-object v1, Lcom/bilibili/tv/ebook/parser/TxtParser;->DIVIDER_LINE:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 312
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1c

    .line 314
    add-int/lit8 v0, v2, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/bilibili/tv/ebook/parser/TxtParser;->writeChapter(Ljava/io/File;ILjava/lang/String;ILjava/util/List;)Lcom/bilibili/tv/ebook/model/Chapter;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    add-int/lit8 v2, v2, 0x1

    .line 316
    invoke-interface {v5}, Ljava/util/List;->clear()V
    :try_end_5c
    .catchall {:try_start_1c .. :try_end_5c} :catchall_5d

    goto :goto_1c

    .line 320
    :catchall_5d
    move-exception v0

    move-object v1, v6

    :goto_5f
    if-eqz v1, :cond_64

    .line 322
    :try_start_61
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_bb

    .line 327
    :cond_64
    :goto_64
    throw v0

    .line 320
    :cond_65
    if-eqz v6, :cond_6a

    .line 322
    :try_start_67
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_9d

    .line 329
    :cond_6a
    :goto_6a
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_80

    .line 330
    add-int/lit8 v0, v2, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p3

    move v4, v7

    invoke-direct/range {v0 .. v5}, Lcom/bilibili/tv/ebook/parser/TxtParser;->writeChapter(Ljava/io/File;ILjava/lang/String;ILjava/util/List;)Lcom/bilibili/tv/ebook/model/Chapter;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    :cond_80
    const-string v0, "TxtParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u65e0\u6807\u9898\u515c\u5e95\u5207\u5206\u5b8c\u6210: \u7ae0\u8282\u6570="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-object v8

    .line 323
    :catch_9d
    move-exception v0

    .line 324
    const-string v1, "TxtParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5173\u95edTXT\u8bfb\u53d6\u6d41\u5931\u8d25: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    .line 323
    :catch_bb
    move-exception v1

    .line 324
    const-string v2, "TxtParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5173\u95edTXT\u8bfb\u53d6\u6d41\u5931\u8d25: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    .line 320
    :catchall_d9
    move-exception v0

    goto :goto_5f
.end method

.method private parseByHeadings(Ljava/io/File;Ljava/nio/charset/Charset;Ljava/lang/String;ILjava/io/File;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/String;",
            "I",
            "Ljava/io/File;",
            ")",
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
    .line 238
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 239
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 240
    const/4 v4, 0x0

    .line 241
    const/4 v0, 0x0

    .line 242
    const/4 v6, 0x0

    .line 243
    const/4 v2, 0x0

    .line 245
    const/4 v1, 0x0

    .line 247
    :try_start_f
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v9, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v7, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_d8

    .line 249
    :goto_1e
    :try_start_1e
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_81

    .line 250
    invoke-direct {p0, v1}, Lcom/bilibili/tv/ebook/parser/TxtParser;->stripBom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bilibili/tv/ebook/parser/TxtParser;->trimWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-direct {p0, v1, p3, p4}, Lcom/bilibili/tv/ebook/parser/TxtParser;->matchHeading(Ljava/lang/String;Ljava/lang/String;I)Lcom/bilibili/tv/ebook/parser/TxtParser$HeadingMatch;

    move-result-object v9

    .line 253
    if-eqz v9, :cond_69

    .line 255
    if-nez v4, :cond_3a

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4e

    .line 256
    :cond_3a
    if-eqz v4, :cond_5a

    move-object v3, v4

    .line 257
    :goto_3d
    if-eqz v4, :cond_5f

    move v4, v0

    :goto_40
    move-object v0, p0

    move-object v1, p5

    .line 258
    invoke-direct/range {v0 .. v5}, Lcom/bilibili/tv/ebook/parser/TxtParser;->writeChapter(Ljava/io/File;ILjava/lang/String;ILjava/util/List;)Lcom/bilibili/tv/ebook/model/Chapter;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    add-int/lit8 v2, v2, 0x1

    .line 260
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 262
    :cond_4e
    iget-object v4, v9, Lcom/bilibili/tv/ebook/parser/TxtParser$HeadingMatch;->title:Ljava/lang/String;

    .line 263
    iget-boolean v0, v9, Lcom/bilibili/tv/ebook/parser/TxtParser$HeadingMatch;->isVolume:Z

    if-eqz v0, :cond_61

    .line 265
    const/4 v3, 0x0

    .line 266
    const/4 v0, 0x1

    move v1, v0

    :goto_57
    move v6, v1

    move v0, v3

    .line 273
    goto :goto_1e

    .line 256
    :cond_5a
    invoke-direct {p0, v5}, Lcom/bilibili/tv/ebook/parser/TxtParser;->deriveInitialTitle(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3d

    .line 257
    :cond_5f
    const/4 v4, 0x0

    goto :goto_40

    .line 268
    :cond_61
    if-eqz v6, :cond_67

    const/4 v0, 0x1

    :goto_64
    move v1, v6

    move v3, v0

    goto :goto_57

    :cond_67
    const/4 v0, 0x0

    goto :goto_64

    .line 270
    :cond_69
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7e

    sget-object v3, Lcom/bilibili/tv/ebook/parser/TxtParser;->DIVIDER_LINE:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_7e

    .line 271
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7e
    .catchall {:try_start_1e .. :try_end_7e} :catchall_104

    :cond_7e
    move v1, v6

    move v3, v0

    goto :goto_57

    .line 275
    :cond_81
    if-eqz v7, :cond_86

    .line 277
    :try_start_83
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_ba

    .line 285
    :cond_86
    :goto_86
    if-nez v4, :cond_8e

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9d

    .line 286
    :cond_8e
    if-eqz v4, :cond_fd

    move-object v3, v4

    .line 287
    :goto_91
    if-eqz v4, :cond_102

    move v4, v0

    :goto_94
    move-object v0, p0

    move-object v1, p5

    .line 288
    invoke-direct/range {v0 .. v5}, Lcom/bilibili/tv/ebook/parser/TxtParser;->writeChapter(Ljava/io/File;ILjava/lang/String;ILjava/util/List;)Lcom/bilibili/tv/ebook/model/Chapter;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_9d
    const-string v0, "TxtParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6309\u6807\u9898\u5207\u5206\u5b8c\u6210: \u7ae0\u8282\u6570="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-object v8

    .line 278
    :catch_ba
    move-exception v1

    .line 279
    const-string v3, "TxtParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5173\u95edTXT\u8bfb\u53d6\u6d41\u5931\u8d25: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86

    .line 275
    :catchall_d8
    move-exception v0

    :goto_d9
    if-eqz v1, :cond_de

    .line 277
    :try_start_db
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_de} :catch_df

    .line 282
    :cond_de
    :goto_de
    throw v0

    .line 278
    :catch_df
    move-exception v1

    .line 279
    const-string v2, "TxtParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5173\u95edTXT\u8bfb\u53d6\u6d41\u5931\u8d25: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_de

    .line 286
    :cond_fd
    invoke-direct {p0, v5}, Lcom/bilibili/tv/ebook/parser/TxtParser;->deriveInitialTitle(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    goto :goto_91

    .line 287
    :cond_102
    const/4 v4, 0x0

    goto :goto_94

    .line 275
    :catchall_104
    move-exception v0

    move-object v1, v7

    goto :goto_d9
.end method

.method private parseLabeledAuthor(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 774
    if-nez p1, :cond_5

    .line 775
    const-string v0, ""

    .line 784
    :cond_4
    :goto_4
    return-object v0

    .line 777
    :cond_5
    sget-object v0, Lcom/bilibili/tv/ebook/parser/TxtParser;->AUTHOR_LABELED:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 778
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 779
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->stripWrappingPunctuation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 780
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->isPlausibleAuthorName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 784
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

    .line 670
    const/4 v1, 0x0

    .line 672
    :try_start_2
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_6e

    .line 673
    :try_start_9
    invoke-virtual {v2, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 674
    new-array v1, p4, [B

    move v3, v0

    .line 676
    :goto_f
    if-ge v3, p4, :cond_19

    .line 677
    sub-int v0, p4, v3

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    .line 678
    if-gtz v0, :cond_28

    .line 683
    :cond_19
    if-ge v3, p4, :cond_49

    .line 684
    new-array v0, v3, [B

    .line 685
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_93

    .line 690
    if-eqz v2, :cond_27

    .line 692
    :try_start_24
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_2b

    .line 688
    :cond_27
    :goto_27
    return-object v0

    .line 681
    :cond_28
    add-int/2addr v0, v3

    move v3, v0

    .line 682
    goto :goto_f

    .line 693
    :catch_2b
    move-exception v1

    .line 694
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

    .line 690
    :cond_49
    if-eqz v2, :cond_4e

    .line 692
    :try_start_4b
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_50

    :cond_4e
    :goto_4e
    move-object v0, v1

    .line 688
    goto :goto_27

    .line 693
    :catch_50
    move-exception v0

    .line 694
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

    .line 690
    :catchall_6e
    move-exception v0

    :goto_6f
    if-eqz v1, :cond_74

    .line 692
    :try_start_71
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_75

    .line 697
    :cond_74
    :goto_74
    throw v0

    .line 693
    :catch_75
    move-exception v1

    .line 694
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

    .line 690
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

    .line 660
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x20000

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 661
    const-wide/16 v2, 0x0

    invoke-direct {p0, p1, v2, v3, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->readBytes(Ljava/io/File;JI)[B

    move-result-object v1

    .line 662
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 663
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_24

    .line 664
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 666
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
    .line 626
    if-nez p1, :cond_3e

    const-string v0, "utf-8"

    .line 627
    :goto_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 628
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 629
    const-string v2, "gbk"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 630
    const-string v0, "gb18030"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    const-string v0, "gb2312"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    :cond_1e
    :goto_1e
    const-string v0, "utf-8"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 644
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

    .line 646
    :try_start_33
    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 647
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3c} :catch_83

    move-result-object v0

    .line 653
    :goto_3d
    return-object v0

    .line 626
    :cond_3e
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 632
    :cond_43
    const-string v2, "gb18030"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 633
    const-string v0, "gbk"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    const-string v0, "gb2312"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 635
    :cond_56
    const-string v2, "shift_jis"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 636
    const-string v0, "shift-jis"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    const-string v0, "sjis"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 638
    :cond_69
    const-string v2, "utf-16"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 639
    const-string v0, "utf-16le"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 640
    const-string v0, "utf-16be"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 653
    :cond_7c
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_3d

    .line 649
    :catch_83
    move-exception v0

    goto :goto_27
.end method

.method private saveMetadataToCache(Lcom/bilibili/tv/ebook/model/Book;Ljava/io/File;)V
    .locals 8

    .prologue
    .line 950
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v0, "metadata.json"

    invoke-direct {v1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 952
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 953
    const-string v0, "bookId"

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getBookId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 954
    const-string v0, "title"

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 955
    const-string v0, "author"

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getAuthor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 956
    const-string v0, "language"

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 957
    const-string v0, "fileName"

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 958
    const-string v0, "extractionPath"

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getExtractionPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 960
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 961
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a0

    .line 962
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

    .line 963
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 964
    const-string v6, "chapterId"

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getChapterId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 965
    const-string v6, "chapterIndex"

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getChapterIndex()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 966
    const-string v6, "title"

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 967
    const-string v6, "htmlFilePath"

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getHtmlFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 968
    const-string v6, "depth"

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getDepth()I

    move-result v0

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 969
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_96} :catch_97

    goto :goto_55

    .line 979
    :catch_97
    move-exception v0

    .line 980
    const-string v1, "TxtParser"

    const-string v2, "\u4fdd\u5b58TXT\u5143\u6570\u636e\u7f13\u5b58\u5931\u8d25"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 982
    :goto_9f
    return-void

    .line 972
    :cond_a0
    :try_start_a0
    const-string v0, "chapters"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 974
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->writeTextFile(Ljava/io/File;Ljava/lang/String;)V

    .line 976
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

    .line 977
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 976
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_dc} :catch_97

    goto :goto_9f
.end method

.method private stripBom(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 831
    if-nez p1, :cond_5

    .line 832
    const-string p1, ""

    .line 837
    :cond_4
    :goto_4
    return-object p1

    .line 834
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v1, 0xfeff

    if-ne v0, v1, :cond_4

    .line 835
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_4
.end method

.method private stripWrappingPunctuation(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 806
    if-nez p1, :cond_5

    .line 807
    const-string v0, ""

    .line 809
    :goto_4
    return-object v0

    :cond_5
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/parser/TxtParser;->trimWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "^[\\p{P}\\p{S}\\s\u3000]+|[\\p{P}\\p{S}\\s\u3000]+$"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private trimWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const v6, 0xfeff

    const/16 v5, 0x3000

    const/16 v4, 0xa0

    const/16 v3, 0x20

    .line 844
    if-nez p1, :cond_e

    .line 845
    const-string v0, ""

    .line 865
    :goto_d
    return-object v0

    .line 847
    :cond_e
    const/4 v1, 0x0

    .line 848
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 849
    :goto_13
    if-ge v1, v0, :cond_24

    .line 850
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 851
    if-le v2, v3, :cond_21

    if-eq v2, v5, :cond_21

    if-eq v2, v4, :cond_21

    if-ne v2, v6, :cond_24

    .line 852
    :cond_21
    add-int/lit8 v1, v1, 0x1

    .line 856
    goto :goto_13

    .line 857
    :cond_24
    :goto_24
    if-le v0, v1, :cond_37

    .line 858
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 859
    if-le v2, v3, :cond_34

    if-eq v2, v5, :cond_34

    if-eq v2, v4, :cond_34

    if-ne v2, v6, :cond_37

    .line 860
    :cond_34
    add-int/lit8 v0, v0, -0x1

    .line 864
    goto :goto_24

    .line 865
    :cond_37
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method private tryDecodeUtf8([BII)Z
    .locals 2

    .prologue
    .line 598
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 599
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 600
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 602
    :try_start_16
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1d} :catch_1f

    .line 603
    const/4 v0, 0x1

    .line 605
    :goto_1e
    return v0

    .line 604
    :catch_1f
    move-exception v0

    .line 605
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
    .line 432
    new-instance v0, Lcom/bilibili/tv/ebook/model/Chapter;

    invoke-direct {v0}, Lcom/bilibili/tv/ebook/model/Chapter;-><init>()V

    .line 433
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

    .line 434
    invoke-virtual {v0, p2}, Lcom/bilibili/tv/ebook/model/Chapter;->setChapterIndex(I)V

    .line 435
    invoke-virtual {v0, p3}, Lcom/bilibili/tv/ebook/model/Chapter;->setTitle(Ljava/lang/String;)V

    .line 436
    invoke-virtual {v0, p4}, Lcom/bilibili/tv/ebook/model/Chapter;->setDepth(I)V

    .line 438
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

    .line 439
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ebook/model/Chapter;->setHtmlFilePath(Ljava/lang/String;)V

    .line 440
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

    .line 442
    invoke-direct {p0, p3, p5}, Lcom/bilibili/tv/ebook/parser/TxtParser;->buildChapterHtml(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 443
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v3, v2}, Lcom/bilibili/tv/ebook/parser/TxtParser;->writeTextFile(Ljava/io/File;Ljava/lang/String;)V

    .line 445
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

    .line 478
    .line 481
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_5a

    .line 482
    :try_start_6
    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v0, "UTF-8"

    invoke-direct {v1, v3, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_a4

    .line 483
    :try_start_d
    invoke-virtual {v1, p2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 484
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_a7

    .line 486
    if-eqz v1, :cond_18

    .line 488
    :try_start_15
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_1e

    .line 493
    :cond_18
    :goto_18
    if-eqz v3, :cond_1d

    .line 495
    :try_start_1a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_3c

    .line 501
    :cond_1d
    :goto_1d
    return-void

    .line 489
    :catch_1e
    move-exception v0

    .line 490
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

    .line 496
    :catch_3c
    move-exception v0

    .line 497
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

    .line 486
    :catchall_5a
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_5d
    if-eqz v1, :cond_62

    .line 488
    :try_start_5f
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_68

    .line 493
    :cond_62
    :goto_62
    if-eqz v3, :cond_67

    .line 495
    :try_start_64
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_86

    .line 500
    :cond_67
    :goto_67
    throw v0

    .line 489
    :catch_68
    move-exception v1

    .line 490
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

    .line 496
    :catch_86
    move-exception v1

    .line 497
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

    .line 486
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
    .line 152
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 154
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

    .line 155
    const/4 v0, 0x0

    .line 227
    :goto_2a
    return-object v0

    .line 158
    :cond_2b
    new-instance v5, Ljava/io/File;

    iget-object v0, p0, Lcom/bilibili/tv/ebook/parser/TxtParser;->cacheDir:Ljava/io/File;

    invoke-direct {v5, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 162
    invoke-direct {p0, v5}, Lcom/bilibili/tv/ebook/parser/TxtParser;->loadMetadataFromCache(Ljava/io/File;)Lcom/bilibili/tv/ebook/model/Book;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_6d

    .line 164
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

    .line 165
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 168
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

    .line 169
    invoke-direct {p0, v5}, Lcom/bilibili/tv/ebook/parser/TxtParser;->deleteRecursively(Ljava/io/File;)V

    .line 173
    :cond_8c
    :try_start_8c
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 176
    invoke-direct {p0, v1}, Lcom/bilibili/tv/ebook/parser/TxtParser;->detectCharset(Ljava/io/File;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 178
    invoke-direct {p0, v1, v2}, Lcom/bilibili/tv/ebook/parser/TxtParser;->readHeaderText(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->detectLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 181
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/parser/TxtParser;->extractFilenameMetadata(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 182
    const/4 v6, 0x0

    aget-object v12, v4, v6

    .line 183
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/parser/TxtParser;->extractHeaderAuthor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 184
    if-eqz v10, :cond_ae

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 185
    :cond_ae
    const/4 v0, 0x1

    aget-object v10, v4, v0

    .line 189
    :cond_b1
    invoke-direct {p0, v1, v2, v3}, Lcom/bilibili/tv/ebook/parser/TxtParser;->detectHeadingMode(Ljava/io/File;Ljava/nio/charset/Charset;Ljava/lang/String;)I

    move-result v4

    .line 190
    const-string v0, "TxtParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TXT\u89e3\u6790\u53c2\u6570: encoding="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", language="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", headingMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", title="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", author="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v0, 0x1

    if-eq v4, v0, :cond_ff

    const/4 v0, 0x2

    if-ne v4, v0, :cond_19d

    :cond_ff
    move-object v0, p0

    .line 197
    invoke-direct/range {v0 .. v5}, Lcom/bilibili/tv/ebook/parser/TxtParser;->parseByHeadings(Ljava/io/File;Ljava/nio/charset/Charset;Ljava/lang/String;ILjava/io/File;)Ljava/util/List;

    move-result-object v0

    move-object v11, v0

    .line 203
    :goto_105
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_123

    .line 204
    const-string v0, "TxtParser"

    const-string v2, "\u672a\u89e3\u6790\u5230\u4efb\u4f55\u7ae0\u8282\uff0c\u521b\u5efa\u7a7a\u7ae0\u8282"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 206
    const/4 v6, 0x0

    const-string v7, "\u5168\u6587"

    const/4 v8, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/bilibili/tv/ebook/parser/TxtParser;->writeChapter(Ljava/io/File;ILjava/lang/String;ILjava/util/List;)Lcom/bilibili/tv/ebook/model/Chapter;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_123
    new-instance v0, Lcom/bilibili/tv/ebook/model/Book;

    invoke-direct {v0}, Lcom/bilibili/tv/ebook/model/Book;-><init>()V

    .line 210
    invoke-virtual {v0, p2}, Lcom/bilibili/tv/ebook/model/Book;->setBookId(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0, v12}, Lcom/bilibili/tv/ebook/model/Book;->setTitle(Ljava/lang/String;)V

    .line 212
    if-eqz v10, :cond_136

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1a4

    :cond_136
    const-string v2, "Unknown Author"

    :goto_138
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ebook/model/Book;->setAuthor(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ebook/model/Book;->setLanguage(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ebook/model/Book;->setFileName(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0, v11}, Lcom/bilibili/tv/ebook/model/Book;->setChapters(Ljava/util/List;)V

    .line 216
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ebook/model/Book;->setExtractionPath(Ljava/lang/String;)V

    .line 218
    invoke-direct {p0, v0, v5}, Lcom/bilibili/tv/ebook/parser/TxtParser;->saveMetadataToCache(Lcom/bilibili/tv/ebook/model/Book;Ljava/io/File;)V

    .line 220
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
    :try_end_17c
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_17c} :catch_17e

    goto/16 :goto_2a

    .line 223
    :catch_17e
    move-exception v0

    .line 224
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

    .line 226
    invoke-direct {p0, v5}, Lcom/bilibili/tv/ebook/parser/TxtParser;->deleteRecursively(Ljava/io/File;)V

    .line 227
    const/4 v0, 0x0

    goto/16 :goto_2a

    .line 199
    :cond_19d
    :try_start_19d
    invoke-direct {p0, v1, v2, v5}, Lcom/bilibili/tv/ebook/parser/TxtParser;->parseByFallback(Ljava/io/File;Ljava/nio/charset/Charset;Ljava/io/File;)Ljava/util/List;
    :try_end_1a0
    .catch Ljava/lang/Exception; {:try_start_19d .. :try_end_1a0} :catch_17e

    move-result-object v0

    move-object v11, v0

    goto/16 :goto_105

    :cond_1a4
    move-object v2, v10

    .line 212
    goto :goto_138
.end method
