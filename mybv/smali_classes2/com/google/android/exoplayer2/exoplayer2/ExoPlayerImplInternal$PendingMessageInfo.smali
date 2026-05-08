.class final Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingMessageInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final message:Lcom/google/android/exoplayer2/PlayerMessage;

.field public resolvedPeriodIndex:I

.field public resolvedPeriodTimeUs:J

.field public resolvedPeriodUid:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/PlayerMessage;)V
    .registers 2
    .param p1, "message"    # Lcom/google/android/exoplayer2/PlayerMessage;

    .line 3139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3140
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplayer2/PlayerMessage;

    .line 3141
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;)I
    .registers 7
    .param p1, "other"    # Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    .line 3151
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_8

    const/4 v3, 0x1

    goto :goto_9

    :cond_8
    const/4 v3, 0x0

    :goto_9
    iget-object v4, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    if-nez v4, :cond_f

    const/4 v4, 0x1

    goto :goto_10

    :cond_f
    const/4 v4, 0x0

    :goto_10
    if-eq v3, v4, :cond_16

    .line 3153
    if-eqz v0, :cond_15

    const/4 v1, -0x1

    :cond_15
    return v1

    .line 3155
    :cond_16
    if-nez v0, :cond_19

    .line 3157
    return v2

    .line 3160
    :cond_19
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    iget v1, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    sub-int/2addr v0, v1

    .line 3161
    .local v0, "comparePeriodIndex":I
    if-eqz v0, :cond_21

    .line 3162
    return v0

    .line 3164
    :cond_21
    iget-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    iget-wide v3, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/exoplayer2/util/Util;->compareLong(JJ)I

    move-result v1

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 3131
    check-cast p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->compareTo(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;)I

    move-result p1

    return p1
.end method

.method public setResolvedPosition(IJLjava/lang/Object;)V
    .registers 5
    .param p1, "periodIndex"    # I
    .param p2, "periodTimeUs"    # J
    .param p4, "periodUid"    # Ljava/lang/Object;

    .line 3144
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    .line 3145
    iput-wide p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    .line 3146
    iput-object p4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    .line 3147
    return-void
.end method
