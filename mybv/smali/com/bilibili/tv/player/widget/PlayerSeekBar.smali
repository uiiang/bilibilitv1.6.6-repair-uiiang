.class public Lcom/bilibili/tv/player/widget/PlayerSeekBar;
.super Landroid/widget/LinearLayout;
.source "PlayerSeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/player/widget/PlayerSeekBar$SnapshotLoadCallback;
    }
.end annotation


# static fields
.field private static final PREVIEW_HEIGHT:I = 0xb4

.field private static final PREVIEW_WIDTH:I = 0x140

.field private static final TAG:Ljava/lang/String; = "PlayerSeekBar_java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/SeekBar;

.field private c:Z

.field private d:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private duration:I

.field private snapshotCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private videoShot:Lcom/bilibili/tv/api/video/VideoShot;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 23
    iput-boolean v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->c:Z

    .line 33
    iput-boolean v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->c:Z

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->d:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 35
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->initSnapshotCache()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput-boolean v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->c:Z

    .line 40
    iput-boolean v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->c:Z

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->d:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 42
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->initSnapshotCache()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    iput-boolean v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->c:Z

    .line 47
    iput-boolean v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->c:Z

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->d:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 49
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->initSnapshotCache()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 23
    iput-boolean v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->c:Z

    .line 55
    iput-boolean v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->c:Z

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->d:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 57
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->initSnapshotCache()V

    .line 58
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 85
    :cond_4
    :goto_4
    return-void

    .line 73
    :cond_5
    const v0, 0x7f08012c

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->a:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f080109

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->b:Landroid/widget/SeekBar;

    .line 75
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->b:Landroid/widget/SeekBar;

    if-eqz v0, :cond_4

    .line 78
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/bilibili/tv/player/widget/PlayerSeekBar$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/player/widget/PlayerSeekBar$2;-><init>(Lcom/bilibili/tv/player/widget/PlayerSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 84
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->b:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto :goto_4
.end method

.method private a(I)V
    .locals 4

    .prologue
    .line 88
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    .line 89
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->a:Landroid/widget/TextView;

    int-to-long v2, p1

    invoke-static {v2, v3}, Lbl/aan;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :cond_e
    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/player/widget/PlayerSeekBar;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->b:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bilibili/tv/player/widget/PlayerSeekBar;I)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->a(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/bilibili/tv/player/widget/PlayerSeekBar;)Lcom/bilibili/tv/api/video/VideoShot;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bilibili/tv/player/widget/PlayerSeekBar;)Landroid/util/LruCache;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->snapshotCache:Landroid/util/LruCache;

    return-object v0
.end method

.method private b(I)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, -0x2

    .line 94
    iget-boolean v1, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->c:Z

    if-nez v1, :cond_e

    .line 95
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->a:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    :goto_d
    return-void

    .line 98
    :cond_e
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    .line 100
    int-to-float v2, p1

    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->b:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 101
    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->b:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->b:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->b:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 102
    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->b:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->b:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 103
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 104
    float-to-int v2, v2

    .line 105
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v1, v3, v1

    .line 106
    if-gez v2, :cond_77

    move v1, v0

    .line 111
    :cond_60
    :goto_60
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 112
    if-nez v0, :cond_6f

    .line 113
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 115
    :cond_6f
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 116
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_d

    .line 108
    :cond_77
    if-gt v2, v1, :cond_60

    move v1, v2

    goto :goto_60
.end method

.method private initSnapshotCache()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lcom/bilibili/tv/player/widget/PlayerSeekBar$1;

    const/high16 v1, 0x500000

    invoke-direct {v0, p0, v1}, Lcom/bilibili/tv/player/widget/PlayerSeekBar$1;-><init>(Lcom/bilibili/tv/player/widget/PlayerSeekBar;I)V

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->snapshotCache:Landroid/util/LruCache;

    .line 67
    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->b:Landroid/widget/SeekBar;

    if-eqz v0, :cond_9

    .line 167
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->b:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 169
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->c:Z

    .line 170
    return-void
.end method

.method public clearCache()V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->snapshotCache:Landroid/util/LruCache;

    if-eqz v0, :cond_9

    .line 329
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->snapshotCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 331
    :cond_9
    return-void
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->duration:I

    return v0
.end method

.method public getSnapshot(I)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 206
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    invoke-virtual {v1}, Lcom/bilibili/tv/api/video/VideoShot;->getIndex()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    invoke-virtual {v1}, Lcom/bilibili/tv/api/video/VideoShot;->getImage()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    invoke-virtual {v1}, Lcom/bilibili/tv/api/video/VideoShot;->getImage()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 221
    :cond_21
    :goto_21
    return-object v0

    .line 210
    :cond_22
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    invoke-virtual {v1, p1}, Lcom/bilibili/tv/api/video/VideoShot;->getSnapshotIndex(I)I

    move-result v1

    .line 211
    if-ltz v1, :cond_21

    .line 215
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    invoke-virtual {v2, v1}, Lcom/bilibili/tv/api/video/VideoShot;->getImageUrl(I)Ljava/lang/String;

    move-result-object v2

    .line 216
    if-eqz v2, :cond_21

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->snapshotCache:Landroid/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_21
.end method

