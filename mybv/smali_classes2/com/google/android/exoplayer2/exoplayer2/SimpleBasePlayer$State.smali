.class public final Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
.super Ljava/lang/Object;
.source "SimpleBasePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/SimpleBasePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;
    }
.end annotation


# instance fields
.field public final adBufferedPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

.field public final adPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

.field public final audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

.field public final availableCommands:Lcom/google/android/exoplayer2/Player$Commands;

.field public final contentBufferedPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

.field public final contentPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

.field public final currentAdGroupIndex:I

.field public final currentAdIndexInAdGroup:I

.field public final currentCues:Lcom/google/android/exoplayer2/text/CueGroup;

.field public final currentMediaItemIndex:I

.field public final deviceInfo:Lcom/google/android/exoplayer2/DeviceInfo;

.field public final deviceVolume:I

.field public final discontinuityPositionMs:J

.field public final hasPositionDiscontinuity:Z

.field public final isDeviceMuted:Z

.field public final isLoading:Z

.field public final maxSeekToPreviousPositionMs:J

.field public final newlyRenderedFirstFrame:Z

.field public final playWhenReady:Z

.field public final playWhenReadyChangeReason:I

.field public final playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

.field public final playbackState:I

.field public final playbackSuppressionReason:I

.field public final playerError:Lcom/google/android/exoplayer2/PlaybackException;

.field public final playlist:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;",
            ">;"
        }
    .end annotation
.end field

.field public final playlistMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

.field public final positionDiscontinuityReason:I

.field public final repeatMode:I

.field public final seekBackIncrementMs:J

.field public final seekForwardIncrementMs:J

.field public final shuffleModeEnabled:Z

.field public final surfaceSize:Lcom/google/android/exoplayer2/util/Size;

.field public final timedMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

.field public final timeline:Lcom/google/android/exoplayer2/Timeline;

.field public final totalBufferedDurationMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

.field public final trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

.field public final videoSize:Lcom/google/android/exoplayer2/video/VideoSize;

