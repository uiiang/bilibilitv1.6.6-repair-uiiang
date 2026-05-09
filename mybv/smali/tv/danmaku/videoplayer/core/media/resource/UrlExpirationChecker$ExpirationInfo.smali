.class public Ltv/danmaku/videoplayer/core/media/resource/UrlExpirationChecker$ExpirationInfo;
.super Ljava/lang/Object;
.source "UrlExpirationChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/videoplayer/core/media/resource/UrlExpirationChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpirationInfo"
.end annotation


# instance fields
.field public final deadlineEpochSec:J

.field public final isExpired:Z

.field public final isExpiringSoon:Z

.field public final remainingSeconds:J

.field public final timeParam:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJLjava/lang/String;)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide p1, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlExpirationChecker$ExpirationInfo;->deadlineEpochSec:J

    .line 19
    iput-wide p3, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlExpirationChecker$ExpirationInfo;->remainingSeconds:J

    .line 20
    cmp-long v0, p3, v4

    if-gez v0, :cond_21

    move v0, v1

    :goto_10
    iput-boolean v0, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlExpirationChecker$ExpirationInfo;->isExpired:Z

    .line 21
    cmp-long v0, p3, v4

    if-ltz v0, :cond_23

    const-wide/16 v4, 0x258

    cmp-long v0, p3, v4

    if-gez v0, :cond_23

    :goto_1c
    iput-boolean v1, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlExpirationChecker$ExpirationInfo;->isExpiringSoon:Z

    .line 22
    iput-object p5, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlExpirationChecker$ExpirationInfo;->timeParam:Ljava/lang/String;

    .line 23
    return-void

    :cond_21
    move v0, v2

    .line 20
    goto :goto_10

    :cond_23
    move v1, v2

    .line 21
    goto :goto_1c
.end method
