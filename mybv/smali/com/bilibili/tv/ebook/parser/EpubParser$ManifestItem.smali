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
    .line 820
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 821
    iput-object p1, p0, Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;->id:Ljava/lang/String;

    .line 822
    iput-object p2, p0, Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;->href:Ljava/lang/String;

    .line 823
    iput-object p3, p0, Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;->mediaType:Ljava/lang/String;

    .line 824
    return-void
.end method


# virtual methods
.method public getHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;->href:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;->mediaType:Ljava/lang/String;

    return-object v0
.end method
