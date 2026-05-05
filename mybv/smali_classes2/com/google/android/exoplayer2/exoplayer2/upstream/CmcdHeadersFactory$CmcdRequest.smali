.class final Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest;
.super Ljava/lang/Object;
.source "CmcdHeadersFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CmcdRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;
    }
.end annotation


# instance fields
.field public final bufferLengthMs:J

.field public final customData:Ljava/lang/String;

.field public final measuredThroughputInKbps:J


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;)V
    .registers 4
    .param p1, "builder"    # Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    # getter for: Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;->bufferLengthMs:J
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;->access$700(Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest;->bufferLengthMs:J

    .line 510
    # getter for: Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;->measuredThroughputInKbps:J
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;->access$800(Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest;->measuredThroughputInKbps:J

    .line 511
    # getter for: Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;->customData:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;->access$900(Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest;->customData:Ljava/lang/String;

    .line 512
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$1;

    .line 423
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest;-><init>(Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public populateHttpRequestHeaders(Lcom/google/common/collect/ImmutableMap$Builder;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap$Builder<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 522
    .local p1, "httpRequestHeaders":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 523
    .local v0, "headerValue":Ljava/lang/StringBuilder;
    iget-wide v1, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest;->bufferLengthMs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x2

    const-string v6, "%s=%d,"

    const/4 v7, 0x0

    const/4 v8, 0x1

    cmp-long v9, v1, v3

    if-eqz v9, :cond_28

    .line 524
    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "bl"

    aput-object v4, v3, v7

    .line 525
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v8

    invoke-static {v6, v3}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 524
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    :cond_28
    iget-wide v1, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest;->measuredThroughputInKbps:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v9, v1, v3

    if-eqz v9, :cond_43

    .line 528
    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "mtp"

    aput-object v4, v3, v7

    .line 530
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v8

    .line 529
    invoke-static {v6, v3}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    :cond_43
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest;->customData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5a

    .line 533
    new-array v1, v8, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest;->customData:Ljava/lang/String;

    aput-object v2, v1, v7

    const-string v2, "%s,"

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    :cond_5a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_61

    .line 537
    return-void

    .line 540
    :cond_61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 541
    const-string v1, "CMCD-Request"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 542
    return-void
.end method
