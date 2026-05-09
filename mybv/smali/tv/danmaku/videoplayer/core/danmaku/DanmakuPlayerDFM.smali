.class public Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;
.super Ljava/lang/Object;
.source "DanmakuPlayerDFM.java"

# interfaces
.implements Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$OnParseFinishListener;,
        Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$SeekData;
    }
.end annotation


# static fields
.field public static final DANMAKU_NEW:Ljava/lang/String; = "new_danmaku"

.field private static final PORTRAIT_TEXT_FACTOR:F = 0.83f

.field public static final TAG:Ljava/lang/String; = "DanmakuPlayerDFM"


# instance fields
.field private mAnimationTicker:Ltv/danmaku/videoplayer/core/danmaku/DanmakuAnimationTicker;

.field private mCacheStufferAdapter:Lbl/bfz$a;

.field private mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

.field private mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

.field private mDanmakuListener:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuListener;

.field private mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

.field private mDanmakuShownCount:I

.field public mDanmakuStrokenWidth:F

.field public mDanmakuView:Lbl/bfd;

.field private mFlagFilter:Lbl/bez$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbl/bez$a",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInfo:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;

.field private mInitWidth:I

.field private mMaxInHorizontalScreen:I

.field private mMaxInVerticalScreen:I

.field private mPaddingBottom:I

.field private mParser:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;

.field private mPaused:Z

.field private mPortraitPlayingEnable:Z

.field private mPortraitTextSize:F

.field private mPrepared:Z

.field private mProjectionAlpha:I

.field private mProjectionOffsetX:F

.field private mProjectionOffsetY:F

.field private mResumePosition:J

.field private mRootView:Landroid/view/ViewGroup;

.field private mScaleTextSize:F

.field private mScrollSpeedFactor:F

.field private mSeekPosForParser:J

.field private mShown:Z

