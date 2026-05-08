.class public Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;
.super Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;
.source "SimpleDecoderOutputBuffer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public data:Ljava/nio/ByteBuffer;

.field private final owner:Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer$Owner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer$Owner<",
            "Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer$Owner;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer$Owner<",
            "Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;",
            ">;)V"
        }
    .end annotation

    .line 37
    .local p1, "owner":Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer$Owner;, "Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer$Owner<Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;>;"
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;->owner:Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer$Owner;

    .line 39
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 60
    invoke-super {p0}, Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;->clear()V

    .line 61
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_a

    .line 62
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 64
    :cond_a
    return-void
.end method

.method public init(JI)Ljava/nio/ByteBuffer;
    .registers 6
    .param p1, "timeUs"    # J
    .param p3, "size"    # I

    .line 49
    iput-wide p1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;->timeUs:J

    .line 50
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p3, :cond_1a

    .line 51
    :cond_c
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 53
    :cond_1a
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 54
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 55
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public release()V
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;->owner:Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer$Owner;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer$Owner;->releaseOutputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;)V

    .line 69
    return-void
.end method
