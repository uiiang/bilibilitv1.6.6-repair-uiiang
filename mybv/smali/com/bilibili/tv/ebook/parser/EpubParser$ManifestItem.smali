.class Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;
.super Ljava/lang/Object;
.source "EpubParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ebook/parser/EpubParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ManifestItem"
.end annotation


# instance fields
.field private href:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private mediaType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    iput-object p1, p0, Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;->id:Ljava/lang/String;

    .line 659
    iput-object p2, p0, Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;->href:Ljava/lang/String;

    .line 660
    iput-object p3, p0, Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;->mediaType:Ljava/lang/String;

    .line 661
    return-void
.end method


# virtual methods
.method public getHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;->href:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;->mediaType:Ljava/lang/String;

    return-object v0
.end method
