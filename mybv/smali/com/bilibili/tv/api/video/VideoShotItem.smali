.class public Lcom/bilibili/tv/api/video/VideoShotItem;
.super Ljava/lang/Object;
.source "VideoShotItem.java"


# instance fields
.field public imageIndex:I

.field public time:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/bilibili/tv/api/video/VideoShotItem;->time:I

    .line 9
    iput p2, p0, Lcom/bilibili/tv/api/video/VideoShotItem;->imageIndex:I

    .line 10
    return-void
.end method
