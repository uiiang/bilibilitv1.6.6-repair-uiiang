.class public final Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;
.super Ljava/lang/Object;
.source "CmcdConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;,
        Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$Factory;,
        Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$CmcdKey;,
        Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$HeaderKey;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final KEY_BITRATE:Ljava/lang/String; = "br"

.field public static final KEY_BUFFER_LENGTH:Ljava/lang/String; = "bl"

.field public static final KEY_CMCD_OBJECT:Ljava/lang/String; = "CMCD-Object"

.field public static final KEY_CMCD_REQUEST:Ljava/lang/String; = "CMCD-Request"

.field public static final KEY_CMCD_SESSION:Ljava/lang/String; = "CMCD-Session"

.field public static final KEY_CMCD_STATUS:Ljava/lang/String; = "CMCD-Status"

.field public static final KEY_CONTENT_ID:Ljava/lang/String; = "cid"

.field public static final KEY_MAXIMUM_REQUESTED_BITRATE:Ljava/lang/String; = "rtp"

.field public static final KEY_MEASURED_THROUGHPUT:Ljava/lang/String; = "mtp"

.field public static final KEY_OBJECT_DURATION:Ljava/lang/String; = "d"

.field public static final KEY_OBJECT_TYPE:Ljava/lang/String; = "ot"

.field public static final KEY_SESSION_ID:Ljava/lang/String; = "sid"

.field public static final KEY_STREAMING_FORMAT:Ljava/lang/String; = "sf"

.field public static final KEY_STREAM_TYPE:Ljava/lang/String; = "st"

.field public static final KEY_TOP_BITRATE:Ljava/lang/String; = "tb"

.field public static final KEY_VERSION:Ljava/lang/String; = "v"

.field public static final MAX_ID_LENGTH:I = 0x40


# instance fields
.field public final contentId:Ljava/lang/String;

.field public final requestConfig:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;

.field public final sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;)V
    .registers 8
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "contentId"    # Ljava/lang/String;
    .param p3, "requestConfig"    # Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    const/4 v0, 0x0

    const/16 v1, 0x40

    const/4 v2, 0x1

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v1, :cond_10

    goto :goto_12

    :cond_10
    const/4 v3, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v3, 0x1

    :goto_13
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 214
    if-eqz p2, :cond_1e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v1, :cond_1f

    :cond_1e
    const/4 v0, 0x1

    :cond_1f
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 215
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->sessionId:Ljava/lang/String;

    .line 217
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->contentId:Ljava/lang/String;

    .line 218
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->requestConfig:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;

    .line 219
    return-void
.end method


# virtual methods
.method public isBitrateLoggingAllowed()Z
    .registers 3

    .line 226
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->requestConfig:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;

    const-string v1, "br"

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;->isKeyAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isBufferLengthLoggingAllowed()Z
    .registers 3

    .line 234
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->requestConfig:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;

    const-string v1, "bl"

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;->isKeyAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isContentIdLoggingAllowed()Z
    .registers 3

    .line 242
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->requestConfig:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;

    const-string v1, "cid"

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;->isKeyAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMaximumRequestThroughputLoggingAllowed()Z
    .registers 3

    .line 258
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->requestConfig:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;

    const-string v1, "rtp"

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;->isKeyAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMeasuredThroughputLoggingAllowed()Z
    .registers 3

    .line 298
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->requestConfig:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;

    const-string v1, "mtp"

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;->isKeyAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isObjectDurationLoggingAllowed()Z
    .registers 3

    .line 290
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->requestConfig:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;

    const-string v1, "d"

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;->isKeyAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isObjectTypeLoggingAllowed()Z
    .registers 3

    .line 306
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->requestConfig:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;

    const-string v1, "ot"

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;->isKeyAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSessionIdLoggingAllowed()Z
    .registers 3

    .line 250
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->requestConfig:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;

    const-string v1, "sid"

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;->isKeyAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isStreamTypeLoggingAllowed()Z
    .registers 3

    .line 274
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->requestConfig:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;

    const-string v1, "st"

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;->isKeyAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isStreamingFormatLoggingAllowed()Z
    .registers 3

    .line 266
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->requestConfig:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;

    const-string v1, "sf"

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;->isKeyAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isTopBitrateLoggingAllowed()Z
    .registers 3

    .line 282
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->requestConfig:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;

    const-string v1, "tb"

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;->isKeyAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
