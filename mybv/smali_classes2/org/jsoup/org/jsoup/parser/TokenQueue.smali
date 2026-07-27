.class public Lorg/jsoup/parser/TokenQueue;
.super Ljava/lang/Object;
.source "TokenQueue.java"


# static fields
.field private static final ESC:C = '\\'


# instance fields
.field private pos:I

.field private queue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 22
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 23
    iput-object p1, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    .line 24
    return-void
.end method

.method private remainingLength()I
    .registers 3

    .prologue
    .line 35
    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x5c

    .line 322
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 323
    .local v2, "out":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 324
    .local v1, "last":C
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v5, :cond_20

    aget-char v0, v4, v3

    .line 325
    .local v0, "c":C
    if-ne v0, v6, :cond_1c

    .line 326
    if-ne v1, v6, :cond_18

    .line 327
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    :cond_18
    :goto_18
    move v1, v0

    .line 324
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 330
    :cond_1c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 333
    .end local v0    # "c":C
    :cond_20
    invoke-static {v2}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public addFirst(Ljava/lang/Character;)V
    .registers 3
    .param p1, "c"    # Ljava/lang/Character;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/TokenQueue;->addFirst(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public addFirst(Ljava/lang/String;)V
    .registers 5
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 66
    return-void
.end method

.method public advance()V
    .registers 2

    .prologue
    .line 157
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 158
    :cond_c
    return-void
.end method