.field public subtitle_data:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/16 v0, 0xc

    iput v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mMaxInVerticalScreen:I

    .line 69
    const/16 v0, 0x24

    iput v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mMaxInHorizontalScreen:I

    .line 70
    iput v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPortraitTextSize:F

    .line 71
    iput v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mScaleTextSize:F

    .line 72
    iput v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mScrollSpeedFactor:F

    .line 73
    iput v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mInitWidth:I

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mShown:Z

    .line 75
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mSeekPosForParser:J

    .line 76
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;-><init>()V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 77
    const/high16 v0, 0x40600000    # 3.5f

    iput v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuStrokenWidth:F

    .line 78
    iput v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mProjectionOffsetX:F

    .line 79
    iput v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mProjectionOffsetY:F

    .line 80
    const/16 v0, 0xe6

    iput v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mProjectionAlpha:I

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mResumePosition:J

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPaddingBottom:I

    .line 83
    iput v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuShownCount:I

    .line 84
    new-instance v0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$1;

    invoke-direct {v0, p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$1;-><init>(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;)V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mFlagFilter:Lbl/bez$a;

    .line 118
    new-instance v0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$2;

    invoke-direct {v0, p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$2;-><init>(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;)V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mCacheStufferAdapter:Lbl/bfz$a;

    return-void
.end method

.method static synthetic access$100(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;)Ltv/danmaku/videoplayer/core/danmaku/DanmakuAnimationTicker;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mAnimationTicker:Ltv/danmaku/videoplayer/core/danmaku/DanmakuAnimationTicker;

    return-object v0
.end method

.method static synthetic access$1000(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    return-object v0
.end method

.method static synthetic access$200(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;)Ltv/danmaku/videoplayer/core/danmaku/IDanmakuListener;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuListener:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuListener;

    return-object v0
.end method

.method static access$208(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;)I
    .locals 2

    .prologue
    .line 149
    iget v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuShownCount:I

    .line 150
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuShownCount:I

    .line 151
    return v0
.end method

.method static synthetic access$300(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuShownCount:I

    return v0
.end method

.method static synthetic access$402(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;Z)Z
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPrepared:Z

    return p1
.end method

.method static synthetic access$500(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$600(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;)Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    return-object v0
.end method

.method static synthetic access$700(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;)Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mInfo:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;

    return-object v0
.end method

.method static synthetic access$800(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;)J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mSeekPosForParser:J

    return-wide v0
.end method

.method static synthetic access$802(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;J)J
    .locals 1

    .prologue
    .line 53
    iput-wide p1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mSeekPosForParser:J

    return-wide p1
.end method

.method static synthetic access$900(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;)Lbl/bez$a;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mFlagFilter:Lbl/bez$a;

    return-object v0
.end method

.method private applyPortraitPlayingConfig()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x5

    const/4 v3, 0x1

    .line 862
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->l:F

    iput v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mScrollSpeedFactor:F

    .line 863
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mMaxInVerticalScreen:I

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(I)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 864
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPortraitTextSize:F

    const v2, 0x3ecccccd    # 0.4f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->b(F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 865
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 866
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->b(Ljava/util/Map;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 871
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 872
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(Ljava/util/Map;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 877
    return-void
.end method

.method private getDanmakuMaxOnScreen(I)I
    .locals 2

    .prologue
    .line 894
    const/16 v0, 0x96

    if-ne p1, v0, :cond_6

    .line 895
    const/4 p1, 0x0

    .line 897
    :cond_5
    :goto_5
    return p1

    :cond_6
    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_5

    const v1, 0x7f090005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    goto :goto_5
.end method

.method private onDanmakuAppended(Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;Z)V
    .locals 8

    .prologue
    .line 299
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    .line 300
    if-eqz p1, :cond_c

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mParser:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;

    if-eqz v0, :cond_c

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mAnimationTicker:Ltv/danmaku/videoplayer/core/danmaku/DanmakuAnimationTicker;

    if-nez v0, :cond_d

    .line 323
    :cond_c
    :goto_c
    return-void

    .line 303
    :cond_d
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mParser:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->parseItem(Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;I)Lbl/bfk;

    move-result-object v2

    .line 304
    if-eqz v2, :cond_2e

    .line 305
    invoke-interface {v1}, Lbl/bfd;->getCurrentTime()J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lbl/bfk;->d(J)V

    .line 306
    iput-boolean p2, v2, Lbl/bfk;->x:Z

    .line 307
    iget-boolean v0, p1, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mSentFromMe:Z

    if-eqz v0, :cond_2e

    .line 308
    const/4 v0, 0x1

    iput-byte v0, v2, Lbl/bfk;->n:B

    .line 309
    const v0, -0xff0100

    iput v0, v2, Lbl/bfk;->j:I

    .line 312
    :cond_2e
    if-eqz v1, :cond_c

    invoke-interface {v1}, Lbl/bfd;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 313
    if-eqz p2, :cond_3e

    invoke-interface {v1}, Lbl/bfd;->isShown()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 314
    :cond_3e
    if-eqz p2, :cond_49

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    if-eqz v0, :cond_49

    .line 316
    :try_start_44
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    invoke-interface {v0, p1}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;->addLiveRawJsonDanmaku(Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;)V
    :try_end_49
    .catch Lorg/json/JSONException; {:try_start_44 .. :try_end_49} :catch_4d

    .line 321
    :cond_49
    :goto_49
    invoke-interface {v1, v2}, Lbl/bfd;->a(Lbl/bfk;)V

    goto :goto_c

    .line 317
    :catch_4d
    move-exception v0

    .line 318
    const-string v3, "DanmakuPlayerDFM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "append danmaku error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ltv/danmaku/android/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49
.end method

.method private onDanmakuAppended(Ltv/danmaku/videoplayer/core/danmaku/comment/DrawableItem;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 377
    if-eqz p1, :cond_23

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    if-eqz v0, :cond_23

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-interface {v0}, Lbl/bfd;->a()Z

    move-result v0

    if-eqz v0, :cond_23

    if-eqz p2, :cond_23

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-interface {v0}, Lbl/bfd;->isShown()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lbl/bgb;

    invoke-virtual {v0, v6}, Lbl/bgb;->a(I)Lbl/bfk;

    move-result-object v0

    if-nez v0, :cond_24

    .line 385
    :cond_23
    :goto_23
    return-void

    .line 380
    :cond_24
    iget-object v1, p1, Ltv/danmaku/videoplayer/core/danmaku/comment/DrawableItem;->mSpannableString:Landroid/text/SpannableStringBuilder;

    iput-object v1, v0, Lbl/bfk;->b:Ljava/lang/CharSequence;

    .line 381
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-interface {v1}, Lbl/bfd;->getCurrentTime()J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lbl/bfk;->d(J)V

    .line 382
    iput-boolean p2, v0, Lbl/bfk;->x:Z

    .line 383
    iput-byte v6, v0, Lbl/bfk;->n:B

    .line 384
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-interface {v1, v0}, Lbl/bfd;->a(Lbl/bfk;)V

    goto :goto_23
.end method

.method private prepareAndStart()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 388
    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mAnimationTicker:Ltv/danmaku/videoplayer/core/danmaku/DanmakuAnimationTicker;

    if-nez v3, :cond_9

    .line 502
    :goto_8
    return-void

    .line 391
    :cond_9
    iput v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuShownCount:I

    .line 392
    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mAnimationTicker:Ltv/danmaku/videoplayer/core/danmaku/DanmakuAnimationTicker;

    invoke-interface {v3}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuAnimationTicker;->startTicker()V

    .line 393
    const/16 v3, 0x28

    const/16 v4, 0x64

    iget-object v5, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v5}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->getDanmakuMaxOnScreen()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 395
    iget-object v4, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v4}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->isRealTimeDanmaku()Z

    move-result v4

    if-eqz v4, :cond_172

    .line 396
    new-instance v3, Ltv/danmaku/videoplayer/core/danmaku/LiveDanmakuParser;

    iget-object v4, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    iget v5, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mInitWidth:I

    iget-boolean v6, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPortraitPlayingEnable:Z

    invoke-direct {v3, v4, v5, v6}, Ltv/danmaku/videoplayer/core/danmaku/LiveDanmakuParser;-><init>(Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;IZ)V

    iput-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mParser:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;

    .line 404
    :goto_37
    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-interface {v3, v1}, Lbl/bfd;->a(Z)V

    .line 405
    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 406
    iget-object v4, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v4}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->isDanmakuMonospaced()Z

    move-result v4

    if-nez v4, :cond_19f

    .line 407
    const-string v3, "DanmakuPlayerDFM"

    const-string v4, "use system font"

    invoke-static {v3, v4}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :goto_51
    sget v3, Ltv/danmaku/videoplayer/core/danmaku/DanmakuConfig;->sDanmakuStrokenWidth:F

    iput v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuStrokenWidth:F

    .line 417
    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v3}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->getDanmakuMaxOnScreen()I

    move-result v3

    invoke-direct {p0, v3}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->getDanmakuMaxOnScreen(I)I

    move-result v3

    .line 418
    iput v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mMaxInHorizontalScreen:I

    .line 419
    div-int/lit8 v4, v3, 0x3

    iput v4, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mMaxInVerticalScreen:I

    .line 420
    iget-object v4, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v4, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(Landroid/graphics/Typeface;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v4

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->isDanmakuBlockTop()Z

    move-result v0

    if-nez v0, :cond_1b9

    move v0, v1

    :goto_74
    invoke-virtual {v4, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v4

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->isDanmakuBlockBottom()Z

    move-result v0

    if-nez v0, :cond_1bc

    move v0, v1

    :goto_81
    invoke-virtual {v4, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->b(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v4

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->isDanmakuBlockToRight()Z

    move-result v0

    if-nez v0, :cond_1bf

    move v0, v1

    :goto_8e
    invoke-virtual {v4, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->c(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v4

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->isDanmakuBlockToLeft()Z

    move-result v0

    if-nez v0, :cond_1c2

    move v0, v1

    :goto_9b
    invoke-virtual {v4, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->d(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v0

    iget-object v4, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v4}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->isDanmakuDuplicateMerging()Z

    move-result v4

    invoke-virtual {v0, v4}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->g(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v0

    invoke-virtual {v0, v3}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(I)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v0

    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v3}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->getDanmakuAlphaFactor()F

    move-result v3

    invoke-virtual {v0, v3}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v0

    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v3}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->getDanmakuTextSizeScaleFactor()F

    move-result v3

    invoke-virtual {v0, v3}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->b(F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v0

    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v3}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->getDanmakuDurationFactor()F

    move-result v3

    invoke-virtual {v0, v3}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->c(F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v0

    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v3}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->isDanmakuTextStyleBold()Z

    move-result v3

    invoke-virtual {v0, v3}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->e(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 421
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->isDanmakuRecommandEnable()Z

    move-result v0

    if-eqz v0, :cond_1c5

    .line 422
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mFlagFilter:Lbl/bez$a;

    invoke-virtual {v0, v3}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(Lbl/bez$a;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 426
    :goto_e3
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->isRealTimeDanmaku()Z

    move-result v0

    if-eqz v0, :cond_1ce

    .line 427
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    new-instance v3, Lbl/bgh;

    invoke-direct {v3}, Lbl/bgh;-><init>()V

    iget-object v4, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mCacheStufferAdapter:Lbl/bfz$a;

    invoke-virtual {v0, v3, v4}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(Lbl/bfz;Lbl/bfz$a;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 451
    :goto_f7
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->updateTextSize()V

    .line 452
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->l:F

    iput v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mScrollSpeedFactor:F

    .line 453
    iget-boolean v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPortraitPlayingEnable:Z

    if-eqz v0, :cond_107

    .line 454
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->applyPortraitPlayingConfig()V

    .line 456
    :cond_107
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->getDanmakuTextStyle()I

    move-result v0

    if-ne v8, v0, :cond_1da

    .line 457
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    new-array v3, v8, [F

    iget v4, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mProjectionOffsetX:F

    aput v4, v3, v2

    iget v4, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mProjectionOffsetY:F

    aput v4, v3, v1

    const/4 v4, 0x2

    iget v5, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mProjectionAlpha:I

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-virtual {v0, v8, v3}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(I[F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 461
    :goto_124
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->getBlockUserIds()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f4

    .line 462
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->getBlockUserIds()Ljava/util/Collection;

    move-result-object v0

    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v3}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->getBlockUserIds()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a([Ljava/lang/String;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 468
    :goto_14f
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->isDanmakuBlockColorful()Z

    move-result v0

    if-eqz v0, :cond_20a

    .line 469
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(I)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 473
    :goto_15d
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    new-instance v1, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$4;

    invoke-direct {v1, p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$4;-><init>(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;)V

    invoke-interface {v0, v1}, Lbl/bfd;->setCallback(Lbl/bfa$a;)V

    .line 501
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mParser:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;

    iget-object v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-interface {v0, v1, v2}, Lbl/bfd;->a(Lbl/bgn;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V

    goto/16 :goto_8

    .line 398
    :cond_172
    new-instance v4, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;

    iget-object v5, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    iget v6, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mInitWidth:I

    iget-boolean v7, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPortraitPlayingEnable:Z

    invoke-direct {v4, v5, v6, v7}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;-><init>(Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;IZ)V

    const-wide/16 v6, 0x708

    invoke-virtual {v4, v6, v7}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->setTimeout(J)Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;

    move-result-object v4

    invoke-virtual {v4, v3}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->setDanmakuCountPerScreen(I)Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;

    move-result-object v3

    iput-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mParser:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;

    .line 399
    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mParser:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;

    new-instance v4, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$OnParseFinishListener;

    invoke-direct {v4, p0, v0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$OnParseFinishListener;-><init>(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$1;)V

    invoke-virtual {v3, v4}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->setParseFinishListener(Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$OnParseListener;)V

    .line 401
    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mParser:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;

    iget-object v4, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mInfo:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;

    iget-wide v4, v4, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;->mCid:J

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->setInfoCid(I)V

    goto/16 :goto_37

    .line 409
    :cond_19f
    const-string v0, "fonts/danmaku.ttf"

    invoke-static {v3, v0}, Lbl/ls;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 410
    if-eqz v0, :cond_1b0

    .line 411
    const-string v3, "DanmakuPlayerDFM"

    const-string v4, "load font danmaku.ttf"

    invoke-static {v3, v4}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_51

    .line 413
    :cond_1b0
    const-string v3, "DanmakuPlayerDFM"

    const-string v4, "failed to load font danmaku.ttf"

    invoke-static {v3, v4}, Ltv/danmaku/android/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_51

    :cond_1b9
    move v0, v2

    .line 420
    goto/16 :goto_74

    :cond_1bc
    move v0, v2

    goto/16 :goto_81

    :cond_1bf
    move v0, v2

    goto/16 :goto_8e

    :cond_1c2
    move v0, v2

    goto/16 :goto_9b

    .line 424
    :cond_1c5
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mFlagFilter:Lbl/bez$a;

    invoke-virtual {v0, v3}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->b(Lbl/bez$a;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    goto/16 :goto_e3

    .line 429
    :cond_1ce
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    new-instance v3, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$3;

    invoke-direct {v3, p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$3;-><init>(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;)V

    invoke-virtual {v0, v3}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(Lbl/bfh;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    goto/16 :goto_f7

    .line 459
    :cond_1da
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v3}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->getDanmakuTextStyle()I

    move-result v3

    new-array v4, v1, [F

    iget v5, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuStrokenWidth:F

    iget-object v6, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v6}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->getDanmakuStorkeWidthScaling()F

    move-result v6

    mul-float/2addr v5, v6

    aput v5, v4, v2

    invoke-virtual {v0, v3, v4}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(I[F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    goto/16 :goto_124

    .line 463
    :cond_1f4
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->isDanmakuBlockGuest()Z

    move-result v0

    if-eqz v0, :cond_203

    .line 464
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->f(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    goto/16 :goto_14f

    .line 466
    :cond_203
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v0, v2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->f(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    goto/16 :goto_14f

    .line 471
    :cond_20a
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    new-array v1, v2, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a([Ljava/lang/Integer;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    goto/16 :goto_15d
.end method

.method private removeDanmakuOnScreen(Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;)V
    .locals 2

    .prologue
    .line 902
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    if-eqz v0, :cond_12

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-interface {v0}, Lbl/bfd;->getCurrentVisibleDanmakus()Lbl/bfs;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v0}, Lbl/bfs;->e()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 922
    :cond_12
    :goto_12
    return-void

    .line 905
    :cond_13
    new-instance v1, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$6;

    invoke-direct {v1, p0, p1}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$6;-><init>(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;)V

    invoke-interface {v0, v1}, Lbl/bfs;->b(Lbl/bfs$b;)V

    goto :goto_12
.end method

.method private seekToMsec(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$SeekData;)V
    .locals 8

    .prologue
    .line 510
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mAnimationTicker:Ltv/danmaku/videoplayer/core/danmaku/DanmakuAnimationTicker;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPrepared:Z

    if-eqz v0, :cond_a

    if-nez p1, :cond_b

    .line 518
    :cond_a
    :goto_a
    return-void

    .line 513
    :cond_b
    iget-wide v0, p1, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$SeekData;->to:J

    .line 514
    const-string v2, "DanmakuPlayerDFM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "from =="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$SeekData;->from:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",to"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$SeekData;->to:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "retry:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$SeekData;->retryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " last:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",d:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p1, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$SeekData;->currst:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    if-eqz v2, :cond_a

    .line 516
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Lbl/bfd;->a(Ljava/lang/Long;)V

    goto :goto_a
.end method

.method private updateTextSize()V
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->c:F

    iput v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mScaleTextSize:F

    .line 506
    iget v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mScaleTextSize:F

    const v1, 0x3f547ae1    # 0.83f

    mul-float/2addr v0, v1

    iput v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPortraitTextSize:F

    .line 507
    return-void
.end method


# virtual methods
.method public alignDanmakuBottom(Z)V
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->h(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 846
    return-void
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public deleteComments(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    if-eqz v0, :cond_1a

    if-eqz p1, :cond_1a

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;->getCommentStorage()Ljava/util/SortedMap;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-interface {v2}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 267
    :cond_1a
    return-void

    .line 261
    :cond_1b
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1f
    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;

    .line 262
    iget-wide v4, v0, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mTimeMilli:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 263
    if-eqz v1, :cond_1f

    .line 264
    invoke-interface {v1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_1f
.end method

.method public getAllActivedItems()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 208
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPrepared:Z

    if-nez v0, :cond_f

    :cond_d
    move-object v0, v2

    .line 252
    :goto_e
    return-object v0

    .line 211
    :cond_f
    const/4 v0, 0x0

    .line 212
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    if-eqz v1, :cond_26

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v1}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->getDanmakuDocument()Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-interface {v1}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;->getFilter()Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$Filter;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 213
    invoke-interface {v1}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$Filter;->getBlockItems()Ljava/util/SortedMap;

    move-result-object v0

    .line 215
    :cond_26
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    invoke-interface {v1}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;->getCommentStorage()Ljava/util/SortedMap;

    move-result-object v1

    .line 216
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v3

    .line 217
    if-eqz v1, :cond_42

    invoke-interface {v1}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_42

    .line 218
    monitor-enter v1

    .line 219
    :try_start_3e
    invoke-interface {v3, v1}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    .line 220
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_94

    .line 222
    :cond_42
    if-eqz v0, :cond_9f

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9f

    .line 223
    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_52
    :goto_52
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 224
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 225
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 226
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 227
    if-eqz v0, :cond_97

    .line 228
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7e
    :goto_7e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;

    .line 229
    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7e

    .line 230
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    .line 220
    :catchall_94
    move-exception v0

    :try_start_95
    monitor-exit v1
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    throw v0

    .line 234
    :cond_97
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    .line 238
    :cond_9f
    if-eqz v3, :cond_d2

    invoke-interface {v3}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d2

    .line 239
    monitor-enter v3

    .line 240
    :try_start_a8
    invoke-interface {v3}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 241
    :cond_b0
    :goto_b0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 242
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 243
    if-eqz v0, :cond_b0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b0

    .line 244
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_b0

    .line 247
    :catchall_ce
    move-exception v0

    monitor-exit v3
    :try_end_d0
    .catchall {:try_start_a8 .. :try_end_d0} :catchall_ce

    throw v0

    :cond_d1
    :try_start_d1
    monitor-exit v3
    :try_end_d2
    .catchall {:try_start_d1 .. :try_end_d2} :catchall_ce

    .line 249
    :cond_d2
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->isRealTimeDanmaku()Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 250
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    invoke-interface {v0, v2}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;->copyLiveCommentsTo(Ljava/util/ArrayList;)V

    :cond_dd
    move-object v0, v2

    .line 252
    goto/16 :goto_e
.end method

.method public bridge synthetic getAllActivedItems()Ljava/util/List;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->getAllActivedItems()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentActivedItems()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 181
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 182
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    if-eqz v0, :cond_17

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    iget-boolean v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPrepared:Z

    if-nez v0, :cond_19

    :cond_17
    move-object v0, v4

    .line 200
    :goto_18
    return-object v0

    .line 185
    :cond_19
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    if-nez v0, :cond_6a

    move-wide v0, v2

    .line 186
    :goto_1e
    iget-object v5, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    iget-object v6, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v6, v6, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lbl/bgb;

    iget-wide v6, v6, Lbl/bgb;->d:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0x7d0

    sub-long/2addr v6, v8

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    add-long/2addr v0, v6

    invoke-interface {v5, v2, v3, v0, v1}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;->peekArchiveComments(JJ)Ljava/util/Collection;

    move-result-object v0

    .line 187
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    invoke-interface {v1}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;->getCommentStorage()Ljava/util/SortedMap;

    move-result-object v1

    monitor-enter v1

    .line 188
    :try_start_3d
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 189
    :cond_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 190
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_51
    :goto_51
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;

    .line 191
    invoke-virtual {p0, v0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->isBlocked(Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;)Z

    move-result v5

    if-nez v5, :cond_51

    .line 192
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_51

    .line 196
    :catchall_67
    move-exception v0

    monitor-exit v1
    :try_end_69
    .catchall {:try_start_3d .. :try_end_69} :catchall_67

    throw v0

    .line 185
    :cond_6a
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-interface {v0}, Lbl/bfd;->getCurrentTime()J

    move-result-wide v0

    goto :goto_1e

    .line 196
    :cond_71
    :try_start_71
    monitor-exit v1
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_67

    .line 197
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->isRealTimeDanmaku()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 198
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    invoke-interface {v0, v4}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;->copyLiveCommentsTo(Ljava/util/ArrayList;)V

    :cond_7d
    move-object v0, v4

    .line 200
    goto :goto_18
.end method

.method public bridge synthetic getCurrentActivedItems()Ljava/util/List;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->getCurrentActivedItems()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getDanmakuCurrentTime()I
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    if-nez v0, :cond_6

    .line 272
    const/4 v0, 0x0

    .line 274
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-interface {v0}, Lbl/bfd;->getCurrentTime()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_5
.end method

.method public getInfo()Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;
    .locals 3

    .prologue
    .line 721
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mInfo:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;

    if-eqz v0, :cond_e

    .line 722
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mInfo:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_11

    const-string v0, "N/A"

    :goto_c
    iput-object v0, v1, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;->mName:Ljava/lang/String;

    .line 724
    :cond_e
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mInfo:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;

    return-object v0

    .line 722
    :cond_11
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c00e6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public bridge synthetic getParser()Lbl/bgn;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->getParser()Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;

    move-result-object v0

    return-object v0
.end method

.method public getParser()Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mParser:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;

    return-object v0
.end method

.method public getRemoteFlagFilter()Lbl/bez$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbl/bez$a",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 641
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mFlagFilter:Lbl/bez$a;

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 654
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mShown:Z

    .line 655
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    if-eqz v0, :cond_c

    .line 656
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-interface {v0}, Lbl/bfd;->g()V

    .line 658
    :cond_c
    return-void
.end method

.method public initView(Landroid/view/ViewGroup;ZI)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 523
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    if-eqz v0, :cond_22

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-interface {v0}, Lbl/bfd;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 524
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-interface {v0}, Lbl/bfd;->getView()Landroid/view/View;

    move-result-object v1

    .line 525
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 526
    if-eqz v0, :cond_22

    .line 527
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 530
    :cond_22
    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 561
    :cond_2a
    :goto_2a
    return-void

    .line 533
    :cond_2b
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 534
    iput p3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mInitWidth:I

    .line 535
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mRootView:Landroid/view/ViewGroup;

    .line 536
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    if-eqz v1, :cond_3f

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-interface {v1}, Lbl/bfd;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_46

    .line 537
    :cond_3f
    new-instance v1, Lbl/bgy;

    invoke-direct {v1, v0}, Lbl/bgy;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    .line 539
    :cond_46
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-interface {v1}, Lbl/bfd;->getView()Landroid/view/View;

    move-result-object v1

    .line 540
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-ltz v2, :cond_55

    .line 541
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 543
    :cond_55
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 544
    iget v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPaddingBottom:I

    if-ltz v2, :cond_69

    .line 545
    new-instance v2, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$5;

    invoke-direct {v2, p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$5;-><init>(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 552
    :cond_69
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuConfig;->init(Landroid/content/Context;)V

    .line 553
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0x190

    if-lt v0, v1, :cond_87

    .line 554
    iput v4, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mProjectionOffsetY:F

    .line 555
    iput v4, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mProjectionOffsetX:F

    .line 560
    :goto_82
    const/16 v0, 0xe6

    iput v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mProjectionAlpha:I

    goto :goto_2a

    .line 557
    :cond_87
    iput v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mProjectionOffsetY:F

    .line 558
    iput v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mProjectionOffsetX:F

    goto :goto_82
.end method

.method public isBlocked(Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 278
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->b()Z

    move-result v0

    if-nez v0, :cond_30

    move v0, v1

    .line 279
    :goto_b
    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v3}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->e()Z

    move-result v3

    if-nez v3, :cond_32

    move v3, v1

    .line 280
    :goto_14
    iget-object v4, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v4}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->d()Z

    move-result v4

    if-nez v4, :cond_34

    move v4, v1

    .line 281
    :goto_1d
    iget-object v5, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v5}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->c()Z

    move-result v5

    if-nez v5, :cond_36

    move v5, v1

    .line 282
    :goto_26
    invoke-virtual {p1}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->getCommentType()I

    move-result v6

    .line 283
    if-eqz v0, :cond_38

    const/4 v0, 0x5

    if-ne v6, v0, :cond_38

    .line 295
    :cond_2f
    :goto_2f
    return v1

    :cond_30
    move v0, v2

    .line 278
    goto :goto_b

    :cond_32
    move v3, v2

    .line 279
    goto :goto_14

    :cond_34
    move v4, v2

    .line 280
    goto :goto_1d

    :cond_36
    move v5, v2

    .line 281
    goto :goto_26

    .line 286
    :cond_38
    if-eqz v5, :cond_3d

    const/4 v0, 0x4

    if-eq v6, v0, :cond_2f

    .line 289
    :cond_3d
    if-eqz v4, :cond_42

    const/4 v0, 0x6

    if-eq v6, v0, :cond_2f

    .line 292
    :cond_42
    if-eqz v3, :cond_46

    if-eq v6, v1, :cond_2f

    .line 295
    :cond_46
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5a

    invoke-virtual {p1}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->isColorful()Z

    move-result v0

    if-nez v0, :cond_68

    :cond_5a
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->g()Ljava/util/List;

    move-result-object v0

    iget-object v3, p1, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mPublisherId:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    :cond_68
    move v2, v1

    :cond_69
    move v1, v2

    goto :goto_2f
.end method

.method public isNewDanmaku()Z
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mParser:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;

    if-eqz v0, :cond_e

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mParser:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->isNewDanmaku()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isOverDuration(JJ)Z
    .locals 3

    .prologue
    .line 931
    invoke-static {}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;->getInstance()Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;->getLastEnd(J)J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 667
    iget-boolean v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPaused:Z

    return v0
.end method

.method public isRealTimeDanmaku()Z
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    if-eqz v0, :cond_e

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->isRealTimeDanmaku()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 662
    iget-boolean v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mShown:Z

    return v0
.end method

.method public onDanmakuAppended(Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;)V
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->isRealTimeDanmaku()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->onDanmakuAppended(Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;Z)V

    .line 172
    return-void
.end method

.method public onDanmakuAppended(Ltv/danmaku/videoplayer/core/danmaku/comment/DrawableItem;)V
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->isRealTimeDanmaku()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->onDanmakuAppended(Ltv/danmaku/videoplayer/core/danmaku/comment/DrawableItem;Z)V

    .line 177
    return-void
.end method

.method public paddngBottom(I)V
    .locals 3

    .prologue
    .line 850
    iput p1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPaddingBottom:I

    .line 851
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .line 852
    :goto_d
    if-eqz v1, :cond_1e

    .line 853
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 854
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_1e

    .line 855
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 856
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 859
    :cond_1e
    return-void

    .line 851
    :cond_1f
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_d
.end method

.method public parseDanamaku(JJ)V
    .locals 9

    .prologue
    .line 710
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mRootView:Landroid/view/ViewGroup;

    .line 711
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mParser:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;

    if-eqz v1, :cond_8

    if-nez v0, :cond_9

    .line 717
    :cond_8
    :goto_8
    return-void

    .line 715
    :cond_9
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mParser:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mInfo:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;

    iget-wide v4, v0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;->mCid:J

    long-to-int v8, v4

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v8}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->parseInputStreamsAsync(Landroid/content/Context;Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;JJI)V

    goto :goto_8
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 672
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPaused:Z

    .line 673
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    if-eqz v0, :cond_c

    .line 674
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-interface {v0}, Lbl/bfd;->c()V

    .line 676
    :cond_c
    return-void
.end method

.method public release()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 617
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mResumePosition:J

    .line 618
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPaused:Z

    .line 619
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPrepared:Z

    .line 620
    iput-object v4, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->subtitle_data:Lorg/json/JSONObject;

    .line 621
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mInfo:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;

    if-eqz v0, :cond_1c

    .line 622
    invoke-static {}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;->getInstance()Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mInfo:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;

    iget-wide v2, v1, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;->mCid:J

    invoke-virtual {v0, v2, v3}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;->clear(J)V

    .line 624
    :cond_1c
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mRootView:Landroid/view/ViewGroup;

    .line 625
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    if-eqz v1, :cond_34

    .line 626
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    .line 627
    iput-object v4, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    .line 628
    if-eqz v1, :cond_34

    .line 629
    invoke-interface {v1}, Lbl/bfd;->getView()Landroid/view/View;

    move-result-object v2

    .line 630
    invoke-interface {v1}, Lbl/bfd;->e()V

    .line 631
    if-eqz v0, :cond_34

    .line 632
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 636
    :cond_34
    iput-object v4, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mAnimationTicker:Ltv/danmaku/videoplayer/core/danmaku/DanmakuAnimationTicker;

    .line 637
    iput-object v4, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mRootView:Landroid/view/ViewGroup;

    .line 638
    return-void
.end method

.method public removeAllLiveDanamkus()V
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    if-eqz v0, :cond_9

    .line 819
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;->removeAllLiveDanmakus()V

    .line 821
    :cond_9
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    if-eqz v0, :cond_12

    .line 822
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-interface {v0}, Lbl/bfd;->b()V

    .line 824
    :cond_12
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 680
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPaused:Z

    .line 681
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    if-eqz v0, :cond_c

    .line 682
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-interface {v0}, Lbl/bfd;->d()V

    .line 684
    :cond_c
    return-void
.end method

.method public seek(JJ)V
    .locals 11

    .prologue
    const-wide/16 v8, 0x0

    .line 688
    new-instance v0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$SeekData;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$SeekData;-><init>(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;JJ)V

    invoke-direct {p0, v0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->seekToMsec(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$SeekData;)V

    .line 689
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->isNewDanmaku()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 690
    invoke-static {}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;->getInstance()Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mInfo:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;

    iget-wide v2, v1, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;->mCid:J

    invoke-virtual {v0, p3, p4, v2, v3}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;->getStartTs(JJ)J

    move-result-wide v0

    .line 691
    invoke-static {}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;->getInstance()Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;

    move-result-object v2

    const-wide/32 v4, 0x8ca0

    add-long/2addr v4, p3

    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mInfo:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;

    iget-wide v6, v3, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;->mCid:J

    invoke-virtual {v2, v4, v5, v6, v7}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;->getStartTs(JJ)J

    move-result-wide v2

    .line 692
    invoke-static {}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;->getInstance()Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;

    move-result-object v4

    iget-object v5, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mInfo:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;

    iget-wide v6, v5, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;->mCid:J

    invoke-virtual {v4, v6, v7, v0, v1}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;->illegal(JJ)Z

    move-result v4

    if-nez v4, :cond_43

    .line 693
    iput-wide p3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mSeekPosForParser:J

    .line 694
    invoke-virtual {p0, v0, v1, v8, v9}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->parseDanamaku(JJ)V

    .line 701
    :cond_42
    :goto_42
    return-void

    .line 695
    :cond_43
    invoke-static {}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;->getInstance()Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mInfo:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;

    iget-wide v4, v1, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;->mCid:J

    invoke-static {}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;->getInstance()Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;

    move-result-object v1

    iget-object v6, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mInfo:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;

    iget-wide v6, v6, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;->mCid:J

    invoke-virtual {v1, v2, v3, v6, v7}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;->getStartTs(JJ)J

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;->illegal(JJ)Z

    move-result v0

    if-nez v0, :cond_61

    .line 696
    invoke-virtual {p0, v2, v3, v8, v9}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->parseDanamaku(JJ)V

    goto :goto_42

    .line 698
    :cond_61
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mSeekPosForParser:J

    goto :goto_42
.end method

.method public send_subtitle(Lorg/json/JSONObject;)V
    .locals 26

    .prologue
    .line 326
    if-nez p1, :cond_3

    .line 373
    :cond_2
    return-void

    .line 327
    :cond_3
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 328
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 329
    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    const/high16 v6, 0x41700000    # 15.0f

    div-float/2addr v5, v6

    const/high16 v6, 0x41c80000    # 25.0f

    div-float v10, v5, v6

    .line 330
    invoke-static {v4}, Lbl/abd;->f(Landroid/content/Context;)F

    move-result v11

    .line 331
    const-string v4, "body"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 332
    const-wide v6, 0x3fd999999999999aL    # 0.4

    .line 333
    const v5, 0xffffff

    .line 334
    const/16 v4, 0x80

    .line 335
    const/4 v13, 0x0

    .line 337
    const-string v8, "font_color"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8a

    const-string v8, "Stroke"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8a

    .line 338
    const-string v4, "font_size"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 339
    const-string v4, "font_color"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 340
    const-string v4, "background_alpha"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    const-wide v14, 0x406fe00000000000L    # 255.0

    mul-double/2addr v8, v14

    double-to-int v4, v8

    .line 342
    const-string v8, "Stroke"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "none"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8a

    .line 345
    :cond_8a
    const/4 v8, 0x0

    :goto_8b
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 346
    invoke-virtual {v12, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 347
    const-string v14, "from"

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v14

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v14, v14, v16

    double-to-long v14, v14

    .line 348
    const-string v16, "to"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v16

    const-wide v18, 0x408f400000000000L    # 1000.0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-long v0, v0

    move-wide/from16 v16, v0

    .line 349
    const-string v18, "location"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 350
    const-string v18, "content"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 352
    new-instance v18, Ltv/danmaku/videoplayer/core/danmaku/comment/DrawableItem;

    invoke-direct/range {v18 .. v18}, Ltv/danmaku/videoplayer/core/danmaku/comment/DrawableItem;-><init>()V

    .line 353
    new-instance v19, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v19

    invoke-direct {v0, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 354
    new-instance v20, Landroid/text/style/AbsoluteSizeSpan;

    const-wide/high16 v22, 0x404e000000000000L    # 60.0

    mul-double v22, v22, v6

    float-to-double v0, v10

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    float-to-double v0, v11

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/16 v21, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x21

    invoke-virtual/range {v19 .. v23}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 355
    new-instance v20, Landroid/text/style/AlignmentSpan$Standard;

    sget-object v21, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-direct/range {v20 .. v21}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    const/16 v21, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x21

    invoke-virtual/range {v19 .. v23}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 356
    new-instance v20, Landroid/text/style/BackgroundColorSpan;

    shl-int/lit8 v21, v4, 0x18

    or-int v21, v21, v13

    invoke-direct/range {v20 .. v21}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    const/16 v21, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x21

    invoke-virtual/range {v19 .. v23}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 359
    new-instance v20, Landroid/text/style/ForegroundColorSpan;

    const/high16 v21, -0x1000000

    or-int v21, v21, v5

    invoke-direct/range {v20 .. v21}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v21, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v22, 0x21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v9, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 360
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Ltv/danmaku/videoplayer/core/danmaku/comment/DrawableItem;->mSpannableString:Landroid/text/SpannableStringBuilder;

    .line 363
    :try_start_13d
    move-object/from16 v0, p0

    iget-object v9, v0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v9, v9, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lbl/bgb;

    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Lbl/bgb;->a(I)Lbl/bfk;

    move-result-object v9

    .line 364
    move-object/from16 v0, v18

    iget-object v0, v0, Ltv/danmaku/videoplayer/core/danmaku/comment/DrawableItem;->mSpannableString:Landroid/text/SpannableStringBuilder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v9, Lbl/bfk;->b:Ljava/lang/CharSequence;

    .line 365
    invoke-virtual {v9, v14, v15}, Lbl/bfk;->d(J)V

    .line 366
    new-instance v18, Lbl/bfn;

    sub-long v14, v16, v14

    move-object/from16 v0, v18

    invoke-direct {v0, v14, v15}, Lbl/bfn;-><init>(J)V

    move-object/from16 v0, v18

    iput-object v0, v9, Lbl/bfk;->q:Lbl/bfn;

    .line 367
    const/16 v14, 0x32

    iput v14, v9, Lbl/bfk;->m:I

    .line 369
    const/4 v14, 0x1

    iput-byte v14, v9, Lbl/bfk;->n:B

    .line 370
    move-object/from16 v0, p0

    iget-object v14, v0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-interface {v14, v9}, Lbl/bfd;->a(Lbl/bfk;)V
    :try_end_173
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_173} :catch_177

    .line 345
    :goto_173
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_8b

    .line 371
    :catch_177
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_173
.end method

.method public varargs setDanmakuOption(Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;[Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;",
            "[TT;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 730
    sget-object v0, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->BLOCK_TOP:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;

    invoke-virtual {p1, v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 731
    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1b

    move v0, v1

    :goto_17
    invoke-virtual {v3, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 809
    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    move v0, v2

    .line 731
    goto :goto_17

    .line 734
    :cond_1d
    sget-object v0, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->BLOCK_SCROLL:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;

    invoke-virtual {p1, v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 735
    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 736
    iget-object v4, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    if-nez v3, :cond_3c

    move v0, v1

    :goto_32
    invoke-virtual {v4, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->d(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v0

    if-nez v3, :cond_3e

    :goto_38
    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->c(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    goto :goto_1a

    :cond_3c
    move v0, v2

    goto :goto_32

    :cond_3e
    move v1, v2

    goto :goto_38

    .line 739
    :cond_40
    sget-object v0, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->BLOCK_BOTTOM:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;

    invoke-virtual {p1, v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 740
    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_58

    :goto_54
    invoke-virtual {v3, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->b(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    goto :goto_1a

    :cond_58
    move v1, v2

    goto :goto_54

    .line 743
    :cond_5a
    sget-object v0, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->BLOCK_GUEST:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;

    invoke-virtual {p1, v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 744
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->f(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    goto :goto_1a

    .line 747
    :cond_70
    sget-object v0, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->BLOCK_USER:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;

    invoke-virtual {p1, v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 748
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    check-cast p2, [Ljava/lang/String;

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {v0, p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a([Ljava/lang/String;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    goto :goto_1a

    .line 751
    :cond_82
    sget-object v0, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->BLOCK_COLORFUL:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;

    invoke-virtual {p1, v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 752
    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 753
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(I)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    goto :goto_1a

    .line 756
    :cond_9b
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    new-array v1, v2, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a([Ljava/lang/Integer;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    goto/16 :goto_1a

    .line 760
    :cond_a4
    sget-object v0, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->DUPLICATE_MERGING:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;

    invoke-virtual {p1, v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 761
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->g(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    goto/16 :goto_1a

    .line 764
    :cond_bb
    sget-object v0, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->MAX_ON_SCREEN:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;

    invoke-virtual {p1, v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 765
    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->getDanmakuMaxOnScreen(I)I

    move-result v0

    .line 766
    iput v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mMaxInHorizontalScreen:I

    .line 767
    div-int/lit8 v1, v0, 0x3

    iput v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mMaxInVerticalScreen:I

    .line 768
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(I)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    goto/16 :goto_1a

    .line 771
    :cond_dc
    sget-object v0, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->SCROLL_SPPED_FACTOR:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;

    invoke-virtual {p1, v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 772
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->c(F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    goto/16 :goto_1a

    .line 775
    :cond_f3
    sget-object v0, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->TRANSPARENCY:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;

    invoke-virtual {p1, v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10a

    .line 776
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    goto/16 :goto_1a

    .line 779
    :cond_10a
    sget-object v0, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->TEXTSIZE_SCALE:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;

    invoke-virtual {p1, v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_124

    .line 780
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->b(F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 781
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->updateTextSize()V

    goto/16 :goto_1a

    .line 784
    :cond_124
    sget-object v0, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->STROKEWIDTH_SCALING:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;

    invoke-virtual {p1, v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15c

    .line 785
    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 786
    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v3}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->getDanmakuTextStyle()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_14f

    .line 787
    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v4, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v4}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->getDanmakuTextStyle()I

    move-result v4

    new-array v1, v1, [F

    iget v5, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuStrokenWidth:F

    mul-float/2addr v0, v5

    aput v0, v1, v2

    invoke-virtual {v3, v4, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(I[F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 789
    :cond_14f
    sget v0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuConfig;->sDanmakuStrokenWidth:F

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v1}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->getDanmakuTextSizeScaleFactor()F

    move-result v1

    mul-float/2addr v0, v1

    sput v0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuConfig;->sDanmakuStrokenWidthScaled:F

    goto/16 :goto_1a

    .line 792
    :cond_15c
    sget-object v0, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->BLOCK_DANMAKU_ON_SCREEN:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;

    invoke-virtual {p1, v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_176

    .line 793
    array-length v0, p2

    if-lez v0, :cond_1a

    aget-object v0, p2, v2

    instance-of v0, v0, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;

    if-eqz v0, :cond_1a

    .line 796
    aget-object v0, p2, v2

    check-cast v0, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;

    invoke-direct {p0, v0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->removeDanmakuOnScreen(Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;)V

    goto/16 :goto_1a

    .line 799
    :cond_176
    sget-object v0, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->DANMAKU_RECOMMAND:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;

    invoke-virtual {p1, v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 800
    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 801
    const-string v1, "DanmakuPlayerDFM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "on danmaku filter : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltv/danmaku/android/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    if-ltz v0, :cond_1b6

    const/16 v1, 0xa

    if-gt v0, v1, :cond_1b6

    .line 803
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mFlagFilter:Lbl/bez$a;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbl/bez$a;->setData(Ljava/lang/Object;)V

    .line 804
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mFlagFilter:Lbl/bez$a;

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(Lbl/bez$a;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    goto/16 :goto_1a

    .line 806
    :cond_1b6
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mFlagFilter:Lbl/bez$a;

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->b(Lbl/bez$a;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    goto/16 :goto_1a
.end method

.method public setOnDanmakuClickListener(Lbl/bfd$a;FF)V
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    if-eqz v0, :cond_6

    if-nez p1, :cond_7

    .line 885
    :cond_6
    :goto_6
    return-void

    .line 884
    :cond_7
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-interface {v0, p1, p2, p3}, Lbl/bfd;->a(Lbl/bfd$a;FF)V

    goto :goto_6
.end method

.method public setOnDanmakuListener(Ltv/danmaku/videoplayer/core/danmaku/IDanmakuListener;)V
    .locals 0

    .prologue
    .line 889
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuListener:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuListener;

    .line 890
    return-void
.end method

.method public setPortraitPlayingEnable(ZI)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 828
    iput-boolean p1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPortraitPlayingEnable:Z

    .line 829
    iput p2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mInitWidth:I

    .line 830
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mParser:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;

    if-eqz v0, :cond_e

    .line 831
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mParser:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;

    invoke-virtual {v0, p1, p2}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->notifyPLPlaybackModeChanged(ZI)V

    .line 833
    :cond_e
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    if-eqz v0, :cond_17

    .line 834
    if-eqz p1, :cond_18

    .line 835
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->applyPortraitPlayingConfig()V

    .line 841
    :cond_17
    :goto_17
    return-void

    .line 837
    :cond_18
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mMaxInHorizontalScreen:I

    invoke-virtual {v0, v2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(I)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 838
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mScaleTextSize:F

    invoke-virtual {v0, v2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->b(F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v2, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->b(Ljava/util/Map;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v0

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(Ljava/util/Map;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    goto :goto_17
.end method

.method public setSubtitleData(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 134
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->subtitle_data:Lorg/json/JSONObject;

    .line 135
    iget-boolean v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPrepared:Z

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 136
    invoke-virtual {p0, p1}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->send_subtitle(Lorg/json/JSONObject;)V

    .line 138
    :cond_b
    return-void
.end method

.method public setViewPortSize(II)V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 646
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mShown:Z

    .line 647
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    if-eqz v0, :cond_c

    .line 648
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-interface {v0}, Lbl/bfd;->f()V

    .line 650
    :cond_c
    return-void
.end method

.method public start()V
    .locals 8

    .prologue
    .line 582
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    if-eqz v0, :cond_42

    .line 583
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->isPaused()Z

    move-result v2

    .line 584
    iget-wide v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mResumePosition:J

    .line 585
    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    if-eqz v3, :cond_3b

    .line 586
    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mAnimationTicker:Ltv/danmaku/videoplayer/core/danmaku/DanmakuAnimationTicker;

    if-eqz v3, :cond_2a

    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mAnimationTicker:Ltv/danmaku/videoplayer/core/danmaku/DanmakuAnimationTicker;

    invoke-interface {v3}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuAnimationTicker;->currentOffsetTickMillis()J

    move-result-wide v4

    sub-long v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    cmp-long v3, v4, v6

    if-lez v3, :cond_2a

    .line 587
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mAnimationTicker:Ltv/danmaku/videoplayer/core/danmaku/DanmakuAnimationTicker;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuAnimationTicker;->currentOffsetTickMillis()J

    move-result-wide v0

    .line 589
    :cond_2a
    if-eqz v2, :cond_43

    .line 590
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lbl/bfd;->b(Ljava/lang/Long;)V

    .line 594
    :goto_32
    iget-boolean v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mShown:Z

    if-nez v0, :cond_4d

    .line 595
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-interface {v0}, Lbl/bfd;->g()V

    .line 600
    :cond_3b
    :goto_3b
    if-eqz v2, :cond_53

    .line 601
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-interface {v0}, Lbl/bfd;->c()V

    .line 606
    :cond_42
    :goto_42
    return-void

    .line 592
    :cond_43
    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Lbl/bfd;->b(Ljava/lang/Long;)V

    goto :goto_32

    .line 597
    :cond_4d
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-interface {v0}, Lbl/bfd;->f()V

    goto :goto_3b

    .line 603
    :cond_53
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-interface {v0}, Lbl/bfd;->d()V

    goto :goto_42
.end method

.method public start(Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;Ltv/danmaku/videoplayer/core/danmaku/DanmakuAnimationTicker;J)V
    .locals 2

    .prologue
    .line 565
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPaused:Z

    .line 566
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    .line 567
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mInfo:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;

    if-nez v0, :cond_10

    .line 568
    new-instance v0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;

    invoke-direct {v0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;-><init>()V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mInfo:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;

    .line 570
    :cond_10
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    if-eqz v0, :cond_18

    .line 571
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mInfo:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;

    iput-wide p4, v0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;->mCid:J

    .line 573
    :cond_18
    sget v0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuConfig;->sDanmakuStrokenWidth:F

    invoke-interface {p1}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->getDanmakuStorkeWidthScaling()F

    move-result v1

    mul-float/2addr v0, v1

    sput v0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuConfig;->sDanmakuStrokenWidthScaled:F

    .line 574
    iput-object p2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    .line 575
    iput-object p3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mAnimationTicker:Ltv/danmaku/videoplayer/core/danmaku/DanmakuAnimationTicker;

    .line 576
    invoke-static {}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;->getInstance()Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;->clear(J)V

    .line 577
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->prepareAndStart()V

    .line 578
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 610
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    if-eqz v0, :cond_c

    .line 611
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-interface {v0}, Lbl/bfd;->h()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mResumePosition:J

    .line 613
    :cond_c
    return-void
.end method
