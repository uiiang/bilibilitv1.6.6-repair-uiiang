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

.field private mLastReleaseMs:J

.field private mMaxInHorizontalScreen:I

.field private mMaxInVerticalScreen:I

.field private mPaddingBottom:I

.field private mParser:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;

.field private mPaused:Z

.field private mPortraitPlayingEnable:Z

.field private mPortraitTextSize:F

.field private mPrefetchHandler:Landroid/os/Handler;

.field private mPrefetchRunnable:Ljava/lang/Runnable;

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
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/16 v0, 0xc

    iput v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mMaxInVerticalScreen:I

    .line 76
    const/16 v0, 0x24

    iput v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mMaxInHorizontalScreen:I

    .line 77
    iput v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPortraitTextSize:F

    .line 78
    iput v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mScaleTextSize:F

    .line 79
    iput v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mScrollSpeedFactor:F

    .line 80
    iput v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mInitWidth:I

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mShown:Z

    .line 82
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mSeekPosForParser:J

    .line 86
    iput-wide v4, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mLastReleaseMs:J

    .line 87
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;-><init>()V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 88
    const/high16 v0, 0x40600000    # 3.5f

    iput v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuStrokenWidth:F

    .line 89
    iput v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mProjectionOffsetX:F

    .line 90
    iput v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mProjectionOffsetY:F

    .line 91
    const/16 v0, 0xe6

    iput v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mProjectionAlpha:I

    .line 92
    iput-wide v4, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mResumePosition:J

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPaddingBottom:I

    .line 94
    iput v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuShownCount:I

    .line 95
    new-instance v0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$1;

    invoke-direct {v0, p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$1;-><init>(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;)V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mFlagFilter:Lbl/bez$a;

    .line 129
    new-instance v0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$2;

    invoke-direct {v0, p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$2;-><init>(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;)V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mCacheStufferAdapter:Lbl/bfz$a;

    return-void
.end method

.method static synthetic access$100(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;)Ltv/danmaku/videoplayer/core/danmaku/DanmakuAnimationTicker;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mAnimationTicker:Ltv/danmaku/videoplayer/core/danmaku/DanmakuAnimationTicker;

    return-object v0
.end method

.method static synthetic access$1000(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;J)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->releaseDanmakusBefore(J)V

    return-void
.end method

.method static synthetic access$1100(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPrefetchRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1200(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;)Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    return-object v0
.end method

.method static synthetic access$1300(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;)J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mSeekPosForParser:J

    return-wide v0
.end method

.method static synthetic access$1302(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;J)J
    .locals 1

    .prologue
    .line 60
    iput-wide p1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mSeekPosForParser:J

    return-wide p1
.end method

.method static synthetic access$1400(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;)Lbl/bez$a;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mFlagFilter:Lbl/bez$a;

    return-object v0
.end method

.method static synthetic access$1500(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    return-object v0
.end method

.method static synthetic access$200(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;)I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuShownCount:I

    return v0
.end method

.method static access$208(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;)I
    .locals 2

    .prologue
    .line 160
    iget v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuShownCount:I

    .line 161
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuShownCount:I

    .line 162
    return v0
.end method

.method static synthetic access$300(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;)Ltv/danmaku/videoplayer/core/danmaku/IDanmakuListener;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuListener:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuListener;

    return-object v0
.end method

.method static synthetic access$402(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;Z)Z
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPrepared:Z

    return p1
.end method

.method static synthetic access$500(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;)I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$600(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;)Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mInfo:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;

    return-object v0
.end method

.method static synthetic access$700(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;)Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mParser:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;

    return-object v0
.end method

.method static synthetic access$800(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPrefetchHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPaused:Z

    return v0
.end method

.method private applyPortraitPlayingConfig()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x5

    const/4 v3, 0x1

    .line 1056
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->l:F

    iput v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mScrollSpeedFactor:F

    .line 1057
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mMaxInVerticalScreen:I

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(I)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 1058
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPortraitTextSize:F

    const v2, 0x3ecccccd    # 0.4f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->b(F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 1059
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1060
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->b(Ljava/util/Map;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 1065
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1066
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(Ljava/util/Map;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 1071
    return-void
.end method

.method private getDanmakuMaxOnScreen(I)I
    .locals 2

    .prologue
    .line 1088
    const/16 v0, 0x96

    if-ne p1, v0, :cond_6

    .line 1089
    const/4 p1, 0x0

    .line 1091
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
    .line 310
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    .line 311
    if-eqz p1, :cond_c

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mParser:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;

    if-eqz v0, :cond_c

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mAnimationTicker:Ltv/danmaku/videoplayer/core/danmaku/DanmakuAnimationTicker;

    if-nez v0, :cond_d

    .line 334
    :cond_c
    :goto_c
    return-void

    .line 314
    :cond_d
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mParser:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->parseItem(Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;I)Lbl/bfk;

    move-result-object v2

    .line 315
    if-eqz v2, :cond_2e

    .line 316
    invoke-interface {v1}, Lbl/bfd;->getCurrentTime()J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lbl/bfk;->d(J)V

    .line 317
    iput-boolean p2, v2, Lbl/bfk;->x:Z

    .line 318
    iget-boolean v0, p1, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mSentFromMe:Z

    if-eqz v0, :cond_2e

    .line 319
    const/4 v0, 0x1

    iput-byte v0, v2, Lbl/bfk;->n:B

    .line 320
    const v0, -0xff0100

    iput v0, v2, Lbl/bfk;->j:I

    .line 323
    :cond_2e
    if-eqz v1, :cond_c

    invoke-interface {v1}, Lbl/bfd;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 324
    if-eqz p2, :cond_3e

    invoke-interface {v1}, Lbl/bfd;->isShown()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 325
    :cond_3e
    if-eqz p2, :cond_49

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    if-eqz v0, :cond_49

    .line 327
    :try_start_44
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    invoke-interface {v0, p1}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;->addLiveRawJsonDanmaku(Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;)V
    :try_end_49
    .catch Lorg/json/JSONException; {:try_start_44 .. :try_end_49} :catch_4d

    .line 332
    :cond_49
    :goto_49
    invoke-interface {v1, v2}, Lbl/bfd;->a(Lbl/bfk;)V

    goto :goto_c

    .line 328
    :catch_4d
    move-exception v0

    .line 329
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

    .line 438
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

    .line 446
    :cond_23
    :goto_23
    return-void

    .line 441
    :cond_24
    iget-object v1, p1, Ltv/danmaku/videoplayer/core/danmaku/comment/DrawableItem;->mSpannableString:Landroid/text/SpannableStringBuilder;

    iput-object v1, v0, Lbl/bfk;->b:Ljava/lang/CharSequence;

    .line 442
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-interface {v1}, Lbl/bfd;->getCurrentTime()J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lbl/bfk;->d(J)V

    .line 443
    iput-boolean p2, v0, Lbl/bfk;->x:Z

    .line 444
    iput-byte v6, v0, Lbl/bfk;->n:B

    .line 445
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

    .line 449
    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mAnimationTicker:Ltv/danmaku/videoplayer/core/danmaku/DanmakuAnimationTicker;

    if-nez v3, :cond_9

    .line 568
    :goto_8
    return-void

    .line 452
    :cond_9
    iput v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuShownCount:I

    .line 453
    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mAnimationTicker:Ltv/danmaku/videoplayer/core/danmaku/DanmakuAnimationTicker;

    invoke-interface {v3}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuAnimationTicker;->startTicker()V

    .line 454
    const/16 v3, 0x28

    const/16 v4, 0x64

    iget-object v5, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v5}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->getDanmakuMaxOnScreen()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 456
    iget-object v4, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v4}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->isRealTimeDanmaku()Z

    move-result v4

    if-eqz v4, :cond_172

    .line 457
    new-instance v3, Ltv/danmaku/videoplayer/core/danmaku/LiveDanmakuParser;

    iget-object v4, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    iget v5, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mInitWidth:I

    iget-boolean v6, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPortraitPlayingEnable:Z

    invoke-direct {v3, v4, v5, v6}, Ltv/danmaku/videoplayer/core/danmaku/LiveDanmakuParser;-><init>(Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;IZ)V

    iput-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mParser:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;

    .line 465
    :goto_37
    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-interface {v3, v1}, Lbl/bfd;->a(Z)V

    .line 466
    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 467
    iget-object v4, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v4}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->isDanmakuMonospaced()Z

    move-result v4

    if-nez v4, :cond_19f

    .line 468
    const-string v3, "DanmakuPlayerDFM"

    const-string v4, "use system font"

    invoke-static {v3, v4}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    :goto_51
    sget v3, Ltv/danmaku/videoplayer/core/danmaku/DanmakuConfig;->sDanmakuStrokenWidth:F

    iput v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuStrokenWidth:F

    .line 478
    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v3}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->getDanmakuMaxOnScreen()I

    move-result v3

    invoke-direct {p0, v3}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->getDanmakuMaxOnScreen(I)I

    move-result v3

    .line 479
    iput v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mMaxInHorizontalScreen:I

    .line 480
    div-int/lit8 v4, v3, 0x3

    iput v4, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mMaxInVerticalScreen:I

    .line 481
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

    .line 482
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->isDanmakuRecommandEnable()Z

    move-result v0

    if-eqz v0, :cond_1c5

    .line 483
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mFlagFilter:Lbl/bez$a;

    invoke-virtual {v0, v3}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(Lbl/bez$a;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 487
    :goto_e3
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->isRealTimeDanmaku()Z

    move-result v0

    if-eqz v0, :cond_1ce

    .line 488
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    new-instance v3, Lbl/bgh;

    invoke-direct {v3}, Lbl/bgh;-><init>()V

    iget-object v4, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mCacheStufferAdapter:Lbl/bfz$a;

    invoke-virtual {v0, v3, v4}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(Lbl/bfz;Lbl/bfz$a;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 512
    :goto_f7
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->updateTextSize()V

    .line 513
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->l:F

    iput v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mScrollSpeedFactor:F

    .line 514
    iget-boolean v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPortraitPlayingEnable:Z

    if-eqz v0, :cond_107

    .line 515
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->applyPortraitPlayingConfig()V

    .line 517
    :cond_107
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->getDanmakuTextStyle()I

    move-result v0

    if-ne v8, v0, :cond_1da

    .line 518
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

    .line 522
    :goto_124
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->getBlockUserIds()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f4

    .line 523
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

    .line 529
    :goto_14f
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->isDanmakuBlockColorful()Z

    move-result v0

    if-eqz v0, :cond_20a

    .line 530
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(I)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 534
    :goto_15d
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    new-instance v1, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$4;

    invoke-direct {v1, p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$4;-><init>(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;)V

    invoke-interface {v0, v1}, Lbl/bfd;->setCallback(Lbl/bfa$a;)V

    .line 567
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mParser:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;

    iget-object v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-interface {v0, v1, v2}, Lbl/bfd;->a(Lbl/bgn;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V

    goto/16 :goto_8

    .line 459
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

    .line 460
    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mParser:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;

    new-instance v4, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$OnParseFinishListener;

    invoke-direct {v4, p0, v0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$OnParseFinishListener;-><init>(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$1;)V

    invoke-virtual {v3, v4}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->setParseFinishListener(Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$OnParseListener;)V

    .line 462
    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mParser:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;

    iget-object v4, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mInfo:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;

    iget-wide v4, v4, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;->mCid:J

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->setInfoCid(I)V

    goto/16 :goto_37

    .line 470
    :cond_19f
    const-string v0, "fonts/danmaku.ttf"

    invoke-static {v3, v0}, Lbl/ls;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 471
    if-eqz v0, :cond_1b0

    .line 472
    const-string v3, "DanmakuPlayerDFM"

    const-string v4, "load font danmaku.ttf"

    invoke-static {v3, v4}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_51

    .line 474
    :cond_1b0
    const-string v3, "DanmakuPlayerDFM"

    const-string v4, "failed to load font danmaku.ttf"

    invoke-static {v3, v4}, Ltv/danmaku/android/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_51

    :cond_1b9
    move v0, v2

    .line 481
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

    .line 485
    :cond_1c5
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mFlagFilter:Lbl/bez$a;

    invoke-virtual {v0, v3}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->b(Lbl/bez$a;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    goto/16 :goto_e3

    .line 490
    :cond_1ce
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    new-instance v3, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$3;

    invoke-direct {v3, p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$3;-><init>(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;)V

    invoke-virtual {v0, v3}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(Lbl/bfh;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    goto/16 :goto_f7

    .line 520
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

    .line 524
    :cond_1f4
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->isDanmakuBlockGuest()Z

    move-result v0

    if-eqz v0, :cond_203

    .line 525
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->f(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    goto/16 :goto_14f

    .line 527
    :cond_203
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v0, v2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->f(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    goto/16 :goto_14f

    .line 532
    :cond_20a
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    new-array v1, v2, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a([Ljava/lang/Integer;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    goto/16 :goto_15d
.end method

.method private releaseDanmakusBefore(J)V
    .locals 9

    .prologue
    const-wide/32 v4, 0x57e40

    .line 735
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    if-eqz v0, :cond_b

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mParser:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;

    if-nez v0, :cond_c

    .line 759
    :cond_b
    :goto_b
    return-void

    .line 738
    :cond_c
    invoke-static {}, Lmybl/DanmakuSegmentLoader;->getInstance()Lmybl/DanmakuSegmentLoader;

    move-result-object v0

    invoke-virtual {v0}, Lmybl/DanmakuSegmentLoader;->isFullListLoaded()Z

    move-result v0

    if-nez v0, :cond_b

    .line 743
    div-long v0, p1, v4

    mul-long/2addr v0, v4

    sub-long v2, v0, v4

    .line 744
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_b

    .line 747
    iget-wide v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mLastReleaseMs:J

    sub-long v0, p1, v0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_b

    .line 750
    iput-wide p1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mLastReleaseMs:J

    .line 751
    const/4 v0, 0x0

    .line 752
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    instance-of v1, v1, Lbl/yl;

    if-eqz v1, :cond_3a

    .line 753
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    check-cast v0, Lbl/yl;

    invoke-virtual {v0, v2, v3}, Lbl/yl;->removeArchiveDanmakusBefore(J)I

    move-result v0

    .line 755
    :cond_3a
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mParser:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;

    invoke-virtual {v1, v2, v3}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->removeDanmakusBefore(J)I

    move-result v1

    .line 756
    invoke-static {}, Lmybl/DanmakuSegmentLoader;->getInstance()Lmybl/DanmakuSegmentLoader;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lmybl/DanmakuSegmentLoader;->releaseSegmentsBefore(J)I

    move-result v4

    .line 757
    const-string v5, "DanmakuPlayerDFM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[releaseDanmaku] keepFrom="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " storage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " render="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method private removeDanmakuOnScreen(Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;)V
    .locals 2

    .prologue
    .line 1096
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    if-eqz v0, :cond_12

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-interface {v0}, Lbl/bfd;->getCurrentVisibleDanmakus()Lbl/bfs;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v0}, Lbl/bfs;->e()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1116
    :cond_12
    :goto_12
    return-void

    .line 1099
    :cond_13
    new-instance v1, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$8;

    invoke-direct {v1, p0, p1}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$8;-><init>(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;)V

    invoke-interface {v0, v1}, Lbl/bfs;->b(Lbl/bfs$b;)V

    goto :goto_12
.end method

.method private seekToMsec(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$SeekData;)V
    .locals 8

    .prologue
    .line 576
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mAnimationTicker:Ltv/danmaku/videoplayer/core/danmaku/DanmakuAnimationTicker;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPrepared:Z

    if-eqz v0, :cond_a

    if-nez p1, :cond_b

    .line 584
    :cond_a
    :goto_a
    return-void

    .line 579
    :cond_b
    iget-wide v0, p1, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$SeekData;->to:J

    .line 580
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

    .line 581
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    if-eqz v2, :cond_a

    .line 582
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Lbl/bfd;->a(Ljava/lang/Long;)V

    goto :goto_a
.end method

.method private startSegmentPrefetch(Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;)V
    .locals 7

    .prologue
    .line 650
    instance-of v0, p1, Lbl/yl;

    if-nez v0, :cond_5

    .line 724
    :goto_4
    return-void

    .line 653
    :cond_5
    check-cast p1, Lbl/yl;

    .line 654
    invoke-virtual {p1}, Lbl/yl;->getAidLong()J

    move-result-wide v2

    .line 655
    invoke-virtual {p1}, Lbl/yl;->getCidLong()J

    move-result-wide v4

    .line 656
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-gtz v0, :cond_1d

    .line 657
    const-string v0, "DanmakuPlayerDFM"

    const-string v1, "segment prefetch skip, cid invalid"

    invoke-static {v0, v1}, Ltv/danmaku/android/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 660
    :cond_1d
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_55

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 661
    :goto_27
    invoke-static {}, Lmybl/DanmakuSegmentLoader;->getInstance()Lmybl/DanmakuSegmentLoader;

    move-result-object v0

    new-instance v6, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$6;

    invoke-direct {v6, p0, v4, v5}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$6;-><init>(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;J)V

    invoke-virtual/range {v0 .. v6}, Lmybl/DanmakuSegmentLoader;->init(Landroid/content/Context;JJLmybl/DanmakuSegmentLoader$Callback;)V

    .line 704
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPrefetchHandler:Landroid/os/Handler;

    .line 705
    new-instance v0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$7;

    invoke-direct {v0, p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$7;-><init>(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;)V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPrefetchRunnable:Ljava/lang/Runnable;

    .line 721
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPrefetchHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPrefetchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 723
    invoke-static {}, Lmybl/DanmakuSegmentLoader;->getInstance()Lmybl/DanmakuSegmentLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmybl/DanmakuSegmentLoader;->loadSegment(I)V

    goto :goto_4

    .line 660
    :cond_55
    const/4 v1, 0x0

    goto :goto_27
.end method

.method private updateTextSize()V
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->c:F

    iput v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mScaleTextSize:F

    .line 572
    iget v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mScaleTextSize:F

    const v1, 0x3f547ae1    # 0.83f

    mul-float/2addr v0, v1

    iput v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPortraitTextSize:F

    .line 573
    return-void
.end method


# virtual methods
.method public alignDanmakuBottom(Z)V
    .locals 1

    .prologue
    .line 1039
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->h(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 1040
    return-void
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 153
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
    .line 269
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

    .line 278
    :cond_1a
    return-void

    .line 272
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

    .line 273
    iget-wide v4, v0, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mTimeMilli:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 274
    if-eqz v1, :cond_1f

    .line 275
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
    .line 218
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 219
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPrepared:Z

    if-nez v0, :cond_f

    :cond_d
    move-object v0, v2

    .line 263
    :goto_e
    return-object v0

    .line 222
    :cond_f
    const/4 v0, 0x0

    .line 223
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    if-eqz v1, :cond_26

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v1}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->getDanmakuDocument()Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-interface {v1}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;->getFilter()Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$Filter;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 224
    invoke-interface {v1}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$Filter;->getBlockItems()Ljava/util/SortedMap;

    move-result-object v0

    .line 226
    :cond_26
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    invoke-interface {v1}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;->getCommentStorage()Ljava/util/SortedMap;

    move-result-object v1

    .line 227
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v3

    .line 228
    if-eqz v1, :cond_42

    invoke-interface {v1}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_42

    .line 229
    monitor-enter v1

    .line 230
    :try_start_3e
    invoke-interface {v3, v1}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    .line 231
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_94

    .line 233
    :cond_42
    if-eqz v0, :cond_9f

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9f

    .line 234
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

    .line 235
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 236
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 237
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 238
    if-eqz v0, :cond_97

    .line 239
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

    .line 240
    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7e

    .line 241
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    .line 231
    :catchall_94
    move-exception v0

    :try_start_95
    monitor-exit v1
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    throw v0

    .line 245
    :cond_97
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    .line 249
    :cond_9f
    if-eqz v3, :cond_d2

    invoke-interface {v3}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d2

    .line 250
    monitor-enter v3

    .line 251
    :try_start_a8
    invoke-interface {v3}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 252
    :cond_b0
    :goto_b0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 253
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 254
    if-eqz v0, :cond_b0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b0

    .line 255
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_b0

    .line 258
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

    .line 260
    :cond_d2
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->isRealTimeDanmaku()Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 261
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    invoke-interface {v0, v2}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;->copyLiveCommentsTo(Ljava/util/ArrayList;)V

    :cond_dd
    move-object v0, v2

    .line 263
    goto/16 :goto_e
.end method

.method public bridge synthetic getAllActivedItems()Ljava/util/List;
    .locals 1

    .prologue
    .line 60
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

    .line 192
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 193
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

    .line 211
    :goto_18
    return-object v0

    .line 196
    :cond_19
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    if-nez v0, :cond_6a

    move-wide v0, v2

    .line 197
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

    .line 198
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    invoke-interface {v1}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;->getCommentStorage()Ljava/util/SortedMap;

    move-result-object v1

    monitor-enter v1

    .line 199
    :try_start_3d
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 200
    :cond_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 201
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

    .line 202
    invoke-virtual {p0, v0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->isBlocked(Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;)Z

    move-result v5

    if-nez v5, :cond_51

    .line 203
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_51

    .line 207
    :catchall_67
    move-exception v0

    monitor-exit v1
    :try_end_69
    .catchall {:try_start_3d .. :try_end_69} :catchall_67

    throw v0

    .line 196
    :cond_6a
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-interface {v0}, Lbl/bfd;->getCurrentTime()J

    move-result-wide v0

    goto :goto_1e

    .line 207
    :cond_71
    :try_start_71
    monitor-exit v1
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_67

    .line 208
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->isRealTimeDanmaku()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 209
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    invoke-interface {v0, v4}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;->copyLiveCommentsTo(Ljava/util/ArrayList;)V

    :cond_7d
    move-object v0, v4

    .line 211
    goto :goto_18
.end method

.method public bridge synthetic getCurrentActivedItems()Ljava/util/List;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->getCurrentActivedItems()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getDanmakuCurrentTime()I
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    if-nez v0, :cond_6

    .line 283
    const/4 v0, 0x0

    .line 285
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
    .line 915
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mInfo:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;

    if-eqz v0, :cond_e

    .line 916
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mInfo:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_11

    const-string v0, "N/A"

    :goto_c
    iput-object v0, v1, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;->mName:Ljava/lang/String;

    .line 918
    :cond_e
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mInfo:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;

    return-object v0

    .line 916
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
    .line 60
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->getParser()Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;

    move-result-object v0

    return-object v0
.end method

.method public getParser()Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;
    .locals 1

    .prologue
    .line 1120
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
    .line 833
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mFlagFilter:Lbl/bez$a;

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 846
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mShown:Z

    .line 847
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    if-eqz v0, :cond_c

    .line 848
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-interface {v0}, Lbl/bfd;->g()V

    .line 850
    :cond_c
    return-void
.end method

.method public initView(Landroid/view/ViewGroup;ZI)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 589
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    if-eqz v0, :cond_22

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-interface {v0}, Lbl/bfd;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 590
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-interface {v0}, Lbl/bfd;->getView()Landroid/view/View;

    move-result-object v1

    .line 591
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 592
    if-eqz v0, :cond_22

    .line 593
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 596
    :cond_22
    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 627
    :cond_2a
    :goto_2a
    return-void

    .line 599
    :cond_2b
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 600
    iput p3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mInitWidth:I

    .line 601
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mRootView:Landroid/view/ViewGroup;

    .line 602
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    if-eqz v1, :cond_3f

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-interface {v1}, Lbl/bfd;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_46

    .line 603
    :cond_3f
    new-instance v1, Lbl/bgy;

    invoke-direct {v1, v0}, Lbl/bgy;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    .line 605
    :cond_46
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-interface {v1}, Lbl/bfd;->getView()Landroid/view/View;

    move-result-object v1

    .line 606
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-ltz v2, :cond_55

    .line 607
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 609
    :cond_55
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 610
    iget v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPaddingBottom:I

    if-ltz v2, :cond_69

    .line 611
    new-instance v2, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$5;

    invoke-direct {v2, p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$5;-><init>(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 618
    :cond_69
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuConfig;->init(Landroid/content/Context;)V

    .line 619
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0x190

    if-lt v0, v1, :cond_87

    .line 620
    iput v4, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mProjectionOffsetY:F

    .line 621
    iput v4, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mProjectionOffsetX:F

    .line 626
    :goto_82
    const/16 v0, 0xe6

    iput v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mProjectionAlpha:I

    goto :goto_2a

    .line 623
    :cond_87
    iput v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mProjectionOffsetY:F

    .line 624
    iput v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mProjectionOffsetX:F

    goto :goto_82
.end method

.method public isBlocked(Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 289
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->b()Z

    move-result v0

    if-nez v0, :cond_30

    move v0, v1

    .line 290
    :goto_b
    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v3}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->e()Z

    move-result v3

    if-nez v3, :cond_32

    move v3, v1

    .line 291
    :goto_14
    iget-object v4, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v4}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->d()Z

    move-result v4

    if-nez v4, :cond_34

    move v4, v1

    .line 292
    :goto_1d
    iget-object v5, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v5}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->c()Z

    move-result v5

    if-nez v5, :cond_36

    move v5, v1

    .line 293
    :goto_26
    invoke-virtual {p1}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->getCommentType()I

    move-result v6

    .line 294
    if-eqz v0, :cond_38

    const/4 v0, 0x5

    if-ne v6, v0, :cond_38

    .line 306
    :cond_2f
    :goto_2f
    return v1

    :cond_30
    move v0, v2

    .line 289
    goto :goto_b

    :cond_32
    move v3, v2

    .line 290
    goto :goto_14

    :cond_34
    move v4, v2

    .line 291
    goto :goto_1d

    :cond_36
    move v5, v2

    .line 292
    goto :goto_26

    .line 297
    :cond_38
    if-eqz v5, :cond_3d

    const/4 v0, 0x4

    if-eq v6, v0, :cond_2f

    .line 300
    :cond_3d
    if-eqz v4, :cond_42

    const/4 v0, 0x6

    if-eq v6, v0, :cond_2f

    .line 303
    :cond_42
    if-eqz v3, :cond_46

    if-eq v6, v1, :cond_2f

    .line 306
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
    .line 899
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
    .line 1125
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
    .line 859
    iget-boolean v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPaused:Z

    return v0
.end method

.method public isRealTimeDanmaku()Z
    .locals 1

    .prologue
    .line 1007
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
    .line 854
    iget-boolean v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mShown:Z

    return v0
.end method

.method public onDanmakuAppended(Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;)V
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->isRealTimeDanmaku()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->onDanmakuAppended(Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;Z)V

    .line 183
    return-void
.end method

.method public onDanmakuAppended(Ltv/danmaku/videoplayer/core/danmaku/comment/DrawableItem;)V
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->isRealTimeDanmaku()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->onDanmakuAppended(Ltv/danmaku/videoplayer/core/danmaku/comment/DrawableItem;Z)V

    .line 188
    return-void
.end method

.method public paddngBottom(I)V
    .locals 3

    .prologue
    .line 1044
    iput p1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPaddingBottom:I

    .line 1045
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .line 1046
    :goto_d
    if-eqz v1, :cond_1e

    .line 1047
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1048
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_1e

    .line 1049
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1050
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 1053
    :cond_1e
    return-void

    .line 1045
    :cond_1f
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_d
.end method

.method public parseDanamaku(JJ)V
    .locals 9

    .prologue
    .line 904
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mRootView:Landroid/view/ViewGroup;

    .line 905
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mParser:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;

    if-eqz v1, :cond_8

    if-nez v0, :cond_9

    .line 911
    :cond_8
    :goto_8
    return-void

    .line 909
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
    .line 864
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPaused:Z

    .line 865
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    if-eqz v0, :cond_c

    .line 866
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-interface {v0}, Lbl/bfd;->c()V

    .line 868
    :cond_c
    return-void
.end method

.method public refreshSubtitle()V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->subtitle_data:Lorg/json/JSONObject;

    if-eqz v0, :cond_d

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    if-eqz v0, :cond_d

    .line 432
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->subtitle_data:Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->send_subtitle(Lorg/json/JSONObject;)V

    .line 434
    :cond_d
    return-void
.end method

.method public release()V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 798
    iput-wide v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mResumePosition:J

    .line 799
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPaused:Z

    .line 800
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPrepared:Z

    .line 801
    iput-object v4, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->subtitle_data:Lorg/json/JSONObject;

    .line 802
    iput-wide v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mLastReleaseMs:J

    .line 803
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mInfo:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;

    if-eqz v0, :cond_1e

    .line 804
    invoke-static {}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;->getInstance()Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mInfo:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;

    iget-wide v2, v1, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;->mCid:J

    invoke-virtual {v0, v2, v3}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;->clear(J)V

    .line 807
    :cond_1e
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPrefetchHandler:Landroid/os/Handler;

    if-eqz v0, :cond_36

    .line 808
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPrefetchRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2d

    .line 809
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPrefetchHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPrefetchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 811
    :cond_2d
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPrefetchHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 812
    iput-object v4, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPrefetchHandler:Landroid/os/Handler;

    .line 813
    iput-object v4, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPrefetchRunnable:Ljava/lang/Runnable;

    .line 815
    :cond_36
    invoke-static {}, Lmybl/DanmakuSegmentLoader;->getInstance()Lmybl/DanmakuSegmentLoader;

    move-result-object v0

    invoke-virtual {v0}, Lmybl/DanmakuSegmentLoader;->clear()V

    .line 816
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mRootView:Landroid/view/ViewGroup;

    .line 817
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    if-eqz v1, :cond_55

    .line 818
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    .line 819
    iput-object v4, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    .line 820
    if-eqz v1, :cond_55

    .line 821
    invoke-interface {v1}, Lbl/bfd;->getView()Landroid/view/View;

    move-result-object v2

    .line 822
    invoke-interface {v1}, Lbl/bfd;->e()V

    .line 823
    if-eqz v0, :cond_55

    .line 824
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 828
    :cond_55
    iput-object v4, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mAnimationTicker:Ltv/danmaku/videoplayer/core/danmaku/DanmakuAnimationTicker;

    .line 829
    iput-object v4, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mRootView:Landroid/view/ViewGroup;

    .line 830
    return-void
.end method

.method public removeAllLiveDanamkus()V
    .locals 1

    .prologue
    .line 1012
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    if-eqz v0, :cond_9

    .line 1013
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;->removeAllLiveDanmakus()V

    .line 1015
    :cond_9
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    if-eqz v0, :cond_12

    .line 1016
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-interface {v0}, Lbl/bfd;->b()V

    .line 1018
    :cond_12
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 872
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPaused:Z

    .line 873
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    if-eqz v0, :cond_c

    .line 874
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-interface {v0}, Lbl/bfd;->d()V

    .line 876
    :cond_c
    return-void
.end method

.method public seek(JJ)V
    .locals 11

    .prologue
    const-wide/16 v8, 0x0

    .line 880
    new-instance v0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$SeekData;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$SeekData;-><init>(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;JJ)V

    invoke-direct {p0, v0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->seekToMsec(Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM$SeekData;)V

    .line 881
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->isNewDanmaku()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 882
    invoke-static {}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;->getInstance()Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mInfo:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;

    iget-wide v2, v1, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;->mCid:J

    invoke-virtual {v0, p3, p4, v2, v3}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;->getStartTs(JJ)J

    move-result-wide v0

    .line 883
    invoke-static {}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;->getInstance()Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;

    move-result-object v2

    const-wide/32 v4, 0x8ca0

    add-long/2addr v4, p3

    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mInfo:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;

    iget-wide v6, v3, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;->mCid:J

    invoke-virtual {v2, v4, v5, v6, v7}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;->getStartTs(JJ)J

    move-result-wide v2

    .line 884
    invoke-static {}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;->getInstance()Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;

    move-result-object v4

    iget-object v5, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mInfo:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;

    iget-wide v6, v5, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;->mCid:J

    invoke-virtual {v4, v6, v7, v0, v1}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;->illegal(JJ)Z

    move-result v4

    if-nez v4, :cond_4a

    .line 885
    iput-wide p3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mSeekPosForParser:J

    .line 886
    invoke-virtual {p0, v0, v1, v8, v9}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->parseDanamaku(JJ)V

    .line 894
    :cond_42
    :goto_42
    invoke-static {}, Lmybl/DanmakuSegmentLoader;->getInstance()Lmybl/DanmakuSegmentLoader;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lmybl/DanmakuSegmentLoader;->loadSegmentForPosition(J)V

    .line 895
    return-void

    .line 887
    :cond_4a
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

    if-nez v0, :cond_68

    .line 888
    invoke-virtual {p0, v2, v3, v8, v9}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->parseDanamaku(JJ)V

    goto :goto_42

    .line 890
    :cond_68
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mSeekPosForParser:J

    goto :goto_42
.end method

.method public send_subtitle(Lorg/json/JSONObject;)V
    .locals 26

    .prologue
    .line 337
    if-nez p1, :cond_3

    .line 428
    :cond_2
    return-void

    .line 338
    :cond_3
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 339
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 340
    iget v3, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    const/high16 v4, 0x41700000    # 15.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x41c80000    # 25.0f

    div-float v15, v3, v4

    .line 341
    invoke-static {v2}, Lbl/abd;->get_subtitle_size(Landroid/content/Context;)F

    move-result v16

    .line 342
    const-string v2, "body"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 343
    const-wide v4, 0x3fd999999999999aL    # 0.4

    .line 344
    const v3, 0xffffff

    .line 345
    const/16 v2, 0x80

    .line 346
    const/16 v18, 0x0

    .line 348
    const-string v7, "font_color"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1d4

    const-string v7, "Stroke"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1d4

    .line 349
    const-string v2, "font_size"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 350
    const-string v2, "font_color"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 351
    const-string v2, "background_alpha"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    const-wide v10, 0x406fe00000000000L    # 255.0

    mul-double/2addr v8, v10

    double-to-int v2, v8

    .line 353
    const-string v7, "Stroke"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "none"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8b

    :cond_8b
    move v10, v2

    move v11, v3

    move-wide v12, v4

    .line 357
    :goto_8e
    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    mul-double/2addr v2, v12

    float-to-double v4, v15

    mul-double/2addr v2, v4

    move/from16 v0, v16

    float-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-float v0, v2

    move/from16 v19, v0

    .line 362
    const/high16 v2, 0x40000000    # 2.0f

    mul-float v2, v2, v19

    float-to-int v2, v2

    .line 363
    iget v3, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v3

    const-wide v6, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v4, v6

    double-to-int v3, v4

    .line 364
    sub-int v2, v3, v2

    .line 367
    const/high16 v3, 0x41200000    # 10.0f

    mul-float v3, v3, v19

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 369
    const/4 v2, 0x0

    move v14, v2

    :goto_b6
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v14, v2, :cond_2

    .line 370
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 371
    const-string v3, "from"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double/2addr v6, v8

    double-to-long v0, v6

    move-wide/from16 v20, v0

    .line 372
    const-string v3, "to"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double/2addr v6, v8

    double-to-long v0, v6

    move-wide/from16 v22, v0

    .line 373
    const-string v3, "location"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 374
    const-string v3, "content"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 377
    if-eqz v3, :cond_13e

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_13e

    .line 378
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    .line 379
    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 382
    new-instance v2, Landroid/text/StaticLayout;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 393
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    const/4 v6, 0x1

    if-le v4, v6, :cond_13e

    .line 394
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    const/4 v4, 0x0

    :goto_115
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v7

    if-ge v4, v7, :cond_13a

    .line 396
    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v7

    .line 397
    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v8

    .line 398
    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v4, v7, :cond_137

    .line 400
    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    :cond_137
    add-int/lit8 v4, v4, 0x1

    goto :goto_115

    .line 403
    :cond_13a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 407
    :cond_13e
    new-instance v2, Ltv/danmaku/videoplayer/core/danmaku/comment/DrawableItem;

    invoke-direct {v2}, Ltv/danmaku/videoplayer/core/danmaku/comment/DrawableItem;-><init>()V

    .line 408
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 409
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    mul-double/2addr v8, v12

    float-to-double v0, v15

    move-wide/from16 v24, v0

    mul-double v8, v8, v24

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v8, v8, v24

    double-to-int v7, v8

    invoke-direct {v6, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 410
    new-instance v6, Landroid/text/style/AlignmentSpan$Standard;

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-direct {v6, v7}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 411
    new-instance v6, Landroid/text/style/BackgroundColorSpan;

    shl-int/lit8 v7, v10, 0x18

    or-int v7, v7, v18

    invoke-direct {v6, v7}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 414
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    const/high16 v7, -0x1000000

    or-int/2addr v7, v11

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v8, 0x21

    invoke-virtual {v4, v6, v7, v3, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 415
    iput-object v4, v2, Ltv/danmaku/videoplayer/core/danmaku/comment/DrawableItem;->mSpannableString:Landroid/text/SpannableStringBuilder;

    .line 418
    :try_start_19f
    move-object/from16 v0, p0

    iget-object v3, v0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v3, v3, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lbl/bgb;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lbl/bgb;->a(I)Lbl/bfk;

    move-result-object v3

    .line 419
    iget-object v2, v2, Ltv/danmaku/videoplayer/core/danmaku/comment/DrawableItem;->mSpannableString:Landroid/text/SpannableStringBuilder;

    iput-object v2, v3, Lbl/bfk;->b:Ljava/lang/CharSequence;

    .line 420
    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Lbl/bfk;->d(J)V

    .line 421
    new-instance v2, Lbl/bfn;

    sub-long v6, v22, v20

    invoke-direct {v2, v6, v7}, Lbl/bfn;-><init>(J)V

    iput-object v2, v3, Lbl/bfk;->q:Lbl/bfn;

    .line 422
    const/16 v2, 0x32

    iput v2, v3, Lbl/bfk;->m:I

    .line 424
    const/4 v2, 0x1

    iput-byte v2, v3, Lbl/bfk;->n:B

    .line 425
    move-object/from16 v0, p0

    iget-object v2, v0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-interface {v2, v3}, Lbl/bfd;->a(Lbl/bfk;)V
    :try_end_1ca
    .catch Ljava/lang/Exception; {:try_start_19f .. :try_end_1ca} :catch_1cf

    .line 369
    :goto_1ca
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto/16 :goto_b6

    .line 426
    :catch_1cf
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1ca

    :cond_1d4
    move v10, v2

    move v11, v3

    move-wide v12, v4

    goto/16 :goto_8e
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

    .line 924
    sget-object v0, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->BLOCK_TOP:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;

    invoke-virtual {p1, v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 925
    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1b

    move v0, v1

    :goto_17
    invoke-virtual {v3, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 1003
    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    move v0, v2

    .line 925
    goto :goto_17

    .line 928
    :cond_1d
    sget-object v0, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->BLOCK_SCROLL:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;

    invoke-virtual {p1, v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 929
    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 930
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

    .line 933
    :cond_40
    sget-object v0, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->BLOCK_BOTTOM:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;

    invoke-virtual {p1, v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 934
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

    .line 937
    :cond_5a
    sget-object v0, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->BLOCK_GUEST:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;

    invoke-virtual {p1, v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 938
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->f(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    goto :goto_1a

    .line 941
    :cond_70
    sget-object v0, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->BLOCK_USER:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;

    invoke-virtual {p1, v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 942
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    check-cast p2, [Ljava/lang/String;

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {v0, p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a([Ljava/lang/String;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    goto :goto_1a

    .line 945
    :cond_82
    sget-object v0, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->BLOCK_COLORFUL:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;

    invoke-virtual {p1, v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 946
    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 947
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(I)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    goto :goto_1a

    .line 950
    :cond_9b
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    new-array v1, v2, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a([Ljava/lang/Integer;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    goto/16 :goto_1a

    .line 954
    :cond_a4
    sget-object v0, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->DUPLICATE_MERGING:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;

    invoke-virtual {p1, v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 955
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->g(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    goto/16 :goto_1a

    .line 958
    :cond_bb
    sget-object v0, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->MAX_ON_SCREEN:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;

    invoke-virtual {p1, v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 959
    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->getDanmakuMaxOnScreen(I)I

    move-result v0

    .line 960
    iput v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mMaxInHorizontalScreen:I

    .line 961
    div-int/lit8 v1, v0, 0x3

    iput v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mMaxInVerticalScreen:I

    .line 962
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(I)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    goto/16 :goto_1a

    .line 965
    :cond_dc
    sget-object v0, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->SCROLL_SPPED_FACTOR:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;

    invoke-virtual {p1, v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 966
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->c(F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    goto/16 :goto_1a

    .line 969
    :cond_f3
    sget-object v0, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->TRANSPARENCY:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;

    invoke-virtual {p1, v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10a

    .line 970
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    goto/16 :goto_1a

    .line 973
    :cond_10a
    sget-object v0, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->TEXTSIZE_SCALE:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;

    invoke-virtual {p1, v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_124

    .line 974
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->b(F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 975
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->updateTextSize()V

    goto/16 :goto_1a

    .line 978
    :cond_124
    sget-object v0, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->STROKEWIDTH_SCALING:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;

    invoke-virtual {p1, v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15c

    .line 979
    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 980
    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v3}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->getDanmakuTextStyle()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_14f

    .line 981
    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v4, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v4}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->getDanmakuTextStyle()I

    move-result v4

    new-array v1, v1, [F

    iget v5, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuStrokenWidth:F

    mul-float/2addr v0, v5

    aput v0, v1, v2

    invoke-virtual {v3, v4, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(I[F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 983
    :cond_14f
    sget v0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuConfig;->sDanmakuStrokenWidth:F

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v1}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->getDanmakuTextSizeScaleFactor()F

    move-result v1

    mul-float/2addr v0, v1

    sput v0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuConfig;->sDanmakuStrokenWidthScaled:F

    goto/16 :goto_1a

    .line 986
    :cond_15c
    sget-object v0, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->BLOCK_DANMAKU_ON_SCREEN:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;

    invoke-virtual {p1, v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_176

    .line 987
    array-length v0, p2

    if-lez v0, :cond_1a

    aget-object v0, p2, v2

    instance-of v0, v0, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;

    if-eqz v0, :cond_1a

    .line 990
    aget-object v0, p2, v2

    check-cast v0, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;

    invoke-direct {p0, v0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->removeDanmakuOnScreen(Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;)V

    goto/16 :goto_1a

    .line 993
    :cond_176
    sget-object v0, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->DANMAKU_RECOMMAND:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;

    invoke-virtual {p1, v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 994
    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 995
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

    .line 996
    if-ltz v0, :cond_1b6

    const/16 v1, 0xa

    if-gt v0, v1, :cond_1b6

    .line 997
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mFlagFilter:Lbl/bez$a;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbl/bez$a;->setData(Ljava/lang/Object;)V

    .line 998
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mFlagFilter:Lbl/bez$a;

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(Lbl/bez$a;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    goto/16 :goto_1a

    .line 1000
    :cond_1b6
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mFlagFilter:Lbl/bez$a;

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->b(Lbl/bez$a;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    goto/16 :goto_1a
.end method

.method public setOnDanmakuClickListener(Lbl/bfd$a;FF)V
    .locals 1

    .prologue
    .line 1075
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    if-eqz v0, :cond_6

    if-nez p1, :cond_7

    .line 1079
    :cond_6
    :goto_6
    return-void

    .line 1078
    :cond_7
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-interface {v0, p1, p2, p3}, Lbl/bfd;->a(Lbl/bfd$a;FF)V

    goto :goto_6
.end method

.method public setOnDanmakuListener(Ltv/danmaku/videoplayer/core/danmaku/IDanmakuListener;)V
    .locals 0

    .prologue
    .line 1083
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuListener:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuListener;

    .line 1084
    return-void
.end method

.method public setPortraitPlayingEnable(ZI)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1022
    iput-boolean p1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPortraitPlayingEnable:Z

    .line 1023
    iput p2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mInitWidth:I

    .line 1024
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mParser:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;

    if-eqz v0, :cond_e

    .line 1025
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mParser:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;

    invoke-virtual {v0, p1, p2}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->notifyPLPlaybackModeChanged(ZI)V

    .line 1027
    :cond_e
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    if-eqz v0, :cond_17

    .line 1028
    if-eqz p1, :cond_18

    .line 1029
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->applyPortraitPlayingConfig()V

    .line 1035
    :cond_17
    :goto_17
    return-void

    .line 1031
    :cond_18
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mMaxInHorizontalScreen:I

    invoke-virtual {v0, v2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(I)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 1032
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
    .line 145
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->subtitle_data:Lorg/json/JSONObject;

    .line 146
    iget-boolean v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPrepared:Z

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 147
    invoke-virtual {p0, p1}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->send_subtitle(Lorg/json/JSONObject;)V

    .line 149
    :cond_b
    return-void
.end method

.method public setViewPortSize(II)V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 838
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mShown:Z

    .line 839
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    if-eqz v0, :cond_c

    .line 840
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-interface {v0}, Lbl/bfd;->f()V

    .line 842
    :cond_c
    return-void
.end method

.method public start()V
    .locals 8

    .prologue
    .line 763
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    if-eqz v0, :cond_42

    .line 764
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->isPaused()Z

    move-result v2

    .line 765
    iget-wide v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mResumePosition:J

    .line 766
    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    if-eqz v3, :cond_3b

    .line 767
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

    .line 768
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mAnimationTicker:Ltv/danmaku/videoplayer/core/danmaku/DanmakuAnimationTicker;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuAnimationTicker;->currentOffsetTickMillis()J

    move-result-wide v0

    .line 770
    :cond_2a
    if-eqz v2, :cond_43

    .line 771
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lbl/bfd;->b(Ljava/lang/Long;)V

    .line 775
    :goto_32
    iget-boolean v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mShown:Z

    if-nez v0, :cond_4d

    .line 776
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-interface {v0}, Lbl/bfd;->g()V

    .line 781
    :cond_3b
    :goto_3b
    if-eqz v2, :cond_53

    .line 782
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-interface {v0}, Lbl/bfd;->c()V

    .line 787
    :cond_42
    :goto_42
    return-void

    .line 773
    :cond_43
    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Lbl/bfd;->b(Ljava/lang/Long;)V

    goto :goto_32

    .line 778
    :cond_4d
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-interface {v0}, Lbl/bfd;->f()V

    goto :goto_3b

    .line 784
    :cond_53
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-interface {v0}, Lbl/bfd;->d()V

    goto :goto_42
.end method

.method public start(Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;Ltv/danmaku/videoplayer/core/danmaku/DanmakuAnimationTicker;J)V
    .locals 2

    .prologue
    .line 631
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mPaused:Z

    .line 632
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    .line 633
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mInfo:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;

    if-nez v0, :cond_10

    .line 634
    new-instance v0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;

    invoke-direct {v0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;-><init>()V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mInfo:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;

    .line 636
    :cond_10
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    if-eqz v0, :cond_18

    .line 637
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mInfo:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;

    iput-wide p4, v0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;->mCid:J

    .line 639
    :cond_18
    sget v0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuConfig;->sDanmakuStrokenWidth:F

    invoke-interface {p1}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->getDanmakuStorkeWidthScaling()F

    move-result v1

    mul-float/2addr v0, v1

    sput v0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuConfig;->sDanmakuStrokenWidthScaled:F

    .line 640
    iput-object p2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    .line 641
    iput-object p3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mAnimationTicker:Ltv/danmaku/videoplayer/core/danmaku/DanmakuAnimationTicker;

    .line 642
    invoke-static {}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;->getInstance()Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;->clear(J)V

    .line 643
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->prepareAndStart()V

    .line 645
    invoke-direct {p0, p2}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->startSegmentPrefetch(Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;)V

    .line 646
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 791
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    if-eqz v0, :cond_c

    .line 792
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    invoke-interface {v0}, Lbl/bfd;->h()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mResumePosition:J

    .line 794
    :cond_c
    return-void
.end method
