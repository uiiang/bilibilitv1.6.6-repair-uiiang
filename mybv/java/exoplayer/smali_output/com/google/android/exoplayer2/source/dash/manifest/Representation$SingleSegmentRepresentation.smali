.class public Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;
.super Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
.source "Representation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleSegmentRepresentation"
.end annotation


# instance fields
.field private final cacheKey:Ljava/lang/String;

.field public final contentLength:J

.field private final indexUri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

.field private final segmentIndex:Lcom/google/android/exoplayer2/source/dash/manifest/SingleSegmentIndex;

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(JLcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;J)V
    .registers 25
    .param p1, "revisionId"    # J
    .param p3, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p5, "segmentBase"    # Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;
    .param p9, "cacheKey"    # Ljava/lang/String;
    .param p10, "contentLength"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;",
            ">;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 258
    .local p4, "baseUrls":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    .local p6, "inbandEventStreams":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local p7, "essentialProperties":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local p8, "supplementalProperties":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    move-object v10, p0

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;-><init>(JLcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/Representation$1;)V

    .line 266
    const/4 v0, 0x0

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v10, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;->uri:Landroid/net/Uri;

    .line 267
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->getIndex()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v0

    iput-object v0, v10, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;->indexUri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    .line 268
    move-object/from16 v2, p9

    iput-object v2, v10, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;->cacheKey:Ljava/lang/String;

    .line 269
    move-wide/from16 v11, p10

    iput-wide v11, v10, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;->contentLength:J

    .line 272
    nop

    .line 273
    if-eqz v0, :cond_37

    const/4 v0, 0x0

    goto :goto_47

    :cond_37
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/SingleSegmentIndex;

    new-instance v9, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v3, v9

    move-wide/from16 v7, p10

    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    invoke-direct {v0, v9}, Lcom/google/android/exoplayer2/source/dash/manifest/SingleSegmentIndex;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)V

    :goto_47
    iput-object v0, v10, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/manifest/SingleSegmentIndex;

    .line 274
    return-void
.end method

.method public static newInstance(JLcom/google/android/exoplayer2/Format;Ljava/lang/String;JJJJLjava/util/List;Ljava/lang/String;J)Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;
    .registers 37
    .param p0, "revisionId"    # J
    .param p2, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p3, "uri"    # Ljava/lang/String;
    .param p4, "initializationStart"    # J
    .param p6, "initializationEnd"    # J
    .param p8, "indexStart"    # J
    .param p10, "indexEnd"    # J
    .param p13, "cacheKey"    # Ljava/lang/String;
    .param p14, "contentLength"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/lang/String;",
            "JJJJ",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;",
            "Ljava/lang/String;",
            "J)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;"
        }
    .end annotation

    .line 220
    .local p12, "inbandEventStreams":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    new-instance v6, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    const/4 v1, 0x0

    sub-long v2, p6, p4

    const-wide/16 v7, 0x1

    add-long v4, v2, v7

    move-object v0, v6

    move-wide/from16 v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    move-object v1, v6

    .line 222
    .local v1, "rangedUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    new-instance v14, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    sub-long v9, p10, p8

    add-long/2addr v9, v7

    move-object v0, v14

    move-wide/from16 v6, p8

    move-wide v8, v9

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJ)V

    .line 224
    .local v14, "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    move-object/from16 v2, p3

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 225
    .local v0, "baseUrls":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    new-instance v3, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;

    .line 231
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v16

    .line 232
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v17

    move-object v9, v3

    move-wide/from16 v10, p0

    move-object/from16 v12, p2

    move-object v13, v0

    move-object/from16 v15, p12

    move-object/from16 v18, p13

    move-wide/from16 v19, p14

    invoke-direct/range {v9 .. v20}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;-><init>(JLcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;J)V

    .line 225
    return-object v3
.end method


# virtual methods
.method public getCacheKey()Ljava/lang/String;
    .registers 2

    .line 291
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;->cacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    .registers 2

    .line 285
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/manifest/SingleSegmentIndex;

    return-object v0
.end method

.method public getIndexUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .registers 2

    .line 279
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;->indexUri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    return-object v0
.end method
