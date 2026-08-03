.class Lcom/bilibili/tv/ebook/parser/EpubParser$2;
.super Ljava/lang/Object;
.source "EpubParser.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ebook/parser/EpubParser;->parseNcxFile(Ljava/util/Map;Ljava/io/File;Ljava/io/File;)Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ebook/parser/EpubParser;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ebook/parser/EpubParser;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lcom/bilibili/tv/ebook/parser/EpubParser$2;->this$0:Lcom/bilibili/tv/ebook/parser/EpubParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2

    .prologue
    .line 429
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".ncx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
