.class public final Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
.super Ljava/lang/Object;
.source "RangedUri.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private hashCode:I

.field public final length:J

.field private final referenceUri:Ljava/lang/String;

.field public final start:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .registers 7
    .param p1, "referenceUri"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "length"    # J

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    if-nez p1, :cond_8

    const-string v0, ""

    goto :goto_9

    :cond_8
    move-object v0, p1

    :goto_9
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->referenceUri:Ljava/lang/String;

    .line 54
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    .line 55
    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    .line 56
    return-void
.end method


# virtual methods
.method public attemptMerge(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .registers 21
    .param p1, "other"    # Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .param p2, "baseUri"    # Ljava/lang/String;

    .line 93
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->resolveUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 94
    .local v9, "resolvedUri":Ljava/lang/String;
    if-eqz v1, :cond_63

    invoke-virtual/range {p1 .. p2}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->resolveUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    const/4 v3, 0x0

    goto :goto_64

    .line 96
    :cond_18
    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_3d

    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    add-long v12, v10, v4

    iget-wide v14, v1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    cmp-long v8, v12, v14

    if-nez v8, :cond_3d

    .line 97
    new-instance v12, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    .line 100
    iget-wide v13, v1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    cmp-long v3, v13, v6

    if-nez v3, :cond_34

    move-wide v7, v6

    goto :goto_36

    :cond_34
    add-long/2addr v4, v13

    move-wide v7, v4

    :goto_36
    move-object v3, v12

    move-object v4, v9

    move-wide v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    .line 97
    return-object v12

    .line 101
    :cond_3d
    iget-wide v10, v1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    cmp-long v8, v10, v6

    if-eqz v8, :cond_61

    iget-wide v12, v1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    add-long v14, v12, v10

    move-wide/from16 v16, v4

    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    cmp-long v5, v14, v3

    if-nez v5, :cond_61

    .line 102
    new-instance v14, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    .line 105
    cmp-long v3, v16, v6

    if-nez v3, :cond_57

    move-wide v7, v6

    goto :goto_5a

    :cond_57
    add-long v10, v10, v16

    move-wide v7, v10

    :goto_5a
    move-object v3, v14

    move-object v4, v9

    move-wide v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    .line 102
    return-object v14

    .line 107
    :cond_61
    const/4 v3, 0x0

    return-object v3

    .line 94
    :cond_63
    const/4 v3, 0x0

    .line 95
    :goto_64
    return-object v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;

    .line 125
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 126
    return v0

    .line 128
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_32

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_32

    .line 131
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    .line 132
    .local v2, "other":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    iget-wide v5, v2, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_30

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    iget-wide v5, v2, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_30

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->referenceUri:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->referenceUri:Ljava/lang/String;

    .line 134
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    .line 132
    :goto_31
    return v0

    .line 129
    .end local v2    # "other":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    :cond_32
    :goto_32
    return v1
.end method

.method public hashCode()I
    .registers 5

    .line 113
    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->hashCode:I

    if-nez v0, :cond_1d

    .line 114
    const/16 v0, 0x11

    .line 115
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    long-to-int v3, v2

    add-int/2addr v1, v3

    .line 116
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    long-to-int v3, v2

    add-int/2addr v0, v3

    .line 117
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->referenceUri:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 118
    .end local v0    # "result":I
    .restart local v1    # "result":I
    iput v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->hashCode:I

    .line 120
    .end local v1    # "result":I
    :cond_1d
    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->hashCode:I

    return v0
.end method

.method public resolveUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .param p1, "baseUri"    # Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->referenceUri:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public resolveUriString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "baseUri"    # Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->referenceUri:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/UriUtil;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RangedUri(referenceUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->referenceUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
