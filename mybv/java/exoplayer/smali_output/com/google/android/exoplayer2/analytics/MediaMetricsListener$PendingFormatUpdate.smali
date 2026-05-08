.class final Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;
.super Ljava/lang/Object;
.source "MediaMetricsListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingFormatUpdate"
.end annotation


# instance fields
.field public final format:Lcom/google/android/exoplayer2/Format;

.field public final selectionReason:I

.field public final sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Format;ILjava/lang/String;)V
    .registers 4
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p2, "selectionReason"    # I
    .param p3, "sessionId"    # Ljava/lang/String;

    .line 894
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 895
    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;->format:Lcom/google/android/exoplayer2/Format;

    .line 896
    iput p2, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;->selectionReason:I

    .line 897
    iput-object p3, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;->sessionId:Ljava/lang/String;

    .line 898
    return-void
.end method
