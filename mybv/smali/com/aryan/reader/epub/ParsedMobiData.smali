.class public Lcom/aryan/reader/epub/ParsedMobiData;
.super Ljava/lang/Object;
.source "ParsedMobiData.java"


# instance fields
.field private author:Ljava/lang/String;

.field private coverImageResourceUid:I

.field private publisher:Ljava/lang/String;

.field private rawHtmlContent:Ljava/lang/String;

.field private resources:[Lcom/aryan/reader/epub/ParsedMobiResource;

.field private title:Ljava/lang/String;

.field private toc:[Lcom/aryan/reader/epub/ParsedMobiTocEntry;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/aryan/reader/epub/ParsedMobiResource;[Lcom/aryan/reader/epub/ParsedMobiTocEntry;I)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/aryan/reader/epub/ParsedMobiData;->title:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/aryan/reader/epub/ParsedMobiData;->author:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/aryan/reader/epub/ParsedMobiData;->publisher:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/aryan/reader/epub/ParsedMobiData;->rawHtmlContent:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lcom/aryan/reader/epub/ParsedMobiData;->resources:[Lcom/aryan/reader/epub/ParsedMobiResource;

    .line 39
    iput-object p6, p0, Lcom/aryan/reader/epub/ParsedMobiData;->toc:[Lcom/aryan/reader/epub/ParsedMobiTocEntry;

    .line 40
    iput p7, p0, Lcom/aryan/reader/epub/ParsedMobiData;->coverImageResourceUid:I

    .line 41
    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/aryan/reader/epub/ParsedMobiData;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverImageResourceUid()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/aryan/reader/epub/ParsedMobiData;->coverImageResourceUid:I

    return v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/aryan/reader/epub/ParsedMobiData;->publisher:Ljava/lang/String;

    return-object v0
.end method

.method public getRawHtmlContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/aryan/reader/epub/ParsedMobiData;->rawHtmlContent:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceCount()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/aryan/reader/epub/ParsedMobiData;->resources:[Lcom/aryan/reader/epub/ParsedMobiResource;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/aryan/reader/epub/ParsedMobiData;->resources:[Lcom/aryan/reader/epub/ParsedMobiResource;

    array-length v0, v0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getResources()[Lcom/aryan/reader/epub/ParsedMobiResource;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/aryan/reader/epub/ParsedMobiData;->resources:[Lcom/aryan/reader/epub/ParsedMobiResource;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/aryan/reader/epub/ParsedMobiData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getToc()[Lcom/aryan/reader/epub/ParsedMobiTocEntry;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/aryan/reader/epub/ParsedMobiData;->toc:[Lcom/aryan/reader/epub/ParsedMobiTocEntry;

    return-object v0
.end method

.method public hasToc()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/aryan/reader/epub/ParsedMobiData;->toc:[Lcom/aryan/reader/epub/ParsedMobiTocEntry;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/aryan/reader/epub/ParsedMobiData;->toc:[Lcom/aryan/reader/epub/ParsedMobiTocEntry;

    array-length v0, v0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x27

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ParsedMobiData{title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/aryan/reader/epub/ParsedMobiData;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", author=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/aryan/reader/epub/ParsedMobiData;->author:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", publisher=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/aryan/reader/epub/ParsedMobiData;->publisher:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", htmlLength="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/aryan/reader/epub/ParsedMobiData;->rawHtmlContent:Ljava/lang/String;

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/aryan/reader/epub/ParsedMobiData;->rawHtmlContent:Ljava/lang/String;

    .line 91
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", resources="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 92
    invoke-virtual {p0}, Lcom/aryan/reader/epub/ParsedMobiData;->getResourceCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", toc="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/aryan/reader/epub/ParsedMobiData;->toc:[Lcom/aryan/reader/epub/ParsedMobiTocEntry;

    if-eqz v2, :cond_67

    iget-object v1, p0, Lcom/aryan/reader/epub/ParsedMobiData;->toc:[Lcom/aryan/reader/epub/ParsedMobiTocEntry;

    array-length v1, v1

    :cond_67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", coverUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aryan/reader/epub/ParsedMobiData;->coverImageResourceUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    return-object v0

    :cond_82
    move v0, v1

    .line 91
    goto :goto_48
.end method
