.class public final Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;
.super Ljava/lang/Object;
.source "CmcdHeadersFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private bufferLengthMs:J

.field private customData:Ljava/lang/String;

.field private measuredThroughputInKbps:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;->bufferLengthMs:J

    .line 434
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;->measuredThroughputInKbps:J

    .line 435
    return-void
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;

    .line 426
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;->bufferLengthMs:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;

    .line 426
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;->measuredThroughputInKbps:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;

    .line 426
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;->customData:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest;
    .registers 3

    .line 472
    new-instance v0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest;-><init>(Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$1;)V

    return-object v0
.end method

.method public setBufferLengthMs(J)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;
    .registers 7
    .param p1, "bufferLengthMs"    # J

    .line 445
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 446
    const-wide/16 v0, 0x32

    add-long/2addr v0, p1

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;->bufferLengthMs:J

    .line 447
    return-object p0
.end method

.method public setCustomData(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;
    .registers 2
    .param p1, "customData"    # Ljava/lang/String;

    .line 467
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;->customData:Ljava/lang/String;

    .line 468
    return-object p0
.end method

.method public setMeasuredThroughputInKbps(J)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;
    .registers 7
    .param p1, "measuredThroughputInKbps"    # J

    .line 458
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 459
    const-wide/16 v0, 0x32

    add-long/2addr v0, p1

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;->measuredThroughputInKbps:J

    .line 461
    return-object p0
.end method
