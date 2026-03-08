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
        Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$JsonResponse;
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
.field public mAdParams:Lcom/bilibili/tv/player/basic/context/AdParams;

.field public mAvid:J

.field public mBvid:Ljava/lang/String;

.field public mCanProjectionScreen:Z

.field public mCid:J

.field public mCodecMode:Ljava/lang/String;

.field public mEnablePlayUrlHttps:Z

.field public mEpCover:Ljava/lang/String;

.field public mEpisodeId:J

.field public mExpectedQuality:I

.field public mExpectedTypeTag:Ljava/lang/String;

.field public mExtraParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$ExtraParams;

.field public mFrom:Ljava/lang/String;

.field public mHasAlias:Z

.field public mLink:Ljava/lang/String;

.field public mNoHistoryPlay:Z

.field public mPage:I

.field public mPageIndex:Ljava/lang/String;

.field public mPageTitle:Ljava/lang/String;

.field public mProgress:I

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

.field public view_points:Lorg/json/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$1;

    invoke-direct {v0}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$1;-><init>()V

    sput-object v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    new-instance v0, Lcom/bilibili/tv/player/basic/context/BaseExtraParams;

    invoke-direct {v0}, Lcom/bilibili/tv/player/basic/context/BaseExtraParams;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExtraParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$ExtraParams;

    .line 227
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    new-instance v0, Lcom/bilibili/tv/player/basic/context/BaseExtraParams;

    invoke-direct {v0}, Lcom/bilibili/tv/player/basic/context/BaseExtraParams;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExtraParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$ExtraParams;

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mVid:Ljava/lang/String;

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mLink:Ljava/lang/String;

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mRawVid:Ljava/lang/String;

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageIndex:Ljava/lang/String;

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_ea

    move v0, v1

    :goto_3d
    iput-boolean v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mHasAlias:Z

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSpid:I

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPage:I

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mTid:I

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_ed

    move v0, v1

    :goto_5e
    iput-boolean v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mRequestFromDownloader:Z

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpCover:Ljava/lang/String;

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_f0

    move v0, v1

    :goto_79
    iput-boolean v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mResolveBiliCdnPlay:Z

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedTypeTag:Ljava/lang/String;

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mUserAgent:Ljava/lang/String;

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mWeb:Ljava/lang/String;

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCodecMode:Ljava/lang/String;

    .line 340
    const-class v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$ExtraParams;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$ExtraParams;

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExtraParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$ExtraParams;

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_f2

    move v0, v1

    :goto_ae
    iput-boolean v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEnablePlayUrlHttps:Z

    .line 342
    const-class v0, Lcom/bilibili/tv/player/basic/context/AdParams;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/player/basic/context/AdParams;

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAdParams:Lcom/bilibili/tv/player/basic/context/AdParams;

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mType:Ljava/lang/String;

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mProgress:I

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mBvid:Ljava/lang/String;

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_f4

    :goto_d6
    iput-boolean v1, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mNoHistoryPlay:Z

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e9

    .line 353
    :try_start_e2
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->view_points:Lorg/json/JSONArray;
    :try_end_e9
    .catch Lorg/json/JSONException; {:try_start_e2 .. :try_end_e9} :catch_f6

    .line 359
    :cond_e9
    :goto_e9
    return-void

    :cond_ea
    move v0, v2

    .line 325
    goto/16 :goto_3d

    :cond_ed
    move v0, v2

    .line 330
    goto/16 :goto_5e

    :cond_f0
    move v0, v2

    .line 334
    goto :goto_79

    :cond_f2
    move v0, v2

    .line 341
    goto :goto_ae

    :cond_f4
    move v1, v2

    .line 347
    goto :goto_d6

    .line 354
    :catch_f6
    move-exception v0

    .line 355
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->view_points:Lorg/json/JSONArray;

    .line 356
    const-string v1, "ResolveResourceParams"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u89e3\u6790\u7ae0\u8282\u5217\u8868\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e9
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    new-instance v0, Lcom/bilibili/tv/player/basic/context/BaseExtraParams;

    invoke-direct {v0}, Lcom/bilibili/tv/player/basic/context/BaseExtraParams;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExtraParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$ExtraParams;

    .line 231
    iput-object p1, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    .line 232
    iput-wide p2, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    .line 233
    iput-object p4, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mVid:Ljava/lang/String;

    .line 234
    iput-object p6, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mLink:Ljava/lang/String;

    .line 235
    iput-object p5, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mRawVid:Ljava/lang/String;

    .line 236
    iput-boolean p7, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mHasAlias:Z

    .line 237
    iput-wide p8, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    .line 238
    iput p10, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPage:I

    .line 239
    iput-object p11, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    .line 240
    iput p12, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mTid:I

    .line 241
    iput-object p13, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mType:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public static getQualityFromTypeTag(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 389
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 390
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 391
    array-length v1, v0

    if-lez v1, :cond_23

    .line 393
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

    .line 399
    :goto_1c
    return v0

    .line 394
    :catch_1d
    move-exception v0

    .line 395
    const-string v0, "unknown quality from type tag."

    invoke-static {v0}, Ltv/danmaku/android/log/BLog;->w(Ljava/lang/String;)V

    .line 399
    :cond_23
    const/4 v0, -0x1

    goto :goto_1c
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public final getLiveCid()J
    .locals 2

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->isRound()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 262
    iget v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mRoomId:I

    int-to-long v0, v0

    .line 264
    :goto_9
    return-wide v0

    :cond_a
    iget-wide v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    goto :goto_9
.end method

.method public getQualityInt()I
    .locals 2

    .prologue
    .line 384
    iget v1, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    .line 385
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

    .line 372
    iget-object v2, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 378
    :goto_a
    return-wide v0

    .line 376
    :cond_b
    :try_start_b
    iget-object v2, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_10} :catch_12

    move-result-wide v0

    goto :goto_a

    .line 377
    :catch_12
    move-exception v2

    goto :goto_a
