.class final Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;
.super Ljava/lang/Object;
.source "ShotBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/video/widget/ShotBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingLoad"
.end annotation


# instance fields
.field final cacheKey:Ljava/lang/String;

.field final holderRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;",
            ">;"
        }
    .end annotation
.end field

.field final imageIndex:I

.field final item:Lcom/bilibili/tv/api/video/VideoShotItem;

.field final version:J


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Lcom/bilibili/tv/api/video/VideoShotItem;ILjava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;",
            ">;",
            "Lcom/bilibili/tv/api/video/VideoShotItem;",
            "I",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 541
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;->holderRef:Ljava/lang/ref/WeakReference;

    .line 542
    iput-object p2, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;->item:Lcom/bilibili/tv/api/video/VideoShotItem;

    .line 543
    iput p3, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;->imageIndex:I

    .line 544
    iput-object p4, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;->cacheKey:Ljava/lang/String;

    .line 545
    iput-wide p5, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;->version:J

    .line 546
    return-void
.end method
