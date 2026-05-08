.class public abstract Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
.super Ljava/lang/Object;
.source "Representation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;,
        Lcom/google/android/exoplayer2/source/dash/manifest/Representation$MultiSegmentRepresentation;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final REVISION_ID_DEFAULT:J = -0x1L


# instance fields
.field public final baseUrls:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;",
            ">;"
        }
    .end annotation
.end field

.field public final essentialProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;"
        }
    .end annotation
.end field

.field public final format:Lcom/google/android/exoplayer2/Format;

.field public final inbandEventStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final initializationUri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

.field public final presentationTimeOffsetUs:J

.field public final revisionId:J

.field public final supplementalProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(JLcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 11
    .param p1, "revisionId"    # J
    .param p3, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p5, "segmentBase"    # Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;",
            ">;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;)V"
        }
    .end annotation

    .line 146
    .local p4, "baseUrls":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    .local p6, "inbandEventStreams":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local p7, "essentialProperties":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local p8, "supplementalProperties":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 148
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->revisionId:J

    .line 149
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    .line 150
    invoke-static {p4}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->baseUrls:Lcom/google/common/collect/ImmutableList;

    .line 151
    nop

    .line 152
    if-nez p6, :cond_1e

    .line 153
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_22

    .line 154
    :cond_1e
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_22
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->inbandEventStreams:Ljava/util/List;

    .line 155
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->essentialProperties:Ljava/util/List;

    .line 156
    iput-object p8, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->supplementalProperties:Ljava/util/List;

    .line 157
    invoke-virtual {p5, p0}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;->getInitialization(Lcom/google/android/exoplayer2/source/dash/manifest/Representation;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->initializationUri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    .line 158
    invoke-virtual {p5}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;->getPresentationTimeOffsetUs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->presentationTimeOffsetUs:J

    .line 159
    return-void
.end method

.method synthetic constructor <init>(JLcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/Representation$1;)V
    .registers 10
    .param p1, "x0"    # J
    .param p3, "x1"    # Lcom/google/android/exoplayer2/Format;
    .param p4, "x2"    # Ljava/util/List;
    .param p5, "x3"    # Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .param p6, "x4"    # Ljava/util/List;
    .param p7, "x5"    # Ljava/util/List;
    .param p8, "x6"    # Ljava/util/List;
    .param p9, "x7"    # Lcom/google/android/exoplayer2/source/dash/manifest/Representation$1;

    .line 41
    invoke-direct/range {p0 .. p8}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;-><init>(JLcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static newInstance(JLcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;)Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .registers 14
    .param p0, "revisionId"    # J
    .param p2, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p4, "segmentBase"    # Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;",
            ">;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;",
            ")",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Representation;"
        }
    .end annotation

    .line 79
    .local p3, "baseUrls":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    const/4 v5, 0x0

    .line 85
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    .line 86
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    const/4 v8, 0x0

    .line 79
    move-wide v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v8}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->newInstance(JLcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(JLcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .registers 23
    .param p0, "revisionId"    # J
    .param p2, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p4, "segmentBase"    # Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .param p8, "cacheKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;",
            ">;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;",
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
            ")",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Representation;"
        }
    .end annotation

    .line 113
    .local p3, "baseUrls":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    .local p5, "inbandEventStreams":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local p6, "essentialProperties":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local p7, "supplementalProperties":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    move-object/from16 v0, p4

    instance-of v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    if-eqz v1, :cond_1f

    .line 114
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;

    move-object v7, v0

    check-cast v7, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    const-wide/16 v12, -0x1

    move-object v2, v1

    move-wide v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v2 .. v13}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;-><init>(JLcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;J)V

    return-object v1

    .line 124
    :cond_1f
    instance-of v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;

    if-eqz v1, :cond_38

    .line 125
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$MultiSegmentRepresentation;

    move-object v7, v0

    check-cast v7, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;

    move-object v2, v1

    move-wide v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$MultiSegmentRepresentation;-><init>(JLcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v1

    .line 134
    :cond_38
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "segmentBase must be of type SingleSegmentBase or MultiSegmentBase"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public abstract getCacheKey()Ljava/lang/String;
.end method

.method public abstract getIndex()Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
.end method

.method public abstract getIndexUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
.end method

.method public getInitializationUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->initializationUri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    return-object v0
.end method