.end method

.method public getSkipInfo()V
    .locals 12

    .prologue
    const/4 v1, 0x0

    const-wide/16 v10, 0x3e8

    .line 111
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->skips:Lorg/json/JSONArray;

    .line 112
    sget-object v0, Lmybl/BiliFilter;->skip_categories:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_13

    .line 177
    :cond_12
    :goto_12
    return-void

    .line 113
    :cond_13
    invoke-virtual {p0}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->isBangumi()Z

    move-result v0

    if-eqz v0, :cond_120

    .line 114
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 115
    new-instance v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$2;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$2;-><init>(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 122
    :try_start_26
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v2, "result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "episodes"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 123
    :goto_38
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_12

    .line 124
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 125
    const-string v3, "ep_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v4, v3

    iget-wide v6, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_57

    const-string v3, "skip"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_5a

    .line 123
    :cond_57
    :goto_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 126
    :cond_5a
    const-string v3, "skip"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "op"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_b9

    sget-object v3, Lmybl/BiliFilter;->skip_categories:Ljava/util/Set;

    const-string v4, "intro"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b9

    .line 127
    const-string v3, "skip"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "op"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "start"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 128
    const-string v3, "skip"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v6, "op"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v6, "end"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 129
    cmpg-double v3, v4, v6

    if-gez v3, :cond_b9

    .line 130
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 131
    const-string v8, "type"

    const-string v9, "\u7247\u5934"

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    const-string v8, "start"

    double-to-long v4, v4

    mul-long/2addr v4, v10

    invoke-virtual {v3, v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 133
    const-string v4, "end"

    double-to-long v6, v6

    mul-long/2addr v6, v10

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 134
    iget-object v4, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->skips:Lorg/json/JSONArray;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 137
    :cond_b9
    const-string v3, "skip"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "ed"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_57

    sget-object v3, Lmybl/BiliFilter;->skip_categories:Ljava/util/Set;

    const-string v4, "outro"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 138
    const-string v3, "skip"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "ed"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "start"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 139
    const-string v3, "skip"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "ed"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "end"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 140
    cmpg-double v6, v4, v2

    if-gez v6, :cond_57

    .line 141
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 142
    const-string v7, "type"

    const-string v8, "\u7247\u5c3e"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    const-string v7, "start"

    double-to-long v4, v4

    mul-long/2addr v4, v10

    invoke-virtual {v6, v7, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 144
    const-string v4, "end"

    double-to-long v2, v2

    mul-long/2addr v2, v10

    invoke-virtual {v6, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 145
    iget-object v2, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->skips:Lorg/json/JSONArray;

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_118} :catch_11a

    goto/16 :goto_57

    .line 149
    :catch_11a
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_12

    .line 153
    :cond_120
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 154
    new-instance v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$3;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$3;-><init>(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 161
    :try_start_12d
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 162
    :goto_133
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_12

    .line 163
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "segment"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 164
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 165
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "category"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 166
    const-string v5, "intro"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_161

    const-string v5, "type"

    const-string v6, "\u7247\u5934"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    :cond_161
    const-string v5, "outro"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_170

    const-string v5, "type"

    const-string v6, "\u7247\u5c3e"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    :cond_170
    const-string v5, "sponsor"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17f

    const-string v4, "type"

    const-string v5, "\u786c\u5e7f"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    :cond_17f
    const-string v4, "start"

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v6

    double-to-long v6, v6

    mul-long/2addr v6, v10

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 170
    const-string v4, "end"

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v6

    double-to-long v6, v6

    mul-long/2addr v6, v10

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 171
    iget-object v2, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->skips:Lorg/json/JSONArray;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_19c
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_19c} :catch_19f

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_133

    .line 173
    :catch_19f
    move-exception v0

    .line 174
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_12
.end method

.method public initPlayInfo()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 180
    invoke-virtual {p0}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->getSkipInfo()V

    .line 182
    :try_start_4
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 183
    new-instance v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$4;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$4;-><init>(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 188
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 191
    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "subtitle"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->subtitle_info:Lorg/json/JSONObject;

    .line 194
    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "view_points"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_5d

    .line 196
    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->view_points:Lorg/json/JSONArray;

    .line 197
    const-string v2, "ResolveResourceParams"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u53d1\u73b0\u7ae0\u8282\u5217\u8868\uff0c\u5171"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\u4e2a\u7ae0\u8282"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_5d
    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    add-int/lit8 v0, v0, -0x1

    .line 201
    if-eq v0, v5, :cond_71

    iget-object v2, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->subtitle_info:Lorg/json/JSONObject;

    const-string v3, "subtitles"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_75

    :cond_71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->subtitle_data:Lorg/json/JSONObject;

    .line 212
    :cond_74
    :goto_74
    return-void

    .line 202
    :cond_75
    if-ge v0, v5, :cond_92

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

    if-nez v2, :cond_74

    .line 203
    :cond_92
    iget-object v2, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->subtitle_info:Lorg/json/JSONObject;

    if-eqz v2, :cond_74

    new-instance v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$5;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$5;-><init>(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 208
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->subtitle_data:Lorg/json/JSONObject;
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a7} :catch_a8

    goto :goto_74

    .line 209
    :catch_a8
    move-exception v0

    .line 210
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_74
.end method

.method public final isBangumi()Z
    .locals 4

    .prologue
    .line 253
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
    .line 257
    const-string v0, "clip"

    iget-object v1, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final isEmptyCid()Z
    .locals 4

    .prologue
    .line 245
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
    .line 249
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
    .line 272
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
    .line 268
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
    .line 362
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
    .line 366
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

    .line 367
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

    .line 368
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 277
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 278
    iget-wide v4, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 279
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mVid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mRawVid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageIndex:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 284
    iget-boolean v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mHasAlias:Z

    if-eqz v0, :cond_af

    move v0, v1

    :goto_2a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 285
    iget v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSpid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    iget-wide v4, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 287
    iget v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    iget v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mTid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    iget-boolean v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mRequestFromDownloader:Z

    if-eqz v0, :cond_b2

    move v0, v1

    :goto_46
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 290
    iget-wide v4, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 291
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpCover:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    iget-boolean v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mResolveBiliCdnPlay:Z

    if-eqz v0, :cond_b4

    move v0, v1

    :goto_5d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 294
    iget v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedTypeTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mUserAgent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mWeb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCodecMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExtraParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$ExtraParams;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 300
    iget-boolean v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEnablePlayUrlHttps:Z

    if-eqz v0, :cond_b6

    move v0, v1

    :goto_83
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 301
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAdParams:Lcom/bilibili/tv/player/basic/context/AdParams;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 302
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 304
    iget v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mProgress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mBvid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 306
    iget-boolean v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mNoHistoryPlay:Z

    if-eqz v0, :cond_b8

    :goto_9e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 309
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->view_points:Lorg/json/JSONArray;

    if-eqz v0, :cond_ba

    .line 310
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->view_points:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 314
    :goto_ae
    return-void

    :cond_af
    move v0, v2

    .line 284
    goto/16 :goto_2a

    :cond_b2
    move v0, v2

    .line 289
    goto :goto_46

    :cond_b4
    move v0, v2

    .line 293
    goto :goto_5d

    :cond_b6
    move v0, v2

    .line 300
    goto :goto_83

    :cond_b8
    move v1, v2

    .line 306
    goto :goto_9e

    .line 312
    :cond_ba
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_ae
.end method
