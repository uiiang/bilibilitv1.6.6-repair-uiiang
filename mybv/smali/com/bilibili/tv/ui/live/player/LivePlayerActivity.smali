.class public Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;
.super Lcom/bilibili/tv/ui/base/BaseActivity;
.source "LivePlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lbl/wr;
.implements Lcom/bilibili/tv/ebook/ui/EbookHost;


# static fields
.field private static final MAX_PLAY_URL_RETRY:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LivePlayerActivity"

.field public static _this:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

.field public static live_index:I

.field public static lives:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmybl/BiliLiveContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lmybl/BiliLiveContent;

.field private volatile activityDestroyed:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private cdnExecutor:Ljava/util/concurrent/ExecutorService;

.field private d:I

.field private e:Lbl/agb;

.field private ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

.field private f:Z

.field private g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

.field private h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

.field private mRightMenu:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

.field private mainHandler:Landroid/os/Handler;

.field private needRestartOnResume:Z

.field private panelHandledBackKey:Z

.field private playUrlRetryCount:I

.field private playUrlRetryRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    sput-object v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->_this:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    .line 70
    sput-object v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->lives:Ljava/util/List;

    .line 71
    const/4 v0, -0x1

    sput v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->live_index:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Lcom/bilibili/tv/ui/base/BaseActivity;-><init>()V

    .line 54
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->f:Z

    .line 59
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->panelHandledBackKey:Z

    .line 63
    iput v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->playUrlRetryCount:I

    .line 64
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->playUrlRetryRunning:Z

    .line 65
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->activityDestroyed:Z

    .line 67
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->needRestartOnResume:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Lmybl/BiliLiveContent;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    const-string v1, "bili_live"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 81
    const/high16 v1, 0x24010000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 82
    return-object v0
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lmybl/BiliLiveContent;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->d:I

    return v0
.end method

.method static synthetic access$1000(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->playUrlRetryRunning:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;Z)Z
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->playUrlRetryRunning:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->startPlaybackWithCdnRace()V

    return-void
.end method

.method static synthetic access$1200(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->cdnExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lbl/agb;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->e:Lbl/agb;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->f:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;Z)Z
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->f:Z

    return p1
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->playUrlRetryCount:I

    return v0
.end method

.method static synthetic access$202(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;I)I
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->playUrlRetryCount:I

    return p1
.end method

.method static synthetic access$208(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)I
    .locals 2

    .prologue
    .line 47
    iget v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->playUrlRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->playUrlRetryCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/newplayer/widget/LivePlayerController;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mRightMenu:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    return-object v0
.end method

