.class public final Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;
.super Ljava/lang/Object;
.source "AudioProcessingPipeline.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final activeAudioProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/audio/AudioProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private final audioProcessors:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/audio/AudioProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private inputEnded:Z

.field private outputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

.field private outputBuffers:[Ljava/nio/ByteBuffer;

.field private pendingOutputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/audio/AudioProcessor;",
            ">;)V"
        }
    .end annotation

    .line 101
    .local p1, "audioProcessors":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/android/exoplayer2/audio/AudioProcessor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->activeAudioProcessors:Ljava/util/List;

    .line 104
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 105
    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->outputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 106
    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->pendingOutputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 107
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->inputEnded:Z

    .line 108
    return-void
.end method

.method private getFinalOutputBufferIndex()I
    .registers 2

    .line 339
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->outputBuffers:[Ljava/nio/ByteBuffer;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private processData(Ljava/nio/ByteBuffer;)V
    .registers 13
    .param p1, "inputBuffer"    # Ljava/nio/ByteBuffer;

    .line 307
    const/4 v0, 0x1

    .line 308
    .local v0, "progressMade":Z
    :goto_1
    if-eqz v0, :cond_89

    .line 309
    const/4 v0, 0x0

    .line 310
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->getFinalOutputBufferIndex()I

    move-result v2

    if-gt v1, v2, :cond_87

    .line 311
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->outputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 313
    goto/16 :goto_83

    .line 316
    :cond_17
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->activeAudioProcessors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 318
    .local v2, "audioProcessor":Lcom/google/android/exoplayer2/audio/AudioProcessor;
    invoke-interface {v2}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->isEnded()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 319
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->outputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_83

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->getFinalOutputBufferIndex()I

    move-result v3

    if-ge v1, v3, :cond_83

    .line 320
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->activeAudioProcessors:Ljava/util/List;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/audio/AudioProcessor;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->queueEndOfStream()V

    goto :goto_83

    .line 326
    :cond_43
    if-lez v1, :cond_4c

    .line 327
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->outputBuffers:[Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v1, -0x1

    aget-object v3, v3, v4

    goto :goto_56

    .line 328
    :cond_4c
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_54

    move-object v3, p1

    goto :goto_56

    :cond_54
    sget-object v3, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    :goto_56
    nop

    .line 329
    .local v3, "input":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    int-to-long v4, v4

    .line 330
    .local v4, "inputBytes":J
    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->queueInput(Ljava/nio/ByteBuffer;)V

    .line 331
    iget-object v6, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->outputBuffers:[Ljava/nio/ByteBuffer;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v7

    aput-object v7, v6, v1

    .line 333
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    int-to-long v6, v6

    sub-long v6, v4, v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-gtz v10, :cond_81

    iget-object v6, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->outputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_7f

    goto :goto_81

    :cond_7f
    const/4 v6, 0x0

    goto :goto_82

    :cond_81
    :goto_81
    const/4 v6, 0x1

    :goto_82
    or-int/2addr v0, v6

    .line 310
    .end local v2    # "audioProcessor":Lcom/google/android/exoplayer2/audio/AudioProcessor;
    .end local v3    # "input":Ljava/nio/ByteBuffer;
    .end local v4    # "inputBytes":J
    :cond_83
    :goto_83
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .end local v1    # "index":I
    :cond_87
    goto/16 :goto_1

    .line 336
    :cond_89
    return-void
.end method


# virtual methods
.method public configure(Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;)Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;
    .registers 7
    .param p1, "inputAudioFormat"    # Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation

    .line 128
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 132
    move-object v0, p1

    .line 134
    .local v0, "intermediateAudioFormat":Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 135
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 136
    .local v2, "audioProcessor":Lcom/google/android/exoplayer2/audio/AudioProcessor;
    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->configure(Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;)Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    move-result-object v3

    .line 137
    .local v3, "nextFormat":Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;
    invoke-interface {v2}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->isActive()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 138
    sget-object v4, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 139
    move-object v0, v3

    .line 134
    .end local v2    # "audioProcessor":Lcom/google/android/exoplayer2/audio/AudioProcessor;
    .end local v3    # "nextFormat":Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 143
    .end local v1    # "i":I
    :cond_33
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->pendingOutputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    return-object v0

    .line 129
    .end local v0    # "intermediateAudioFormat":Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;
    :cond_36
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;)V

    goto :goto_3d

    :goto_3c
    throw v0

    :goto_3d
    goto :goto_3c
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 282
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 283
    return v0

    .line 285
    :cond_4
    instance-of v1, p1, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 286
    return v2

    .line 288
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;

    .line 289
    .local v1, "that":Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    iget-object v4, v1, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v4

    if-eq v3, v4, :cond_1c

    .line 290
    return v2

    .line 292
    :cond_1c
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1d
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v4

    if-ge v3, v4, :cond_37

    .line 293
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v4, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v5, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eq v4, v5, :cond_34

    .line 294
    return v2

    .line 292
    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 298
    .end local v3    # "i":I
    :cond_37
    return v0
.end method

.method public flush()V
    .registers 4

    .line 155
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->activeAudioProcessors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 156
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->pendingOutputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->outputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->inputEnded:Z

    .line 159
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 160
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 161
    .local v1, "audioProcessor":Lcom/google/android/exoplayer2/audio/AudioProcessor;
    invoke-interface {v1}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->flush()V

    .line 162
    invoke-interface {v1}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->isActive()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 163
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->activeAudioProcessors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    .end local v1    # "audioProcessor":Lcom/google/android/exoplayer2/audio/AudioProcessor;
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 167
    .end local v0    # "i":I
    :cond_2e
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->activeAudioProcessors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 168
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_39
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->getFinalOutputBufferIndex()I

    move-result v1

    if-gt v0, v1, :cond_52

    .line 169
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->outputBuffers:[Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->activeAudioProcessors:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/audio/AudioProcessor;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 171
    .end local v0    # "i":I
    :cond_52
    return-void
.end method

.method public getOutput()Ljava/nio/ByteBuffer;
    .registers 3

    .line 216
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->isOperational()Z

    move-result v0

    if-nez v0, :cond_9

    .line 217
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    return-object v0

    .line 219
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->outputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->getFinalOutputBufferIndex()I

    move-result v1

    aget-object v0, v0, v1

    .line 220
    .local v0, "outputBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 221
    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->processData(Ljava/nio/ByteBuffer;)V

    .line 223
    :cond_1c
    return-object v0
.end method

.method public getOutputAudioFormat()Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;
    .registers 2

    .line 175
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->outputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 303
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEnded()Z
    .registers 3

    .line 253
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->inputEnded:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->activeAudioProcessors:Ljava/util/List;

    .line 254
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->getFinalOutputBufferIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 255
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->getFinalOutputBufferIndex()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    .line 253
    :goto_27
    return v0
.end method

.method public isOperational()Z
    .registers 2

    .line 187
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->activeAudioProcessors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public queueEndOfStream()V
    .registers 3

    .line 234
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->isOperational()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->inputEnded:Z

    if-eqz v0, :cond_b

    goto :goto_1b

    .line 237
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->inputEnded:Z

    .line 238
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->activeAudioProcessors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->queueEndOfStream()V

    .line 239
    return-void

    .line 235
    :cond_1b
    :goto_1b
    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "inputBuffer"    # Ljava/nio/ByteBuffer;

    .line 200
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->isOperational()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->inputEnded:Z

    if-eqz v0, :cond_b

    goto :goto_f

    .line 203
    :cond_b
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->processData(Ljava/nio/ByteBuffer;)V

    .line 204
    return-void

    .line 201
    :cond_f
    :goto_f
    return-void
.end method

.method public reset()V
    .registers 3

    .line 263
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 264
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 265
    .local v1, "audioProcessor":Lcom/google/android/exoplayer2/audio/AudioProcessor;
    invoke-interface {v1}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->flush()V

    .line 266
    invoke-interface {v1}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->reset()V

    .line 263
    .end local v1    # "audioProcessor":Lcom/google/android/exoplayer2/audio/AudioProcessor;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 268
    .end local v0    # "i":I
    :cond_1a
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 269
    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->outputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 270
    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->pendingOutputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 271
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->inputEnded:Z

    .line 272
    return-void
.end method
