.class public final Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;
.super Ljava/lang/Object;
.source "CmcdHeadersFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private contentId:Ljava/lang/String;

.field private customData:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;

.field private streamType:Ljava/lang/String;

.field private streamingFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;

    .line 552
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;->contentId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;

    .line 552
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;

    .line 552
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;->streamingFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;

    .line 552
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;->streamType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;

    .line 552
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;->customData:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession;
    .registers 3

    .line 609
    new-instance v0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession;-><init>(Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$1;)V

    return-object v0
.end method

.method public setContentId(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;
    .registers 4
    .param p1, "contentId"    # Ljava/lang/String;

    .line 568
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 569
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;->contentId:Ljava/lang/String;

    .line 570
    return-object p0
.end method

.method public setCustomData(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;
    .registers 2
    .param p1, "customData"    # Ljava/lang/String;

    .line 604
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;->customData:Ljava/lang/String;

    .line 605
    return-object p0
.end method

.method public setSessionId(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;
    .registers 4
    .param p1, "sessionId"    # Ljava/lang/String;

    .line 582
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 583
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;->sessionId:Ljava/lang/String;

    .line 584
    return-object p0
.end method

.method public setStreamType(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;
    .registers 2
    .param p1, "streamType"    # Ljava/lang/String;

    .line 597
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;->streamType:Ljava/lang/String;

    .line 598
    return-object p0
.end method

.method public setStreamingFormat(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;
    .registers 2
    .param p1, "streamingFormat"    # Ljava/lang/String;

    .line 590
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;->streamingFormat:Ljava/lang/String;

    .line 591
    return-object p0
.end method
