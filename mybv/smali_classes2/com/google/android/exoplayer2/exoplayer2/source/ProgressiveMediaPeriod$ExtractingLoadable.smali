.class final Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$Loadable;
.implements Lcom/google/android/exoplayer2/source/IcyDataSource$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ExtractingLoadable"
.end annotation


# instance fields
.field private final dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

.field private dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private final extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private icyTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private volatile loadCanceled:Z

.field private final loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

.field private final loadTaskId:J

.field private pendingExtractorSeek:Z

.field private final positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

.field private final progressiveMediaExtractor:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

.field private seekTimeUs:J

.field private seenIcyMetadata:Z

.field final synthetic this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/util/ConditionVariable;)V
    .registers 9
    .param p1, "this$0"    # Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p4, "progressiveMediaExtractor"    # Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;
    .param p5, "extractorOutput"    # Lcom/google/android/exoplayer2/extractor/ExtractorOutput;
    .param p6, "loadCondition"    # Lcom/google/android/exoplayer2/util/ConditionVariable;

    .line 987
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 988
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->uri:Landroid/net/Uri;

    .line 989
    new-instance v0, Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-direct {v0, p3}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    .line 990
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    .line 991
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 992
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    .line 993
    new-instance v0, Lcom/google/android/exoplayer2/extractor/PositionHolder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/PositionHolder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    .line 994
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    .line 995
    invoke-static {}, Lcom/google/android/exoplayer2/source/LoadEventInfo;->getNewId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadTaskId:J

    .line 996
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->buildDataSpec(J)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 997
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;)Lcom/google/android/exoplayer2/upstream/StatsDataSource;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;

    .line 963
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;

    .line 963
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadTaskId:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;)Lcom/google/android/exoplayer2/upstream/DataSpec;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;

    .line 963
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;

    .line 963
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;JJ)V
    .registers 5
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .line 963
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->setLoadPosition(JJ)V

    return-void
.end method

