.class final Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;
.super Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;
.source "ScriptTagPayloadReader.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final AMF_TYPE_BOOLEAN:I = 0x1

.field private static final AMF_TYPE_DATE:I = 0xb

.field private static final AMF_TYPE_ECMA_ARRAY:I = 0x8

.field private static final AMF_TYPE_END_MARKER:I = 0x9

.field private static final AMF_TYPE_NUMBER:I = 0x0

.field private static final AMF_TYPE_OBJECT:I = 0x3

.field private static final AMF_TYPE_STRICT_ARRAY:I = 0xa

.field private static final AMF_TYPE_STRING:I = 0x2

.field private static final KEY_DURATION:Ljava/lang/String; = "duration"

.field private static final KEY_FILE_POSITIONS:Ljava/lang/String; = "filepositions"

.field private static final KEY_KEY_FRAMES:Ljava/lang/String; = "keyframes"

.field private static final KEY_TIMES:Ljava/lang/String; = "times"

.field private static final NAME_METADATA:Ljava/lang/String; = "onMetaData"


# instance fields
.field private durationUs:J

.field private keyFrameTagPositions:[J

.field private keyFrameTimesUs:[J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 60
    new-instance v0, Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;-><init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    .line 61
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->durationUs:J

    .line 62
    const/4 v0, 0x0

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->keyFrameTimesUs:[J

    .line 63
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->keyFrameTagPositions:[J

    .line 64
    return-void
.end method

.method private static readAmfBoolean(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/lang/Boolean;
    .registers 3
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 158
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static readAmfData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Ljava/lang/Object;
    .registers 3
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "type"    # I

    .line 259
    packed-switch p1, :pswitch_data_28

    .line 276
    :pswitch_3
    const/4 v0, 0x0

    return-object v0

    .line 273
    :pswitch_5
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->readAmfDate(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 271
    :pswitch_a
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->readAmfStrictArray(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 269
    :pswitch_f
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->readAmfEcmaArray(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0

    .line 267
    :pswitch_14
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->readAmfObject(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0

    .line 265
    :pswitch_19
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->readAmfString(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 263
    :pswitch_1e
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->readAmfBoolean(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 261
    :pswitch_23
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->readAmfDouble(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_23
        :pswitch_1e
        :pswitch_19
        :pswitch_14
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_f
        :pswitch_3
        :pswitch_a
        :pswitch_5
    .end packed-switch
.end method

.method private static readAmfDate(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/Date;
    .registers 4
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 252
    new-instance v0, Ljava/util/Date;

    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->readAmfDouble(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    double-to-long v1, v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 253
    .local v0, "date":Ljava/util/Date;
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 254
    return-object v0
.end method

.method private static readAmfDouble(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/lang/Double;
    .registers 3
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 168
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method private static readAmfEcmaArray(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/HashMap;
    .registers 7
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 232
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 233
    .local v0, "count":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 234
    .local v1, "array":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_20

    .line 235
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->readAmfString(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object v3

    .line 236
    .local v3, "key":Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->readAmfType(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v4

    .line 237
    .local v4, "type":I
    invoke-static {p0, v4}, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->readAmfData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Ljava/lang/Object;

    move-result-object v5

    .line 238
    .local v5, "value":Ljava/lang/Object;
    if-eqz v5, :cond_1d

    .line 239
    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "type":I
    .end local v5    # "value":Ljava/lang/Object;
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 242
    .end local v2    # "i":I
    :cond_20
    return-object v1
.end method

.method private static readAmfObject(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/HashMap;
    .registers 5
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 210
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 212
    .local v0, "array":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_5
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->readAmfString(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "key":Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->readAmfType(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v2

    .line 214
    .local v2, "type":I
    const/16 v3, 0x9

    if-ne v2, v3, :cond_13

    .line 215
    nop

    .line 222
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "type":I
    return-object v0

    .line 217
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "type":I
    :cond_13
    invoke-static {p0, v2}, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->readAmfData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Ljava/lang/Object;

    move-result-object v3

    .line 218
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_1c

    .line 219
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "type":I
    .end local v3    # "value":Ljava/lang/Object;
    :cond_1c
    goto :goto_5
.end method

.method private static readAmfStrictArray(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/ArrayList;
    .registers 6
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 191
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 192
    .local v0, "count":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 193
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_1c

    .line 194
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->readAmfType(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v3

    .line 195
    .local v3, "type":I
    invoke-static {p0, v3}, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->readAmfData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Ljava/lang/Object;

    move-result-object v4

    .line 196
    .local v4, "value":Ljava/lang/Object;
    if-eqz v4, :cond_19

    .line 197
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    .end local v3    # "type":I
    .end local v4    # "value":Ljava/lang/Object;
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 200
    .end local v2    # "i":I
    :cond_1c
    return-object v1
.end method

.method private static readAmfString(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/lang/String;
    .registers 5
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 178
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    .line 179
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 180
    .local v1, "position":I
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 181
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Ljava/lang/String;-><init>([BII)V

    return-object v2
.end method

.method private static readAmfType(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I
    .registers 2
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 148
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getDurationUs()J
    .registers 3

    .line 67
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->durationUs:J

    return-wide v0
.end method

.method public getKeyFrameTagPositions()[J
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->keyFrameTagPositions:[J

    return-object v0
.end method

.method public getKeyFrameTimesUs()[J
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->keyFrameTimesUs:[J

    return-object v0
.end method

.method protected parseHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z
    .registers 3
    .param p1, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method protected parsePayload(Lcom/google/android/exoplayer2/util/ParsableByteArray;J)Z
    .registers 27
    .param p1, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "timeUs"    # J

    .line 90
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->readAmfType(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v1

    .line 91
    .local v1, "nameType":I
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_b

    .line 93
    return v3

    .line 95
    :cond_b
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->readAmfString(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "name":Ljava/lang/String;
    const-string v4, "onMetaData"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 98
    return v3

    .line 100
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    if-nez v4, :cond_1f

    .line 102
    return v3

    .line 104
    :cond_1f
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->readAmfType(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v4

    .line 105
    .local v4, "type":I
    const/16 v5, 0x8

    if-eq v4, v5, :cond_28

    .line 107
    return v3

    .line 109
    :cond_28
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->readAmfEcmaArray(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/HashMap;

    move-result-object v5

    .line 111
    .local v5, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "duration"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 112
    .local v6, "durationSecondsObj":Ljava/lang/Object;
    instance-of v7, v6, Ljava/lang/Double;

    const-wide v8, 0x412e848000000000L    # 1000000.0

    if-eqz v7, :cond_4d

    .line 113
    move-object v7, v6

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 114
    .local v10, "durationSeconds":D
    const-wide/16 v12, 0x0

    cmpl-double v7, v10, v12

    if-lez v7, :cond_4d

    .line 115
    mul-double v12, v10, v8

    double-to-long v12, v12

    iput-wide v12, v0, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->durationUs:J

    .line 119
    .end local v10    # "durationSeconds":D
    :cond_4d
    const-string v7, "keyframes"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 120
    .local v7, "keyFramesObj":Ljava/lang/Object;
    instance-of v10, v7, Ljava/util/Map;

    if-eqz v10, :cond_df

    .line 121
    move-object v10, v7

    check-cast v10, Ljava/util/Map;

    .line 122
    .local v10, "keyFrames":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const-string v11, "filepositions"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 123
    .local v11, "positionsObj":Ljava/lang/Object;
    const-string v12, "times"

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 124
    .local v12, "timesSecondsObj":Ljava/lang/Object;
    instance-of v13, v11, Ljava/util/List;

    if-eqz v13, :cond_d8

    instance-of v13, v12, Ljava/util/List;

    if-eqz v13, :cond_d8

    .line 125
    move-object v13, v11

    check-cast v13, Ljava/util/List;

    .line 126
    .local v13, "positions":Ljava/util/List;, "Ljava/util/List<*>;"
    move-object v14, v12

    check-cast v14, Ljava/util/List;

    .line 127
    .local v14, "timesSeconds":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    .line 128
    .local v15, "keyFrameCount":I
    new-array v3, v15, [J

    iput-object v3, v0, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->keyFrameTimesUs:[J

    .line 129
    new-array v3, v15, [J

    iput-object v3, v0, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->keyFrameTagPositions:[J

    .line 130
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_81
    if-ge v3, v15, :cond_d1

    .line 131
    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 132
    .local v8, "positionObj":Ljava/lang/Object;
    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 133
    .local v9, "timeSecondsObj":Ljava/lang/Object;
    move/from16 v18, v1

    .end local v1    # "nameType":I
    .local v18, "nameType":I
    instance-of v1, v9, Ljava/lang/Double;

    if-eqz v1, :cond_c3

    instance-of v1, v8, Ljava/lang/Double;

    if-eqz v1, :cond_c3

    .line 134
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->keyFrameTimesUs:[J

    move-object/from16 v19, v9

    check-cast v19, Ljava/lang/Double;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    move/from16 v21, v4

    move-object/from16 v22, v5

    const-wide v16, 0x412e848000000000L    # 1000000.0

    .end local v4    # "type":I
    .end local v5    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v21, "type":I
    .local v22, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    mul-double v4, v19, v16

    double-to-long v4, v4

    aput-wide v4, v1, v3

    .line 135
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->keyFrameTagPositions:[J

    move-object v4, v8

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->longValue()J

    move-result-wide v4

    aput-wide v4, v1, v3

    .line 130
    .end local v8    # "positionObj":Ljava/lang/Object;
    .end local v9    # "timeSecondsObj":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v8, v16

    move/from16 v1, v18

    move/from16 v4, v21

    move-object/from16 v5, v22

    goto :goto_81

    .line 133
    .end local v21    # "type":I
    .end local v22    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v4    # "type":I
    .restart local v5    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v8    # "positionObj":Ljava/lang/Object;
    .restart local v9    # "timeSecondsObj":Ljava/lang/Object;
    :cond_c3
    move/from16 v21, v4

    move-object/from16 v22, v5

    .line 137
    .end local v4    # "type":I
    .end local v5    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v21    # "type":I
    .restart local v22    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    new-array v4, v1, [J

    iput-object v4, v0, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->keyFrameTimesUs:[J

    .line 138
    new-array v4, v1, [J

    iput-object v4, v0, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->keyFrameTagPositions:[J

    .line 139
    goto :goto_e5

    .line 130
    .end local v8    # "positionObj":Ljava/lang/Object;
    .end local v9    # "timeSecondsObj":Ljava/lang/Object;
    .end local v18    # "nameType":I
    .end local v21    # "type":I
    .end local v22    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v1    # "nameType":I
    .restart local v4    # "type":I
    .restart local v5    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_d1
    move/from16 v18, v1

    move/from16 v21, v4

    move-object/from16 v22, v5

    .end local v1    # "nameType":I
    .end local v4    # "type":I
    .end local v5    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v18    # "nameType":I
    .restart local v21    # "type":I
    .restart local v22    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_e5

    .line 124
    .end local v3    # "i":I
    .end local v13    # "positions":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v14    # "timesSeconds":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v15    # "keyFrameCount":I
    .end local v18    # "nameType":I
    .end local v21    # "type":I
    .end local v22    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v1    # "nameType":I
    .restart local v4    # "type":I
    .restart local v5    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_d8
    move/from16 v18, v1

    move/from16 v21, v4

    move-object/from16 v22, v5

    .end local v1    # "nameType":I
    .end local v4    # "type":I
    .end local v5    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v18    # "nameType":I
    .restart local v21    # "type":I
    .restart local v22    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_e5

    .line 120
    .end local v10    # "keyFrames":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v11    # "positionsObj":Ljava/lang/Object;
    .end local v12    # "timesSecondsObj":Ljava/lang/Object;
    .end local v18    # "nameType":I
    .end local v21    # "type":I
    .end local v22    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v1    # "nameType":I
    .restart local v4    # "type":I
    .restart local v5    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_df
    move/from16 v18, v1

    move/from16 v21, v4

    move-object/from16 v22, v5

    .line 144
    .end local v1    # "nameType":I
    .end local v4    # "type":I
    .end local v5    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v18    # "nameType":I
    .restart local v21    # "type":I
    .restart local v22    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_e5
    const/4 v1, 0x0

    return v1
.end method

.method public seek()V
    .registers 1

    .line 81
    return-void
.end method