.field public final volume:F


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)V
    .registers 15
    .param p1, "builder"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 890
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 891
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->timeline:Lcom/google/android/exoplayer2/Timeline;
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$100(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v0, :cond_3e

    .line 892
    nop

    .line 893
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playbackState:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$200(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v0

    if-eq v0, v4, :cond_21

    .line 894
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playbackState:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$200(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v0

    if-ne v0, v1, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v0, 0x1

    .line 892
    :goto_22
    const-string v5, "Empty playlist only allowed in STATE_IDLE or STATE_ENDED"

    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 896
    nop

    .line 897
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->currentAdGroupIndex:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$300(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v0

    if-ne v0, v3, :cond_36

    .line 898
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->currentAdIndexInAdGroup:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$400(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v0

    if-ne v0, v3, :cond_36

    const/4 v0, 0x1

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    .line 896
    :goto_37
    const-string v5, "Ads not allowed if playlist is empty"

    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    goto/16 :goto_c5

    .line 901
    :cond_3e
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->currentMediaItemIndex:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$500(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v0

    .line 902
    .local v0, "mediaItemIndex":I
    if-ne v0, v3, :cond_46

    .line 903
    const/4 v0, 0x0

    goto :goto_5d

    .line 905
    :cond_46
    nop

    .line 906
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->currentMediaItemIndex:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$500(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v5

    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->timeline:Lcom/google/android/exoplayer2/Timeline;
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$100(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v6

    if-ge v5, v6, :cond_57

    const/4 v5, 0x1

    goto :goto_58

    :cond_57
    const/4 v5, 0x0

    .line 905
    :goto_58
    const-string v6, "currentMediaItemIndex must be less than playlist.size()"

    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 909
    :goto_5d
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->currentAdGroupIndex:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$300(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v5

    if-eq v5, v3, :cond_c5

    .line 910
    new-instance v5, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    .line 911
    .local v5, "period":Lcom/google/android/exoplayer2/Timeline$Period;
    new-instance v11, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v11}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    .line 913
    .local v11, "window":Lcom/google/android/exoplayer2/Timeline$Window;
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->contentPositionMs:Ljava/lang/Long;
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$600(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_7d

    .line 914
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->contentPositionMs:Ljava/lang/Long;
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$600(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-wide v9, v6

    goto :goto_86

    .line 915
    :cond_7d
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->contentPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$700(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v6

    move-wide v9, v6

    :goto_86
    nop

    .line 916
    .local v9, "contentPositionMs":J
    nop

    .line 918
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->timeline:Lcom/google/android/exoplayer2/Timeline;
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$100(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v7

    .line 917
    move v8, v0

    move-object v12, v5

    # invokes: Lcom/google/android/exoplayer2/SimpleBasePlayer;->getPeriodIndexFromWindowPosition(Lcom/google/android/exoplayer2/Timeline;IJLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)I
    invoke-static/range {v7 .. v12}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->access$800(Lcom/google/android/exoplayer2/Timeline;IJLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)I

    move-result v6

    .line 919
    .local v6, "periodIndex":I
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->timeline:Lcom/google/android/exoplayer2/Timeline;
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$100(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v7

    invoke-virtual {v7, v6, v5}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 920
    nop

    .line 921
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->currentAdGroupIndex:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$300(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v7

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupCount()I

    move-result v8

    if-ge v7, v8, :cond_a6

    const/4 v7, 0x1

    goto :goto_a7

    :cond_a6
    const/4 v7, 0x0

    .line 920
    :goto_a7
    const-string v8, "PeriodData has less ad groups than adGroupIndex"

    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 923
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->currentAdGroupIndex:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$300(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdCountInAdGroup(I)I

    move-result v7

    .line 924
    .local v7, "adCountInGroup":I
    if-eq v7, v3, :cond_c5

    .line 925
    nop

    .line 926
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->currentAdIndexInAdGroup:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$400(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v8

    if-ge v8, v7, :cond_bf

    const/4 v8, 0x1

    goto :goto_c0

    :cond_bf
    const/4 v8, 0x0

    .line 925
    :goto_c0
    const-string v12, "Ad group has less ads than adIndexInGroupIndex"

    invoke-static {v8, v12}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 931
    .end local v0    # "mediaItemIndex":I
    .end local v5    # "period":Lcom/google/android/exoplayer2/Timeline$Period;
    .end local v6    # "periodIndex":I
    .end local v7    # "adCountInGroup":I
    .end local v9    # "contentPositionMs":J
    .end local v11    # "window":Lcom/google/android/exoplayer2/Timeline$Window;
    :cond_c5
    :goto_c5
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playerError:Lcom/google/android/exoplayer2/PlaybackException;
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$900(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/PlaybackException;

    move-result-object v0

    if-eqz v0, :cond_d8

    .line 932
    nop

    .line 933
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playbackState:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$200(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v0

    if-ne v0, v4, :cond_d3

    const/4 v2, 0x1

    .line 932
    :cond_d3
    const-string v0, "Player error only allowed in STATE_IDLE"

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 935
    :cond_d8
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playbackState:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$200(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v0

    if-eq v0, v4, :cond_e4

    .line 936
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playbackState:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$200(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v0

    if-ne v0, v1, :cond_ef

    .line 937
    :cond_e4
    nop

    .line 938
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->isLoading:Z
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$1000(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Z

    move-result v0

    xor-int/2addr v0, v4

    .line 937
    const-string v1, "isLoading only allowed when not in STATE_IDLE or STATE_ENDED"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 940
    :cond_ef
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->contentPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$700(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    move-result-object v0

    .line 941
    .local v0, "contentPositionMsSupplier":Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->contentPositionMs:Ljava/lang/Long;
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$600(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    if-eqz v1, :cond_143

    .line 942
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->currentAdGroupIndex:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$300(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v1

    if-ne v1, v3, :cond_137

    .line 943
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playWhenReady:Z
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$1100(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Z

    move-result v1

    if-eqz v1, :cond_137

    .line 944
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playbackState:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$200(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v1

    if-ne v1, v2, :cond_137

    .line 945
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playbackSuppressionReason:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$1200(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v1

    if-nez v1, :cond_137

    .line 946
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->contentPositionMs:Ljava/lang/Long;
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$600(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v4, v6

    if-eqz v1, :cond_137

    .line 947
    nop

    .line 949
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->contentPositionMs:Ljava/lang/Long;
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$600(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$1300(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    .line 948
    invoke-static {v4, v5, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier$-CC;->getExtrapolating(JF)Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    move-result-object v0

    goto :goto_143

    .line 951
    :cond_137
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->contentPositionMs:Ljava/lang/Long;
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$600(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier$-CC;->getConstant(J)Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    move-result-object v0

    .line 954
    :cond_143
    :goto_143
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->adPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$1400(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    move-result-object v1

    .line 955
    .local v1, "adPositionMsSupplier":Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->adPositionMs:Ljava/lang/Long;
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$1500(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_181

    .line 956
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->currentAdGroupIndex:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$300(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v4

    if-eq v4, v3, :cond_175

    .line 957
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playWhenReady:Z
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$1100(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Z

    move-result v3

    if-eqz v3, :cond_175

    .line 958
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playbackState:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$200(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v3

    if-ne v3, v2, :cond_175

    .line 959
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playbackSuppressionReason:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$1200(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v2

    if-nez v2, :cond_175

    .line 960
    nop

    .line 961
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->adPositionMs:Ljava/lang/Long;
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$1500(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v3, v4}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier$-CC;->getExtrapolating(JF)Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    move-result-object v1

    goto :goto_181

    .line 963
    :cond_175
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->adPositionMs:Ljava/lang/Long;
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$1500(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier$-CC;->getConstant(J)Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    move-result-object v1

    .line 966
    :cond_181
    :goto_181
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->availableCommands:Lcom/google/android/exoplayer2/Player$Commands;
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$1600(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/Player$Commands;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->availableCommands:Lcom/google/android/exoplayer2/Player$Commands;

    .line 967
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playWhenReady:Z
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$1100(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playWhenReady:Z

    .line 968
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playWhenReadyChangeReason:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$1700(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playWhenReadyChangeReason:I

    .line 969
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playbackState:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$200(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackState:I

    .line 970
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playbackSuppressionReason:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$1200(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackSuppressionReason:I

    .line 971
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playerError:Lcom/google/android/exoplayer2/PlaybackException;
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$900(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/PlaybackException;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playerError:Lcom/google/android/exoplayer2/PlaybackException;

    .line 972
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->repeatMode:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$1800(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->repeatMode:I

    .line 973
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->shuffleModeEnabled:Z
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$1900(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->shuffleModeEnabled:Z

    .line 974
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->isLoading:Z
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$1000(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->isLoading:Z

    .line 975
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->seekBackIncrementMs:J
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$2000(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->seekBackIncrementMs:J

    .line 976
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->seekForwardIncrementMs:J
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$2100(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->seekForwardIncrementMs:J

    .line 977
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->maxSeekToPreviousPositionMs:J
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$2200(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->maxSeekToPreviousPositionMs:J

    .line 978
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$1300(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 979
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$2300(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    .line 980
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$2400(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/audio/AudioAttributes;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 981
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->volume:F
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$2500(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)F

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->volume:F

    .line 982
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->videoSize:Lcom/google/android/exoplayer2/video/VideoSize;
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$2600(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/video/VideoSize;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->videoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    .line 983
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->currentCues:Lcom/google/android/exoplayer2/text/CueGroup;
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$2700(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/text/CueGroup;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentCues:Lcom/google/android/exoplayer2/text/CueGroup;

    .line 984
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->deviceInfo:Lcom/google/android/exoplayer2/DeviceInfo;
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$2800(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/DeviceInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->deviceInfo:Lcom/google/android/exoplayer2/DeviceInfo;

    .line 985
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->deviceVolume:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$2900(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->deviceVolume:I

    .line 986
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->isDeviceMuted:Z
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$3000(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->isDeviceMuted:Z

    .line 987
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->surfaceSize:Lcom/google/android/exoplayer2/util/Size;
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$3100(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/util/Size;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->surfaceSize:Lcom/google/android/exoplayer2/util/Size;

    .line 988
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->newlyRenderedFirstFrame:Z
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$3200(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->newlyRenderedFirstFrame:Z

    .line 989
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->timedMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$3300(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timedMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 990
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playlist:Lcom/google/common/collect/ImmutableList;
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$3400(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    .line 991
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->timeline:Lcom/google/android/exoplayer2/Timeline;
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$100(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 992
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playlistMetadata:Lcom/google/android/exoplayer2/MediaMetadata;
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$3500(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlistMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 993
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->currentMediaItemIndex:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$500(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentMediaItemIndex:I

    .line 994
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->currentAdGroupIndex:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$300(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdGroupIndex:I

    .line 995
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->currentAdIndexInAdGroup:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$400(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    .line 996
    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->contentPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 997
    iput-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->adPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 998
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->contentBufferedPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$3600(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->contentBufferedPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 999
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->adBufferedPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$3700(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->adBufferedPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 1000
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->totalBufferedDurationMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$3800(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->totalBufferedDurationMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 1001
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->hasPositionDiscontinuity:Z
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$3900(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->hasPositionDiscontinuity:Z

    .line 1002
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->positionDiscontinuityReason:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$4000(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->positionDiscontinuityReason:I

    .line 1003
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->discontinuityPositionMs:J
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$4100(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->discontinuityPositionMs:J

    .line 1004
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;Lcom/google/android/exoplayer2/SimpleBasePlayer$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$1;

    .line 109
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)V

    return-void
.end method


# virtual methods
.method public buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;
    .registers 3

    .line 1008
    new-instance v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/SimpleBasePlayer$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .line 1013
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1014
    return v0

    .line 1016
    :cond_4
    instance-of v1, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 1017
    return v2

    .line 1019
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 1020
    .local v1, "state":Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playWhenReady:Z

    iget-boolean v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playWhenReady:Z

    if-ne v3, v4, :cond_13a

    iget v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playWhenReadyChangeReason:I

    iget v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playWhenReadyChangeReason:I

    if-ne v3, v4, :cond_13a

    iget-object v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->availableCommands:Lcom/google/android/exoplayer2/Player$Commands;

    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->availableCommands:Lcom/google/android/exoplayer2/Player$Commands;

    .line 1022
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/Player$Commands;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13a

    iget v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackState:I

    iget v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackState:I

    if-ne v3, v4, :cond_13a

    iget v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackSuppressionReason:I

    iget v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackSuppressionReason:I

    if-ne v3, v4, :cond_13a

    iget-object v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playerError:Lcom/google/android/exoplayer2/PlaybackException;

    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playerError:Lcom/google/android/exoplayer2/PlaybackException;

    .line 1025
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13a

    iget v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->repeatMode:I

    iget v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->repeatMode:I

    if-ne v3, v4, :cond_13a

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->shuffleModeEnabled:Z

    iget-boolean v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->shuffleModeEnabled:Z

    if-ne v3, v4, :cond_13a

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->isLoading:Z

    iget-boolean v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->isLoading:Z

    if-ne v3, v4, :cond_13a

    iget-wide v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->seekBackIncrementMs:J

    iget-wide v5, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->seekBackIncrementMs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_13a

    iget-wide v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->seekForwardIncrementMs:J

    iget-wide v5, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->seekForwardIncrementMs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_13a

    iget-wide v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->maxSeekToPreviousPositionMs:J

    iget-wide v5, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->maxSeekToPreviousPositionMs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_13a

    iget-object v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 1032
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13a

    iget-object v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    .line 1033
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13a

    iget-object v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 1034
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/audio/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13a

    iget v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->volume:F

    iget v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->volume:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_13a

    iget-object v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->videoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->videoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    .line 1036
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/video/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13a

    iget-object v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentCues:Lcom/google/android/exoplayer2/text/CueGroup;

    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentCues:Lcom/google/android/exoplayer2/text/CueGroup;

    .line 1037
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13a

    iget-object v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->deviceInfo:Lcom/google/android/exoplayer2/DeviceInfo;

    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->deviceInfo:Lcom/google/android/exoplayer2/DeviceInfo;

    .line 1038
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/DeviceInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13a

    iget v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->deviceVolume:I

    iget v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->deviceVolume:I

    if-ne v3, v4, :cond_13a

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->isDeviceMuted:Z

    iget-boolean v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->isDeviceMuted:Z

    if-ne v3, v4, :cond_13a

    iget-object v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->surfaceSize:Lcom/google/android/exoplayer2/util/Size;

    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->surfaceSize:Lcom/google/android/exoplayer2/util/Size;

    .line 1041
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13a

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->newlyRenderedFirstFrame:Z

    iget-boolean v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->newlyRenderedFirstFrame:Z

    if-ne v3, v4, :cond_13a

    iget-object v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timedMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timedMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 1043
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/metadata/Metadata;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13a

    iget-object v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    .line 1044
    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13a

    iget-object v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlistMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlistMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 1045
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13a

    iget v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentMediaItemIndex:I

    iget v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentMediaItemIndex:I

    if-ne v3, v4, :cond_13a

    iget v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdGroupIndex:I

    iget v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdGroupIndex:I

    if-ne v3, v4, :cond_13a

    iget v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    iget v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    if-ne v3, v4, :cond_13a

    iget-object v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->contentPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->contentPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 1049
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13a

    iget-object v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->adPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->adPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 1050
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13a

    iget-object v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->contentBufferedPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->contentBufferedPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 1051
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13a

    iget-object v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->adBufferedPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->adBufferedPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 1052
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13a

    iget-object v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->totalBufferedDurationMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->totalBufferedDurationMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 1053
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13a

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->hasPositionDiscontinuity:Z

    iget-boolean v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->hasPositionDiscontinuity:Z

    if-ne v3, v4, :cond_13a

    iget v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->positionDiscontinuityReason:I

    iget v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->positionDiscontinuityReason:I

    if-ne v3, v4, :cond_13a

    iget-wide v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->discontinuityPositionMs:J

    iget-wide v5, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->discontinuityPositionMs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_13a

    goto :goto_13b

    :cond_13a
    const/4 v0, 0x0

    .line 1020
    :goto_13b
    return v0
.end method

.method public hashCode()I
    .registers 8

    .line 1061
    const/4 v0, 0x7

    .line 1062
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->availableCommands:Lcom/google/android/exoplayer2/Player$Commands;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Player$Commands;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 1063
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playWhenReady:Z

    add-int/2addr v0, v2

    .line 1064
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playWhenReadyChangeReason:I

    add-int/2addr v1, v2

    .line 1065
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackState:I

    add-int/2addr v0, v2

    .line 1066
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackSuppressionReason:I

    add-int/2addr v1, v2

    .line 1067
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playerError:Lcom/google/android/exoplayer2/PlaybackException;

    if-nez v2, :cond_26

    const/4 v2, 0x0

    goto :goto_2a

    :cond_26
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2a
    add-int/2addr v0, v2

    .line 1068
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->repeatMode:I

    add-int/2addr v1, v2

    .line 1069
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->shuffleModeEnabled:Z

    add-int/2addr v0, v2

    .line 1070
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->isLoading:Z

    add-int/2addr v1, v2

    .line 1071
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->seekBackIncrementMs:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v0, v3

    .line 1072
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->seekForwardIncrementMs:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v1, v3

    .line 1073
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->maxSeekToPreviousPositionMs:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v0, v3

    .line 1075
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/PlaybackParameters;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 1076
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 1077
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/audio/AudioAttributes;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 1078
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->volume:F

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 1079
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->videoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/video/VideoSize;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 1080
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentCues:Lcom/google/android/exoplayer2/text/CueGroup;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 1081
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->deviceInfo:Lcom/google/android/exoplayer2/DeviceInfo;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/DeviceInfo;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 1082
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->deviceVolume:I

    add-int/2addr v0, v2

    .line 1083
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->isDeviceMuted:Z

    add-int/2addr v1, v2

    .line 1084
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->surfaceSize:Lcom/google/android/exoplayer2/util/Size;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/Size;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 1085
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->newlyRenderedFirstFrame:Z

    add-int/2addr v1, v2

    .line 1086
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timedMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/metadata/Metadata;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 1087
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 1088
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlistMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaMetadata;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 1089
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentMediaItemIndex:I

    add-int/2addr v1, v2

    .line 1090
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdGroupIndex:I

    add-int/2addr v0, v2

    .line 1091
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    add-int/2addr v1, v2

    .line 1092
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->contentPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 1093
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->adPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 1094
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->contentBufferedPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 1095
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->adBufferedPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 1096
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->totalBufferedDurationMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 1097
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->hasPositionDiscontinuity:Z

    add-int/2addr v1, v2

    .line 1098
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->positionDiscontinuityReason:I

    add-int/2addr v0, v2

    .line 1099
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->discontinuityPositionMs:J

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v1, v3

    .line 1100
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method
