.class public Lcom/bilibili/tv/ebook/model/ReadingProgress;
.super Ljava/lang/Object;
.source "ReadingProgress.java"


# instance fields
.field private bookId:Ljava/lang/String;

.field private currentChapterIndex:I

.field private currentPage:I

.field private fontSize:I

.field private lastReadTimestamp:J

.field private progressPercentage:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/16 v0, 0x10

    iput v0, p0, Lcom/bilibili/tv/ebook/model/ReadingProgress;->fontSize:I

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bilibili/tv/ebook/model/ReadingProgress;->lastReadTimestamp:J

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/model/ReadingProgress;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/bilibili/tv/ebook/model/ReadingProgress;->bookId:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public getBookId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/bilibili/tv/ebook/model/ReadingProgress;->bookId:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentChapterIndex()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/bilibili/tv/ebook/model/ReadingProgress;->currentChapterIndex:I

    return v0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/bilibili/tv/ebook/model/ReadingProgress;->currentPage:I

    return v0
.end method

.method public getFontSize()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/bilibili/tv/ebook/model/ReadingProgress;->fontSize:I

    return v0
.end method

.method public getLastReadTimestamp()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/bilibili/tv/ebook/model/ReadingProgress;->lastReadTimestamp:J

    return-wide v0
.end method

.method public getProgressPercentage()F
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/bilibili/tv/ebook/model/ReadingProgress;->progressPercentage:F

    return v0
.end method

.method public setBookId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/bilibili/tv/ebook/model/ReadingProgress;->bookId:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setCurrentChapterIndex(I)V
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/bilibili/tv/ebook/model/ReadingProgress;->currentChapterIndex:I

    .line 41
    return-void
.end method

.method public setCurrentPage(I)V
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/bilibili/tv/ebook/model/ReadingProgress;->currentPage:I

    .line 49
    return-void
.end method

.method public setFontSize(I)V
    .locals 0

    .prologue
    .line 72
    iput p1, p0, Lcom/bilibili/tv/ebook/model/ReadingProgress;->fontSize:I

    .line 73
    return-void
.end method

.method public setLastReadTimestamp(J)V
    .locals 1

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/bilibili/tv/ebook/model/ReadingProgress;->lastReadTimestamp:J

    .line 65
    return-void
.end method

.method public setProgressPercentage(F)V
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lcom/bilibili/tv/ebook/model/ReadingProgress;->progressPercentage:F

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReadingProgress{bookId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ebook/model/ReadingProgress;->bookId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentChapterIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bilibili/tv/ebook/model/ReadingProgress;->currentChapterIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", progressPercentage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bilibili/tv/ebook/model/ReadingProgress;->progressPercentage:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fontSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bilibili/tv/ebook/model/ReadingProgress;->fontSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateTimestamp()V
    .locals 2

    .prologue
    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bilibili/tv/ebook/model/ReadingProgress;->lastReadTimestamp:J

    .line 80
    return-void
.end method
