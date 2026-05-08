.class final Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;
.super Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;
.source "CeaDecoder.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/cea/CeaDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CeaInputBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field private queuedInputBufferCount:J


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 184
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/text/cea/CeaDecoder$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/android/exoplayer2/text/cea/CeaDecoder$1;

    .line 184
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;J)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;
    .param p1, "x1"    # J

    .line 184
    iput-wide p1, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;->queuedInputBufferCount:J

    return-wide p1
.end method


# virtual methods
.method public compareTo(Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;)I
    .registers 12
    .param p1, "other"    # Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;

    .line 191
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;->isEndOfStream()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;->isEndOfStream()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_15

    .line 192
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;->isEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v2, -0x1

    :goto_14
    return v2

    .line 194
    :cond_15
    iget-wide v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;->timeUs:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;->timeUs:J

    sub-long/2addr v0, v4

    .line 195
    .local v0, "delta":J
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_2c

    .line 196
    iget-wide v6, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;->queuedInputBufferCount:J

    iget-wide v8, p1, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;->queuedInputBufferCount:J

    sub-long v0, v6, v8

    .line 197
    cmp-long v6, v0, v4

    if-nez v6, :cond_2c

    .line 198
    const/4 v2, 0x0

    return v2

    .line 201
    :cond_2c
    cmp-long v6, v0, v4

    if-lez v6, :cond_31

    goto :goto_32

    :cond_31
    const/4 v2, -0x1

    :goto_32
    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 184
    check-cast p1, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;->compareTo(Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;)I

    move-result p1

    return p1
.end method
