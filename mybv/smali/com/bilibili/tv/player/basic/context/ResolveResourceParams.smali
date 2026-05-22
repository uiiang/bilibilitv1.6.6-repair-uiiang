.class public Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;
.super Ljava/lang/Object;
.source "ResolveResourceParams.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$ExtraParams;,
        Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$JsonResponse;,
        Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$PlayInfoCallback;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_FLASH_RESOURCE:Ljava/lang/String; = "flash_media_resource"

.field public static final KEY_ORIGINAL_FROM:Ljava/lang/String; = "original_from"

.field public static final KEY_SEASON_TYPE:Ljava/lang/String; = "season_type"

.field public static final KEY_TRACK_PATH:Ljava/lang/String; = "track_path"


# instance fields
.field public clip_info_list:Lorg/json/JSONArray;

.field public mAdParams:Lcom/bilibili/tv/player/basic/context/AdParams;

.field public mAuthor:Ljava/lang/String;

.field public mAvid:J

.field public mBadgeBgColor:Ljava/lang/String;

.field public mBadgeText:Ljava/lang/String;

.field public mBvid:Ljava/lang/String;

.field public mCanProjectionScreen:Z

.field public mCid:J

.field public mCodecMode:Ljava/lang/String;

.field public mDanmakus:Ljava/lang/String;

.field public mDuration:I

.field public mEnablePlayUrlHttps:Z

.field public mEpCover:Ljava/lang/String;

.field public mEpisodeId:J

.field public mExpectedQuality:I

.field public mExpectedTypeTag:Ljava/lang/String;

.field public mExtraParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$ExtraParams;

.field public mFrom:Ljava/lang/String;

.field public mHasAlias:Z

.field public mHideUpIcon:Z

.field public mLink:Ljava/lang/String;

.field public mListKey:Ljava/lang/String;

.field public mListType:I

.field public mMid:J

.field public mNoHistoryPlay:Z

.field public mPage:I

.field public mPageIndex:Ljava/lang/String;

.field public mPageTitle:Ljava/lang/String;

.field public mPlays:Ljava/lang/String;

.field public mProgress:I

.field public mPubDate:J

.field public mRawVid:Ljava/lang/String;

.field public mRequestFromDownloader:Z

.field public mResolveBiliCdnPlay:Z

.field public mRoomId:I

.field public mSeasonId:Ljava/lang/String;

.field public mSpid:I

.field public mStartPlayTime:J

.field public mStartTimeMS:J

.field public mTid:I

.field public mType:Ljava/lang/String;

.field public mUserAgent:Ljava/lang/String;

.field public mVid:Ljava/lang/String;

.field public mWeb:Ljava/lang/String;

.field public skips:Lorg/json/JSONArray;

.field public subtitle_data:Lorg/json/JSONObject;

.field public subtitle_info:Lorg/json/JSONObject;

