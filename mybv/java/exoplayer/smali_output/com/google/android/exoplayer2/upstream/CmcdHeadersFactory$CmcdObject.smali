.class final Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject;
.super Ljava/lang/Object;
.source "CmcdHeadersFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CmcdObject"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;
    }
.end annotation


# instance fields
.field public final bitrateKbps:I

.field public final customData:Ljava/lang/String;

.field public final objectDurationMs:J

.field public final objectType:Ljava/lang/String;

.field public final topBitrateKbps:I


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;)V
    .registers 4
    .param p1, "builder"    # Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    # getter for: Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;->bitrateKbps:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;->access$100(Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject;->bitrateKbps:I

    .line 377
    # getter for: Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;->topBitrateKbps:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;->access$200(Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject;->topBitrateKbps:I

    .line 378
    # getter for: Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;->objectDurationMs:J
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;->access$300(Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject;->objectDurationMs:J

    .line 379
    # getter for: Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;->objectType:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;->access$400(Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject;->objectType:Ljava/lang/String;

    .line 380
    # getter for: Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;->customData:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;->access$500(Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject;->customData:Ljava/lang/String;

    .line 381
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$1;

    .line 270
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject;-><init>(Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;)V

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

    .line 391
    .local p1, "httpRequestHeaders":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    .local v0, "headerValue":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject;->bitrateKbps:I

    const-string v2, "%s=%d,"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v6, -0x7fffffff

    if-eq v1, v6, :cond_24

    .line 393
    new-array v7, v3, [Ljava/lang/Object;

    const-string v8, "br"

    aput-object v8, v7, v4

    .line 394
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v5

    invoke-static {v2, v7}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 393
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    :cond_24
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject;->topBitrateKbps:I

    if-eq v1, v6, :cond_3b

    .line 397
    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "tb"

    aput-object v7, v6, v4

    .line 398
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v5

    invoke-static {v2, v6}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 397
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    :cond_3b
    iget-wide v6, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject;->objectDurationMs:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v6, v8

    if-eqz v1, :cond_59

    .line 401
    new-array v1, v3, [Ljava/lang/Object;

    const-string v8, "d"

    aput-object v8, v1, v4

    .line 403
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v1, v5

    .line 402
    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 401
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    :cond_59
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject;->objectType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_74

    .line 406
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "ot"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject;->objectType:Ljava/lang/String;

    aput-object v2, v1, v5

    .line 407
    const-string v2, "%s=%s,"

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 406
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    :cond_74
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject;->customData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8b

    .line 410
    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject;->customData:Ljava/lang/String;

    aput-object v2, v1, v4

    const-string v2, "%s,"

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    :cond_8b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_92

    .line 414
    return-void

    .line 417
    :cond_92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 418
    const-string v1, "CMCD-Object"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 419
    return-void
.end method
