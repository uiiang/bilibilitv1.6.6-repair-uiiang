.class final Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;
.super Ljava/lang/Object;
.source "MediaCodecUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CodecKey"
.end annotation


# instance fields
.field public final mimeType:Ljava/lang/String;

.field public final secure:Z

.field public final tunneling:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .registers 4
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "secure"    # Z
    .param p3, "tunneling"    # Z

    .line 1160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1161
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    .line 1162
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;->secure:Z

    .line 1163
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;->tunneling:Z

    .line 1164
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1178
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1179
    return v0

    .line 1181
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;

    if-eq v2, v3, :cond_10

    goto :goto_2c

    .line 1184
    :cond_10
    move-object v2, p1

    check-cast v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;

    .line 1185
    .local v2, "other":Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;->secure:Z

    iget-boolean v4, v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;->secure:Z

    if-ne v3, v4, :cond_2a

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;->tunneling:Z

    iget-boolean v4, v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;->tunneling:Z

    if-ne v3, v4, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    return v0

    .line 1182
    .end local v2    # "other":Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;
    :cond_2c
    :goto_2c
    return v1
.end method

.method public hashCode()I
    .registers 7

    .line 1168
    const/16 v0, 0x1f

    .line 1169
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 1170
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 1171
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;->secure:Z

    const/16 v4, 0x4cf

    const/16 v5, 0x4d5

    if-eqz v3, :cond_19

    const/16 v3, 0x4cf

    goto :goto_1b

    :cond_19
    const/16 v3, 0x4d5

    :goto_1b
    add-int/2addr v1, v3

    .line 1172
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;->tunneling:Z

    if-eqz v3, :cond_23

    goto :goto_25

    :cond_23
    const/16 v4, 0x4d5

    :goto_25
    add-int/2addr v2, v4

    .line 1173
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method
