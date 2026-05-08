.class public Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
.super Ljava/lang/Object;
.source "DashManifest.java"

# interfaces
.implements Lcom/google/android/exoplayer2/offline/FilterableManifest;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/offline/FilterableManifest<",
        "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final availabilityStartTimeMs:J

.field public final durationMs:J

.field public final dynamic:Z

.field public final location:Landroid/net/Uri;

.field public final minBufferTimeMs:J

.field public final minUpdatePeriodMs:J

.field private final periods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Period;",
            ">;"
        }
    .end annotation
.end field

.field public final programInformation:Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;

.field public final publishTimeMs:J

.field public final serviceDescription:Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;

.field public final suggestedPresentationDelayMs:J

.field public final timeShiftBufferDepthMs:J

.field public final utcTiming:Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;


# direct methods
.method public constructor <init>(JJJZJJJJLcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;Landroid/net/Uri;Ljava/util/List;)V
    .registers 38
    .param p1, "availabilityStartTimeMs"    # J
    .param p3, "durationMs"    # J
    .param p5, "minBufferTimeMs"    # J
    .param p7, "dynamic"    # Z
    .param p8, "minUpdatePeriodMs"    # J
    .param p10, "timeShiftBufferDepthMs"    # J
    .param p12, "suggestedPresentationDelayMs"    # J
    .param p14, "publishTimeMs"    # J
    .param p16, "programInformation"    # Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;
    .param p17, "utcTiming"    # Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;
    .param p18, "serviceDescription"    # Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;
    .param p19, "location"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZJJJJ",
            "Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Period;",
            ">;)V"
        }
    .end annotation

    .line 111
    .local p20, "periods":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Period;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 112
    move-wide/from16 v1, p1

    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    .line 113
    move-wide/from16 v3, p3

    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->durationMs:J

    .line 114
    move-wide/from16 v5, p5

    iput-wide v5, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->minBufferTimeMs:J

    .line 115
    move/from16 v7, p7

    iput-boolean v7, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    .line 116
    move-wide/from16 v8, p8

    iput-wide v8, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->minUpdatePeriodMs:J

    .line 117
    move-wide/from16 v10, p10

    iput-wide v10, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->timeShiftBufferDepthMs:J

    .line 118
    move-wide/from16 v12, p12

    iput-wide v12, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->suggestedPresentationDelayMs:J

    .line 119
    move-wide/from16 v14, p14

    iput-wide v14, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->publishTimeMs:J

    .line 120
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->programInformation:Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;

    .line 121
    move-object/from16 v2, p17

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->utcTiming:Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;

    .line 122
    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->location:Landroid/net/Uri;

    .line 123
    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;

    .line 124
    if-nez p20, :cond_3e

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v16

    move-object/from16 v1, v16

    goto :goto_40

    :cond_3e
    move-object/from16 v1, p20

    :goto_40
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->periods:Ljava/util/List;

    .line 125
    return-void
.end method

