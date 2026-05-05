.class public Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;
.super Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;
.source "VideoDecoderOutputBuffer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final COLORSPACE_BT2020:I = 0x3

.field public static final COLORSPACE_BT601:I = 0x1

.field public static final COLORSPACE_BT709:I = 0x2

.field public static final COLORSPACE_UNKNOWN:I


# instance fields
.field public colorspace:I

.field public data:Ljava/nio/ByteBuffer;

.field public decoderPrivate:I

.field public format:Lcom/google/android/exoplayer2/Format;

.field public height:I

.field public mode:I

.field private final owner:Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer$Owner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer$Owner<",
            "Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public supplementalData:Ljava/nio/ByteBuffer;

.field public width:I

.field public yuvPlanes:[Ljava/nio/ByteBuffer;

.field public yuvStrides:[I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer$Owner;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer$Owner<",
            "Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;",
            ">;)V"
        }
    .end annotation

    .line 71
    .local p1, "owner":Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer$Owner;, "Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer$Owner<Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;>;"
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->owner:Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer$Owner;

    .line 73
    return-void
.end method

.method private static isSafeToMultiply(II)Z
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 176
    if-ltz p0, :cond_e

    if-ltz p1, :cond_e

    if-lez p1, :cond_c

    const v0, 0x7fffffff

    div-int/2addr v0, p1

    if-ge p0, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method


# virtual methods
.method public init(JILjava/nio/ByteBuffer;)V
    .registers 7
    .param p1, "timeUs"    # J
    .param p3, "mode"    # I
    .param p4, "supplementalData"    # Ljava/nio/ByteBuffer;

    .line 91
    iput-wide p1, p0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->timeUs:J

    .line 92
    iput p3, p0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->mode:I

    .line 93
    if-eqz p4, :cond_3b

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 94
    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->addFlag(I)V

    .line 95
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 96
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ge v1, v0, :cond_20

    goto :goto_26

    .line 99
    :cond_20
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_2c

    .line 97
    :cond_26
    :goto_26
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    .line 101
    :goto_2c
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 102
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 103
    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 104
    .end local v0    # "size":I
    goto :goto_3e

    .line 105
    :cond_3b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    .line 107
    :goto_3e
    return-void
.end method

.method public initForPrivateFrame(II)V
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 167
    iput p1, p0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->width:I

    .line 168
    iput p2, p0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->height:I

    .line 169
    return-void
.end method

.method public initForYuvFrame(IIIII)Z
    .registers 23
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "yStride"    # I
    .param p4, "uvStride"    # I
    .param p5, "colorspace"    # I

    .line 115
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p1

    iput v4, v0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->width:I

    .line 116
    iput v1, v0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->height:I

    .line 117
    move/from16 v5, p5

    iput v5, v0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->colorspace:I

    .line 118
    int-to-long v6, v1

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    const-wide/16 v8, 0x2

    div-long/2addr v6, v8

    long-to-int v7, v6

    .line 119
    .local v7, "uvHeight":I
    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->isSafeToMultiply(II)Z

    move-result v6

    const/4 v8, 0x0

    if-eqz v6, :cond_a0

    invoke-static {v3, v7}, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->isSafeToMultiply(II)Z

    move-result v6

    if-nez v6, :cond_29

    goto/16 :goto_a0

    .line 122
    :cond_29
    mul-int v6, v2, v1

    .line 123
    .local v6, "yLength":I
    mul-int v9, v3, v7

    .line 124
    .local v9, "uvLength":I
    mul-int/lit8 v10, v9, 0x2

    add-int/2addr v10, v6

    .line 125
    .local v10, "minimumYuvSize":I
    const/4 v11, 0x2

    invoke-static {v9, v11}, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->isSafeToMultiply(II)Z

    move-result v12

    if-eqz v12, :cond_9f

    if-ge v10, v6, :cond_3a

    goto :goto_9f

    .line 130
    :cond_3a
    iget-object v12, v0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v12, :cond_50

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v12

    if-ge v12, v10, :cond_45

    goto :goto_50

    .line 133
    :cond_45
    iget-object v12, v0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v12, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 134
    iget-object v12, v0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v12, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_56

    .line 131
    :cond_50
    :goto_50
    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    iput-object v12, v0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 137
    :goto_56
    iget-object v12, v0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    const/4 v13, 0x3

    if-nez v12, :cond_5f

    .line 138
    new-array v12, v13, [Ljava/nio/ByteBuffer;

    iput-object v12, v0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    .line 141
    :cond_5f
    iget-object v12, v0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 142
    .local v12, "data":Ljava/nio/ByteBuffer;
    iget-object v14, v0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    .line 145
    .local v14, "yuvPlanes":[Ljava/nio/ByteBuffer;
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v15

    aput-object v15, v14, v8

    .line 146
    aget-object v15, v14, v8

    invoke-virtual {v15, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 147
    invoke-virtual {v12, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 148
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v15

    const/16 v16, 0x1

    aput-object v15, v14, v16

    .line 149
    aget-object v15, v14, v16

    invoke-virtual {v15, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 150
    add-int v15, v6, v9

    invoke-virtual {v12, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 151
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v15

    aput-object v15, v14, v11

    .line 152
    aget-object v15, v14, v11

    invoke-virtual {v15, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 153
    iget-object v15, v0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->yuvStrides:[I

    if-nez v15, :cond_96

    .line 154
    new-array v13, v13, [I

    iput-object v13, v0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->yuvStrides:[I

    .line 156
    :cond_96
    iget-object v13, v0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->yuvStrides:[I

    aput v2, v13, v8

    .line 157
    aput v3, v13, v16

    .line 158
    aput v3, v13, v11

    .line 159
    return v16

    .line 126
    .end local v12    # "data":Ljava/nio/ByteBuffer;
    .end local v14    # "yuvPlanes":[Ljava/nio/ByteBuffer;
    :cond_9f
    :goto_9f
    return v8

    .line 120
    .end local v6    # "yLength":I
    .end local v9    # "uvLength":I
    .end local v10    # "minimumYuvSize":I
    :cond_a0
    :goto_a0
    return v8
.end method

.method public release()V
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->owner:Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer$Owner;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer$Owner;->releaseOutputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;)V

    .line 78
    return-void
.end method