.method static synthetic access$800(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->activityDestroyed:Z

    return v0
.end method

.method private getEbookMenuActions()Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;
    .locals 1

    .prologue
    .line 543
    new-instance v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$4;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$4;-><init>(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)V

    return-object v0
.end method

.method private h()Z
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->e:Lbl/agb;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->e:Lbl/agb;

    invoke-virtual {v0}, Lbl/agb;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private i()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 617
    sget-boolean v0, Lmybl/BiliFilter;->fastquit_on:Z

    if-eqz v0, :cond_c

    .line 618
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->f:Z

    .line 619
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->finish()V

    .line 657
    :cond_b
    :goto_b
    return-void

    .line 622
    :cond_c
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->e:Lbl/agb;

    if-nez v0, :cond_45

    .line 623
    new-instance v0, Lbl/agb$a;

    invoke-direct {v0, p0}, Lbl/agb$a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v3}, Lbl/agb$a;->a(I)Lbl/agb$a;

    move-result-object v0

    const-string v1, "\u786e\u5b9a\u8981\u9000\u51fa\u64ad\u653e\u5417\uff1f"

    invoke-virtual {v0, v1}, Lbl/agb$a;->a(Ljava/lang/String;)Lbl/agb$a;

    move-result-object v0

    const-string v1, "\u7ee7\u7eed\u64ad\u653e"

    new-instance v2, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$6;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$6;-><init>(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)V

    invoke-virtual {v0, v1, v2}, Lbl/agb$a;->a(Ljava/lang/String;Lbl/agb$b;)Lbl/agb$a;

    move-result-object v0

    const-string v1, "\u786e\u8ba4\u9000\u51fa"

    new-instance v2, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$5;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$5;-><init>(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)V

    .line 629
    invoke-virtual {v0, v1, v2}, Lbl/agb$a;->b(Ljava/lang/String;Lbl/agb$b;)Lbl/agb$a;

    move-result-object v0

    .line 636
    invoke-virtual {v0}, Lbl/agb$a;->a()Lbl/agb;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->e:Lbl/agb;

    .line 637
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->e:Lbl/agb;

    new-instance v1, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$7;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$7;-><init>(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)V

    invoke-virtual {v0, v1}, Lbl/agb;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 648
    :cond_45
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->e:Lbl/agb;

    invoke-virtual {v0}, Lbl/agb;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 649
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->e:Lbl/agb;

    invoke-virtual {v0}, Lbl/agb;->dismiss()V

    goto :goto_b

    .line 652
    :cond_53
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->e:Lbl/agb;

    invoke-virtual {v0}, Lbl/agb;->show()V

    .line 653
    invoke-static {}, Lbl/wm;->e()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 654
    invoke-static {}, Lbl/wm;->f()V

    .line 655
    iput-boolean v3, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->f:Z

    goto :goto_b
.end method

