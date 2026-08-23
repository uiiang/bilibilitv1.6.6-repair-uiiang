.class public Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;
.super Lcom/bilibili/tv/ui/base/BaseActivity;
.source "LivePlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lbl/wr;
.implements Lcom/bilibili/tv/ebook/ui/EbookHost;


# static fields
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

.field private panelHandledBackKey:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    sput-object v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->_this:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    .line 64
    sput-object v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->lives:Ljava/util/List;

    .line 65
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

    return-void
.end method

.method public static a(Landroid/content/Context;Lmybl/BiliLiveContent;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    const-string v1, "bili_live"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 75
    const/high16 v1, 0x24010000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 76
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
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->f:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;Z)Z
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->f:Z

    return p1
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/newplayer/widget/LivePlayerController;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mRightMenu:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    return-object v0
.end method

.method static synthetic access$700(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    return-object v0
.end method

.method static synthetic access$900(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lbl/agb;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->e:Lbl/agb;

    return-object v0
.end method

.method private getEbookMenuActions()Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;
    .locals 1

    .prologue
    .line 474
    new-instance v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;-><init>(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)V

    return-object v0
.end method

.method private h()Z
    .locals 1

    .prologue
    .line 374
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

    .line 548
    sget-boolean v0, Lmybl/BiliFilter;->fastquit_on:Z

    if-eqz v0, :cond_c

    .line 549
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->f:Z

    .line 550
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->finish()V

    .line 588
    :cond_b
    :goto_b
    return-void

    .line 553
    :cond_c
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->e:Lbl/agb;

    if-nez v0, :cond_45

    .line 554
    new-instance v0, Lbl/agb$a;

    invoke-direct {v0, p0}, Lbl/agb$a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v3}, Lbl/agb$a;->a(I)Lbl/agb$a;

    move-result-object v0

    const-string v1, "\u786e\u5b9a\u8981\u9000\u51fa\u64ad\u653e\u5417\uff1f"

    invoke-virtual {v0, v1}, Lbl/agb$a;->a(Ljava/lang/String;)Lbl/agb$a;

    move-result-object v0

    const-string v1, "\u7ee7\u7eed\u64ad\u653e"

    new-instance v2, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$5;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$5;-><init>(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)V

    invoke-virtual {v0, v1, v2}, Lbl/agb$a;->a(Ljava/lang/String;Lbl/agb$b;)Lbl/agb$a;

    move-result-object v0

    const-string v1, "\u786e\u8ba4\u9000\u51fa"

    new-instance v2, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$4;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$4;-><init>(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)V

    .line 560
    invoke-virtual {v0, v1, v2}, Lbl/agb$a;->b(Ljava/lang/String;Lbl/agb$b;)Lbl/agb$a;

    move-result-object v0

    .line 567
    invoke-virtual {v0}, Lbl/agb$a;->a()Lbl/agb;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->e:Lbl/agb;

    .line 568
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->e:Lbl/agb;

    new-instance v1, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$6;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$6;-><init>(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)V

    invoke-virtual {v0, v1}, Lbl/agb;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 579
    :cond_45
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->e:Lbl/agb;

    invoke-virtual {v0}, Lbl/agb;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 580
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->e:Lbl/agb;

    invoke-virtual {v0}, Lbl/agb;->dismiss()V

    goto :goto_b

    .line 583
    :cond_53
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->e:Lbl/agb;

    invoke-virtual {v0}, Lbl/agb;->show()V

    .line 584
    invoke-static {}, Lbl/wm;->e()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 585
    invoke-static {}, Lbl/wm;->f()V

    .line 586
    iput-boolean v3, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->f:Z

    goto :goto_b
.end method

.method private reportLiveHistory()V
    .locals 7

    .prologue
    .line 628
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 629
    if-eqz v0, :cond_46

    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 630
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v6

    .line 631
    invoke-static {v0}, Lmybl/CookieUtil;->getBiliJct(Lbl/mg;)Ljava/lang/String;

    move-result-object v4

    .line 632
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

    .line 633
    const-class v0, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;

    iget v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->d:I

    int-to-long v2, v0

    move-object v5, v4

    .line 634
    invoke-interface/range {v1 .. v6}, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;->reportLiveEntry(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$7;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$7;-><init>(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)V

    .line 635
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 647
    :cond_46
    return-void
.end method

.method private startPlaybackWithCdnRace()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 149
    const-string v0, "LivePlayerActivity"

    const-string v2, "startPlaybackWithCdnRace: \u5f00\u59cb\u64ad\u653e\u6d41\u7a0b"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
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

    .line 153
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    iget-object v0, v0, Lmybl/BiliLiveContent;->mPlayFormat:Ljava/lang/String;

    if-eqz v0, :cond_a1

    .line 154
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    iget-object v0, v0, Lmybl/BiliLiveContent;->mPlayFormat:Ljava/lang/String;

    invoke-static {v0}, Lbl/wm;->setLiveFormat(Ljava/lang/String;)V

    .line 155
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

    .line 160
    :goto_64
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    iget-object v0, v0, Lmybl/BiliLiveContent;->mPlayUrls:Ljava/util/List;

    if-eqz v0, :cond_a6

    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    iget-object v0, v0, Lmybl/BiliLiveContent;->mPlayUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_a6

    .line 161
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

    .line 162
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->cdnExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1;-><init>(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 234
    :goto_9e
    return-void

    :cond_9f
    move v0, v1

    .line 150
    goto :goto_24

    .line 157
    :cond_a1
    const/4 v0, 0x0

    invoke-static {v0}, Lbl/wm;->setLiveFormat(Ljava/lang/String;)V

    goto :goto_64

    .line 217
    :cond_a6
    const-string v0, "LivePlayerActivity"

    const-string v2, "startPlaybackWithCdnRace: \u53ea\u67091\u4e2aURL, \u76f4\u63a5\u64ad\u653e"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
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

    .line 219
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

    .line 220
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->m()V

    .line 223
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

    .line 88
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->cdnExecutor:Ljava/util/concurrent/ExecutorService;

    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mainHandler:Landroid/os/Handler;

    .line 91
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_89

    .line 93
    const-string v2, "bili_live"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmybl/BiliLiveContent;

    iput-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    .line 94
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

    .line 95
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    invoke-virtual {v0}, Lmybl/BiliLiveContent;->hasPlayUrl()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 96
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    invoke-virtual {v0}, Lmybl/BiliLiveContent;->getPlayUrl()I

    .line 98
    :cond_73
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    if-eqz v0, :cond_89

    .line 99
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    iget-object v0, v0, Lmybl/BiliLiveContent;->mPlayUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->b:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    iget-object v0, v0, Lmybl/BiliLiveContent;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->c:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    iget v0, v0, Lmybl/BiliLiveContent;->mRoomId:I

    iput v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->d:I

    .line 104
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

    .line 105
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    if-eqz v0, :cond_c6

    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 106
    :cond_c6
    const-string v0, "\u64ad\u653e\u5730\u5740\u4e3a\u7a7a\uff01\uff01\uff01"

    invoke-static {p0, v0}, Lbl/lr;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->finish()V

    .line 146
    :goto_ce
    return-void

    .line 94
    :cond_cf
    const-string v0, "null"

    goto :goto_5b

    :cond_d2
    move v0, v1

    .line 104
    goto :goto_af

    .line 110
    :cond_d4
    const v0, 0x7f08015f

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    iput-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    .line 111
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    iget-object v1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    iget-object v1, v1, Lmybl/BiliLiveContent;->mCover:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->setLoadingCover(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    iget-object v1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->setTitle(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->requestFocus()Z

    .line 115
    const v0, 0x7f0800d5

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    iput-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    .line 116
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    iget-object v1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->setFirstText(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    .line 118
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

    .line 119
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    iget-object v1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    iget-object v1, v1, Lmybl/BiliLiveContent;->mFace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->setUpAvatar(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->setControllerListener(Lbl/wr;)V

    .line 121
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    iget-object v1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->setPlayer(Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;)V

    .line 122
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    iget-object v1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->setBiliLive(Lmybl/BiliLiveContent;)V

    .line 123
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 127
    new-instance v1, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mRightMenu:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    .line 128
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 130
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 131
    iget-object v2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mRightMenu:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mRightMenu:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mRightMenu:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    iget-object v1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->setListener(Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;)V

    .line 134
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    iget-object v1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mRightMenu:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->initRightMenu(Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;)V

    .line 135
    const-string v0, "LivePlayerActivity"

    const-string v1, "a(Bundle): \u53f3\u4fa7\u83dc\u5355\u5df2\u521d\u59cb\u5316"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;-><init>(Lcom/bilibili/tv/ebook/ui/EbookHost;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    .line 139
    const-string v0, "LivePlayerActivity"

    const-string v1, "a(Bundle): \u7535\u5b50\u4e66\u9605\u8bfb\u5668\u9762\u677f\u5df2\u521d\u59cb\u5316"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    new-instance v1, Lmybl/DanmakuClient;

    iget v2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->d:I

    invoke-direct {v1, v2}, Lmybl/DanmakuClient;-><init>(I)V

    iput-object v1, v0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->danmakuClient:Lmybl/DanmakuClient;

    .line 142
    sput-object p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->_this:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    .line 144
    invoke-direct {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->startPlaybackWithCdnRace()V

    .line 145
    invoke-direct {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->reportLiveHistory()V

    goto/16 :goto_ce
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 238
    invoke-static {p1}, Lbl/abt;->a(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/bilibili/tv/ui/base/BaseActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 239
    return-void
.end method

.method public f()V
    .locals 3

    .prologue
    const/16 v2, 0x400

    .line 81
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 82
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 83
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lbl/adl;->a(Landroid/view/View;)V

    .line 84
    return-void
.end method

.method public g()I
    .locals 1

    .prologue
    .line 69
    const v0, 0x7f0a001e

    return v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 388
    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 393
    return-object p0
.end method

.method public getDanmakuView()Landroid/view/View;
    .locals 1

    .prologue
    .line 414
    const v0, 0x7f08006e

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getVideoContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    if-nez v0, :cond_6

    .line 404
    const/4 v0, 0x0

    .line 406
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
    .line 398
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    return-object v0
.end method

.method public isLiveMode()Z
    .locals 1

    .prologue
    .line 424
    const/4 v0, 0x1

    return v0
.end method

.method public isMenuShown()Z
    .locals 1

    .prologue
    .line 429
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
    .line 419
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 624
    invoke-super {p0, p1, p2, p3}, Lcom/bilibili/tv/ui/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 625
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->getShow()Z

    move-result v0

    .line 244
    invoke-static {}, Lbl/wm;->e()Z

    move-result v1

    .line 245
    if-nez v0, :cond_15

    if-eqz v1, :cond_15

    .line 246
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->a(Z)V

    .line 250
    :cond_14
    :goto_14
    return-void

    .line 247
    :cond_15
    if-eqz v0, :cond_14

    .line 248
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->a(Z)V

    goto :goto_14
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 609
    const-string v0, "LivePlayerActivity"

    const-string v1, "onDestroy: \u88ab\u8c03\u7528"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    if-eqz v0, :cond_13

    .line 612
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->onDestroy()V

    .line 613
    iput-object v2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    .line 615
    :cond_13
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->i()V

    .line 616
    :cond_1c
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->cdnExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->cdnExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 617
    :cond_25
    iput-object v2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->e:Lbl/agb;

    .line 618
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseActivity;->onDestroy()V

    .line 619
    return-void
.end method

.method public onEbookDestroy()V
    .locals 0

    .prologue
    .line 458
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 358
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookModeActive()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 359
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->getControlTarget()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    .line 360
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->getControlTarget()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ebook"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    move v0, v1

    .line 361
    :goto_25
    iget-object v3, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mRightMenu:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    if-eqz v3, :cond_32

    iget-object v3, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mRightMenu:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    invoke-virtual {v3}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isShown()Z

    move-result v3

    if-eqz v3, :cond_32

    move v2, v1

    .line 362
    :cond_32
    if-eqz v0, :cond_46

    if-nez v2, :cond_46

    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    invoke-virtual {v0, p1, p2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 364
    const/4 v0, 0x4

    if-ne p1, v0, :cond_43

    .line 365
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->panelHandledBackKey:Z

    .line 370
    :cond_43
    :goto_43
    return v1

    :cond_44
    move v0, v2

    .line 360
    goto :goto_25

    .line 370
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

    .line 254
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->getShow()Z

    move-result v4

    .line 255
    invoke-static {}, Lbl/wm;->e()Z

    move-result v3

    .line 256
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mRightMenu:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mRightMenu:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isShown()Z

    move-result v0

    if-eqz v0, :cond_62

    move v0, v1

    .line 257
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

    .line 261
    if-ne p1, v9, :cond_64

    iget-boolean v3, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->panelHandledBackKey:Z

    if-eqz v3, :cond_64

    .line 262
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->panelHandledBackKey:Z

    .line 263
    const-string v0, "LivePlayerActivity"

    const-string v2, "onKeyUp: BACK\u5df2\u7531\u7535\u5b50\u4e66\u9762\u677f\u5904\u7406\uff0c\u6d88\u8d39keyUp"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_61
    :goto_61
    return v1

    :cond_62
    move v0, v2

    .line 256
    goto :goto_1c

    .line 266
    :cond_64
    iget-object v3, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    if-eqz v3, :cond_ad

    iget-object v3, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    invoke-virtual {v3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookModeActive()Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 267
    iget-object v3, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    invoke-virtual {v3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->getControlTarget()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a1

    iget-object v3, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    .line 268
    invoke-virtual {v3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->getControlTarget()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ebook"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a1

    move v3, v1

    .line 269
    :goto_87
    if-eqz v3, :cond_a3

    .line 272
    if-ne p1, v8, :cond_95

    .line 273
    iget-object v3, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    invoke-virtual {v3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->consumeMenuOpenedByKeyDown()Z

    move-result v3

    if-nez v3, :cond_61

    if-eqz v0, :cond_61

    .line 277
    :cond_95
    if-ne p1, v9, :cond_99

    if-eqz v0, :cond_61

    .line 284
    :cond_99
    if-nez v0, :cond_a3

    .line 285
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    invoke-virtual {v0, p1, p2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_61

    :cond_a1
    move v3, v2

    .line 268
    goto :goto_87

    .line 290
    :cond_a3
    if-nez v0, :cond_ad

    iget-object v3, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    invoke-virtual {v3, p1, p2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-nez v3, :cond_61

    .line 295
    :cond_ad
    if-ne p1, v9, :cond_d0

    .line 296
    if-eqz v0, :cond_be

    .line 297
    const-string v0, "LivePlayerActivity"

    const-string v3, "onKeyUp: \u5173\u95ed\u53f3\u4fa7\u83dc\u5355"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mRightMenu:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a(Z)V

    goto :goto_61

    .line 300
    :cond_be
    if-eqz v4, :cond_ca

    .line 301
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->a()V

    .line 306
    :goto_c5
    invoke-direct {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h()Z

    move-result v1

    goto :goto_61

    .line 303
    :cond_ca
    invoke-direct {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->i()V

    .line 304
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->f:Z

    goto :goto_c5

    .line 308
    :cond_d0
    if-eqz v0, :cond_fb

    .line 310
    if-ne p1, v8, :cond_e1

    .line 311
    const-string v0, "LivePlayerActivity"

    const-string v3, "onKeyUp: \u83dc\u5355\u952e\u5173\u95ed\u53f3\u4fa7\u83dc\u5355"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mRightMenu:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a(Z)V

    goto :goto_61

    .line 314
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

    .line 318
    :cond_fb
    if-eq p1, v8, :cond_12f

    .line 319
    const/16 v0, 0x13

    if-ne p1, v0, :cond_112

    if-nez v4, :cond_112

    .line 320
    sget v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->live_index:I

    if-lez v0, :cond_14d

    .line 321
    sget v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->live_index:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->live_index:I

    .line 322
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->f:Z

    .line 323
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->refresh()V

    .line 328
    :cond_112
    :goto_112
    const/16 v0, 0x14

    if-ne p1, v0, :cond_12f

    if-nez v4, :cond_12f

    .line 329
    sget v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->live_index:I

    sget-object v3, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->lives:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_153

    .line 330
    sget v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->live_index:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->live_index:I

    .line 331
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->f:Z

    .line 332
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->refresh()V

    .line 338
    :cond_12f
    :goto_12f
    if-ne p1, v8, :cond_159

    .line 339
    const-string v0, "LivePlayerActivity"

    const-string v3, "onKeyUp: \u663e\u793a\u53f3\u4fa7\u83dc\u5355"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    if-eqz v4, :cond_13f

    .line 341
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->a(Z)V

    .line 345
    :cond_13f
    invoke-virtual {p0, v1}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->showMenu(Z)V

    .line 350
    :cond_142
    :goto_142
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    invoke-virtual {v0, p1, p2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->a(ILandroid/view/KeyEvent;)V

    .line 351
    invoke-direct {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h()Z

    move-result v1

    goto/16 :goto_61

    .line 325
    :cond_14d
    const-string v0, "\u5df2\u7ecf\u5230\u9876\u4e86"

    invoke-static {p0, v0}, Lbl/lr;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_112

    .line 334
    :cond_153
    const-string v0, "\u5df2\u7ecf\u5230\u5e95\u4e86"

    invoke-static {p0, v0}, Lbl/lr;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_12f

    .line 346
    :cond_159
    const/16 v0, 0x42

    if-eq p1, v0, :cond_161

    const/16 v0, 0x17

    if-ne p1, v0, :cond_142

    :cond_161
    if-nez v4, :cond_142

    .line 347
    const-string v0, "LivePlayerActivity"

    const-string v2, "onKeyUp: \u663e\u793a\u63a7\u5236\u5668\u83dc\u5355"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->a(Z)V

    goto :goto_142
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 601
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseActivity;->onPause()V

    .line 602
    const-string v0, "LivePlayerActivity"

    const-string v1, "[LIVE_LIFECYCLE] onPause, calling g.e() to pause player"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->e()V

    .line 604
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 593
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseActivity;->onResume()V

    .line 594
    const-string v0, "LivePlayerActivity"

    const-string v1, "[LIVE_LIFECYCLE] onResume, calling g.f() to resume player"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->f()V

    .line 596
    return-void
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 378
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

    .line 379
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

    .line 380
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->finish()V

    .line 381
    sget-object v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->lives:Ljava/util/List;

    sget v1, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->live_index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/BiliLiveContent;

    invoke-static {p0, v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a(Landroid/content/Context;Lmybl/BiliLiveContent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->startActivity(Landroid/content/Intent;)V

    .line 382
    return-void
.end method

.method public requestVideoFocus()V
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    if-eqz v0, :cond_9

    .line 468
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->requestFocus()Z

    .line 470
    :cond_9
    return-void
.end method

.method public showMenu(Z)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 434
    iget-object v2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mRightMenu:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    if-nez v2, :cond_7

    .line 453
    :goto_6
    return-void

    .line 437
    :cond_7
    if-eqz p1, :cond_27

    .line 439
    iget-object v2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    invoke-virtual {v2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isControlEbook()Z

    move-result v2

    if-eqz v2, :cond_2d

    move v2, v0

    .line 440
    :goto_16
    if-eqz v2, :cond_2f

    .line 442
    iget-object v1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mRightMenu:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    iget-object v2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    invoke-virtual {v2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isReadingBook()Z

    move-result v2

    invoke-direct {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->getEbookMenuActions()Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->setEbookMode(ZZLcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;)V

    .line 452
    :cond_27
    :goto_27
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mRightMenu:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a(Z)V

    goto :goto_6

    :cond_2d
    move v2, v1

    .line 439
    goto :goto_16

    .line 445
    :cond_2f
    iget-object v2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mRightMenu:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    invoke-direct {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->getEbookMenuActions()Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    move-result-object v3

    invoke-virtual {v2, v1, v1, v3}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->setEbookMode(ZZLcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;)V

    .line 446
    iget-object v2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    if-eqz v2, :cond_27

    .line 447
    iget-object v2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    iget-object v3, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    if-eqz v3, :cond_55

    iget-object v3, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    invoke-virtual {v3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookModeActive()Z

    move-result v3

    if-eqz v3, :cond_55

    :goto_4a
    invoke-virtual {v2, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->setEbookModeActive(Z)V

    .line 448
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    iget-object v1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mRightMenu:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->initRightMenu(Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;)V

    goto :goto_27

    :cond_55
    move v0, v1

    .line 447
    goto :goto_4a
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 462
    invoke-static {p0, p1}, Lbl/lr;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 463
    return-void
.end method