.method public getVideoShot()Lcom/bilibili/tv/api/video/VideoShot;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    return-object v0
.end method

.method public loadSnapshotAsync(ILcom/bilibili/tv/player/widget/PlayerSeekBar$SnapshotLoadCallback;)V
    .locals 7

    .prologue
    .line 225
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    invoke-virtual {v0}, Lcom/bilibili/tv/api/video/VideoShot;->getIndex()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    invoke-virtual {v0}, Lcom/bilibili/tv/api/video/VideoShot;->getImage()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    invoke-virtual {v0}, Lcom/bilibili/tv/api/video/VideoShot;->getImage()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 226
    :cond_20
    invoke-interface {p2}, Lcom/bilibili/tv/player/widget/PlayerSeekBar$SnapshotLoadCallback;->onLoadFailed()V

    .line 320
    :goto_23
    return-void

    .line 230
    :cond_24
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/api/video/VideoShot;->getSnapshotIndex(I)I

    move-result v4

    .line 231
    if-gez v4, :cond_30

    .line 232
    invoke-interface {p2}, Lcom/bilibili/tv/player/widget/PlayerSeekBar$SnapshotLoadCallback;->onLoadFailed()V

    goto :goto_23

    .line 236
    :cond_30
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/api/video/VideoShot;->getImageUrl(I)Ljava/lang/String;

    move-result-object v2

    .line 237
    if-nez v2, :cond_3c

    .line 238
    invoke-interface {p2}, Lcom/bilibili/tv/player/widget/PlayerSeekBar$SnapshotLoadCallback;->onLoadFailed()V

    goto :goto_23

    .line 242
    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 244
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->snapshotCache:Landroid/util/LruCache;

    invoke-virtual {v0, v5}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 245
    if-eqz v0, :cond_61

    .line 246
    invoke-interface {p2, v0}, Lcom/bilibili/tv/player/widget/PlayerSeekBar$SnapshotLoadCallback;->onLoadSuccess(Landroid/graphics/Bitmap;)V

    goto :goto_23

    .line 250
    :cond_61
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/bilibili/tv/player/widget/PlayerSeekBar$3;

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/bilibili/tv/player/widget/PlayerSeekBar$3;-><init>(Lcom/bilibili/tv/player/widget/PlayerSeekBar;Ljava/lang/String;Lcom/bilibili/tv/player/widget/PlayerSeekBar$SnapshotLoadCallback;ILjava/lang/String;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 319
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_23
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 120
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 121
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->a()V

    .line 122
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    .prologue
    .line 125
    const-string v0, "PlayerSeekBar_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged: progress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fromUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    if-eqz p3, :cond_27

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->c:Z

    .line 130
    :cond_27
    invoke-direct {p0, p2}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->a(I)V

    .line 131
    invoke-direct {p0, p2}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->b(I)V

    .line 133
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->d:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_36

    .line 134
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->d:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 136
    :cond_36
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->d:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_9

    .line 140
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->d:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 142
    :cond_9
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->d:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_9

    .line 146
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->d:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 148
    :cond_9
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 151
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->a:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->c:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 153
    return-void

    .line 151
    :cond_e
    const/16 v0, 0x8

    goto :goto_7
.end method

.method public setDuration(I)V
    .locals 3

    .prologue
    .line 197
    const-string v0, "PlayerSeekBar_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDuration: duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iput p1, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->duration:I

    .line 199
    return-void
.end method

.method public setMax(I)V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->b:Landroid/widget/SeekBar;

    if-eqz v0, :cond_9

    .line 161
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->b:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 163
    :cond_9
    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->d:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 157
    return-void
.end method

.method public setProgress(I)V
    .locals 3

    .prologue
    .line 173
    const-string v0, "PlayerSeekBar_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProgress called with progress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->a(IZ)V

    .line 175
    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 3

    .prologue
    .line 178
    const-string v0, "PlayerSeekBar_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSecondaryProgress called with secondaryProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->b:Landroid/widget/SeekBar;

    if-eqz v0, :cond_21

    .line 180
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->b:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 182
    :cond_21
    return-void
.end method

.method public setVideoShot(Lcom/bilibili/tv/api/video/VideoShot;)V
    .locals 3

    .prologue
    .line 185
    const-string v0, "PlayerSeekBar_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoShot: shot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    .line 187
    if-eqz p1, :cond_46

    .line 188
    const-string v0, "PlayerSeekBar_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoShot: image="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/VideoShot;->getImage()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/VideoShot;->getIndex()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_46
    return-void
.end method