.method public chompBalanced(CC)Ljava/lang/String;
    .registers 15
    .param p1, "open"    # C
    .param p2, "close"    # C

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 271
    const/4 v8, -0x1

    .line 272
    .local v8, "start":I
    const/4 v2, -0x1

    .line 273
    .local v2, "end":I
    const/4 v1, 0x0

    .line 274
    .local v1, "depth":I
    const/4 v6, 0x0

    .line 275
    .local v6, "last":C
    const/4 v5, 0x0

    .line 276
    .local v5, "inSingleQuote":Z
    const/4 v3, 0x0

    .line 277
    .local v3, "inDoubleQuote":Z
    const/4 v4, 0x0

    .line 280
    .local v4, "inRegexQE":Z
    :cond_9
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_36

    .line 309
    :goto_f
    if-ltz v2, :cond_85

    iget-object v9, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    invoke-virtual {v9, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 310
    .local v7, "out":Ljava/lang/String;
    :goto_17
    if-lez v1, :cond_35

    .line 311
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Did not find balanced marker at \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/jsoup/helper/Validate;->fail(Ljava/lang/String;)V

    .line 313
    :cond_35
    return-object v7

    .line 281
    .end local v7    # "out":Ljava/lang/String;
    :cond_36
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->consume()C

    move-result v0

    .line 282
    .local v0, "c":C
    const/16 v11, 0x5c

    if-eq v6, v11, :cond_79

    .line 283
    const/16 v11, 0x27

    if-ne v0, v11, :cond_55

    if-eq v0, p1, :cond_55

    if-nez v3, :cond_55

    .line 284
    if-nez v5, :cond_53

    move v5, v9

    .line 287
    :cond_49
    :goto_49
    if-nez v5, :cond_4f

    if-nez v3, :cond_4f

    if-eqz v4, :cond_63

    .line 288
    :cond_4f
    move v6, v0

    .line 308
    :goto_50
    if-gtz v1, :cond_9

    goto :goto_f

    :cond_53
    move v5, v10

    .line 284
    goto :goto_49

    .line 285
    :cond_55
    const/16 v11, 0x22

    if-ne v0, v11, :cond_49

    if-eq v0, p1, :cond_49

    if-nez v5, :cond_49

    .line 286
    if-nez v3, :cond_61

    move v3, v9

    :goto_60
    goto :goto_49

    :cond_61
    move v3, v10

    goto :goto_60

    .line 292
    :cond_63
    if-ne v0, p1, :cond_74

    .line 293
    add-int/lit8 v1, v1, 0x1

    .line 294
    const/4 v11, -0x1

    if-ne v8, v11, :cond_6c

    .line 295
    iget v8, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 305
    :cond_6c
    :goto_6c
    if-lez v1, :cond_72

    if-eqz v6, :cond_72

    .line 306
    iget v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 307
    :cond_72
    move v6, v0

    goto :goto_50

    .line 297
    :cond_74
    if-ne v0, p2, :cond_6c

    .line 298
    add-int/lit8 v1, v1, -0x1

    goto :goto_6c

    .line 299
    :cond_79
    const/16 v11, 0x51

    if-ne v0, v11, :cond_7f

    .line 300
    const/4 v4, 0x1

    goto :goto_6c

    .line 301
    :cond_7f
    const/16 v11, 0x45

    if-ne v0, v11, :cond_6c

    .line 302
    const/4 v4, 0x0

    goto :goto_6c

    .line 309
    .end local v0    # "c":C
    :cond_85
    const-string v7, ""

    goto :goto_17
.end method

.method public chompTo(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 250
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TokenQueue;->consumeTo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    .line 252
    return-object v0
.end method

.method public chompToIgnoreCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 256
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TokenQueue;->consumeToIgnoreCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    .line 258
    return-object v0
.end method

.method public consume()C
    .registers 4

    .prologue
    .line 165
    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public consume(Ljava/lang/String;)V
    .registers 5
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 177
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Queue did not match expected sequence"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 179
    .local v0, "len":I
    invoke-direct {p0}, Lorg/jsoup/parser/TokenQueue;->remainingLength()I

    move-result v1

    if-le v0, v1, :cond_20

    .line 180
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Queue not long enough to consume sequence"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :cond_20
    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 183
    return-void
.end method

.method public consumeAttributeKey()Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 408
    iget v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 409
    .local v0, "start":I
    :goto_2
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->matchesWord()Z

    move-result v1

    if-nez v1, :cond_1a

    const/4 v1, 0x3

    new-array v1, v1, [C

    fill-array-data v1, :array_2a

    invoke-virtual {p0, v1}, Lorg/jsoup/parser/TokenQueue;->matchesAny([C)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 410
    :cond_1a
    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    goto :goto_2

    .line 412
    :cond_21
    iget-object v1, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 409
    :array_2a
    .array-data 2
        0x2ds
        0x5fs
        0x3as
    .end array-data
.end method

.method public consumeCssIdentifier()Ljava/lang/String;
    .registers 4

    .prologue
    .line 394
    iget v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 395
    .local v0, "start":I
    :goto_2
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->matchesWord()Z

    move-result v1

    if-nez v1, :cond_1a

    const/4 v1, 0x2

    new-array v1, v1, [C

    fill-array-data v1, :array_2a

    invoke-virtual {p0, v1}, Lorg/jsoup/parser/TokenQueue;->matchesAny([C)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 396
    :cond_1a
    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    goto :goto_2

    .line 398
    :cond_21
    iget-object v1, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 395
    :array_2a
    .array-data 2
        0x2ds
        0x5fs
    .end array-data
.end method

.method public consumeElementSelector()Ljava/lang/String;
    .registers 5

    .prologue
    .line 381
    iget v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 382
    .local v0, "start":I
    :goto_2
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_32

    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->matchesWord()Z

    move-result v1

    if-nez v1, :cond_2b

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "*|"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "|"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "_"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "-"

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lorg/jsoup/parser/TokenQueue;->matchesAny([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 383
    :cond_2b
    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    goto :goto_2

    .line 385
    :cond_32
    iget-object v1, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public consumeTagName()Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 368
    iget v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 369
    .local v0, "start":I
    :goto_2
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->matchesWord()Z

    move-result v1

    if-nez v1, :cond_1a

    const/4 v1, 0x3

    new-array v1, v1, [C

    fill-array-data v1, :array_2a

    invoke-virtual {p0, v1}, Lorg/jsoup/parser/TokenQueue;->matchesAny([C)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 370
    :cond_1a
    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    goto :goto_2

    .line 372
    :cond_21
    iget-object v1, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 369
    :array_2a
    .array-data 2
        0x3as
        0x5fs
        0x2ds
    .end array-data
.end method

.method public consumeTo(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 191
    iget-object v2, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v2, p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 192
    .local v1, "offset":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1d

    .line 193
    iget-object v2, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "consumed":Ljava/lang/String;
    iget v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 197
    .end local v0    # "consumed":Ljava/lang/String;
    :goto_1c
    return-object v0

    :cond_1d
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c
.end method

.method public varargs consumeToAny([Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "seq"    # [Ljava/lang/String;

    .prologue
    .line 233
    iget v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 234
    .local v0, "start":I
    :goto_2
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TokenQueue;->matchesAny([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 235
    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    goto :goto_2

    .line 238
    :cond_15
    iget-object v1, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public consumeToIgnoreCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 202
    iget v3, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 203
    .local v3, "start":I
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "first":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 205
    .local v0, "canScan":Z
    :goto_14
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_20

    .line 206
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 222
    :cond_20
    iget-object v4, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v5, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 209
    :cond_29
    if-eqz v0, :cond_51

    .line 210
    iget-object v4, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v5, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    iget v5, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    sub-int v2, v4, v5

    .line 211
    .local v2, "skip":I
    if-nez v2, :cond_40

    .line 212
    iget v4, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    goto :goto_14

    .line 213
    :cond_40
    if-gez v2, :cond_4b

    .line 214
    iget-object v4, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iput v4, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    goto :goto_14

    .line 216
    :cond_4b
    iget v4, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/2addr v4, v2

    iput v4, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    goto :goto_14

    .line 219
    .end local v2    # "skip":I
    :cond_51
    iget v4, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    goto :goto_14
.end method

.method public consumeWhitespace()Z
    .registers 3

    .prologue
    .line 341
    const/4 v0, 0x0

    .line 342
    .local v0, "seen":Z
    :goto_1
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->matchesWhitespace()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 343
    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 344
    const/4 v0, 0x1

    goto :goto_1

    .line 346
    :cond_f
    return v0
.end method

.method public consumeWord()Ljava/lang/String;
    .registers 4

    .prologue
    .line 354
    iget v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 355
    .local v0, "start":I
    :goto_2
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->matchesWord()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 356
    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    goto :goto_2

    .line 357
    :cond_f
    iget-object v1, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/jsoup/parser/TokenQueue;->remainingLength()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public matchChomp(Ljava/lang/String;)Z
    .registers 4
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 130
    iget v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 131
    const/4 v0, 0x1

    .line 133
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public matches(Ljava/lang/String;)Z
    .registers 8
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    const/4 v1, 0x1

    iget v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public varargs matchesAny([C)Z
    .registers 8
    .param p1, "seq"    # [C

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 110
    :cond_7
    :goto_7
    return v1

    .line 106
    :cond_8
    array-length v3, p1

    move v2, v1

    :goto_a
    if-ge v2, v3, :cond_7

    aget-char v0, p1, v2

    .line 107
    .local v0, "c":C
    iget-object v4, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v5, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v0, :cond_1a

    .line 108
    const/4 v1, 0x1

    goto :goto_7

    .line 106
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_a
.end method

.method public varargs matchesAny([Ljava/lang/String;)Z
    .registers 7
    .param p1, "seq"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 95
    array-length v3, p1

    move v2, v1

    :goto_3
    if-ge v2, v3, :cond_e

    aget-object v0, p1, v2

    .line 96
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 97
    const/4 v1, 0x1

    .line 99
    .end local v0    # "s":Ljava/lang/String;
    :cond_e
    return v1

    .line 95
    .restart local v0    # "s":Ljava/lang/String;
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public matchesCS(Ljava/lang/String;)Z
    .registers 4
    .param p1, "seq"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public matchesStartTag()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 119
    invoke-direct {p0}, Lorg/jsoup/parser/TokenQueue;->remainingLength()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_25

    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    :goto_24
    return v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public matchesWhitespace()Z
    .registers 3

    .prologue
    .line 142
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->isWhitespace(I)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public matchesWord()Z
    .registers 3

    .prologue
    .line 150
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public peek()C
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_7
.end method

.method public remainder()Ljava/lang/String;
    .registers 4

    .prologue
    .line 420
    iget-object v1, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "remainder":Ljava/lang/String;
    iget-object v1, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 422
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 427
    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
