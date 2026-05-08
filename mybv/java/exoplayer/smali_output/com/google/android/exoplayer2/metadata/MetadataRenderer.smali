.class public final Lcom/google/android/exoplayer2/metadata/MetadataRenderer;
.super Lcom/google/android/exoplayer2/BaseRenderer;
.source "MetadataRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MSG_INVOKE_RENDERER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MetadataRenderer"


# instance fields
.field private final buffer:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

.field private decoder:Lcom/google/android/exoplayer2/metadata/MetadataDecoder;

.field private final decoderFactory:Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;

.field private inputStreamEnded:Z

.field private final output:Lcom/google/android/exoplayer2/metadata/MetadataOutput;

.field private final outputHandler:Landroid/os/Handler;

.field private final outputMetadataEarly:Z

.field private outputStreamEnded:Z

.field private outputStreamOffsetUs:J

.field private pendingMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

.field private subsampleOffsetUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/metadata/MetadataOutput;Landroid/os/Looper;)V
    .registers 4
    .param p1, "output"    # Lcom/google/android/exoplayer2/metadata/MetadataOutput;
    .param p2, "outputLooper"    # Landroid/os/Looper;

    .line 80
    sget-object v0, Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;->DEFAULT:Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;-><init>(Lcom/google/android/exoplayer2/metadata/MetadataOutput;Landroid/os/Looper;Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/metadata/MetadataOutput;Landroid/os/Looper;Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;)V
    .registers 5
    .param p1, "output"    # Lcom/google/android/exoplayer2/metadata/MetadataOutput;
    .param p2, "outputLooper"    # Landroid/os/Looper;
    .param p3, "decoderFactory"    # Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;-><init>(Lcom/google/android/exoplayer2/metadata/MetadataOutput;Landroid/os/Looper;Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;Z)V

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/metadata/MetadataOutput;Landroid/os/Looper;Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;Z)V
    .registers 7
    .param p1, "output"    # Lcom/google/android/exoplayer2/metadata/MetadataOutput;
    .param p2, "outputLooper"    # Landroid/os/Looper;
    .param p3, "decoderFactory"    # Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;
    .param p4, "outputMetadataEarly"    # Z

    .line 118
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/BaseRenderer;-><init>(I)V

    .line 119
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/metadata/MetadataOutput;

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->output:Lcom/google/android/exoplayer2/metadata/MetadataOutput;

    .line 120
    nop

    .line 121
    if-nez p2, :cond_11

    const/4 v0, 0x0

    goto :goto_15

    :cond_11
    invoke-static {p2, p0}, Lcom/google/android/exoplayer2/util/Util;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    :goto_15
    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->outputHandler:Landroid/os/Handler;

    .line 122
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->decoderFactory:Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;

    .line 123
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->outputMetadataEarly:Z

    .line 124
    new-instance v0, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    .line 125
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->outputStreamOffsetUs:J

    .line 126
    return-void
.end method

