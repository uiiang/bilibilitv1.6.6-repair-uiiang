.class public abstract Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;
.super Ljava/lang/Object;
.source "BinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSeeker;,
        Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;,
        Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekTimestampConverter;,
        Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;,
        Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;,
        Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$DefaultSeekTimestampConverter;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MAX_SKIP_BYTES:J = 0x40000L


# instance fields
.field private final minimumSearchRange:I

.field protected final seekMap:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;

.field protected seekOperationParams:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;

.field protected final timestampSeeker:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSeeker;


# direct methods
.method protected constructor <init>(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekTimestampConverter;Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSeeker;JJJJJJI)V
    .registers 33
    .param p1, "seekTimestampConverter"    # Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekTimestampConverter;
    .param p2, "timestampSeeker"    # Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSeeker;
    .param p3, "durationUs"    # J
    .param p5, "floorTimePosition"    # J
    .param p7, "ceilingTimePosition"    # J
    .param p9, "floorBytePosition"    # J
    .param p11, "ceilingBytePosition"    # J
    .param p13, "approxBytesPerFrame"    # J
    .param p15, "minimumSearchRange"    # I

    .line 135
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 136
    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->timestampSeeker:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSeeker;

    .line 137
    move/from16 v2, p15

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->minimumSearchRange:I

    .line 138
    new-instance v15, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    move-object v3, v15

    move-object/from16 v4, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    move-object v1, v15

    move-wide/from16 v15, p13

    invoke-direct/range {v3 .. v16}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;-><init>(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekTimestampConverter;JJJJJJ)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekMap:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    .line 147
    return-void
.end method


