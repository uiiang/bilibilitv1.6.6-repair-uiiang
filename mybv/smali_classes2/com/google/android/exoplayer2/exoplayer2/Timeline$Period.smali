.class public final Lcom/google/android/exoplayer2/Timeline$Period;
.super Ljava/lang/Object;
.source "Timeline.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/Timeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Period"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/Timeline$Period;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_AD_PLAYBACK_STATE:Ljava/lang/String;

.field private static final FIELD_DURATION_US:Ljava/lang/String;

.field private static final FIELD_PLACEHOLDER:Ljava/lang/String;

.field private static final FIELD_POSITION_IN_WINDOW_US:Ljava/lang/String;

.field private static final FIELD_WINDOW_INDEX:Ljava/lang/String;


# instance fields
.field private adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

.field public durationUs:J

.field public id:Ljava/lang/Object;

.field public isPlaceholder:Z

.field public positionInWindowUs:J

.field public uid:Ljava/lang/Object;

.field public windowIndex:I


# direct methods
.method public static synthetic $r8$lambda$cb0Ll1d1tnVYwhQwGd9j2fWlJfI(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Timeline$Period;
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/Timeline$Period;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 915
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Period;->FIELD_WINDOW_INDEX:Ljava/lang/String;

    .line 916
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Period;->FIELD_DURATION_US:Ljava/lang/String;

    .line 917
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Period;->FIELD_POSITION_IN_WINDOW_US:Ljava/lang/String;

    .line 918
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Period;->FIELD_PLACEHOLDER:Ljava/lang/String;

    .line 919
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Period;->FIELD_AD_PLAYBACK_STATE:Ljava/lang/String;

    .line 953
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Period$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Period$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Period;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 606
    sget-object v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->NONE:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 607
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/Timeline$Period;

    .line 570
    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    return-object v0
.end method

.method private static fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Timeline$Period;
    .registers 20
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 956
    move-object/from16 v0, p0

    sget-object v1, Lcom/google/android/exoplayer2/Timeline$Period;->FIELD_WINDOW_INDEX:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 957
    .local v1, "windowIndex":I
    sget-object v3, Lcom/google/android/exoplayer2/Timeline$Period;->FIELD_DURATION_US:Ljava/lang/String;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    .line 958
    .local v13, "durationUs":J
    sget-object v3, Lcom/google/android/exoplayer2/Timeline$Period;->FIELD_POSITION_IN_WINDOW_US:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v15

    .line 959
    .local v15, "positionInWindowUs":J
    sget-object v3, Lcom/google/android/exoplayer2/Timeline$Period;->FIELD_PLACEHOLDER:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 960
    .local v2, "isPlaceholder":Z
    sget-object v3, Lcom/google/android/exoplayer2/Timeline$Period;->FIELD_AD_PLAYBACK_STATE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    .line 962
    .local v12, "adPlaybackStateBundle":Landroid/os/Bundle;
    if-eqz v12, :cond_34

    .line 963
    sget-object v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    invoke-interface {v3, v12}, Lcom/google/android/exoplayer2/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-object v11, v3

    goto :goto_37

    .line 964
    :cond_34
    sget-object v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->NONE:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-object v11, v3

    :goto_37
    nop

    .line 966
    .local v11, "adPlaybackState":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    new-instance v3, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    move-object/from16 v17, v3

    .line 967
    .local v17, "period":Lcom/google/android/exoplayer2/Timeline$Period;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v1

    move-wide v7, v13

    move-wide v9, v15

    move-object/from16 v18, v12

    .end local v12    # "adPlaybackStateBundle":Landroid/os/Bundle;
    .local v18, "adPlaybackStateBundle":Landroid/os/Bundle;
    move v12, v2

    invoke-virtual/range {v3 .. v12}, Lcom/google/android/exoplayer2/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/google/android/exoplayer2/source/ads/AdPlaybackState;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 975
    return-object v17
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;

    .line 884
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 885
    return v0

    .line 887
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_56

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_56

    .line 890
    :cond_16
    move-object v2, p1

    check-cast v2, Lcom/google/android/exoplayer2/Timeline$Period;

    .line 891
    .local v2, "that":Lcom/google/android/exoplayer2/Timeline$Period;
    iget-object v3, p0, Lcom/google/android/exoplayer2/Timeline$Period;->id:Ljava/lang/Object;

    iget-object v4, v2, Lcom/google/android/exoplayer2/Timeline$Period;->id:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    iget-object v3, p0, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    iget-object v4, v2, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    .line 892
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    iget v3, p0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    iget v4, v2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    if-ne v3, v4, :cond_54

    iget-wide v3, p0, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    iget-wide v5, v2, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_54

    iget-wide v3, p0, Lcom/google/android/exoplayer2/Timeline$Period;->positionInWindowUs:J

    iget-wide v5, v2, Lcom/google/android/exoplayer2/Timeline$Period;->positionInWindowUs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_54

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/Timeline$Period;->isPlaceholder:Z

    iget-boolean v4, v2, Lcom/google/android/exoplayer2/Timeline$Period;->isPlaceholder:Z

    if-ne v3, v4, :cond_54

    iget-object v3, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v4, v2, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 897
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    goto :goto_55

    :cond_54
    const/4 v0, 0x0

    .line 891
    :goto_55
    return v0

    .line 888
    .end local v2    # "that":Lcom/google/android/exoplayer2/Timeline$Period;
    :cond_56
    :goto_56
    return v1
.end method

.method public getAdCountInAdGroup(I)I
    .registers 3
    .param p1, "adGroupIndex"    # I

    .line 809
    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    return v0
.end method

.method public getAdDurationUs(II)J
    .registers 7
    .param p1, "adGroupIndex"    # I
    .param p2, "adIndexInAdGroup"    # I

    .line 821
    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v0

    .line 822
    .local v0, "adGroup":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    iget v1, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    aget-wide v2, v1, p2

    goto :goto_15

    :cond_10
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_15
    return-wide v2
.end method

.method public getAdGroupCount()I
    .registers 2

    .line 715
    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget v0, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    return v0
.end method

.method public getAdGroupIndexAfterPositionUs(J)I
    .registers 6
    .param p1, "positionUs"    # J

    .line 798
    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroupIndexAfterPositionUs(JJ)I

    move-result v0

    return v0
.end method

.method public getAdGroupIndexForPositionUs(J)I
    .registers 6
    .param p1, "positionUs"    # J

    .line 787
    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroupIndexForPositionUs(JJ)I

    move-result v0

    return v0
.end method

.method public getAdGroupTimeUs(I)J
    .registers 4
    .param p1, "adGroupIndex"    # I

    .line 735
    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    return-wide v0
.end method

.method public getAdResumePositionUs()J
    .registers 3

    .line 857
    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    return-wide v0
.end method

.method public getAdState(II)I
    .registers 6
    .param p1, "adGroupIndex"    # I
    .param p2, "adIndexInAdGroup"    # I

    .line 835
    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v0

    .line 836
    .local v0, "adGroup":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    iget v1, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    .line 837
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    aget v1, v1, p2

    goto :goto_11

    .line 838
    :cond_10
    const/4 v1, 0x0

    .line 836
    :goto_11
    return v1
.end method

.method public getAdsId()Ljava/lang/Object;
    .registers 2

    .line 710
    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    return-object v0
.end method

.method public getContentResumeOffsetUs(I)J
    .registers 4
    .param p1, "adGroupIndex"    # I

    .line 879
    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    return-wide v0
.end method

.method public getDurationMs()J
    .registers 3

    .line 681
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDurationUs()J
    .registers 3

    .line 686
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    return-wide v0
.end method

.method public getFirstAdIndexToPlay(I)I
    .registers 3
    .param p1, "adGroupIndex"    # I

    .line 747
    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->getFirstAdIndexToPlay()I

    move-result v0

    return v0
.end method

.method public getNextAdIndexToPlay(II)I
    .registers 4
    .param p1, "adGroupIndex"    # I
    .param p2, "lastPlayedAdIndex"    # I

    .line 761
    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->getNextAdIndexToPlay(I)I

    move-result v0

    return v0
.end method

.method public getPositionInWindowMs()J
    .registers 3

    .line 695
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->positionInWindowUs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPositionInWindowUs()J
    .registers 3

    .line 704
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->positionInWindowUs:J

    return-wide v0
.end method

.method public getRemovedAdGroupCount()I
    .registers 2

    .line 723
    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget v0, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    return v0
.end method

.method public hasPlayedAdGroup(I)Z
    .registers 3
    .param p1, "adGroupIndex"    # I

    .line 773
    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->hasUnplayedAds()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hashCode()I
    .registers 8

    .line 902
    const/4 v0, 0x7

    .line 903
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/Timeline$Period;->id:Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez v2, :cond_a

    const/4 v2, 0x0

    goto :goto_e

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_e
    add-int/2addr v1, v2

    .line 904
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    if-nez v2, :cond_16

    goto :goto_1a

    :cond_16
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1a
    add-int/2addr v0, v3

    .line 905
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    add-int/2addr v1, v2

    .line 906
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v0, v3

    .line 907
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/Timeline$Period;->positionInWindowUs:J

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v1, v3

    .line 908
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/Timeline$Period;->isPlaceholder:Z

    add-int/2addr v0, v2

    .line 909
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 910
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public isLivePostrollPlaceholder(I)Z
    .registers 4
    .param p1, "adGroupIndex"    # I

    .line 848
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_11

    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 849
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->isLivePostrollPlaceholder(I)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    .line 848
    :goto_12
    return v1
.end method

.method public isServerSideInsertedAdGroup(I)Z
    .registers 3
    .param p1, "adGroupIndex"    # I

    .line 868
    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    return v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lcom/google/android/exoplayer2/Timeline$Period;
    .registers 18
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "uid"    # Ljava/lang/Object;
    .param p3, "windowIndex"    # I
    .param p4, "durationUs"    # J
    .param p6, "positionInWindowUs"    # J

    .line 631
    sget-object v8, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->NONE:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/exoplayer2/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/google/android/exoplayer2/source/ads/AdPlaybackState;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/google/android/exoplayer2/source/ads/AdPlaybackState;Z)Lcom/google/android/exoplayer2/Timeline$Period;
    .registers 10
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "uid"    # Ljava/lang/Object;
    .param p3, "windowIndex"    # I
    .param p4, "durationUs"    # J
    .param p6, "positionInWindowUs"    # J
    .param p8, "adPlaybackState"    # Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .param p9, "isPlaceholder"    # Z

    .line 669
    iput-object p1, p0, Lcom/google/android/exoplayer2/Timeline$Period;->id:Ljava/lang/Object;

    .line 670
    iput-object p2, p0, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    .line 671
    iput p3, p0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 672
    iput-wide p4, p0, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    .line 673
    iput-wide p6, p0, Lcom/google/android/exoplayer2/Timeline$Period;->positionInWindowUs:J

    .line 674
    iput-object p8, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 675
    iput-boolean p9, p0, Lcom/google/android/exoplayer2/Timeline$Period;->isPlaceholder:Z

    .line 676
    return-object p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 7

    .line 929
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 930
    .local v0, "bundle":Landroid/os/Bundle;
    iget v1, p0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    if-eqz v1, :cond_e

    .line 931
    sget-object v2, Lcom/google/android/exoplayer2/Timeline$Period;->FIELD_WINDOW_INDEX:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 933
    :cond_e
    iget-wide v1, p0, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1e

    .line 934
    sget-object v3, Lcom/google/android/exoplayer2/Timeline$Period;->FIELD_DURATION_US:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 936
    :cond_1e
    iget-wide v1, p0, Lcom/google/android/exoplayer2/Timeline$Period;->positionInWindowUs:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2b

    .line 937
    sget-object v3, Lcom/google/android/exoplayer2/Timeline$Period;->FIELD_POSITION_IN_WINDOW_US:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 939
    :cond_2b
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/Timeline$Period;->isPlaceholder:Z

    if-eqz v1, :cond_34

    .line 940
    sget-object v2, Lcom/google/android/exoplayer2/Timeline$Period;->FIELD_PLACEHOLDER:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 942
    :cond_34
    iget-object v1, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    sget-object v2, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->NONE:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 943
    sget-object v1, Lcom/google/android/exoplayer2/Timeline$Period;->FIELD_AD_PLAYBACK_STATE:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 945
    :cond_49
    return-object v0
.end method
