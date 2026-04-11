.class public abstract Lbl/xh;
.super Ljava/lang/Object;
.source "xh.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/bilibili/tv/player/interfaces/IEventCenter;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;
.implements Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnExtraInfoListener;
.implements Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnVideoDefnChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbl/xh$a;
    }
.end annotation


# instance fields
.field a:Lbl/xf;

.field protected b:Lbl/aaq;

.field private c:Lbl/xh;

.field private d:Lbl/xh;

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    if-eqz v0, :cond_a

    .line 455
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->A()V

    .line 459
    :cond_9
    :goto_9
    return-void

    .line 456
    :cond_a
    invoke-virtual {p0}, Lbl/xh;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 457
    invoke-virtual {p0}, Lbl/xh;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->start()V

    goto :goto_9
.end method

.method public B()V
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    if-eqz v0, :cond_a

    .line 463
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->B()V

    .line 472
    :cond_9
    :goto_9
    return-void

    .line 466
    :cond_a
    invoke-virtual {p0}, Lbl/xh;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    .line 467
    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lbl/xh;->J()Z

    move-result v1

    if-nez v1, :cond_9

    .line 470
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->pause()V

    .line 471
    invoke-virtual {p0}, Lbl/xh;->E()V

    goto :goto_9
.end method

.method public C()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 476
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    if-eqz v0, :cond_9

    .line 477
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->C()V

    .line 479
    :cond_9
    return-void
.end method

.method public D()V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    if-eqz v0, :cond_a

    .line 484
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->D()V

    .line 490
    :goto_9
    return-void

    .line 485
    :cond_a
    invoke-virtual {p0}, Lbl/xh;->K()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 486
    invoke-virtual {p0}, Lbl/xh;->B()V

    goto :goto_9

    .line 488
    :cond_14
    invoke-virtual {p0}, Lbl/xh;->F()V

    goto :goto_9
.end method

.method public E()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 494
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    if-eqz v0, :cond_9

    .line 495
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->E()V

    .line 497
    :cond_9
    return-void
.end method

.method public F()V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    if-eqz v0, :cond_a

    .line 501
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->F()V

    .line 510
    :cond_9
    :goto_9
    return-void

    .line 504
    :cond_a
    invoke-virtual {p0}, Lbl/xh;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    .line 505
    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lbl/xh;->K()Z

    move-result v1

    if-nez v1, :cond_9

    .line 508
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->start()V

    .line 509
    invoke-virtual {p0}, Lbl/xh;->G()V

    goto :goto_9
.end method

.method public G()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 514
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    if-eqz v0, :cond_9

    .line 515
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->G()V

    .line 517
    :cond_9
    return-void
.end method

.method public H()I
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    if-eqz v0, :cond_b

    .line 521
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->H()I

    move-result v0

    .line 527
    :goto_a
    return v0

    .line 523
    :cond_b
    invoke-virtual {p0}, Lbl/xh;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    .line 524
    if-nez v0, :cond_13

    .line 525
    const/4 v0, 0x0

    goto :goto_a

    .line 527
    :cond_13
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->getState()I

    move-result v0

    goto :goto_a
.end method

.method public I()I
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    if-eqz v0, :cond_b

    .line 533
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->I()I

    move-result v0

    .line 539
    :goto_a
    return v0

    .line 535
    :cond_b
    invoke-virtual {p0}, Lbl/xh;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    .line 536
    if-nez v0, :cond_13

    .line 537
    const/4 v0, 0x0

    goto :goto_a

    .line 539
    :cond_13
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->getDuration()I

    move-result v0

    goto :goto_a
.end method

.method public J()Z
    .locals 2

    .prologue
    .line 544
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    if-eqz v0, :cond_b

    .line 545
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->J()Z

    move-result v0

    .line 547
    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0}, Lbl/xh;->H()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_a

    :cond_14
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public K()Z
    .locals 2

    .prologue
    .line 552
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    if-eqz v0, :cond_b

    .line 553
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->K()Z

    move-result v0

    .line 559
    :goto_a
    return v0

    .line 555
    :cond_b
    invoke-virtual {p0}, Lbl/xh;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    .line 556
    if-eqz v0, :cond_16

    .line 557
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->isPlaying()Z

    move-result v0

    goto :goto_a

    .line 559
    :cond_16
    invoke-virtual {p0}, Lbl/xh;->H()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1f

    const/4 v0, 0x1

    goto :goto_a

    :cond_1f
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public L()Z
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    if-eqz v0, :cond_b

    .line 565
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->L()Z

    move-result v0

    .line 568
    :goto_a
    return v0

    .line 567
    :cond_b
    invoke-virtual {p0}, Lbl/xh;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    .line 568
    if-eqz v0, :cond_17

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->isPlaybackCompleted()Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_17
    const/4 v0, 0x1

    goto :goto_a

    :cond_19
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public M()V
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    if-eqz v0, :cond_9

    .line 574
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->M()V

    .line 576
    :cond_9
    return-void
