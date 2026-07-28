.class public Lcom/bilibili/tv/ebook/model/BookshelfItem;
.super Ljava/lang/Object;
.source "BookshelfItem.java"


# instance fields
.field private author:Ljava/lang/String;

.field private bookId:Ljava/lang/String;

.field private chapterIndex:I

.field private chapterTitle:Ljava/lang/String;

.field private fileExtension:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private lastReadTime:J

.field private progressPercentage:F

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/bilibili/tv/ebook/model/BookshelfItem;->bookId:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static fromBook(Lcom/bilibili/tv/ebook/model/Book;Lcom/bilibili/tv/ebook/model/ReadingProgress;Ljava/lang/String;)Lcom/bilibili/tv/ebook/model/BookshelfItem;
    .locals 4

    .prologue
    .line 101
    new-instance v1, Lcom/bilibili/tv/ebook/model/BookshelfItem;

    invoke-virtual {p0}, Lcom/bilibili/tv/ebook/model/Book;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bilibili/tv/ebook/model/BookshelfItem;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/bilibili/tv/ebook/model/Book;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->setTitle(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/bilibili/tv/ebook/model/Book;->getAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->setAuthor(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v1, p2}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->setFilePath(Ljava/lang/String;)V

    .line 108
    if-eqz p2, :cond_39

    .line 109
    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 110
    if-lez v0, :cond_39

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_39

    .line 111
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->setFileExtension(Ljava/lang/String;)V

    .line 116
    :cond_39
    if-eqz p1, :cond_7f

    .line 117
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->getCurrentChapterIndex()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->setChapterIndex(I)V

    .line 118
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->getProgressPercentage()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->setProgressPercentage(F)V

    .line 119
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->getLastReadTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->setLastReadTime(J)V

    .line 122
    invoke-virtual {p0}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7f

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->getCurrentChapterIndex()I

    move-result v0

    if-ltz v0, :cond_7f

    .line 123
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->getCurrentChapterIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_7f

    .line 124
    invoke-virtual {p0}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->getCurrentChapterIndex()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ebook/model/Chapter;

    .line 125
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->setChapterTitle(Ljava/lang/String;)V

    .line 129
    :cond_7f
    return-object v1
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bilibili/tv/ebook/model/BookshelfItem;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getBookId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/bilibili/tv/ebook/model/BookshelfItem;->bookId:Ljava/lang/String;

    return-object v0
.end method

.method public getChapterIndex()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/bilibili/tv/ebook/model/BookshelfItem;->chapterIndex:I

    return v0
.end method

.method public getChapterTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/bilibili/tv/ebook/model/BookshelfItem;->chapterTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getFileExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/bilibili/tv/ebook/model/BookshelfItem;->fileExtension:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/bilibili/tv/ebook/model/BookshelfItem;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getLastReadTime()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/bilibili/tv/ebook/model/BookshelfItem;->lastReadTime:J

    return-wide v0
.end method

.method public getProgressPercentage()F
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/bilibili/tv/ebook/model/BookshelfItem;->progressPercentage:F

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/bilibili/tv/ebook/model/BookshelfItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/bilibili/tv/ebook/model/BookshelfItem;->author:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setBookId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/bilibili/tv/ebook/model/BookshelfItem;->bookId:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setChapterIndex(I)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/bilibili/tv/ebook/model/BookshelfItem;->chapterIndex:I

    .line 63
    return-void
.end method

.method public setChapterTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/bilibili/tv/ebook/model/BookshelfItem;->chapterTitle:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setFileExtension(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/bilibili/tv/ebook/model/BookshelfItem;->fileExtension:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/bilibili/tv/ebook/model/BookshelfItem;->filePath:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setLastReadTime(J)V
    .locals 1

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/bilibili/tv/ebook/model/BookshelfItem;->lastReadTime:J

    .line 87
    return-void
.end method

.method public setProgressPercentage(F)V
    .locals 0

    .prologue
    .line 78
    iput p1, p0, Lcom/bilibili/tv/ebook/model/BookshelfItem;->progressPercentage:F

    .line 79
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/bilibili/tv/ebook/model/BookshelfItem;->title:Ljava/lang/String;

    .line 39
    return-void
.end method
