.class public Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;
.super Ljava/lang/Object;
.source "MediaPlayerContext.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# static fields
.field private static final AUDIO_FOCUSED:I = 0x2

.field private static final AUDIO_NO_FOCUS_CAN_DUCK:I = 0x1

.field private static final AUDIO_NO_FOCUS_NO_DUCK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MediaPlayerContext"

.field public static first_created:Z


# instance fields
.field private mAudioFocus:I

.field private mAudioFocusPlayHandler:Ltv/danmaku/videoplayer/core/context/AudioFocusPlayHandler;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mAudioNoisyIntentFilter:Landroid/content/IntentFilter;

.field private mAudioNoisyReceiver:Landroid/content/BroadcastReceiver;

.field private volatile mAudioNoisyReceiverRegistered:Z

.field private mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private mIsPlayingBeforeAudioFocusChange:Z

.field private mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

.field private mOnExtraInfoListener:Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnExtraInfoListener;

.field private mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field private mOnPreparedStepListener:Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnPreparedStepListener;

.field private mOnVideoDefnChangedListener:Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnVideoDefnChangedListener;

.field private mPlayOnFocusGain:Z

.field private mPlayRunnable:Ljava/lang/Runnable;

.field private mPlayerConfig:Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;

.field private mPlayerFactory:Ltv/danmaku/videoplayer/core/media/IMediaPlayerFactory;

.field private mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

.field private mSession:I

.field private mSwitchQualityRunnable:Ljava/lang/Runnable;

.field private mUrl:Ljava/lang/String;

.field private mVideoParams:Ltv/danmaku/videoplayer/core/videoview/IVideoParams;

.field private mVideoSizeChangedListener:Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnVideoSizeChangedListener;

.field private mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

.field private mVideoViewHeight:I

.field private mVideoViewIndex:I

.field private mVideoViewParent:Landroid/view/ViewGroup;

.field private mVideoViewWidth:I

.field public reflection_type:I

