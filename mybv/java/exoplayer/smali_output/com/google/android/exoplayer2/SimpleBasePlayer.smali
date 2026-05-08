.class public abstract Lcom/google/android/exoplayer2/SimpleBasePlayer;
.super Lcom/google/android/exoplayer2/BasePlayer;
.source "SimpleBasePlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/SimpleBasePlayer$State;,
        Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;,
        Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;,
        Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaceholderUid;,
        Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;,
        Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final POSITION_DISCONTINUITY_THRESHOLD_MS:J = 0x3e8L


# instance fields
.field private final applicationHandler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

.field private final applicationLooper:Landroid/os/Looper;

.field private final listeners:Lcom/google/android/exoplayer2/util/ListenerSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/ListenerSet<",
            "Lcom/google/android/exoplayer2/Player$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingOperations:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field private released:Z

.field private state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;


# direct methods
.method public static synthetic $r8$lambda$qUaq_FRLluRZtP5EFdBK3M77tX8(Lcom/google/android/exoplayer2/SimpleBasePlayer;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->postOrRunOnApplicationHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;)V
    .registers 3
    .param p1, "applicationLooper"    # Landroid/os/Looper;

    .line 1982
    sget-object v0, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;-><init>(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/Clock;)V

    .line 1983
    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/Clock;)V
    .registers 5
    .param p1, "applicationLooper"    # Landroid/os/Looper;
    .param p2, "clock"    # Lcom/google/android/exoplayer2/util/Clock;

    .line 1992
    invoke-direct {p0}, Lcom/google/android/exoplayer2/BasePlayer;-><init>()V

    .line 1993
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->applicationLooper:Landroid/os/Looper;

    .line 1994
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/google/android/exoplayer2/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->applicationHandler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    .line 1995
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->pendingOperations:Ljava/util/HashSet;

    .line 1996
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1998
    new-instance v0, Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda54;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda54;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;-><init>(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/Clock;Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;)V

    .line 2003
    .local v0, "listenerSet":Lcom/google/android/exoplayer2/util/ListenerSet;, "Lcom/google/android/exoplayer2/util/ListenerSet<Lcom/google/android/exoplayer2/Player$Listener;>;"
    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 2004
    return-void
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/Timeline;IJLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)I
    .registers 7
    .param p0, "x0"    # Lcom/google/android/exoplayer2/Timeline;
    .param p1, "x1"    # I
    .param p2, "x2"    # J
    .param p4, "x3"    # Lcom/google/android/exoplayer2/Timeline$Window;
    .param p5, "x4"    # Lcom/google/android/exoplayer2/Timeline$Period;

    .line 106
    invoke-static/range {p0 .. p5}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getPeriodIndexFromWindowPosition(Lcom/google/android/exoplayer2/Timeline;IJLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)I

    move-result v0

    return v0
.end method

.method private static buildStateForNewPosition(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;Lcom/google/android/exoplayer2/SimpleBasePlayer$State;JLjava/util/List;IJZ)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .registers 26
    .param p0, "stateBuilder"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;
    .param p1, "oldState"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p2, "oldPositionMs"    # J
    .param p5, "newIndex"    # I
    .param p6, "newPositionMs"    # J
    .param p8, "keepAds"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;",
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$State;",
            "J",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;",
            ">;IJZ)",
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$State;"
        }
    .end annotation

    .line 3902
    .local p4, "newPlaylist":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move/from16 v3, p5

    move-wide/from16 v4, p2

    invoke-static {v4, v5, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getPositionOrDefaultInMediaItem(JLcom/google/android/exoplayer2/SimpleBasePlayer$State;)J

    move-result-wide v4

    .line 3903
    .end local p2    # "oldPositionMs":J
    .local v4, "oldPositionMs":J
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    const/4 v7, -0x1

    if-nez v6, :cond_24

    if-eq v3, v7, :cond_1d

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v6

    if-lt v3, v6, :cond_24

    .line 3904
    :cond_1d
    const/4 v3, 0x0

    .line 3905
    .end local p5    # "newIndex":I
    .local v3, "newIndex":I
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .end local p6    # "newPositionMs":J
    .local v8, "newPositionMs":J
    goto :goto_26

    .line 3907
    .end local v3    # "newIndex":I
    .end local v8    # "newPositionMs":J
    .restart local p5    # "newIndex":I
    .restart local p6    # "newPositionMs":J
    :cond_24
    move-wide/from16 v8, p6

    .end local p5    # "newIndex":I
    .end local p6    # "newPositionMs":J
    .restart local v3    # "newIndex":I
    .restart local v8    # "newPositionMs":J
    :goto_26
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_41

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v8, v10

    if-nez v6, :cond_41

    .line 3908
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    iget-wide v10, v6, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->defaultPositionUs:J

    invoke-static {v10, v11}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v8

    .line 3910
    :cond_41
    iget-object v6, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v6

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v6, :cond_54

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_52

    goto :goto_54

    :cond_52
    const/4 v6, 0x0

    goto :goto_55

    :cond_54
    :goto_54
    const/4 v6, 0x1

    .line 3911
    .local v6, "oldOrNewPlaylistEmpty":Z
    :goto_55
    if-nez v6, :cond_75

    iget-object v12, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    .line 3915
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    iget-object v12, v12, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    .line 3917
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    iget-object v13, v13, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_75

    const/4 v10, 0x1

    goto :goto_76

    :cond_75
    nop

    .line 3918
    .local v10, "mediaItemChanged":Z
    :goto_76
    if-nez v6, :cond_f1

    if-nez v10, :cond_f1

    cmp-long v11, v8, v4

    if-gez v11, :cond_81

    move-wide v13, v8

    goto/16 :goto_f2

    .line 3926
    :cond_81
    cmp-long v11, v8, v4

    if-nez v11, :cond_b7

    .line 3928
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setCurrentMediaItemIndex(I)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 3929
    iget v11, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdGroupIndex:I

    if-eq v11, v7, :cond_a4

    if-eqz p8, :cond_a4

    .line 3930
    iget-object v7, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->adBufferedPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 3932
    invoke-interface {v7}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v11

    iget-object v7, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->adPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    invoke-interface {v7}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v13

    sub-long/2addr v11, v13

    .line 3931
    invoke-static {v11, v12}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier$-CC;->getConstant(J)Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    move-result-object v7

    .line 3930
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setTotalBufferedDurationMs(Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-wide v13, v8

    goto :goto_10d

    .line 3934
    :cond_a4
    nop

    .line 3935
    invoke-virtual {v0, v7, v7}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setCurrentAd(II)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v7

    .line 3938
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getContentBufferedPositionMsInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)J

    move-result-wide v11

    sub-long/2addr v11, v4

    .line 3937
    invoke-static {v11, v12}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier$-CC;->getConstant(J)Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    move-result-object v11

    .line 3936
    invoke-virtual {v7, v11}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setTotalBufferedDurationMs(Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-wide v13, v8

    goto :goto_10d

    .line 3942
    :cond_b7
    nop

    .line 3943
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getContentBufferedPositionMsInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)J

    move-result-wide v11

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 3944
    .local v11, "contentBufferedDurationMs":J
    iget-object v13, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->totalBufferedDurationMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 3945
    invoke-interface {v13}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v13

    sub-long v15, v8, v4

    sub-long/2addr v13, v15

    move-wide/from16 p2, v8

    .end local v8    # "newPositionMs":J
    .local p2, "newPositionMs":J
    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 3946
    .local v7, "totalBufferedDurationMs":J
    nop

    .line 3947
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setCurrentMediaItemIndex(I)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v13

    .line 3948
    const/4 v9, -0x1

    invoke-virtual {v13, v9, v9}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setCurrentAd(II)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v9

    .line 3949
    move-wide/from16 v13, p2

    .end local p2    # "newPositionMs":J
    .local v13, "newPositionMs":J
    invoke-virtual {v9, v13, v14}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setContentPositionMs(J)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v9

    .line 3950
    invoke-static {v11, v12}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier$-CC;->getConstant(J)Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setContentBufferedPositionMs(Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v9

    .line 3951
    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier$-CC;->getConstant(J)Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setTotalBufferedDurationMs(Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    goto :goto_10d

    .line 3918
    .end local v7    # "totalBufferedDurationMs":J
    .end local v11    # "contentBufferedDurationMs":J
    .end local v13    # "newPositionMs":J
    .restart local v8    # "newPositionMs":J
    :cond_f1
    move-wide v13, v8

    .line 3920
    .end local v8    # "newPositionMs":J
    .restart local v13    # "newPositionMs":J
    :goto_f2
    nop

    .line 3921
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setCurrentMediaItemIndex(I)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v7

    .line 3922
    const/4 v8, -0x1

    invoke-virtual {v7, v8, v8}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setCurrentAd(II)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v7

    .line 3923
    invoke-virtual {v7, v13, v14}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setContentPositionMs(J)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v7

    .line 3924
    invoke-static {v13, v14}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier$-CC;->getConstant(J)Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setContentBufferedPositionMs(Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v7

    sget-object v8, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->ZERO:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 3925
    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setTotalBufferedDurationMs(Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 3953
    :goto_10d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object v7

    return-object v7
.end method

.method private clearVideoOutput(Ljava/lang/Object;)V
    .registers 5
    .param p1, "videoOutput"    # Ljava/lang/Object;

    .line 2674
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2676
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2677
    .local v0, "state":Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    const/16 v1, 0x1b

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 2678
    return-void

    .line 2680
    :cond_e
    nop

    .line 2681
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleClearVideoOutput(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    .line 2680
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2683
    return-void
.end method

.method private static getContentBufferedPositionMsInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)J
    .registers 3
    .param p0, "state"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 3599
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->contentBufferedPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getPositionOrDefaultInMediaItem(JLcom/google/android/exoplayer2/SimpleBasePlayer$State;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getContentPositionMsInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)J
    .registers 3
    .param p0, "state"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 3595
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->contentPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getPositionOrDefaultInMediaItem(JLcom/google/android/exoplayer2/SimpleBasePlayer$State;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getCurrentMediaItemIndexInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)I
    .registers 3
    .param p0, "state"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 3588
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentMediaItemIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 3589
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentMediaItemIndex:I

    return v0

    .line 3591
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private static getCurrentPeriodIndexInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)I
    .registers 10
    .param p0, "state"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "window"    # Lcom/google/android/exoplayer2/Timeline$Window;
    .param p2, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;

    .line 3614
    invoke-static {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)I

    move-result v6

    .line 3615
    .local v6, "currentMediaItemIndex":I
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3616
    return v6

    .line 3618
    :cond_d
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 3619
    invoke-static {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getContentPositionMsInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)J

    move-result-wide v2

    .line 3618
    move v1, v6

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getPeriodIndexFromWindowPosition(Lcom/google/android/exoplayer2/Timeline;IJLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)I

    move-result v0

    return v0
.end method

.method private static getCurrentPeriodOrAdPositionMs(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)J
    .registers 7
    .param p0, "state"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "currentPeriodUid"    # Ljava/lang/Object;
    .param p2, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;

    .line 3713
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdGroupIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 3714
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->adPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v0

    goto :goto_1c

    .line 3716
    :cond_c
    nop

    .line 3715
    invoke-static {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getContentPositionMsInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 3716
    invoke-virtual {v2, p1, p2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowMs()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 3713
    :goto_1c
    return-wide v0
.end method

.method private static getCurrentTracksInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)Lcom/google/android/exoplayer2/Tracks;
    .registers 3
    .param p0, "state"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 3576
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3577
    sget-object v0, Lcom/google/android/exoplayer2/Tracks;->EMPTY:Lcom/google/android/exoplayer2/Tracks;

    goto :goto_19

    .line 3578
    :cond_b
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-static {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    iget-object v0, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->tracks:Lcom/google/android/exoplayer2/Tracks;

    .line 3576
    :goto_19
    return-object v0
.end method

.method private static getMediaItemIndexInNewPlaylist(Ljava/util/List;Lcom/google/android/exoplayer2/Timeline;ILcom/google/android/exoplayer2/Timeline$Period;)I
    .registers 7
    .param p1, "newPlaylistTimeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "oldMediaItemIndex"    # I
    .param p3, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;",
            ">;",
            "Lcom/google/android/exoplayer2/Timeline;",
            "I",
            "Lcom/google/android/exoplayer2/Timeline$Period;",
            ")I"
        }
    .end annotation

    .line 3828
    .local p0, "oldPlaylist":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_11

    .line 3829
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    if-ge p2, v0, :cond_f

    .line 3830
    move v1, p2

    goto :goto_10

    .line 3831
    :cond_f
    nop

    .line 3829
    :goto_10
    return v1

    .line 3833
    :cond_11
    nop

    .line 3834
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    const/4 v2, 0x0

    # invokes: Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->getPeriodUid(I)Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->access$4300(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;I)Ljava/lang/Object;

    move-result-object v0

    .line 3835
    .local v0, "oldFirstPeriodUid":Ljava/lang/Object;
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    if-ne v2, v1, :cond_24

    .line 3836
    return v1

    .line 3838
    :cond_24
    invoke-virtual {p1, v0, p3}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    return v1
.end method

.method private static getMediaItemTransitionReason(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/SimpleBasePlayer$State;IZLcom/google/android/exoplayer2/Timeline$Window;)I
    .registers 21
    .param p0, "previousState"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "newState"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p2, "positionDiscontinuityReason"    # I
    .param p3, "isRepeatingCurrentItem"    # Z
    .param p4, "window"    # Lcom/google/android/exoplayer2/Timeline$Window;

    .line 3778
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    iget-object v4, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 3779
    .local v4, "previousTimeline":Lcom/google/android/exoplayer2/Timeline;
    iget-object v5, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 3780
    .local v5, "newTimeline":Lcom/google/android/exoplayer2/Timeline;
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v6

    const/4 v7, -0x1

    if-eqz v6, :cond_1a

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 3781
    return v7

    .line 3782
    :cond_1a
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v6

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v8

    const/4 v9, 0x3

    if-eq v6, v8, :cond_26

    .line 3783
    return v9

    .line 3785
    :cond_26
    iget-object v6, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 3786
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)I

    move-result v8

    invoke-virtual {v6, v8, v3}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    .line 3788
    .local v6, "previousWindowUid":Ljava/lang/Object;
    iget-object v8, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 3789
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)I

    move-result v10

    invoke-virtual {v8, v10, v3}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v8

    iget-object v8, v8, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    .line 3790
    .local v8, "newWindowUid":Ljava/lang/Object;
    instance-of v10, v6, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaceholderUid;

    if-eqz v10, :cond_47

    instance-of v10, v8, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaceholderUid;

    if-nez v10, :cond_47

    .line 3792
    return v7

    .line 3794
    :cond_47
    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-nez v10, :cond_56

    .line 3795
    if-nez v2, :cond_52

    .line 3796
    return v12

    .line 3797
    :cond_52
    if-ne v2, v12, :cond_55

    .line 3798
    return v11

    .line 3800
    :cond_55
    return v9

    .line 3805
    :cond_56
    if-nez v2, :cond_66

    .line 3806
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getContentPositionMsInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)J

    move-result-wide v9

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getContentPositionMsInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)J

    move-result-wide v13

    cmp-long v15, v9, v13

    if-lez v15, :cond_66

    .line 3807
    const/4 v7, 0x0

    return v7

    .line 3809
    :cond_66
    if-ne v2, v12, :cond_6b

    if-eqz p3, :cond_6b

    .line 3810
    return v11

    .line 3812
    :cond_6b
    return v7
.end method

.method private static getMediaMetadataInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)Lcom/google/android/exoplayer2/MediaMetadata;
    .registers 3
    .param p0, "state"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 3582
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3583
    sget-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->EMPTY:Lcom/google/android/exoplayer2/MediaMetadata;

    goto :goto_1b

    .line 3584
    :cond_b
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-static {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->combinedMediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;
    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->access$7100(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;)Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v0

    .line 3582
    :goto_1b
    return-object v0
.end method

.method private static getPeriodIndexFromWindowPosition(Lcom/google/android/exoplayer2/Timeline;IJLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)I
    .registers 12
    .param p0, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p1, "windowIndex"    # I
    .param p2, "windowPositionMs"    # J
    .param p4, "window"    # Lcom/google/android/exoplayer2/Timeline$Window;
    .param p5, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;

    .line 3628
    nop

    .line 3629
    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 3630
    .local v0, "periodUid":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method private static getPeriodOrAdDurationMs(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)J
    .registers 7
    .param p0, "state"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "currentPeriodUid"    # Ljava/lang/Object;
    .param p2, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;

    .line 3721
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 3723
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdGroupIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 3724
    iget-wide v0, p2, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    goto :goto_15

    .line 3725
    :cond_d
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdGroupIndex:I

    iget v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    invoke-virtual {p2, v0, v1}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v0

    :goto_15
    nop

    .line 3726
    .local v0, "periodOrAdDurationUs":J
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v2

    return-wide v2
.end method

.method private static getPositionDiscontinuityReason(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/SimpleBasePlayer$State;ZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)I
    .registers 25
    .param p0, "previousState"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "newState"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p2, "seeked"    # Z
    .param p3, "window"    # Lcom/google/android/exoplayer2/Timeline$Window;
    .param p4, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;

    .line 3656
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    iget-boolean v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->hasPositionDiscontinuity:Z

    if-eqz v4, :cond_f

    .line 3658
    iget v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->positionDiscontinuityReason:I

    return v4

    .line 3660
    :cond_f
    if-eqz p2, :cond_13

    .line 3661
    const/4 v4, 0x1

    return v4

    .line 3663
    :cond_13
    iget-object v4, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_1d

    .line 3665
    return v5

    .line 3667
    :cond_1d
    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v4

    const/4 v6, 0x4

    if-eqz v4, :cond_27

    .line 3669
    return v6

    .line 3671
    :cond_27
    iget-object v4, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 3673
    invoke-static {v0, v2, v3}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getCurrentPeriodIndexInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)I

    move-result v7

    .line 3672
    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer2/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v4

    .line 3674
    .local v4, "previousPeriodUid":Ljava/lang/Object;
    iget-object v7, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 3675
    invoke-static {v1, v2, v3}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getCurrentPeriodIndexInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v7

    .line 3676
    .local v7, "newPeriodUid":Ljava/lang/Object;
    instance-of v8, v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaceholderUid;

    if-eqz v8, :cond_44

    instance-of v8, v7, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaceholderUid;

    if-nez v8, :cond_44

    .line 3678
    return v5

    .line 3680
    :cond_44
    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x0

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v8, :cond_82

    iget v8, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdGroupIndex:I

    iget v12, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdGroupIndex:I

    if-ne v8, v12, :cond_82

    iget v8, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    iget v12, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    if-eq v8, v12, :cond_5d

    goto :goto_82

    .line 3698
    :cond_5d
    nop

    .line 3699
    invoke-static {v0, v4, v3}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getCurrentPeriodOrAdPositionMs(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)J

    move-result-wide v12

    .line 3700
    .local v12, "previousPositionMs":J
    invoke-static {v1, v7, v3}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getCurrentPeriodOrAdPositionMs(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)J

    move-result-wide v14

    .line 3701
    .local v14, "newPositionMs":J
    sub-long v16, v12, v14

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(J)J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    cmp-long v6, v16, v18

    if-gez v6, :cond_73

    .line 3702
    return v5

    .line 3705
    :cond_73
    invoke-static {v0, v4, v3}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getPeriodOrAdDurationMs(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)J

    move-result-wide v5

    .line 3706
    .local v5, "previousDurationMs":J
    cmp-long v8, v5, v10

    if-eqz v8, :cond_80

    cmp-long v8, v12, v5

    if-ltz v8, :cond_80

    .line 3707
    goto :goto_81

    .line 3708
    :cond_80
    const/4 v9, 0x5

    .line 3706
    :goto_81
    return v9

    .line 3684
    .end local v5    # "previousDurationMs":J
    .end local v12    # "previousPositionMs":J
    .end local v14    # "newPositionMs":J
    :cond_82
    :goto_82
    iget-object v8, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v8, v4}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v8

    if-ne v8, v5, :cond_8b

    .line 3686
    return v6

    .line 3689
    :cond_8b
    nop

    .line 3690
    invoke-static {v0, v4, v3}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getCurrentPeriodOrAdPositionMs(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)J

    move-result-wide v5

    .line 3691
    .local v5, "previousPositionMs":J
    invoke-static {v0, v4, v3}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getPeriodOrAdDurationMs(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)J

    move-result-wide v12

    .line 3692
    .local v12, "previousDurationMs":J
    cmp-long v8, v12, v10

    if-eqz v8, :cond_9d

    cmp-long v8, v5, v12

    if-ltz v8, :cond_9d

    .line 3693
    goto :goto_9e

    .line 3694
    :cond_9d
    const/4 v9, 0x3

    .line 3692
    :goto_9e
    return v9