.method private reportLiveHistory()V
    .locals 7

    .prologue
    .line 745
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 746
    if-eqz v0, :cond_46

    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 747
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v6

    .line 748
    invoke-static {v0}, Lmybl/CookieUtil;->getBiliJct(Lbl/mg;)Ljava/lang/String;

    move-result-object v4

    .line 749
    const-string v0, "LivePlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportLiveHistory: roomId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const-class v0, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;

    iget v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->d:I

    int-to-long v2, v0

    move-object v5, v4

    .line 751
    invoke-interface/range {v1 .. v6}, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;->reportLiveEntry(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$8;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$8;-><init>(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)V

    .line 752
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 764
    :cond_46
    return-void
.end method

.method private restartLivePlayback()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 708
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 719
    :cond_d
    :goto_d
    return-void

    .line 711
    :cond_e
    const-string v0, "LivePlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LIVE_RESTART] restart live playback, url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->b:Ljava/lang/String;

    const/16 v3, 0x3c

    iget-object v4, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", room="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :try_start_44
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    iget-object v1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->b:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 715
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->m()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_61} :catch_62

    goto :goto_d

    .line 716
    :catch_62
    move-exception v0

    .line 717
    const-string v1, "LivePlayerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LIVE_RESTART] restart failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method private startPlaybackWithCdnRace()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 155
    const-string v0, "LivePlayerActivity"

    const-string v2, "startPlaybackWithCdnRace: \u5f00\u59cb\u64ad\u653e\u6d41\u7a0b"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string v2, "LivePlayerActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LIVE_STARTUP_TRACE] race_start urlCount="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    iget-object v0, v0, Lmybl/BiliLiveContent;->mPlayUrls:Ljava/util/List;

    if-eqz v0, :cond_9f

    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    iget-object v0, v0, Lmybl/BiliLiveContent;->mPlayUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_24
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " room="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->d:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    iget-object v0, v0, Lmybl/BiliLiveContent;->mPlayFormat:Ljava/lang/String;

    if-eqz v0, :cond_a1

    .line 160
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    iget-object v0, v0, Lmybl/BiliLiveContent;->mPlayFormat:Ljava/lang/String;

    invoke-static {v0}, Lbl/wm;->setLiveFormat(Ljava/lang/String;)V

    .line 161
    const-string v0, "LivePlayerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPlaybackWithCdnRace: \u8bbe\u7f6e\u76f4\u64ad\u683c\u5f0f="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    iget-object v3, v3, Lmybl/BiliLiveContent;->mPlayFormat:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :goto_64
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    iget-object v0, v0, Lmybl/BiliLiveContent;->mPlayUrls:Ljava/util/List;

    if-eqz v0, :cond_a6

    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    iget-object v0, v0, Lmybl/BiliLiveContent;->mPlayUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_a6

    .line 167
    const-string v0, "LivePlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPlaybackWithCdnRace: \u6709\u591a\u4e2aURL, \u5f00\u59cbCDN\u7ade\u901f, \u6570\u91cf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    iget-object v2, v2, Lmybl/BiliLiveContent;->mPlayUrls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->cdnExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1;-><init>(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 252
    :goto_9e
    return-void

    :cond_9f
    move v0, v1

    .line 156
    goto :goto_24

    .line 163
    :cond_a1
    const/4 v0, 0x0

    invoke-static {v0}, Lbl/wm;->setLiveFormat(Ljava/lang/String;)V

    goto :goto_64

    .line 231
    :cond_a6
    const-string v0, "LivePlayerActivity"

    const-string v2, "startPlaybackWithCdnRace: \u53ea\u67091\u4e2aURL, \u76f4\u63a5\u64ad\u653e"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-string v0, "LivePlayerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LIVE_STARTUP_TRACE] start_play room="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (direct)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    iget-object v0, v0, Lmybl/BiliLiveContent;->mPlayUrl:Ljava/lang/String;

    if-eqz v0, :cond_e3

    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    iget-object v0, v0, Lmybl/BiliLiveContent;->mPlayUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e3

    .line 235
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    iget-object v0, v0, Lmybl/BiliLiveContent;->mPlayUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->b:Ljava/lang/String;

    .line 237
    :cond_e3
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    iget-object v2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->b:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->c:Ljava/lang/String;

    aput-object v4, v3, v1

    iget v1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-virtual {v0, v2, v3}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 238
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->m()V

    .line 241
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$2;-><init>(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9e
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->cdnExecutor:Ljava/util/concurrent/ExecutorService;

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mainHandler:Landroid/os/Handler;

    .line 97
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_89

    .line 99
    const-string v2, "bili_live"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmybl/BiliLiveContent;

    iput-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    .line 100
    const-string v2, "LivePlayerActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "a(Bundle): hasPlayUrl="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    invoke-virtual {v3}, Lmybl/BiliLiveContent;->hasPlayUrl()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", mPlayUrl="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    iget-object v0, v0, Lmybl/BiliLiveContent;->mPlayUrl:Ljava/lang/String;

    if-eqz v0, :cond_cf

    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    iget-object v0, v0, Lmybl/BiliLiveContent;->mPlayUrl:Ljava/lang/String;

    const/16 v4, 0x32

    iget-object v5, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    iget-object v5, v5, Lmybl/BiliLiveContent;->mPlayUrl:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_5b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    invoke-virtual {v0}, Lmybl/BiliLiveContent;->hasPlayUrl()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 102
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    invoke-virtual {v0}, Lmybl/BiliLiveContent;->getPlayUrl()I

    .line 104
    :cond_73
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    if-eqz v0, :cond_89

    .line 105
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    iget-object v0, v0, Lmybl/BiliLiveContent;->mPlayUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->b:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    iget-object v0, v0, Lmybl/BiliLiveContent;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->c:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    iget v0, v0, Lmybl/BiliLiveContent;->mRoomId:I

    iput v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->d:I

    .line 110
    :cond_89
    const-string v2, "LivePlayerActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LIVE_STARTUP_TRACE] onCreate room="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->d:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " hasPlayUrl="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    if-eqz v0, :cond_d2

    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    invoke-virtual {v0}, Lmybl/BiliLiveContent;->hasPlayUrl()Z

    move-result v0

    if-eqz v0, :cond_d2

    const/4 v0, 0x1

    :goto_af
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    if-eqz v0, :cond_c6

    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 112
    :cond_c6
    const-string v0, "\u64ad\u653e\u5730\u5740\u4e3a\u7a7a\uff01\uff01\uff01"

    invoke-static {p0, v0}, Lbl/lr;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->finish()V

    .line 152
    :goto_ce
    return-void

    .line 100
    :cond_cf
    const-string v0, "null"

    goto :goto_5b

    :cond_d2
    move v0, v1

    .line 110
    goto :goto_af

    .line 116
    :cond_d4
    const v0, 0x7f08015f

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    iput-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    .line 117
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    iget-object v1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    iget-object v1, v1, Lmybl/BiliLiveContent;->mCover:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->setLoadingCover(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    iget-object v1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->setTitle(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->requestFocus()Z

    .line 121
    const v0, 0x7f0800d5

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    iput-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    .line 122
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    iget-object v1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->setFirstText(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    iget-object v2, v2, Lmybl/BiliLiveContent;->mUname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    iget-object v2, v2, Lmybl/BiliLiveContent;->mArea:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->setSecondText(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    iget-object v1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    iget-object v1, v1, Lmybl/BiliLiveContent;->mFace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->setUpAvatar(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->setControllerListener(Lbl/wr;)V

    .line 127
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    iget-object v1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->setPlayer(Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;)V

    .line 128
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    iget-object v1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->setBiliLive(Lmybl/BiliLiveContent;)V

    .line 129
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 133
    new-instance v1, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mRightMenu:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    .line 134
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 136
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 137
    iget-object v2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mRightMenu:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mRightMenu:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mRightMenu:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    iget-object v1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->setListener(Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;)V

    .line 140
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    iget-object v1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mRightMenu:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->initRightMenu(Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;)V

    .line 141
    const-string v0, "LivePlayerActivity"

    const-string v1, "a(Bundle): \u53f3\u4fa7\u83dc\u5355\u5df2\u521d\u59cb\u5316"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;-><init>(Lcom/bilibili/tv/ebook/ui/EbookHost;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    .line 145
    const-string v0, "LivePlayerActivity"

    const-string v1, "a(Bundle): \u7535\u5b50\u4e66\u9605\u8bfb\u5668\u9762\u677f\u5df2\u521d\u59cb\u5316"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    new-instance v1, Lmybl/DanmakuClient;

    iget v2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->d:I

    invoke-direct {v1, v2}, Lmybl/DanmakuClient;-><init>(I)V

    iput-object v1, v0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->danmakuClient:Lmybl/DanmakuClient;

    .line 148
    sput-object p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->_this:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    .line 150
    invoke-direct {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->startPlaybackWithCdnRace()V

    .line 151
    invoke-direct {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->reportLiveHistory()V

    goto/16 :goto_ce
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 256
    invoke-static {p1}, Lbl/abt;->a(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/bilibili/tv/ui/base/BaseActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 257
    return-void
.end method

.method public f()V
    .locals 3

    .prologue
    const/16 v2, 0x400

    .line 87
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 88
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 89
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lbl/adl;->a(Landroid/view/View;)V

    .line 90
    return-void
.end method

.method public g()I
    .locals 1

    .prologue
    .line 75
    const v0, 0x7f0a001e

    return v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 457
    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 462
    return-object p0
.end method

.method public getDanmakuView()Landroid/view/View;
    .locals 1

    .prologue
    .line 483
    const v0, 0x7f08006e

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getVideoContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    if-nez v0, :cond_6

    .line 473
    const/4 v0, 0x0

    .line 475
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_5
.end method

.method public getVideoView()Landroid/view/View;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    return-object v0
.end method

.method public isLiveMode()Z
    .locals 1

    .prologue
    .line 493
    const/4 v0, 0x1

    return v0
.end method

.method public isMenuShown()Z
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mRightMenu:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mRightMenu:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isShown()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isVideoTextureView()Z
    .locals 1

    .prologue
    .line 488
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 741
    invoke-super {p0, p1, p2, p3}, Lcom/bilibili/tv/ui/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 742
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->getShow()Z

    move-result v0

    .line 262
    invoke-static {}, Lbl/wm;->e()Z

    move-result v1

    .line 263
    if-nez v0, :cond_15

    if-eqz v1, :cond_15

    .line 264
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->a(Z)V

    .line 268
    :cond_14
    :goto_14
    return-void

    .line 265
    :cond_15
    if-eqz v0, :cond_14

    .line 266
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->a(Z)V

    goto :goto_14
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 725
    const-string v0, "LivePlayerActivity"

    const-string v1, "onDestroy: \u88ab\u8c03\u7528"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->activityDestroyed:Z

    .line 728
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    if-eqz v0, :cond_16

    .line 729
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->onDestroy()V

    .line 730
    iput-object v2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    .line 732
    :cond_16
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->i()V

    .line 733
    :cond_1f
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->cdnExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->cdnExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 734
    :cond_28
    iput-object v2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->e:Lbl/agb;

    .line 735
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseActivity;->onDestroy()V

    .line 736
    return-void
.end method

.method public onEbookDestroy()V
    .locals 0

    .prologue
    .line 527
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 376
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookModeActive()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 377
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->getControlTarget()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    .line 378
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->getControlTarget()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ebook"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    move v0, v1

    .line 379
    :goto_25
    iget-object v3, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mRightMenu:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    if-eqz v3, :cond_32

    iget-object v3, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mRightMenu:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    invoke-virtual {v3}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isShown()Z

    move-result v3

    if-eqz v3, :cond_32

    move v2, v1

    .line 380
    :cond_32
    if-eqz v0, :cond_46

    if-nez v2, :cond_46

    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    invoke-virtual {v0, p1, p2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 382
    const/4 v0, 0x4

    if-ne p1, v0, :cond_43

    .line 383
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->panelHandledBackKey:Z

    .line 388
    :cond_43
    :goto_43
    return v1

    :cond_44
    move v0, v2

    .line 378
    goto :goto_25

    .line 388
    :cond_46
    invoke-super {p0, p1, p2}, Lcom/bilibili/tv/ui/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_43
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/16 v8, 0x52

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 272
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->getShow()Z

    move-result v4

    .line 273
    invoke-static {}, Lbl/wm;->e()Z

    move-result v3

    .line 274
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mRightMenu:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mRightMenu:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isShown()Z

    move-result v0

    if-eqz v0, :cond_62

    move v0, v1

    .line 275
    :goto_1c
    const-string v5, "LivePlayerActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onKeyUp: keyCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", show="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isPlaying="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", menuShown="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    if-ne p1, v9, :cond_64

    iget-boolean v3, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->panelHandledBackKey:Z

    if-eqz v3, :cond_64

    .line 280
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->panelHandledBackKey:Z

    .line 281
    const-string v0, "LivePlayerActivity"

    const-string v2, "onKeyUp: BACK\u5df2\u7531\u7535\u5b50\u4e66\u9762\u677f\u5904\u7406\uff0c\u6d88\u8d39keyUp"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_61
    :goto_61
    return v1

    :cond_62
    move v0, v2

    .line 274
    goto :goto_1c

    .line 284
    :cond_64
    iget-object v3, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    if-eqz v3, :cond_ad

    iget-object v3, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    invoke-virtual {v3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookModeActive()Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 285
    iget-object v3, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    invoke-virtual {v3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->getControlTarget()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a1

    iget-object v3, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    .line 286
    invoke-virtual {v3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->getControlTarget()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ebook"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a1

    move v3, v1

    .line 287
    :goto_87
    if-eqz v3, :cond_a3

    .line 290
    if-ne p1, v8, :cond_95

    .line 291
    iget-object v3, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    invoke-virtual {v3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->consumeMenuOpenedByKeyDown()Z

    move-result v3

    if-nez v3, :cond_61

    if-eqz v0, :cond_61

    .line 295
    :cond_95
    if-ne p1, v9, :cond_99

    if-eqz v0, :cond_61

    .line 302
    :cond_99
    if-nez v0, :cond_a3

    .line 303
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    invoke-virtual {v0, p1, p2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_61

    :cond_a1
    move v3, v2

    .line 286
    goto :goto_87

    .line 308
    :cond_a3
    if-nez v0, :cond_ad

    iget-object v3, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    invoke-virtual {v3, p1, p2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-nez v3, :cond_61

    .line 313
    :cond_ad
    if-ne p1, v9, :cond_d0

    .line 314
    if-eqz v0, :cond_be

    .line 315
    const-string v0, "LivePlayerActivity"

    const-string v3, "onKeyUp: \u5173\u95ed\u53f3\u4fa7\u83dc\u5355"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mRightMenu:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a(Z)V

    goto :goto_61

    .line 318
    :cond_be
    if-eqz v4, :cond_ca

    .line 319
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->a()V

    .line 324
    :goto_c5
    invoke-direct {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h()Z

    move-result v1

    goto :goto_61

    .line 321
    :cond_ca
    invoke-direct {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->i()V

    .line 322
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->f:Z

    goto :goto_c5

    .line 326
    :cond_d0
    if-eqz v0, :cond_fb

    .line 328
    if-ne p1, v8, :cond_e1

    .line 329
    const-string v0, "LivePlayerActivity"

    const-string v3, "onKeyUp: \u83dc\u5355\u952e\u5173\u95ed\u53f3\u4fa7\u83dc\u5355"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mRightMenu:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a(Z)V

    goto :goto_61

    .line 332
    :cond_e1
    const-string v0, "LivePlayerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyUp: \u53f3\u4fa7\u83dc\u5355\u663e\u793a\u4e2d, \u6d88\u8d39\u6309\u952e "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_61

    .line 336
    :cond_fb
    if-eq p1, v8, :cond_12f

    .line 337
    const/16 v0, 0x13

    if-ne p1, v0, :cond_112

    if-nez v4, :cond_112

    .line 338
    sget v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->live_index:I

    if-lez v0, :cond_14d

    .line 339
    sget v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->live_index:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->live_index:I

    .line 340
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->f:Z

    .line 341
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->refresh()V

    .line 346
    :cond_112
    :goto_112
    const/16 v0, 0x14

    if-ne p1, v0, :cond_12f

    if-nez v4, :cond_12f

    .line 347
    sget v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->live_index:I

    sget-object v3, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->lives:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_153

    .line 348
    sget v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->live_index:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->live_index:I

    .line 349
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->f:Z

    .line 350
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->refresh()V

    .line 356
    :cond_12f
    :goto_12f
    if-ne p1, v8, :cond_159

    .line 357
    const-string v0, "LivePlayerActivity"

    const-string v3, "onKeyUp: \u663e\u793a\u53f3\u4fa7\u83dc\u5355"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    if-eqz v4, :cond_13f

    .line 359
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->a(Z)V

    .line 363
    :cond_13f
    invoke-virtual {p0, v1}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->showMenu(Z)V

    .line 368
    :cond_142
    :goto_142
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    invoke-virtual {v0, p1, p2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->a(ILandroid/view/KeyEvent;)V

    .line 369
    invoke-direct {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h()Z

    move-result v1

    goto/16 :goto_61

    .line 343
    :cond_14d
    const-string v0, "\u5df2\u7ecf\u5230\u9876\u4e86"

    invoke-static {p0, v0}, Lbl/lr;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_112

    .line 352
    :cond_153
    const-string v0, "\u5df2\u7ecf\u5230\u5e95\u4e86"

    invoke-static {p0, v0}, Lbl/lr;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_12f

    .line 364
    :cond_159
    const/16 v0, 0x42

    if-eq p1, v0, :cond_161

    const/16 v0, 0x17

    if-ne p1, v0, :cond_142

    :cond_161
    if-nez v4, :cond_142

    .line 365
    const-string v0, "LivePlayerActivity"

    const-string v2, "onKeyUp: \u663e\u793a\u63a7\u5236\u5668\u83dc\u5355"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->a(Z)V

    goto :goto_142
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 676
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseActivity;->onPause()V

    .line 677
    const-string v0, "LivePlayerActivity"

    const-string v1, "[LIVE_LIFECYCLE] onPause, calling g.e() to pause player"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->e()V

    .line 679
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 662
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseActivity;->onResume()V

    .line 663
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->needRestartOnResume:Z

    if-eqz v0, :cond_e

    .line 665
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->needRestartOnResume:Z

    .line 666
    invoke-direct {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->restartLivePlayback()V

    .line 671
    :goto_d
    return-void

    .line 669
    :cond_e
    const-string v0, "LivePlayerActivity"

    const-string v1, "[LIVE_LIFECYCLE] onResume, calling g.f() to resume player"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->f()V

    goto :goto_d
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 700
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseActivity;->onStart()V

    .line 701
    const-string v0, "LivePlayerActivity"

    const-string v1, "[LIVE_LIFECYCLE] onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 684
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseActivity;->onStop()V

    .line 690
    const-string v0, "LivePlayerActivity"

    const-string v1, "[LIVE_LIFECYCLE] onStop, release player before background codec reclaim"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    if-eqz v0, :cond_18

    .line 692
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->needRestartOnResume:Z

    .line 693
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v0

    invoke-virtual {v0}, Lbl/wm;->d()V

    .line 695
    :cond_18
    return-void
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 447
    const-string v0, "LivePlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refresh: \u88ab\u8c03\u7528, live_index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->live_index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const-string v0, "LivePlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refresh: \u8c03\u7528\u5806\u6808: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->finish()V

    .line 450
    sget-object v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->lives:Ljava/util/List;

    sget v1, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->live_index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/BiliLiveContent;

    invoke-static {p0, v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a(Landroid/content/Context;Lmybl/BiliLiveContent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->startActivity(Landroid/content/Intent;)V

    .line 451
    return-void
.end method

.method public requestVideoFocus()V
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    if-eqz v0, :cond_9

    .line 537
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->requestFocus()Z

    .line 539
    :cond_9
    return-void
.end method

.method public retryPlayUrl()V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;-><init>(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 444
    return-void
.end method

.method public showMenu(Z)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 503
    iget-object v2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mRightMenu:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    if-nez v2, :cond_7

    .line 522
    :goto_6
    return-void

    .line 506
    :cond_7
    if-eqz p1, :cond_27

    .line 508
    iget-object v2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    invoke-virtual {v2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isControlEbook()Z

    move-result v2

    if-eqz v2, :cond_2d

    move v2, v0

    .line 509
    :goto_16
    if-eqz v2, :cond_2f

    .line 511
    iget-object v1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mRightMenu:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    iget-object v2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    invoke-virtual {v2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isReadingBook()Z

    move-result v2

    invoke-direct {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->getEbookMenuActions()Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->setEbookMode(ZZLcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;)V

    .line 521
    :cond_27
    :goto_27
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mRightMenu:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a(Z)V

    goto :goto_6

    :cond_2d
    move v2, v1

    .line 508
    goto :goto_16

    .line 514
    :cond_2f
    iget-object v2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mRightMenu:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    invoke-direct {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->getEbookMenuActions()Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    move-result-object v3

    invoke-virtual {v2, v1, v1, v3}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->setEbookMode(ZZLcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;)V

    .line 515
    iget-object v2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    if-eqz v2, :cond_27

    .line 516
    iget-object v2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    iget-object v3, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    if-eqz v3, :cond_55

    iget-object v3, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    invoke-virtual {v3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookModeActive()Z

    move-result v3

    if-eqz v3, :cond_55

    :goto_4a
    invoke-virtual {v2, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->setEbookModeActive(Z)V

    .line 517
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    iget-object v1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mRightMenu:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->initRightMenu(Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;)V

    goto :goto_27

    :cond_55
    move v0, v1

    .line 516
    goto :goto_4a
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 531
    invoke-static {p0, p1}, Lbl/lr;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 532
    return-void
.end method
