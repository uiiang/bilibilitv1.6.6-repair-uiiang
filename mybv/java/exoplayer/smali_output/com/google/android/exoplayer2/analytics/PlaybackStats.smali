.class public final Lcom/google/android/exoplayer2/analytics/PlaybackStats;
.super Ljava/lang/Object;
.source "PlaybackStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndPlaybackState;,
        Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndException;,
        Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final EMPTY:Lcom/google/android/exoplayer2/analytics/PlaybackStats;

.field public static final PLAYBACK_STATE_ABANDONED:I = 0xf

.field public static final PLAYBACK_STATE_BUFFERING:I = 0x6

.field static final PLAYBACK_STATE_COUNT:I = 0x10

.field public static final PLAYBACK_STATE_ENDED:I = 0xb

.field public static final PLAYBACK_STATE_FAILED:I = 0xd

.field public static final PLAYBACK_STATE_INTERRUPTED_BY_AD:I = 0xe

.field public static final PLAYBACK_STATE_JOINING_BACKGROUND:I = 0x1

.field public static final PLAYBACK_STATE_JOINING_FOREGROUND:I = 0x2

.field public static final PLAYBACK_STATE_NOT_STARTED:I = 0x0

.field public static final PLAYBACK_STATE_PAUSED:I = 0x4

.field public static final PLAYBACK_STATE_PAUSED_BUFFERING:I = 0x7

.field public static final PLAYBACK_STATE_PLAYING:I = 0x3

.field public static final PLAYBACK_STATE_SEEKING:I = 0x5

.field public static final PLAYBACK_STATE_STOPPED:I = 0xc

.field public static final PLAYBACK_STATE_SUPPRESSED:I = 0x9

.field public static final PLAYBACK_STATE_SUPPRESSED_BUFFERING:I = 0xa


# instance fields
.field public final abandonedBeforeReadyCount:I

.field public final adPlaybackCount:I

.field public final audioFormatHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;",
            ">;"
        }
    .end annotation
.end field

.field public final backgroundJoiningCount:I

.field public final endedCount:I

.field public final fatalErrorCount:I

.field public final fatalErrorHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndException;",
            ">;"
        }
    .end annotation
.end field

.field public final fatalErrorPlaybackCount:I

.field public final firstReportedTimeMs:J

.field public final foregroundPlaybackCount:I

.field public final initialAudioFormatBitrateCount:I

.field public final initialVideoFormatBitrateCount:I

.field public final initialVideoFormatHeightCount:I

.field public final maxRebufferTimeMs:J

.field public final mediaTimeHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[J>;"
        }
    .end annotation
.end field

.field public final nonFatalErrorCount:I

.field public final nonFatalErrorHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndException;",
            ">;"
        }
    .end annotation
.end field

.field public final playbackCount:I

.field private final playbackStateDurationsMs:[J

.field public final playbackStateHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndPlaybackState;",
            ">;"
        }
    .end annotation
.end field

.field public final totalAudioFormatBitrateTimeProduct:J

.field public final totalAudioFormatTimeMs:J

.field public final totalAudioUnderruns:J

.field public final totalBandwidthBytes:J

.field public final totalBandwidthTimeMs:J

.field public final totalDroppedFrames:J

.field public final totalInitialAudioFormatBitrate:J

.field public final totalInitialVideoFormatBitrate:J

.field public final totalInitialVideoFormatHeight:I

.field public final totalPauseBufferCount:I

.field public final totalPauseCount:I

.field public final totalRebufferCount:I

.field public final totalSeekCount:I

.field public final totalValidJoinTimeMs:J

.field public final totalVideoFormatBitrateTimeMs:J

.field public final totalVideoFormatBitrateTimeProduct:J

.field public final totalVideoFormatHeightTimeMs:J

.field public final totalVideoFormatHeightTimeProduct:J

.field public final validJoinTimeCount:I

