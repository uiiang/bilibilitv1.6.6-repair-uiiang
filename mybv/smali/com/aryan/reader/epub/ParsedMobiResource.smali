.class public Lcom/aryan/reader/epub/ParsedMobiResource;
.super Ljava/lang/Object;
.source "ParsedMobiResource.java"


# instance fields
.field private data:[B

.field private mediaType:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private uid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;[BLjava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/aryan/reader/epub/ParsedMobiResource;->uid:I

    .line 26
    iput-object p2, p0, Lcom/aryan/reader/epub/ParsedMobiResource;->path:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/aryan/reader/epub/ParsedMobiResource;->data:[B

    .line 28
    iput-object p4, p0, Lcom/aryan/reader/epub/ParsedMobiResource;->mediaType:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/aryan/reader/epub/ParsedMobiResource;->data:[B

    return-object v0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/aryan/reader/epub/ParsedMobiResource;->mediaType:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/aryan/reader/epub/ParsedMobiResource;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/aryan/reader/epub/ParsedMobiResource;->uid:I

    return v0
.end method

.method public isCss()Z
    .locals 2

    .prologue
    .line 52
    const-string v0, "text/css"

    iget-object v1, p0, Lcom/aryan/reader/epub/ParsedMobiResource;->mediaType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isImage()Z
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/aryan/reader/epub/ParsedMobiResource;->mediaType:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/aryan/reader/epub/ParsedMobiResource;->mediaType:Ljava/lang/String;

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

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParsedMobiResource{uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aryan/reader/epub/ParsedMobiResource;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", path=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aryan/reader/epub/ParsedMobiResource;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dataSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/aryan/reader/epub/ParsedMobiResource;->data:[B

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/aryan/reader/epub/ParsedMobiResource;->data:[B

    array-length v0, v0

    :goto_30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mediaType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aryan/reader/epub/ParsedMobiResource;->mediaType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4f
    const/4 v0, 0x0

    goto :goto_30
.end method
