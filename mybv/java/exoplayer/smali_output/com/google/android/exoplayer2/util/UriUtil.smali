.class public final Lcom/google/android/exoplayer2/util/UriUtil;
.super Ljava/lang/Object;
.source "UriUtil.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final FRAGMENT:I = 0x3

.field private static final INDEX_COUNT:I = 0x4

.field private static final PATH:I = 0x1

.field private static final QUERY:I = 0x2

.field private static final SCHEME_COLON:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getUriIndices(Ljava/lang/String;)[I
    .registers 13
    .param p0, "uriString"    # Ljava/lang/String;

    .line 237
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 238
    .local v0, "indices":[I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_e

    .line 239
    aput v3, v0, v2

    .line 240
    return-object v0

    .line 245
    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 246
    .local v1, "length":I
    const/16 v4, 0x23

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 247
    .local v4, "fragmentIndex":I
    if-ne v4, v3, :cond_1b

    .line 248
    move v4, v1

    .line 250
    :cond_1b
    const/16 v5, 0x3f

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 251
    .local v5, "queryIndex":I
    if-eq v5, v3, :cond_25

    if-le v5, v4, :cond_26

    .line 253
    :cond_25
    move v5, v4

    .line 257
    :cond_26
    const/16 v6, 0x2f

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 258
    .local v7, "schemeIndexLimit":I
    if-eq v7, v3, :cond_30

    if-le v7, v5, :cond_31

    .line 259
    :cond_30
    move v7, v5

    .line 261
    :cond_31
    const/16 v8, 0x3a

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 262
    .local v8, "schemeIndex":I
    if-le v8, v7, :cond_3a

    .line 264
    const/4 v8, -0x1

    .line 269
    :cond_3a
    add-int/lit8 v9, v8, 0x2

    const/4 v10, 0x1

    if-ge v9, v5, :cond_51

    add-int/lit8 v9, v8, 0x1

    .line 271
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v6, :cond_51

    add-int/lit8 v9, v8, 0x2

    .line 272
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v6, :cond_51

    const/4 v9, 0x1

    goto :goto_52

    :cond_51
    const/4 v9, 0x0

    .line 274
    .local v9, "hasAuthority":Z
    :goto_52
    if-eqz v9, :cond_60

    .line 275
    add-int/lit8 v11, v8, 0x3

    invoke-virtual {p0, v6, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 276
    .local v6, "pathIndex":I
    if-eq v6, v3, :cond_5e

    if-le v6, v5, :cond_62

    .line 277
    :cond_5e
    move v6, v5

    goto :goto_62

    .line 280
    .end local v6    # "pathIndex":I
    :cond_60
    add-int/lit8 v6, v8, 0x1

    .line 283
    .restart local v6    # "pathIndex":I
    :cond_62
    :goto_62
    aput v8, v0, v2

    .line 284
    aput v6, v0, v10

    .line 285
    const/4 v2, 0x2

    aput v5, v0, v2

    .line 286
    const/4 v2, 0x3

    aput v4, v0, v2

    .line 287
    return-object v0
.end method

.method public static isAbsolute(Ljava/lang/String;)Z
    .registers 4
    .param p0, "uri"    # Ljava/lang/String;

    .line 153
    const/4 v0, 0x0

    if-eqz p0, :cond_d

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/UriUtil;->getUriIndices(Ljava/lang/String;)[I

    move-result-object v1

    aget v1, v1, v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0
.end method

.method private static removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;
    .registers 10
    .param p0, "uri"    # Ljava/lang/StringBuilder;
    .param p1, "offset"    # I
    .param p2, "limit"    # I

    .line 184
    if-lt p1, p2, :cond_7

    .line 186
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 188
    :cond_7
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_11

    .line 190
    add-int/lit8 p1, p1, 0x1

    .line 193
    :cond_11
    move v0, p1

    .line 194
    .local v0, "segmentStart":I
    move v2, p1

    .line 195
    .local v2, "i":I
    :goto_13
    if-gt v2, p2, :cond_66

    .line 197
    if-ne v2, p2, :cond_19

    .line 198
    move v3, v2

    .local v3, "nextSegmentStart":I
    goto :goto_21

    .line 199
    .end local v3    # "nextSegmentStart":I
    :cond_19
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v1, :cond_63

    .line 200
    add-int/lit8 v3, v2, 0x1

    .line 207
    .restart local v3    # "nextSegmentStart":I
    :goto_21
    add-int/lit8 v4, v0, 0x1

    const/16 v5, 0x2e

    if-ne v2, v4, :cond_35

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_35

    .line 209
    invoke-virtual {p0, v0, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 210
    sub-int v4, v3, v0

    sub-int/2addr p2, v4

    .line 211
    move v2, v0

    goto :goto_62

    .line 212
    :cond_35
    add-int/lit8 v4, v0, 0x2

    if-ne v2, v4, :cond_5f

    .line 213
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_5f

    add-int/lit8 v4, v0, 0x1

    .line 214
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_5f

    .line 216
    const-string v4, "/"

    add-int/lit8 v5, v0, -0x2

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 217
    .local v4, "prevSegmentStart":I
    if-le v4, p1, :cond_55

    move v5, v4

    goto :goto_56

    :cond_55
    move v5, p1

    .line 218
    .local v5, "removeFrom":I
    :goto_56
    invoke-virtual {p0, v5, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 219
    sub-int v6, v3, v5

    sub-int/2addr p2, v6

    .line 220
    move v0, v4

    .line 221
    move v2, v4

    .line 222
    .end local v4    # "prevSegmentStart":I
    .end local v5    # "removeFrom":I
    goto :goto_62

    .line 223
    :cond_5f
    add-int/lit8 v2, v2, 0x1

    .line 224
    move v0, v2

    .line 226
    .end local v3    # "nextSegmentStart":I
    :goto_62
    goto :goto_13

    .line 202
    :cond_63
    add-int/lit8 v2, v2, 0x1

    .line 203
    goto :goto_13

    .line 227
    :cond_66
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static removeQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .registers 7
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "queryParameterName"    # Ljava/lang/String;

    .line 164
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 165
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    .line 166
    invoke-virtual {p0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 167
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    .line 168
    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 169
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 170
    .end local v4    # "value":Ljava/lang/String;
    goto :goto_29

    .line 172
    .end local v2    # "key":Ljava/lang/String;
    :cond_39
    goto :goto_f

    .line 173
    :cond_3a
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p0, "baseUri"    # Ljava/lang/String;
    .param p1, "referenceUri"    # Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .local v0, "uri":Ljava/lang/StringBuilder;
    const-string v1, ""

    if-nez p0, :cond_b

    move-object v2, v1

    goto :goto_c

    :cond_b
    move-object v2, p0

    :goto_c
    move-object p0, v2

    .line 94
    if-nez p1, :cond_10

    goto :goto_11

    :cond_10
    move-object v1, p1

    :goto_11
    move-object p1, v1

    .line 96
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/UriUtil;->getUriIndices(Ljava/lang/String;)[I

    move-result-object v1

    .line 97
    .local v1, "refIndices":[I
    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v4, :cond_2d

    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    aget v2, v1, v6

    aget v3, v1, v5

    invoke-static {v0, v2, v3}, Lcom/google/android/exoplayer2/util/UriUtil;->removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 104
    :cond_2d
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/UriUtil;->getUriIndices(Ljava/lang/String;)[I

    move-result-object v3

    .line 105
    .local v3, "baseIndices":[I
    const/4 v7, 0x3

    aget v8, v1, v7

    if-nez v8, :cond_45

    .line 108
    aget v4, v3, v7

    invoke-virtual {v0, p0, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 111
    :cond_45
    aget v7, v1, v5

    if-nez v7, :cond_58

    .line 114
    aget v4, v3, v5

    invoke-virtual {v0, p0, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 117
    :cond_58
    aget v7, v1, v6

    if-eqz v7, :cond_71

    .line 119
    aget v4, v3, v2

    add-int/2addr v4, v6

    .line 120
    .local v4, "baseLimit":I
    invoke-virtual {v0, p0, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    aget v2, v1, v6

    add-int/2addr v2, v4

    aget v5, v1, v5

    add-int/2addr v5, v4

    invoke-static {v0, v2, v5}, Lcom/google/android/exoplayer2/util/UriUtil;->removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 124
    .end local v4    # "baseLimit":I
    :cond_71
    aget v7, v1, v6

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2f

    if-ne v7, v8, :cond_90

    .line 127
    aget v4, v3, v6

    invoke-virtual {v0, p0, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    aget v2, v3, v6

    aget v4, v3, v6

    aget v5, v1, v5

    add-int/2addr v4, v5

    invoke-static {v0, v2, v4}, Lcom/google/android/exoplayer2/util/UriUtil;->removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 133
    :cond_90
    aget v7, v3, v2

    add-int/2addr v7, v5

    aget v9, v3, v6

    if-ge v7, v9, :cond_b7

    aget v7, v3, v6

    aget v9, v3, v5

    if-ne v7, v9, :cond_b7

    .line 137
    aget v4, v3, v6

    invoke-virtual {v0, p0, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    aget v2, v3, v6

    aget v4, v3, v6

    aget v5, v1, v5

    add-int/2addr v4, v5

    add-int/2addr v4, v6

    invoke-static {v0, v2, v4}, Lcom/google/android/exoplayer2/util/UriUtil;->removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 144
    :cond_b7
    aget v7, v3, v5

    sub-int/2addr v7, v6

    invoke-virtual {p0, v8, v7}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v7

    .line 145
    .local v7, "lastSlashIndex":I
    if-ne v7, v4, :cond_c3

    aget v4, v3, v6

    goto :goto_c5

    :cond_c3
    add-int/lit8 v4, v7, 0x1

    .line 146
    .restart local v4    # "baseLimit":I
    :goto_c5
    invoke-virtual {v0, p0, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    aget v2, v3, v6

    aget v5, v1, v5

    add-int/2addr v5, v4

    invoke-static {v0, v2, v5}, Lcom/google/android/exoplayer2/util/UriUtil;->removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .param p0, "baseUri"    # Ljava/lang/String;
    .param p1, "referenceUri"    # Ljava/lang/String;

    .line 78
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/UriUtil;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