.end method

.method public N()V
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    if-eqz v0, :cond_9

    .line 588
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->N()V

    .line 590
    :cond_9
    return-void
.end method

.method protected O()Z
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    if-eqz v0, :cond_b

    .line 594
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->O()Z

    move-result v0

    .line 596
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 237
    invoke-virtual {p0}, Lbl/xh;->o()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_8

    .line 238
    const/4 v0, 0x0

    .line 240
    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0}, Lbl/xh;->k()Lbl/xh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbl/xh;->a(I)Landroid/view/View;

    move-result-object v0

    goto :goto_7
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lbl/xh;->k()Lbl/xh;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lbl/xh;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a()Lbl/xh;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    return-object v0
.end method

.method public a(Lbl/xh;)Lbl/xh;
    .locals 1

    .prologue
    .line 272
    iput-object p1, p0, Lbl/xh;->c:Lbl/xh;

    .line 273
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    invoke-virtual {v0, p0}, Lbl/xh;->b(Lbl/xh;)V

    .line 274
    return-object p0
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    if-eqz v0, :cond_9

    .line 158
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    invoke-virtual {v0, p1, p2, p3}, Lbl/xh;->a(IILandroid/content/Intent;)V

    .line 160
    :cond_9
    return-void
.end method

.method public a(ILjava/lang/Object;J)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 282
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    if-eqz v0, :cond_c

    .line 283
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    invoke-virtual {v0, p1, p2, p3, p4}, Lbl/xh;->a(ILjava/lang/Object;J)V

    .line 304
    :cond_b
    :goto_b
    return-void

    .line 286
    :cond_c
    iget-object v0, p0, Lbl/xh;->b:Lbl/aaq;

    if-eqz v0, :cond_b

    .line 289
    if-nez p2, :cond_22

    .line 290
    cmp-long v0, p3, v2

    if-lez v0, :cond_1c

    .line 291
    iget-object v0, p0, Lbl/xh;->b:Lbl/aaq;

    invoke-virtual {v0, p1, p3, p4}, Lbl/aaq;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_b

    .line 294
    :cond_1c
    iget-object v0, p0, Lbl/xh;->b:Lbl/aaq;

    invoke-virtual {v0, p1}, Lbl/aaq;->sendEmptyMessage(I)Z

    goto :goto_b

    .line 298
    :cond_22
    iget-object v0, p0, Lbl/xh;->b:Lbl/aaq;

    invoke-virtual {v0, p1, p2}, Lbl/aaq;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 299
    cmp-long v1, p3, v2

    if-lez v1, :cond_32

    .line 300
    iget-object v1, p0, Lbl/xh;->b:Lbl/aaq;

    invoke-virtual {v1, v0, p3, p4}, Lbl/aaq;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_b

    .line 302
    :cond_32
    iget-object v1, p0, Lbl/xh;->b:Lbl/aaq;

    invoke-virtual {v1, v0}, Lbl/aaq;->sendMessage(Landroid/os/Message;)Z

    goto :goto_b
.end method

.method public a(Landroid/app/Activity;Lbl/xf;)V
    .locals 1

    .prologue
    .line 264
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lbl/xh;->e:Ljava/lang/ref/WeakReference;

    .line 265
    iput-object p2, p0, Lbl/xh;->a:Lbl/xf;

    .line 266
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    if-eqz v0, :cond_12

    .line 267
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    invoke-virtual {v0, p1, p2}, Lbl/xh;->a(Landroid/app/Activity;Lbl/xf;)V

    .line 269
    :cond_12
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    if-eqz v0, :cond_9

    .line 96
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    invoke-virtual {v0, p1}, Lbl/xh;->a(Landroid/content/Intent;)V

    .line 98
    :cond_9
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    if-eqz v0, :cond_9

    .line 74
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    invoke-virtual {v0, p1}, Lbl/xh;->a(Landroid/os/Bundle;)V

    .line 76
    :cond_9
    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    if-eqz v0, :cond_9

    .line 106
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    invoke-virtual {v0, p1, p2}, Lbl/xh;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 108
    :cond_9
    return-void