.end method

.method private static getPositionInfo(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;ZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Player$PositionInfo;
    .registers 30
    .param p0, "state"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "useDiscontinuityPosition"    # Z
    .param p2, "window"    # Lcom/google/android/exoplayer2/Timeline$Window;
    .param p3, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;

    .line 3734
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    .line 3735
    .local v3, "windowUid":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 3736
    .local v4, "periodUid":Ljava/lang/Object;
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)I

    move-result v15

    .line 3737
    .local v15, "mediaItemIndex":I
    const/4 v5, -0x1

    .line 3738
    .local v5, "periodIndex":I
    const/4 v6, 0x0

    .line 3739
    .local v6, "mediaItem":Lcom/google/android/exoplayer2/MediaItem;
    iget-object v7, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_32

    .line 3740
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getCurrentPeriodIndexInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)I

    move-result v5

    .line 3741
    iget-object v7, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timeline:Lcom/google/android/exoplayer2/Timeline;

    const/4 v8, 0x1

    invoke-virtual {v7, v5, v2, v8}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v7

    iget-object v4, v7, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    .line 3742
    iget-object v7, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v7, v15, v1}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v7

    iget-object v3, v7, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    .line 3743
    iget-object v6, v1, Lcom/google/android/exoplayer2/Timeline$Window;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    move/from16 v17, v5

    move-object/from16 v18, v6

    goto :goto_36

    .line 3739
    :cond_32
    move/from16 v17, v5

    move-object/from16 v18, v6

    .line 3747
    .end local v5    # "periodIndex":I
    .end local v6    # "mediaItem":Lcom/google/android/exoplayer2/MediaItem;
    .local v17, "periodIndex":I
    .local v18, "mediaItem":Lcom/google/android/exoplayer2/MediaItem;
    :goto_36
    const/4 v5, -0x1

    if-eqz p1, :cond_4a

    .line 3748
    iget-wide v6, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->discontinuityPositionMs:J

    .line 3750
    .local v6, "positionMs":J
    iget v8, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdGroupIndex:I

    if-ne v8, v5, :cond_41

    .line 3751
    move-wide v8, v6

    goto :goto_45

    .line 3752
    :cond_41
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getContentPositionMsInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)J

    move-result-wide v8

    :goto_45
    move-wide/from16 v19, v6

    move-wide/from16 v21, v8

    .local v8, "contentPositionMs":J
    goto :goto_5f

    .line 3754
    .end local v6    # "positionMs":J
    .end local v8    # "contentPositionMs":J
    :cond_4a
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getContentPositionMsInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)J

    move-result-wide v8

    .line 3756
    .restart local v8    # "contentPositionMs":J
    iget v6, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdGroupIndex:I

    if-eq v6, v5, :cond_59

    .line 3757
    iget-object v5, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->adPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    invoke-interface {v5}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v5

    goto :goto_5a

    .line 3758
    :cond_59
    move-wide v5, v8

    :goto_5a
    move-wide v6, v5

    move-wide/from16 v19, v6

    move-wide/from16 v21, v8

    .line 3760
    .end local v8    # "contentPositionMs":J
    .local v19, "positionMs":J
    .local v21, "contentPositionMs":J
    :goto_5f
    new-instance v23, Lcom/google/android/exoplayer2/Player$PositionInfo;

    iget v13, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdGroupIndex:I

    iget v14, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    move-object/from16 v5, v23

    move-object v6, v3

    move v7, v15

    move-object/from16 v8, v18

    move-object v9, v4

    move/from16 v10, v17

    move-wide/from16 v11, v19

    move/from16 v16, v13

    move/from16 v24, v14

    move-wide/from16 v13, v21

    move/from16 v25, v15

    .end local v15    # "mediaItemIndex":I
    .local v25, "mediaItemIndex":I
    move/from16 v15, v16

    move/from16 v16, v24

    invoke-direct/range {v5 .. v16}, Lcom/google/android/exoplayer2/Player$PositionInfo;-><init>(Ljava/lang/Object;ILcom/google/android/exoplayer2/MediaItem;Ljava/lang/Object;IJJII)V

    return-object v23
