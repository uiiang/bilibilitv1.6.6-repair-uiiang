.class public Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;
.super Lcom/bilibili/tv/ui/base/BaseActivity;
.source "LivePlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lbl/wr;


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

.field private f:Z

.field private g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

.field private h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

.field private mainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    sput-object v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->_this:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    .line 55
    sput-object v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->lives:Ljava/util/List;

    .line 56
    const/4 v0, -0x1

    sput v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->live_index:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/bilibili/tv/ui/base/BaseActivity;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->f:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Lmybl/BiliLiveContent;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    const-string v1, "bili_live"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 66
    const/high16 v1, 0x24010000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 67
    return-object v0
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lmybl/BiliLiveContent;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->d:I

    return v0
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lbl/agb;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->e:Lbl/agb;

    return-object v0
.end method

.method static synthetic access$700(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->f:Z

    return v0
.end method

.method static synthetic access$702(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;Z)Z
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->f:Z

    return p1
.end method

.method private h()Z
    .locals 1

    .prologue
    .line 239
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

    .line 250
    sget-boolean v0, Lmybl/BiliFilter;->fastquit_on:Z

    if-eqz v0, :cond_c

    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->f:Z

    .line 252
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->finish()V

    .line 290
    :cond_b
    :goto_b
    return-void

    .line 255
    :cond_c
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->e:Lbl/agb;

    if-nez v0, :cond_45

    .line 256
    new-instance v0, Lbl/agb$a;

    invoke-direct {v0, p0}, Lbl/agb$a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v3}, Lbl/agb$a;->a(I)Lbl/agb$a;

    move-result-object v0

    const-string v1, "\u786e\u5b9a\u8981\u9000\u51fa\u64ad\u653e\u5417\uff1f"

    invoke-virtual {v0, v1}, Lbl/agb$a;->a(Ljava/lang/String;)Lbl/agb$a;

    move-result-object v0

    const-string v1, "\u7ee7\u7eed\u64ad\u653e"

    new-instance v2, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;-><init>(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)V

    invoke-virtual {v0, v1, v2}, Lbl/agb$a;->a(Ljava/lang/String;Lbl/agb$b;)Lbl/agb$a;

    move-result-object v0

    const-string v1, "\u786e\u8ba4\u9000\u51fa"

    new-instance v2, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$2;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$2;-><init>(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)V

    .line 262
    invoke-virtual {v0, v1, v2}, Lbl/agb$a;->b(Ljava/lang/String;Lbl/agb$b;)Lbl/agb$a;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Lbl/agb$a;->a()Lbl/agb;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->e:Lbl/agb;

    .line 270
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->e:Lbl/agb;

    new-instance v1, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$4;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$4;-><init>(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)V

    invoke-virtual {v0, v1}, Lbl/agb;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 281
    :cond_45
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->e:Lbl/agb;

    invoke-virtual {v0}, Lbl/agb;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 282
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->e:Lbl/agb;

    invoke-virtual {v0}, Lbl/agb;->dismiss()V

    goto :goto_b

    .line 285
    :cond_53
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->e:Lbl/agb;

    invoke-virtual {v0}, Lbl/agb;->show()V

    .line 286
    invoke-static {}, Lbl/wm;->e()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 287
    invoke-static {}, Lbl/wm;->f()V

    .line 288
    iput-boolean v3, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->f:Z

    goto :goto_b
.end method

