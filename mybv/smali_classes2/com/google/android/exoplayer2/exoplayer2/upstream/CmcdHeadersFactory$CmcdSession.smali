.class final Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession;
.super Ljava/lang/Object;
.source "CmcdHeadersFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CmcdSession"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;
    }
.end annotation


# static fields
.field public static final VERSION:I = 0x1


# instance fields
.field public final contentId:Ljava/lang/String;

.field public final customData:Ljava/lang/String;

.field public final sessionId:Ljava/lang/String;

.field public final streamType:Ljava/lang/String;

.field public final streamingFormat:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;

    .line 657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    # getter for: Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;->contentId:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;->access$1100(Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession;->contentId:Ljava/lang/String;

    .line 659
    # getter for: Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;->sessionId:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;->access$1200(Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession;->sessionId:Ljava/lang/String;

    .line 660
    # getter for: Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;->streamingFormat:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;->access$1300(Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession;->streamingFormat:Ljava/lang/String;

    .line 661
    # getter for: Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;->streamType:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;->access$1400(Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession;->streamType:Ljava/lang/String;

    .line 662
    # getter for: Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;->customData:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;->access$1500(Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession;->customData:Ljava/lang/String;

    .line 663
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$1;

    .line 549
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession;-><init>(Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;)V

    return-void
.end method


# virtual methods
.method public populateHttpRequestHeaders(Lcom/google/common/collect/ImmutableMap$Builder;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap$Builder<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 673
    .local p1, "httpRequestHeaders":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 674
    .local v0, "headerValue":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession;->contentId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "%s=\"%s\","

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v1, :cond_23

    .line 675
    new-array v1, v3, [Ljava/lang/Object;

    const-string v6, "cid"

    aput-object v6, v1, v4

    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession;->contentId:Ljava/lang/String;

    aput-object v6, v1, v5

    .line 676
    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 675
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    :cond_23
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession;->sessionId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 679
    new-array v1, v3, [Ljava/lang/Object;

    const-string v6, "sid"

    aput-object v6, v1, v4

    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession;->sessionId:Ljava/lang/String;

    aput-object v6, v1, v5

    .line 680
    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 679
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    :cond_3c
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession;->streamingFormat:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "%s=%s,"

    if-nez v1, :cond_57

    .line 683
    new-array v1, v3, [Ljava/lang/Object;

    const-string v6, "sf"

    aput-object v6, v1, v4

    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession;->streamingFormat:Ljava/lang/String;

    aput-object v6, v1, v5

    .line 684
    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 683
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    :cond_57
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession;->streamType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_70

    .line 688
    new-array v1, v3, [Ljava/lang/Object;

    const-string v3, "st"

    aput-object v3, v1, v4

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession;->streamType:Ljava/lang/String;

    aput-object v3, v1, v5

    .line 689
    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 688
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    :cond_70
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession;->customData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_87

    .line 695
    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession;->customData:Ljava/lang/String;

    aput-object v2, v1, v4

    const-string v2, "%s,"

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    :cond_87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_8e

    .line 699
    return-void

    .line 702
    :cond_8e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 703
    const-string v1, "CMCD-Session"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 704
    return-void
.end method
