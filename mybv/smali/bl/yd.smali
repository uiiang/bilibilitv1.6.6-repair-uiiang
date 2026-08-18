.class public Lbl/yd;
.super Ljava/lang/Object;
.source "yd.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
.implements Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnExtraInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbl/yd$b;,
        Lbl/yd$c;,
        Lbl/yd$a;,
        Lbl/yd$d;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lbl/yh;

.field private c:Lbl/zi;

.field private d:Lbl/yx;

.field private e:Lbl/za;

.field private f:Lbl/ze;

.field private f89u:Lbl/yd$d;

.field private g:Lbl/yu;

.field private h:Ljava/util/concurrent/ExecutorService;

.field private i:Lbl/yt;

.field private j:Lbl/xd;

.field private k:Lbl/aaq;

.field private l:Lbl/aaq;

.field private m:Ljava/util/concurrent/Future;

.field private n:Lbl/yd$b;

.field private o:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field private p:Z

.field private q:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

.field private r:Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnExtraInfoListener;

.field private final s:Ljava/lang/Object;

.field private t:Z

.field private v:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field private w:Lbl/yd$c;

.field private x:Ltv/danmaku/videoplayer/core/context/IPlayerContext$PlayerEventListener;

.field private y:Lbl/yd$a;

.field private z:Lbl/yd$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbl/yh;Lbl/yt;Lbl/zi;Lbl/yx;Lbl/za;Lbl/ze;Lbl/yu;)V
    .locals 1
    .param p3    # Lbl/yt;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lbl/zi;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lbl/yx;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lbl/za;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lbl/ze;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lbl/yu;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lbl/yd;->h:Ljava/util/concurrent/ExecutorService;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/yd;->p:Z

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbl/yd;->s:Ljava/lang/Object;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/yd;->t:Z

    .line 69
    new-instance v0, Lbl/aaq;

    invoke-direct {v0, p0}, Lbl/aaq;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lbl/yd;->k:Lbl/aaq;

    .line 106
    iput-object p1, p0, Lbl/yd;->a:Landroid/content/Context;

    .line 107
    iput-object p2, p0, Lbl/yd;->b:Lbl/yh;

    .line 108
    iput-object p3, p0, Lbl/yd;->i:Lbl/yt;

    .line 109
    iput-object p5, p0, Lbl/yd;->d:Lbl/yx;

    .line 110
    iput-object p6, p0, Lbl/yd;->e:Lbl/za;

    .line 111
    iput-object p7, p0, Lbl/yd;->f:Lbl/ze;

    .line 112
    iput-object p8, p0, Lbl/yd;->g:Lbl/yu;

    .line 113
    iput-object p4, p0, Lbl/yd;->c:Lbl/zi;

    .line 114
    return-void
.end method

.method private a(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;Lcom/bilibili/lib/media/resource/PlayIndex;)Lbl/yk$a;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lbl/yd;->e:Lbl/za;

    if-nez v0, :cond_6

    .line 272
    const/4 v0, 0x0

    .line 274
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lbl/yd;->e:Lbl/za;

    invoke-virtual {v0, p1, p2}, Lbl/za;->a(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;Lcom/bilibili/lib/media/resource/PlayIndex;)Lbl/yk$a;

    move-result-object v0

    goto :goto_5
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 716
    .line 718
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 753
    :cond_7
    :goto_7
    return-object v1

    .line 721
    :cond_8
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 722
    const-string v0, "content"

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 726
    :try_start_18
    const-string v0, "PlayerController"

    const-string v2, "resolving FileDescriptor for ijk..."

    invoke-static {v0, v2}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "r"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_28} :catch_c1
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_28} :catch_7d
    .catch Ljava/lang/SecurityException; {:try_start_18 .. :try_end_28} :catch_c3

    move-result-object v0

    move-object v2, v0

    .line 731
    :goto_2a
    if-eqz v2, :cond_a3

    .line 733
    :try_start_2c
    iget-object v0, p0, Lbl/yd;->q:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    const-string v4, "resolveFd"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v0, v4, v5}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->act(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 734
    instance-of v4, v0, Ljava/lang/Integer;

    if-eqz v4, :cond_a3

    .line 735
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 736
    const-string v4, "PlayerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fd resolved: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    const/4 v4, -0x1

    if-eq v0, v4, :cond_a3

    .line 738
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pipe:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_75
    .catch Ljava/lang/NullPointerException; {:try_start_2c .. :try_end_75} :catch_80
    .catch Ljava/lang/SecurityException; {:try_start_2c .. :try_end_75} :catch_bf

    move-result-object v0

    .line 745
    :goto_76
    if-eqz v2, :cond_7

    .line 749
    :try_start_78
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_a5

    :goto_7b
    move-object v1, v0

    .line 753
    goto :goto_7

    .line 728
    :catch_7d
    move-exception v0

    :goto_7e
    move-object v2, v1

    .line 729
    goto :goto_2a

    .line 741
    :catch_80
    move-exception v0

    .line 742
    :goto_81
    const-string v4, "PlayerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t open "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Ltv/danmaku/android/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a3
    move-object v0, v1

    goto :goto_76

    .line 750
    :catch_a5
    move-exception v1

    .line 751
    const-string v2, "PlayerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error when closing afd! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ltv/danmaku/android/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7b

    .line 741
    :catch_bf
    move-exception v0

    goto :goto_81

    .line 728
    :catch_c1
    move-exception v0

    goto :goto_7e

    :catch_c3
    move-exception v0

    goto :goto_7e
.end method

.method private a(I)V
    .locals 4

    .prologue
    const/16 v0, 0xd

    .line 567
    const/4 v1, 0x3

    if-le p1, v1, :cond_16

    .line 569
    :try_start_5
    iget-object v1, p0, Lbl/yd;->s:Ljava/lang/Object;

    monitor-enter v1
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_1a

    .line 570
    if-le p1, v0, :cond_b

    move p1, v0

    .line 573
    :cond_b
    :try_start_b
    iget-object v0, p0, Lbl/yd;->s:Ljava/lang/Object;

    add-int/lit8 v2, p1, -0x3

    mul-int/lit8 v2, v2, 0x32

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 574
    monitor-exit v1

    .line 579
    :cond_16
    :goto_16
    return-void

    .line 574
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_17

    :try_start_19
    throw v0
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_1a} :catch_1a

    .line 575
    :catch_1a
    move-exception v0

    .line 576
    const-string v1, "PlayerController"

    invoke-static {v1, v0}, Ltv/danmaku/android/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16
.end method

