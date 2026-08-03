.class Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;
.super Ljava/lang/Object;
.source "EpubParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ebook/parser/EpubParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NcxParseResult"
.end annotation


# instance fields
.field depthMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field titleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;->depthMap:Ljava/util/Map;

    .line 399
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;->titleMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bilibili/tv/ebook/parser/EpubParser$1;)V
    .locals 0

    .prologue
    .line 397
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;-><init>()V

    return-void
.end method
