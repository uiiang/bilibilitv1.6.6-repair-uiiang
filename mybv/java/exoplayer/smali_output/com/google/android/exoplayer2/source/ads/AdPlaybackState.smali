.class public final Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
.super Ljava/lang/Object;
.source "AdPlaybackState.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;,
        Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdState;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final AD_STATE_AVAILABLE:I = 0x1

.field public static final AD_STATE_ERROR:I = 0x4

.field public static final AD_STATE_PLAYED:I = 0x3

.field public static final AD_STATE_SKIPPED:I = 0x2

.field public static final AD_STATE_UNAVAILABLE:I

.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_AD_GROUPS:Ljava/lang/String;

.field private static final FIELD_AD_RESUME_POSITION_US:Ljava/lang/String;

.field private static final FIELD_CONTENT_DURATION_US:Ljava/lang/String;

.field private static final FIELD_REMOVED_AD_GROUP_COUNT:Ljava/lang/String;

.field public static final NONE:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

.field private static final REMOVED_AD_GROUP:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;


# instance fields
.field public final adGroupCount:I

.field private final adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

.field public final adResumePositionUs:J

.field public final adsId:Ljava/lang/Object;

.field public final contentDurationUs:J

.field public final removedAdGroupCount:I


# direct methods
.method public static synthetic $r8$lambda$v7MSQh9nkbSNgVVbdfE7aSUxQOQ(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 10

    .line 558
    new-instance v8, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    const/4 v1, 0x0

    const/4 v9, 0x0

    new-array v2, v9, [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    const-wide/16 v3, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V

    sput-object v8, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->NONE:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 566
    new-instance v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;-><init>(J)V

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->withAdCount(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->REMOVED_AD_GROUP:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 1166
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->FIELD_AD_GROUPS:Ljava/lang/String;

    .line 1167
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->FIELD_AD_RESUME_POSITION_US:Ljava/lang/String;

    .line 1168
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->FIELD_CONTENT_DURATION_US:Ljava/lang/String;

    .line 1169
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->FIELD_REMOVED_AD_GROUP_COUNT:Ljava/lang/String;

    .line 1205
    new-instance v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Object;[J)V
    .registers 11
    .param p1, "adsId"    # Ljava/lang/Object;
    .param p2, "adGroupTimesUs"    # [J

    .line 599
    nop

    .line 601
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->createEmptyAdGroups([J)[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    .line 599
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V

    .line 605
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V
    .registers 9
    .param p1, "adsId"    # Ljava/lang/Object;
    .param p2, "adGroups"    # [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    .param p3, "adResumePositionUs"    # J
    .param p5, "contentDurationUs"    # J
    .param p7, "removedAdGroupCount"    # I

    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 613
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    .line 614
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    .line 615
    iput-wide p5, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    .line 616
    array-length v0, p2

    add-int/2addr v0, p7

    iput v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    .line 617
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 618
    iput p7, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    .line 619
    return-void
.end method

.method private static createEmptyAdGroups([J)[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    .registers 6
    .param p0, "adGroupTimesUs"    # [J

    .line 1229
    array-length v0, p0

    new-array v0, v0, [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 1230
    .local v0, "adGroups":[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, v0

    if-ge v1, v2, :cond_13

    .line 1231
    new-instance v2, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    aget-wide v3, p0, v1

    invoke-direct {v2, v3, v4}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;-><init>(J)V

    aput-object v2, v0, v1

    .line 1230
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1233
    .end local v1    # "i":I
    :cond_13
    return-object v0
.end method

.method public static fromAdPlaybackState(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .registers 19
    .param p0, "adsId"    # Ljava/lang/Object;
    .param p1, "adPlaybackState"    # Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 1043
    move-object/from16 v0, p1

    iget v1, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    iget v2, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    sub-int/2addr v1, v2

    new-array v1, v1, [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 1045
    .local v1, "adGroups":[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    array-length v3, v1

    if-ge v2, v3, :cond_46

    .line 1046
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    aget-object v3, v3, v2

    .line 1047
    .local v3, "adGroup":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    new-instance v16, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    iget-wide v5, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    iget v7, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    iget v8, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->originalCount:I

    iget-object v4, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    iget-object v9, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    array-length v9, v9

    .line 1052
    invoke-static {v4, v9}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v9

    iget-object v4, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    iget-object v10, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    array-length v10, v10

    .line 1053
    invoke-static {v4, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, [Landroid/net/Uri;

    iget-object v4, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    iget-object v11, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    array-length v11, v11

    .line 1054
    invoke-static {v4, v11}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v11

    iget-wide v12, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    iget-boolean v14, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    const/4 v15, 0x0

    move-object/from16 v4, v16

    invoke-direct/range {v4 .. v15}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;-><init>(JII[I[Landroid/net/Uri;[JJZLcom/google/android/exoplayer2/source/ads/AdPlaybackState$1;)V

    aput-object v16, v1, v2

    .line 1045
    .end local v3    # "adGroup":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1058
    .end local v2    # "i":I
    :cond_46
    new-instance v10, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-wide v5, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    iget v9, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    move-object v2, v10

    move-object/from16 v3, p0

    move-object v4, v1

    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V

    return-object v10
.end method

.method private static fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .registers 18
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 1208
    move-object/from16 v0, p0

    sget-object v1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->FIELD_AD_GROUPS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1210
    .local v1, "adGroupBundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-nez v1, :cond_e

    .line 1211
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .local v2, "adGroups":[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    goto :goto_2e

    .line 1213
    .end local v2    # "adGroups":[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    :cond_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 1214
    .restart local v2    # "adGroups":[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2e

    .line 1215
    sget-object v4, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    aput-object v4, v2, v3

    .line 1214
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 1218
    .end local v3    # "i":I
    :cond_2e
    :goto_2e
    sget-object v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->FIELD_AD_RESUME_POSITION_US:Ljava/lang/String;

    sget-object v4, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->NONE:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-wide v5, v4, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    .line 1219
    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 1220
    .local v12, "adResumePositionUs":J
    sget-object v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->FIELD_CONTENT_DURATION_US:Ljava/lang/String;

    iget-wide v5, v4, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    .line 1221
    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 1222
    .local v14, "contentDurationUs":J
    sget-object v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->FIELD_REMOVED_AD_GROUP_COUNT:Ljava/lang/String;

    iget v4, v4, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    .line 1223
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1224
    .local v3, "removedAdGroupCount":I
    new-instance v16, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    const/4 v5, 0x0

    move-object/from16 v4, v16

    move-object v6, v2

    move-wide v7, v12

    move-wide v9, v14

    move v11, v3

    invoke-direct/range {v4 .. v11}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V

    return-object v16
.end method

.method private isPositionBeforeAdGroup(JJI)Z
    .registers 14
    .param p1, "positionUs"    # J
    .param p3, "periodDurationUs"    # J
    .param p5, "adGroupIndex"    # I

    .line 1146
    const/4 v0, 0x0

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v3, p1, v1

    if-nez v3, :cond_8

    .line 1148
    return v0

    .line 1150
    :cond_8
    invoke-virtual {p0, p5}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v3

    .line 1151
    .local v3, "adGroup":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    iget-wide v4, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    .line 1152
    .local v4, "adGroupPositionUs":J
    const/4 v6, 0x1

    cmp-long v7, v4, v1

    if-nez v7, :cond_2b

    .line 1157
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, p3, v1

    if-eqz v7, :cond_29

    iget-boolean v1, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    if-eqz v1, :cond_25

    iget v1, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_29

    :cond_25
    cmp-long v1, p1, p3

    if-gez v1, :cond_2a

    :cond_29
    const/4 v0, 0x1

    :cond_2a
    return v0

    .line 1161
    :cond_2b
    cmp-long v1, p1, v4

    if-gez v1, :cond_30

    const/4 v0, 0x1

    :cond_30
    return v0
.end method


# virtual methods
.method public endsWithLivePostrollPlaceHolder()Z
    .registers 4

    .line 1021
    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 1022
    .local v0, "adGroupIndex":I
    if-ltz v0, :cond_d

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->isLivePostrollPlaceholder(I)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .line 1068
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1069
    return v0

    .line 1071
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_48

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_48

    .line 1074
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 1075
    .local v2, "that":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-object v4, v2, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    iget v3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    iget v4, v2, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    if-ne v3, v4, :cond_46

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-wide v5, v2, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_46

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    iget-wide v5, v2, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_46

    iget v3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    iget v4, v2, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    if-ne v3, v4, :cond_46

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    iget-object v4, v2, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 1080
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    goto :goto_47

    :cond_46
    const/4 v0, 0x0

    .line 1075
    :goto_47
    return v0

    .line 1072
    .end local v2    # "that":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    :cond_48
    :goto_48
    return v1
.end method

.method public getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    .registers 4
    .param p1, "adGroupIndex"    # I

    .line 623
    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    if-ge p1, v0, :cond_7

    .line 624
    sget-object v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->REMOVED_AD_GROUP:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    goto :goto_d

    .line 625
    :cond_7
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    sub-int v0, p1, v0

    aget-object v0, v1, v0

    .line 623
    :goto_d
    return-object v0
.end method

.method public getAdGroupIndexAfterPositionUs(JJ)I
    .registers 12
    .param p1, "positionUs"    # J
    .param p3, "periodDurationUs"    # J

    .line 663
    const/4 v0, -0x1

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v3, p1, v1

    if-eqz v3, :cond_42

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, p3, v3

    if-eqz v5, :cond_15

    cmp-long v3, p1, p3

    if-ltz v3, :cond_15

    goto :goto_42

    .line 669
    :cond_15
    iget v3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    .line 670
    .local v3, "index":I
    :goto_17
    iget v4, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    if-ge v3, v4, :cond_3c

    .line 671
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v4

    iget-wide v4, v4, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    cmp-long v6, v4, v1

    if-eqz v6, :cond_2f

    .line 672
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v4

    iget-wide v4, v4, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    cmp-long v6, v4, p1

    if-lez v6, :cond_39

    .line 673
    :cond_2f
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->shouldPlayAdGroup()Z

    move-result v4

    if-nez v4, :cond_3c

    .line 674
    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 676
    :cond_3c
    iget v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    if-ge v3, v1, :cond_41

    move v0, v3

    :cond_41
    return v0

    .line 665
    .end local v3    # "index":I
    :cond_42
    :goto_42
    return v0
.end method

.method public getAdGroupIndexForPositionUs(JJ)I
    .registers 12
    .param p1, "positionUs"    # J
    .param p3, "periodDurationUs"    # J

    .line 643
    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    add-int/lit8 v0, v0, -0x1

    .line 644
    .local v0, "index":I
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->isLivePostrollPlaceholder(I)Z

    move-result v1

    sub-int/2addr v0, v1

    .line 645
    :goto_9
    if-ltz v0, :cond_18

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->isPositionBeforeAdGroup(JJI)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 646
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 648
    :cond_18
    if-ltz v0, :cond_26

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->hasUnplayedAds()Z

    move-result v1

    if-eqz v1, :cond_26

    move v1, v0

    goto :goto_27

    :cond_26
    const/4 v1, -0x1

    :goto_27
    return v1
.end method

.method public hashCode()I
    .registers 5

    .line 1085
    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    .line 1086
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    if-nez v2, :cond_a

    const/4 v2, 0x0

    goto :goto_e

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_e
    add-int/2addr v1, v2

    .line 1087
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    long-to-int v3, v2

    add-int/2addr v0, v3

    .line 1088
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    long-to-int v3, v2

    add-int/2addr v1, v3

    .line 1089
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    add-int/2addr v0, v2

    .line 1090
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1091
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public isAdInErrorState(II)Z
    .registers 7
    .param p1, "adGroupIndex"    # I
    .param p2, "adIndexInAdGroup"    # I

    .line 682
    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_6

    .line 683
    return v1

    .line 685
    :cond_6
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v0

    .line 686
    .local v0, "adGroup":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    iget v2, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1d

    iget v2, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    if-lt p2, v2, :cond_14

    goto :goto_1d

    .line 689
    :cond_14
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    aget v2, v2, p2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1

    .line 687
    :cond_1d
    :goto_1d
    return v1
.end method

.method public isLivePostrollPlaceholder(I)Z
    .registers 4
    .param p1, "adGroupIndex"    # I

    .line 1032
    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_11

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v0

    # invokes: Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->isLivePostrollPlaceholder()Z
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->access$000(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 9

    .line 1180
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1181
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1182
    .local v1, "adGroupBundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v3, :cond_1c

    aget-object v5, v2, v4

    .line 1183
    .local v5, "adGroup":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1182
    .end local v5    # "adGroup":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 1185
    :cond_1c
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_27

    .line 1186
    sget-object v2, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->FIELD_AD_GROUPS:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1188
    :cond_27
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    sget-object v4, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->NONE:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-wide v5, v4, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    cmp-long v7, v2, v5

    if-eqz v7, :cond_36

    .line 1189
    sget-object v5, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->FIELD_AD_RESUME_POSITION_US:Ljava/lang/String;

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1191
    :cond_36
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    iget-wide v5, v4, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    cmp-long v7, v2, v5

    if-eqz v7, :cond_43

    .line 1192
    sget-object v5, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->FIELD_CONTENT_DURATION_US:Ljava/lang/String;

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1194
    :cond_43
    iget v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    iget v3, v4, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    if-eq v2, v3, :cond_4e

    .line 1195
    sget-object v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->FIELD_REMOVED_AD_GROUP_COUNT:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1197
    :cond_4e
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .line 1096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1097
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "AdPlaybackState(adsId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1099
    const-string v1, ", adResumePositionUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1100
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1101
    const-string v1, ", adGroups=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1f
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    array-length v2, v2

    const-string v3, "])"

    if-ge v1, v2, :cond_b0

    .line 1103
    const-string v2, "adGroup(timeUs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    aget-object v2, v2, v1

    iget-wide v4, v2, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1105
    const-string v2, ", ads=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1106
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_3a
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    array-length v4, v4

    const-string v5, ", "

    if-ge v2, v4, :cond_9f

    .line 1107
    const-string v4, "ad(state="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    aget v4, v4, v2

    packed-switch v4, :pswitch_data_b8

    .line 1125
    const/16 v4, 0x3f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_79

    .line 1113
    :pswitch_5b
    const/16 v4, 0x21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1114
    goto :goto_79

    .line 1119
    :pswitch_61
    const/16 v4, 0x50

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1120
    goto :goto_79

    .line 1122
    :pswitch_67
    const/16 v4, 0x53

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1123
    goto :goto_79

    .line 1116
    :pswitch_6d
    const/16 v4, 0x52

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1117
    goto :goto_79

    .line 1110
    :pswitch_73
    const/16 v4, 0x5f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1111
    nop

    .line 1128
    :goto_79
    const-string v4, ", durationUs="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1129
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    aget-wide v6, v4, v2

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1130
    const/16 v4, 0x29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1131
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_9c

    .line 1132
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1106
    :cond_9c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 1135
    .end local v2    # "j":I
    :cond_9f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_ac

    .line 1137
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    :cond_ac
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1f

    .line 1140
    .end local v1    # "i":I
    :cond_b0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_73
        :pswitch_6d
        :pswitch_67
        :pswitch_61
        :pswitch_5b
    .end packed-switch
.end method

.method public withAdCount(II)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .registers 14
    .param p1, "adGroupIndex"    # I
    .param p2, "adCount"    # I

    .line 741
    if-lez p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 742
    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    sub-int v0, p1, v0

    .line 743
    .local v0, "adjustedIndex":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    if-ne v1, p2, :cond_15

    .line 744
    return-object p0

    .line 746
    :cond_15
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    array-length v2, v1

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 747
    .local v1, "adGroups":[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    aget-object v2, v2, v0

    invoke-virtual {v2, p2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->withAdCount(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v2

    aput-object v2, v1, v0

    .line 748
    new-instance v10, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    iget v9, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    move-object v2, v10

    move-object v4, v1

    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V

    return-object v10
.end method

.method public varargs withAdDurationsUs(I[J)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .registers 14
    .param p1, "adGroupIndex"    # I
    .param p2, "adDurationsUs"    # [J

    .line 869
    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    sub-int v0, p1, v0

    .line 870
    .local v0, "adjustedIndex":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    array-length v2, v1

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 871
    .local v1, "adGroups":[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    aget-object v2, v1, v0

    invoke-virtual {v2, p2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->withAdDurationsUs([J)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v2

    aput-object v2, v1, v0

    .line 872
    new-instance v10, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    iget v9, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    move-object v2, v10

    move-object v4, v1

    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V

    return-object v10
.end method

.method public withAdDurationsUs([[J)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .registers 12
    .param p1, "adDurationUs"    # [[J

    .line 853
    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 854
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    array-length v1, v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 855
    .local v0, "adGroups":[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    const/4 v1, 0x0

    .local v1, "adGroupIndex":I
    :goto_14
    iget v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    if-ge v1, v2, :cond_25

    .line 856
    aget-object v2, v0, v1

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->withAdDurationsUs([J)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v2

    aput-object v2, v0, v1

    .line 855
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 858
    .end local v1    # "adGroupIndex":I
    :cond_25
    new-instance v9, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    iget v8, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    move-object v1, v9

    move-object v3, v0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V

    return-object v9
.end method

.method public withAdGroupTimeUs(IJ)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .registers 15
    .param p1, "adGroupIndex"    # I
    .param p2, "adGroupTimeUs"    # J

    .line 703
    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    sub-int v0, p1, v0

    .line 704
    .local v0, "adjustedIndex":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    array-length v2, v1

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 705
    .local v1, "adGroups":[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    aget-object v2, v2, v0

    invoke-virtual {v2, p2, p3}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->withTimeUs(J)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v2

    aput-object v2, v1, v0

    .line 706
    new-instance v10, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    iget v9, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    move-object v2, v10

    move-object v4, v1

    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V

    return-object v10
.end method

.method public withAdLoadError(II)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .registers 14
    .param p1, "adGroupIndex"    # I
    .param p2, "adIndexInAdGroup"    # I

    .line 826
    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    sub-int v0, p1, v0

    .line 827
    .local v0, "adjustedIndex":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    array-length v2, v1

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 828
    .local v1, "adGroups":[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    aget-object v2, v1, v0

    const/4 v3, 0x4

    invoke-virtual {v2, v3, p2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->withAdState(II)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v2

    aput-object v2, v1, v0

    .line 829
    new-instance v10, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    iget v9, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    move-object v2, v10

    move-object v4, v1

    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V

    return-object v10
.end method

.method public withAdResumePositionUs(J)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .registers 14
    .param p1, "adResumePositionUs"    # J

    .line 882
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_7

    .line 883
    return-object p0

    .line 885
    :cond_7
    new-instance v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    iget-wide v8, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    iget v10, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    move-object v3, v0

    move-wide v6, p1

    invoke-direct/range {v3 .. v10}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V

    return-object v0
.end method

.method public withAvailableAd(II)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .registers 4
    .param p1, "adGroupIndex"    # I
    .param p2, "adIndexInAdGroup"    # I

    .line 782
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->withAvailableAdUri(IILandroid/net/Uri;)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public withAvailableAdUri(IILandroid/net/Uri;)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .registers 15
    .param p1, "adGroupIndex"    # I
    .param p2, "adIndexInAdGroup"    # I
    .param p3, "uri"    # Landroid/net/Uri;

    .line 762
    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    sub-int v0, p1, v0

    .line 763
    .local v0, "adjustedIndex":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    array-length v2, v1

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 764
    .local v1, "adGroups":[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v2, p3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    aget-object v2, v1, v0

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    if-eqz v2, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v2, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v2, 0x1

    :goto_1f
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 765
    aget-object v2, v1, v0

    invoke-virtual {v2, p3, p2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->withAdUri(Landroid/net/Uri;I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v2

    aput-object v2, v1, v0

    .line 766
    new-instance v10, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    iget v9, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    move-object v2, v10

    move-object v4, v1

    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V

    return-object v10
.end method

.method public withContentDurationUs(J)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .registers 14
    .param p1, "contentDurationUs"    # J

    .line 893
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_7

    .line 894
    return-object p0

    .line 896
    :cond_7
    new-instance v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget v10, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    move-object v3, v0

    move-wide v8, p1

    invoke-direct/range {v3 .. v10}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V

    return-object v0
.end method

.method public withContentResumeOffsetUs(IJ)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .registers 15
    .param p1, "adGroupIndex"    # I
    .param p2, "contentResumeOffsetUs"    # J

    .line 933
    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    sub-int v0, p1, v0

    .line 934
    .local v0, "adjustedIndex":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    aget-object v1, v1, v0

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    cmp-long v3, v1, p2

    if-nez v3, :cond_f

    .line 935
    return-object p0

    .line 937
    :cond_f
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    array-length v2, v1

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 938
    .local v1, "adGroups":[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    aget-object v2, v1, v0

    .line 939
    invoke-virtual {v2, p2, p3}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->withContentResumeOffsetUs(J)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v2

    aput-object v2, v1, v0

    .line 940
    new-instance v10, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    iget v9, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    move-object v2, v10

    move-object v4, v1

    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V

    return-object v10
.end method

.method public withIsServerSideInserted(IZ)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .registers 14
    .param p1, "adGroupIndex"    # I
    .param p2, "isServerSideInserted"    # Z

    .line 968
    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    sub-int v0, p1, v0

    .line 969
    .local v0, "adjustedIndex":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    if-ne v1, p2, :cond_d

    .line 970
    return-object p0

    .line 972
    :cond_d
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    array-length v2, v1

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 973
    .local v1, "adGroups":[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    aget-object v2, v1, v0

    .line 974
    invoke-virtual {v2, p2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->withIsServerSideInserted(Z)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v2

    aput-object v2, v1, v0

    .line 975
    new-instance v10, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    iget v9, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    move-object v2, v10

    move-object v4, v1

    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V

    return-object v10
.end method

.method public withLastAdRemoved(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .registers 13
    .param p1, "adGroupIndex"    # I

    .line 812
    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    sub-int v0, p1, v0

    .line 813
    .local v0, "adjustedIndex":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    array-length v2, v1

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 814
    .local v1, "adGroups":[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->withLastAdRemoved()Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v2

    aput-object v2, v1, v0

    .line 815
    new-instance v10, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    iget v9, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    move-object v2, v10

    move-object v4, v1

    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V

    return-object v10
.end method

.method public withLivePostrollPlaceholderAppended()Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .registers 4

    .line 1010
    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    const-wide/high16 v1, -0x8000000000000000L

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->withNewAdGroup(IJ)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    .line 1011
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->withIsServerSideInserted(IZ)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object v0

    .line 1010
    return-object v0
.end method

.method public withNewAdGroup(IJ)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .registers 16
    .param p1, "adGroupIndex"    # I
    .param p2, "adGroupTimeUs"    # J

    .line 720
    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    sub-int v0, p1, v0

    .line 721
    .local v0, "adjustedIndex":I
    new-instance v1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    invoke-direct {v1, p2, p3}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;-><init>(J)V

    .line 722
    .local v1, "newAdGroup":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayAppend([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 723
    .local v2, "adGroups":[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    array-length v4, v4

    sub-int/2addr v4, v0

    invoke-static {v2, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 729
    aput-object v1, v2, v0

    .line 730
    new-instance v11, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    iget v10, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    move-object v3, v11

    move-object v5, v2

    invoke-direct/range {v3 .. v10}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V

    return-object v11
.end method

.method public withOriginalAdCount(II)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .registers 14
    .param p1, "adGroupIndex"    # I
    .param p2, "originalAdCount"    # I

    .line 951
    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    sub-int v0, p1, v0

    .line 952
    .local v0, "adjustedIndex":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->originalCount:I

    if-ne v1, p2, :cond_d

    .line 953
    return-object p0

    .line 955
    :cond_d
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    array-length v2, v1

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 956
    .local v1, "adGroups":[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    aget-object v2, v1, v0

    invoke-virtual {v2, p2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->withOriginalAdCount(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v2

    aput-object v2, v1, v0

    .line 957
    new-instance v10, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    iget v9, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    move-object v2, v10

    move-object v4, v1

    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V

    return-object v10
.end method

.method public withPlayedAd(II)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .registers 14
    .param p1, "adGroupIndex"    # I
    .param p2, "adIndexInAdGroup"    # I

    .line 789
    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    sub-int v0, p1, v0

    .line 790
    .local v0, "adjustedIndex":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    array-length v2, v1

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 791
    .local v1, "adGroups":[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    aget-object v2, v1, v0

    .line 792
    const/4 v3, 0x3

    invoke-virtual {v2, v3, p2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->withAdState(II)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v2

    aput-object v2, v1, v0

    .line 793
    new-instance v10, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    iget v9, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    move-object v2, v10

    move-object v4, v1

    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V

    return-object v10
.end method

.method public withRemovedAdGroupCount(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .registers 12
    .param p1, "removedAdGroupCount"    # I

    .line 910
    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    if-ne v0, p1, :cond_5

    .line 911
    return-object p0

    .line 913
    :cond_5
    const/4 v1, 0x0

    if-le p1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 914
    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    sub-int/2addr v0, p1

    new-array v0, v0, [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 915
    .local v0, "adGroups":[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    iget v3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    sub-int v3, p1, v3

    array-length v4, v0

    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 921
    new-instance v1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    move-object v2, v1

    move-object v4, v0

    move v9, p1

    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V

    return-object v1
.end method

.method public withResetAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .registers 13
    .param p1, "adGroupIndex"    # I

    .line 985
    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    sub-int v0, p1, v0

    .line 986
    .local v0, "adjustedIndex":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    array-length v2, v1

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 987
    .local v1, "adGroups":[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->withAllAdsReset()Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v2

    aput-object v2, v1, v0

    .line 988
    new-instance v10, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    iget v9, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    move-object v2, v10

    move-object v4, v1

    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V

    return-object v10
.end method

.method public withSkippedAd(II)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .registers 14
    .param p1, "adGroupIndex"    # I
    .param p2, "adIndexInAdGroup"    # I

    .line 801
    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    sub-int v0, p1, v0

    .line 802
    .local v0, "adjustedIndex":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    array-length v2, v1

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 803
    .local v1, "adGroups":[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    aget-object v2, v1, v0

    .line 804
    const/4 v3, 0x2

    invoke-virtual {v2, v3, p2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->withAdState(II)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v2

    aput-object v2, v1, v0

    .line 805
    new-instance v10, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    iget v9, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    move-object v2, v10

    move-object v4, v1

    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V

    return-object v10
.end method

.method public withSkippedAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .registers 13
    .param p1, "adGroupIndex"    # I

    .line 839
    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    sub-int v0, p1, v0

    .line 840
    .local v0, "adjustedIndex":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    array-length v2, v1

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 841
    .local v1, "adGroups":[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->withAllAdsSkipped()Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v2

    aput-object v2, v1, v0

    .line 842
    new-instance v10, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    iget v9, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    move-object v2, v10

    move-object v4, v1

    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V

    return-object v10
.end method
