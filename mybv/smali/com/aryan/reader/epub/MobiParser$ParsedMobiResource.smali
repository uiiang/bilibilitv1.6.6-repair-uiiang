.class public Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;
.super Ljava/lang/Object;
.source "MobiParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aryan/reader/epub/MobiParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParsedMobiResource"
.end annotation


# instance fields
.field private data:[B

.field private mediaType:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private uid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;[BLjava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p1, p0, Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;->uid:I

    .line 96
    iput-object p2, p0, Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;->path:Ljava/lang/String;

    .line 97
    iput-object p3, p0, Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;->data:[B

    .line 98
    iput-object p4, p0, Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;->mediaType:Ljava/lang/String;

    .line 99
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;->data:[B

    return-object v0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;->mediaType:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;->uid:I

    return v0
.end method

.method public isCss()Z
    .locals 2

    .prologue
    .line 122
    const-string v0, "text/css"

    iget-object v1, p0, Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;->mediaType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isImage()Z
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;->mediaType:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;->mediaType:Ljava/lang/String;

    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