.method private static copyAdaptationSets(Ljava/util/List;Ljava/util/LinkedList;)Ljava/util/ArrayList;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;",
            "Ljava/util/LinkedList<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;"
        }
    .end annotation

    .line 189
    .local p0, "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    .local p1, "keys":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/android/exoplayer2/offline/StreamKey;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/offline/StreamKey;

    .line 190
    .local v0, "key":Lcom/google/android/exoplayer2/offline/StreamKey;
    iget v1, v0, Lcom/google/android/exoplayer2/offline/StreamKey;->periodIndex:I

    .line 191
    .local v1, "periodIndex":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v2, "copyAdaptationSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    :goto_d
    iget v3, v0, Lcom/google/android/exoplayer2/offline/StreamKey;->groupIndex:I

    .line 194
    .local v3, "adaptationSetIndex":I
    move-object/from16 v4, p0

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    .line 196
    .local v5, "adaptationSet":Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    iget-object v6, v5, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    .line 197
    .local v6, "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v7, "copyRepresentations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    :cond_1e
    iget v8, v0, Lcom/google/android/exoplayer2/offline/StreamKey;->streamIndex:I

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 200
    .local v8, "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/google/android/exoplayer2/offline/StreamKey;

    .line 202
    .end local v8    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    iget v8, v0, Lcom/google/android/exoplayer2/offline/StreamKey;->periodIndex:I

    if-ne v8, v1, :cond_38

    iget v8, v0, Lcom/google/android/exoplayer2/offline/StreamKey;->groupIndex:I

    if-eq v8, v3, :cond_1e

    .line 204
    :cond_38
    new-instance v15, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-wide v9, v5, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->id:J

    iget v11, v5, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    iget-object v13, v5, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->accessibilityDescriptors:Ljava/util/List;

    iget-object v14, v5, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->essentialProperties:Ljava/util/List;

    iget-object v12, v5, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->supplementalProperties:Ljava/util/List;

    move-object v8, v15

    move-object/from16 v16, v12

    move-object v12, v7

    move/from16 v17, v3

    move-object v3, v15

    .end local v3    # "adaptationSetIndex":I
    .local v17, "adaptationSetIndex":I
    move-object/from16 v15, v16

    invoke-direct/range {v8 .. v15}, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;-><init>(JILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    .end local v5    # "adaptationSet":Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .end local v6    # "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    .end local v7    # "copyRepresentations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    .end local v17    # "adaptationSetIndex":I
    iget v3, v0, Lcom/google/android/exoplayer2/offline/StreamKey;->periodIndex:I

    if-eq v3, v1, :cond_5d

    .line 214
    move-object/from16 v3, p1

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 215
    return-object v2

    .line 212
    :cond_5d
    move-object/from16 v3, p1

    goto :goto_d
.end method


# virtual methods
.method public final copy(Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;"
        }
    .end annotation

    .line 147
    .local p1, "streamKeys":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/offline/StreamKey;>;"
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/LinkedList;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 148
    .local v1, "keys":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/android/exoplayer2/offline/StreamKey;>;"
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 149
    new-instance v3, Lcom/google/android/exoplayer2/offline/StreamKey;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4, v4}, Lcom/google/android/exoplayer2/offline/StreamKey;-><init>(III)V

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v3, "copyPeriods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Period;>;"
    const-wide/16 v4, 0x0

    .line 153
    .local v4, "shiftMs":J
    const/4 v6, 0x0

    move-wide/from16 v25, v4

    .end local v4    # "shiftMs":J
    .local v6, "periodIndex":I
    .local v25, "shiftMs":J
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v4

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v6, v4, :cond_5e

    .line 154
    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/offline/StreamKey;

    iget v4, v4, Lcom/google/android/exoplayer2/offline/StreamKey;->periodIndex:I

    if-eq v4, v6, :cond_3f

    .line 156
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationMs(I)J

    move-result-wide v4

    .line 157
    .local v4, "periodDurationMs":J
    cmp-long v9, v4, v7

    if-eqz v9, :cond_3e

    .line 158
    add-long v25, v25, v4

    .line 160
    .end local v4    # "periodDurationMs":J
    :cond_3e
    goto :goto_5b

    .line 161
    :cond_3f
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v4

    .line 162
    .local v4, "period":Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    iget-object v5, v4, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    .line 163
    invoke-static {v5, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->copyAdaptationSets(Ljava/util/List;Ljava/util/LinkedList;)Ljava/util/ArrayList;

    move-result-object v5

    .line 164
    .local v5, "copyAdaptationSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    new-instance v13, Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    iget-object v8, v4, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->id:Ljava/lang/String;

    iget-wide v9, v4, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    sub-long v9, v9, v25

    iget-object v12, v4, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->eventStreams:Ljava/util/List;

    move-object v7, v13

    move-object v11, v5

    invoke-direct/range {v7 .. v12}, Lcom/google/android/exoplayer2/source/dash/manifest/Period;-><init>(Ljava/lang/String;JLjava/util/List;Ljava/util/List;)V

    .line 167
    .local v7, "copiedPeriod":Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .end local v4    # "period":Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    .end local v5    # "copyAdaptationSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    .end local v7    # "copiedPeriod":Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    :goto_5b
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    .line 170
    .end local v6    # "periodIndex":I
    :cond_5e
    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->durationMs:J

    cmp-long v6, v4, v7

    if-eqz v6, :cond_67

    sub-long v4, v4, v25

    move-wide v7, v4

    .line 171
    .local v7, "newDuration":J
    :cond_67
    new-instance v27, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-object/from16 v4, v27

    iget-wide v5, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    iget-wide v9, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->minBufferTimeMs:J

    iget-boolean v11, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->minUpdatePeriodMs:J

    iget-wide v14, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->timeShiftBufferDepthMs:J

    move-object/from16 v28, v1

    .end local v1    # "keys":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/android/exoplayer2/offline/StreamKey;>;"
    .local v28, "keys":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/android/exoplayer2/offline/StreamKey;>;"
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->suggestedPresentationDelayMs:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->publishTimeMs:J

    move-wide/from16 v18, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->programInformation:Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->utcTiming:Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->location:Landroid/net/Uri;

    move-object/from16 v23, v1

    move-object/from16 v24, v3

    invoke-direct/range {v4 .. v24}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;-><init>(JJJZJJJJLcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;Landroid/net/Uri;Ljava/util/List;)V

    return-object v27
.end method

.method public bridge synthetic copy(Ljava/util/List;)Ljava/lang/Object;
    .registers 2

    .line 38
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->copy(Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object p1

    return-object p1
.end method

.method public final getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    .registers 3
    .param p1, "index"    # I

    .line 132
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->periods:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    return-object v0
.end method

.method public final getPeriodCount()I
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->periods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getPeriodDurationMs(I)J
    .registers 7
    .param p1, "index"    # I

    .line 136
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->periods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_23

    .line 137
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->durationMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_16

    goto :goto_3b

    :cond_16
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->periods:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    sub-long v2, v0, v2

    goto :goto_3b

    .line 138
    :cond_23
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->periods:Ljava/util/List;

    add-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->periods:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    sub-long v2, v0, v2

    .line 136
    :goto_3b
    return-wide v2
.end method

.method public final getPeriodDurationUs(I)J
    .registers 4
    .param p1, "index"    # I

    .line 142
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationMs(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v0

    return-wide v0
.end method
