.class public abstract Lcom/google/android/exoplayer2/util/LibraryLoader;
.super Ljava/lang/Object;
.source "LibraryLoader.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LibraryLoader"


# instance fields
.field private isAvailable:Z

.field private loadAttempted:Z

.field private nativeLibraries:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>([Ljava/lang/String;)V
    .registers 2
    .param p1, "libraries"    # [Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->nativeLibraries:[Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public declared-synchronized isAvailable()Z
    .registers 6

    monitor-enter p0

    .line 55
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->loadAttempted:Z

    if-eqz v0, :cond_9

    .line 56
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->isAvailable:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_40

    monitor-exit p0

    return v0

    .line 58
    .end local p0    # "this":Lcom/google/android/exoplayer2/util/LibraryLoader;
    :cond_9
    const/4 v0, 0x1

    :try_start_a
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->loadAttempted:Z
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_40

    .line 60
    :try_start_c
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->nativeLibraries:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_1a

    aget-object v4, v1, v3

    .line 61
    .local v4, "lib":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/LibraryLoader;->loadLibrary(Ljava/lang/String;)V

    .line 60
    .end local v4    # "lib":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 63
    :cond_1a
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->isAvailable:Z
    :try_end_1c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_c .. :try_end_1c} :catch_1d
    .catchall {:try_start_c .. :try_end_1c} :catchall_40

    .line 68
    goto :goto_3c

    .line 64
    :catch_1d
    move-exception v0

    .line 67
    .local v0, "exception":Ljava/lang/UnsatisfiedLinkError;
    :try_start_1e
    const-string v1, "LibraryLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->nativeLibraries:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .end local v0    # "exception":Ljava/lang/UnsatisfiedLinkError;
    :goto_3c
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->isAvailable:Z
    :try_end_3e
    .catchall {:try_start_1e .. :try_end_3e} :catchall_40

    monitor-exit p0

    return v0

    .line 54
    :catchall_40
    move-exception v0

    monitor-exit p0

    goto :goto_44

    :goto_43
    throw v0

    :goto_44
    goto :goto_43
.end method

.method protected abstract loadLibrary(Ljava/lang/String;)V
.end method

.method public varargs declared-synchronized setLibraries([Ljava/lang/String;)V
    .registers 4
    .param p1, "libraries"    # [Ljava/lang/String;

    monitor-enter p0

    .line 49
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->loadAttempted:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v1, "Cannot set libraries after loading"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 50
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->nativeLibraries:[Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 51
    monitor-exit p0

    return-void

    .line 48
    .end local p0    # "this":Lcom/google/android/exoplayer2/util/LibraryLoader;
    .end local p1    # "libraries":[Ljava/lang/String;
    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method