# virtual methods
.method protected createSeekParamsForTargetTimeUs(J)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;
    .registers 22
    .param p1, "timeUs"    # J

    .line 230
    move-object/from16 v0, p0

    new-instance v16, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekMap:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    .line 232
    move-wide/from16 v14, p1

    invoke-virtual {v1, v14, v15}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;->timeUsToTargetTime(J)J

    move-result-wide v4

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekMap:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    .line 233
    # getter for: Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;->floorTimePosition:J
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;->access$1000(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J

    move-result-wide v6

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekMap:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    .line 234
    # getter for: Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;->ceilingTimePosition:J
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;->access$1100(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J

    move-result-wide v8

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekMap:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    .line 235
    # getter for: Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;->floorBytePosition:J
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;->access$1200(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J

    move-result-wide v10

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekMap:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    .line 236
    # getter for: Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;->ceilingBytePosition:J
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;->access$1300(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J

    move-result-wide v12

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekMap:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    .line 237
    # getter for: Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;->approxBytesPerFrame:J
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;->access$1400(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J

    move-result-wide v17

    move-object/from16 v1, v16

    move-wide/from16 v2, p1

    move-wide/from16 v14, v17

    invoke-direct/range {v1 .. v15}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;-><init>(JJJJJJJ)V

    .line 230
    return-object v16
.end method

.method public final getSeekMap()Lcom/google/android/exoplayer2/extractor/SeekMap;
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekMap:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    return-object v0
.end method

.method public handlePendingSeek(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .registers 16
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "seekPositionHolder"    # Lcom/google/android/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    nop

    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekOperationParams:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;

    .line 185
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;

    .line 186
    .local v0, "seekOperationParams":Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;
    # invokes: Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->getFloorBytePosition()J
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->access$100(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;)J

    move-result-wide v1

    .line 187
    .local v1, "floorPosition":J
    # invokes: Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->getCeilingBytePosition()J
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->access$200(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;)J

    move-result-wide v3

    .line 188
    .local v3, "ceilingPosition":J
    # invokes: Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->getNextSearchBytePosition()J
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->access$300(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;)J

    move-result-wide v5

    .line 190
    .local v5, "searchPosition":J
    sub-long v7, v3, v1

    iget v9, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->minimumSearchRange:I

    int-to-long v9, v9

    const/4 v11, 0x0

    cmp-long v12, v7, v9

    if-gtz v12, :cond_27

    .line 192
    invoke-virtual {p0, v11, v1, v2}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->markSeekOperationFinished(ZJ)V

    .line 193
    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekToPosition(Lcom/google/android/exoplayer2/extractor/ExtractorInput;JLcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result v7

    return v7

    .line 195
    :cond_27
    invoke-virtual {p0, p1, v5, v6}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->skipInputUntilPosition(Lcom/google/android/exoplayer2/extractor/ExtractorInput;J)Z

    move-result v7

    if-nez v7, :cond_32

    .line 196
    invoke-virtual {p0, p1, v5, v6, p2}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekToPosition(Lcom/google/android/exoplayer2/extractor/ExtractorInput;JLcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result v7

    return v7

    .line 199
    :cond_32
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 200
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->timestampSeeker:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSeeker;

    .line 201
    # invokes: Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->getTargetTimePosition()J
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->access$400(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;)J

    move-result-wide v8

    invoke-interface {v7, p1, v8, v9}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSeeker;->searchForTimestamp(Lcom/google/android/exoplayer2/extractor/ExtractorInput;J)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v7

    .line 203
    .local v7, "timestampSearchResult":Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;
    # getter for: Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->type:I
    invoke-static {v7}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->access$500(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;)I

    move-result v8

    packed-switch v8, :pswitch_data_8c

    .line 224
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Invalid case"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 213
    :pswitch_4e
    # getter for: Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->bytePositionToUpdate:J
    invoke-static {v7}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->access$700(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;)J

    move-result-wide v8

    invoke-virtual {p0, p1, v8, v9}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->skipInputUntilPosition(Lcom/google/android/exoplayer2/extractor/ExtractorInput;J)Z

    .line 214
    nop

    .line 215
    # getter for: Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->bytePositionToUpdate:J
    invoke-static {v7}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->access$700(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;)J

    move-result-wide v8

    .line 214
    const/4 v10, 0x1

    invoke-virtual {p0, v10, v8, v9}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->markSeekOperationFinished(ZJ)V

    .line 216
    nop

    .line 217
    # getter for: Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->bytePositionToUpdate:J
    invoke-static {v7}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->access$700(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;)J

    move-result-wide v8

    .line 216
    invoke-virtual {p0, p1, v8, v9, p2}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekToPosition(Lcom/google/android/exoplayer2/extractor/ExtractorInput;JLcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result v8

    return v8

    .line 205
    :pswitch_68
    nop

    .line 206
    # getter for: Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->timestampToUpdate:J
    invoke-static {v7}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->access$600(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;)J

    move-result-wide v8

    # getter for: Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->bytePositionToUpdate:J
    invoke-static {v7}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->access$700(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;)J

    move-result-wide v10

    .line 205
    # invokes: Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->updateSeekCeiling(JJ)V
    invoke-static {v0, v8, v9, v10, v11}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->access$800(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;JJ)V

    .line 207
    goto :goto_82

    .line 209
    :pswitch_75
    nop

    .line 210
    # getter for: Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->timestampToUpdate:J
    invoke-static {v7}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->access$600(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;)J

    move-result-wide v8

    # getter for: Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->bytePositionToUpdate:J
    invoke-static {v7}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->access$700(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;)J

    move-result-wide v10

    .line 209
    # invokes: Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->updateSeekFloor(JJ)V
    invoke-static {v0, v8, v9, v10, v11}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->access$900(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;JJ)V

    .line 211
    nop

    .line 226
    .end local v0    # "seekOperationParams":Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;
    .end local v1    # "floorPosition":J
    .end local v3    # "ceilingPosition":J
    .end local v5    # "searchPosition":J
    .end local v7    # "timestampSearchResult":Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;
    :goto_82
    goto/16 :goto_1

    .line 221
    .restart local v0    # "seekOperationParams":Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;
    .restart local v1    # "floorPosition":J
    .restart local v3    # "ceilingPosition":J
    .restart local v5    # "searchPosition":J
    .restart local v7    # "timestampSearchResult":Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;
    :pswitch_84
    invoke-virtual {p0, v11, v5, v6}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->markSeekOperationFinished(ZJ)V

    .line 222
    invoke-virtual {p0, p1, v5, v6, p2}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekToPosition(Lcom/google/android/exoplayer2/extractor/ExtractorInput;JLcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result v8

    return v8

    :pswitch_data_8c
    .packed-switch -0x3
        :pswitch_84
        :pswitch_75
        :pswitch_68
        :pswitch_4e
    .end packed-switch
.end method

.method public final isSeeking()Z
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekOperationParams:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected final markSeekOperationFinished(ZJ)V
    .registers 5
    .param p1, "foundTargetFrame"    # Z
    .param p2, "resultPosition"    # J

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekOperationParams:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;

    .line 242
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->timestampSeeker:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSeeker;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSeeker;->onSeekFinished()V

    .line 243
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->onSeekOperationFinished(ZJ)V

    .line 244
    return-void
.end method

.method protected onSeekOperationFinished(ZJ)V
    .registers 4
    .param p1, "foundTargetFrame"    # Z
    .param p2, "resultPosition"    # J

    .line 248
    return-void
.end method

.method protected final seekToPosition(Lcom/google/android/exoplayer2/extractor/ExtractorInput;JLcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .registers 8
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "position"    # J
    .param p4, "seekPositionHolder"    # Lcom/google/android/exoplayer2/extractor/PositionHolder;

    .line 262
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    cmp-long v2, p2, v0

    if-nez v2, :cond_a

    .line 263
    const/4 v0, 0x0

    return v0

    .line 265
    :cond_a
    iput-wide p2, p4, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 266
    const/4 v0, 0x1

    return v0
.end method

.method public final setSeekTargetUs(J)V
    .registers 6
    .param p1, "timeUs"    # J

    .line 160
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekOperationParams:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;

    if-eqz v0, :cond_d

    # invokes: Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->getSeekTimeUs()J
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->access$000(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;)J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-nez v2, :cond_d

    .line 161
    return-void

    .line 163
    :cond_d
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->createSeekParamsForTargetTimeUs(J)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekOperationParams:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;

    .line 164
    return-void
.end method

.method protected final skipInputUntilPosition(Lcom/google/android/exoplayer2/extractor/ExtractorInput;J)Z
    .registers 9
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    sub-long v0, p2, v0

    .line 253
    .local v0, "bytesToSkip":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_19

    const-wide/32 v2, 0x40000

    cmp-long v4, v0, v2

    if-gtz v4, :cond_19

    .line 254
    long-to-int v2, v0

    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 255
    const/4 v2, 0x1

    return v2

    .line 257
    :cond_19
    const/4 v2, 0x0

    return v2
.end method
