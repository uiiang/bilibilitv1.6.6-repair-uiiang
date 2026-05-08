.class final Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus;
.super Ljava/lang/Object;
.source "CmcdHeadersFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CmcdStatus"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;
    }
.end annotation


# instance fields
.field public final customData:Ljava/lang/String;

.field public final maximumRequestedThroughputKbps:I


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;

    .line 770
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 771
    # getter for: Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;->maximumRequestedThroughputKbps:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;->access$1700(Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus;->maximumRequestedThroughputKbps:I

    .line 772
    # getter for: Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;->customData:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;->access$1800(Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus;->customData:Ljava/lang/String;

    .line 773
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$1;

    .line 710
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus;-><init>(Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;)V

    return-void
.end method


# virtual methods
.method public populateHttpRequestHeaders(Lcom/google/common/collect/ImmutableMap$Builder;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap$Builder<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 783
    .local p1, "httpRequestHeaders":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 784
    .local v0, "headerValue":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus;->maximumRequestedThroughputKbps:I

    const v2, -0x7fffffff

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_24

    .line 785
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "rtp"

    aput-object v5, v2, v3

    .line 788
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    .line 786
    const-string v1, "%s=%d,"

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 785
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    :cond_24
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus;->customData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 791
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus;->customData:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v2, "%s,"

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    :cond_3b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_42

    .line 795
    return-void

    .line 798
    :cond_42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 799
    const-string v1, "CMCD-Status"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 800
    return-void
.end method
