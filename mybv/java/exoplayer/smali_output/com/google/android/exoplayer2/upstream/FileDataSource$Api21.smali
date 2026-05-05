.class final Lcom/google/android/exoplayer2/upstream/FileDataSource$Api21;
.super Ljava/lang/Object;
.source "FileDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/FileDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api21"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Throwable;)Z
    .registers 2
    .param p0, "x0"    # Ljava/lang/Throwable;

    .line 220
    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/FileDataSource$Api21;->isPermissionError(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method private static isPermissionError(Ljava/lang/Throwable;)Z
    .registers 3
    .param p0, "e"    # Ljava/lang/Throwable;

    .line 223
    instance-of v0, p0, Landroid/system/ErrnoException;

    if-eqz v0, :cond_f

    move-object v0, p0

    check-cast v0, Landroid/system/ErrnoException;

    iget v0, v0, Landroid/system/ErrnoException;->errno:I

    sget v1, Landroid/system/OsConstants;->EACCES:I

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method