.field public rotation_type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    sput-boolean v0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->first_created:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ltv/danmaku/videoplayer/core/videoview/IVideoParams;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v3, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->rotation_type:I

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->reflection_type:I

    .line 60
    new-instance v0, Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;

    invoke-direct {v0}, Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;-><init>()V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mPlayerConfig:Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;

    .line 61
    iput v3, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mAudioFocus:I

    .line 62
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mAudioNoisyIntentFilter:Landroid/content/IntentFilter;

    .line 63
    iput v2, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoViewWidth:I

    .line 64
    iput v2, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoViewHeight:I

    .line 65
    iput v2, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoViewIndex:I

    .line 66
    iput-boolean v3, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mDestroyed:Z

    .line 67
    new-instance v0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext$1;

    invoke-direct {v0, p0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext$1;-><init>(Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;)V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mPlayRunnable:Ljava/lang/Runnable;

    .line 76
    new-instance v0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext$2;

    invoke-direct {v0, p0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext$2;-><init>(Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;)V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mSwitchQualityRunnable:Ljava/lang/Runnable;

    .line 85
    new-instance v0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext$3;

    invoke-direct {v0, p0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext$3;-><init>(Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;)V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mAudioNoisyReceiver:Landroid/content/BroadcastReceiver;

    .line 94
    invoke-static {}, Ltv/danmaku/videoplayer/core/media/MediaPlayerFactory;->getInstance()Ltv/danmaku/videoplayer/core/media/MediaPlayerFactory;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mPlayerFactory:Ltv/danmaku/videoplayer/core/media/IMediaPlayerFactory;

    .line 140
    iput p3, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mSession:I

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mContext:Landroid/content/Context;

    .line 142
    iput-object p2, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoParams:Ltv/danmaku/videoplayer/core/videoview/IVideoParams;

    .line 143
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mAudioManager:Landroid/media/AudioManager;

    .line 144
    return-void
.end method

.method static synthetic access$000(Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;)Ltv/danmaku/videoplayer/core/videoview/IVideoView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    return-object v0
.end method

.method static synthetic access$100(Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method private configAudioStateChanged()V
    .locals 2

    .prologue
    .line 663
    iget v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mAudioFocus:I

    if-nez v0, :cond_1e

    .line 664
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mIsPlayingBeforeAudioFocusChange:Z

    .line 665
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 679
    :cond_12
    :goto_12
    return-void

    .line 668
    :cond_13
    const-string v0, "MediaPlayerContext"

    const-string v1, "pause when audio focus changed"

    invoke-static {v0, v1}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->pauseWithNotifyListener()V

    goto :goto_12

    .line 672
    :cond_1e
    iget-boolean v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mPlayOnFocusGain:Z

    if-eqz v0, :cond_12

    .line 673
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_36

    iget-boolean v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mIsPlayingBeforeAudioFocusChange:Z

    if-eqz v0, :cond_36

    .line 674
    const-string v0, "MediaPlayerContext"

    const-string v1, "resume playback when audio focus changed"

    invoke-static {v0, v1}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->startWithNotifyListener()V

    .line 677
    :cond_36
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mPlayOnFocusGain:Z

    goto :goto_12
.end method

.method private getVideoViewInstance()Ltv/danmaku/videoplayer/core/videoview/IVideoView;
    .locals 10

    .prologue
    const/4 v7, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 521
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    if-eqz v0, :cond_3a

    .line 522
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    .line 527
    :goto_9
    invoke-direct {p0, v0, v8}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->setVideoViewListeners(Ltv/danmaku/videoplayer/core/videoview/IVideoView;Z)V

    .line 528
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoParams:Ltv/danmaku/videoplayer/core/videoview/IVideoParams;

    .line 529
    sget v1, Lmybl/BiliFilter;->prefer_videoview:I

    if-eq v1, v9, :cond_57

    sget-boolean v1, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->first_created:Z

    if-nez v1, :cond_57

    .line 531
    sget v1, Lmybl/BiliFilter;->prefer_videoview:I

    .line 532
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mContext:Landroid/content/Context;

    if-eq v1, v8, :cond_55

    if-ne v1, v7, :cond_55

    invoke-static {}, Ltv/danmaku/videoplayer/core/android/utils/BuildHelper;->isApi16_JellyBeanOrLater()Z

    move-result v1

    if-eqz v1, :cond_55

    move v1, v7

    :goto_25
    invoke-interface {v0, v2, v1}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->createVideoView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    .line 533
    if-eqz v1, :cond_34

    .line 534
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoViewParent:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->getLayoutParams(Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 536
    :cond_34
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoSizeChangedListener:Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnVideoSizeChangedListener;

    invoke-interface {v0, v1}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->setOnVideoSizeChangedListener(Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnVideoSizeChangedListener;)V

    .line 542
    :goto_39
    return-object v0

    .line 524
    :cond_3a
    new-instance v0, Ltv/danmaku/videoplayer/core/videoview/BaseVideoView;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoParams:Ltv/danmaku/videoplayer/core/videoview/IVideoParams;

    iget-object v2, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mPlayerFactory:Ltv/danmaku/videoplayer/core/media/IMediaPlayerFactory;

    iget v3, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoViewWidth:I

    iget v4, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoViewHeight:I

    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->getAspectRatio()Ltv/danmaku/videoplayer/core/videoview/AspectRatio;

    move-result-object v5

    iget v6, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mSession:I

    invoke-direct/range {v0 .. v6}, Ltv/danmaku/videoplayer/core/videoview/BaseVideoView;-><init>(Ltv/danmaku/videoplayer/core/videoview/IVideoParams;Ltv/danmaku/videoplayer/core/media/IMediaPlayerFactory;IILtv/danmaku/videoplayer/core/videoview/AspectRatio;I)V

    .line 525
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->getPlayerConfig()Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;

    move-result-object v1

    invoke-interface {v0, v1}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->setCodecConfig(Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;)V

    goto :goto_9

    :cond_55
    move v1, v8

    .line 532
    goto :goto_25

    .line 538
    :cond_57
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, v9}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->createVideoView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5f

    .line 540
    :cond_5f
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoSizeChangedListener:Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnVideoSizeChangedListener;

    invoke-interface {v0, v1}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->setOnVideoSizeChangedListener(Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnVideoSizeChangedListener;)V

    goto :goto_39
.end method

.method private giveUpAudioFocus()V
    .locals 2

    .prologue
    .line 638
    iget v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mAudioFocus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 639
    const/4 v0, 0x0

    iput v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mAudioFocus:I

    .line 641
    :cond_11
    return-void
.end method

.method private isNeedRecreateVideoViewWhenPlay()Z
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getState()I

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private registerAudioNoisyReceiver()V
    .locals 3

    .prologue
    .line 644
    iget-boolean v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mAudioNoisyReceiverRegistered:Z

    if-eqz v0, :cond_5

    .line 649
    :goto_4
    return-void

    .line 647
    :cond_5
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mContext:Landroid/content/Context;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mAudioNoisyReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mAudioNoisyIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 648
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mAudioNoisyReceiverRegistered:Z

    goto :goto_4
.end method

.method private setVideoPath(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 596
    iget-boolean v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mDestroyed:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    if-eqz v0, :cond_10

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_11

    .line 602
    :cond_10
    :goto_10
    return-void

    .line 599
    :cond_11
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mUrl:Ljava/lang/String;

    .line 600
    const-string v0, "MediaPlayerContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoPath "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mPlayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_10
.end method

.method private setVideoView(Ltv/danmaku/videoplayer/core/videoview/IVideoView;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 548
    const/4 v0, 0x0

    .line 549
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    if-eqz v1, :cond_40

    .line 550
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-interface {v1}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 551
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 552
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoViewParent:Landroid/view/ViewGroup;

    .line 553
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoViewParent:Landroid/view/ViewGroup;

    iget-object v4, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-interface {v4}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoViewIndex:I

    move-object v0, v1

    .line 556
    :cond_37
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    if-eq v1, p1, :cond_40

    .line 557
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-interface {v1}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->stopPlayback()V

    .line 560
    :cond_40
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoViewParent:Landroid/view/ViewGroup;

    if-eqz v1, :cond_65

    iget v1, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoViewIndex:I

    if-le v1, v5, :cond_65

    if-eqz p1, :cond_65

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoViewParent:Landroid/view/ViewGroup;

    invoke-interface {p1}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ne v1, v5, :cond_65

    .line 561
    if-nez v0, :cond_5e

    .line 562
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoViewParent:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->getLayoutParams(Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 564
    :cond_5e
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoViewParent:Landroid/view/ViewGroup;

    iget v4, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoViewIndex:I

    invoke-interface {p1, v1, v4, v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->attachTo(Landroid/view/ViewGroup;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_65
    move-object v1, v0

    .line 566
    if-eqz p1, :cond_6f

    .line 567
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->getPlayerConfig()Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;

    move-result-object v0

    invoke-interface {p1, v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->setCodecConfig(Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;)V

    .line 569
    :cond_6f
    if-eqz p1, :cond_81

    invoke-interface {p1}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_81

    invoke-interface {p1}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_82

    :cond_81
    move-object v0, v1

    .line 572
    :cond_82
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    if-eqz v1, :cond_94

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    if-eq v1, p1, :cond_94

    .line 573
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-interface {v1}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->stopPlayback()V

    .line 574
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-direct {p0, v1, v3}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->setVideoViewListeners(Ltv/danmaku/videoplayer/core/videoview/IVideoView;Z)V

    .line 576
    :cond_94
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    .line 577
    if-eqz p1, :cond_9e

    invoke-interface {p1}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_a0

    :cond_9e
    move v0, v3

    .line 584
    :goto_9f
    return v0

    .line 580
    :cond_a0
    if-nez v0, :cond_a4

    move v0, v2

    .line 581
    goto :goto_9f

    .line 583
    :cond_a4
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-interface {v1}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v0, v2

    .line 584
    goto :goto_9f
.end method

.method private setVideoViewListeners(Ltv/danmaku/videoplayer/core/videoview/IVideoView;Z)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 605
    if-eqz p2, :cond_31

    .line 606
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    invoke-interface {p1, v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 607
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    invoke-interface {p1, v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 608
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    invoke-interface {p1, v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 609
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    invoke-interface {p1, v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 610
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mOnVideoDefnChangedListener:Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnVideoDefnChangedListener;

    invoke-interface {p1, v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->setOnVideoDefnChangedListener(Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnVideoDefnChangedListener;)V

    .line 611
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mOnExtraInfoListener:Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnExtraInfoListener;

    invoke-interface {p1, v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->setOnExtraInfoListener(Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnExtraInfoListener;)V

    .line 612
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mOnPreparedStepListener:Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnPreparedStepListener;

    invoke-interface {p1, v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->setOnPreparedStepListener(Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnPreparedStepListener;)V

    .line 613
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    invoke-interface {p1, v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->setOnSeekComplete(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    .line 614
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoSizeChangedListener:Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnVideoSizeChangedListener;

    invoke-interface {p1, v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->setOnVideoSizeChangedListener(Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnVideoSizeChangedListener;)V

    .line 628
    :goto_30
    return-void

    .line 617
    :cond_31
    invoke-interface {p1, v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 618
    invoke-interface {p1, v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 619
    invoke-interface {p1, v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 620
    invoke-interface {p1, v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 621
    invoke-interface {p1, v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 622
    invoke-interface {p1, v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->setOnVideoDefnChangedListener(Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnVideoDefnChangedListener;)V

    .line 623
    invoke-interface {p1, v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->setOnExtraInfoListener(Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnExtraInfoListener;)V

    .line 624
    invoke-interface {p1, v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->setOnPreparedStepListener(Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnPreparedStepListener;)V

    .line 625
    invoke-interface {p1, v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->setOnSeekComplete(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    .line 626
    invoke-interface {p1, v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->setOnVideoSizeChangedListener(Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnVideoSizeChangedListener;)V

    .line 627
    const-string v0, "MediaPlayerContext"

    const-string v1, "release videoview listeners"

    invoke-static {v0, v1}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30
.end method

.method private startWithNotifyListener()V
    .locals 4

    .prologue
    .line 205
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mAudioFocusPlayHandler:Ltv/danmaku/videoplayer/core/context/AudioFocusPlayHandler;

    if-eqz v0, :cond_c

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mAudioFocusPlayHandler:Ltv/danmaku/videoplayer/core/context/AudioFocusPlayHandler;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/AudioFocusPlayHandler;->willStart()Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_c
    const/4 v0, 0x1

    .line 206
    :goto_d
    const-string v1, "MediaPlayerContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startWithNotifyListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    if-eqz v0, :cond_2a

    .line 208
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->start()V

    .line 210
    :cond_2a
    return-void

    .line 205
    :cond_2b
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private switchQuality(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 588
    iget-boolean v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mDestroyed:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    if-eqz v0, :cond_10

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_11

    .line 593
    :cond_10
    :goto_10
    return-void

    .line 591
    :cond_11
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mUrl:Ljava/lang/String;

    .line 592
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mSwitchQualityRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_10
.end method

.method private tryToGetAudioFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 631
    iget v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mAudioFocus:I

    if-eq v0, v3, :cond_f

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-eq v0, v2, :cond_10

    .line 635
    :cond_f
    :goto_f
    return-void

    .line 634
    :cond_10
    iput v3, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mAudioFocus:I

    goto :goto_f
.end method

.method private unregisterAudioNoisyReceiver()V
    .locals 2

    .prologue
    .line 652
    iget-boolean v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mAudioNoisyReceiverRegistered:Z

    if-eqz v0, :cond_e

    .line 654
    :try_start_4
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mContext:Landroid/content/Context;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mAudioNoisyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_b} :catch_f

    .line 658
    :goto_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mAudioNoisyReceiverRegistered:Z

    .line 660
    :cond_e
    return-void

    .line 655
    :catch_f
    move-exception v0

    .line 656
    const-string v1, "MediaPlayerContext"

    invoke-static {v1, v0}, Ltv/danmaku/android/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b
.end method


# virtual methods
.method public varargs act(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    if-eqz v0, :cond_b

    .line 252
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-interface {v0, p1, p2}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->act(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 254
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public adjustScreen(I)V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 103
    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    iget v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->reflection_type:I

    neg-int v0, v0

    iput v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->reflection_type:I

    .line 104
    :cond_a
    if-nez p1, :cond_14

    iget v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->rotation_type:I

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->rotation_type:I

    .line 105
    :cond_14
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    check-cast v0, Ltv/danmaku/videoplayer/core/videoview/BaseVideoView;

    .line 106
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-interface {v1}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    .line 107
    iget v2, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->rotation_type:I

    int-to-float v2, v2

    const/high16 v3, 0x42b40000    # 90.0f

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setRotation(F)V

    .line 108
    iget v2, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->rotation_type:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3a

    .line 109
    iget v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->reflection_type:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setScaleX(F)V

    .line 110
    invoke-virtual {v1, v4}, Landroid/view/TextureView;->setScaleY(F)V

    .line 121
    :goto_39
    return-void

    .line 113
    :cond_3a
    invoke-virtual {v1}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 114
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v3, v2

    .line 115
    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/videoview/BaseVideoView;->getMediaInfo()Ltv/danmaku/videoplayer/core/media/MediaInfoHolder;

    move-result-object v3

    iget v3, v3, Ltv/danmaku/videoplayer/core/media/MediaInfoHolder;->mVideoHeight:I

    .line 116
    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/videoview/BaseVideoView;->getMediaInfo()Ltv/danmaku/videoplayer/core/media/MediaInfoHolder;

    move-result-object v0

    iget v0, v0, Ltv/danmaku/videoplayer/core/media/MediaInfoHolder;->mVideoWidth:I

    .line 117
    if-le v3, v0, :cond_68

    div-float v0, v4, v2

    .line 118
    :goto_5d
    iget v2, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->reflection_type:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setScaleX(F)V

    .line 119
    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setScaleY(F)V

    goto :goto_39

    :cond_68
    move v0, v2

    goto :goto_5d
.end method

.method public attachVideoView(Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    .line 307
    if-nez p1, :cond_3

    .line 327
    :goto_2
    return-void

    .line 310
    :cond_3
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_1a

    .line 311
    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_2

    .line 314
    :cond_1a
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mPlayerConfig:Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;

    iget v0, v0, Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;->mPlayer:I

    if-nez v0, :cond_23

    .line 315
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoViewParent:Landroid/view/ViewGroup;

    goto :goto_2

    .line 318
    :cond_23
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->getVideoViewInstance()Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    move-result-object v1

    .line 319
    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->getLayoutParams(Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-interface {v1, p1, v0, v2}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->attachTo(Landroid/view/ViewGroup;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 320
    invoke-interface {v1}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 321
    invoke-interface {v1}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoViewParent:Landroid/view/ViewGroup;

    .line 323
    :cond_41
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoViewParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_51

    .line 324
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoViewParent:Landroid/view/ViewGroup;

    invoke-interface {v1}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoViewIndex:I

    .line 326
    :cond_51
    invoke-direct {p0, v1}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->setVideoView(Ltv/danmaku/videoplayer/core/videoview/IVideoView;)Z

    goto :goto_2
.end method

.method public detachVideoView()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_d

    .line 337
    :cond_c
    :goto_c
    return-void

    .line 334
    :cond_d
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->detachVideoView()V

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoViewParent:Landroid/view/ViewGroup;

    .line 336
    const/4 v0, -0x1

    iput v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoViewIndex:I

    goto :goto_c
.end method

.method public getAspectRatio()Ltv/danmaku/videoplayer/core/videoview/AspectRatio;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    if-eqz v0, :cond_b

    .line 283
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getAspectRatio()Ltv/danmaku/videoplayer/core/videoview/AspectRatio;

    move-result-object v0

    .line 285
    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Ltv/danmaku/videoplayer/core/videoview/AspectRatio;->RATIO_ADJUST_CONTENT:Ltv/danmaku/videoplayer/core/videoview/AspectRatio;

    goto :goto_a
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    if-eqz v0, :cond_b

    .line 427
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getBufferPercentage()I

    move-result v0

    .line 429
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    if-eqz v0, :cond_b

    .line 368
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getCurrentPosition()I

    move-result v0

    .line 370
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    if-eqz v0, :cond_b

    .line 376
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getDuration()I

    move-result v0

    .line 378
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected getLayoutParams(Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 501
    instance-of v0, p1, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_10

    .line 502
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 503
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 508
    :goto_f
    return-object v0

    .line 506
    :cond_10
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 507
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_f
.end method

.method public getMediaInfo()Ltv/danmaku/videoplayer/core/media/MediaInfoHolder;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    if-eqz v0, :cond_b

    .line 360
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getMediaInfo()Ltv/danmaku/videoplayer/core/media/MediaInfoHolder;

    move-result-object v0

    .line 362
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getMediaPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 4

    .prologue
    .line 124
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    if-eqz v0, :cond_40

    .line 126
    :try_start_4
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getMediaPlayer"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 127
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 128
    instance-of v1, v0, Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v1, :cond_40

    .line 129
    check-cast v0, Ltv/danmaku/ijk/media/player/IMediaPlayer;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_22} :catch_23

    .line 135
    :goto_22
    return-object v0

    .line 131
    :catch_23
    move-exception v0

    .line 132
    const-string v1, "MediaPlayerContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get MediaPlayer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ltv/danmaku/android/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_40
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public getPlayerConfig()Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mPlayerConfig:Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    if-eqz v0, :cond_b

    .line 384
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getState()I

    move-result v0

    .line 386
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getVideoView()Ltv/danmaku/videoplayer/core/videoview/IVideoView;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    return-object v0
.end method

.method public getVideoViewType()I
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    if-nez v0, :cond_6

    .line 352
    const/4 v0, 0x0

    .line 354
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getVideoViewType()I

    move-result v0

    goto :goto_5
.end method

.method public isAttachedToView(Landroid/view/ViewGroup;)Z
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    if-eqz v0, :cond_19

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-gt v0, v1, :cond_1b

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x1

    goto :goto_1a
.end method

.method public isPlaybackCompleted()Z
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->isPlaybackCompleted()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isSurfaceRenderer()Z
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    if-eqz v0, :cond_10

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isTencentPlayer()Z
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    if-eqz v0, :cond_12

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getCodecConfig()Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;

    move-result-object v0

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;->is3rd()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public onActivityDestroyed(Z)V
    .locals 1

    .prologue
    .line 484
    iput-boolean p1, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mDestroyed:Z

    .line 485
    if-eqz p1, :cond_8

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    if-nez v0, :cond_9

    .line 489
    :cond_8
    :goto_8
    return-void

    .line 488
    :cond_9
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->detachVideoView()V

    goto :goto_8
.end method

.method public onAudioFocusChange(I)V
    .locals 3

    .prologue
    const/4 v2, -0x3

    const/4 v1, 0x1

    .line 148
    if-ne p1, v1, :cond_f

    .line 149
    const/4 v0, 0x2

    iput v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mAudioFocus:I

    .line 157
    :cond_7
    :goto_7
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    if-eqz v0, :cond_e

    .line 158
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->configAudioStateChanged()V

    .line 160
    :cond_e
    return-void

    .line 150
    :cond_f
    const/4 v0, -0x1

    if-eq p1, v0, :cond_17

    const/4 v0, -0x2

    if-eq p1, v0, :cond_17

    if-ne p1, v2, :cond_7

    .line 151
    :cond_17
    if-ne p1, v2, :cond_27

    move v0, v1

    .line 152
    :goto_1a
    iput v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mAudioFocus:I

    .line 153
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez v0, :cond_7

    .line 154
    iput-boolean v1, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mPlayOnFocusGain:Z

    goto :goto_7

    .line 151
    :cond_27
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    if-eqz v0, :cond_9

    .line 182
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->pause()V

    .line 184
    :cond_9
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->giveUpAudioFocus()V

    .line 185
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->unregisterAudioNoisyReceiver()V

    .line 186
    return-void
.end method

.method public pauseWithNotifyListener()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mAudioFocusPlayHandler:Ltv/danmaku/videoplayer/core/context/AudioFocusPlayHandler;

    if-eqz v0, :cond_c

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mAudioFocusPlayHandler:Ltv/danmaku/videoplayer/core/context/AudioFocusPlayHandler;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/AudioFocusPlayHandler;->willPause()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 191
    :cond_c
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->pause()V

    .line 193
    :cond_f
    return-void
.end method

.method public play(Z)V
    .locals 5

    .prologue
    .line 213
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->isNeedRecreateVideoViewWhenPlay()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 214
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->stopPlayback()V

    .line 215
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->resetVideoView()V

    .line 217
    :cond_e
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoViewParent:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->attachVideoView(Landroid/view/ViewGroup;)V

    .line 218
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    if-nez v0, :cond_22

    .line 219
    const-string v0, "MediaPlayerContext"

    const-string v1, "release when mVideoView = null!"

    invoke-static {v0, v1}, Ltv/danmaku/android/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->release()V

    .line 248
    :cond_21
    :goto_21
    return-void

    .line 223
    :cond_22
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoParams:Ltv/danmaku/videoplayer/core/videoview/IVideoParams;

    .line 224
    if-eqz v1, :cond_21

    invoke-interface {v1}, Ltv/danmaku/videoplayer/core/videoview/IVideoParams;->getMediaSource()Ltv/danmaku/videoplayer/core/media/resource/MediaSource;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 227
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mPlayerFactory:Ltv/danmaku/videoplayer/core/media/IMediaPlayerFactory;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-interface {v0, v2}, Ltv/danmaku/videoplayer/core/media/IMediaPlayerFactory;->register(I)V

    .line 228
    invoke-interface {v1}, Ltv/danmaku/videoplayer/core/videoview/IVideoParams;->getMediaSource()Ltv/danmaku/videoplayer/core/media/resource/MediaSource;

    move-result-object v2

    .line 229
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->getPlayerConfig()Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;

    move-result-object v3

    .line 230
    iget-object v0, v2, Ltv/danmaku/videoplayer/core/media/resource/MediaSource;->mUrl:Ljava/lang/String;

    .line 231
    invoke-virtual {v2}, Ltv/danmaku/videoplayer/core/media/resource/MediaSource;->hasNormalMrl()Z

    move-result v4

    if-eqz v4, :cond_58

    .line 232
    const/4 v2, 0x0

    iput-boolean v2, v3, Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;->mUseListPlayer:Z

    .line 241
    :goto_48
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-interface {v2, v3}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->setCodecConfig(Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;)V

    .line 242
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-interface {v2, v1}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->setPlayParams(Ltv/danmaku/videoplayer/core/videoview/IVideoParams;)V

    .line 243
    if-eqz p1, :cond_75

    .line 244
    invoke-direct {p0, v0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->switchQuality(Ljava/lang/String;)V

    goto :goto_21

    .line 233
    :cond_58
    iget-object v0, v2, Ltv/danmaku/videoplayer/core/media/resource/MediaSource;->mSegmentList:Ljava/util/ArrayList;

    if-eqz v0, :cond_6a

    iget-object v0, v2, Ltv/danmaku/videoplayer/core/media/resource/MediaSource;->mSegmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6a

    .line 234
    const/4 v0, 0x1

    iput-boolean v0, v3, Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;->mUseListPlayer:Z

    .line 235
    const-string v0, ""

    goto :goto_48

    .line 237
    :cond_6a
    const-string v0, "MediaPlayerContext"

    const-string v1, "Empty resource."

    invoke-static {v0, v1}, Ltv/danmaku/android/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->release()V

    goto :goto_21

    .line 246
    :cond_75
    invoke-direct {p0, v0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->setVideoPath(Ljava/lang/String;)V

    goto :goto_21
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 163
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    .line 164
    if-eqz v0, :cond_29

    .line 165
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 166
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mPlayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 167
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mSwitchQualityRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 169
    :cond_1d
    iput-object v3, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mUrl:Ljava/lang/String;

    .line 170
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->stopPlayback()V

    .line 171
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->detachVideoView()V

    .line 172
    iput-object v3, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    .line 173
    iput-object v3, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoViewParent:Landroid/view/ViewGroup;

    .line 175
    :cond_29
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mPlayerFactory:Ltv/danmaku/videoplayer/core/media/IMediaPlayerFactory;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-interface {v0, v1}, Ltv/danmaku/videoplayer/core/media/IMediaPlayerFactory;->unregister(I)V

    .line 176
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->giveUpAudioFocus()V

    .line 177
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->unregisterAudioNoisyReceiver()V

    .line 178
    return-void
.end method

.method public require(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    if-nez v0, :cond_5

    :goto_4
    return-object p2

    :cond_5
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-interface {v0, p1, p2}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->require(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_4
.end method

.method public resetAspectRatio(II)V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    if-eqz v0, :cond_9

    .line 399
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-interface {v0, p1, p2}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->resetAspectRatio(II)V

    .line 401
    :cond_9
    return-void
.end method

.method public resetAspectRatio(IIZ)V
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    if-eqz v0, :cond_9

    .line 406
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-interface {v0, p1, p2, p3}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->resetAspectRatio(IIZ)V

    .line 408
    :cond_9
    return-void
.end method

.method public resetVideoView()V
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->setVideoView(Ltv/danmaku/videoplayer/core/videoview/IVideoView;)Z

    .line 414
    const/4 v0, 0x0

    sput-boolean v0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->first_created:Z

    .line 416
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->getVideoViewInstance()Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    move-result-object v0

    invoke-direct {p0, v0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->setVideoView(Ltv/danmaku/videoplayer/core/videoview/IVideoView;)Z

    .line 417
    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    if-eqz v0, :cond_9

    .line 392
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-interface {v0, p1}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->seekTo(I)V

    .line 394
    :cond_9
    return-void
.end method

.method public setAspectRatio(Ltv/danmaku/videoplayer/core/videoview/AspectRatio;)V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    if-eqz v0, :cond_9

    .line 271
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-interface {v0, p1}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->setAspectRatio(Ltv/danmaku/videoplayer/core/videoview/AspectRatio;)V

    .line 273
    :cond_9
    return-void
.end method

.method public setAudioFocusPlayHandler(Ltv/danmaku/videoplayer/core/context/AudioFocusPlayHandler;)V
    .locals 0

    .prologue
    .line 479
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mAudioFocusPlayHandler:Ltv/danmaku/videoplayer/core/context/AudioFocusPlayHandler;

    .line 480
    return-void
.end method

.method public setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V
    .locals 0

    .prologue
    .line 446
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 447
    return-void
.end method

.method public setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 451
    return-void
.end method

.method public setOnExtraInfoListener(Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnExtraInfoListener;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mOnExtraInfoListener:Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnExtraInfoListener;

    .line 459
    return-void
.end method

.method public setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 443
    return-void
.end method

.method public setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 439
    return-void
.end method

.method public setOnPreparedStepListener(Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnPreparedStepListener;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mOnPreparedStepListener:Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnPreparedStepListener;

    .line 463
    return-void
.end method

.method public setOnSeekComplete(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 475
    return-void
.end method

.method public setOnVideoDefnChangedListener(Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnVideoDefnChangedListener;)V
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mOnVideoDefnChangedListener:Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnVideoDefnChangedListener;

    .line 455
    return-void
.end method

.method public setOnVideoSizeChangedListener(Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnVideoSizeChangedListener;)V
    .locals 2

    .prologue
    .line 467
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoSizeChangedListener:Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnVideoSizeChangedListener;

    .line 468
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    if-eqz v0, :cond_d

    .line 469
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoSizeChangedListener:Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnVideoSizeChangedListener;

    invoke-interface {v0, v1}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->setOnVideoSizeChangedListener(Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnVideoSizeChangedListener;)V

    .line 471
    :cond_d
    return-void
.end method

.method public setPlayerConfig(Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mPlayerConfig:Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;

    .line 302
    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    if-eqz v0, :cond_9

    .line 98
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-interface {v0, p1}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->setSpeed(F)V

    .line 100
    :cond_9
    return-void
.end method

.method public setVideoViewSize(II)V
    .locals 0

    .prologue
    .line 295
    iput p1, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoViewWidth:I

    .line 296
    iput p2, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoViewHeight:I

    .line 297
    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    if-eqz v0, :cond_9

    .line 277
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-interface {v0, p1, p2}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->setVolume(FF)V

    .line 279
    :cond_9
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    if-eqz v0, :cond_9

    .line 197
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->start()V

    .line 199
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mPlayOnFocusGain:Z

    .line 200
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->tryToGetAudioFocus()V

    .line 201
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->registerAudioNoisyReceiver()V

    .line 202
    return-void
.end method

.method public switchPlayer(I)V
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    if-eqz v0, :cond_20

    .line 494
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->stopPlayback()V

    .line 495
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mPlayerFactory:Ltv/danmaku/videoplayer/core/media/IMediaPlayerFactory;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/media/IMediaPlayerFactory;->getSupportPlayers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/videoplayer/core/videoview/IVideoViewPlayerAdapter;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoViewPlayerAdapter;->getConfig()Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->setPlayerConfig(Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;)V

    .line 496
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->play(Z)V

    .line 498
    :cond_20
    return-void
.end method
