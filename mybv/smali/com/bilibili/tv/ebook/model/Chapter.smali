.class public Lcom/bilibili/tv/ebook/model/Chapter;
.super Ljava/lang/Object;
.source "Chapter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private chapterId:Ljava/lang/String;

.field private chapterIndex:I

.field private depth:I

.field private htmlContent:Ljava/lang/String;

.field private htmlFilePath:Ljava/lang/String;

.field private plainTextContent:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/bilibili/tv/ebook/model/Chapter;->chapterId:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/bilibili/tv/ebook/model/Chapter;->title:Ljava/lang/String;

    .line 25
    iput p3, p0, Lcom/bilibili/tv/ebook/model/Chapter;->chapterIndex:I

    .line 26
    return-void
.end method


# virtual methods
.method public getChapterId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/bilibili/tv/ebook/model/Chapter;->chapterId:Ljava/lang/String;

    return-object v0
.end method

.method public getChapterIndex()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/bilibili/tv/ebook/model/Chapter;->chapterIndex:I

    return v0
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/bilibili/tv/ebook/model/Chapter;->depth:I

    return v0
.end method

.method public getHtmlContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/bilibili/tv/ebook/model/Chapter;->htmlContent:Ljava/lang/String;

    return-object v0
.end method

.method public getHtmlFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/bilibili/tv/ebook/model/Chapter;->htmlFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getPlainTextContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/bilibili/tv/ebook/model/Chapter;->plainTextContent:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/bilibili/tv/ebook/model/Chapter;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setChapterId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/bilibili/tv/ebook/model/Chapter;->chapterId:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setChapterIndex(I)V
    .locals 0

    .prologue
    .line 74
    iput p1, p0, Lcom/bilibili/tv/ebook/model/Chapter;->chapterIndex:I

    .line 75
    return-void
.end method

.method public setDepth(I)V
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/bilibili/tv/ebook/model/Chapter;->depth:I

    .line 83
    return-void
.end method

.method public setHtmlContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/bilibili/tv/ebook/model/Chapter;->htmlContent:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setHtmlFilePath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/bilibili/tv/ebook/model/Chapter;->htmlFilePath:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setPlainTextContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/bilibili/tv/ebook/model/Chapter;->plainTextContent:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/bilibili/tv/ebook/model/Chapter;->title:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Chapter{chapterIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bilibili/tv/ebook/model/Chapter;->chapterIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ebook/model/Chapter;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", htmlFilePath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ebook/model/Chapter;->htmlFilePath:Ljava/lang/String;

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
.end method