.method private reportLiveHistory()V
    .locals 7

    .prologue
    .line 317
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 318
    if-eqz v0, :cond_46

    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 319
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v6

    .line 320
    invoke-static {v0}, Lmybl/CookieUtil;->getBiliJct(Lbl/mg;)Ljava/lang/String;

    move-result-object v4

    .line 321
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

    .line 322
    const-class v0, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;

    iget v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->d:I

    int-to-long v2, v0

    move-object v5, v4

    .line 323
    invoke-interface/range {v1 .. v6}, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;->reportLiveEntry(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$5;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$5;-><init>(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)V

    .line 324
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 336
    :cond_46
    return-void
.end method

.method private startPlaybackWithCdnRace()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 123
    const-string v0, "LivePlayerActivity"

    const-string v1, "startPlaybackWithCdnRace: \u5f00\u59cb\u64ad\u653e\u6d41\u7a0b"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    iget-object v0, v0, Lmybl/BiliLiveContent;->mPlayFormat:Ljava/lang/String;

    if-eqz v0, :cond_6c

    .line 127
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    iget-object v0, v0, Lmybl/BiliLiveContent;->mPlayFormat:Ljava/lang/String;

    invoke-static {v0}, Lbl/wm;->setLiveFormat(Ljava/lang/String;)V

    .line 128
    const-string v0, "LivePlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPlaybackWithCdnRace: \u8bbe\u7f6e\u76f4\u64ad\u683c\u5f0f="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    iget-object v2, v2, Lmybl/BiliLiveContent;->mPlayFormat:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :goto_31
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    iget-object v0, v0, Lmybl/BiliLiveContent;->mPlayUrls:Ljava/util/List;

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    iget-object v0, v0, Lmybl/BiliLiveContent;->mPlayUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_71

    .line 134
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

    .line 135
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->cdnExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1;-><init>(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 180
    :goto_6b
    return-void

    .line 130
    :cond_6c
    const/4 v0, 0x0

    invoke-static {v0}, Lbl/wm;->setLiveFormat(Ljava/lang/String;)V

    goto :goto_31

    .line 176
    :cond_71
    const-string v0, "LivePlayerActivity"

    const-string v1, "startPlaybackWithCdnRace: \u53ea\u67091\u4e2aURL, \u76f4\u63a5\u64ad\u653e"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    iget-object v1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->b:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    iget v3, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 178
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->m()V

    goto :goto_6b
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 79
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->cdnExecutor:Ljava/util/concurrent/ExecutorService;

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mainHandler:Landroid/os/Handler;

    .line 82
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_89

    .line 84
    const-string v1, "bili_live"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmybl/BiliLiveContent;

    iput-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    .line 85
    const-string v1, "LivePlayerActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a(Bundle): hasPlayUrl="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    invoke-virtual {v2}, Lmybl/BiliLiveContent;->hasPlayUrl()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mPlayUrl="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    iget-object v0, v0, Lmybl/BiliLiveContent;->mPlayUrl:Ljava/lang/String;

    if-eqz v0, :cond_9e

    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    iget-object v0, v0, Lmybl/BiliLiveContent;->mPlayUrl:Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v4, 0x32

    iget-object v5, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    iget-object v5, v5, Lmybl/BiliLiveContent;->mPlayUrl:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_5b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    invoke-virtual {v0}, Lmybl/BiliLiveContent;->hasPlayUrl()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 87
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    invoke-virtual {v0}, Lmybl/BiliLiveContent;->getPlayUrl()I

    .line 89
    :cond_73
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    if-eqz v0, :cond_89

    .line 90
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    iget-object v0, v0, Lmybl/BiliLiveContent;->mPlayUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->b:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    iget-object v0, v0, Lmybl/BiliLiveContent;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->c:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    iget v0, v0, Lmybl/BiliLiveContent;->mRoomId:I

    iput v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->d:I

    .line 95
    :cond_89
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 96
    :cond_95
    const-string v0, "\u64ad\u653e\u5730\u5740\u4e3a\u7a7a\uff01\uff01\uff01"

    invoke-static {p0, v0}, Lbl/lr;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->finish()V

    .line 120
    :goto_9d
    return-void

    .line 85
    :cond_9e
    const-string v0, "null"

    goto :goto_5b

    .line 100
    :cond_a1
    const v0, 0x7f08015f

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    iput-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    .line 101
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    iget-object v1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    iget-object v1, v1, Lmybl/BiliLiveContent;->mCover:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->setLoadingCover(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    iget-object v1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->setTitle(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->requestFocus()Z

    .line 105
    const v0, 0x7f0800d5

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    iput-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    .line 106
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    iget-object v1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->setFirstText(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    .line 108
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

    .line 109
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    iget-object v1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    iget-object v1, v1, Lmybl/BiliLiveContent;->mFace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->setUpAvatar(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->setControllerListener(Lbl/wr;)V

    .line 111
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    iget-object v1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->setPlayer(Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;)V

    .line 112
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    iget-object v1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->setBiliLive(Lmybl/BiliLiveContent;)V

    .line 113
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    new-instance v1, Lmybl/DanmakuClient;

    iget v2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->d:I

    invoke-direct {v1, v2}, Lmybl/DanmakuClient;-><init>(I)V

    iput-object v1, v0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->danmakuClient:Lmybl/DanmakuClient;

    .line 116
    sput-object p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->_this:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    .line 118
    invoke-direct {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->startPlaybackWithCdnRace()V

    .line 119
    invoke-direct {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->reportLiveHistory()V

    goto/16 :goto_9d
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 184
    invoke-static {p1}, Lbl/abt;->a(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/bilibili/tv/ui/base/BaseActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 185
    return-void
.end method

.method public f()V
    .locals 3

    .prologue
    const/16 v2, 0x400

    .line 72
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 73
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 74
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lbl/adl;->a(Landroid/view/View;)V

    .line 75
    return-void
.end method

.method public g()I
    .locals 1

    .prologue
    .line 60
    const v0, 0x7f0a001e

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->getShow()Z

    move-result v0

    .line 190
    invoke-static {}, Lbl/wm;->e()Z

    move-result v1

    .line 191
    if-nez v0, :cond_15

    if-eqz v1, :cond_15

    .line 192
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->a(Z)V

    .line 196
    :cond_14
    :goto_14
    return-void

    .line 193
    :cond_15
    if-eqz v0, :cond_14

    .line 194
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->a(Z)V

    goto :goto_14
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 309
    const-string v0, "LivePlayerActivity"

    const-string v1, "onDestroy: \u88ab\u8c03\u7528"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->i()V

    .line 311
    :cond_10
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->cdnExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->cdnExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 312
    :cond_19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->e:Lbl/agb;

    .line 313
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseActivity;->onDestroy()V

    .line 314
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8

    .prologue
    const/16 v7, 0x52

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 200
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->getShow()Z

    move-result v0

    .line 201
    invoke-static {}, Lbl/wm;->e()Z

    move-result v1

    .line 202
    const-string v2, "LivePlayerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyUp: keyCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", show="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isPlaying="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v1, 0x4

    if-eq p1, v1, :cond_9f

    .line 204
    if-eq p1, v7, :cond_3f

    .line 208
    :cond_3f
    if-eq p1, v7, :cond_49

    const/16 v1, 0x42

    if-eq p1, v1, :cond_49

    const/16 v1, 0x17

    if-ne p1, v1, :cond_57

    :cond_49
    if-nez v0, :cond_57

    .line 209
    const-string v1, "LivePlayerActivity"

    const-string v2, "onKeyUp: \u663e\u793a\u63a7\u5236\u5668\u83dc\u5355"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    invoke-virtual {v1, v6}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->a(Z)V

    .line 212
    :cond_57
    const/16 v1, 0x13

    if-ne p1, v1, :cond_6c

    if-nez v0, :cond_6c

    .line 213
    sget v1, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->live_index:I

    if-lez v1, :cond_93

    .line 214
    sget v1, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->live_index:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->live_index:I

    .line 215
    iput-boolean v5, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->f:Z

    .line 216
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->refresh()V

    .line 220
    :cond_6c
    :goto_6c
    const/16 v1, 0x14

    if-ne p1, v1, :cond_89

    if-nez v0, :cond_89

    .line 221
    sget v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->live_index:I

    sget-object v1, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->lives:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_99

    .line 222
    sget v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->live_index:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->live_index:I

    .line 223
    iput-boolean v5, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->f:Z

    .line 224
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->refresh()V

    .line 228
    :cond_89
    :goto_89
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    invoke-virtual {v0, p1, p2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->a(ILandroid/view/KeyEvent;)V

    .line 235
    :goto_8e
    invoke-direct {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h()Z

    move-result v0

    return v0

    .line 218
    :cond_93
    const-string v1, "\u5df2\u7ecf\u5230\u9876\u4e86"

    invoke-static {p0, v1}, Lbl/lr;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_6c

    .line 226
    :cond_99
    const-string v0, "\u5df2\u7ecf\u5230\u5e95\u4e86"

    invoke-static {p0, v0}, Lbl/lr;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_89

    .line 229
    :cond_9f
    if-eqz v0, :cond_a7

    .line 230
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->a()V

    goto :goto_8e

    .line 232
    :cond_a7
    invoke-direct {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->i()V

    .line 233
    iput-boolean v6, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->f:Z

    goto :goto_8e
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 302
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseActivity;->onPause()V

    .line 303
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->e()V

    .line 304
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 295
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseActivity;->onResume()V

    .line 296
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->f()V

    .line 297
    return-void
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 243
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

    .line 244
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

    .line 245
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->finish()V

    .line 246
    sget-object v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->lives:Ljava/util/List;

    sget v1, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->live_index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/BiliLiveContent;

    invoke-static {p0, v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a(Landroid/content/Context;Lmybl/BiliLiveContent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->startActivity(Landroid/content/Intent;)V

    .line 247
    return-void
.end method