.end method

.method public a(Lcom/bilibili/lib/media/resource/PlayerCodecConfig;)V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    if-eqz v0, :cond_a

    .line 126
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    invoke-virtual {v0, p1}, Lbl/xh;->a(Lcom/bilibili/lib/media/resource/PlayerCodecConfig;)V

    .line 130
    :goto_9
    return-void

    .line 128
    :cond_a
    invoke-virtual {p0}, Lbl/xh;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    invoke-static {p1}, Lbl/aak;->a(Lcom/bilibili/lib/media/resource/PlayerCodecConfig;)Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;

    move-result-object v1

    invoke-interface {v0, v1}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->setPlayerConfig(Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;)V

    goto :goto_9
.end method

.method public varargs a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    if-eqz v0, :cond_a

    .line 601
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    invoke-virtual {v0, p1, p2}, Lbl/xh;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 605
    :goto_9
    return-void

    .line 603
    :cond_a
    invoke-virtual {p0, p1, p2}, Lbl/xh;->b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    goto :goto_9
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    if-eqz v0, :cond_a

    .line 334
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    invoke-virtual {v0, p1}, Lbl/xh;->a(Ljava/lang/Runnable;)V

    .line 341
    :cond_9
    :goto_9
    return-void

    .line 336
    :cond_a
    iget-object v0, p0, Lbl/xh;->b:Lbl/aaq;

    if-eqz v0, :cond_9

    .line 339
    iget-object v0, p0, Lbl/xh;->b:Lbl/aaq;

    invoke-virtual {v0, p1}, Lbl/aaq;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_9
.end method

.method public a(Ljava/lang/Runnable;J)V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    if-eqz v0, :cond_a

    .line 319
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    invoke-virtual {v0, p1, p2, p3}, Lbl/xh;->a(Ljava/lang/Runnable;J)V

    .line 330
    :cond_9
    :goto_9
    return-void

    .line 321
    :cond_a
    iget-object v0, p0, Lbl/xh;->b:Lbl/aaq;

    if-eqz v0, :cond_9

    .line 324
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1a

    .line 325
    iget-object v0, p0, Lbl/xh;->b:Lbl/aaq;

    invoke-virtual {v0, p1, p2, p3}, Lbl/aaq;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9

    .line 327
    :cond_1a
    iget-object v0, p0, Lbl/xh;->b:Lbl/aaq;

    invoke-virtual {v0, p1}, Lbl/aaq;->post(Ljava/lang/Runnable;)Z

    goto :goto_9
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    if-eqz v0, :cond_9

    .line 180
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    invoke-virtual {v0, p1}, Lbl/xh;->a(Z)V

    .line 182
    :cond_9
    return-void
.end method

.method public final a(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0, p1, p2}, Lbl/xh;->d(ILandroid/view/KeyEvent;)Z

    .line 164
    const/16 v0, 0x52

    if-ne p1, v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public b()Lcom/bilibili/tv/player/basic/context/PlayerParams;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    if-eqz v0, :cond_b

    .line 81
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v0

    .line 83
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Lbl/xh;->c()Lbl/yh;

    move-result-object v0

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    goto :goto_a
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    if-eqz v0, :cond_a

    .line 308
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    invoke-virtual {v0, p1}, Lbl/xh;->b(I)V

    .line 315
    :cond_9
    :goto_9
    return-void

    .line 310
    :cond_a
    iget-object v0, p0, Lbl/xh;->b:Lbl/aaq;

    if-eqz v0, :cond_9

    .line 313
    iget-object v0, p0, Lbl/xh;->b:Lbl/aaq;

    invoke-virtual {v0, p1}, Lbl/aaq;->removeMessages(I)V

    goto :goto_9
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    if-eqz v0, :cond_9

    .line 112
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    invoke-virtual {v0, p1}, Lbl/xh;->b(Landroid/os/Bundle;)V

    .line 114
    :cond_9
    return-void
.end method

