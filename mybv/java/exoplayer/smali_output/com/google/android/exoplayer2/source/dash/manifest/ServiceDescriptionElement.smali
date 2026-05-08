.class public final Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;
.super Ljava/lang/Object;
.source "ServiceDescriptionElement.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final maxOffsetMs:J

.field public final maxPlaybackSpeed:F

.field public final minOffsetMs:J

.field public final minPlaybackSpeed:F

.field public final targetOffsetMs:J


# direct methods
.method public constructor <init>(JJJFF)V
    .registers 9
    .param p1, "targetOffsetMs"    # J
    .param p3, "minOffsetMs"    # J
    .param p5, "maxOffsetMs"    # J
    .param p7, "minPlaybackSpeed"    # F
    .param p8, "maxPlaybackSpeed"    # F

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;->targetOffsetMs:J

    .line 69
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;->minOffsetMs:J

    .line 70
    iput-wide p5, p0, Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;->maxOffsetMs:J

    .line 71
    iput p7, p0, Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;->minPlaybackSpeed:F

    .line 72
    iput p8, p0, Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;->maxPlaybackSpeed:F

    .line 73
    return-void
.end method
