.class Lcom/bilibili/tv/ebook/parser/TxtParser$SegmentReader;
.super Ljava/lang/Object;
.source "TxtParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ebook/parser/TxtParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SegmentReader"
.end annotation


# instance fields
.field private eof:Z

.field private final gapEmptyLines:I

.field private pendingLine:Ljava/lang/String;

.field private final reader:Ljava/io/BufferedReader;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/nio/charset/Charset;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ebook/parser/TxtParser$SegmentReader;->eof:Z

    .line 429
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ebook/parser/TxtParser$SegmentReader;->pendingLine:Ljava/lang/String;

    .line 432
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iput-object v0, p0, Lcom/bilibili/tv/ebook/parser/TxtParser$SegmentReader;->reader:Ljava/io/BufferedReader;

    .line 433
    const/4 v0, 0x1

    add-int/lit8 v1, p3, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/ebook/parser/TxtParser$SegmentReader;->gapEmptyLines:I

    .line 434
    return-void
.end method


# virtual methods
.method close()V
    .locals 4

    .prologue
    .line 481
    :try_start_0
    iget-object v0, p0, Lcom/bilibili/tv/ebook/parser/TxtParser$SegmentReader;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 485
    :goto_5
    return-void

    .line 482
    :catch_6
    move-exception v0

    .line 483
    const-string v1, "TxtParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5173\u95edTXT\u5206\u6bb5\u8bfb\u53d6\u6d41\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method nextSegment()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 437
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/parser/TxtParser$SegmentReader;->eof:Z

    if-eqz v0, :cond_8

    move-object v3, v2

    .line 476
    :cond_7
    :goto_7
    return-object v3

    .line 441
    :cond_8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 444
    iget-object v0, p0, Lcom/bilibili/tv/ebook/parser/TxtParser$SegmentReader;->pendingLine:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 445
    iget-object v0, p0, Lcom/bilibili/tv/ebook/parser/TxtParser$SegmentReader;->pendingLine:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    iput-object v2, p0, Lcom/bilibili/tv/ebook/parser/TxtParser$SegmentReader;->pendingLine:Ljava/lang/String;

    :cond_18
    move v0, v1

    .line 450
    :goto_19
    iget-object v4, p0, Lcom/bilibili/tv/ebook/parser/TxtParser$SegmentReader;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_68

    .line 451
    # invokes: Lcom/bilibili/tv/ebook/parser/TxtParser;->stripBom(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4}, Lcom/bilibili/tv/ebook/parser/TxtParser;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/bilibili/tv/ebook/parser/TxtParser;->trimWhitespace(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4}, Lcom/bilibili/tv/ebook/parser/TxtParser;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 454
    # getter for: Lcom/bilibili/tv/ebook/parser/TxtParser;->SEGMENT_DASH_DIVIDER:Ljava/util/regex/Pattern;
    invoke-static {}, Lcom/bilibili/tv/ebook/parser/TxtParser;->access$200()Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 455
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    .line 459
    goto :goto_19

    .line 461
    :cond_3f
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_48

    .line 462
    add-int/lit8 v0, v0, 0x1

    .line 463
    goto :goto_19

    .line 465
    :cond_48
    iget v5, p0, Lcom/bilibili/tv/ebook/parser/TxtParser$SegmentReader;->gapEmptyLines:I

    if-lt v0, v5, :cond_55

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_55

    .line 466
    iput-object v4, p0, Lcom/bilibili/tv/ebook/parser/TxtParser$SegmentReader;->pendingLine:Ljava/lang/String;

    goto :goto_7

    .line 470
    :cond_55
    # getter for: Lcom/bilibili/tv/ebook/parser/TxtParser;->DIVIDER_LINE:Ljava/util/regex/Pattern;
    invoke-static {}, Lcom/bilibili/tv/ebook/parser/TxtParser;->access$300()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_66

    .line 471
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_66
    move v0, v1

    .line 473
    goto :goto_19

    .line 475
    :cond_68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ebook/parser/TxtParser$SegmentReader;->eof:Z

    .line 476
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_74

    move-object v0, v2

    :goto_72
    move-object v3, v0

    goto :goto_7

    :cond_74
    move-object v0, v3

    goto :goto_72
.end method
