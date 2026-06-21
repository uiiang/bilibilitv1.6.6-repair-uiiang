.class public abstract Lbl/wy;
.super Lbl/wx;
.source "wy.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbl/wy$a;
    }
.end annotation


# static fields
.field protected static H:I

.field protected static I:Z

.field public static J:Z


# instance fields
.field protected K:Landroid/view/Surface;

.field protected L:Landroid/media/AudioManager;

.field protected M:Landroid/os/Handler;

.field protected N:Lbl/wy$a;

.field protected O:Ljava/lang/String;

.field protected P:I

.field protected Q:F

.field protected R:I

.field protected S:I

.field protected T:I

.field protected U:I

.field protected V:I

.field protected W:J

.field protected aa:J

.field protected ab:J

.field protected ac:Z

.field protected ad:Z

.field protected ae:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, -0x1

    sput v0, Lbl/wy;->H:I

    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lbl/wy;->I:Z

    .line 30
    const/4 v0, 0x1

    sput-boolean v0, Lbl/wy;->J:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-direct {p0, p1}, Lbl/wx;-><init>(Landroid/content/Context;)V

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lbl/wy;->M:Landroid/os/Handler;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lbl/wy;->O:Ljava/lang/String;

    .line 90
    const/16 v0, -0x16

    iput v0, p0, Lbl/wy;->P:I

    .line 91
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lbl/wy;->Q:F

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lbl/wy;->T:I

    .line 93
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lbl/wy;->W:J

    .line 94
    iput-boolean v2, p0, Lbl/wy;->ac:Z

    .line 95
    iput-boolean v2, p0, Lbl/wy;->ad:Z

    .line 96
    iput-boolean v2, p0, Lbl/wy;->ae:Z

    .line 97
    invoke-virtual {p0, p1}, Lbl/wy;->a(Landroid/content/Context;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-direct {p0, p1, p2}, Lbl/wx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lbl/wy;->M:Landroid/os/Handler;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lbl/wy;->O:Ljava/lang/String;

    .line 104
    const/16 v0, -0x16

    iput v0, p0, Lbl/wy;->P:I

    .line 105
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lbl/wy;->Q:F

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lbl/wy;->T:I

    .line 107
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lbl/wy;->W:J

    .line 108
    iput-boolean v2, p0, Lbl/wy;->ac:Z

    .line 109
    iput-boolean v2, p0, Lbl/wy;->ad:Z

    .line 110
    iput-boolean v2, p0, Lbl/wy;->ae:Z

    .line 111
    invoke-virtual {p0, p1}, Lbl/wy;->a(Landroid/content/Context;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Lbl/wx;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lbl/wy;->M:Landroid/os/Handler;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lbl/wy;->O:Ljava/lang/String;

    .line 76
    const/16 v0, -0x16

    iput v0, p0, Lbl/wy;->P:I

    .line 77
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lbl/wy;->Q:F

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lbl/wy;->T:I

    .line 79
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lbl/wy;->W:J

    .line 80
    iput-boolean v2, p0, Lbl/wy;->ac:Z

    .line 81
    iput-boolean v2, p0, Lbl/wy;->ad:Z

    .line 82
    iput-boolean v2, p0, Lbl/wy;->ae:Z

    .line 83
    invoke-virtual {p0, p1}, Lbl/wy;->a(Landroid/content/Context;)V

    .line 84
    return-void
.end method

.method private getNetSpeed()J
    .locals 2

    .prologue
    .line 600
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v0

    invoke-virtual {v0}, Lbl/wm;->i()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    .line 601
    if-eqz v0, :cond_e

    instance-of v1, v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-nez v1, :cond_11

    .line 602
    :cond_e
    const-wide/16 v0, -0x1

    .line 604
    :goto_10
    return-wide v0

    :cond_11
    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getTcpSpeed()J

    move-result-wide v0

    goto :goto_10
.end method

.method private j()V
    .locals 2

    .prologue
    .line 529
    invoke-virtual {p0}, Lbl/wy;->t()V

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Link Or mCache Error, Please Try Again"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbl/wy;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbl/ww;->b(Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lbl/wy;->q:Ljava/lang/String;

    iput-object v0, p0, Lbl/wy;->r:Ljava/lang/String;

    .line 532
    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 395
    iget v0, p0, Lbl/wy;->g:I

    if-ne v0, v5, :cond_4f

    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v0

    invoke-virtual {v0}, Lbl/wm;->i()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 396
    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->start()V

    .line 397
    iget v1, p0, Lbl/wy;->T:I

    if-eq v1, v4, :cond_21

    .line 398
    iget v1, p0, Lbl/wy;->T:I

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->seekTo(J)V

    .line 399
    iput v4, p0, Lbl/wy;->T:I

    .line 401
    :cond_21
    invoke-virtual {p0}, Lbl/wy;->u()V

    .line 402
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lbl/wy;->setStateAndUi(I)V

    .line 403
    iget-object v1, p0, Lbl/wy;->v:Lbl/wt;

    if-eqz v1, :cond_40

    invoke-virtual {p0}, Lbl/wy;->x()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 404
    const-string v1, "onPrepared"

    invoke-static {v1}, Lbl/ww;->a(Ljava/lang/String;)V

    .line 405
    iget-object v1, p0, Lbl/wy;->v:Lbl/wt;

    iget-object v2, p0, Lbl/wy;->r:Ljava/lang/String;

    iget-object v3, p0, Lbl/wy;->s:[Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lbl/wt;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    :cond_40
    iget-wide v2, p0, Lbl/wy;->W:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_4d

    .line 408
    iget-wide v2, p0, Lbl/wy;->W:J

    invoke-interface {v0, v2, v3}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->seekTo(J)V

    .line 409
    iput-wide v6, p0, Lbl/wy;->W:J

    .line 411
    :cond_4d
    iput-boolean v5, p0, Lbl/wy;->n:Z

    .line 413
    :cond_4f
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 462
    iget v0, p0, Lbl/wy;->g:I

    if-eqz v0, :cond_b

    iget v0, p0, Lbl/wy;->g:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    if-nez p1, :cond_c

    .line 468
    :cond_b
    :goto_b
    return-void

    .line 465
    :cond_c
    invoke-virtual {p0, p1}, Lbl/wy;->setTextAndProgress(I)V

    .line 466
    iput p1, p0, Lbl/wy;->U:I

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Net speed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lbl/wy;->getNetSpeedText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " percent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbl/ww;->a(Ljava/lang/String;)V

    goto :goto_b
.end method

.method public a(II)V
    .locals 3

    .prologue
    .line 472
    const/16 v0, 0x26

    if-eq p1, v0, :cond_8

    const/16 v0, -0x26

    if-ne p1, v0, :cond_9

    .line 480
    :cond_8
    :goto_8
    return-void

    .line 475
    :cond_9
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lbl/wy;->setStateAndUi(I)V

    .line 476
    invoke-direct {p0}, Lbl/wy;->j()V

    .line 477
    iget-object v0, p0, Lbl/wy;->v:Lbl/wt;

    if-eqz v0, :cond_8

    .line 478
    iget-object v0, p0, Lbl/wy;->v:Lbl/wt;

    iget-object v1, p0, Lbl/wy;->r:Ljava/lang/String;

    iget-object v2, p0, Lbl/wy;->s:[Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lbl/wt;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8
.end method

.method public a(IIII)V
    .locals 1

    .prologue
    .line 512
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 516
    :cond_4
    :goto_4
    return-void

    .line 515
    :cond_5
    iget-object v0, p0, Lbl/wy;->x:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_4
.end method

.method protected a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 115
    iput-object p1, p0, Lbl/wy;->p:Landroid/content/Context;

    .line 116
    invoke-virtual {p0}, Lbl/wy;->getLayoutId()I

    move-result v0

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 117
    const v0, 0x7f080069

    invoke-virtual {p0, v0}, Lbl/wy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbl/wy;->y:Landroid/widget/ImageView;

    .line 118
    const v0, 0x7f080121

    invoke-virtual {p0, v0}, Lbl/wy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lbl/wy;->u:Landroid/view/ViewGroup;

    .line 119
    invoke-virtual {p0}, Lbl/wy;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 127
    :goto_25
    return-void

    .line 122
    :cond_26
    new-instance v0, Lbl/wy$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbl/wy$a;-><init>(Lbl/wy$1;)V

    iput-object v0, p0, Lbl/wy;->N:Lbl/wy$a;

    .line 123
    invoke-virtual {p0}, Lbl/wy;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lbl/wy;->R:I

    .line 124
    invoke-virtual {p0}, Lbl/wy;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lbl/wy;->S:I

    .line 125
    invoke-virtual {p0}, Lbl/wy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lbl/wy;->L:Landroid/media/AudioManager;

    .line 126
    invoke-virtual {p0}, Lbl/wy;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v0, v1}, Lbl/wu;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lbl/wy;->V:I

    goto :goto_25
.end method

.method public varargs a(Ljava/lang/String;ZLjava/io/File;[Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 132
    if-eqz p4, :cond_11

    array-length v1, p4

    if-lez v1, :cond_11

    aget-object v1, p4, v0

    if-eqz v1, :cond_11

    .line 133
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lbl/wy;->setTitle(Ljava/lang/String;)V

    .line 135
    :cond_11
    iput-boolean p2, p0, Lbl/wy;->e:Z

    .line 136
    iput-object p3, p0, Lbl/wy;->t:Ljava/io/File;

    .line 137
    iput-object p1, p0, Lbl/wy;->q:Ljava/lang/String;

    .line 138
    invoke-virtual {p0}, Lbl/wy;->x()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lbl/wy;->a:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long v1, v2, v4

    if-gez v1, :cond_2b

    .line 145
    :goto_2a
    return v0

    .line 141
    :cond_2b
    iput v0, p0, Lbl/wy;->g:I

    .line 142
    iput-object p1, p0, Lbl/wy;->r:Ljava/lang/String;

    .line 143
    iput-object p4, p0, Lbl/wy;->s:[Ljava/lang/Object;

    .line 144
    invoke-virtual {p0, v0}, Lbl/wy;->setStateAndUi(I)V

    .line 145
    const/4 v0, 0x1

    goto :goto_2a
.end method

.method protected attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 262
    invoke-super {p0, p1, p2, p3}, Lbl/wx;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 263
    iget-object v0, p0, Lbl/wy;->x:Landroid/view/View;

    if-eqz v0, :cond_f

    .line 264
    iget-object v0, p0, Lbl/wy;->x:Landroid/view/View;

    const v1, 0x3f800054    # 1.00001f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 266
    :cond_f
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 417
    iget-object v0, p0, Lbl/wy;->v:Lbl/wt;

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lbl/wy;->x()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 418
    const-string v0, "onAutoComplete"

    invoke-static {v0}, Lbl/ww;->a(Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lbl/wy;->v:Lbl/wt;

    iget-object v1, p0, Lbl/wy;->r:Ljava/lang/String;

    iget-object v2, p0, Lbl/wy;->s:[Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lbl/wt;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 421
    :cond_18
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lbl/wy;->setStateAndUi(I)V

    .line 422
    iget-object v0, p0, Lbl/wy;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_29

    .line 423
    iget-object v0, p0, Lbl/wy;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 425
    :cond_29
    sget-boolean v0, Lbl/wy;->I:Z

    if-eqz v0, :cond_45

    .line 426
    const/4 v0, 0x0

    sput-boolean v0, Lbl/wy;->I:Z

    .line 427
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v0

    invoke-virtual {v0}, Lbl/wm;->c()Lbl/ws;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 428
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v0

    invoke-virtual {v0}, Lbl/wm;->c()Lbl/ws;

    move-result-object v0

    invoke-interface {v0}, Lbl/ws;->b()V

    .line 431
    :cond_45
    iget-boolean v0, p0, Lbl/wy;->k:Z

    if-nez v0, :cond_53

    .line 432
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, Lbl/ws;

    invoke-virtual {v1, v0}, Lbl/wm;->b(Lbl/ws;)V

    .line 434
    :cond_53
    iget-object v0, p0, Lbl/wy;->L:Landroid/media/AudioManager;

    iget-object v1, p0, Lbl/wy;->N:Lbl/wy$a;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 435
    invoke-virtual {p0}, Lbl/wy;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 436
    return-void
.end method

.method public b(II)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 484
    const/16 v0, 0x2bd

    if-ne p1, v0, :cond_17

    .line 485
    iget v0, p0, Lbl/wy;->g:I

    sput v0, Lbl/wy;->H:I

    .line 486
    iget-boolean v0, p0, Lbl/wy;->m:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lbl/wy;->n:Z

    if-eqz v0, :cond_12

    .line 508
    :cond_11
    :goto_11
    return-void

    .line 489
    :cond_12
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lbl/wy;->setStateAndUi(I)V

    goto :goto_11

    .line 492
    :cond_17
    const/16 v0, 0x2be

    if-ne p1, v0, :cond_2f

    .line 493
    sget v0, Lbl/wy;->H:I

    if-eq v0, v1, :cond_11

    .line 494
    iget-boolean v0, p0, Lbl/wy;->m:Z

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Lbl/wy;->n:Z

    if-nez v0, :cond_2c

    .line 495
    :cond_27
    sget v0, Lbl/wy;->H:I

    invoke-virtual {p0, v0}, Lbl/wy;->setStateAndUi(I)V

    .line 497
    :cond_2c
    sput v1, Lbl/wy;->H:I

    goto :goto_11

    .line 502
    :cond_2f
    const/16 v0, 0x2711

    if-ne p1, v0, :cond_11

    .line 503
    iput p2, p0, Lbl/wy;->h:I

    .line 504
    iget-object v0, p0, Lbl/wy;->x:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 505
    iget-object v0, p0, Lbl/wy;->x:Landroid/view/View;

    iget v1, p0, Lbl/wy;->h:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    goto :goto_11
.end method

.method protected b(IIII)V
    .locals 1

    .prologue
    .line 562
    iget-boolean v0, p0, Lbl/wy;->ac:Z

    .line 563
    const/16 v0, 0x5e

    if-le p2, v0, :cond_8

    .line 564
    const/16 p2, 0x64

    .line 566
    :cond_8
    if-eqz p2, :cond_c

    .line 567
    iget-boolean v0, p0, Lbl/wy;->o:Z

    .line 569
    :cond_c
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 440
    invoke-virtual {p0, v3}, Lbl/wy;->setStateAndUi(I)V

    .line 441
    iget-object v0, p0, Lbl/wy;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_12

    .line 442
    iget-object v0, p0, Lbl/wy;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 444
    :cond_12
    sget-boolean v0, Lbl/wy;->I:Z

    if-eqz v0, :cond_2d

    .line 445
    sput-boolean v3, Lbl/wy;->I:Z

    .line 446
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v0

    invoke-virtual {v0}, Lbl/wm;->c()Lbl/ws;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 447
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v0

    invoke-virtual {v0}, Lbl/wm;->c()Lbl/ws;

    move-result-object v0

    invoke-interface {v0}, Lbl/ws;->c()V

    .line 450
    :cond_2d
    iget-boolean v0, p0, Lbl/wy;->k:Z

    if-nez v0, :cond_44

    .line 451
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbl/ws;

    invoke-virtual {v2, v0}, Lbl/wm;->a(Lbl/ws;)V

    .line 452
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v0

    check-cast v1, Lbl/ws;

    invoke-virtual {v0, v1}, Lbl/wm;->b(Lbl/ws;)V

    .line 454
    :cond_44
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v0

    invoke-virtual {v0, v3}, Lbl/wm;->a(I)V

    .line 455
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v0

    invoke-virtual {v0, v3}, Lbl/wm;->b(I)V

    .line 456
    iget-object v0, p0, Lbl/wy;->L:Landroid/media/AudioManager;

    iget-object v1, p0, Lbl/wy;->N:Lbl/wy$a;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 457
    invoke-virtual {p0}, Lbl/wy;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 458
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public e()V
    .locals 4

    .prologue
    .line 209
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v0

    invoke-virtual {v0}, Lbl/wm;->i()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_10

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_11

    .line 221
    :cond_10
    :goto_10
    return-void

    .line 213
    :cond_11
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lbl/wy;->setStateAndUi(I)V

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lbl/wy;->aa:J

    .line 215
    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getCurrentPosition()J

    move-result-wide v2

    iput-wide v2, p0, Lbl/wy;->ab:J

    .line 217
    :try_start_21
    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->pause()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_10

    .line 218
    :catch_25
    move-exception v0

    .line 219
    invoke-static {v0}, Lbl/att;->a(Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method public f()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 225
    iput-wide v4, p0, Lbl/wy;->aa:J

    .line 226
    iget v0, p0, Lbl/wy;->g:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_19

    .line 227
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v0

    invoke-virtual {v0}, Lbl/wm;->i()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    .line 228
    iget-wide v2, p0, Lbl/wy;->ab:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_19

    if-nez v0, :cond_1a

    .line 239
    :cond_19
    :goto_19
    return-void

    .line 231
    :cond_1a
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lbl/wy;->setStateAndUi(I)V

    .line 232
    iget-wide v2, p0, Lbl/wy;->ab:J

    invoke-interface {v0, v2, v3}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->seekTo(J)V

    .line 234
    :try_start_23
    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->start()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_27

    goto :goto_19

    .line 235
    :catch_27
    move-exception v0

    .line 236
    invoke-static {v0}, Lbl/att;->a(Ljava/lang/Throwable;)V

    goto :goto_19
.end method

.method public g()V
    .locals 1

    .prologue
    .line 243
    sget-boolean v0, Lbl/wy;->J:Z

    if-eqz v0, :cond_21

    .line 244
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v0

    invoke-virtual {v0}, Lbl/wm;->b()Lbl/ws;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 245
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v0

    invoke-virtual {v0}, Lbl/wm;->b()Lbl/ws;

    move-result-object v0

    invoke-interface {v0}, Lbl/ws;->c()V

    .line 247
    :cond_19
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v0

    invoke-virtual {v0}, Lbl/wm;->d()V

    .line 251
    :goto_20
    return-void

    .line 250
    :cond_21
    const/4 v0, 0x1

    sput-boolean v0, Lbl/wy;->J:Z

    goto :goto_20
.end method

.method public getBufferPoint()I
    .locals 1

    .prologue
    .line 620
    iget v0, p0, Lbl/wy;->U:I

    return v0
.end method

.method public getCurrentPositionWhenPlaying()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 535
    iget v1, p0, Lbl/wy;->g:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_c

    iget v1, p0, Lbl/wy;->g:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_c

    .line 542
    :goto_b
    return v0

    .line 539
    :cond_c
    :try_start_c
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v1

    invoke-virtual {v1}, Lbl/wm;->i()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v1

    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getCurrentPosition()J
    :try_end_17
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_17} :catch_1a

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_b

    .line 540
    :catch_1a
    move-exception v1

    .line 541
    invoke-static {v1}, Lbl/att;->a(Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method public getCurrentState()I
    .locals 1

    .prologue
    .line 580
    iget v0, p0, Lbl/wy;->g:I

    return v0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 548
    :try_start_0
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v0

    invoke-virtual {v0}, Lbl/wm;->i()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getDuration()J
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_b} :catch_e

    move-result-wide v0

    long-to-int v0, v0

    .line 551
    :goto_d
    return v0

    .line 549
    :catch_e
    move-exception v0

    .line 550
    invoke-static {v0}, Lbl/att;->a(Ljava/lang/Throwable;)V

    .line 551
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public abstract getLayoutId()I
.end method

.method public getNetSpeedText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 608
    invoke-direct {p0}, Lbl/wy;->getNetSpeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Lbl/wu;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayPosition()I
    .locals 1

    .prologue
    .line 592
    iget v0, p0, Lbl/wy;->P:I

    return v0
.end method

.method public getPlayTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lbl/wy;->O:Ljava/lang/String;

    return-object v0
.end method

.method public getSeekOnStart()J
    .locals 2

    .prologue
    .line 612
    iget-wide v0, p0, Lbl/wy;->W:J

    return-wide v0
.end method

.method protected h()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 270
    iget-object v0, p0, Lbl/wy;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 271
    iget-object v0, p0, Lbl/wy;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 273
    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lbl/wy;->x:Landroid/view/View;

    .line 274
    sget v0, Lmybl/BiliFilter;->prefer_videoview:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_74

    new-instance v0, Lbl/wz3;

    invoke-virtual {p0}, Lbl/wy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lbl/wz3;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbl/wy;->x:Landroid/view/View;

    .line 279
    :goto_21
    iget-object v0, p0, Lbl/wy;->x:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 280
    const-string v1, "wy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u521b\u5efa\u6e32\u67d3\u89c6\u56fe: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", prefer_videoview="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lmybl/BiliFilter;->prefer_videoview:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    sget v0, Lmybl/BiliFilter;->prefer_videoview:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_91

    iget-object v0, p0, Lbl/wy;->x:Landroid/view/View;

    check-cast v0, Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 284
    :goto_5b
    iget-object v0, p0, Lbl/wy;->x:Landroid/view/View;

    iget v1, p0, Lbl/wy;->h:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 285
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 286
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 287
    iget-object v1, p0, Lbl/wy;->u:Landroid/view/ViewGroup;

    iget-object v2, p0, Lbl/wy;->x:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    return-void

    .line 275
    :cond_74
    sget v0, Lmybl/BiliFilter;->prefer_videoview:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_85

    new-instance v0, Lbl/wz2;

    invoke-virtual {p0}, Lbl/wy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lbl/wz2;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbl/wy;->x:Landroid/view/View;

    goto :goto_21

    .line 276
    :cond_85
    new-instance v0, Lbl/wz1;

    invoke-virtual {p0}, Lbl/wy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lbl/wz1;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbl/wy;->x:Landroid/view/View;

    goto :goto_21

    .line 283
    :cond_91
    iget-object v0, p0, Lbl/wy;->x:Landroid/view/View;

    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_5b
.end method

.method public i()V
    .locals 4

    .prologue
    .line 254
    invoke-virtual {p0}, Lbl/wy;->x()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lbl/wy;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_16

    .line 255
    invoke-virtual {p0}, Lbl/wy;->g()V

    .line 257
    :cond_16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/wy;->n:Z

    .line 258
    return-void
.end method

.method public m()V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lbl/wy;->v:Lbl/wt;

    if-eqz v0, :cond_12

    .line 187
    const-string v0, "onStart"

    invoke-static {v0}, Lbl/ww;->a(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lbl/wy;->v:Lbl/wt;

    iget-object v1, p0, Lbl/wy;->r:Ljava/lang/String;

    iget-object v2, p0, Lbl/wy;->s:[Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lbl/wt;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    :cond_12
    invoke-virtual {p0}, Lbl/wy;->n()V

    .line 191
    return-void
.end method

.method protected n()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 194
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v0

    invoke-virtual {v0}, Lbl/wm;->b()Lbl/ws;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 195
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v0

    invoke-virtual {v0}, Lbl/wm;->b()Lbl/ws;

    move-result-object v0

    invoke-interface {v0}, Lbl/ws;->c()V

    .line 197
    :cond_16
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbl/wm;->a(Lbl/ws;)V

    .line 198
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v0

    iget-object v1, p0, Lbl/wy;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbl/wm;->a(Ljava/lang/String;)V

    .line 199
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v0

    iget v1, p0, Lbl/wy;->P:I

    invoke-virtual {v0, v1}, Lbl/wm;->c(I)V

    .line 200
    invoke-virtual {p0}, Lbl/wy;->h()V

    .line 201
    iget-object v0, p0, Lbl/wy;->L:Landroid/media/AudioManager;

    iget-object v1, p0, Lbl/wy;->N:Lbl/wy$a;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 202
    invoke-virtual {p0}, Lbl/wy;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 203
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v0

    iget-object v1, p0, Lbl/wy;->r:Ljava/lang/String;

    iget-object v2, p0, Lbl/wy;->w:Ljava/util/Map;

    iget-boolean v3, p0, Lbl/wy;->m:Z

    iget v4, p0, Lbl/wy;->i:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lbl/wm;->a(Ljava/lang/String;Ljava/util/Map;ZF)V

    .line 204
    invoke-virtual {p0, v5}, Lbl/wy;->setStateAndUi(I)V

    .line 205
    return-void
.end method

.method public o()V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lbl/wy;->x:Landroid/view/View;

    if-eqz v0, :cond_17

    .line 292
    iget-boolean v0, p0, Lbl/wy;->ae:Z

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_9
    iput-boolean v0, p0, Lbl/wy;->ae:Z

    .line 293
    iget-object v0, p0, Lbl/wy;->x:Landroid/view/View;

    iget-object v1, p0, Lbl/wy;->x:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 297
    :cond_17
    return-void

    .line 292
    :cond_18
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .prologue
    .line 316
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lbl/wy;->K:Landroid/view/Surface;

    .line 317
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v0

    iget-object v1, p0, Lbl/wy;->K:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lbl/wm;->a(Landroid/view/Surface;)V

    .line 318
    invoke-virtual {p0}, Lbl/wy;->q()V

    .line 319
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .prologue
    .line 323
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {v1, v0}, Lbl/wm;->a(Landroid/view/Surface;)V

    .line 324
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 325
    invoke-virtual {p0}, Lbl/wy;->v()V

    .line 326
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 331
    invoke-virtual {p0}, Lbl/wy;->r()V

    .line 332
    return-void
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 300
    iget-boolean v0, p0, Lbl/wy;->ae:Z

    return v0
.end method

.method protected q()V
    .locals 2

    .prologue
    .line 354
    :try_start_0
    iget v0, p0, Lbl/wy;->g:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lbl/wy;->z:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lbl/wy;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 363
    :cond_11
    :goto_11
    return-void

    .line 357
    :cond_12
    iget-object v0, p0, Lbl/wy;->y:Landroid/widget/ImageView;

    iget v1, p0, Lbl/wy;->h:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 358
    iget-object v0, p0, Lbl/wy;->y:Landroid/widget/ImageView;

    iget-object v1, p0, Lbl/wy;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 359
    iget-object v0, p0, Lbl/wy;->y:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    goto :goto_11

    .line 360
    :catch_28
    move-exception v0

    .line 361
    invoke-static {v0}, Lbl/att;->a(Ljava/lang/Throwable;)V

    goto :goto_11
.end method

.method protected r()V
    .locals 2

    .prologue
    .line 367
    :try_start_0
    iget v0, p0, Lbl/wy;->g:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_11

    iget-object v0, p0, Lbl/wy;->z:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lbl/wy;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 376
    :cond_11
    :goto_11
    return-void

    .line 370
    :cond_12
    iget-object v0, p0, Lbl/wy;->y:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 371
    iget-object v0, p0, Lbl/wy;->y:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 372
    const/4 v0, 0x0

    iput-object v0, p0, Lbl/wy;->z:Landroid/graphics/Bitmap;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    goto :goto_11

    .line 373
    :catch_23
    move-exception v0

    .line 374
    invoke-static {v0}, Lbl/att;->a(Ljava/lang/Throwable;)V

    goto :goto_11
.end method

.method protected s()V
    .locals 2

    .prologue
    .line 380
    :try_start_0
    iget v0, p0, Lbl/wy;->g:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_11

    iget-object v0, p0, Lbl/wy;->z:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lbl/wy;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 390
    :cond_11
    :goto_11
    return-void

    .line 383
    :cond_12
    iget-object v0, p0, Lbl/wy;->y:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 384
    iget-object v0, p0, Lbl/wy;->y:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lbl/wy;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Lbl/wy;->z:Landroid/graphics/Bitmap;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    goto :goto_11

    .line 387
    :catch_28
    move-exception v0

    .line 388
    invoke-static {v0}, Lbl/att;->a(Ljava/lang/Throwable;)V

    goto :goto_11
.end method

.method public setIsTouchWiget(Z)V
    .locals 0

    .prologue
    .line 576
    iput-boolean p1, p0, Lbl/wy;->ad:Z

    .line 577
    return-void
.end method

.method public setPlayPosition(I)V
    .locals 0

    .prologue
    .line 596
    iput p1, p0, Lbl/wy;->P:I

    .line 597
    return-void
.end method

.method public setPlayTag(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 588
    iput-object p1, p0, Lbl/wy;->O:Ljava/lang/String;

    .line 589
    return-void
.end method

.method public setRotationView(I)V
    .locals 2

    .prologue
    .line 310
    iput p1, p0, Lbl/wy;->h:I

    .line 311
    iget-object v0, p0, Lbl/wy;->x:Landroid/view/View;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 312
    return-void
.end method

.method public setSeekOnStart(J)V
    .locals 1

    .prologue
    .line 616
    iput-wide p1, p0, Lbl/wy;->W:J

    .line 617
    return-void
.end method

.method protected setSmallVideoTextureView(Landroid/view/View$OnTouchListener;)V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lbl/wy;->x:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 306
    iget-object v0, p0, Lbl/wy;->x:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    return-void
.end method

.method protected setStateAndUi(I)V
    .locals 2

    .prologue
    .line 150
    iput p1, p0, Lbl/wy;->g:I

    .line 151
    iget v0, p0, Lbl/wy;->g:I

    packed-switch v0, :pswitch_data_44

    .line 183
    :cond_7
    :goto_7
    :pswitch_7
    return-void

    .line 153
    :pswitch_8
    invoke-virtual {p0}, Lbl/wy;->x()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 154
    invoke-virtual {p0}, Lbl/wy;->v()V

    .line 155
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v0

    invoke-virtual {v0}, Lbl/wm;->d()V

    .line 156
    invoke-virtual {p0}, Lbl/wy;->s()V

    .line 157
    const/4 v0, 0x0

    iput v0, p0, Lbl/wy;->U:I

    .line 159
    :cond_1e
    iget-object v0, p0, Lbl/wy;->L:Landroid/media/AudioManager;

    if-eqz v0, :cond_7

    .line 160
    iget-object v0, p0, Lbl/wy;->L:Landroid/media/AudioManager;

    iget-object v1, p0, Lbl/wy;->N:Lbl/wy$a;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_7

    .line 165
    :pswitch_2a
    invoke-virtual {p0}, Lbl/wy;->w()V

    goto :goto_7

    .line 168
    :pswitch_2e
    invoke-virtual {p0}, Lbl/wy;->u()V

    goto :goto_7

    .line 171
    :pswitch_32
    invoke-virtual {p0}, Lbl/wy;->u()V

    goto :goto_7

    .line 174
    :pswitch_36
    invoke-virtual {p0}, Lbl/wy;->v()V

    goto :goto_7

    .line 177
    :pswitch_3a
    invoke-virtual {p0}, Lbl/wy;->x()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 178
    invoke-static {}, Lbl/wm;->h()V

    goto :goto_7

    .line 151
    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_8
        :pswitch_2a
        :pswitch_2e
        :pswitch_7
        :pswitch_7
        :pswitch_32
        :pswitch_36
        :pswitch_3a
    .end packed-switch
.end method

.method protected setTextAndProgress(I)V
    .locals 4

    .prologue
    .line 556
    invoke-virtual {p0}, Lbl/wy;->getCurrentPositionWhenPlaying()I

    move-result v2

    .line 557
    invoke-virtual {p0}, Lbl/wy;->getDuration()I

    move-result v1

    .line 558
    mul-int/lit8 v3, v2, 0x64

    if-nez v1, :cond_13

    const/4 v0, 0x1

    :goto_d
    div-int v0, v3, v0

    invoke-virtual {p0, v0, p1, v2, v1}, Lbl/wy;->b(IIII)V

    .line 559
    return-void

    :cond_13
    move v0, v1

    .line 558
    goto :goto_d
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .prologue
    .line 349
    invoke-virtual {p0}, Lbl/wy;->r()V

    .line 350
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 336
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lbl/wy;->K:Landroid/view/Surface;

    .line 337
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v0

    iget-object v1, p0, Lbl/wy;->K:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lbl/wm;->a(Landroid/view/Surface;)V

    .line 338
    invoke-virtual {p0}, Lbl/wy;->q()V

    .line 339
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 343
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {v1, v0}, Lbl/wm;->a(Landroid/view/Surface;)V

    .line 344
    invoke-virtual {p0}, Lbl/wy;->v()V

    .line 345
    return-void
.end method

.method public t()V
    .locals 3

    .prologue
    .line 519
    iget-boolean v0, p0, Lbl/wy;->o:Z

    if-eqz v0, :cond_2e

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCacheFile Local Error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbl/wy;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbl/ww;->b(Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lbl/wy;->r:Ljava/lang/String;

    const-string v1, "file://"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbl/wu;->a(Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lbl/wy;->q:Ljava/lang/String;

    iput-object v0, p0, Lbl/wy;->r:Ljava/lang/String;

    .line 526
    :goto_2d
    return-void

    .line 525
    :cond_2e
    iget-object v0, p0, Lbl/wy;->r:Ljava/lang/String;

    const-string v1, "127.0.0.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    goto :goto_2d
.end method

.method protected u()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method protected v()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method protected w()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method protected x()Z
    .locals 1

    .prologue
    .line 572
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v0

    invoke-virtual {v0}, Lbl/wm;->b()Lbl/ws;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v0

    invoke-virtual {v0}, Lbl/wm;->b()Lbl/ws;

    move-result-object v0

    if-ne v0, p0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method