.method private a(Lcom/bilibili/lib/media/resource/PlayIndex;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bilibili/lib/media/resolver/exception/ResolveException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 686
    invoke-virtual {p1, p2}, Lcom/bilibili/lib/media/resource/PlayIndex;->a(I)Lcom/bilibili/lib/media/resource/Segment;

    move-result-object v0

    iget-object v0, v0, Lcom/bilibili/lib/media/resource/Segment;->a:Ljava/lang/String;

    if-eqz v0, :cond_15

    invoke-virtual {p1, p2}, Lcom/bilibili/lib/media/resource/PlayIndex;->a(I)Lcom/bilibili/lib/media/resource/Segment;

    move-result-object v0

    iget-object v0, v0, Lcom/bilibili/lib/media/resource/Segment;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_45

    :cond_15
    move v0, v1

    .line 687
    :goto_16
    iget-object v2, p0, Lbl/yd;->f89u:Lbl/yd$d;

    if-eqz v2, :cond_20

    iget-object v1, p0, Lbl/yd;->f89u:Lbl/yd$d;

    invoke-interface {v1, p1, p2}, Lbl/yd$d;->a(Lcom/bilibili/lib/media/resource/PlayIndex;I)Z

    move-result v1

    .line 688
    :cond_20
    if-nez v0, :cond_24

    if-nez v1, :cond_44

    .line 690
    :cond_24
    :try_start_24
    iget-object v0, p0, Lbl/yd;->b:Lbl/yh;

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lbl/yd;->a(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;Lcom/bilibili/lib/media/resource/PlayIndex;)Lbl/yk$a;

    move-result-object v0

    .line 691
    if-eqz v0, :cond_44

    iget-object v1, p0, Lbl/yd;->a:Landroid/content/Context;

    invoke-interface {v0, v1, p2}, Lbl/yk$a;->a(Landroid/content/Context;I)Lcom/bilibili/lib/media/resource/Segment;

    move-result-object v0

    if-eqz v0, :cond_44

    iget-object v1, v0, Lcom/bilibili/lib/media/resource/Segment;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 705
    :cond_44
    :goto_44
    return-void

    .line 686
    :cond_45
    const/4 v0, 0x0

    goto :goto_16

    .line 694
    :cond_47
    iget-object v1, v0, Lcom/bilibili/lib/media/resource/Segment;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 695
    const-string v2, "file"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 696
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/lib/media/resource/Segment;->a:Ljava/lang/String;

    .line 698
    :cond_5f
    iget-object v1, p1, Lcom/bilibili/lib/media/resource/PlayIndex;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 699
    const-string v1, "PlayerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "player segment url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/bilibili/lib/media/resource/Segment;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ltv/danmaku/android/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7e
    .catch Lcom/bilibili/lib/media/resolver/exception/ResolveException; {:try_start_24 .. :try_end_7e} :catch_7f

    goto :goto_44

    .line 700
    :catch_7f
    move-exception v0

    .line 701
    const-string v1, "PlayerController"

    invoke-static {v1, v0}, Ltv/danmaku/android/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 702
    throw v0
.end method

.method private a(ILandroid/os/Bundle;)Z
    .locals 12

    .prologue
    .line 389
    iget-object v0, p0, Lbl/yd;->b:Lbl/yh;

    iget-object v4, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    .line 390
    invoke-direct {p0, p1, p2}, Lbl/yd;->b(ILandroid/os/Bundle;)Z

    move-result v0

    .line 391
    iget-object v5, p0, Lbl/yd;->y:Lbl/yd$a;

    .line 392
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 393
    sparse-switch p1, :sswitch_data_416

    .line 562
    const/4 v0, 0x1

    :goto_13
    :sswitch_13
    return v0

    .line 396
    :sswitch_14
    const-string v0, "url_resolved"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 397
    const/4 v0, 0x1

    goto :goto_13

    .line 399
    :cond_1f
    const-string v0, "retry_counter"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 400
    if-ltz v2, :cond_2b

    const/4 v0, 0x5

    if-le v2, v0, :cond_3a

    .line 401
    :cond_2b
    const-string v0, "PlayerController"

    const-string v1, "retry too much times onNativeInvoke"

    invoke-static {v0, v1}, Ltv/danmaku/android/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "retry too much times onNativeInvoke"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_3a
    if-eqz v4, :cond_50

    iget-object v0, v4, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->getMediaResource()Lcom/bilibili/lib/media/resource/MediaResource;

    move-result-object v0

    if-eqz v0, :cond_50

    iget-object v0, v4, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->getMediaResource()Lcom/bilibili/lib/media/resource/MediaResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/lib/media/resource/MediaResource;->d()Lcom/bilibili/lib/media/resource/PlayIndex;

    move-result-object v0

    if-nez v0, :cond_52

    .line 405
    :cond_50
    const/4 v0, 0x1

    goto :goto_13

    .line 407
    :cond_52
    const/4 v1, 0x3

    if-le v2, v1, :cond_58

    .line 408
    invoke-direct {p0}, Lbl/yd;->h()V

    .line 410
    :cond_58
    const-string v1, "segment_index"

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 412
    :try_start_5f
    invoke-direct {p0, v0, v1}, Lbl/yd;->a(Lcom/bilibili/lib/media/resource/PlayIndex;I)V
    :try_end_62
    .catch Lcom/bilibili/lib/media/resolver/exception/ResolveException; {:try_start_5f .. :try_end_62} :catch_e5

    .line 416
    :goto_62
    invoke-virtual {v0, v1}, Lcom/bilibili/lib/media/resource/PlayIndex;->a(I)Lcom/bilibili/lib/media/resource/Segment;

    move-result-object v0

    .line 417
    invoke-direct {p0, v0, v2}, Lbl/yd;->getNextSegmentUrl(Lcom/bilibili/lib/media/resource/Segment;I)Ljava/lang/String;

    move-result-object v1

    .line 418
    const-string v3, "PlayerController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "segment url (retry="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "): "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v1, :cond_ef

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v8, 0x64

    if-le v0, v8, :cond_ef

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    const/16 v9, 0x64

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "..."

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_a5
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const v0, 0x20007

    if-ne p1, v0, :cond_f8

    .line 420
    iget-object v0, p0, Lbl/yd;->b:Lbl/yh;

    iget-boolean v0, v0, Lbl/yh;->b:Z

    if-eqz v0, :cond_f1

    .line 421
    iget-object v0, p0, Lbl/yd;->a:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lbl/yd;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 422
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_412

    .line 425
    :goto_c7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "async:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 433
    :cond_da
    :goto_da
    const-string v0, "url"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const/4 v0, 0x3

    if-gt v2, v0, :cond_129

    .line 435
    const/4 v0, 0x1

    goto/16 :goto_13

    .line 413
    :catch_e5
    move-exception v3

    .line 414
    const-string v3, "PlayerController"

    const-string v7, "exception happened when segment update in segment"

    invoke-static {v3, v7}, Ltv/danmaku/android/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_62

    :cond_ef
    move-object v0, v1

    .line 418
    goto :goto_a5

    .line 427
    :cond_f1
    iget-object v0, v4, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->applyUriHookForIjkPlayer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_da

    .line 429
    :cond_f8
    if-eqz v5, :cond_da

    invoke-virtual {v5, p1, v6, v1}, Lbl/yd$a;->a(ILandroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_da

    .line 430
    const-string v0, "PlayerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android last: url after handled by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string v0, "url"

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_da

    .line 437
    :cond_129
    invoke-direct {p0}, Lbl/yd;->i()V

    .line 438
    const/4 v0, 0x1

    goto/16 :goto_13

    .line 440
    :sswitch_12f
    iget-object v0, p0, Lbl/yd;->q:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    .line 441
    if-nez v0, :cond_136

    .line 442
    const/4 v0, 0x0

    goto/16 :goto_13

    .line 444
    :cond_136
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->getPlayerConfig()Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;

    move-result-object v0

    iget v0, v0, Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;->mPlayer:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_142

    .line 445
    const/4 v0, 0x1

    goto/16 :goto_13

    .line 447
    :cond_142
    const-string v0, "url"

    const-string v1, ""

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 448
    if-eqz v5, :cond_152

    invoke-virtual {v5, p1, v6, v0}, Lbl/yd$a;->a(ILandroid/os/Bundle;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_155

    .line 449
    :cond_152
    const/4 v0, 0x1

    goto/16 :goto_13

    .line 451
    :cond_155
    const-string v1, "PlayerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android last: oldUrl after handled by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string v1, "url"

    const-string v2, "url"

    invoke-virtual {v6, v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const/4 v0, 0x1

    goto/16 :goto_13

    .line 458
    :sswitch_185
    const-string v0, "url_resolved"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_197

    .line 459
    const-string v0, "url_resolved"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 460
    const/4 v0, 0x1

    goto/16 :goto_13

    .line 462
    :cond_197
    iget-object v0, v4, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->getMediaResource()Lcom/bilibili/lib/media/resource/MediaResource;

    move-result-object v2

    .line 463
    const-string v0, "segment_index"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 464
    iget-object v0, p0, Lbl/yd;->a:Landroid/content/Context;

    invoke-static {v0}, Lbl/qv;->a(Landroid/content/Context;)I

    move-result v3

    .line 465
    const/4 v0, -0x1

    if-ne v3, v0, :cond_1b4

    .line 466
    const-string v0, "PlayerController"

    const-string v1, "Unknown network!!"

    invoke-static {v0, v1}, Ltv/danmaku/android/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :cond_1b4
    if-eqz v2, :cond_1ba

    iget v0, v2, Lcom/bilibili/lib/media/resource/MediaResource;->c:I

    if-eq v0, v3, :cond_22c

    :cond_1ba
    const/4 v0, 0x1

    .line 469
    :goto_1bb
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 470
    const-string v1, "check resource network: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    if-nez v2, :cond_22e

    const/16 v1, -0x194

    :goto_1c9
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 472
    const-string v1, ","

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 474
    const-string v1, "PlayerController"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v1, "retry_counter"

    const/4 v8, -0x1

    invoke-virtual {p2, v1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 476
    const-string v8, "PlayerController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ON_RETRY: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v8, "url"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 478
    const-string v9, "PlayerController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "native url: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v9, ".ts"

    invoke-static {v8, v9}, Lbl/yd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_231

    .line 480
    const-string v0, "PlayerController"

    const-string v1, "skip all steps for ts"

    invoke-static {v0, v1}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const/4 v0, 0x0

    goto/16 :goto_13

    .line 468
    :cond_22c
    const/4 v0, 0x0

    goto :goto_1bb

    .line 471
    :cond_22e
    iget v1, v2, Lcom/bilibili/lib/media/resource/MediaResource;->c:I

    goto :goto_1c9

    .line 483
    :cond_231
    const-string v9, ".m3u8"

    invoke-static {v8, v9}, Lbl/yd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_24e

    .line 484
    const/4 v0, 0x1

    if-ge v1, v0, :cond_246

    .line 485
    const-string v0, "PlayerController"

    const-string v1, "return true directly for m3u8 first time"

    invoke-static {v0, v1}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const/4 v0, 0x1

    goto/16 :goto_13

    .line 488
    :cond_246
    const-string v0, "PlayerController"

    const-string v9, "resolve new url for m3u8"

    invoke-static {v0, v9}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const/4 v0, 0x1

    .line 491
    :cond_24e
    if-nez v0, :cond_253

    const/4 v9, 0x3

    if-le v1, v9, :cond_32a

    .line 492
    :cond_253
    if-eqz v0, :cond_2d7

    .line 493
    const/4 v0, 0x0

    .line 502
    :goto_256
    if-nez v0, :cond_32a

    .line 503
    invoke-direct {p0}, Lbl/yd;->h()V

    .line 504
    invoke-direct {p0, v1}, Lbl/yd;->a(I)V

    .line 505
    iget-object v0, p0, Lbl/yd;->b:Lbl/yh;

    iget-boolean v0, v0, Lbl/yh;->b:Z

    if-nez v0, :cond_32a

    .line 507
    :try_start_264
    rem-int/lit8 v0, v1, 0xa

    const/4 v9, 0x4

    if-ne v0, v9, :cond_26c

    .line 508
    invoke-static {}, Lbl/pb;->c()V

    .line 510
    :cond_26c
    invoke-virtual {p0, v4}, Lbl/yd;->a(Lcom/bilibili/tv/player/basic/context/PlayerParams;)Lcom/bilibili/lib/media/resource/MediaResource;

    move-result-object v0

    .line 511
    const-string v9, "PlayerController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "new resource: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    if-eqz v0, :cond_40f

    invoke-virtual {v0}, Lcom/bilibili/lib/media/resource/MediaResource;->c()Z

    move-result v9

    if-eqz v9, :cond_40f

    .line 513
    const-string v9, "PlayerController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "new resource network: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v0, Lcom/bilibili/lib/media/resource/MediaResource;->c:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b4
    .catch Lcom/bilibili/lib/media/resolver/exception/ResolveException; {:try_start_264 .. :try_end_2b4} :catch_324

    :goto_2b4
    move-object v3, v0

    .line 522
    :goto_2b5
    if-eqz v3, :cond_409

    .line 523
    const-string v0, ".m4s"

    invoke-static {v8, v0}, Lbl/yd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32c

    .line 524
    const-string v0, "url"

    iget-object v1, v3, Lcom/bilibili/lib/media/resource/MediaResource;->dash:Lorg/json/JSONObject;

    invoke-static {v8, v1}, Lmybl/VideoViewParams;->CloestURL(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string v0, "PlayerController"

    const-string v1, "skip other steps for ijkdash"

    invoke-static {v0, v1}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    invoke-direct {p0}, Lbl/yd;->i()V

    .line 527
    const/4 v0, 0x1

    goto/16 :goto_13

    .line 495
    :cond_2d7
    if-eqz v5, :cond_322

    add-int/lit8 v0, v1, -0x3

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v5, v0, p1, v6, v2}, Lbl/yd$a;->a(IILandroid/os/Bundle;Lcom/bilibili/lib/media/resource/MediaResource;)Z

    move-result v0

    if-eqz v0, :cond_322

    const/4 v0, 0x1

    .line 496
    :goto_2e4
    if-nez v0, :cond_2f4

    iget-object v9, p0, Lbl/yd;->z:Lbl/yd$a;

    if-eqz v9, :cond_2f4

    .line 497
    iget-object v0, p0, Lbl/yd;->z:Lbl/yd$a;

    add-int/lit8 v9, v1, -0x3

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v0, v9, p1, v6, v2}, Lbl/yd$a;->a(IILandroid/os/Bundle;Lcom/bilibili/lib/media/resource/MediaResource;)Z

    move-result v0

    .line 500
    :cond_2f4
    const-string v9, "PlayerController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "before retry: url after handled by "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_256

    .line 495
    :cond_322
    const/4 v0, 0x0

    goto :goto_2e4

    .line 516
    :catch_324
    move-exception v0

    .line 517
    const-string v3, "PlayerController"

    invoke-static {v3, v0}, Ltv/danmaku/android/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_32a
    move-object v3, v2

    goto :goto_2b5

    .line 529
    :cond_32c
    invoke-virtual {v3}, Lcom/bilibili/lib/media/resource/MediaResource;->d()Lcom/bilibili/lib/media/resource/PlayIndex;

    move-result-object v2

    .line 530
    if-eqz v2, :cond_409

    .line 532
    :try_start_332
    invoke-direct {p0, v2, v7}, Lbl/yd;->a(Lcom/bilibili/lib/media/resource/PlayIndex;I)V
    :try_end_335
    .catch Lcom/bilibili/lib/media/resolver/exception/ResolveException; {:try_start_332 .. :try_end_335} :catch_3cf

    .line 533
    const/4 v0, 0x0

    .line 538
    :goto_336
    invoke-virtual {v2, v7}, Lcom/bilibili/lib/media/resource/PlayIndex;->a(I)Lcom/bilibili/lib/media/resource/Segment;

    move-result-object v2

    .line 539
    invoke-direct {p0, v2, v1}, Lbl/yd;->getNextSegmentUrl(Lcom/bilibili/lib/media/resource/Segment;I)Ljava/lang/String;

    move-result-object v2

    .line 540
    const-string v7, "PlayerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "final url (retry="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "): "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v2, :cond_3f9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v9, 0x64

    if-le v1, v9, :cond_3f9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    const/16 v10, 0x64

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "..."

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_379
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    if-eqz v5, :cond_3bc

    invoke-virtual {v5, p1, v6, v2}, Lbl/yd$a;->a(ILandroid/os/Bundle;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3bc

    .line 542
    const-string v1, "url"

    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 543
    const-string v1, "PlayerController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "last: url after handled by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    :cond_3bc
    if-eqz v0, :cond_3fc

    .line 546
    const-string v0, "url"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const/4 v0, 0x0

    .line 554
    :goto_3c6
    iget-object v1, v4, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iput-object v3, v1, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    .line 555
    invoke-direct {p0}, Lbl/yd;->i()V

    goto/16 :goto_13

    .line 534
    :catch_3cf
    move-exception v0

    .line 535
    instance-of v8, v0, Lcom/bilibili/tv/player/basic/UrlHandleException;

    if-eqz v8, :cond_3f7

    check-cast v0, Lcom/bilibili/tv/player/basic/UrlHandleException;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/UrlHandleException;->a()Z

    move-result v0

    if-eqz v0, :cond_3f7

    const/4 v0, 0x1

    .line 536
    :goto_3dd
    const-string v8, "PlayerController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exception happened when segment update in http open: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Ltv/danmaku/android/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_336

    .line 535
    :cond_3f7
    const/4 v0, 0x0

    goto :goto_3dd

    :cond_3f9
    move-object v1, v2

    .line 540
    goto/16 :goto_379

    .line 549
    :cond_3fc
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_407

    .line 550
    const-string v0, "url"

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    :cond_407
    const/4 v0, 0x1

    goto :goto_3c6

    .line 559
    :cond_409
    invoke-direct {p0}, Lbl/yd;->i()V

    .line 560
    const/4 v0, 0x1

    goto/16 :goto_13

    :cond_40f
    move-object v0, v2

    goto/16 :goto_2b4

    :cond_412
    move-object v1, v0

    goto/16 :goto_c7

    .line 393
    nop

    :sswitch_data_416
    .sparse-switch
        0x10025 -> :sswitch_14
        0x10026 -> :sswitch_12f
        0x20001 -> :sswitch_13
        0x20003 -> :sswitch_185
        0x20005 -> :sswitch_185
        0x20007 -> :sswitch_14
    .end sparse-switch
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 582
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_d
    move v0, v1

    .line 593
    :goto_e
    return v0

    .line 586
    :cond_f
    :try_start_f
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 587
    if-eqz v0, :cond_36

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_36

    .line 588
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Lbl/kt;->g(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2e} :catch_30

    move-result v0

    goto :goto_e

    .line 590
    :catch_30
    move-exception v0

    .line 591
    const-string v2, "PlayerController"

    invoke-static {v2, p0, v0}, Ltv/danmaku/android/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_36
    move v0, v1

    .line 593
    goto :goto_e
.end method

.method private b(Lbl/yt;)Ljava/util/concurrent/Future;
    .locals 1

    .prologue
    .line 133
    new-instance v0, Lbl/yd$1;

    invoke-direct {v0, p0, p1}, Lbl/yd$1;-><init>(Lbl/yd;Lbl/yt;)V

    invoke-virtual {p0, v0}, Lbl/yd;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method private b(ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lbl/yd;->r:Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnExtraInfoListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lbl/yd;->r:Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnExtraInfoListener;

    invoke-interface {v0, p1, p2}, Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnExtraInfoListener;->onNativeInvoke(ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private e()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 304
    invoke-virtual {p0}, Lbl/yd;->c()Lbl/yh;

    move-result-object v2

    iget-object v2, v2, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    .line 305
    iget-boolean v3, p0, Lbl/yd;->p:Z

    if-nez v3, :cond_17

    .line 306
    iget-object v1, v2, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget v1, v1, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mPlayerCompletionAction:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_16

    .line 307
    invoke-direct {p0}, Lbl/yd;->f()V

    .line 333
    :cond_16
    :goto_16
    return v0

    .line 311
    :cond_17
    if-eqz v2, :cond_20

    .line 312
    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget v2, v2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mPlayerCompletionAction:I

    packed-switch v2, :pswitch_data_4c

    :cond_20
    :goto_20
    :pswitch_20
    move v0, v1

    .line 333
    goto :goto_16

    .line 314
    :pswitch_22
    invoke-virtual {p0, v0}, Lbl/yd;->a(Z)I

    goto :goto_20

    .line 317
    :pswitch_26
    invoke-direct {p0}, Lbl/yd;->g()Lcom/bilibili/lib/media/resource/PlayIndex;

    move-result-object v2

    .line 318
    invoke-virtual {p0}, Lbl/yd;->c()Lbl/yh;

    move-result-object v3

    iget-boolean v3, v3, Lbl/yh;->b:Z

    if-nez v3, :cond_3a

    if-eqz v2, :cond_40

    invoke-virtual {v2}, Lcom/bilibili/lib/media/resource/PlayIndex;->c()Z

    move-result v2

    if-nez v2, :cond_40

    .line 319
    :cond_3a
    iget-object v2, p0, Lbl/yd;->q:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-interface {v2, v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->play(Z)V

    goto :goto_20

    .line 322
    :cond_40
    invoke-virtual {p0}, Lbl/yd;->a()Ljava/util/concurrent/Future;

    goto :goto_20

    .line 326
    :pswitch_44
    invoke-direct {p0}, Lbl/yd;->f()V

    goto :goto_20

    .line 329
    :pswitch_48
    invoke-virtual {p0, v1}, Lbl/yd;->a(Z)I

    goto :goto_20

    .line 312
    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_22
        :pswitch_20
        :pswitch_26
        :pswitch_44
        :pswitch_48
    .end packed-switch
.end method

.method private f()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lbl/yd;->q:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->willAttachToService(Z)V

    .line 338
    invoke-virtual {p0}, Lbl/yd;->b()V

    .line 339
    iget-object v0, p0, Lbl/yd;->n:Lbl/yd$b;

    if-eqz v0, :cond_12

    .line 340
    iget-object v0, p0, Lbl/yd;->n:Lbl/yd$b;

    invoke-interface {v0}, Lbl/yd$b;->c()V

    .line 342
    :cond_12
    return-void
.end method

.method private g()Lcom/bilibili/lib/media/resource/PlayIndex;
    .locals 2

    .prologue
    .line 345
    invoke-virtual {p0}, Lbl/yd;->c()Lbl/yh;

    move-result-object v0

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    .line 346
    if-eqz v0, :cond_10

    iget-object v1, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v1}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->getMediaResource()Lcom/bilibili/lib/media/resource/MediaResource;

    move-result-object v1

    if-nez v1, :cond_12

    .line 347
    :cond_10
    const/4 v0, 0x0

    .line 349
    :goto_11
    return-object v0

    :cond_12
    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->getMediaResource()Lcom/bilibili/lib/media/resource/MediaResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/lib/media/resource/MediaResource;->d()Lcom/bilibili/lib/media/resource/PlayIndex;

    move-result-object v0

    goto :goto_11
.end method

.method private getNextSegmentUrl(Lcom/bilibili/lib/media/resource/Segment;I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 613
    if-nez p1, :cond_4

    .line 614
    const/4 v0, 0x0

    .line 636
    :goto_3
    return-object v0

    .line 617
    :cond_4
    if-gtz p2, :cond_30

    .line 618
    invoke-direct {p0, p1}, Lbl/yd;->selectBestCdnUrl(Lcom/bilibili/lib/media/resource/Segment;)Ljava/lang/String;

    move-result-object v1

    .line 619
    const-string v2, "PlayerController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CDN Race] Selected URL, backup_urls: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p1, Lcom/bilibili/lib/media/resource/Segment;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_2e

    iget-object v0, p1, Lcom/bilibili/lib/media/resource/Segment;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_21
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 620
    goto :goto_3

    .line 619
    :cond_2e
    const/4 v0, 0x0

    goto :goto_21

    .line 623
    :cond_30
    iget-object v0, p1, Lcom/bilibili/lib/media/resource/Segment;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_3c

    iget-object v0, p1, Lcom/bilibili/lib/media/resource/Segment;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 624
    :cond_3c
    const-string v0, "PlayerController"

    const-string v1, "No backup urls, using primary url"

    invoke-static {v0, v1}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    iget-object v0, p1, Lcom/bilibili/lib/media/resource/Segment;->a:Ljava/lang/String;

    goto :goto_3

    .line 628
    :cond_46
    add-int/lit8 v1, p2, -0x1

    .line 629
    iget-object v0, p1, Lcom/bilibili/lib/media/resource/Segment;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_81

    .line 630
    iget-object v0, p1, Lcom/bilibili/lib/media/resource/Segment;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 631
    const-string v2, "PlayerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using backup_url["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "], total backups: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/bilibili/lib/media/resource/Segment;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 635
    :cond_81
    const-string v0, "PlayerController"

    const-string v1, "No more backup urls, using primary url"

    invoke-static {v0, v1}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    iget-object v0, p1, Lcom/bilibili/lib/media/resource/Segment;->a:Ljava/lang/String;

    goto/16 :goto_3
.end method

.method private h()V
    .locals 3

    .prologue
    .line 597
    iget-object v0, p0, Lbl/yd;->r:Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnExtraInfoListener;

    if-eqz v0, :cond_f

    .line 598
    iget-object v0, p0, Lbl/yd;->r:Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnExtraInfoListener;

    const v1, 0x10018

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnExtraInfoListener;->onExtraInfo(I[Ljava/lang/Object;)V

    .line 600
    :cond_f
    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    .line 603
    iget-object v0, p0, Lbl/yd;->r:Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnExtraInfoListener;

    if-eqz v0, :cond_f

    .line 604
    iget-object v0, p0, Lbl/yd;->r:Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnExtraInfoListener;

    const v1, 0x10019

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnExtraInfoListener;->onExtraInfo(I[Ljava/lang/Object;)V

    .line 606
    :cond_f
    return-void
.end method

.method private selectBestCdnUrl(Lcom/bilibili/lib/media/resource/Segment;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 640
    iget-object v0, p1, Lcom/bilibili/lib/media/resource/Segment;->a:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 641
    const/4 v0, 0x0

    .line 681
    :goto_6
    return-object v0

    .line 644
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 645
    const-string v4, "PlaySpeed"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[YD_CDN_SELECT_START] selectBestCdnUrl(), primaryUrl="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p1, Lcom/bilibili/lib/media/resource/Segment;->a:Ljava/lang/String;

    const/16 v6, 0x50

    iget-object v7, p1, Lcom/bilibili/lib/media/resource/Segment;->a:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "..., backupCount="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p1, Lcom/bilibili/lib/media/resource/Segment;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_93

    iget-object v0, p1, Lcom/bilibili/lib/media/resource/Segment;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3e
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 648
    iget-object v4, p1, Lcom/bilibili/lib/media/resource/Segment;->a:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 650
    iget-object v4, p1, Lcom/bilibili/lib/media/resource/Segment;->e:Ljava/util/ArrayList;

    if-eqz v4, :cond_64

    iget-object v4, p1, Lcom/bilibili/lib/media/resource/Segment;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_64

    .line 651
    iget-object v4, p1, Lcom/bilibili/lib/media/resource/Segment;->e:Ljava/util/ArrayList;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 654
    :cond_64
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_95

    .line 655
    iget-object v0, p1, Lcom/bilibili/lib/media/resource/Segment;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 656
    sput-object v0, Lmybl/VideoViewParams;->currentCdn:Ljava/lang/String;

    .line 657
    const-string v1, "PlayerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CDN Race] Only one URL, cdn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v0, p1, Lcom/bilibili/lib/media/resource/Segment;->a:Ljava/lang/String;

    goto/16 :goto_6

    :cond_93
    move v0, v1

    .line 645
    goto :goto_3e

    .line 661
    :cond_95
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 662
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bf

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 663
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    .line 664
    invoke-static {v6}, Lmybl/CdnSelector;->getCdnScore(Ljava/lang/String;)I

    move-result v7

    .line 665
    new-instance v8, Lmybl/CdnSelector$CdnUrlInfo;

    invoke-direct {v8, v0, v6, v7}, Lmybl/CdnSelector$CdnUrlInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9e

    .line 668
    :cond_bf
    iget-object v0, p0, Lbl/yd;->a:Landroid/content/Context;

    sget-object v5, Lmybl/VideoViewParams;->currentVideoId:Ljava/lang/String;

    invoke-static {v0, v5, v4}, Lmybl/CdnSelector;->selectBestUrl(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Lmybl/CdnSelector$RaceResult;

    move-result-object v4

    .line 670
    const-string v5, "PlaySpeed"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[YD_CDN_SELECT_END] selectBestCdnUrl() done, winner="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v4, :cond_164

    iget-object v0, v4, Lmybl/CdnSelector$RaceResult;->winningCdn:Ljava/lang/String;

    :goto_d8
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", raceTime="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v4, :cond_168

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v4, Lmybl/CdnSelector$RaceResult;->raceTime:J

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "ms"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_f9
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", total elapsed="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    if-eqz v4, :cond_16b

    iget-object v0, v4, Lmybl/CdnSelector$RaceResult;->winningUrl:Ljava/lang/String;

    if-eqz v0, :cond_16b

    .line 673
    iget-object v0, v4, Lmybl/CdnSelector$RaceResult;->winningCdn:Ljava/lang/String;

    sput-object v0, Lmybl/VideoViewParams;->currentCdn:Ljava/lang/String;

    .line 674
    const-string v0, "PlayerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CDN Race] Winner: cdn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v4, Lmybl/CdnSelector$RaceResult;->winningCdn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v4, Lmybl/CdnSelector$RaceResult;->winningUrl:Ljava/lang/String;

    const/16 v5, 0x64

    iget-object v6, v4, Lmybl/CdnSelector$RaceResult;->winningUrl:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-object v0, v4, Lmybl/CdnSelector$RaceResult;->winningUrl:Ljava/lang/String;

    goto/16 :goto_6

    .line 670
    :cond_164
    const-string v0, "null"

    goto/16 :goto_d8

    :cond_168
    const-string v0, "null"

    goto :goto_f9

    .line 678
    :cond_16b
    iget-object v0, p1, Lcom/bilibili/lib/media/resource/Segment;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 679
    sput-object v0, Lmybl/VideoViewParams;->currentCdn:Ljava/lang/String;

    .line 680
    const-string v1, "PlayerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CDN Race] No winner, using primary url, cdn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object v0, p1, Lcom/bilibili/lib/media/resource/Segment;->a:Ljava/lang/String;

    goto/16 :goto_6
.end method


# virtual methods
.method public a(ILbl/yh;)I
    .locals 8

    .prologue
    const/4 v0, -0x1

    .line 278
    iget-object v1, p2, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v1}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->getResolveParamsArray()[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v2

    .line 279
    if-eqz v2, :cond_13

    array-length v1, v2

    if-lez v1, :cond_13

    if-ltz p1, :cond_13

    array-length v1, v2

    if-lt p1, v1, :cond_15

    :cond_13
    move p1, v0

    .line 300
    :goto_14
    return p1

    .line 282
    :cond_15
    iget-object v1, p2, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v1}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v3

    .line 283
    aget-object v4, v2, p1

    .line 284
    iget-object v1, p0, Lbl/yd;->w:Lbl/yd$c;

    if-eqz v1, :cond_91

    iget-object v0, p0, Lbl/yd;->w:Lbl/yd$c;

    invoke-interface {v0, v4, p1}, Lbl/yd$c;->a(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;I)I

    move-result v1

    .line 285
    :goto_29
    if-lez v1, :cond_93

    move v0, v1

    :goto_2c
    iput v0, v4, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    .line 286
    if-lez v1, :cond_96

    const-string v0, ""

    :goto_32
    iput-object v0, v4, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedTypeTag:Ljava/lang/String;

    .line 287
    iget v0, p2, Lbl/yh;->e:I

    .line 288
    iput p1, p2, Lbl/yh;->e:I

    .line 289
    const-wide/16 v6, -0x1

    iput-wide v6, p2, Lbl/yh;->d:J

    .line 290
    iget-object v1, p2, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iput-object v4, v1, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    .line 291
    iget-object v1, p0, Lbl/yd;->l:Lbl/aaq;

    if-eqz v1, :cond_8d

    .line 292
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 293
    const/16 v5, 0x28a0

    iput v5, v1, Landroid/os/Message;->what:I

    .line 294
    array-length v2, v2

    if-ge v0, v2, :cond_8d

    .line 295
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v0

    const/4 v0, 0x2

    iget v5, v3, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPage:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v0

    const/4 v0, 0x3

    iget v5, v4, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPage:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v0

    const/4 v0, 0x4

    iget-wide v6, v3, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x5

    iget-wide v4, v4, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 296
    iget-object v0, p0, Lbl/yd;->l:Lbl/aaq;

    invoke-virtual {v0, v1}, Lbl/aaq;->sendMessage(Landroid/os/Message;)Z

    .line 299
    :cond_8d
    invoke-virtual {p0}, Lbl/yd;->a()Ljava/util/concurrent/Future;

    goto :goto_14

    :cond_91
    move v1, v0

    .line 284
    goto :goto_29

    .line 285
    :cond_93
    iget v0, v3, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    goto :goto_2c

    .line 286
    :cond_96
    iget-object v0, v3, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedTypeTag:Ljava/lang/String;

    goto :goto_32
.end method

.method public a(Z)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 246
    invoke-virtual {p0}, Lbl/yd;->c()Lbl/yh;

    move-result-object v3

    .line 247
    if-nez v3, :cond_9

    .line 267
    :cond_8
    :goto_8
    return v0

    .line 250
    :cond_9
    iget-object v2, v3, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    if-nez v2, :cond_2c

    const/4 v2, 0x0

    .line 251
    :goto_e
    if-eqz v2, :cond_8

    array-length v4, v2

    if-lez v4, :cond_8

    .line 254
    iget v0, v3, Lbl/yh;->e:I

    .line 255
    if-gez v0, :cond_18

    move v0, v1

    .line 258
    :cond_18
    array-length v2, v2

    .line 259
    add-int/lit8 v0, v0, 0x1

    .line 260
    if-eqz p1, :cond_20

    if-lt v0, v2, :cond_20

    move v0, v1

    .line 263
    :cond_20
    if-gez v0, :cond_24

    .line 264
    add-int/lit8 v0, v2, -0x1

    .line 266
    :cond_24
    invoke-virtual {p0}, Lbl/yd;->c()Lbl/yh;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lbl/yd;->a(ILbl/yh;)I

    goto :goto_8

    .line 250
    :cond_2c
    iget-object v2, v3, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v2}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->getResolveParamsArray()[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v2

    goto :goto_e
.end method

.method public a(Lcom/bilibili/tv/player/basic/context/PlayerParams;)Lcom/bilibili/lib/media/resource/MediaResource;
    .locals 3
    .param p1    # Lcom/bilibili/tv/player/basic/context/PlayerParams;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bilibili/lib/media/resolver/exception/ResolveException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lbl/yd;->f:Lbl/ze;

    iget-object v1, p0, Lbl/yd;->a:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p1, v2}, Lbl/ze;->a(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/PlayerParams;I)Lcom/bilibili/lib/media/resource/MediaResource;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/util/concurrent/Future;
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lbl/yd;->m:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_a

    .line 122
    iget-object v0, p0, Lbl/yd;->m:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 124
    :cond_a
    iget-object v0, p0, Lbl/yd;->i:Lbl/yt;

    iget-object v1, p0, Lbl/yd;->c:Lbl/zi;

    invoke-virtual {v0, v1}, Lbl/yt;->a(Lbl/zi;)V

    .line 125
    iget-object v0, p0, Lbl/yd;->i:Lbl/yt;

    iget-object v1, p0, Lbl/yd;->d:Lbl/yx;

    invoke-virtual {v0, v1}, Lbl/yt;->a(Lbl/yj;)V

    .line 126
    iget-object v0, p0, Lbl/yd;->i:Lbl/yt;

    iget-object v1, p0, Lbl/yd;->f:Lbl/ze;

    invoke-virtual {v0, v1}, Lbl/yt;->a(Lbl/ze;)V

    .line 127
    iget-object v0, p0, Lbl/yd;->i:Lbl/yt;

    iget-object v1, p0, Lbl/yd;->g:Lbl/yu;

    invoke-virtual {v0, v1}, Lbl/yt;->a(Lbl/yu;)V

    .line 128
    iget-object v0, p0, Lbl/yd;->i:Lbl/yt;

    invoke-direct {p0, v0}, Lbl/yd;->b(Lbl/yt;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lbl/yd;->m:Ljava/util/concurrent/Future;

    .line 129
    iget-object v0, p0, Lbl/yd;->m:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lbl/yd;->h:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public final a(I[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lbl/yd;->n:Lbl/yd$b;

    if-eqz v0, :cond_11

    .line 235
    const/16 v0, 0xea

    if-eq p1, v0, :cond_c

    const/16 v0, 0xe9

    if-ne p1, v0, :cond_11

    .line 236
    :cond_c
    iget-object v0, p0, Lbl/yd;->n:Lbl/yd$b;

    invoke-interface {v0}, Lbl/yd$b;->b()V

    .line 239
    :cond_11
    return-void
.end method

.method public a(Lbl/aaq;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lbl/yd;->l:Lbl/aaq;

    .line 118
    return-void
.end method

.method public a(Lbl/xd;)V
    .locals 0

    .prologue
    .line 761
    iput-object p1, p0, Lbl/yd;->j:Lbl/xd;

    .line 762
    return-void
.end method

.method public final a(Lbl/yt;)V
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lbl/yd;->a:Landroid/content/Context;

    iget-object v1, p0, Lbl/yd;->k:Lbl/aaq;

    iget-object v2, p0, Lbl/yd;->b:Lbl/yh;

    invoke-virtual {p1, v0, v1, v2}, Lbl/yt;->a(Landroid/content/Context;Landroid/os/Handler;Lbl/yh;)V

    .line 144
    return-void
.end method

.method public a(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnVideoDefnChangedListener;Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnExtraInfoListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lbl/yd;->q:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-interface {v0, p0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 212
    iget-object v0, p0, Lbl/yd;->q:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-interface {v0, p2}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 213
    iget-object v0, p0, Lbl/yd;->q:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-interface {v0, p0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 214
    iget-object v0, p0, Lbl/yd;->q:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-interface {v0, p4}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 215
    iget-object v0, p0, Lbl/yd;->q:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-interface {v0, p5}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->setOnVideoDefnChangedListener(Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnVideoDefnChangedListener;)V

    .line 216
    iget-object v0, p0, Lbl/yd;->q:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-interface {v0, p0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->setOnExtraInfoListener(Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnExtraInfoListener;)V

    .line 217
    iget-object v0, p0, Lbl/yd;->q:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-interface {v0, p7}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->setOnSeekComplete(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    .line 218
    iput-object p3, p0, Lbl/yd;->o:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 219
    iput-object p6, p0, Lbl/yd;->r:Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnExtraInfoListener;

    .line 220
    iput-object p1, p0, Lbl/yd;->v:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 221
    iget-object v0, p0, Lbl/yd;->x:Ltv/danmaku/videoplayer/core/context/IPlayerContext$PlayerEventListener;

    if-nez v0, :cond_34

    .line 222
    new-instance v0, Lbl/yd$2;

    invoke-direct {v0, p0}, Lbl/yd$2;-><init>(Lbl/yd;)V

    iput-object v0, p0, Lbl/yd;->x:Ltv/danmaku/videoplayer/core/context/IPlayerContext$PlayerEventListener;

    .line 229
    :cond_34
    iget-object v0, p0, Lbl/yd;->q:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    iget-object v1, p0, Lbl/yd;->x:Ltv/danmaku/videoplayer/core/context/IPlayerContext$PlayerEventListener;

    invoke-interface {v0, v1}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->addPlayerEventListener(Ltv/danmaku/videoplayer/core/context/IPlayerContext$PlayerEventListener;)V

    .line 230
    return-void
.end method

.method public a(Ltv/danmaku/videoplayer/core/context/IPlayerContext;)V
    .locals 0

    .prologue
    .line 757
    iput-object p1, p0, Lbl/yd;->q:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    .line 758
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 155
    iget-object v0, p0, Lbl/yd;->i:Lbl/yt;

    if-eqz v0, :cond_c

    .line 156
    iget-object v0, p0, Lbl/yd;->i:Lbl/yt;

    invoke-virtual {v0}, Lbl/yt;->a()V

    .line 157
    iput-object v2, p0, Lbl/yd;->i:Lbl/yt;

    .line 159
    :cond_c
    iget-object v0, p0, Lbl/yd;->m:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_18

    .line 160
    iget-object v0, p0, Lbl/yd;->m:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 161
    iput-object v2, p0, Lbl/yd;->m:Ljava/util/concurrent/Future;

    .line 163
    :cond_18
    iget-object v0, p0, Lbl/yd;->h:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 164
    iget-object v1, p0, Lbl/yd;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 165
    :try_start_20
    iget-object v0, p0, Lbl/yd;->s:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 166
    monitor-exit v1

    .line 167
    return-void

    .line 166
    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public c()Lbl/yh;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lbl/yd;->b:Lbl/yh;

    return-object v0
.end method

.method public d()Lbl/xd;
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lbl/yd;->j:Lbl/xd;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .prologue
    const/16 v3, 0x27d9

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 171
    iget-object v0, p0, Lbl/yd;->q:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->isAttachedToServiceAlone()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 172
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_15

    .line 173
    iget-object v0, p0, Lbl/yd;->q:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-interface {v0, v2}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->play(Z)V

    :cond_15
    move v0, v1

    .line 207
    :goto_16
    return v0

    .line 177
    :cond_17
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_a8

    .line 178
    iget-object v0, p0, Lbl/yd;->q:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->getPlayerConfig()Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;

    move-result-object v0

    invoke-static {v0}, Lbl/aak;->a(Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;)Lcom/bilibili/lib/media/resource/PlayerCodecConfig;

    move-result-object v3

    .line 179
    sget-object v0, Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;->NONE:Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;

    iget-object v4, v3, Lcom/bilibili/lib/media/resource/PlayerCodecConfig;->a:Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;

    invoke-virtual {v0, v4}, Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p0, Lbl/yd;->b:Lbl/yh;

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->isEnableTencentPlayer()Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 180
    :cond_3b
    const/4 v0, 0x0

    .line 181
    iget-object v4, p0, Lbl/yd;->b:Lbl/yh;

    iget-object v4, v4, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v4, v4, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v4}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->isEnableTencentPlayer()Z

    move-result v4

    if-eqz v4, :cond_83

    .line 182
    new-instance v0, Lcom/bilibili/lib/media/resource/PlayerCodecConfig;

    invoke-direct {v0}, Lcom/bilibili/lib/media/resource/PlayerCodecConfig;-><init>()V

    .line 183
    sget-object v4, Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;->TENCENT_PLAYER:Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;

    iput-object v4, v0, Lcom/bilibili/lib/media/resource/PlayerCodecConfig;->a:Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;

    .line 184
    sget-object v4, Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;->TENCENT_PLAYER:Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;

    iget-object v5, v3, Lcom/bilibili/lib/media/resource/PlayerCodecConfig;->a:Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;

    invoke-virtual {v4, v5}, Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 185
    iget v4, v3, Lcom/bilibili/lib/media/resource/PlayerCodecConfig;->d:I

    iput v4, v0, Lcom/bilibili/lib/media/resource/PlayerCodecConfig;->d:I

    .line 187
    :cond_5f
    iput v1, v0, Lcom/bilibili/lib/media/resource/PlayerCodecConfig;->e:I

    .line 188
    sget-object v1, Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;->NONE:Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;

    iget-object v4, v3, Lcom/bilibili/lib/media/resource/PlayerCodecConfig;->a:Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;

    invoke-virtual {v1, v4}, Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_83

    sget-object v1, Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;->TENCENT_PLAYER:Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;

    iget-object v3, v3, Lcom/bilibili/lib/media/resource/PlayerCodecConfig;->a:Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;

    invoke-virtual {v1, v3}, Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_83

    .line 189
    iget-object v1, p0, Lbl/yd;->q:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-static {v0}, Lbl/aak;->a(Lcom/bilibili/lib/media/resource/PlayerCodecConfig;)Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;

    move-result-object v3

    invoke-interface {v1, v3}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->setPlayerConfig(Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;)V

    .line 190
    iget-object v1, p0, Lbl/yd;->q:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-interface {v1}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->resetVideoView()V

    .line 193
    :cond_83
    iget-object v1, p0, Lbl/yd;->j:Lbl/xd;

    if-nez v1, :cond_8f

    .line 194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "please set ConfigStrategy after create a PlayerController instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_8f
    if-nez v0, :cond_9f

    .line 197
    iget-object v0, p0, Lbl/yd;->j:Lbl/xd;

    iget-object v1, p0, Lbl/yd;->a:Landroid/content/Context;

    iget-object v3, p0, Lbl/yd;->b:Lbl/yh;

    iget-object v3, v3, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v3, v3, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0, v1, v3}, Lbl/xd;->a(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/VideoViewParams;)Lcom/bilibili/lib/media/resource/PlayerCodecConfig;

    move-result-object v0

    .line 199
    :cond_9f
    iget-object v1, p0, Lbl/yd;->q:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-static {v0}, Lbl/aak;->a(Lcom/bilibili/lib/media/resource/PlayerCodecConfig;)Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;

    move-result-object v0

    invoke-interface {v1, v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->setPlayerConfig(Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;)V

    .line 204
    :cond_a8
    :goto_a8
    iget-object v0, p0, Lbl/yd;->l:Lbl/aaq;

    if-eqz v0, :cond_b1

    .line 205
    iget-object v0, p0, Lbl/yd;->l:Lbl/aaq;

    invoke-virtual {v0, p1}, Lbl/aaq;->handleMessage(Landroid/os/Message;)V

    :cond_b1
    move v0, v2

    .line 207
    goto/16 :goto_16

    .line 200
    :cond_b4
    sget-object v0, Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;->TENCENT_PLAYER:Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;

    iget-object v1, v3, Lcom/bilibili/lib/media/resource/PlayerCodecConfig;->a:Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;

    invoke-virtual {v0, v1}, Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 201
    iget-object v0, p0, Lbl/yd;->q:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    iget-object v1, p0, Lbl/yd;->j:Lbl/xd;

    iget-object v3, p0, Lbl/yd;->a:Landroid/content/Context;

    iget-object v4, p0, Lbl/yd;->b:Lbl/yh;

    iget-object v4, v4, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v4, v4, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v1, v3, v4}, Lbl/xd;->a(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/VideoViewParams;)Lcom/bilibili/lib/media/resource/PlayerCodecConfig;

    move-result-object v1

    invoke-static {v1}, Lbl/aak;->a(Lcom/bilibili/lib/media/resource/PlayerCodecConfig;)Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;

    move-result-object v1

    invoke-interface {v0, v1}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->setPlayerConfig(Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;)V

    goto :goto_a8
.end method

.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lbl/yd;->n:Lbl/yd$b;

    if-eqz v0, :cond_9

    .line 364
    iget-object v0, p0, Lbl/yd;->n:Lbl/yd$b;

    invoke-interface {v0}, Lbl/yd$b;->a()V

    .line 366
    :cond_9
    invoke-direct {p0}, Lbl/yd;->e()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 370
    :goto_f
    return-void

    .line 369
    :cond_10
    iget-object v0, p0, Lbl/yd;->o:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    invoke-interface {v0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;->onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    goto :goto_f
.end method

.method public varargs onExtraInfo(I[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lbl/yd;->r:Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnExtraInfoListener;

    if-eqz v0, :cond_9

    .line 375
    iget-object v0, p0, Lbl/yd;->r:Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnExtraInfoListener;

    invoke-interface {v0, p1, p2}, Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnExtraInfoListener;->onExtraInfo(I[Ljava/lang/Object;)V

    .line 377
    :cond_9
    return-void
.end method

.method public onNativeInvoke(ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 381
    invoke-direct {p0, p1, p2}, Lbl/yd;->a(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lbl/yd;->q:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->isAttachedToServiceAlone()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 355
    iget-object v0, p0, Lbl/yd;->q:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->start()V

    .line 359
    :cond_d
    :goto_d
    return-void

    .line 356
    :cond_e
    iget-object v0, p0, Lbl/yd;->v:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    if-eqz v0, :cond_d

    .line 357
    iget-object v0, p0, Lbl/yd;->v:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    invoke-interface {v0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    goto :goto_d
.end method