.method private decodeWrappedMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/util/List;)V
    .registers 9
    .param p1, "metadata"    # Lcom/google/android/exoplayer2/metadata/Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata$Entry;",
            ">;)V"
        }
    .end annotation

    .line 176
    .local p2, "decodedEntries":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/metadata/Metadata$Entry;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v1

    if-ge v0, v1, :cond_61

    .line 177
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/exoplayer2/metadata/Metadata$Entry;->getWrappedMetadataFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 178
    .local v1, "wrappedMetadataFormat":Lcom/google/android/exoplayer2/Format;
    if-eqz v1, :cond_57

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->decoderFactory:Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;->supportsFormat(Lcom/google/android/exoplayer2/Format;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 179
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->decoderFactory:Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;

    .line 180
    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;->createDecoder(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/metadata/MetadataDecoder;

    move-result-object v2

    .line 182
    .local v2, "wrappedMetadataDecoder":Lcom/google/android/exoplayer2/metadata/MetadataDecoder;
    nop

    .line 183
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/exoplayer2/metadata/Metadata$Entry;->getWrappedMetadataBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 184
    .local v3, "wrappedMetadataBytes":[B
    iget-object v4, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->clear()V

    .line 185
    iget-object v4, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    array-length v5, v3

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->ensureSpaceForWrite(I)V

    .line 186
    iget-object v4, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    iget-object v4, v4, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 187
    iget-object v4, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->flip()V

    .line 188
    iget-object v4, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    invoke-interface {v2, v4}, Lcom/google/android/exoplayer2/metadata/MetadataDecoder;->decode(Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v4

    .line 189
    .local v4, "innerMetadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    if-eqz v4, :cond_56

    .line 191
    invoke-direct {p0, v4, p2}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->decodeWrappedMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/util/List;)V

    .line 193
    .end local v2    # "wrappedMetadataDecoder":Lcom/google/android/exoplayer2/metadata/MetadataDecoder;
    .end local v3    # "wrappedMetadataBytes":[B
    .end local v4    # "innerMetadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    :cond_56
    goto :goto_5e

    .line 195
    :cond_57
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    .end local v1    # "wrappedMetadataFormat":Lcom/google/android/exoplayer2/Format;
    :goto_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 198
    .end local v0    # "i":I
    :cond_61
    return-void
.end method

.method private getPresentationTimeUs(J)J
    .registers 10
    .param p1, "positionUs"    # J
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 286
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p1, v2

    if-eqz v4, :cond_d

    const/4 v4, 0x1

    goto :goto_e

    :cond_d
    const/4 v4, 0x0

    :goto_e
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 287
    iget-wide v4, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->outputStreamOffsetUs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_18

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 289
    iget-wide v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->outputStreamOffsetUs:J

    sub-long v0, p1, v0

    return-wide v0
.end method

.method private invokeRenderer(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .registers 4
    .param p1, "metadata"    # Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 273
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->outputHandler:Landroid/os/Handler;

    if-eqz v0, :cond_d

    .line 274
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_10

    .line 276
    :cond_d
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->invokeRendererInternal(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 278
    :goto_10
    return-void
.end method

.method private invokeRendererInternal(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .registers 3
    .param p1, "metadata"    # Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 281
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->output:Lcom/google/android/exoplayer2/metadata/MetadataOutput;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/metadata/MetadataOutput;->onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 282
    return-void
.end method

.method private outputMetadata(J)Z
    .registers 9
    .param p1, "positionUs"    # J

    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, "didOutput":Z
    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-eqz v1, :cond_1c

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->outputMetadataEarly:Z

    if-nez v2, :cond_13

    iget-wide v1, v1, Lcom/google/android/exoplayer2/metadata/Metadata;->presentationTimeUs:J

    .line 261
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->getPresentationTimeUs(J)J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1c

    .line 262
    :cond_13
    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->invokeRenderer(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 263
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 264
    const/4 v0, 0x1

    .line 266
    :cond_1c
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->inputStreamEnded:Z

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez v1, :cond_27

    .line 267
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->outputStreamEnded:Z

    .line 269
    :cond_27
    return v0
.end method

.method private readMetadata()V
    .registers 8

    .line 230
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->inputStreamEnded:Z

    if-nez v0, :cond_73

    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez v0, :cond_73

    .line 231
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->clear()V

    .line 232
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->getFormatHolder()Lcom/google/android/exoplayer2/FormatHolder;

    move-result-object v0

    .line 233
    .local v0, "formatHolder":Lcom/google/android/exoplayer2/FormatHolder;
    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result v1

    .line 234
    .local v1, "result":I
    const/4 v2, -0x4

    if-ne v1, v2, :cond_64

    .line 235
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->isEndOfStream()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 236
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->inputStreamEnded:Z

    goto :goto_73

    .line 238
    :cond_27
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->subsampleOffsetUs:J

    iput-wide v3, v2, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->subsampleOffsetUs:J

    .line 239
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->flip()V

    .line 240
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->decoder:Lcom/google/android/exoplayer2/metadata/MetadataDecoder;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/metadata/MetadataDecoder;

    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/metadata/MetadataDecoder;->decode(Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v2

    .line 241
    .local v2, "metadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    if-eqz v2, :cond_63

    .line 242
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 243
    .local v3, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/metadata/Metadata$Entry;>;"
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->decodeWrappedMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/util/List;)V

    .line 244
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_63

    .line 245
    new-instance v4, Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v5, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->timeUs:J

    .line 246
    invoke-direct {p0, v5, v6}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->getPresentationTimeUs(J)J

    move-result-wide v5

    invoke-direct {v4, v5, v6, v3}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(JLjava/util/List;)V

    .line 247
    .local v4, "expandedMetadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    iput-object v4, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 250
    .end local v2    # "metadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    .end local v3    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/metadata/Metadata$Entry;>;"
    .end local v4    # "expandedMetadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    :cond_63
    goto :goto_73

    .line 251
    :cond_64
    const/4 v2, -0x5

    if-ne v1, v2, :cond_73

    .line 252
    iget-object v2, v0, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/Format;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->subsampleOffsetUs:J

    .line 255
    .end local v0    # "formatHolder":Lcom/google/android/exoplayer2/FormatHolder;
    .end local v1    # "result":I
    :cond_73
    :goto_73
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 130
    const-string v0, "MetadataRenderer"

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 219
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    .line 225
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 221
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->invokeRendererInternal(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 222
    const/4 v0, 0x1

    return v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_b
    .end packed-switch
.end method

.method public isEnded()Z
    .registers 2

    .line 209
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->outputStreamEnded:Z

    return v0
.end method

.method public isReady()Z
    .registers 2

    .line 214
    const/4 v0, 0x1

    return v0
.end method

.method protected onDisabled()V
    .registers 3

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 203
    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->decoder:Lcom/google/android/exoplayer2/metadata/MetadataDecoder;

    .line 204
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->outputStreamOffsetUs:J

    .line 205
    return-void
.end method

.method protected onPositionReset(JZ)V
    .registers 5
    .param p1, "positionUs"    # J
    .param p3, "joining"    # Z

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->inputStreamEnded:Z

    .line 158
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->outputStreamEnded:Z

    .line 159
    return-void
.end method

.method protected onStreamChanged([Lcom/google/android/exoplayer2/Format;JJ)V
    .registers 11
    .param p1, "formats"    # [Lcom/google/android/exoplayer2/Format;
    .param p2, "startPositionUs"    # J
    .param p4, "offsetUs"    # J

    .line 145
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->decoderFactory:Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;->createDecoder(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/metadata/MetadataDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->decoder:Lcom/google/android/exoplayer2/metadata/MetadataDecoder;

    .line 146
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-eqz v0, :cond_1b

    .line 147
    iget-wide v1, v0, Lcom/google/android/exoplayer2/metadata/Metadata;->presentationTimeUs:J

    iget-wide v3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->outputStreamOffsetUs:J

    add-long/2addr v1, v3

    sub-long/2addr v1, p4

    .line 148
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/metadata/Metadata;->copyWithPresentationTimeUs(J)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 151
    :cond_1b
    iput-wide p4, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->outputStreamOffsetUs:J

    .line 152
    return-void
.end method

.method public render(JJ)V
    .registers 6
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J

    .line 163
    const/4 v0, 0x1

    .line 164
    .local v0, "working":Z
    :goto_1
    if-eqz v0, :cond_b

    .line 165
    invoke-direct {p0}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->readMetadata()V

    .line 166
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->outputMetadata(J)Z

    move-result v0

    goto :goto_1

    .line 168
    :cond_b
    return-void
.end method

.method public supportsFormat(Lcom/google/android/exoplayer2/Format;)I
    .registers 3
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 135
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->decoderFactory:Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;->supportsFormat(Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 137
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->cryptoType:I

    if-nez v0, :cond_e

    const/4 v0, 0x4

    goto :goto_f

    :cond_e
    const/4 v0, 0x2

    .line 136
    :goto_f
    invoke-static {v0}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result v0

    return v0

    .line 139
    :cond_14
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result v0

    return v0
.end method