.field public volatile view_points:Lorg/json/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$1;

    invoke-direct {v0}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$1;-><init>()V

    sput-object v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    new-instance v0, Lcom/bilibili/tv/player/basic/context/BaseExtraParams;

    invoke-direct {v0}, Lcom/bilibili/tv/player/basic/context/BaseExtraParams;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExtraParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$ExtraParams;

    .line 480
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    new-instance v0, Lcom/bilibili/tv/player/basic/context/BaseExtraParams;

    invoke-direct {v0}, Lcom/bilibili/tv/player/basic/context/BaseExtraParams;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExtraParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$ExtraParams;

    .line 582
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    .line 583
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    .line 584
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mVid:Ljava/lang/String;

    .line 585
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mLink:Ljava/lang/String;

    .line 586
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mRawVid:Ljava/lang/String;

    .line 587
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageIndex:Ljava/lang/String;

    .line 588
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    .line 589
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_129

    move v0, v1

    :goto_3d
    iput-boolean v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mHasAlias:Z

    .line 590
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSpid:I

    .line 591
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    .line 592
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPage:I

    .line 593
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mTid:I

    .line 594
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_12c

    move v0, v1

    :goto_5e
    iput-boolean v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mRequestFromDownloader:Z

    .line 595
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    .line 596
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    .line 597
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpCover:Ljava/lang/String;

    .line 598
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_12f

    move v0, v1

    :goto_79
    iput-boolean v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mResolveBiliCdnPlay:Z

    .line 599
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    .line 600
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedTypeTag:Ljava/lang/String;

    .line 601
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mUserAgent:Ljava/lang/String;

    .line 602
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mWeb:Ljava/lang/String;

    .line 603
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCodecMode:Ljava/lang/String;

    .line 604
    const-class v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$ExtraParams;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$ExtraParams;

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExtraParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$ExtraParams;

    .line 605
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_132

    move v0, v1

    :goto_ae
    iput-boolean v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEnablePlayUrlHttps:Z

    .line 606
    const-class v0, Lcom/bilibili/tv/player/basic/context/AdParams;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/player/basic/context/AdParams;

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAdParams:Lcom/bilibili/tv/player/basic/context/AdParams;

    .line 607
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mType:Ljava/lang/String;

    .line 609
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mProgress:I

    .line 610
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mBvid:Ljava/lang/String;

    .line 611
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_135

    move v0, v1

    :goto_d7
    iput-boolean v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mNoHistoryPlay:Z

    .line 612
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDuration:I

    .line 614
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mMid:J

    .line 616
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPubDate:J

    .line 617
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAuthor:Ljava/lang/String;

    .line 618
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPlays:Ljava/lang/String;

    .line 619
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDanmakus:Ljava/lang/String;

    .line 620
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mBadgeText:Ljava/lang/String;

    .line 621
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mBadgeBgColor:Ljava/lang/String;

    .line 622
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_137

    :goto_10f
    iput-boolean v1, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mHideUpIcon:Z

    .line 623
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListKey:Ljava/lang/String;

    .line 625
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 626
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_128

    .line 628
    :try_start_121
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->view_points:Lorg/json/JSONArray;
    :try_end_128
    .catch Lorg/json/JSONException; {:try_start_121 .. :try_end_128} :catch_139

    .line 633
    :cond_128
    :goto_128
    return-void

    :cond_129
    move v0, v2

    .line 589
    goto/16 :goto_3d

    :cond_12c
    move v0, v2

    .line 594
    goto/16 :goto_5e

    :cond_12f
    move v0, v2

    .line 598
    goto/16 :goto_79

    :cond_132
    move v0, v2

    .line 605
    goto/16 :goto_ae

    :cond_135
    move v0, v2

    .line 611
    goto :goto_d7

    :cond_137
    move v1, v2

    .line 622
    goto :goto_10f

    .line 629
    :catch_139
    move-exception v0

    .line 630
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->view_points:Lorg/json/JSONArray;

    goto :goto_128
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    new-instance v0, Lcom/bilibili/tv/player/basic/context/BaseExtraParams;

    invoke-direct {v0}, Lcom/bilibili/tv/player/basic/context/BaseExtraParams;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExtraParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$ExtraParams;

    .line 484
    iput-object p1, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    .line 485
    iput-wide p2, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    .line 486
    iput-object p4, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mVid:Ljava/lang/String;

    .line 487
    iput-object p6, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mLink:Ljava/lang/String;

    .line 488
    iput-object p5, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mRawVid:Ljava/lang/String;

    .line 489
    iput-boolean p7, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mHasAlias:Z

    .line 490
    iput-wide p8, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    .line 491
    iput p10, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPage:I

    .line 492
    iput-object p11, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    .line 493
    iput p12, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mTid:I

    .line 494
    iput-object p13, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mType:Ljava/lang/String;

    .line 495
    return-void
.end method