.method protected b(Lbl/xh;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lbl/xh;->d:Lbl/xh;

    .line 279
    return-void
.end method

.method public varargs b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 657
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    if-eqz v0, :cond_9

    .line 658
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    invoke-virtual {v0, p1, p2}, Lbl/xh;->b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 660
    :cond_9
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    if-eqz v0, :cond_9

    .line 200
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    invoke-virtual {v0, p1}, Lbl/xh;->b(Z)V

    .line 202
    :cond_9
    return-void
.end method

.method public final b(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0, p1, p2}, Lbl/xh;->c(ILandroid/view/KeyEvent;)Z

    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public c()Lbl/yh;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    if-eqz v0, :cond_b

    .line 89
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->c()Lbl/yh;

    move-result-object v0

    .line 91
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Lbl/xh;->m()Lbl/yd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/yd;->c()Lbl/yh;

    move-result-object v0

    goto :goto_a
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    if-eqz v0, :cond_a

    .line 426
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    invoke-virtual {v0, p1}, Lbl/xh;->c(I)V

    .line 433
    :cond_9
    :goto_9
    return-void

    .line 429
    :cond_a
    invoke-virtual {p0}, Lbl/xh;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    .line 430
    if-eqz v0, :cond_9

    .line 431
    invoke-interface {v0, p1}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->seekTo(I)V

    goto :goto_9
.end method

.method protected final c(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0, p1, p2}, Lbl/xh;->e(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 186
    invoke-virtual {p0, p1, p2}, Lbl/xh;->g(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 188
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    invoke-virtual {v0, p1, p2}, Lbl/xh;->c(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1d

    :cond_17
    invoke-virtual {p0, p1, p2}, Lbl/xh;->g(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_1d
    const/4 v0, 0x1

    goto :goto_a

    :cond_1f
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public d()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    if-eqz v0, :cond_9

    .line 118
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->d()V

    .line 120
    :cond_9
    iget-object v0, p0, Lbl/xh;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 121
    return-void
.end method

.method public d(I)V
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    if-eqz v0, :cond_9

    .line 581
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    invoke-virtual {v0, p1}, Lbl/xh;->d(I)V

    .line 583
    :cond_9
    return-void
.end method

.method protected final d(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0, p1, p2}, Lbl/xh;->e(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 193
    invoke-virtual {p0, p1, p2}, Lbl/xh;->f(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 195
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    invoke-virtual {v0, p1, p2}, Lbl/xh;->d(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1d

    :cond_17
    invoke-virtual {p0, p1, p2}, Lbl/xh;->f(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_1d
    const/4 v0, 0x1

    goto :goto_a

    :cond_1f
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public e()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    if-eqz v0, :cond_9

    .line 134
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->e()V

    .line 136
    :cond_9
    return-void
.end method

.method protected e(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    if-eqz v0, :cond_9

    .line 140
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->f()V

    .line 142
    :cond_9
    return-void
.end method

.method public f(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    if-eqz v0, :cond_9

    .line 146
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->g()V

    .line 148
    :cond_9
    return-void
.end method

.method public g(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    if-eqz v0, :cond_9

    .line 152
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->h()V

    .line 154
    :cond_9
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    if-eqz v0, :cond_b

    .line 354
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    invoke-virtual {v0, p1}, Lbl/xh;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    .line 356
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public i()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    if-eqz v0, :cond_9

    .line 174
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->i()V

    .line 176
    :cond_9
    return-void
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->j()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final k()Lbl/xh;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->k()Lbl/xh;

    move-result-object p0

    :cond_a
    return-object p0
.end method

.method public l()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    if-eqz v0, :cond_b

    .line 215
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->l()Landroid/view/ViewGroup;

    move-result-object v0

    .line 217
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public m()Lbl/yd;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    if-eqz v0, :cond_b

    .line 223
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->m()Lbl/yd;

    move-result-object v0

    .line 225
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    if-eqz v0, :cond_b

    .line 230
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    .line 232
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public next()Lbl/xh;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    return-object v0
.end method

.method public o()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lbl/xh;->e:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    .line 246
    const/4 v0, 0x0

    .line 248
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lbl/xh;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_5
.end method

.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 610
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    if-eqz v0, :cond_9

    .line 611
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    invoke-virtual {v0, p1}, Lbl/xh;->onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 613
    :cond_9
    return-void
.end method

.method public onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 632
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    if-nez v0, :cond_6

    .line 636
    :goto_5
    return v1

    .line 635
    :cond_6
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    invoke-virtual {v0, p1, p2, p3}, Lbl/xh;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    goto :goto_5
.end method

.method public varargs onExtraInfo(I[Ljava/lang/Object;)V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 642
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    if-eqz v0, :cond_9

    .line 643
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    invoke-virtual {v0, p1, p2}, Lbl/xh;->onExtraInfo(I[Ljava/lang/Object;)V

    .line 645
    :cond_9
    return-void
.end method

.method public onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    if-eqz v0, :cond_9

    .line 54
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    invoke-virtual {v0, p1, p2, p3}, Lbl/xh;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    .line 56
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public onNativeInvoke(ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 650
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    if-eqz v0, :cond_9

    .line 651
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    invoke-virtual {v0, p1}, Lbl/xh;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 653
    :cond_9
    return-void
.end method

.method public onSeekComplete(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    if-eqz v0, :cond_9

    .line 618
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    invoke-virtual {v0, p1}, Lbl/xh;->onSeekComplete(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 620
    :cond_9
    return-void
.end method

.method public onVideoDefnChanged(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 624
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    if-eqz v0, :cond_9

    .line 625
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    invoke-virtual {v0, p1}, Lbl/xh;->onVideoDefnChanged(Ljava/util/Map;)V

    .line 627
    :cond_9
    return-void
.end method

.method public p()Landroid/content/Context;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    if-eqz v0, :cond_b

    .line 255
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->p()Landroid/content/Context;

    move-result-object v0

    .line 260
    :goto_a
    return-object v0

    .line 257
    :cond_b
    invoke-virtual {p0}, Lbl/xh;->o()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_13

    .line 258
    const/4 v0, 0x0

    goto :goto_a

    .line 260
    :cond_13
    invoke-virtual {p0}, Lbl/xh;->o()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_a
.end method

.method public q()Lbl/aaq;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    if-eqz v0, :cond_b

    .line 346
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->q()Lbl/aaq;

    move-result-object v0

    .line 348
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lbl/xh;->b:Lbl/aaq;

    goto :goto_a
.end method

.method public r()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 362
    iget-object v0, p0, Lbl/xh;->b:Lbl/aaq;

    if-eqz v0, :cond_c

    .line 363
    iget-object v0, p0, Lbl/xh;->b:Lbl/aaq;

    invoke-virtual {v0}, Lbl/aaq;->a()V

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Lbl/xh;->b:Lbl/aaq;

    .line 366
    :cond_c
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    if-eqz v0, :cond_15

    .line 367
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->r()V

    .line 369
    :cond_15
    return-void
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    if-eqz v0, :cond_b

    .line 374
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->s()Z

    move-result v0

    .line 376
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public t()V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    if-eqz v0, :cond_9

    .line 382
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->t()V

    .line 384
    :cond_9
    invoke-virtual {p0}, Lbl/xh;->u()V

    .line 385
    return-void
.end method

.method public u()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 390
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    if-eqz v0, :cond_9

    .line 391
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->u()V

    .line 393
    :cond_9
    return-void
.end method

.method public v()V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    if-eqz v0, :cond_9

    .line 398
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->v()V

    .line 400
    :cond_9
    invoke-virtual {p0}, Lbl/xh;->w()V

    .line 401
    return-void
.end method

.method public w()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 406
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    if-eqz v0, :cond_9

    .line 407
    iget-object v0, p0, Lbl/xh;->c:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->w()V

    .line 409
    :cond_9
    return-void
.end method

.method public x()I
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    if-eqz v0, :cond_b

    .line 414
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->x()I

    move-result v0

    .line 420
    :goto_a
    return v0

    .line 416
    :cond_b
    invoke-virtual {p0}, Lbl/xh;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    .line 417
    if-nez v0, :cond_13

    .line 418
    const/4 v0, 0x0

    goto :goto_a

    .line 420
    :cond_13
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->getCurrentPosition()I

    move-result v0

    goto :goto_a
.end method

.method public y()Lcom/bilibili/lib/media/resource/PlayerCodecConfig;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    if-eqz v0, :cond_b

    .line 438
    iget-object v0, p0, Lbl/xh;->d:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->y()Lcom/bilibili/lib/media/resource/PlayerCodecConfig;

    move-result-object v0

    .line 440
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Lbl/xh;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->getPlayerConfig()Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;

    move-result-object v0

    invoke-static {v0}, Lbl/aak;->a(Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;)Lcom/bilibili/lib/media/resource/PlayerCodecConfig;

    move-result-object v0

    goto :goto_a
.end method

.method public final z()Lbl/xd;
    .locals 1

    .prologue
    .line 445
    invoke-virtual {p0}, Lbl/xh;->m()Lbl/yd;

    move-result-object v0

    .line 446
    if-nez v0, :cond_8

    .line 447
    const/4 v0, 0x0

    .line 449
    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {v0}, Lbl/yd;->d()Lbl/xd;

    move-result-object v0

    goto :goto_7
.end method
