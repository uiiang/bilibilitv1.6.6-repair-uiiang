.class final Lcom/google/android/exoplayer2/extractor/avi/AviStreamHeaderChunk;
.super Ljava/lang/Object;
.source "AviStreamHeaderChunk.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/avi/AviChunk;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AviStreamHeaderChunk"


# instance fields
.field public final initialFrames:I

.field public final length:I

.field public final rate:I

.field public final scale:I

.field public final streamType:I

.field public final suggestedBufferSize:I


# direct methods
.method private constructor <init>(IIIIII)V
    .registers 7
    .param p1, "streamType"    # I
    .param p2, "initialFrames"    # I
    .param p3, "scale"    # I
    .param p4, "rate"    # I
    .param p5, "length"    # I
    .param p6, "suggestedBufferSize"    # I

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviStreamHeaderChunk;->streamType:I

    .line 60
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviStreamHeaderChunk;->initialFrames:I

    .line 61
    iput p3, p0, Lcom/google/android/exoplayer2/extractor/avi/AviStreamHeaderChunk;->scale:I

    .line 62
    iput p4, p0, Lcom/google/android/exoplayer2/extractor/avi/AviStreamHeaderChunk;->rate:I

    .line 63
    iput p5, p0, Lcom/google/android/exoplayer2/extractor/avi/AviStreamHeaderChunk;->length:I

    .line 64
    iput p6, p0, Lcom/google/android/exoplayer2/extractor/avi/AviStreamHeaderChunk;->suggestedBufferSize:I

    .line 65
    return-void
.end method

.method public static parseFrom(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/avi/AviStreamHeaderChunk;
    .registers 15
    .param p0, "body"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 36
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v7

    .line 37
    .local v7, "streamType":I
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 39
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v8

    .line 40
    .local v8, "initialFrames":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v9

    .line 41
    .local v9, "scale":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v10

    .line 42
    .local v10, "rate":I
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 43
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v11

    .line 44
    .local v11, "length":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v12

    .line 45
    .local v12, "suggestedBufferSize":I
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 46
    new-instance v13, Lcom/google/android/exoplayer2/extractor/avi/AviStreamHeaderChunk;

    move-object v0, v13

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    move v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/avi/AviStreamHeaderChunk;-><init>(IIIIII)V

    return-object v13
.end method


# virtual methods
.method public getDurationUs()J
    .registers 8

    .line 91
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviStreamHeaderChunk;->length:I

    int-to-long v1, v0

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviStreamHeaderChunk;->scale:I

    int-to-long v3, v0

    const-wide/32 v5, 0xf4240

    mul-long v3, v3, v5

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviStreamHeaderChunk;->rate:I

    int-to-long v5, v0

    invoke-static/range {v1 .. v6}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFrameRate()F
    .registers 3

    .line 87
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviStreamHeaderChunk;->rate:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviStreamHeaderChunk;->scale:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getTrackType()I
    .registers 3

    .line 73
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviStreamHeaderChunk;->streamType:I

    sparse-switch v0, :sswitch_data_2c

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found unsupported streamType fourCC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviStreamHeaderChunk;->streamType:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AviStreamHeaderChunk"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const/4 v0, -0x1

    return v0

    .line 79
    :sswitch_25
    const/4 v0, 0x3

    return v0

    .line 75
    :sswitch_27
    const/4 v0, 0x1

    return v0

    .line 77
    :sswitch_29
    const/4 v0, 0x2

    return v0

    nop

    :sswitch_data_2c
    .sparse-switch
        0x73646976 -> :sswitch_29
        0x73647561 -> :sswitch_27
        0x73747874 -> :sswitch_25
    .end sparse-switch
.end method

.method public getType()I
    .registers 2

    .line 69
    const v0, 0x68727473

    return v0
.end method