.method private buildDataSpec(J)Lcom/google/android/exoplayer2/upstream/DataSpec;
    .registers 5
    .param p1, "position"    # J

    .line 1089
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;-><init>()V

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->uri:Landroid/net/Uri;

    .line 1090
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v0

    .line 1091
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setPosition(J)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    .line 1092
    # getter for: Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->customCacheKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->access$1400(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v0

    .line 1093
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setFlags(I)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v0

    .line 1095
    # getter for: Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->ICY_METADATA_HEADERS:Ljava/util/Map;
    invoke-static {}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->access$1300()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setHttpRequestHeaders(Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v0

    .line 1096
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->build()Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v0

    .line 1089
    return-object v0
.end method

.method private setLoadPosition(JJ)V
    .registers 6
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 1100
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    iput-wide p1, v0, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 1101
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    .line 1102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    .line 1103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->seenIcyMetadata:Z

    .line 1104
    return-void
.end method


# virtual methods
.method public cancelLoad()V
    .registers 2

    .line 1003
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    .line 1004
    return-void
.end method

.method public load()V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1008
    move-object/from16 v1, p0

    const/4 v0, 0x0

    move v2, v0

    .line 1009
    .local v2, "result":I
    :goto_4
    if-nez v2, :cond_127

    iget-boolean v0, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    if-nez v0, :cond_127

    .line 1011
    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    :try_start_d
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    iget-wide v6, v0, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 1012
    .local v6, "position":J
    invoke-direct {v1, v6, v7}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->buildDataSpec(J)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 1013
    iget-object v8, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-virtual {v8, v0}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v8

    .line 1014
    .local v8, "length":J
    cmp-long v0, v8, v4

    if-eqz v0, :cond_2a

    .line 1015
    add-long/2addr v8, v6

    .line 1016
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    # invokes: Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->onLengthKnown()V
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->access$600(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;)V

    move-wide/from16 v17, v8

    goto :goto_2c

    .line 1014
    :cond_2a
    move-wide/from16 v17, v8

    .line 1018
    .end local v8    # "length":J
    .local v17, "length":J
    :goto_2c
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    iget-object v8, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->parse(Ljava/util/Map;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    move-result-object v8

    # setter for: Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->icyHeaders:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;
    invoke-static {v0, v8}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->access$702(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    .line 1019
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    .line 1020
    .local v0, "extractorDataSource":Lcom/google/android/exoplayer2/upstream/DataSource;
    iget-object v8, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    # getter for: Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->icyHeaders:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;
    invoke-static {v8}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->access$700(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    move-result-object v8

    if-eqz v8, :cond_72

    iget-object v8, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    # getter for: Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->icyHeaders:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;
    invoke-static {v8}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->access$700(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    move-result-object v8

    iget v8, v8, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->metadataInterval:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_72

    .line 1021
    new-instance v8, Lcom/google/android/exoplayer2/source/IcyDataSource;

    iget-object v9, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    iget-object v10, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    # getter for: Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->icyHeaders:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;
    invoke-static {v10}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->access$700(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    move-result-object v10

    iget v10, v10, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->metadataInterval:I

    invoke-direct {v8, v9, v10, v1}, Lcom/google/android/exoplayer2/source/IcyDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/source/IcyDataSource$Listener;)V

    move-object v0, v8

    .line 1022
    iget-object v8, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->icyTrack()Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v8

    iput-object v8, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->icyTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 1023
    # getter for: Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->ICY_FORMAT:Lcom/google/android/exoplayer2/Format;
    invoke-static {}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->access$800()Lcom/google/android/exoplayer2/Format;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    move-object/from16 v19, v0

    goto :goto_74

    .line 1025
    :cond_72
    move-object/from16 v19, v0

    .end local v0    # "extractorDataSource":Lcom/google/android/exoplayer2/upstream/DataSource;
    .local v19, "extractorDataSource":Lcom/google/android/exoplayer2/upstream/DataSource;
    :goto_74
    iget-object v8, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    iget-object v10, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->uri:Landroid/net/Uri;

    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    .line 1028
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v11

    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 1025
    move-object/from16 v9, v19

    move-wide v12, v6

    move-wide/from16 v14, v17

    move-object/from16 v16, v0

    invoke-interface/range {v8 .. v16}, Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;->init(Lcom/google/android/exoplayer2/upstream/DataReader;Landroid/net/Uri;Ljava/util/Map;JJLcom/google/android/exoplayer2/extractor/ExtractorOutput;)V

    .line 1033
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    # getter for: Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->icyHeaders:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->access$700(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    move-result-object v0

    if-eqz v0, :cond_97

    .line 1034
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;->disableSeekingOnMp3Streams()V

    .line 1037
    :cond_97
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    if-eqz v0, :cond_a5

    .line 1038
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    iget-wide v8, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    invoke-interface {v0, v6, v7, v8, v9}, Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;->seek(JJ)V

    .line 1039
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    .line 1041
    :cond_a5
    :goto_a5
    if-nez v2, :cond_e8

    iget-boolean v0, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCanceled:Z
    :try_end_a9
    .catchall {:try_start_d .. :try_end_a9} :catchall_108

    if-nez v0, :cond_e8

    .line 1043
    :try_start_ab
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->block()V
    :try_end_b0
    .catch Ljava/lang/InterruptedException; {:try_start_ab .. :try_end_b0} :catch_e1
    .catchall {:try_start_ab .. :try_end_b0} :catchall_108

    .line 1046
    nop

    .line 1047
    :try_start_b1
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    iget-object v8, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    invoke-interface {v0, v8}, Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;->read(Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result v0

    move v2, v0

    .line 1048
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;->getCurrentInputPosition()J

    move-result-wide v8

    .line 1049
    .local v8, "currentInputPosition":J
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    # getter for: Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->continueLoadingCheckIntervalBytes:J
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->access$900(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;)J

    move-result-wide v10

    add-long/2addr v10, v6

    cmp-long v0, v8, v10

    if-lez v0, :cond_e0

    .line 1050
    move-wide v6, v8

    .line 1051
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->close()Z

    .line 1052
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    # getter for: Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->access$1100(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;)Landroid/os/Handler;

    move-result-object v0

    iget-object v10, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    # getter for: Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;
    invoke-static {v10}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->access$1000(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;)Ljava/lang/Runnable;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1054
    .end local v8    # "currentInputPosition":J
    :cond_e0
    goto :goto_a5

    .line 1044
    :catch_e1
    move-exception v0

    .line 1045
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v8, Ljava/io/InterruptedIOException;

    invoke-direct {v8}, Ljava/io/InterruptedIOException;-><init>()V

    .end local v2    # "result":I
    throw v8
    :try_end_e8
    .catchall {:try_start_b1 .. :try_end_e8} :catchall_108

    .line 1056
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v6    # "position":J
    .end local v17    # "length":J
    .end local v19    # "extractorDataSource":Lcom/google/android/exoplayer2/upstream/DataSource;
    .restart local v2    # "result":I
    :cond_e8
    if-ne v2, v3, :cond_ed

    .line 1057
    const/4 v0, 0x0

    move v2, v0

    .end local v2    # "result":I
    .local v0, "result":I
    goto :goto_101

    .line 1058
    .end local v0    # "result":I
    .restart local v2    # "result":I
    :cond_ed
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;->getCurrentInputPosition()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-eqz v0, :cond_101

    .line 1059
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;->getCurrentInputPosition()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 1061
    :cond_101
    :goto_101
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/DataSourceUtil;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 1062
    goto/16 :goto_4

    .line 1056
    :catchall_108
    move-exception v0

    if-eq v2, v3, :cond_120

    .line 1058
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;->getCurrentInputPosition()J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-eqz v3, :cond_121

    .line 1059
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    iget-object v4, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;->getCurrentInputPosition()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    goto :goto_121

    .line 1057
    :cond_120
    const/4 v2, 0x0

    .line 1061
    :cond_121
    :goto_121
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-static {v3}, Lcom/google/android/exoplayer2/upstream/DataSourceUtil;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 1062
    throw v0

    .line 1064
    :cond_127
    return-void
.end method

.method public onIcyMetadata(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .registers 13
    .param p1, "metadata"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 1073
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->seenIcyMetadata:Z

    const/4 v1, 0x1

    if-nez v0, :cond_9

    .line 1074
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    move-wide v5, v2

    goto :goto_16

    .line 1075
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    # invokes: Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->getLargestQueuedTimestampUs(Z)J
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->access$1200(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;Z)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-wide v5, v2

    :goto_16
    nop

    .line 1076
    .local v5, "timeUs":J
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    .line 1077
    .local v0, "length":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->icyTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 1078
    .local v2, "icyTrackOutput":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    invoke-interface {v2, p1, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 1079
    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v2

    move v8, v0

    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 1081
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->seenIcyMetadata:Z

    .line 1082
    return-void
.end method
