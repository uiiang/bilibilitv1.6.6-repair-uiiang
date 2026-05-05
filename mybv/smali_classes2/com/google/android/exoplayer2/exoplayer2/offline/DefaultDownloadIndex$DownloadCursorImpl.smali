.class final Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex$DownloadCursorImpl;
.super Ljava/lang/Object;
.source "DefaultDownloadIndex.java"

# interfaces
.implements Lcom/google/android/exoplayer2/offline/DownloadCursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DownloadCursorImpl"
.end annotation


# instance fields
.field private final cursor:Landroid/database/Cursor;


# direct methods
.method private constructor <init>(Landroid/database/Cursor;)V
    .registers 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex$DownloadCursorImpl;->cursor:Landroid/database/Cursor;

    .line 558
    return-void
.end method

.method synthetic constructor <init>(Landroid/database/Cursor;Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/database/Cursor;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex$1;

    .line 552
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex$DownloadCursorImpl;-><init>(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 582
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex$DownloadCursorImpl;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 583
    return-void
.end method

.method public getCount()I
    .registers 2

    .line 567
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex$DownloadCursorImpl;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getDownload()Lcom/google/android/exoplayer2/offline/Download;
    .registers 2

    .line 562
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex$DownloadCursorImpl;->cursor:Landroid/database/Cursor;

    # invokes: Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->getDownloadForCurrentRow(Landroid/database/Cursor;)Lcom/google/android/exoplayer2/offline/Download;
    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->access$100(Landroid/database/Cursor;)Lcom/google/android/exoplayer2/offline/Download;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .registers 2

    .line 572
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex$DownloadCursorImpl;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    return v0
.end method

.method public synthetic isAfterLast()Z
    .registers 2

    invoke-static {p0}, Lcom/google/android/exoplayer2/offline/DownloadCursor$-CC;->$default$isAfterLast(Lcom/google/android/exoplayer2/offline/DownloadCursor;)Z

    move-result v0

    return v0
.end method

.method public synthetic isBeforeFirst()Z
    .registers 2

    invoke-static {p0}, Lcom/google/android/exoplayer2/offline/DownloadCursor$-CC;->$default$isBeforeFirst(Lcom/google/android/exoplayer2/offline/DownloadCursor;)Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .registers 2

    .line 587
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex$DownloadCursorImpl;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    return v0
.end method

.method public synthetic isFirst()Z
    .registers 2

    invoke-static {p0}, Lcom/google/android/exoplayer2/offline/DownloadCursor$-CC;->$default$isFirst(Lcom/google/android/exoplayer2/offline/DownloadCursor;)Z

    move-result v0

    return v0
.end method

.method public synthetic isLast()Z
    .registers 2

    invoke-static {p0}, Lcom/google/android/exoplayer2/offline/DownloadCursor$-CC;->$default$isLast(Lcom/google/android/exoplayer2/offline/DownloadCursor;)Z

    move-result v0

    return v0
.end method

.method public synthetic moveToFirst()Z
    .registers 2

    invoke-static {p0}, Lcom/google/android/exoplayer2/offline/DownloadCursor$-CC;->$default$moveToFirst(Lcom/google/android/exoplayer2/offline/DownloadCursor;)Z

    move-result v0

    return v0
.end method

.method public synthetic moveToLast()Z
    .registers 2

    invoke-static {p0}, Lcom/google/android/exoplayer2/offline/DownloadCursor$-CC;->$default$moveToLast(Lcom/google/android/exoplayer2/offline/DownloadCursor;)Z

    move-result v0

    return v0
.end method

.method public synthetic moveToNext()Z
    .registers 2

    invoke-static {p0}, Lcom/google/android/exoplayer2/offline/DownloadCursor$-CC;->$default$moveToNext(Lcom/google/android/exoplayer2/offline/DownloadCursor;)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .registers 3
    .param p1, "position"    # I

    .line 577
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex$DownloadCursorImpl;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public synthetic moveToPrevious()Z
    .registers 2

    invoke-static {p0}, Lcom/google/android/exoplayer2/offline/DownloadCursor$-CC;->$default$moveToPrevious(Lcom/google/android/exoplayer2/offline/DownloadCursor;)Z

    move-result v0

    return v0
.end method