.field public final videoFormatHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 236
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/exoplayer2/analytics/PlaybackStats;

    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->merge([Lcom/google/android/exoplayer2/analytics/PlaybackStats;)Lcom/google/android/exoplayer2/analytics/PlaybackStats;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->EMPTY:Lcom/google/android/exoplayer2/analytics/PlaybackStats;

    return-void
.end method

.method constructor <init>(I[JLjava/util/List;Ljava/util/List;JIIIIJIIIIIJILjava/util/List;Ljava/util/List;JJJJJJIIIJIJJJJJIIILjava/util/List;Ljava/util/List;)V
    .registers 72
    .param p1, "playbackCount"    # I
    .param p2, "playbackStateDurationsMs"    # [J
    .param p5, "firstReportedTimeMs"    # J
    .param p7, "foregroundPlaybackCount"    # I
    .param p8, "abandonedBeforeReadyCount"    # I
    .param p9, "endedCount"    # I
    .param p10, "backgroundJoiningCount"    # I
    .param p11, "totalValidJoinTimeMs"    # J
    .param p13, "validJoinTimeCount"    # I
    .param p14, "totalPauseCount"    # I
    .param p15, "totalPauseBufferCount"    # I
    .param p16, "totalSeekCount"    # I
    .param p17, "totalRebufferCount"    # I
    .param p18, "maxRebufferTimeMs"    # J
    .param p20, "adPlaybackCount"    # I
    .param p23, "totalVideoFormatHeightTimeMs"    # J
    .param p25, "totalVideoFormatHeightTimeProduct"    # J
    .param p27, "totalVideoFormatBitrateTimeMs"    # J
    .param p29, "totalVideoFormatBitrateTimeProduct"    # J
    .param p31, "totalAudioFormatTimeMs"    # J
    .param p33, "totalAudioFormatBitrateTimeProduct"    # J
    .param p35, "initialVideoFormatHeightCount"    # I
    .param p36, "initialVideoFormatBitrateCount"    # I
    .param p37, "totalInitialVideoFormatHeight"    # I
    .param p38, "totalInitialVideoFormatBitrate"    # J
    .param p40, "initialAudioFormatBitrateCount"    # I
    .param p41, "totalInitialAudioFormatBitrate"    # J
    .param p43, "totalBandwidthTimeMs"    # J
    .param p45, "totalBandwidthBytes"    # J
    .param p47, "totalDroppedFrames"    # J
    .param p49, "totalAudioUnderruns"    # J
    .param p51, "fatalErrorPlaybackCount"    # I
    .param p52, "fatalErrorCount"    # I
    .param p53, "nonFatalErrorCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[J",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndPlaybackState;",
            ">;",
            "Ljava/util/List<",
            "[J>;JIIIIJIIIIIJI",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;",
            ">;JJJJJJIIIJIJJJJJIII",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndException;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndException;",
            ">;)V"
        }
    .end annotation

    .line 588
    .local p3, "playbackStateHistory":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndPlaybackState;>;"
    .local p4, "mediaTimeHistory":Ljava/util/List;, "Ljava/util/List<[J>;"
    .local p21, "videoFormatHistory":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;>;"
    .local p22, "audioFormatHistory":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;>;"
    .local p54, "fatalErrorHistory":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndException;>;"
    .local p55, "nonFatalErrorHistory":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndException;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 589
    move/from16 v1, p1

    iput v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->playbackCount:I

    .line 590
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->playbackStateDurationsMs:[J

    .line 591
    invoke-static/range {p3 .. p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->playbackStateHistory:Ljava/util/List;

    .line 592
    invoke-static/range {p4 .. p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->mediaTimeHistory:Ljava/util/List;

    .line 593
    move-wide/from16 v3, p5

    iput-wide v3, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->firstReportedTimeMs:J

    .line 594
    move/from16 v5, p7

    iput v5, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    .line 595
    move/from16 v6, p8

    iput v6, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->abandonedBeforeReadyCount:I

    .line 596
    move/from16 v7, p9

    iput v7, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->endedCount:I

    .line 597
    move/from16 v8, p10

    iput v8, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->backgroundJoiningCount:I

    .line 598
    move-wide/from16 v9, p11

    iput-wide v9, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalValidJoinTimeMs:J

    .line 599
    move/from16 v11, p13

    iput v11, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->validJoinTimeCount:I

    .line 600
    move/from16 v12, p14

    iput v12, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalPauseCount:I

    .line 601
    move/from16 v13, p15

    iput v13, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalPauseBufferCount:I

    .line 602
    move/from16 v14, p16

    iput v14, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalSeekCount:I

    .line 603
    move/from16 v15, p17

    iput v15, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalRebufferCount:I

    .line 604
    move-wide/from16 v1, p18

    iput-wide v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->maxRebufferTimeMs:J

    .line 605
    move/from16 v1, p20

    iput v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->adPlaybackCount:I

    .line 606
    invoke-static/range {p21 .. p21}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->videoFormatHistory:Ljava/util/List;

    .line 607
    invoke-static/range {p22 .. p22}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->audioFormatHistory:Ljava/util/List;

    .line 608
    move-wide/from16 v1, p23

    iput-wide v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalVideoFormatHeightTimeMs:J

    .line 609
    move-wide/from16 v1, p25

    iput-wide v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalVideoFormatHeightTimeProduct:J

    .line 610
    move-wide/from16 v1, p27

    iput-wide v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalVideoFormatBitrateTimeMs:J

    .line 611
    move-wide/from16 v1, p29

    iput-wide v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalVideoFormatBitrateTimeProduct:J

    .line 612
    move-wide/from16 v1, p31

    iput-wide v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalAudioFormatTimeMs:J

    .line 613
    move-wide/from16 v1, p33

    iput-wide v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalAudioFormatBitrateTimeProduct:J

    .line 614
    move/from16 v1, p35

    iput v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->initialVideoFormatHeightCount:I

    .line 615
    move/from16 v2, p36

    iput v2, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->initialVideoFormatBitrateCount:I

    .line 616
    move/from16 v1, p37

    iput v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalInitialVideoFormatHeight:I

    .line 617
    move-wide/from16 v1, p38

    iput-wide v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalInitialVideoFormatBitrate:J

    .line 618
    move/from16 v1, p40

    iput v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->initialAudioFormatBitrateCount:I

    .line 619
    move-wide/from16 v1, p41

    iput-wide v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalInitialAudioFormatBitrate:J

    .line 620
    move-wide/from16 v1, p43

    iput-wide v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalBandwidthTimeMs:J

    .line 621
    move-wide/from16 v1, p45

    iput-wide v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalBandwidthBytes:J

    .line 622
    move-wide/from16 v1, p47

    iput-wide v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalDroppedFrames:J

    .line 623
    move-wide/from16 v1, p49

    iput-wide v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalAudioUnderruns:J

    .line 624
    move/from16 v1, p51

    iput v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->fatalErrorPlaybackCount:I

    .line 625
    move/from16 v2, p52

    iput v2, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->fatalErrorCount:I

    .line 626
    move/from16 v1, p53

    iput v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->nonFatalErrorCount:I

    .line 627
    invoke-static/range {p54 .. p54}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->fatalErrorHistory:Ljava/util/List;

    .line 628
    invoke-static/range {p55 .. p55}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->nonFatalErrorHistory:Ljava/util/List;

    .line 629
    return-void
.end method

.method public static varargs merge([Lcom/google/android/exoplayer2/analytics/PlaybackStats;)Lcom/google/android/exoplayer2/analytics/PlaybackStats;
    .registers 107
    .param p0, "playbackStats"    # [Lcom/google/android/exoplayer2/analytics/PlaybackStats;

    .line 248
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 249
    .local v1, "playbackCount":I
    const/16 v2, 0x10

    new-array v14, v2, [J

    .line 250
    .local v14, "playbackStateDurationsMs":[J
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 251
    .local v3, "firstReportedTimeMs":J
    const/4 v5, 0x0

    .line 252
    .local v5, "foregroundPlaybackCount":I
    const/4 v6, 0x0

    .line 253
    .local v6, "abandonedBeforeReadyCount":I
    const/4 v7, 0x0

    .line 254
    .local v7, "endedCount":I
    const/4 v8, 0x0

    .line 255
    .local v8, "backgroundJoiningCount":I
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 256
    .local v9, "totalValidJoinTimeMs":J
    const/4 v11, 0x0

    .line 257
    .local v11, "validJoinTimeCount":I
    const/4 v12, 0x0

    .line 258
    .local v12, "totalPauseCount":I
    const/4 v13, 0x0

    .line 259
    .local v13, "totalPauseBufferCount":I
    const/4 v15, 0x0

    .line 260
    .local v15, "totalSeekCount":I
    const/16 v16, 0x0

    .line 261
    .local v16, "totalRebufferCount":I
    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    .line 262
    .local v17, "maxRebufferTimeMs":J
    const/16 v19, 0x0

    .line 263
    .local v19, "adPlaybackCount":I
    const-wide/16 v20, 0x0

    .line 264
    .local v20, "totalVideoFormatHeightTimeMs":J
    const-wide/16 v22, 0x0

    .line 265
    .local v22, "totalVideoFormatHeightTimeProduct":J
    const-wide/16 v24, 0x0

    .line 266
    .local v24, "totalVideoFormatBitrateTimeMs":J
    const-wide/16 v26, 0x0

    .line 267
    .local v26, "totalVideoFormatBitrateTimeProduct":J
    const-wide/16 v28, 0x0

    .line 268
    .local v28, "totalAudioFormatTimeMs":J
    const-wide/16 v30, 0x0

    .line 269
    .local v30, "totalAudioFormatBitrateTimeProduct":J
    const/16 v32, 0x0

    .line 270
    .local v32, "initialVideoFormatHeightCount":I
    const/16 v33, 0x0

    .line 271
    .local v33, "initialVideoFormatBitrateCount":I
    const/16 v34, -0x1

    .line 272
    .local v34, "totalInitialVideoFormatHeight":I
    const-wide/16 v35, -0x1

    .line 273
    .local v35, "totalInitialVideoFormatBitrate":J
    const/16 v37, 0x0

    .line 274
    .local v37, "initialAudioFormatBitrateCount":I
    const-wide/16 v38, -0x1

    .line 275
    .local v38, "totalInitialAudioFormatBitrate":J
    const-wide/16 v40, 0x0

    .line 276
    .local v40, "totalBandwidthTimeMs":J
    const-wide/16 v42, 0x0

    .line 277
    .local v42, "totalBandwidthBytes":J
    const-wide/16 v44, 0x0

    .line 278
    .local v44, "totalDroppedFrames":J
    const-wide/16 v46, 0x0

    .line 279
    .local v46, "totalAudioUnderruns":J
    const/16 v48, 0x0

    .line 280
    .local v48, "fatalErrorPlaybackCount":I
    const/16 v49, 0x0

    .line 281
    .local v49, "fatalErrorCount":I
    const/16 v50, 0x0

    .line 282
    .local v50, "nonFatalErrorCount":I
    array-length v2, v0

    const/16 v52, 0x0

    move/from16 v59, v5

    move/from16 v60, v6

    move/from16 v61, v7

    move/from16 v62, v8

    move-wide/from16 v63, v9

    move/from16 v65, v11

    move/from16 v66, v12

    move/from16 v67, v13

    move/from16 v68, v15

    move/from16 v69, v16

    move-wide/from16 v10, v17

    move/from16 v70, v19

    move-wide/from16 v71, v20

    move-wide/from16 v73, v22

    move-wide/from16 v75, v24

    move-wide/from16 v77, v26

    move-wide/from16 v79, v28

    move-wide/from16 v81, v30

    move/from16 v83, v32

    move/from16 v84, v33

    move/from16 v15, v34

    move-wide/from16 v85, v35

    move/from16 v87, v37

    move-wide/from16 v88, v38

    move-wide/from16 v90, v40

    move-wide/from16 v92, v42

    move-wide/from16 v94, v44

    move-wide/from16 v96, v46

    move/from16 v98, v48

    move/from16 v99, v49

    move/from16 v100, v50

    move-wide v12, v3

    const/4 v3, 0x0

    .end local v3    # "firstReportedTimeMs":J
    .end local v5    # "foregroundPlaybackCount":I
    .end local v6    # "abandonedBeforeReadyCount":I
    .end local v7    # "endedCount":I
    .end local v8    # "backgroundJoiningCount":I
    .end local v9    # "totalValidJoinTimeMs":J
    .end local v11    # "validJoinTimeCount":I
    .end local v13    # "totalPauseBufferCount":I
    .end local v16    # "totalRebufferCount":I
    .end local v17    # "maxRebufferTimeMs":J
    .end local v19    # "adPlaybackCount":I
    .end local v20    # "totalVideoFormatHeightTimeMs":J
    .end local v22    # "totalVideoFormatHeightTimeProduct":J
    .end local v24    # "totalVideoFormatBitrateTimeMs":J
    .end local v26    # "totalVideoFormatBitrateTimeProduct":J
    .end local v28    # "totalAudioFormatTimeMs":J
    .end local v30    # "totalAudioFormatBitrateTimeProduct":J
    .end local v32    # "initialVideoFormatHeightCount":I
    .end local v33    # "initialVideoFormatBitrateCount":I
    .end local v34    # "totalInitialVideoFormatHeight":I
    .end local v35    # "totalInitialVideoFormatBitrate":J
    .end local v37    # "initialAudioFormatBitrateCount":I
    .end local v38    # "totalInitialAudioFormatBitrate":J
    .end local v40    # "totalBandwidthTimeMs":J
    .end local v42    # "totalBandwidthBytes":J
    .end local v44    # "totalDroppedFrames":J
    .end local v46    # "totalAudioUnderruns":J
    .end local v48    # "fatalErrorPlaybackCount":I
    .end local v49    # "fatalErrorCount":I
    .end local v50    # "nonFatalErrorCount":I
    .local v10, "maxRebufferTimeMs":J
    .local v12, "firstReportedTimeMs":J
    .local v15, "totalInitialVideoFormatHeight":I
    .local v59, "foregroundPlaybackCount":I
    .local v60, "abandonedBeforeReadyCount":I
    .local v61, "endedCount":I
    .local v62, "backgroundJoiningCount":I
    .local v63, "totalValidJoinTimeMs":J
    .local v65, "validJoinTimeCount":I
    .local v66, "totalPauseCount":I
    .local v67, "totalPauseBufferCount":I
    .local v68, "totalSeekCount":I
    .local v69, "totalRebufferCount":I
    .local v70, "adPlaybackCount":I
    .local v71, "totalVideoFormatHeightTimeMs":J
    .local v73, "totalVideoFormatHeightTimeProduct":J
    .local v75, "totalVideoFormatBitrateTimeMs":J
    .local v77, "totalVideoFormatBitrateTimeProduct":J
    .local v79, "totalAudioFormatTimeMs":J
    .local v81, "totalAudioFormatBitrateTimeProduct":J
    .local v83, "initialVideoFormatHeightCount":I
    .local v84, "initialVideoFormatBitrateCount":I
    .local v85, "totalInitialVideoFormatBitrate":J
    .local v87, "initialAudioFormatBitrateCount":I
    .local v88, "totalInitialAudioFormatBitrate":J
    .local v90, "totalBandwidthTimeMs":J
    .local v92, "totalBandwidthBytes":J
    .local v94, "totalDroppedFrames":J
    .local v96, "totalAudioUnderruns":J
    .local v98, "fatalErrorPlaybackCount":I
    .local v99, "fatalErrorCount":I
    .local v100, "nonFatalErrorCount":I
    :goto_8b
    if-ge v3, v2, :cond_180

    aget-object v4, v0, v3

    .line 283
    .local v4, "stats":Lcom/google/android/exoplayer2/analytics/PlaybackStats;
    iget v5, v4, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->playbackCount:I

    add-int/2addr v1, v5

    .line 284
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_93
    const/16 v6, 0x10

    if-ge v5, v6, :cond_a4

    .line 285
    aget-wide v7, v14, v5

    iget-object v9, v4, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->playbackStateDurationsMs:[J

    aget-wide v16, v9, v5

    add-long v7, v7, v16

    aput-wide v7, v14, v5

    .line 284
    add-int/lit8 v5, v5, 0x1

    goto :goto_93

    .line 287
    .end local v5    # "i":I
    :cond_a4
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v12, v7

    if-nez v5, :cond_b1

    .line 288
    iget-wide v12, v4, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->firstReportedTimeMs:J

    move v5, v1

    goto :goto_bd

    .line 289
    :cond_b1
    move v5, v1

    .end local v1    # "playbackCount":I
    .local v5, "playbackCount":I
    iget-wide v0, v4, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->firstReportedTimeMs:J

    cmp-long v9, v0, v7

    if-eqz v9, :cond_bd

    .line 290
    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    move-wide v12, v0

    .line 292
    :cond_bd
    :goto_bd
    iget v0, v4, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    add-int v59, v59, v0

    .line 293
    iget v0, v4, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->abandonedBeforeReadyCount:I

    add-int v60, v60, v0

    .line 294
    iget v0, v4, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->endedCount:I

    add-int v61, v61, v0

    .line 295
    iget v0, v4, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->backgroundJoiningCount:I

    add-int v62, v62, v0

    .line 296
    cmp-long v0, v63, v7

    if-nez v0, :cond_d6

    .line 297
    iget-wide v0, v4, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalValidJoinTimeMs:J

    move-wide/from16 v63, v0

    .end local v63    # "totalValidJoinTimeMs":J
    .local v0, "totalValidJoinTimeMs":J
    goto :goto_de

    .line 298
    .end local v0    # "totalValidJoinTimeMs":J
    .restart local v63    # "totalValidJoinTimeMs":J
    :cond_d6
    iget-wide v0, v4, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalValidJoinTimeMs:J

    cmp-long v9, v0, v7

    if-eqz v9, :cond_de

    .line 299
    add-long v63, v63, v0

    .line 301
    :cond_de
    :goto_de
    iget v0, v4, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->validJoinTimeCount:I

    add-int v65, v65, v0

    .line 302
    iget v0, v4, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalPauseCount:I

    add-int v66, v66, v0

    .line 303
    iget v0, v4, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalPauseBufferCount:I

    add-int v67, v67, v0

    .line 304
    iget v0, v4, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalSeekCount:I

    add-int v68, v68, v0

    .line 305
    iget v0, v4, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalRebufferCount:I

    add-int v69, v69, v0

    .line 306
    cmp-long v0, v10, v7

    if-nez v0, :cond_fa

    .line 307
    iget-wide v0, v4, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->maxRebufferTimeMs:J

    move-wide v10, v0

    .end local v10    # "maxRebufferTimeMs":J
    .local v0, "maxRebufferTimeMs":J
    goto :goto_105

    .line 308
    .end local v0    # "maxRebufferTimeMs":J
    .restart local v10    # "maxRebufferTimeMs":J
    :cond_fa
    iget-wide v0, v4, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->maxRebufferTimeMs:J

    cmp-long v9, v0, v7

    if-eqz v9, :cond_105

    .line 309
    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-wide v10, v0

    .line 311
    :cond_105
    :goto_105
    iget v0, v4, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->adPlaybackCount:I

    add-int v70, v70, v0

    .line 312
    iget-wide v0, v4, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalVideoFormatHeightTimeMs:J

    add-long v71, v71, v0

    .line 313
    iget-wide v0, v4, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalVideoFormatHeightTimeProduct:J

    add-long v73, v73, v0

    .line 314
    iget-wide v0, v4, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalVideoFormatBitrateTimeMs:J

    add-long v75, v75, v0

    .line 315
    iget-wide v0, v4, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalVideoFormatBitrateTimeProduct:J

    add-long v77, v77, v0

    .line 316
    iget-wide v0, v4, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalAudioFormatTimeMs:J

    add-long v79, v79, v0

    .line 317
    iget-wide v0, v4, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalAudioFormatBitrateTimeProduct:J

    add-long v81, v81, v0

    .line 318
    iget v0, v4, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->initialVideoFormatHeightCount:I

    add-int v83, v83, v0

    .line 319
    iget v0, v4, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->initialVideoFormatBitrateCount:I

    add-int v84, v84, v0

    .line 320
    const/4 v0, -0x1

    if-ne v15, v0, :cond_130

    .line 321
    iget v0, v4, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalInitialVideoFormatHeight:I

    move v15, v0

    .end local v15    # "totalInitialVideoFormatHeight":I
    .local v0, "totalInitialVideoFormatHeight":I
    goto :goto_135

    .line 322
    .end local v0    # "totalInitialVideoFormatHeight":I
    .restart local v15    # "totalInitialVideoFormatHeight":I
    :cond_130
    iget v1, v4, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalInitialVideoFormatHeight:I

    if-eq v1, v0, :cond_135

    .line 323
    add-int/2addr v15, v1

    .line 325
    :cond_135
    :goto_135
    const-wide/16 v0, -0x1

    cmp-long v7, v85, v0

    if-nez v7, :cond_140

    .line 326
    iget-wide v7, v4, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalInitialVideoFormatBitrate:J

    move-wide/from16 v85, v7

    .end local v85    # "totalInitialVideoFormatBitrate":J
    .local v7, "totalInitialVideoFormatBitrate":J
    goto :goto_148

    .line 327
    .end local v7    # "totalInitialVideoFormatBitrate":J
    .restart local v85    # "totalInitialVideoFormatBitrate":J
    :cond_140
    iget-wide v7, v4, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalInitialVideoFormatBitrate:J

    cmp-long v9, v7, v0

    if-eqz v9, :cond_148

    .line 328
    add-long v85, v85, v7

    .line 330
    :cond_148
    :goto_148
    iget v7, v4, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->initialAudioFormatBitrateCount:I

    add-int v87, v87, v7

    .line 331
    cmp-long v7, v88, v0

    if-nez v7, :cond_155

    .line 332
    iget-wide v0, v4, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalInitialAudioFormatBitrate:J

    move-wide/from16 v88, v0

    .end local v88    # "totalInitialAudioFormatBitrate":J
    .local v0, "totalInitialAudioFormatBitrate":J
    goto :goto_15d

    .line 333
    .end local v0    # "totalInitialAudioFormatBitrate":J
    .restart local v88    # "totalInitialAudioFormatBitrate":J
    :cond_155
    iget-wide v7, v4, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalInitialAudioFormatBitrate:J

    cmp-long v9, v7, v0

    if-eqz v9, :cond_15d

    .line 334
    add-long v88, v88, v7

    .line 336
    :cond_15d
    :goto_15d
    iget-wide v0, v4, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalBandwidthTimeMs:J

    add-long v90, v90, v0

    .line 337
    iget-wide v0, v4, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalBandwidthBytes:J

    add-long v92, v92, v0

    .line 338
    iget-wide v0, v4, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalDroppedFrames:J

    add-long v94, v94, v0

    .line 339
    iget-wide v0, v4, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalAudioUnderruns:J

    add-long v96, v96, v0

    .line 340
    iget v0, v4, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->fatalErrorPlaybackCount:I

    add-int v98, v98, v0

    .line 341
    iget v0, v4, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->fatalErrorCount:I

    add-int v99, v99, v0

    .line 342
    iget v0, v4, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->nonFatalErrorCount:I

    add-int v100, v100, v0

    .line 282
    .end local v4    # "stats":Lcom/google/android/exoplayer2/analytics/PlaybackStats;
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    move v1, v5

    goto/16 :goto_8b

    .line 344
    .end local v5    # "playbackCount":I
    .restart local v1    # "playbackCount":I
    :cond_180
    new-instance v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;

    move-object v3, v0

    .line 347
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 348
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 362
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v24

    .line 363
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v25

    .line 383
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v57

    .line 384
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v58

    move v4, v1

    move-object v5, v14

    move-wide v8, v12

    move-wide/from16 v101, v10

    .end local v10    # "maxRebufferTimeMs":J
    .local v101, "maxRebufferTimeMs":J
    move/from16 v10, v59

    move/from16 v11, v60

    move-wide/from16 v103, v12

    .end local v12    # "firstReportedTimeMs":J
    .local v103, "firstReportedTimeMs":J
    move/from16 v12, v61

    move/from16 v13, v62

    move-object v2, v14

    move/from16 v105, v15

    .end local v14    # "playbackStateDurationsMs":[J
    .end local v15    # "totalInitialVideoFormatHeight":I
    .local v2, "playbackStateDurationsMs":[J
    .local v105, "totalInitialVideoFormatHeight":I
    move-wide/from16 v14, v63

    move/from16 v16, v65

    move/from16 v17, v66

    move/from16 v18, v67

    move/from16 v19, v68

    move/from16 v20, v69

    move-wide/from16 v21, v101

    move/from16 v23, v70

    move-wide/from16 v26, v71

    move-wide/from16 v28, v73

    move-wide/from16 v30, v75

    move-wide/from16 v32, v77

    move-wide/from16 v34, v79

    move-wide/from16 v36, v81

    move/from16 v38, v83

    move/from16 v39, v84

    move/from16 v40, v105

    move-wide/from16 v41, v85

    move/from16 v43, v87

    move-wide/from16 v44, v88

    move-wide/from16 v46, v90

    move-wide/from16 v48, v92

    move-wide/from16 v50, v94

    move-wide/from16 v52, v96

    move/from16 v54, v98

    move/from16 v55, v99

    move/from16 v56, v100

    invoke-direct/range {v3 .. v58}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;-><init>(I[JLjava/util/List;Ljava/util/List;JIIIIJIIIIIJILjava/util/List;Ljava/util/List;JJJJJJIIIJIJJJJJIIILjava/util/List;Ljava/util/List;)V

    .line 344
    return-object v0
.end method


# virtual methods
.method public getAbandonedBeforeReadyRatio()F
    .registers 4

    .line 860
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->abandonedBeforeReadyCount:I

    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->playbackCount:I

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 862
    .local v0, "foregroundAbandonedBeforeReady":I
    if-nez v2, :cond_c

    .line 863
    const/4 v1, 0x0

    goto :goto_f

    .line 864
    :cond_c
    int-to-float v1, v0

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 862
    :goto_f
    return v1
.end method

.method public getAudioUnderrunRate()F
    .registers 6

    .line 1055
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalPlayTimeMs()J

    move-result-wide v0

    .line 1056
    .local v0, "playTimeMs":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    const/4 v2, 0x0

    goto :goto_15

    :cond_c
    iget-wide v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalAudioUnderruns:J

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float v2, v2, v3

    long-to-float v3, v0

    div-float/2addr v2, v3

    :goto_15
    return v2
.end method

.method public getDroppedFramesRate()F
    .registers 6

    .line 1046
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalPlayTimeMs()J

    move-result-wide v0

    .line 1047
    .local v0, "playTimeMs":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    const/4 v2, 0x0

    goto :goto_15

    :cond_c
    iget-wide v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalDroppedFrames:J

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float v2, v2, v3

    long-to-float v3, v0

    div-float/2addr v2, v3

    :goto_15
    return v2
.end method

.method public getEndedRatio()F
    .registers 3

    .line 872
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->endedCount:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    :goto_c
    return v0
.end method

.method public getFatalErrorRate()F
    .registers 6

    .line 1074
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalPlayTimeMs()J

    move-result-wide v0

    .line 1075
    .local v0, "playTimeMs":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    const/4 v2, 0x0

    goto :goto_15

    :cond_c
    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->fatalErrorCount:I

    int-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float v2, v2, v3

    long-to-float v3, v0

    div-float/2addr v2, v3

    :goto_15
    return v2
.end method

.method public getFatalErrorRatio()F
    .registers 3

    .line 1064
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_6

    .line 1065
    const/4 v0, 0x0

    goto :goto_c

    .line 1066
    :cond_6
    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->fatalErrorPlaybackCount:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 1064
    :goto_c
    return v0
.end method

.method public getJoinTimeRatio()F
    .registers 6

    .line 927
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalPlayAndWaitTimeMs()J

    move-result-wide v0

    .line 928
    .local v0, "playAndWaitTimeMs":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    const/4 v2, 0x0

    goto :goto_13

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalJoinTimeMs()J

    move-result-wide v2

    long-to-float v2, v2

    long-to-float v3, v0

    div-float/2addr v2, v3

    :goto_13
    return v2
.end method

.method public getMeanAudioFormatBitrate()I
    .registers 6

    .line 1026
    iget-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalAudioFormatTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    .line 1027
    const/4 v0, -0x1

    goto :goto_e

    .line 1028
    :cond_a
    iget-wide v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalAudioFormatBitrateTimeProduct:J

    div-long/2addr v2, v0

    long-to-int v0, v2

    .line 1026
    :goto_e
    return v0
.end method

.method public getMeanBandwidth()I
    .registers 7

    .line 1036
    iget-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalBandwidthTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    .line 1037
    const/4 v0, -0x1

    goto :goto_12

    .line 1038
    :cond_a
    iget-wide v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalBandwidthBytes:J

    const-wide/16 v4, 0x1f40

    mul-long v2, v2, v4

    div-long/2addr v2, v0

    long-to-int v0, v2

    .line 1036
    :goto_12
    return v0
.end method

.method public getMeanElapsedTimeMs()J
    .registers 5

    .line 852
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->playbackCount:I

    if-nez v0, :cond_a

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_12

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalElapsedTimeMs()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->playbackCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    :goto_12
    return-wide v0
.end method

.method public getMeanInitialAudioFormatBitrate()I
    .registers 6

    .line 993
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->initialAudioFormatBitrateCount:I

    if-nez v0, :cond_6

    .line 994
    const/4 v0, -0x1

    goto :goto_b

    .line 995
    :cond_6
    iget-wide v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalInitialAudioFormatBitrate:J

    int-to-long v3, v0

    div-long/2addr v1, v3

    long-to-int v0, v1

    .line 993
    :goto_b
    return v0
.end method

.method public getMeanInitialVideoFormatBitrate()I
    .registers 6

    .line 983
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->initialVideoFormatBitrateCount:I

    if-nez v0, :cond_6

    .line 984
    const/4 v0, -0x1

    goto :goto_b

    .line 985
    :cond_6
    iget-wide v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalInitialVideoFormatBitrate:J

    int-to-long v3, v0

    div-long/2addr v1, v3

    long-to-int v0, v1

    .line 983
    :goto_b
    return v0
.end method

.method public getMeanInitialVideoFormatHeight()I
    .registers 3

    .line 973
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->initialVideoFormatHeightCount:I

    if-nez v0, :cond_6

    .line 974
    const/4 v0, -0x1

    goto :goto_a

    .line 975
    :cond_6
    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalInitialVideoFormatHeight:I

    div-int v0, v1, v0

    .line 973
    :goto_a
    return v0
.end method

.method public getMeanJoinTimeMs()J
    .registers 6

    .line 700
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->validJoinTimeCount:I

    if-nez v0, :cond_a

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_f

    :cond_a
    iget-wide v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalValidJoinTimeMs:J

    int-to-long v3, v0

    div-long v0, v1, v3

    :goto_f
    return-wide v0
.end method

.method public getMeanNonFatalErrorCount()F
    .registers 3

    .line 1091
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->nonFatalErrorCount:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    :goto_c
    return v0
.end method

.method public getMeanPauseBufferCount()F
    .registers 3

    .line 888
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_6

    .line 889
    const/4 v0, 0x0

    goto :goto_c

    .line 890
    :cond_6
    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalPauseBufferCount:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 888
    :goto_c
    return v0
.end method

.method public getMeanPauseCount()F
    .registers 3

    .line 880
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalPauseCount:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    :goto_c
    return v0
.end method

.method public getMeanPausedTimeMs()J
    .registers 5

    .line 738
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_a

    .line 739
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_12

    .line 740
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalPausedTimeMs()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    .line 738
    :goto_12
    return-wide v0
.end method

.method public getMeanPlayAndWaitTimeMs()J
    .registers 5

    .line 833
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_a

    .line 834
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_12

    .line 835
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalPlayAndWaitTimeMs()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    .line 833
    :goto_12
    return-wide v0
.end method

.method public getMeanPlayTimeMs()J
    .registers 5

    .line 722
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_a

    .line 723
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_12

    .line 724
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalPlayTimeMs()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    .line 722
    :goto_12
    return-wide v0
.end method

.method public getMeanRebufferCount()F
    .registers 3

    .line 907
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalRebufferCount:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    :goto_c
    return v0
.end method

.method public getMeanRebufferTimeMs()J
    .registers 5

    .line 757
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_a

    .line 758
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_12

    .line 759
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalRebufferTimeMs()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    .line 757
    :goto_12
    return-wide v0
.end method

.method public getMeanSeekCount()F
    .registers 3

    .line 899
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalSeekCount:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    :goto_c
    return v0
.end method

.method public getMeanSeekTimeMs()J
    .registers 5

    .line 787
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_a

    .line 788
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_12

    .line 789
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalSeekTimeMs()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    .line 787
    :goto_12
    return-wide v0
.end method

.method public getMeanSingleRebufferTimeMs()J
    .registers 5

    .line 767
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalRebufferCount:I

    if-nez v0, :cond_a

    .line 768
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_1a

    .line 771
    :cond_a
    nop

    .line 769
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getPlaybackStateDurationMs(I)J

    move-result-wide v0

    .line 770
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getPlaybackStateDurationMs(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalRebufferCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    .line 767
    :goto_1a
    return-wide v0
.end method

.method public getMeanSingleSeekTimeMs()J
    .registers 5

    .line 797
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalSeekCount:I

    if-nez v0, :cond_a

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_12

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalSeekTimeMs()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalSeekCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    :goto_12
    return-wide v0
.end method

.method public getMeanTimeBetweenFatalErrors()F
    .registers 3

    .line 1083
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getFatalErrorRate()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getMeanTimeBetweenNonFatalErrors()F
    .registers 3

    .line 1108
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getNonFatalErrorRate()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getMeanTimeBetweenRebuffers()F
    .registers 3

    .line 965
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getRebufferRate()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getMeanVideoFormatBitrate()I
    .registers 6

    .line 1015
    iget-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalVideoFormatBitrateTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    .line 1016
    const/4 v0, -0x1

    goto :goto_e

    .line 1017
    :cond_a
    iget-wide v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalVideoFormatBitrateTimeProduct:J

    div-long/2addr v2, v0

    long-to-int v0, v2

    .line 1015
    :goto_e
    return v0
.end method

.method public getMeanVideoFormatHeight()I
    .registers 6

    .line 1004
    iget-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalVideoFormatHeightTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    .line 1005
    const/4 v0, -0x1

    goto :goto_e

    .line 1006
    :cond_a
    iget-wide v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalVideoFormatHeightTimeProduct:J

    div-long/2addr v2, v0

    long-to-int v0, v2

    .line 1004
    :goto_e
    return v0
.end method

.method public getMeanWaitTimeMs()J
    .registers 5

    .line 818
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_a

    .line 819
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_12

    .line 820
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalWaitTimeMs()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    .line 818
    :goto_12
    return-wide v0
.end method

.method public getMediaTimeMsAtRealtimeMs(J)J
    .registers 19
    .param p1, "realtimeMs"    # J

    .line 668
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->mediaTimeHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 669
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v1

    .line 671
    :cond_10
    const/4 v1, 0x0

    .line 672
    .local v1, "nextIndex":I
    :goto_11
    iget-object v2, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->mediaTimeHistory:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2b

    iget-object v2, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->mediaTimeHistory:Ljava/util/List;

    .line 673
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    aget-wide v4, v2, v3

    cmp-long v2, v4, p1

    if-gtz v2, :cond_2b

    .line 674
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 676
    :cond_2b
    const/4 v2, 0x1

    if-nez v1, :cond_39

    .line 677
    iget-object v4, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->mediaTimeHistory:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    aget-wide v2, v3, v2

    return-wide v2

    .line 679
    :cond_39
    iget-object v4, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->mediaTimeHistory:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v1, v4, :cond_51

    .line 680
    iget-object v3, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->mediaTimeHistory:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    aget-wide v2, v3, v2

    return-wide v2

    .line 682
    :cond_51
    iget-object v4, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->mediaTimeHistory:Ljava/util/List;

    add-int/lit8 v5, v1, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    aget-wide v5, v4, v3

    .line 683
    .local v5, "prevRealtimeMs":J
    iget-object v4, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->mediaTimeHistory:Ljava/util/List;

    add-int/lit8 v7, v1, -0x1

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    aget-wide v7, v4, v2

    .line 684
    .local v7, "prevMediaTimeMs":J
    iget-object v4, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->mediaTimeHistory:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    aget-wide v3, v4, v3

    .line 685
    .local v3, "nextRealtimeMs":J
    iget-object v9, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->mediaTimeHistory:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [J

    aget-wide v10, v9, v2

    .line 686
    .local v10, "nextMediaTimeMs":J
    sub-long v12, v3, v5

    .line 687
    .local v12, "realtimeDurationMs":J
    const-wide/16 v14, 0x0

    cmp-long v2, v12, v14

    if-nez v2, :cond_86

    .line 688
    return-wide v7

    .line 690
    :cond_86
    sub-long v14, p1, v5

    long-to-float v2, v14

    long-to-float v9, v12

    div-float/2addr v2, v9

    .line 691
    .local v2, "fraction":F
    sub-long v14, v10, v7

    long-to-float v9, v14

    mul-float v9, v9, v2

    float-to-long v14, v9

    add-long/2addr v14, v7

    return-wide v14
.end method

.method public getNonFatalErrorRate()F
    .registers 6

    .line 1099
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalPlayTimeMs()J

    move-result-wide v0

    .line 1100
    .local v0, "playTimeMs":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    const/4 v2, 0x0

    goto :goto_15

    :cond_c
    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->nonFatalErrorCount:I

    int-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float v2, v2, v3

    long-to-float v3, v0

    div-float/2addr v2, v3

    :goto_15
    return v2
.end method

.method public getPlaybackStateAtTime(J)I
    .registers 9
    .param p1, "realtimeMs"    # J

    .line 649
    const/4 v0, 0x0

    .line 650
    .local v0, "state":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->playbackStateHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndPlaybackState;

    .line 651
    .local v2, "timeAndState":Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndPlaybackState;
    iget-object v3, v2, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndPlaybackState;->eventTime:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    cmp-long v5, v3, p1

    if-lez v5, :cond_1c

    .line 652
    goto :goto_1f

    .line 654
    :cond_1c
    iget v0, v2, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndPlaybackState;->playbackState:I

    .line 655
    .end local v2    # "timeAndState":Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndPlaybackState;
    goto :goto_7

    .line 656
    :cond_1f
    :goto_1f
    return v0
.end method

.method public getPlaybackStateDurationMs(I)J
    .registers 5
    .param p1, "playbackState"    # I

    .line 638
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->playbackStateDurationsMs:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getRebufferRate()F
    .registers 6

    .line 956
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalPlayTimeMs()J

    move-result-wide v0

    .line 957
    .local v0, "playTimeMs":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    const/4 v2, 0x0

    goto :goto_15

    :cond_c
    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalRebufferCount:I

    int-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float v2, v2, v3

    long-to-float v3, v0

    div-float/2addr v2, v3

    :goto_15
    return v2
.end method

.method public getRebufferTimeRatio()F
    .registers 6

    .line 937
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalPlayAndWaitTimeMs()J

    move-result-wide v0

    .line 938
    .local v0, "playAndWaitTimeMs":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    const/4 v2, 0x0

    goto :goto_13

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalRebufferTimeMs()J

    move-result-wide v2

    long-to-float v2, v2

    long-to-float v3, v0

    div-float/2addr v2, v3

    :goto_13
    return v2
.end method

.method public getSeekTimeRatio()F
    .registers 6

    .line 947
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalPlayAndWaitTimeMs()J

    move-result-wide v0

    .line 948
    .local v0, "playAndWaitTimeMs":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    const/4 v2, 0x0

    goto :goto_13

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalSeekTimeMs()J

    move-result-wide v2

    long-to-float v2, v2

    long-to-float v3, v0

    div-float/2addr v2, v3

    :goto_13
    return v2
.end method

.method public getTotalElapsedTimeMs()J
    .registers 7

    .line 840
    const-wide/16 v0, 0x0

    .line 841
    .local v0, "totalTimeMs":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    const/16 v3, 0x10

    if-ge v2, v3, :cond_f

    .line 842
    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->playbackStateDurationsMs:[J

    aget-wide v4, v3, v2

    add-long/2addr v0, v4

    .line 841
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 844
    .end local v2    # "i":I
    :cond_f
    return-wide v0
.end method

.method public getTotalJoinTimeMs()J
    .registers 3

    .line 709
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getPlaybackStateDurationMs(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalPausedTimeMs()J
    .registers 5

    .line 729
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getPlaybackStateDurationMs(I)J

    move-result-wide v0

    .line 730
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getPlaybackStateDurationMs(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 729
    return-wide v0
.end method

.method public getTotalPlayAndWaitTimeMs()J
    .registers 5

    .line 825
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalPlayTimeMs()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalWaitTimeMs()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalPlayTimeMs()J
    .registers 3

    .line 714
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getPlaybackStateDurationMs(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalRebufferTimeMs()J
    .registers 3

    .line 748
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getPlaybackStateDurationMs(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalSeekTimeMs()J
    .registers 3

    .line 779
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getPlaybackStateDurationMs(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalWaitTimeMs()J
    .registers 5

    .line 806
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getPlaybackStateDurationMs(I)J

    move-result-wide v0

    .line 807
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getPlaybackStateDurationMs(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 808
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getPlaybackStateDurationMs(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 806
    return-wide v0
.end method

.method public getWaitTimeRatio()F
    .registers 6

    .line 917
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalPlayAndWaitTimeMs()J

    move-result-wide v0

    .line 918
    .local v0, "playAndWaitTimeMs":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    const/4 v2, 0x0

    goto :goto_13

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalWaitTimeMs()J

    move-result-wide v2

    long-to-float v2, v2

    long-to-float v3, v0

    div-float/2addr v2, v3

    :goto_13
    return v2
.end method