.method private extractSkipInfoFromClipInfoList()Lorg/json/JSONArray;
    .locals 12

    .prologue
    const-wide/high16 v10, 0x7ff8000000000000L    # Double.NaN

    .line 142
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 143
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->clip_info_list:Lorg/json/JSONArray;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->clip_info_list:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_15

    :cond_13
    move-object v0, v2

    .line 189
    :goto_14
    return-object v0

    .line 147
    :cond_15
    const-string v0, "SkipInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Extracting from clip_info_list, count="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->clip_info_list:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v0, 0x0

    :goto_34
    iget-object v1, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->clip_info_list:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_112

    .line 150
    iget-object v1, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->clip_info_list:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 151
    if-nez v3, :cond_47

    .line 149
    :cond_44
    :goto_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 153
    :cond_47
    const-string v1, "clipType"

    const-string v4, "clip_type"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 156
    const-string v4, "CLIP_TYPE_OP"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_fc

    .line 157
    sget-object v1, Lmybl/BiliFilter;->skip_categories:Ljava/util/Set;

    const-string v4, "intro"

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 158
    const-string v1, "\u7247\u5934"

    .line 166
    :goto_6d
    const-string v4, "start"

    invoke-virtual {v3, v4, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    .line 167
    const-string v6, "end"

    invoke-virtual {v3, v6, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    .line 169
    invoke-static {v4, v5}, Ljava/lang/Double;->isFinite(D)Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-static {v6, v7}, Ljava/lang/Double;->isFinite(D)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 171
    invoke-direct {p0, v4, v5}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->normalizeClipTimeToMs(D)J

    move-result-wide v4

    .line 172
    invoke-direct {p0, v6, v7}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->normalizeClipTimeToMs(D)J

    move-result-wide v6

    .line 174
    cmp-long v3, v6, v4

    if-lez v3, :cond_44

    .line 177
    :try_start_91
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 178
    const-string v8, "type"

    invoke-virtual {v3, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    const-string v8, "start"

    invoke-virtual {v3, v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 180
    const-string v8, "end"

    invoke-virtual {v3, v8, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 181
    const-string v8, "source"

    const-string v9, "pgc_clip"

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 183
    const-string v3, "SkipInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Added clip segment: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_db} :catch_dd

    goto/16 :goto_44

    .line 184
    :catch_dd
    move-exception v1

    .line 185
    const-string v3, "SkipInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create skip info: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44

    .line 159
    :cond_fc
    const-string v4, "CLIP_TYPE_ED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 160
    sget-object v1, Lmybl/BiliFilter;->skip_categories:Ljava/util/Set;

    const-string v4, "outro"

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 161
    const-string v1, "\u7247\u5c3e"

    goto/16 :goto_6d

    :cond_112
    move-object v0, v2

    .line 189
    goto/16 :goto_14
.end method

.method private fetchSponsorBlockSegments()Lorg/json/JSONArray;
    .locals 14

    .prologue
    const/4 v1, 0x0

    const-wide/16 v12, 0x3e8

    .line 201
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 203
    invoke-virtual {p0}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->isBangumi()Z

    move-result v0

    if-eqz v0, :cond_122

    .line 204
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 205
    new-instance v3, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$2;

    invoke-direct {v3, p0}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$2;-><init>(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 220
    :try_start_1b
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 221
    if-eqz v0, :cond_121

    .line 222
    const-string v3, "result"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "episodes"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_121

    .line 224
    :goto_31
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_121

    .line 225
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 226
    const-string v4, "ep_id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    iget-wide v6, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_50

    const-string v4, "skip"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_53

    .line 224
    :cond_50
    :goto_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 228
    :cond_53
    const-string v4, "skip"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "op"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_b7

    sget-object v4, Lmybl/BiliFilter;->skip_categories:Ljava/util/Set;

    const-string v5, "intro"

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b7

    .line 229
    const-string v4, "skip"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "op"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "start"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 230
    const-string v6, "skip"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "op"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "end"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 231
    cmpg-double v8, v4, v6

    if-gez v8, :cond_b7

    .line 232
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 233
    const-string v9, "type"

    const-string v10, "\u7247\u5934"

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    const-string v9, "start"

    double-to-long v4, v4

    mul-long/2addr v4, v12

    invoke-virtual {v8, v9, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 235
    const-string v4, "end"

    double-to-long v6, v6

    mul-long/2addr v6, v12

    invoke-virtual {v8, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 236
    const-string v4, "source"

    const-string v5, "pgc_ep_list"

    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 237
    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 240
    :cond_b7
    const-string v4, "skip"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "ed"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_50

    sget-object v4, Lmybl/BiliFilter;->skip_categories:Ljava/util/Set;

    const-string v5, "outro"

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 241
    const-string v4, "skip"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "ed"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "start"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 242
    const-string v6, "skip"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v6, "ed"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v6, "end"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 243
    cmpg-double v3, v4, v6

    if-gez v3, :cond_50

    .line 244
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 245
    const-string v8, "type"

    const-string v9, "\u7247\u5c3e"

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    const-string v8, "start"

    double-to-long v4, v4

    mul-long/2addr v4, v12

    invoke-virtual {v3, v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 247
    const-string v4, "end"

    double-to-long v6, v6

    mul-long/2addr v6, v12

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 248
    const-string v4, "source"

    const-string v5, "pgc_ep_list"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_11b} :catch_11d

    goto/16 :goto_50

    .line 255
    :catch_11d
    move-exception v0

    .line 256
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 319
    :cond_121
    :goto_121
    return-object v2

    .line 259
    :cond_122
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 260
    new-instance v3, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$3;

    invoke-direct {v3, p0}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$3;-><init>(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 294
    :try_start_12f
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 295
    if-eqz v0, :cond_121

    .line 296
    :goto_137
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_121

    .line 297
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 298
    const-string v4, "segment"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 299
    if-eqz v4, :cond_150

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_153

    .line 296
    :cond_150
    :goto_150
    add-int/lit8 v1, v1, 0x1

    goto :goto_137

    .line 301
    :cond_153
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 302
    const-string v6, "category"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 303
    const-string v6, "intro"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_195

    const-string v3, "type"

    const-string v6, "\u7247\u5934"

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 308
    :goto_16d
    const-string v3, "start"

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v6

    double-to-long v6, v6

    mul-long/2addr v6, v12

    invoke-virtual {v5, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 309
    const-string v3, "end"

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v6

    double-to-long v6, v6

    mul-long/2addr v6, v12

    invoke-virtual {v5, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 310
    const-string v3, "source"

    const-string v4, "sponsorblock"

    invoke-virtual {v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 311
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_18f
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_18f} :catch_190

    goto :goto_150

    .line 314
    :catch_190
    move-exception v0

    .line 315
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_121

    .line 304
    :cond_195
    :try_start_195
    const-string v6, "outro"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a5

    const-string v3, "type"

    const-string v6, "\u7247\u5c3e"

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_16d

    .line 305
    :cond_1a5
    const-string v6, "sponsor"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_150

    const-string v3, "type"

    const-string v6, "\u786c\u5e7f"

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1b4
    .catch Ljava/lang/Exception; {:try_start_195 .. :try_end_1b4} :catch_190

    goto :goto_16d
.end method

.method private generateSegmentId(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 366
    const-string v0, "type"

    const-string v1, "unknown"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    const-string v1, "start"

    invoke-virtual {p1, v1, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 368
    const-string v1, "end"

    invoke-virtual {p1, v1, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getQualityFromTypeTag(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 663
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 664
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 665
    array-length v1, v0

    if-lez v1, :cond_23

    .line 667
    :try_start_f
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_1b} :catch_1d

    move-result v0

    .line 673
    :goto_1c
    return v0

    .line 668
    :catch_1d
    move-exception v0

    .line 669
    const-string v0, "unknown quality from type tag."

    invoke-static {v0}, Ltv/danmaku/android/log/BLog;->w(Ljava/lang/String;)V

    .line 673
    :cond_23
    const/4 v0, -0x1

    goto :goto_1c
.end method

.method private mergeSkipSegments(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 323
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    move v0, v1

    .line 325
    :goto_7
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_26

    .line 326
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 327
    if-nez v3, :cond_16

    .line 325
    :cond_13
    :goto_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 328
    :cond_16
    const-string v4, "pgc"

    invoke-direct {p0, v3, v4}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->generateSegmentId(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 329
    invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 330
    invoke-virtual {v2, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 334
    :cond_26
    :goto_26
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_45

    .line 335
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 336
    if-nez v0, :cond_35

    .line 334
    :cond_32
    :goto_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 337
    :cond_35
    const-string v3, "sb"

    invoke-direct {p0, v0, v3}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->generateSegmentId(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 338
    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    .line 339
    invoke-virtual {v2, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    .line 343
    :cond_45
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 345
    new-instance v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$4;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$4;-><init>(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 354
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 355
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_5f

    .line 358
    :cond_6f
    const-string v0, "SkipInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Merged segments: clip="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sponsorBlock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 359
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", total="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 360
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 358
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return-object v1
.end method

.method private normalizeClipTimeToMs(D)J
    .locals 3

    .prologue
    .line 193
    const-wide v0, 0x40c3880000000000L    # 10000.0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_b

    .line 194
    double-to-long v0, p1

    .line 196
    :goto_a
    return-wide v0

    :cond_b
    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, p1

    double-to-long v0, v0

    goto :goto_a
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 475
    const/4 v0, 0x0

    return v0
.end method

.method public final getLiveCid()J
    .locals 2

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->isRound()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 515
    iget v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mRoomId:I

    int-to-long v0, v0

    .line 517
    :goto_9
    return-wide v0

    :cond_a
    iget-wide v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    goto :goto_9
.end method

.method public getQualityInt()I
    .locals 2

    .prologue
    .line 658
    iget v1, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    .line 659
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedTypeTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedTypeTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->getQualityFromTypeTag(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_13

    :cond_12
    move v0, v1

    :cond_13
    return v0
.end method

.method public getSeasonId()J
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 646
    iget-object v2, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 652
    :goto_a
    return-wide v0

    .line 650
    :cond_b
    :try_start_b
    iget-object v2, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_10} :catch_12

    move-result-wide v0

    goto :goto_a

    .line 651
    :catch_12
    move-exception v2

    goto :goto_a
.end method

.method public getSkipInfo()V
    .locals 2

    .prologue
    .line 132
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->skips:Lorg/json/JSONArray;

    .line 133
    sget-object v0, Lmybl/BiliFilter;->skip_categories:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_10

    .line 139
    :goto_f
    return-void

    .line 135
    :cond_10
    invoke-direct {p0}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->extractSkipInfoFromClipInfoList()Lorg/json/JSONArray;

    move-result-object v0

    .line 136
    invoke-direct {p0}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->fetchSponsorBlockSegments()Lorg/json/JSONArray;

    move-result-object v1

    .line 138
    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mergeSkipSegments(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->skips:Lorg/json/JSONArray;

    goto :goto_f
.end method

.method public initPlayInfo()V
    .locals 1

    .prologue
    .line 425
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->initPlayInfo(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$PlayInfoCallback;)V

    .line 426
    return-void
.end method

.method public initPlayInfo(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$PlayInfoCallback;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 429
    invoke-virtual {p0}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->getSkipInfo()V

    .line 432
    :try_start_4
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 433
    new-instance v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$6;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$6;-><init>(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 438
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 440
    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "subtitle"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->subtitle_info:Lorg/json/JSONObject;

    .line 442
    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "view_points"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 443
    if-eqz v0, :cond_40

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_40

    .line 444
    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->view_points:Lorg/json/JSONArray;

    .line 445
    if-eqz p1, :cond_40

    .line 446
    invoke-interface {p1, v0}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$PlayInfoCallback;->onPlayInfoReady(Lorg/json/JSONArray;)V

    .line 450
    :cond_40
    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    add-int/lit8 v0, v0, -0x1

    .line 451
    if-eq v0, v4, :cond_54

    iget-object v2, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->subtitle_info:Lorg/json/JSONObject;

    const-string v3, "subtitles"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_58

    :cond_54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->subtitle_data:Lorg/json/JSONObject;

    .line 465
    :cond_57
    :goto_57
    return-void

    .line 452
    :cond_58
    if-ge v0, v4, :cond_75

    iget-object v2, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->subtitle_info:Lorg/json/JSONObject;

    const-string v3, "subtitles"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "lan"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ai-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 453
    :cond_75
    iget-object v2, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->subtitle_info:Lorg/json/JSONObject;

    if-eqz v2, :cond_57

    new-instance v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$7;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$7;-><init>(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 458
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->subtitle_data:Lorg/json/JSONObject;
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8a} :catch_8b

    goto :goto_57

    .line 459
    :catch_8b
    move-exception v0

    .line 460
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 461
    if-eqz p1, :cond_57

    .line 462
    invoke-interface {p1, v0}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$PlayInfoCallback;->onPlayInfoFailed(Ljava/lang/Exception;)V

    goto :goto_57
.end method

.method public final isBangumi()Z
    .locals 4

    .prologue
    .line 506
    iget-wide v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isClip()Z
    .locals 2

    .prologue
    .line 510
    const-string v0, "clip"

    iget-object v1, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final isEmptyCid()Z
    .locals 4

    .prologue
    .line 498
    iget-wide v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isLive()Z
    .locals 2

    .prologue
    .line 502
    const-string v0, "live"

    iget-object v1, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->isRound()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isNecessaryParamsCompletly()Z
    .locals 4

    .prologue
    .line 525
    iget-wide v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_12

    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final isRound()Z
    .locals 1

    .prologue
    .line 521
    iget v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mRoomId:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public obtainMediaResourceParams()Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;
    .locals 11

    .prologue
    .line 636
    new-instance v1, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;

    iget-wide v2, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    iget-wide v4, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    iget v6, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    iget-object v7, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedTypeTag:Ljava/lang/String;

    iget-object v8, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mRequestFromDownloader:Z

    iget-object v10, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mType:Ljava/lang/String;

    invoke-direct/range {v1 .. v10}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;-><init>(JJILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-object v1
.end method

.method public obtainResourceExtra()Lcom/bilibili/lib/media/resolver/params/ResolveResourceExtra;
    .locals 13

    .prologue
    .line 640
    new-instance v0, Lcom/bilibili/lib/media/resolver/params/ResolveResourceExtra;

    iget-boolean v1, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mHasAlias:Z

    iget-object v2, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mLink:Ljava/lang/String;

    iget-object v3, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mRawVid:Ljava/lang/String;

    iget-object v4, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mVid:Ljava/lang/String;

    iget-object v5, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mWeb:Ljava/lang/String;

    iget-wide v6, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    iget-wide v8, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    iget-object v10, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExtraParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$ExtraParams;

    const-string v11, "track_path"

    const-string v12, "0"

    invoke-interface {v10, v11, v12}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$ExtraParams;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct/range {v0 .. v10}, Lcom/bilibili/lib/media/resolver/params/ResolveResourceExtra;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    .line 641
    iget-object v1, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExtraParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$ExtraParams;

    const-string v2, "season_type"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$ExtraParams;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bilibili/lib/media/resolver/params/ResolveResourceExtra;->b(I)V

    .line 642
    return-object v0
.end method

.method public updateSkipInfoFromClipInfoList()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 373
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->clip_info_list:Lorg/json/JSONArray;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->clip_info_list:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 422
    :cond_d
    :goto_d
    return-void

    .line 377
    :cond_e
    const-string v0, "SkipInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSkipInfoFromClipInfoList: clip_info_list count="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->clip_info_list:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-direct {p0}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->extractSkipInfoFromClipInfoList()Lorg/json/JSONArray;

    move-result-object v3

    .line 381
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->skips:Lorg/json/JSONArray;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->skips:Lorg/json/JSONArray;

    move-object v1, v0

    .line 383
    :goto_37
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    move v0, v2

    .line 385
    :goto_3d
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_5d

    .line 386
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 387
    if-nez v5, :cond_53

    .line 385
    :goto_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 381
    :cond_4c
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    move-object v1, v0

    goto :goto_37

    .line 388
    :cond_53
    const-string v6, "pgc"

    invoke-direct {p0, v5, v6}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->generateSegmentId(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 389
    invoke-virtual {v4, v6, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_49

    .line 392
    :cond_5d
    :goto_5d
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_8f

    .line 393
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 394
    if-nez v5, :cond_6c

    .line 392
    :cond_69
    :goto_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    .line 395
    :cond_6c
    const-string v0, "source"

    const-string v6, "unknown"

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 396
    const-string v6, "pgc_clip"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    const-string v0, "pgc"

    :goto_7e
    invoke-direct {p0, v5, v0}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->generateSegmentId(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 397
    invoke-virtual {v4, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_69

    .line 398
    invoke-virtual {v4, v0, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_69

    .line 396
    :cond_8c
    const-string v0, "sb"

    goto :goto_7e

    .line 402
    :cond_8f
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 403
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 404
    new-instance v4, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$5;

    invoke-direct {v4, p0}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$5;-><init>(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 413
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 414
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_a9

    .line 417
    :cond_b9
    iput-object v2, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->skips:Lorg/json/JSONArray;

    .line 419
    const-string v0, "SkipInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updated skips from clip_info_list: clip="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", existing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 420
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", total="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 421
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 419
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 530
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 531
    iget-wide v4, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 532
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mVid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 533
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mRawVid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageIndex:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 537
    iget-boolean v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mHasAlias:Z

    if-eqz v0, :cond_e4

    move v0, v1

    :goto_2a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 538
    iget v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSpid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 539
    iget-wide v4, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 540
    iget v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 541
    iget v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mTid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 542
    iget-boolean v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mRequestFromDownloader:Z

    if-eqz v0, :cond_e7

    move v0, v1

    :goto_46
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 543
    iget-wide v4, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 544
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpCover:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 546
    iget-boolean v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mResolveBiliCdnPlay:Z

    if-eqz v0, :cond_ea

    move v0, v1

    :goto_5d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 547
    iget v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 548
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedTypeTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mUserAgent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mWeb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCodecMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExtraParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$ExtraParams;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 553
    iget-boolean v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEnablePlayUrlHttps:Z

    if-eqz v0, :cond_ed

    move v0, v1

    :goto_83
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 554
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAdParams:Lcom/bilibili/tv/player/basic/context/AdParams;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 555
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 557
    iget v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mProgress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 558
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mBvid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 559
    iget-boolean v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mNoHistoryPlay:Z

    if-eqz v0, :cond_ef

    move v0, v1

    :goto_9f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 560
    iget v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 562
    iget-wide v4, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mMid:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 564
    iget-wide v4, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPubDate:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 565
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAuthor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPlays:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDanmakus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 568
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mBadgeText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mBadgeBgColor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 570
    iget-boolean v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mHideUpIcon:Z

    if-eqz v0, :cond_f1

    :goto_ce
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 571
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->view_points:Lorg/json/JSONArray;

    if-eqz v0, :cond_f3

    .line 574
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->view_points:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 578
    :goto_e3
    return-void

    :cond_e4
    move v0, v2

    .line 537
    goto/16 :goto_2a

    :cond_e7
    move v0, v2

    .line 542
    goto/16 :goto_46

    :cond_ea
    move v0, v2

    .line 546
    goto/16 :goto_5d

    :cond_ed
    move v0, v2

    .line 553
    goto :goto_83

    :cond_ef
    move v0, v2

    .line 559
    goto :goto_9f

    :cond_f1
    move v1, v2

    .line 570
    goto :goto_ce

    .line 576
    :cond_f3
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_e3
.end method