.end method

.method private static getPositionOrDefaultInMediaItem(JLcom/google/android/exoplayer2/SimpleBasePlayer$State;)J
    .registers 6
    .param p0, "positionMs"    # J
    .param p2, "state"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 3603
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p0, v0

    if-eqz v2, :cond_a

    .line 3604
    return-wide p0

    .line 3606
    :cond_a
    iget-object v0, p2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3607
    const-wide/16 v0, 0x0

    return-wide v0

    .line 3609
    :cond_15
    iget-object v0, p2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-static {p2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->defaultPositionUs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getStateWithNewPlaylist(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Ljava/util/List;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .registers 22
    .param p0, "oldState"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p2, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$State;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;",
            ">;",
            "Lcom/google/android/exoplayer2/Timeline$Period;",
            ")",
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$State;"
        }
    .end annotation

    .line 3843
    .local p1, "newPlaylist":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;>;"
    move-object/from16 v9, p0

    move-object/from16 v10, p2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v11

    .line 3844
    .local v11, "stateBuilder":Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;
    move-object/from16 v12, p1

    invoke-virtual {v11, v12}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setPlaylist(Ljava/util/List;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 3845
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->timeline:Lcom/google/android/exoplayer2/Timeline;
    invoke-static {v11}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$100(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v13

    .line 3846
    .local v13, "newTimeline":Lcom/google/android/exoplayer2/Timeline;
    iget-object v0, v9, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->contentPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v14

    .line 3847
    .local v14, "oldPositionMs":J
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)I

    move-result v8

    .line 3848
    .local v8, "oldIndex":I
    iget-object v0, v9, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-static {v0, v13, v8, v10}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getMediaItemIndexInNewPlaylist(Ljava/util/List;Lcom/google/android/exoplayer2/Timeline;ILcom/google/android/exoplayer2/Timeline$Period;)I

    move-result v0

    .line 3849
    .local v0, "newIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2b

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v6, v2

    goto :goto_2c

    :cond_2b
    move-wide v6, v14

    .line 3851
    .local v6, "newPositionMs":J
    :goto_2c
    add-int/lit8 v2, v8, 0x1

    move v5, v0

    .end local v0    # "newIndex":I
    .local v2, "i":I
    .local v5, "newIndex":I
    :goto_2f
    if-ne v5, v1, :cond_42

    iget-object v0, v9, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-ge v2, v0, :cond_42

    .line 3853
    iget-object v0, v9, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    .line 3854
    invoke-static {v0, v13, v2, v10}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getMediaItemIndexInNewPlaylist(Ljava/util/List;Lcom/google/android/exoplayer2/Timeline;ILcom/google/android/exoplayer2/Timeline$Period;)I

    move-result v5

    .line 3851
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 3858
    .end local v2    # "i":I
    :cond_42
    iget v0, v9, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackState:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_52

    if-ne v5, v1, :cond_52

    .line 3859
    const/4 v0, 0x4

    invoke-virtual {v11, v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setPlaybackState(I)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setIsLoading(Z)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 3861
    :cond_52
    const/16 v16, 0x1

    move-object v0, v11

    move-object/from16 v1, p0

    move-wide v2, v14

    move-object/from16 v4, p1

    move/from16 v17, v5

    .end local v5    # "newIndex":I
    .local v17, "newIndex":I
    move/from16 v18, v8

    .end local v8    # "oldIndex":I
    .local v18, "oldIndex":I
    move/from16 v8, v16

    invoke-static/range {v0 .. v8}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->buildStateForNewPosition(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;Lcom/google/android/exoplayer2/SimpleBasePlayer$State;JLjava/util/List;IJZ)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method

.method private static getStateWithNewPlaylistAndPosition(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Ljava/util/List;IJ)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .registers 20
    .param p0, "oldState"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p2, "newIndex"    # I
    .param p3, "newPositionMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$State;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;",
            ">;IJ)",
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$State;"
        }
    .end annotation

    .line 3873
    .local p1, "newPlaylist":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;>;"
    move-object v9, p0

    move/from16 v10, p2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v11

    .line 3874
    .local v11, "stateBuilder":Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;
    move-object/from16 v12, p1

    invoke-virtual {v11, v12}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setPlaylist(Ljava/util/List;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 3875
    iget v0, v9, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2f

    .line 3876
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, -0x1

    if-eq v10, v0, :cond_21

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v10, v0, :cond_21

    goto :goto_26

    .line 3879
    :cond_21
    const/4 v0, 0x2

    invoke-virtual {v11, v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setPlaybackState(I)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    goto :goto_2f

    .line 3877
    :cond_26
    :goto_26
    const/4 v0, 0x4

    invoke-virtual {v11, v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setPlaybackState(I)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setIsLoading(Z)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 3882
    :cond_2f
    :goto_2f
    iget-object v0, v9, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->contentPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v13

    .line 3883
    .local v13, "oldPositionMs":J
    const/4 v8, 0x0

    move-object v0, v11

    move-object v1, p0

    move-wide v2, v13

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-wide/from16 v6, p3

    invoke-static/range {v0 .. v8}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->buildStateForNewPosition(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;Lcom/google/android/exoplayer2/SimpleBasePlayer$State;JLjava/util/List;IJZ)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method

.method private static getSurfaceHolderSize(Landroid/view/SurfaceHolder;)Lcom/google/android/exoplayer2/util/Size;
    .registers 5
    .param p0, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .line 3816
    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_d

    .line 3817
    sget-object v0, Lcom/google/android/exoplayer2/util/Size;->ZERO:Lcom/google/android/exoplayer2/util/Size;

    return-object v0

    .line 3819
    :cond_d
    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 3820
    .local v0, "surfaceFrame":Landroid/graphics/Rect;
    new-instance v1, Lcom/google/android/exoplayer2/util/Size;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/util/Size;-><init>(II)V

    return-object v1
.end method

.method private static getTimelineChangeReason(Ljava/util/List;Ljava/util/List;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;",
            ">;)I"
        }
    .end annotation

    .line 3635
    .local p0, "previousPlaylist":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;>;"
    .local p1, "newPlaylist":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 3636
    return v2

    .line 3638
    :cond_c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ge v0, v1, :cond_3a

    .line 3639
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    iget-object v1, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    .line 3640
    .local v1, "previousUid":Ljava/lang/Object;
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    iget-object v4, v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    .line 3641
    .local v4, "newUid":Ljava/lang/Object;
    instance-of v5, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaceholderUid;

    if-eqz v5, :cond_2d

    instance-of v5, v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaceholderUid;

    if-nez v5, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v3, 0x0

    .line 3643
    .local v3, "resolvedAutoGeneratedPlaceholder":Z
    :goto_2e
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_37

    if-nez v3, :cond_37

    .line 3644
    return v2

    .line 3638
    .end local v1    # "previousUid":Ljava/lang/Object;
    .end local v3    # "resolvedAutoGeneratedPlaceholder":Z
    .end local v4    # "newUid":Ljava/lang/Object;
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 3647
    .end local v0    # "i":I
    :cond_3a
    return v3
.end method

.method private static isPlaying(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)Z
    .registers 3
    .param p0, "state"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 3570
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playWhenReady:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    iget v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackSuppressionReason:I

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method static synthetic lambda$clearVideoOutput$21(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .registers 3
    .param p0, "state"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2682
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/exoplayer2/util/Size;->ZERO:Lcom/google/android/exoplayer2/util/Size;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setSurfaceSize(Lcom/google/android/exoplayer2/util/Size;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$decreaseDeviceVolume$26(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .registers 4
    .param p0, "state"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2798
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->deviceVolume:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setDeviceVolume(I)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$decreaseDeviceVolume$27(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .registers 4
    .param p0, "state"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2812
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->deviceVolume:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setDeviceVolume(I)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$handleReplaceMediaItems$30(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 2
    .param p0, "removeFuture"    # Lcom/google/common/util/concurrent/ListenableFuture;
    .param p1, "unused"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3239
    return-object p0
.end method

.method static synthetic lambda$increaseDeviceVolume$24(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .registers 3
    .param p0, "state"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2766
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->deviceVolume:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setDeviceVolume(I)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$increaseDeviceVolume$25(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .registers 3
    .param p0, "state"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2780
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->deviceVolume:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setDeviceVolume(I)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$prepare$7(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .registers 3
    .param p0, "state"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2228
    nop

    .line 2229
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    .line 2230
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    .line 2231
    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x4

    goto :goto_15

    :cond_14
    const/4 v1, 0x2

    :goto_15
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setPlaybackState(I)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    .line 2232
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object v0

    .line 2228
    return-object v0
.end method

.method static synthetic lambda$release$13(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .registers 1
    .param p0, "state"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2394
    return-object p0
.end method

.method static synthetic lambda$seekTo$10(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;IJ)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .registers 5
    .param p0, "state"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "mediaItemIndex"    # I
    .param p2, "positionMs"    # J

    .line 2320
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getStateWithNewPlaylistAndPosition(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Ljava/util/List;IJ)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setDeviceMuted$28(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Z)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .registers 3
    .param p0, "state"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "muted"    # Z

    .line 2829
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setIsDeviceMuted(Z)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setDeviceMuted$29(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Z)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .registers 3
    .param p0, "state"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "muted"    # Z

    .line 2842
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setIsDeviceMuted(Z)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setDeviceVolume$22(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;I)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .registers 3
    .param p0, "state"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "volume"    # I

    .line 2735
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setDeviceVolume(I)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setDeviceVolume$23(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;I)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .registers 3
    .param p0, "state"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "volume"    # I

    .line 2748
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setDeviceVolume(I)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setPlayWhenReady$1(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Z)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .registers 4
    .param p0, "state"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "playWhenReady"    # Z

    .line 2041
    nop

    .line 2042
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    .line 2043
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setPlayWhenReady(ZI)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    .line 2044
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object v0

    .line 2041
    return-object v0
.end method

.method static synthetic lambda$setPlaybackParameters$11(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .registers 3
    .param p0, "state"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "playbackParameters"    # Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 2354
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setPlaylistMetadata$15(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/MediaMetadata;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .registers 3
    .param p0, "state"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "mediaMetadata"    # Lcom/google/android/exoplayer2/MediaMetadata;

    .line 2459
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setPlaylistMetadata(Lcom/google/android/exoplayer2/MediaMetadata;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setRepeatMode$8(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;I)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .registers 3
    .param p0, "state"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "repeatMode"    # I

    .line 2265
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setRepeatMode(I)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setShuffleModeEnabled$9(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Z)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .registers 3
    .param p0, "state"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "shuffleModeEnabled"    # Z

    .line 2286
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setShuffleModeEnabled(Z)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setTrackSelectionParameters$14(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .registers 3
    .param p0, "state"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "parameters"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    .line 2433
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setTrackSelectionParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setVideoSurface$17(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .registers 3
    .param p0, "state"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2582
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/exoplayer2/util/Size;->UNKNOWN:Lcom/google/android/exoplayer2/util/Size;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setSurfaceSize(Lcom/google/android/exoplayer2/util/Size;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setVideoSurfaceHolder$18(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Landroid/view/SurfaceHolder;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .registers 4
    .param p0, "state"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .line 2600
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getSurfaceHolderSize(Landroid/view/SurfaceHolder;)Lcom/google/android/exoplayer2/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setSurfaceSize(Lcom/google/android/exoplayer2/util/Size;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setVideoSurfaceView$19(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Landroid/view/SurfaceView;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .registers 4
    .param p0, "state"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;

    .line 2618
    nop

    .line 2619
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    .line 2620
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getSurfaceHolderSize(Landroid/view/SurfaceHolder;)Lcom/google/android/exoplayer2/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setSurfaceSize(Lcom/google/android/exoplayer2/util/Size;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    .line 2621
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object v0

    .line 2618
    return-object v0
.end method

.method static synthetic lambda$setVideoTextureView$20(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/util/Size;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .registers 3
    .param p0, "state"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "surfaceSize"    # Lcom/google/android/exoplayer2/util/Size;

    .line 2645
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setSurfaceSize(Lcom/google/android/exoplayer2/util/Size;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setVolume$16(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;F)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .registers 3
    .param p0, "state"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "volume"    # F

    .line 2558
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setVolume(F)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$stop$12(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .registers 4
    .param p0, "state"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2374
    nop

    .line 2375
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    .line 2376
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setPlaybackState(I)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->ZERO:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 2377
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setTotalBufferedDurationMs(Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    .line 2379
    invoke-static {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getContentPositionMsInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier$-CC;->getConstant(J)Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    move-result-object v1

    .line 2378
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setContentBufferedPositionMs(Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->adPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 2380
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setAdBufferedPositionMs(Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    .line 2381
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setIsLoading(Z)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    .line 2382
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object v0

    .line 2374
    return-object v0
.end method

.method static synthetic lambda$updateStateAndInformListeners$31(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;ILcom/google/android/exoplayer2/Player$Listener;)V
    .registers 4
    .param p0, "newState"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "timelineChangeReason"    # I
    .param p2, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 3321
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-interface {p2, v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;I)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$32(ILcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 4
    .param p0, "positionDiscontinuityReason"    # I
    .param p1, "previousPositionInfo"    # Lcom/google/android/exoplayer2/Player$PositionInfo;
    .param p2, "positionInfo"    # Lcom/google/android/exoplayer2/Player$PositionInfo;
    .param p3, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 3335
    invoke-interface {p3, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onPositionDiscontinuity(I)V

    .line 3336
    invoke-interface {p3, p1, p2, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V

    .line 3338
    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$33(Lcom/google/android/exoplayer2/MediaItem;ILcom/google/android/exoplayer2/Player$Listener;)V
    .registers 3
    .param p0, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;
    .param p1, "mediaItemTransitionReason"    # I
    .param p2, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 3348
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onMediaItemTransition(Lcom/google/android/exoplayer2/MediaItem;I)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$34(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 3
    .param p0, "newState"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 3353
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playerError:Lcom/google/android/exoplayer2/PlaybackException;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player$Listener;->onPlayerErrorChanged(Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$35(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 3
    .param p0, "newState"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 3357
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playerError:Lcom/google/android/exoplayer2/PlaybackException;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/PlaybackException;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player$Listener;->onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$36(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 3
    .param p0, "newState"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 3364
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player$Listener;->onTrackSelectionParametersChanged(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$37(Lcom/google/android/exoplayer2/Tracks;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 2
    .param p0, "newTracks"    # Lcom/google/android/exoplayer2/Tracks;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 3368
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onTracksChanged(Lcom/google/android/exoplayer2/Tracks;)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$38(Lcom/google/android/exoplayer2/MediaMetadata;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 2
    .param p0, "newMediaMetadata"    # Lcom/google/android/exoplayer2/MediaMetadata;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 3373
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onMediaMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$39(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 3
    .param p0, "newState"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 3379
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->isLoading:Z

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player$Listener;->onLoadingChanged(Z)V

    .line 3380
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->isLoading:Z

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player$Listener;->onIsLoadingChanged(Z)V

    .line 3381
    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$40(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 4
    .param p0, "newState"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 3387
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playWhenReady:Z

    iget v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackState:I

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/Player$Listener;->onPlayerStateChanged(ZI)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$41(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 3
    .param p0, "newState"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 3392
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackState:I

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player$Listener;->onPlaybackStateChanged(I)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$42(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 4
    .param p0, "newState"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 3399
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playWhenReady:Z

    iget v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playWhenReadyChangeReason:I

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/Player$Listener;->onPlayWhenReadyChanged(ZI)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$43(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 3
    .param p0, "newState"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 3406
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackSuppressionReason:I

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player$Listener;->onPlaybackSuppressionReasonChanged(I)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$44(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 3
    .param p0, "newState"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 3411
    invoke-static {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->isPlaying(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player$Listener;->onIsPlayingChanged(Z)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$45(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 3
    .param p0, "newState"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 3416
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player$Listener;->onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$46(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 3
    .param p0, "newState"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 3421
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->repeatMode:I

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player$Listener;->onRepeatModeChanged(I)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$47(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 3
    .param p0, "newState"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 3426
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->shuffleModeEnabled:Z

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player$Listener;->onShuffleModeEnabledChanged(Z)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$48(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 4
    .param p0, "newState"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 3431
    iget-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->seekBackIncrementMs:J

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/Player$Listener;->onSeekBackIncrementChanged(J)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$49(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 4
    .param p0, "newState"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 3436
    iget-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->seekForwardIncrementMs:J

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/Player$Listener;->onSeekForwardIncrementChanged(J)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$50(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 4
    .param p0, "newState"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 3442
    iget-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->maxSeekToPreviousPositionMs:J

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/Player$Listener;->onMaxSeekToPreviousPositionChanged(J)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$51(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 3
    .param p0, "newState"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 3447
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player$Listener;->onAudioAttributesChanged(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$52(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 3
    .param p0, "newState"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 3452
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->videoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player$Listener;->onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$53(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 3
    .param p0, "newState"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 3457
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->deviceInfo:Lcom/google/android/exoplayer2/DeviceInfo;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player$Listener;->onDeviceInfoChanged(Lcom/google/android/exoplayer2/DeviceInfo;)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$54(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 3
    .param p0, "newState"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 3462
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlistMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player$Listener;->onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$55(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 4
    .param p0, "newState"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 3471
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->surfaceSize:Lcom/google/android/exoplayer2/util/Size;

    .line 3472
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->surfaceSize:Lcom/google/android/exoplayer2/util/Size;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/Size;->getHeight()I

    move-result v1

    .line 3471
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/Player$Listener;->onSurfaceSizeChanged(II)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$56(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 3
    .param p0, "newState"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 3476
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->volume:F

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player$Listener;->onVolumeChanged(F)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$57(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 4
    .param p0, "newState"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 3483
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->deviceVolume:I

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->isDeviceMuted:Z

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/Player$Listener;->onDeviceVolumeChanged(IZ)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$58(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 3
    .param p0, "newState"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 3489
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentCues:Lcom/google/android/exoplayer2/text/CueGroup;

    iget-object v0, v0, Lcom/google/android/exoplayer2/text/CueGroup;->cues:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player$Listener;->onCues(Ljava/util/List;)V

    .line 3490
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentCues:Lcom/google/android/exoplayer2/text/CueGroup;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player$Listener;->onCues(Lcom/google/android/exoplayer2/text/CueGroup;)V

    .line 3491
    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$59(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 3
    .param p0, "newState"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 3496
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timedMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player$Listener;->onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$60(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 3
    .param p0, "newState"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 3501
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->availableCommands:Lcom/google/android/exoplayer2/Player$Commands;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player$Listener;->onAvailableCommandsChanged(Lcom/google/android/exoplayer2/Player$Commands;)V

    return-void
.end method

.method private postOrRunOnApplicationHandler(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 3562
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->applicationHandler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_10

    .line 3563
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_15

    .line 3565
    :cond_10
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->applicationHandler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 3567
    :goto_15
    return-void
.end method

.method private setMediaItemsInternal(Ljava/util/List;IJ)V
    .registers 15
    .param p2, "startIndex"    # I
    .param p3, "startPositionMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;IJ)V"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "state"
        }
    .end annotation

    .line 2075
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/MediaItem;>;"
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p2, v0, :cond_9

    if-ltz p2, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 2077
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2078
    .local v0, "state":Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    const/16 v2, 0x14

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v2

    if-nez v2, :cond_26

    .line 2079
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_25

    const/16 v1, 0x1f

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_26

    .line 2080
    :cond_25
    return-void

    .line 2082
    :cond_26
    nop

    .line 2083
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleSetMediaItems(Ljava/util/List;IJ)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v9, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda5;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, v0

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda5;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer;Ljava/util/List;Lcom/google/android/exoplayer2/SimpleBasePlayer$State;IJ)V

    .line 2082
    invoke-direct {p0, v1, v9}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2092
    return-void
.end method

.method private shouldHandleCommand(I)Z
    .registers 3
    .param p1, "commandCode"    # I
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "state"
        }
    .end annotation

    .line 3282
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->released:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget-object v0, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->availableCommands:Lcom/google/android/exoplayer2/Player$Commands;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/Player$Commands;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private updateStateAndInformListeners(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;ZZ)V
    .registers 23
    .param p1, "newState"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p2, "seeked"    # Z
    .param p3, "isRepeatingCurrentItem"    # Z
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "state"
        }
    .end annotation

    .line 3289
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 3292
    .local v2, "previousState":Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    iput-object v1, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 3293
    iget-boolean v3, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->hasPositionDiscontinuity:Z

    const/4 v4, 0x0

    if-nez v3, :cond_11

    iget-boolean v3, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->newlyRenderedFirstFrame:Z

    if-eqz v3, :cond_25

    .line 3295
    :cond_11
    iget-object v3, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 3297
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v3

    .line 3298
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->clearPositionDiscontinuity()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v3

    .line 3299
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setNewlyRenderedFirstFrame(Z)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v3

    .line 3300
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 3303
    :cond_25
    iget-boolean v3, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playWhenReady:Z

    iget-boolean v5, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playWhenReady:Z

    const/4 v6, 0x1

    if-eq v3, v5, :cond_2e

    const/4 v3, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v3, 0x0

    .line 3304
    .local v3, "playWhenReadyChanged":Z
    :goto_2f
    iget v5, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackState:I

    iget v7, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackState:I

    if-eq v5, v7, :cond_37

    const/4 v5, 0x1

    goto :goto_38

    :cond_37
    const/4 v5, 0x0

    .line 3305
    .local v5, "playbackStateChanged":Z
    :goto_38
    invoke-static {v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getCurrentTracksInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)Lcom/google/android/exoplayer2/Tracks;

    move-result-object v7

    .line 3306
    .local v7, "previousTracks":Lcom/google/android/exoplayer2/Tracks;
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getCurrentTracksInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)Lcom/google/android/exoplayer2/Tracks;

    move-result-object v8

    .line 3307
    .local v8, "newTracks":Lcom/google/android/exoplayer2/Tracks;
    invoke-static {v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getMediaMetadataInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v9

    .line 3308
    .local v9, "previousMediaMetadata":Lcom/google/android/exoplayer2/MediaMetadata;
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getMediaMetadataInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v10

    .line 3309
    .local v10, "newMediaMetadata":Lcom/google/android/exoplayer2/MediaMetadata;
    iget-object v11, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v12, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 3310
    move/from16 v13, p2

    invoke-static {v2, v1, v13, v11, v12}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getPositionDiscontinuityReason(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/SimpleBasePlayer$State;ZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)I

    move-result v11

    .line 3311
    .local v11, "positionDiscontinuityReason":I
    iget-object v12, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v14, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v12, v14}, Lcom/google/android/exoplayer2/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v12

    xor-int/2addr v12, v6

    .line 3312
    .local v12, "timelineChanged":Z
    iget-object v14, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 3313
    move/from16 v15, p3

    invoke-static {v2, v1, v11, v15, v14}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getMediaItemTransitionReason(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/SimpleBasePlayer$State;IZLcom/google/android/exoplayer2/Timeline$Window;)I

    move-result v14

    .line 3316
    .local v14, "mediaItemTransitionReason":I
    if-eqz v12, :cond_7d

    .line 3318
    iget-object v6, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-static {v6, v4}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getTimelineChangeReason(Ljava/util/List;Ljava/util/List;)I

    move-result v4

    .line 3319
    .local v4, "timelineChangeReason":I
    iget-object v6, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    move/from16 v17, v12

    .end local v12    # "timelineChanged":Z
    .local v17, "timelineChanged":Z
    new-instance v12, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda23;

    invoke-direct {v12, v1, v4}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda23;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;I)V

    move/from16 v18, v4

    const/4 v4, 0x0

    .end local v4    # "timelineChangeReason":I
    .local v18, "timelineChangeReason":I
    invoke-virtual {v6, v4, v12}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    goto :goto_7f

    .line 3316
    .end local v17    # "timelineChanged":Z
    .end local v18    # "timelineChangeReason":I
    .restart local v12    # "timelineChanged":Z
    :cond_7d
    move/from16 v17, v12

    .line 3323
    .end local v12    # "timelineChanged":Z
    .restart local v17    # "timelineChanged":Z
    :goto_7f
    const/4 v6, -0x1

    if-eq v11, v6, :cond_a2

    .line 3324
    iget-object v12, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v6, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 3325
    invoke-static {v2, v4, v12, v6}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getPositionInfo(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;ZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Player$PositionInfo;

    move-result-object v4

    .line 3326
    .local v4, "previousPositionInfo":Lcom/google/android/exoplayer2/Player$PositionInfo;
    iget-boolean v6, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->hasPositionDiscontinuity:Z

    iget-object v12, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v13, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 3327
    invoke-static {v1, v6, v12, v13}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getPositionInfo(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;ZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Player$PositionInfo;

    move-result-object v6

    .line 3332
    .local v6, "positionInfo":Lcom/google/android/exoplayer2/Player$PositionInfo;
    iget-object v12, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v13, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda34;

    invoke-direct {v13, v11, v4, v6}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda34;-><init>(ILcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;)V

    move-object/from16 v18, v4

    .end local v4    # "previousPositionInfo":Lcom/google/android/exoplayer2/Player$PositionInfo;
    .local v18, "previousPositionInfo":Lcom/google/android/exoplayer2/Player$PositionInfo;
    const/16 v4, 0xb

    invoke-virtual {v12, v4, v13}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3340
    .end local v6    # "positionInfo":Lcom/google/android/exoplayer2/Player$PositionInfo;
    .end local v18    # "previousPositionInfo":Lcom/google/android/exoplayer2/Player$PositionInfo;
    :cond_a2
    const/4 v4, -0x1

    if-eq v14, v4, :cond_c9

    .line 3343
    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_af

    .line 3344
    const/4 v4, 0x0

    goto :goto_bd

    .line 3345
    :cond_af
    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    iget-object v4, v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    :goto_bd
    nop

    .line 3346
    .local v4, "mediaItem":Lcom/google/android/exoplayer2/MediaItem;
    iget-object v6, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v12, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda44;

    invoke-direct {v12, v4, v14}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda44;-><init>(Lcom/google/android/exoplayer2/MediaItem;I)V

    const/4 v13, 0x1

    invoke-virtual {v6, v13, v12}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3350
    .end local v4    # "mediaItem":Lcom/google/android/exoplayer2/MediaItem;
    :cond_c9
    iget-object v4, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playerError:Lcom/google/android/exoplayer2/PlaybackException;

    iget-object v6, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playerError:Lcom/google/android/exoplayer2/PlaybackException;

    invoke-static {v4, v6}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ed

    .line 3351
    iget-object v4, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v6, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda46;

    invoke-direct {v6, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda46;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/16 v12, 0xa

    invoke-virtual {v4, v12, v6}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3354
    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playerError:Lcom/google/android/exoplayer2/PlaybackException;

    if-eqz v4, :cond_ed

    .line 3355
    iget-object v4, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v6, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda47;

    invoke-direct {v6, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda47;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    invoke-virtual {v4, v12, v6}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3360
    :cond_ed
    iget-object v4, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    iget-object v6, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_103

    .line 3361
    iget-object v4, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v6, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda48;

    invoke-direct {v6, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda48;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/16 v12, 0x13

    invoke-virtual {v4, v12, v6}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3366
    :cond_103
    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/Tracks;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_114

    .line 3367
    iget-object v4, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v6, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda49;

    invoke-direct {v6, v8}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda49;-><init>(Lcom/google/android/exoplayer2/Tracks;)V

    const/4 v12, 0x2

    invoke-virtual {v4, v12, v6}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3370
    :cond_114
    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_126

    .line 3371
    iget-object v4, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v6, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda50;

    invoke-direct {v6, v10}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda50;-><init>(Lcom/google/android/exoplayer2/MediaMetadata;)V

    const/16 v12, 0xe

    invoke-virtual {v4, v12, v6}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3375
    :cond_126
    iget-boolean v4, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->isLoading:Z

    iget-boolean v6, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->isLoading:Z

    if-eq v4, v6, :cond_137

    .line 3376
    iget-object v4, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v6, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda51;

    invoke-direct {v6, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda51;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/4 v12, 0x3

    invoke-virtual {v4, v12, v6}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3383
    :cond_137
    if-nez v3, :cond_13b

    if-eqz v5, :cond_146

    .line 3384
    :cond_13b
    iget-object v4, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v6, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda52;

    invoke-direct {v6, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda52;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/4 v12, -0x1

    invoke-virtual {v4, v12, v6}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3389
    :cond_146
    if-eqz v5, :cond_153

    .line 3390
    iget-object v4, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v6, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda24;

    invoke-direct {v6, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda24;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/4 v12, 0x4

    invoke-virtual {v4, v12, v6}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3394
    :cond_153
    if-nez v3, :cond_15b

    iget v4, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playWhenReadyChangeReason:I

    iget v6, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playWhenReadyChangeReason:I

    if-eq v4, v6, :cond_166

    .line 3396
    :cond_15b
    iget-object v4, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v6, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda25;

    invoke-direct {v6, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda25;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/4 v12, 0x5

    invoke-virtual {v4, v12, v6}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3402
    :cond_166
    iget v4, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackSuppressionReason:I

    iget v6, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackSuppressionReason:I

    if-eq v4, v6, :cond_177

    .line 3403
    iget-object v4, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v6, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda26;

    invoke-direct {v6, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda26;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/4 v12, 0x6

    invoke-virtual {v4, v12, v6}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3408
    :cond_177
    invoke-static {v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->isPlaying(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)Z

    move-result v4

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->isPlaying(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)Z

    move-result v6

    if-eq v4, v6, :cond_18c

    .line 3409
    iget-object v4, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v6, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda27;

    invoke-direct {v6, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda27;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/4 v12, 0x7

    invoke-virtual {v4, v12, v6}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3413
    :cond_18c
    iget-object v4, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    iget-object v6, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a2

    .line 3414
    iget-object v4, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v6, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda28;

    invoke-direct {v6, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda28;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/16 v12, 0xc

    invoke-virtual {v4, v12, v6}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3418
    :cond_1a2
    iget v4, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->repeatMode:I

    iget v6, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->repeatMode:I

    if-eq v4, v6, :cond_1b4

    .line 3419
    iget-object v4, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v6, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda29;

    invoke-direct {v6, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda29;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/16 v12, 0x8

    invoke-virtual {v4, v12, v6}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3423
    :cond_1b4
    iget-boolean v4, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->shuffleModeEnabled:Z

    iget-boolean v6, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->shuffleModeEnabled:Z

    if-eq v4, v6, :cond_1c6

    .line 3424
    iget-object v4, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v6, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda30;

    invoke-direct {v6, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda30;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/16 v12, 0x9

    invoke-virtual {v4, v12, v6}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3428
    :cond_1c6
    iget-wide v12, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->seekBackIncrementMs:J

    move v6, v3

    .end local v3    # "playWhenReadyChanged":Z
    .local v6, "playWhenReadyChanged":Z
    iget-wide v3, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->seekBackIncrementMs:J

    cmp-long v16, v12, v3

    if-eqz v16, :cond_1db

    .line 3429
    iget-object v3, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda31;

    invoke-direct {v4, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda31;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/16 v12, 0x10

    invoke-virtual {v3, v12, v4}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3433
    :cond_1db
    iget-wide v3, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->seekForwardIncrementMs:J

    iget-wide v12, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->seekForwardIncrementMs:J

    cmp-long v16, v3, v12

    if-eqz v16, :cond_1ef

    .line 3434
    iget-object v3, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda32;

    invoke-direct {v4, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda32;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/16 v12, 0x11

    invoke-virtual {v3, v12, v4}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3438
    :cond_1ef
    iget-wide v3, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->maxSeekToPreviousPositionMs:J

    iget-wide v12, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->maxSeekToPreviousPositionMs:J

    cmp-long v16, v3, v12

    if-eqz v16, :cond_203

    .line 3439
    iget-object v3, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda33;

    invoke-direct {v4, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda33;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/16 v12, 0x12

    invoke-virtual {v3, v12, v4}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3444
    :cond_203
    iget-object v3, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/audio/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_219

    .line 3445
    iget-object v3, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda35;

    invoke-direct {v4, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda35;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/16 v12, 0x14

    invoke-virtual {v3, v12, v4}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3449
    :cond_219
    iget-object v3, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->videoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->videoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/video/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22f

    .line 3450
    iget-object v3, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda36;

    invoke-direct {v4, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda36;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/16 v12, 0x19

    invoke-virtual {v3, v12, v4}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3454
    :cond_22f
    iget-object v3, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->deviceInfo:Lcom/google/android/exoplayer2/DeviceInfo;

    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->deviceInfo:Lcom/google/android/exoplayer2/DeviceInfo;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/DeviceInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_245

    .line 3455
    iget-object v3, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda37;

    invoke-direct {v4, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda37;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/16 v12, 0x1d

    invoke-virtual {v3, v12, v4}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3459
    :cond_245
    iget-object v3, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlistMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlistMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25b

    .line 3460
    iget-object v3, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda38;

    invoke-direct {v4, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda38;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/16 v12, 0xf

    invoke-virtual {v3, v12, v4}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3464
    :cond_25b
    iget-boolean v3, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->newlyRenderedFirstFrame:Z

    if-eqz v3, :cond_26b

    .line 3465
    iget-object v3, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v4, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda7;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda7;-><init>()V

    const/16 v12, 0x1a

    invoke-virtual {v3, v12, v4}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3467
    :cond_26b
    iget-object v3, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->surfaceSize:Lcom/google/android/exoplayer2/util/Size;

    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->surfaceSize:Lcom/google/android/exoplayer2/util/Size;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_281

    .line 3468
    iget-object v3, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda39;

    invoke-direct {v4, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda39;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/16 v12, 0x18

    invoke-virtual {v3, v12, v4}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3474
    :cond_281
    iget v3, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->volume:F

    iget v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->volume:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_295

    .line 3475
    iget-object v3, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda40;

    invoke-direct {v4, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda40;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/16 v12, 0x16

    invoke-virtual {v3, v12, v4}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3478
    :cond_295
    iget v3, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->deviceVolume:I

    iget v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->deviceVolume:I

    if-ne v3, v4, :cond_2a1

    iget-boolean v3, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->isDeviceMuted:Z

    iget-boolean v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->isDeviceMuted:Z

    if-eq v3, v4, :cond_2ad

    .line 3480
    :cond_2a1
    iget-object v3, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda41;

    invoke-direct {v4, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda41;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/16 v12, 0x1e

    invoke-virtual {v3, v12, v4}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3485
    :cond_2ad
    iget-object v3, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentCues:Lcom/google/android/exoplayer2/text/CueGroup;

    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentCues:Lcom/google/android/exoplayer2/text/CueGroup;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c3

    .line 3486
    iget-object v3, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda42;

    invoke-direct {v4, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda42;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/16 v12, 0x1b

    invoke-virtual {v3, v12, v4}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3493
    :cond_2c3
    iget-object v3, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timedMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timedMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/metadata/Metadata;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e6

    iget-object v3, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timedMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/metadata/Metadata;->presentationTimeUs:J

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v16, v3, v12

    if-eqz v16, :cond_2e6

    .line 3495
    iget-object v3, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda43;

    invoke-direct {v4, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda43;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/16 v12, 0x1c

    invoke-virtual {v3, v12, v4}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3498
    :cond_2e6
    iget-object v3, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->availableCommands:Lcom/google/android/exoplayer2/Player$Commands;

    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->availableCommands:Lcom/google/android/exoplayer2/Player$Commands;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/Player$Commands;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2fc

    .line 3499
    iget-object v3, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda45;

    invoke-direct {v4, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda45;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/16 v12, 0xd

    invoke-virtual {v3, v12, v4}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3503
    :cond_2fc
    iget-object v3, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    .line 3504
    return-void
.end method

.method private updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;",
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$State;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "state"
        }
    .end annotation

    .line 3528
    .local p1, "pendingOperation":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    .local p2, "placeholderStateSupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/google/android/exoplayer2/SimpleBasePlayer$State;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;ZZ)V

    .line 3533
    return-void
.end method

.method private updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;ZZ)V
    .registers 8
    .param p3, "seeked"    # Z
    .param p4, "isRepeatingCurrentItem"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;",
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$State;",
            ">;ZZ)V"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "state"
        }
    .end annotation

    .line 3541
    .local p1, "pendingOperation":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    .local p2, "placeholderStateSupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/google/android/exoplayer2/SimpleBasePlayer$State;>;"
    invoke-interface {p1}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->pendingOperations:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3542
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getState()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateAndInformListeners(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;ZZ)V

    goto :goto_36

    .line 3544
    :cond_16
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->pendingOperations:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3545
    invoke-interface {p2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 3546
    .local v0, "suggestedPlaceholderState":Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    nop

    .line 3547
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getPlaceholderState(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object v1

    .line 3546
    invoke-direct {p0, v1, p3, p4}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateAndInformListeners(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;ZZ)V

    .line 3548
    new-instance v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda60;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda60;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer;Lcom/google/common/util/concurrent/ListenableFuture;)V

    new-instance v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda61;

    invoke-direct {v2, p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda61;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer;)V

    invoke-interface {p1, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 3559
    .end local v0    # "suggestedPlaceholderState":Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    :goto_36
    return-void
.end method

.method private verifyApplicationThreadAndInitState()V
    .registers 4
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "state"
        }
    .end annotation

    .line 3508
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->applicationLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_17

    .line 3519
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    if-nez v0, :cond_16

    .line 3521
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getState()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 3523
    :cond_16
    return-void

    .line 3509
    :cond_17
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 3516
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->applicationLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3510
    const-string v1, "Player is accessed on the wrong thread.\nCurrent thread: \'%s\'\nExpected thread: \'%s\'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3517
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final addListener(Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 4
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 2009
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/Player$Listener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->add(Ljava/lang/Object;)V

    .line 2010
    return-void
.end method

.method public final addMediaItems(ILjava/util/List;)V
    .registers 8
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 2096
    .local p2, "mediaItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/MediaItem;>;"
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2097
    if-ltz p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 2099
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2100
    .local v0, "state":Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    iget-object v1, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    .line 2101
    .local v1, "playlistSize":I
    const/16 v2, 0x14

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_34

    .line 2104
    :cond_22
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2105
    .local v2, "correctedIndex":I
    nop

    .line 2106
    invoke-virtual {p0, v2, p2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleAddMediaItems(ILjava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    new-instance v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda16;

    invoke-direct {v4, p0, v0, p2, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda16;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer;Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Ljava/util/List;I)V

    .line 2105
    invoke-direct {p0, v3, v4}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2124
    return-void

    .line 2102
    .end local v2    # "correctedIndex":I
    :cond_34
    :goto_34
    return-void
.end method

.method public final clearVideoSurface()V
    .registers 2

    .line 2650
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->clearVideoOutput(Ljava/lang/Object;)V

    .line 2651
    return-void
.end method

.method public final clearVideoSurface(Landroid/view/Surface;)V
    .registers 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 2655
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->clearVideoOutput(Ljava/lang/Object;)V

    .line 2656
    return-void
.end method

.method public final clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .registers 2
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .line 2660
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->clearVideoOutput(Ljava/lang/Object;)V

    .line 2661
    return-void
.end method

.method public final clearVideoSurfaceView(Landroid/view/SurfaceView;)V
    .registers 2
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;

    .line 2665
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->clearVideoOutput(Ljava/lang/Object;)V

    .line 2666
    return-void
.end method

.method public final clearVideoTextureView(Landroid/view/TextureView;)V
    .registers 2
    .param p1, "textureView"    # Landroid/view/TextureView;

    .line 2670
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->clearVideoOutput(Ljava/lang/Object;)V

    .line 2671
    return-void
.end method

.method public final decreaseDeviceVolume()V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2789
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2791
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2792
    .local v0, "state":Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    const/16 v1, 0x1a

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 2793
    return-void

    .line 2795
    :cond_e
    nop

    .line 2796
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleDecreaseDeviceVolume(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda11;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda11;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    .line 2795
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2799
    return-void
.end method

.method public final decreaseDeviceVolume(I)V
    .registers 5
    .param p1, "flags"    # I

    .line 2803
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2805
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2806
    .local v0, "state":Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    const/16 v1, 0x22

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 2807
    return-void

    .line 2809
    :cond_e
    nop

    .line 2810
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleDecreaseDeviceVolume(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    .line 2809
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2813
    return-void
.end method

.method public final getApplicationLooper()Landroid/os/Looper;
    .registers 2

    .line 2021
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->applicationLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public final getAudioAttributes()Lcom/google/android/exoplayer2/audio/AudioAttributes;
    .registers 2

    .line 2544
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2545
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget-object v0, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    return-object v0
.end method

.method public final getAvailableCommands()Lcom/google/android/exoplayer2/Player$Commands;
    .registers 2

    .line 2026
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2027
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget-object v0, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->availableCommands:Lcom/google/android/exoplayer2/Player$Commands;

    return-object v0
.end method

.method public final getBufferedPosition()J
    .registers 5

    .line 2500
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2501
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2502
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget-object v0, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->adBufferedPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget-object v2, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->adPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_22

    .line 2503
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getContentBufferedPosition()J

    move-result-wide v0

    .line 2501
    :goto_22
    return-wide v0
.end method

.method public final getContentBufferedPosition()J
    .registers 5

    .line 2538
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2539
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getContentBufferedPositionMsInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    invoke-static {v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getContentPositionMsInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getContentPosition()J
    .registers 3

    .line 2532
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2533
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getContentPositionMsInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getCurrentAdGroupIndex()I
    .registers 2

    .line 2520
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2521
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget v0, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdGroupIndex:I

    return v0
.end method

.method public final getCurrentAdIndexInAdGroup()I
    .registers 2

    .line 2526
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2527
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget v0, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    return v0
.end method

.method public final getCurrentCues()Lcom/google/android/exoplayer2/text/CueGroup;
    .registers 2

    .line 2699
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2700
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget-object v0, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentCues:Lcom/google/android/exoplayer2/text/CueGroup;

    return-object v0
.end method

.method public final getCurrentMediaItemIndex()I
    .registers 2

    .line 2476
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2477
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)I

    move-result v0

    return v0
.end method

.method public final getCurrentPeriodIndex()I
    .registers 4

    .line 2470
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2471
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getCurrentPeriodIndexInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)I

    move-result v0

    return v0
.end method

.method public final getCurrentPosition()J
    .registers 3

    .line 2494
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2495
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget-object v0, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->adPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v0

    goto :goto_16

    :cond_12
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getContentPosition()J

    move-result-wide v0

    :goto_16
    return-wide v0
.end method

.method public final getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;
    .registers 2

    .line 2464
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2465
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget-object v0, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timeline:Lcom/google/android/exoplayer2/Timeline;

    return-object v0
.end method

.method public final getCurrentTracks()Lcom/google/android/exoplayer2/Tracks;
    .registers 2

    .line 2412
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2413
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getCurrentTracksInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)Lcom/google/android/exoplayer2/Tracks;

    move-result-object v0

    return-object v0
.end method

.method public final getDeviceInfo()Lcom/google/android/exoplayer2/DeviceInfo;
    .registers 2

    .line 2705
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2706
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget-object v0, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->deviceInfo:Lcom/google/android/exoplayer2/DeviceInfo;

    return-object v0
.end method

.method public final getDeviceVolume()I
    .registers 2

    .line 2711
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2712
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget v0, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->deviceVolume:I

    return v0
.end method

.method public final getDuration()J
    .registers 5

    .line 2482
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2483
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2484
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget-object v0, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getCurrentPeriodIndex()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 2485
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget v1, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdGroupIndex:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget v2, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    .line 2486
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v0

    .line 2487
    .local v0, "adDurationUs":J
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v2

    return-wide v2

    .line 2489
    .end local v0    # "adDurationUs":J
    :cond_29
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getContentDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getMaxSeekToPreviousPosition()J
    .registers 3

    .line 2339
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2340
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->maxSeekToPreviousPositionMs:J

    return-wide v0
.end method

.method public final getMediaMetadata()Lcom/google/android/exoplayer2/MediaMetadata;
    .registers 2

    .line 2438
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2439
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getMediaMetadataInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method protected getPlaceholderMediaItemData(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;
    .registers 5
    .param p1, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;

    .line 2909
    new-instance v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;

    new-instance v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaceholderUid;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaceholderUid;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$1;)V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;-><init>(Ljava/lang/Object;)V

    .line 2910
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->setMediaItem(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object v0

    .line 2911
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->setIsDynamic(Z)Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object v0

    .line 2912
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->setIsPlaceholder(Z)Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object v0

    .line 2913
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    move-result-object v0

    .line 2909
    return-object v0
.end method

.method protected getPlaceholderState(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .registers 2
    .param p1, "suggestedPlaceholderState"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2893
    return-object p1
.end method

.method public final getPlayWhenReady()Z
    .registers 2

    .line 2049
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2050
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playWhenReady:Z

    return v0
.end method

.method public final getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;
    .registers 2

    .line 2359
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2360
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget-object v0, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    return-object v0
.end method

.method public final getPlaybackState()I
    .registers 2

    .line 2238
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2239
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget v0, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackState:I

    return v0
.end method

.method public final getPlaybackSuppressionReason()I
    .registers 2

    .line 2244
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2245
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget v0, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackSuppressionReason:I

    return v0
.end method

.method public final getPlayerError()Lcom/google/android/exoplayer2/PlaybackException;
    .registers 2

    .line 2251
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2252
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget-object v0, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playerError:Lcom/google/android/exoplayer2/PlaybackException;

    return-object v0
.end method

.method public final getPlaylistMetadata()Lcom/google/android/exoplayer2/MediaMetadata;
    .registers 2

    .line 2444
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2445
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget-object v0, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlistMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    return-object v0
.end method

.method public final getRepeatMode()I
    .registers 2

    .line 2271
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2272
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget v0, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->repeatMode:I

    return v0
.end method

.method public final getSeekBackIncrement()J
    .registers 3

    .line 2327
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2328
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->seekBackIncrementMs:J

    return-wide v0
.end method

.method public final getSeekForwardIncrement()J
    .registers 3

    .line 2333
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2334
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->seekForwardIncrementMs:J

    return-wide v0
.end method

.method public final getShuffleModeEnabled()Z
    .registers 2

    .line 2291
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2292
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->shuffleModeEnabled:Z

    return v0
.end method

.method protected abstract getState()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
.end method

.method public final getSurfaceSize()Lcom/google/android/exoplayer2/util/Size;
    .registers 2

    .line 2693
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2694
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget-object v0, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->surfaceSize:Lcom/google/android/exoplayer2/util/Size;

    return-object v0
.end method

.method public final getTotalBufferedDuration()J
    .registers 3

    .line 2508
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2509
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget-object v0, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->totalBufferedDurationMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getTrackSelectionParameters()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    .registers 2

    .line 2418
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2419
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget-object v0, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    return-object v0
.end method

.method public final getVideoSize()Lcom/google/android/exoplayer2/video/VideoSize;
    .registers 2

    .line 2687
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2688
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget-object v0, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->videoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    return-object v0
.end method

.method public final getVolume()F
    .registers 2

    .line 2563
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2564
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget v0, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->volume:F

    return v0
.end method

.method protected handleAddMediaItems(ILjava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3198
    .local p2, "mediaItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/MediaItem;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing implementation to handle COMMAND_CHANGE_MEDIA_ITEMS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleClearVideoOutput(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 4
    .param p1, "videoOutput"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3161
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing implementation to handle COMMAND_SET_VIDEO_SURFACE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleDecreaseDeviceVolume(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 4
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3108
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing implementation to handle COMMAND_ADJUST_DEVICE_VOLUME or COMMAND_ADJUST_DEVICE_VOLUME_WITH_FLAGS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleIncreaseDeviceVolume(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 4
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3090
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing implementation to handle COMMAND_ADJUST_DEVICE_VOLUME or COMMAND_ADJUST_DEVICE_VOLUME_WITH_FLAGS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleMoveMediaItems(III)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 6
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "newIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3218
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing implementation to handle COMMAND_CHANGE_MEDIA_ITEMS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handlePrepare()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 2940
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing implementation to handle COMMAND_PREPARE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleRelease()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 2966
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing implementation to handle COMMAND_RELEASE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleRemoveMediaItems(II)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 5
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3256
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing implementation to handle COMMAND_CHANGE_MEDIA_ITEMS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleReplaceMediaItems(IILjava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 7
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3237
    .local p3, "mediaItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/MediaItem;>;"
    invoke-virtual {p0, p2, p3}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleAddMediaItems(ILjava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 3238
    .local v0, "addFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleRemoveMediaItems(II)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 3239
    .local v1, "removeFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    new-instance v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda6;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda6;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/Util;->transformFutureAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    return-object v2
.end method

.method protected handleSeek(IJI)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 7
    .param p1, "mediaItemIndex"    # I
    .param p2, "positionMs"    # J
    .param p4, "seekCommand"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3277
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing implementation to handle one of the COMMAND_SEEK_*"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleSetDeviceMuted(ZI)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 5
    .param p1, "muted"    # Z
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3127
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing implementation to handle COMMAND_ADJUST_DEVICE_VOLUME or COMMAND_ADJUST_DEVICE_VOLUME_WITH_FLAGS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleSetDeviceVolume(II)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 5
    .param p1, "deviceVolume"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3072
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing implementation to handle COMMAND_SET_DEVICE_VOLUME or COMMAND_SET_DEVICE_VOLUME_WITH_FLAGS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleSetMediaItems(Ljava/util/List;IJ)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 7
    .param p2, "startIndex"    # I
    .param p3, "startPositionMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;IJ)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3182
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/MediaItem;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing implementation to handle COMMAND_SET_MEDIA_ITEM(S)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleSetPlayWhenReady(Z)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 4
    .param p1, "playWhenReady"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 2927
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing implementation to handle COMMAND_PLAY_PAUSE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleSetPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 4
    .param p1, "playbackParameters"    # Lcom/google/android/exoplayer2/PlaybackParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/PlaybackParameters;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3008
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing implementation to handle COMMAND_SET_SPEED_AND_PITCH"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleSetPlaylistMetadata(Lcom/google/android/exoplayer2/MediaMetadata;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 4
    .param p1, "playlistMetadata"    # Lcom/google/android/exoplayer2/MediaMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/MediaMetadata;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3038
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing implementation to handle COMMAND_SET_PLAYLIST_METADATA"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleSetRepeatMode(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 4
    .param p1, "repeatMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 2980
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing implementation to handle COMMAND_SET_REPEAT_MODE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleSetShuffleModeEnabled(Z)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 4
    .param p1, "shuffleModeEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 2994
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing implementation to handle COMMAND_SET_SHUFFLE_MODE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleSetTrackSelectionParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 4
    .param p1, "trackSelectionParameters"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3023
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing implementation to handle COMMAND_SET_TRACK_SELECTION_PARAMETERS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleSetVideoOutput(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 4
    .param p1, "videoOutput"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3144
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing implementation to handle COMMAND_SET_VIDEO_SURFACE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleSetVolume(F)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 4
    .param p1, "volume"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3054
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing implementation to handle COMMAND_SET_VOLUME"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleStop()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 2953
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing implementation to handle COMMAND_STOP"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final increaseDeviceVolume()V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2757
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2759
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2760
    .local v0, "state":Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    const/16 v1, 0x1a

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 2761
    return-void

    .line 2763
    :cond_e
    nop

    .line 2764
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleIncreaseDeviceVolume(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda22;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda22;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    .line 2763
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2767
    return-void
.end method

.method public final increaseDeviceVolume(I)V
    .registers 5
    .param p1, "flags"    # I

    .line 2771
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2773
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2774
    .local v0, "state":Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    const/16 v1, 0x22

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 2775
    return-void

    .line 2777
    :cond_e
    nop

    .line 2778
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleIncreaseDeviceVolume(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda59;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda59;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    .line 2777
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2781
    return-void
.end method

.method protected final invalidateState()V
    .registers 3

    .line 2855
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2856
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->pendingOperations:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->released:Z

    if-eqz v0, :cond_10

    goto :goto_1a

    .line 2859
    :cond_10
    nop

    .line 2860
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getState()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object v0

    .line 2859
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateAndInformListeners(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;ZZ)V

    .line 2861
    return-void

    .line 2857
    :cond_1a
    :goto_1a
    return-void
.end method

.method public final isDeviceMuted()Z
    .registers 2

    .line 2717
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2718
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->isDeviceMuted:Z

    return v0
.end method

.method public final isLoading()Z
    .registers 2

    .line 2297
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2298
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->isLoading:Z

    return v0
.end method

.method public final isPlayingAd()Z
    .registers 3

    .line 2514
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2515
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget v0, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdGroupIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method synthetic lambda$addMediaItems$3$com-google-android-exoplayer2-SimpleBasePlayer(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Ljava/util/List;I)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .registers 8
    .param p1, "state"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p2, "mediaItems"    # Ljava/util/List;
    .param p3, "correctedIndex"    # I

    .line 2108
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2109
    .local v0, "placeholderPlaylist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 2110
    add-int v2, v1, p3

    .line 2111
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/MediaItem;

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getPlaceholderMediaItemData(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    move-result-object v3

    .line 2110
    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2109
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2113
    .end local v1    # "i":I
    :cond_20
    iget-object v1, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 2114
    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getStateWithNewPlaylist(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Ljava/util/List;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object v1

    return-object v1

    .line 2117
    :cond_2f
    iget v1, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentMediaItemIndex:I

    iget-object v2, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->contentPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 2121
    invoke-interface {v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v2

    .line 2117
    invoke-static {p1, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getStateWithNewPlaylistAndPosition(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Ljava/util/List;IJ)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object v1

    return-object v1
.end method

.method synthetic lambda$moveMediaItems$4$com-google-android-exoplayer2-SimpleBasePlayer(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;III)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .registers 7
    .param p1, "state"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p2, "fromIndex"    # I
    .param p3, "correctedToIndex"    # I
    .param p4, "correctedNewIndex"    # I

    .line 2147
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2148
    .local v0, "placeholderPlaylist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;>;"
    invoke-static {v0, p2, p3, p4}, Lcom/google/android/exoplayer2/util/Util;->moveItems(Ljava/util/List;III)V

    .line 2149
    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getStateWithNewPlaylist(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Ljava/util/List;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object v1

    return-object v1
.end method

.method synthetic lambda$new$0$com-google-android-exoplayer2-SimpleBasePlayer(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/util/FlagSet;)V
    .registers 4
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;
    .param p2, "flags"    # Lcom/google/android/exoplayer2/util/FlagSet;

    .line 2002
    new-instance v0, Lcom/google/android/exoplayer2/Player$Events;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/Player$Events;-><init>(Lcom/google/android/exoplayer2/util/FlagSet;)V

    invoke-interface {p1, p0, v0}, Lcom/google/android/exoplayer2/Player$Listener;->onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V

    return-void
.end method

.method synthetic lambda$removeMediaItems$6$com-google-android-exoplayer2-SimpleBasePlayer(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;II)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .registers 6
    .param p1, "state"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p2, "fromIndex"    # I
    .param p3, "correctedToIndex"    # I

    .line 2211
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2212
    .local v0, "placeholderPlaylist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;>;"
    invoke-static {v0, p2, p3}, Lcom/google/android/exoplayer2/util/Util;->removeRange(Ljava/util/List;II)V

    .line 2213
    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getStateWithNewPlaylist(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Ljava/util/List;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object v1

    return-object v1
.end method

.method synthetic lambda$replaceMediaItems$5$com-google-android-exoplayer2-SimpleBasePlayer(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Ljava/util/List;II)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .registers 9
    .param p1, "state"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p2, "mediaItems"    # Ljava/util/List;
    .param p3, "correctedToIndex"    # I
    .param p4, "fromIndex"    # I

    .line 2166
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2167
    .local v0, "placeholderPlaylist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 2168
    add-int v2, v1, p3

    .line 2169
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/MediaItem;

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getPlaceholderMediaItemData(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    move-result-object v3

    .line 2168
    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2167
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2172
    .end local v1    # "i":I
    :cond_20
    iget-object v1, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 2173
    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getStateWithNewPlaylist(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Ljava/util/List;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object v1

    .local v1, "updatedState":Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    goto :goto_3b

    .line 2176
    .end local v1    # "updatedState":Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    :cond_2f
    iget v1, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentMediaItemIndex:I

    iget-object v2, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->contentPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 2181
    invoke-interface {v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v2

    .line 2177
    invoke-static {p1, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getStateWithNewPlaylistAndPosition(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Ljava/util/List;IJ)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object v1

    .line 2183
    .restart local v1    # "updatedState":Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    :goto_3b
    if-ge p4, p3, :cond_47

    .line 2184
    invoke-static {v0, p4, p3}, Lcom/google/android/exoplayer2/util/Util;->removeRange(Ljava/util/List;II)V

    .line 2185
    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-static {v1, v0, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getStateWithNewPlaylist(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Ljava/util/List;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object v2

    return-object v2

    .line 2187
    :cond_47
    return-object v1
.end method

.method synthetic lambda$setMediaItemsInternal$2$com-google-android-exoplayer2-SimpleBasePlayer(Ljava/util/List;Lcom/google/android/exoplayer2/SimpleBasePlayer$State;IJ)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .registers 9
    .param p1, "mediaItems"    # Ljava/util/List;
    .param p2, "state"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p3, "startIndex"    # I
    .param p4, "startPositionMs"    # J

    .line 2085
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2086
    .local v0, "placeholderPlaylist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 2087
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/MediaItem;

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getPlaceholderMediaItemData(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2086
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2089
    .end local v1    # "i":I
    :cond_1c
    invoke-static {p2, v0, p3, p4, p5}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getStateWithNewPlaylistAndPosition(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Ljava/util/List;IJ)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object v1

    return-object v1
.end method

.method synthetic lambda$updateStateForPendingOperation$61$com-google-android-exoplayer2-SimpleBasePlayer(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .registers 4
    .param p1, "pendingOperation"    # Lcom/google/common/util/concurrent/ListenableFuture;

    .line 3550
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3551
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->pendingOperations:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 3552
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->pendingOperations:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->released:Z

    if-nez v0, :cond_1f

    .line 3553
    nop

    .line 3554
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getState()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object v0

    .line 3553
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateAndInformListeners(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;ZZ)V

    .line 3556
    :cond_1f
    return-void
.end method

.method public final moveMediaItems(III)V
    .registers 16
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "newIndex"    # I

    .line 2128
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2129
    if-ltz p1, :cond_b

    if-lt p2, p1, :cond_b

    if-ltz p3, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 2131
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2132
    .local v0, "state":Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    iget-object v1, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v7

    .line 2133
    .local v7, "playlistSize":I
    const/16 v1, 0x14

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-eqz v1, :cond_4f

    if-eqz v7, :cond_4f

    if-lt p1, v7, :cond_24

    goto :goto_4f

    .line 2138
    :cond_24
    invoke-static {p2, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 2139
    .local v8, "correctedToIndex":I
    iget-object v1, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    sub-int v2, v8, p1

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 2140
    .local v9, "correctedNewIndex":I
    if-eq p1, v8, :cond_4e

    if-ne v9, p1, :cond_3a

    goto :goto_4e

    .line 2143
    :cond_3a
    nop

    .line 2144
    invoke-virtual {p0, p1, v8, v9}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleMoveMediaItems(III)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v10

    new-instance v11, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda0;

    move-object v1, v11

    move-object v2, p0

    move-object v3, v0

    move v4, p1

    move v5, v8

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer;Lcom/google/android/exoplayer2/SimpleBasePlayer$State;III)V

    .line 2143
    invoke-direct {p0, v10, v11}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2151
    return-void

    .line 2141
    :cond_4e
    :goto_4e
    return-void

    .line 2136
    .end local v8    # "correctedToIndex":I
    .end local v9    # "correctedNewIndex":I
    :cond_4f
    :goto_4f
    return-void
.end method

.method public final prepare()V
    .registers 4

    .line 2219
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2221
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2222
    .local v0, "state":Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_d

    .line 2223
    return-void

    .line 2225
    :cond_d
    nop

    .line 2226
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handlePrepare()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda56;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda56;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    .line 2225
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2233
    return-void
.end method

.method public final release()V
    .registers 5

    .line 2387
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2389
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2390
    .local v0, "state":Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 2391
    return-void

    .line 2393
    :cond_e
    nop

    .line 2394
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleRelease()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda9;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda9;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    .line 2393
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2395
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->released:Z

    .line 2396
    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ListenerSet;->release()V

    .line 2398
    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2400
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v2

    .line 2401
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setPlaybackState(I)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->ZERO:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 2402
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setTotalBufferedDurationMs(Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v1

    .line 2404
    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getContentPositionMsInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier$-CC;->getConstant(J)Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    move-result-object v2

    .line 2403
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setContentBufferedPositionMs(Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->adPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 2405
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setAdBufferedPositionMs(Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v1

    .line 2406
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setIsLoading(Z)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v1

    .line 2407
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2408
    return-void
.end method

.method public final removeListener(Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 2014
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2015
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ListenerSet;->remove(Ljava/lang/Object;)V

    .line 2016
    return-void
.end method

.method public final removeMediaItems(II)V
    .registers 8
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 2194
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2195
    if-ltz p1, :cond_9

    if-lt p2, p1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 2197
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2198
    .local v0, "state":Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    iget-object v1, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    .line 2199
    .local v1, "playlistSize":I
    const/16 v2, 0x14

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v2

    if-eqz v2, :cond_37

    if-eqz v1, :cond_37

    if-lt p1, v1, :cond_22

    goto :goto_37

    .line 2204
    :cond_22
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2205
    .local v2, "correctedToIndex":I
    if-ne p1, v2, :cond_29

    .line 2206
    return-void

    .line 2208
    :cond_29
    nop

    .line 2209
    invoke-virtual {p0, p1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleRemoveMediaItems(II)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    new-instance v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda58;

    invoke-direct {v4, p0, v0, p1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda58;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer;Lcom/google/android/exoplayer2/SimpleBasePlayer$State;II)V

    .line 2208
    invoke-direct {p0, v3, v4}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2215
    return-void

    .line 2202
    .end local v2    # "correctedToIndex":I
    :cond_37
    :goto_37
    return-void
.end method

.method public final replaceMediaItems(IILjava/util/List;)V
    .registers 15
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 2155
    .local p3, "mediaItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/MediaItem;>;"
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2156
    if-ltz p1, :cond_9

    if-gt p1, p2, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 2157
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2158
    .local v0, "state":Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    iget-object v1, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v7

    .line 2159
    .local v7, "playlistSize":I
    const/16 v1, 0x14

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-eqz v1, :cond_38

    if-le p1, v7, :cond_20

    goto :goto_38

    .line 2162
    :cond_20
    invoke-static {p2, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 2163
    .local v8, "correctedToIndex":I
    nop

    .line 2164
    invoke-virtual {p0, p1, v8, p3}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleReplaceMediaItems(IILjava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v9

    new-instance v10, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda15;

    move-object v1, v10

    move-object v2, p0

    move-object v3, v0

    move-object v4, p3

    move v5, v8

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda15;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer;Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Ljava/util/List;II)V

    .line 2163
    invoke-direct {p0, v9, v10}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2190
    return-void

    .line 2160
    .end local v8    # "correctedToIndex":I
    :cond_38
    :goto_38
    return-void
.end method

.method public final seekTo(IJIZ)V
    .registers 10
    .param p1, "mediaItemIndex"    # I
    .param p2, "positionMs"    # J
    .param p4, "seekCommand"    # I
    .param p5, "isRepeatingCurrentItem"    # Z

    .line 2308
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2309
    const/4 v0, 0x1

    if-ltz p1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 2311
    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2312
    .local v1, "state":Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 2313
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->isPlayingAd()Z

    move-result v2

    if-nez v2, :cond_39

    iget-object v2, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    .line 2314
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2b

    iget-object v2, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-lt p1, v2, :cond_2b

    goto :goto_39

    .line 2317
    :cond_2b
    nop

    .line 2318
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleSeek(IJI)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    new-instance v3, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda17;

    invoke-direct {v3, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda17;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;IJ)V

    .line 2317
    invoke-direct {p0, v2, v3, v0, p5}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;ZZ)V

    .line 2323
    return-void

    .line 2315
    :cond_39
    :goto_39
    return-void
.end method

.method public final setDeviceMuted(Z)V
    .registers 5
    .param p1, "muted"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2821
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2823
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2824
    .local v0, "state":Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    const/16 v1, 0x1a

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 2825
    return-void

    .line 2827
    :cond_e
    nop

    .line 2828
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleSetDeviceMuted(ZI)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda21;

    invoke-direct {v2, v0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda21;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Z)V

    .line 2827
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2830
    return-void
.end method

.method public final setDeviceMuted(ZI)V
    .registers 6
    .param p1, "muted"    # Z
    .param p2, "flags"    # I

    .line 2834
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2836
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2837
    .local v0, "state":Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    const/16 v1, 0x22

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 2838
    return-void

    .line 2840
    :cond_e
    nop

    .line 2841
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleSetDeviceMuted(ZI)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda10;

    invoke-direct {v2, v0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda10;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Z)V

    .line 2840
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2843
    return-void
.end method

.method public final setDeviceVolume(I)V
    .registers 5
    .param p1, "volume"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2727
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2729
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2730
    .local v0, "state":Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    const/16 v1, 0x19

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 2731
    return-void

    .line 2733
    :cond_e
    nop

    .line 2734
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleSetDeviceVolume(II)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;I)V

    .line 2733
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2736
    return-void
.end method

.method public final setDeviceVolume(II)V
    .registers 6
    .param p1, "volume"    # I
    .param p2, "flags"    # I

    .line 2740
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2742
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2743
    .local v0, "state":Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    const/16 v1, 0x21

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 2744
    return-void

    .line 2746
    :cond_e
    nop

    .line 2747
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleSetDeviceVolume(II)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda53;

    invoke-direct {v2, v0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda53;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;I)V

    .line 2746
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2749
    return-void
.end method

.method public final setMediaItems(Ljava/util/List;IJ)V
    .registers 6
    .param p2, "startIndex"    # I
    .param p3, "startPositionMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;IJ)V"
        }
    .end annotation

    .line 2064
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/MediaItem;>;"
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2065
    const/4 v0, -0x1

    if-ne p2, v0, :cond_12

    .line 2066
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget p2, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentMediaItemIndex:I

    .line 2067
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget-object v0, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->contentPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide p3

    .line 2069
    :cond_12
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->setMediaItemsInternal(Ljava/util/List;IJ)V

    .line 2070
    return-void
.end method

.method public final setMediaItems(Ljava/util/List;Z)V
    .registers 6
    .param p2, "resetPosition"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;Z)V"
        }
    .end annotation

    .line 2055
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/MediaItem;>;"
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2056
    if-eqz p2, :cond_7

    const/4 v0, -0x1

    goto :goto_b

    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget v0, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentMediaItemIndex:I

    .line 2057
    .local v0, "startIndex":I
    :goto_b
    if-eqz p2, :cond_13

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_1b

    :cond_13
    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget-object v1, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->contentPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v1

    .line 2058
    .local v1, "startPositionMs":J
    :goto_1b
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->setMediaItemsInternal(Ljava/util/List;IJ)V

    .line 2059
    return-void
.end method

.method public final setPlayWhenReady(Z)V
    .registers 5
    .param p1, "playWhenReady"    # Z

    .line 2032
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2034
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2035
    .local v0, "state":Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_d

    .line 2036
    return-void

    .line 2038
    :cond_d
    nop

    .line 2039
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleSetPlayWhenReady(Z)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda19;

    invoke-direct {v2, v0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda19;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Z)V

    .line 2038
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2045
    return-void
.end method

.method public final setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .registers 5
    .param p1, "playbackParameters"    # Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 2345
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2347
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2348
    .local v0, "state":Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 2349
    return-void

    .line 2351
    :cond_e
    nop

    .line 2352
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleSetPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda57;

    invoke-direct {v2, v0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda57;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/PlaybackParameters;)V

    .line 2351
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2355
    return-void
.end method

.method public final setPlaylistMetadata(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .registers 5
    .param p1, "mediaMetadata"    # Lcom/google/android/exoplayer2/MediaMetadata;

    .line 2450
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2452
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2453
    .local v0, "state":Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    const/16 v1, 0x13

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 2454
    return-void

    .line 2456
    :cond_e
    nop

    .line 2457
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleSetPlaylistMetadata(Lcom/google/android/exoplayer2/MediaMetadata;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda62;

    invoke-direct {v2, v0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda62;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/MediaMetadata;)V

    .line 2456
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2460
    return-void
.end method

.method public final setRepeatMode(I)V
    .registers 5
    .param p1, "repeatMode"    # I

    .line 2257
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2259
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2260
    .local v0, "state":Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    const/16 v1, 0xf

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 2261
    return-void

    .line 2263
    :cond_e
    nop

    .line 2264
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleSetRepeatMode(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda18;

    invoke-direct {v2, v0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda18;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;I)V

    .line 2263
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2266
    return-void
.end method

.method public final setShuffleModeEnabled(Z)V
    .registers 5
    .param p1, "shuffleModeEnabled"    # Z

    .line 2277
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2279
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2280
    .local v0, "state":Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 2281
    return-void

    .line 2283
    :cond_e
    nop

    .line 2284
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleSetShuffleModeEnabled(Z)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda14;

    invoke-direct {v2, v0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda14;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Z)V

    .line 2283
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2287
    return-void
.end method

.method public final setTrackSelectionParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .registers 5
    .param p1, "parameters"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    .line 2424
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2426
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2427
    .local v0, "state":Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    const/16 v1, 0x1d

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 2428
    return-void

    .line 2430
    :cond_e
    nop

    .line 2431
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleSetTrackSelectionParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    .line 2430
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2434
    return-void
.end method

.method public final setVideoSurface(Landroid/view/Surface;)V
    .registers 5
    .param p1, "surface"    # Landroid/view/Surface;

    .line 2569
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2571
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2572
    .local v0, "state":Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    const/16 v1, 0x1b

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 2573
    return-void

    .line 2575
    :cond_e
    if-nez p1, :cond_14

    .line 2576
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->clearVideoSurface()V

    .line 2577
    return-void

    .line 2579
    :cond_14
    nop

    .line 2580
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleSetVideoOutput(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda13;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda13;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    .line 2579
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2583
    return-void
.end method

.method public final setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .registers 5
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .line 2587
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2589
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2590
    .local v0, "state":Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    const/16 v1, 0x1b

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 2591
    return-void

    .line 2593
    :cond_e
    if-nez p1, :cond_14

    .line 2594
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->clearVideoSurface()V

    .line 2595
    return-void

    .line 2597
    :cond_14
    nop

    .line 2598
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleSetVideoOutput(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda55;

    invoke-direct {v2, v0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda55;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Landroid/view/SurfaceHolder;)V

    .line 2597
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2601
    return-void
.end method

.method public final setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .registers 5
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;

    .line 2605
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2607
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2608
    .local v0, "state":Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    const/16 v1, 0x1b

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 2609
    return-void

    .line 2611
    :cond_e
    if-nez p1, :cond_14

    .line 2612
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->clearVideoSurface()V

    .line 2613
    return-void

    .line 2615
    :cond_14
    nop

    .line 2616
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleSetVideoOutput(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda12;

    invoke-direct {v2, v0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda12;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Landroid/view/SurfaceView;)V

    .line 2615
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2622
    return-void
.end method

.method public final setVideoTextureView(Landroid/view/TextureView;)V
    .registers 6
    .param p1, "textureView"    # Landroid/view/TextureView;

    .line 2626
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2628
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2629
    .local v0, "state":Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    const/16 v1, 0x1b

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 2630
    return-void

    .line 2632
    :cond_e
    if-nez p1, :cond_14

    .line 2633
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->clearVideoSurface()V

    .line 2634
    return-void

    .line 2637
    :cond_14
    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 2638
    new-instance v1, Lcom/google/android/exoplayer2/util/Size;

    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/util/Size;-><init>(II)V

    .local v1, "surfaceSize":Lcom/google/android/exoplayer2/util/Size;
    goto :goto_2a

    .line 2640
    .end local v1    # "surfaceSize":Lcom/google/android/exoplayer2/util/Size;
    :cond_28
    sget-object v1, Lcom/google/android/exoplayer2/util/Size;->ZERO:Lcom/google/android/exoplayer2/util/Size;

    .line 2642
    .restart local v1    # "surfaceSize":Lcom/google/android/exoplayer2/util/Size;
    :goto_2a
    nop

    .line 2643
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleSetVideoOutput(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    new-instance v3, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda20;

    invoke-direct {v3, v0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda20;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/util/Size;)V

    .line 2642
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2646
    return-void
.end method

.method public final setVolume(F)V
    .registers 5
    .param p1, "volume"    # F

    .line 2550
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2552
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2553
    .local v0, "state":Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    const/16 v1, 0x18

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 2554
    return-void

    .line 2556
    :cond_e
    nop

    .line 2557
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleSetVolume(F)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda7;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;F)V

    .line 2556
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2559
    return-void
.end method

.method public final stop()V
    .registers 4

    .line 2365
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2367
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2368
    .local v0, "state":Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_d

    .line 2369
    return-void

    .line 2371
    :cond_d
    nop

    .line 2372
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleStop()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda8;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda8;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    .line 2371
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2383
    return-void
.end method
