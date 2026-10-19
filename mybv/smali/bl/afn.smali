.class public final Lbl/afn;
.super Lbl/adw;
.source "afn.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbl/afn$a;
    }
.end annotation


# static fields
.field public static final Companion:Lbl/afn$a;

.field public static prefect_codec:Ljava/lang/String;

.field public static prefect_decoder:Ljava/lang/String;


# instance fields
.field private b:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private c:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private codecButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private codecSettingsLayout:Landroid/view/ViewGroup;

.field private d:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private decodeSettingsLayout:Landroid/view/ViewGroup;

.field private decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field public e:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private liveExoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private liveIjkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private menuAudioBalanceBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private menuEbookBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private menuSubtitleSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field public supported_codecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    new-instance v0, Lbl/afn$a;

    invoke-direct {v0, v1}, Lbl/afn$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lbl/afn;->Companion:Lbl/afn$a;

    .line 33
    sput-object v1, Lbl/afn;->prefect_codec:Ljava/lang/String;

    .line 34
    sput-object v1, Lbl/afn;->prefect_decoder:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 31
    invoke-direct {p0}, Lbl/adw;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "video/avc"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "video/hevc"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "video/av01"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lbl/afn;->supported_codecs:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lbl/afn;)Lcom/bilibili/tv/widget/DrawFrameLayout;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lbl/afn;->codecButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    return-object v0
.end method

.method private updateLivePlayerSelection()V
    .locals 4

    .prologue
    const v3, 0x7f0700f0

    const v2, 0x7f0700ef

    .line 342
    iget-object v0, p0, Lbl/afn;->liveIjkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lbl/afn;->liveExoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v0, :cond_f

    .line 354
    :cond_e
    :goto_e
    return-void

    .line 344
    :cond_f
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_live_player_type(Landroid/content/Context;)I

    move-result v0

    .line 346
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2b

    .line 347
    invoke-static {}, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->isExoPlayerSupported()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 348
    iget-object v0, p0, Lbl/afn;->liveIjkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 349
    iget-object v0, p0, Lbl/afn;->liveExoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto :goto_e

    .line 351
    :cond_2b
    iget-object v0, p0, Lbl/afn;->liveIjkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 352
    iget-object v0, p0, Lbl/afn;->liveExoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto :goto_e
.end method

.method private updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V
    .locals 1

    .prologue
    .line 680
    if-eqz p2, :cond_9

    .line 681
    const v0, 0x7f0700f0

    invoke-virtual {p1, v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 685
    :goto_8
    return-void

    .line 683
    :cond_9
    const v0, 0x7f0700ef

    invoke-virtual {p1, v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto :goto_8
.end method

.method private updatePlayerSelection()V
    .locals 8

    .prologue
    const v7, 0x7f0700f0

    const v6, 0x7f0700ef

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 312
    iget-object v0, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v0, :cond_12

    .line 339
    :cond_11
    :goto_11
    return-void

    .line 314
    :cond_12
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_player_type(Landroid/content/Context;)I

    move-result v0

    .line 315
    const-string v1, "afn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePlayerSelection: playerType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ijkVisibility="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 316
    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", exoVisibility="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 317
    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 315
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/4 v1, 0x3

    if-ne v0, v1, :cond_78

    .line 320
    invoke-static {}, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->isExoPlayerSupported()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 321
    iget-object v0, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 322
    iget-object v0, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 323
    iget-object v0, p0, Lbl/afn;->decodeSettingsLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6e

    .line 324
    iget-object v0, p0, Lbl/afn;->decodeSettingsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 326
    :cond_6e
    iget-object v0, p0, Lbl/afn;->codecSettingsLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_11

    .line 327
    iget-object v0, p0, Lbl/afn;->codecSettingsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_11

    .line 330
    :cond_78
    iget-object v0, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 331
    iget-object v0, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 332
    iget-object v0, p0, Lbl/afn;->decodeSettingsLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8b

    .line 333
    iget-object v0, p0, Lbl/afn;->decodeSettingsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 335
    :cond_8b
    iget-object v0, p0, Lbl/afn;->codecSettingsLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_11

    .line 336
    iget-object v0, p0, Lbl/afn;->codecSettingsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_11
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 518
    iget-object v1, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v1, :cond_6

    .line 591
    :cond_5
    :goto_5
    return v0

    .line 521
    :cond_6
    iget-object v1, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 524
    iget-object v1, p0, Lbl/afn;->decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lbl/afn;->decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 527
    :cond_32
    iget-object v1, p0, Lbl/afn;->decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lbl/afn;->decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 530
    :cond_3e
    iget-object v1, p0, Lbl/afn;->decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lbl/afn;->decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 533
    :cond_4a
    iget-object v1, p0, Lbl/afn;->codecButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_56

    iget-object v1, p0, Lbl/afn;->codecButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 536
    :cond_56
    iget-object v1, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_62

    iget-object v1, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 539
    :cond_62
    iget-object v1, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_6e

    iget-object v1, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 542
    :cond_6e
    iget-object v1, p0, Lbl/afn;->liveIjkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_7a

    iget-object v1, p0, Lbl/afn;->liveIjkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 545
    :cond_7a
    iget-object v1, p0, Lbl/afn;->liveExoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_86

    iget-object v1, p0, Lbl/afn;->liveExoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 548
    :cond_86
    iget-object v1, p0, Lbl/afn;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_92

    iget-object v1, p0, Lbl/afn;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 551
    :cond_92
    iget-object v1, p0, Lbl/afn;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_9e

    iget-object v1, p0, Lbl/afn;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 554
    :cond_9e
    iget-object v1, p0, Lbl/afn;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_aa

    iget-object v1, p0, Lbl/afn;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 557
    :cond_aa
    iget-object v1, p0, Lbl/afn;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_b6

    iget-object v1, p0, Lbl/afn;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 560
    :cond_b6
    iget-object v1, p0, Lbl/afn;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_c2

    iget-object v1, p0, Lbl/afn;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 563
    :cond_c2
    iget-object v1, p0, Lbl/afn;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_ce

    iget-object v1, p0, Lbl/afn;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 566
    :cond_ce
    iget-object v1, p0, Lbl/afn;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_da

    iget-object v1, p0, Lbl/afn;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 569
    :cond_da
    iget-object v1, p0, Lbl/afn;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_e6

    iget-object v1, p0, Lbl/afn;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 572
    :cond_e6
    iget-object v1, p0, Lbl/afn;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_f2

    iget-object v1, p0, Lbl/afn;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 575
    :cond_f2
    iget-object v1, p0, Lbl/afn;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_fe

    iget-object v1, p0, Lbl/afn;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 578
    :cond_fe
    iget-object v1, p0, Lbl/afn;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_10a

    iget-object v1, p0, Lbl/afn;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 581
    :cond_10a
    iget-object v1, p0, Lbl/afn;->menuSubtitleSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_116

    iget-object v1, p0, Lbl/afn;->menuSubtitleSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 584
    :cond_116
    iget-object v1, p0, Lbl/afn;->menuAudioBalanceBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_122

    iget-object v1, p0, Lbl/afn;->menuAudioBalanceBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 587
    :cond_122
    iget-object v1, p0, Lbl/afn;->menuEbookBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_12e

    iget-object v1, p0, Lbl/afn;->menuEbookBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 590
    :cond_12e
    iget-object v0, p0, Lbl/afn;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->requestFocus()Z

    .line 591
    const/4 v0, 0x1

    goto/16 :goto_5
.end method

.method public final b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 595
    iget-object v2, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v2, :cond_7

    .line 667
    :cond_6
    :goto_6
    return v0

    .line 598
    :cond_7
    iget-object v2, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_27

    iget-object v2, p0, Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_27

    iget-object v2, p0, Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_27

    iget-object v2, p0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_29

    :cond_27
    move v0, v1

    .line 599
    goto :goto_6

    .line 601
    :cond_29
    iget-object v2, p0, Lbl/afn;->decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v2, :cond_37

    iget-object v2, p0, Lbl/afn;->decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_37

    move v0, v1

    .line 602
    goto :goto_6

    .line 604
    :cond_37
    iget-object v2, p0, Lbl/afn;->decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v2, :cond_45

    iget-object v2, p0, Lbl/afn;->decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_45

    move v0, v1

    .line 605
    goto :goto_6

    .line 607
    :cond_45
    iget-object v2, p0, Lbl/afn;->decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v2, :cond_53

    iget-object v2, p0, Lbl/afn;->decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_53

    move v0, v1

    .line 608
    goto :goto_6

    .line 610
    :cond_53
    iget-object v2, p0, Lbl/afn;->codecButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v2, :cond_61

    iget-object v2, p0, Lbl/afn;->codecButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_61

    move v0, v1

    .line 611
    goto :goto_6

    .line 613
    :cond_61
    iget-object v2, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v2, :cond_6f

    iget-object v2, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_6f

    move v0, v1

    .line 614
    goto :goto_6

    .line 616
    :cond_6f
    iget-object v2, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v2, :cond_7d

    iget-object v2, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_7d

    move v0, v1

    .line 617
    goto :goto_6

    .line 619
    :cond_7d
    iget-object v2, p0, Lbl/afn;->liveIjkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v2, :cond_8c

    iget-object v2, p0, Lbl/afn;->liveIjkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_8c

    move v0, v1

    .line 620
    goto/16 :goto_6

    .line 622
    :cond_8c
    iget-object v2, p0, Lbl/afn;->liveExoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v2, :cond_9b

    iget-object v2, p0, Lbl/afn;->liveExoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_9b

    move v0, v1

    .line 623
    goto/16 :goto_6

    .line 625
    :cond_9b
    iget-object v2, p0, Lbl/afn;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v2, :cond_aa

    iget-object v2, p0, Lbl/afn;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_aa

    move v0, v1

    .line 626
    goto/16 :goto_6

    .line 628
    :cond_aa
    iget-object v2, p0, Lbl/afn;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v2, :cond_b9

    iget-object v2, p0, Lbl/afn;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_b9

    move v0, v1

    .line 629
    goto/16 :goto_6

    .line 631
    :cond_b9
    iget-object v2, p0, Lbl/afn;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v2, :cond_c8

    iget-object v2, p0, Lbl/afn;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_c8

    move v0, v1

    .line 632
    goto/16 :goto_6

    .line 634
    :cond_c8
    iget-object v2, p0, Lbl/afn;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v2, :cond_d7

    iget-object v2, p0, Lbl/afn;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_d7

    move v0, v1

    .line 635
    goto/16 :goto_6

    .line 637
    :cond_d7
    iget-object v2, p0, Lbl/afn;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v2, :cond_e6

    iget-object v2, p0, Lbl/afn;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_e6

    move v0, v1

    .line 638
    goto/16 :goto_6

    .line 640
    :cond_e6
    iget-object v2, p0, Lbl/afn;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v2, :cond_f5

    iget-object v2, p0, Lbl/afn;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_f5

    move v0, v1

    .line 641
    goto/16 :goto_6

    .line 643
    :cond_f5
    iget-object v2, p0, Lbl/afn;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v2, :cond_104

    iget-object v2, p0, Lbl/afn;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_104

    move v0, v1

    .line 644
    goto/16 :goto_6

    .line 646
    :cond_104
    iget-object v2, p0, Lbl/afn;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v2, :cond_113

    iget-object v2, p0, Lbl/afn;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_113

    move v0, v1

    .line 647
    goto/16 :goto_6

    .line 649
    :cond_113
    iget-object v2, p0, Lbl/afn;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v2, :cond_122

    iget-object v2, p0, Lbl/afn;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_122

    move v0, v1

    .line 650
    goto/16 :goto_6

    .line 652
    :cond_122
    iget-object v2, p0, Lbl/afn;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v2, :cond_131

    iget-object v2, p0, Lbl/afn;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_131

    move v0, v1

    .line 653
    goto/16 :goto_6

    .line 655
    :cond_131
    iget-object v2, p0, Lbl/afn;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v2, :cond_140

    iget-object v2, p0, Lbl/afn;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_140

    move v0, v1

    .line 656
    goto/16 :goto_6

    .line 658
    :cond_140
    iget-object v2, p0, Lbl/afn;->menuSubtitleSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v2, :cond_14f

    iget-object v2, p0, Lbl/afn;->menuSubtitleSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_14f

    move v0, v1

    .line 659
    goto/16 :goto_6

    .line 661
    :cond_14f
    iget-object v2, p0, Lbl/afn;->menuAudioBalanceBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v2, :cond_15e

    iget-object v2, p0, Lbl/afn;->menuAudioBalanceBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_15e

    move v0, v1

    .line 662
    goto/16 :goto_6

    .line 664
    :cond_15e
    iget-object v2, p0, Lbl/afn;->menuEbookBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lbl/afn;->menuEbookBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_6

    move v0, v1

    .line 665
    goto/16 :goto_6
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public d_()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const v6, 0x7f0700f0

    const v5, 0x7f0700ef

    .line 358
    iget-object v0, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2a

    .line 359
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v2, 0x10

    invoke-static {v0, v2}, Lbl/abd;->a(Landroid/content/Context;I)V

    .line 360
    iget-object v0, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 361
    iget-object v0, p0, Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 362
    iget-object v0, p0, Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 363
    iget-object v0, p0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 365
    :cond_2a
    iget-object v0, p0, Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_4b

    .line 366
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v2, 0x20

    invoke-static {v0, v2}, Lbl/abd;->a(Landroid/content/Context;I)V

    .line 367
    iget-object v0, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 368
    iget-object v0, p0, Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 369
    iget-object v0, p0, Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 370
    iget-object v0, p0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 372
    :cond_4b
    iget-object v0, p0, Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_6c

    .line 373
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v2, 0x50

    invoke-static {v0, v2}, Lbl/abd;->a(Landroid/content/Context;I)V

    .line 374
    iget-object v0, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 375
    iget-object v0, p0, Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 376
    iget-object v0, p0, Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 377
    iget-object v0, p0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 379
    :cond_6c
    iget-object v0, p0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_8d

    .line 380
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v2, 0x78

    invoke-static {v0, v2}, Lbl/abd;->a(Landroid/content/Context;I)V

    .line 381
    iget-object v0, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 382
    iget-object v0, p0, Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 383
    iget-object v0, p0, Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 384
    iget-object v0, p0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 387
    :cond_8d
    iget-object v0, p0, Lbl/afn;->decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_a7

    .line 388
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v3}, Lbl/abd;->b(Landroid/content/Context;I)V

    .line 389
    iget-object v0, p0, Lbl/afn;->decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 390
    iget-object v0, p0, Lbl/afn;->decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 391
    iget-object v0, p0, Lbl/afn;->decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 393
    :cond_a7
    iget-object v0, p0, Lbl/afn;->decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_c1

    .line 394
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v4}, Lbl/abd;->b(Landroid/content/Context;I)V

    .line 395
    iget-object v0, p0, Lbl/afn;->decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 396
    iget-object v0, p0, Lbl/afn;->decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 397
    iget-object v0, p0, Lbl/afn;->decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 399
    :cond_c1
    iget-object v0, p0, Lbl/afn;->decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_dc

    .line 400
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lbl/abd;->b(Landroid/content/Context;I)V

    .line 401
    iget-object v0, p0, Lbl/afn;->decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 402
    iget-object v0, p0, Lbl/afn;->decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 403
    iget-object v0, p0, Lbl/afn;->decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 405
    :cond_dc
    iget-object v0, p0, Lbl/afn;->codecButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_14a

    .line 406
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 407
    const-string v0, "\u65e0"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 409
    const-string v0, "\u65e0"

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 410
    :goto_f5
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v2

    if-ge v0, v2, :cond_129

    .line 411
    invoke-static {v0}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v7

    .line 412
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v2

    if-nez v2, :cond_126

    .line 413
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v8

    move v2, v1

    .line 414
    :goto_10a
    array-length v9, v8

    if-ge v2, v9, :cond_126

    .line 415
    iget-object v9, p0, Lbl/afn;->supported_codecs:Ljava/util/List;

    aget-object v10, v8, v2

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_123

    .line 416
    aget-object v9, v8, v2

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    :cond_123
    add-int/lit8 v2, v2, 0x1

    goto :goto_10a

    .line 410
    :cond_126
    add-int/lit8 v0, v0, 0x1

    goto :goto_f5

    .line 421
    :cond_129
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lbl/afn;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-array v0, v1, [Ljava/lang/String;

    .line 422
    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v7, Lbl/afn$1;

    invoke-direct {v7, p0, v5, v6}, Lbl/afn$1;-><init>(Lbl/afn;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v2, v0, v7}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 443
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 444
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 447
    :cond_14a
    iget-object v0, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_158

    .line 448
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v4}, Lbl/abd;->set_player_type(Landroid/content/Context;I)V

    .line 449
    invoke-direct {p0}, Lbl/afn;->updatePlayerSelection()V

    .line 451
    :cond_158
    iget-object v0, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_167

    .line 452
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lbl/abd;->set_player_type(Landroid/content/Context;I)V

    .line 453
    invoke-direct {p0}, Lbl/afn;->updatePlayerSelection()V

    .line 455
    :cond_167
    iget-object v0, p0, Lbl/afn;->liveIjkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_175

    .line 456
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v4}, Lbl/abd;->set_live_player_type(Landroid/content/Context;I)V

    .line 457
    invoke-direct {p0}, Lbl/afn;->updateLivePlayerSelection()V

    .line 459
    :cond_175
    iget-object v0, p0, Lbl/afn;->liveExoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_184

    .line 460
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lbl/abd;->set_live_player_type(Landroid/content/Context;I)V

    .line 461
    invoke-direct {p0}, Lbl/afn;->updateLivePlayerSelection()V

    .line 464
    :cond_184
    iget-object v0, p0, Lbl/afn;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1bc

    iget-object v0, p0, Lbl/afn;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1bc

    iget-object v0, p0, Lbl/afn;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1bc

    iget-object v0, p0, Lbl/afn;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1bc

    iget-object v0, p0, Lbl/afn;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1bc

    iget-object v0, p0, Lbl/afn;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1bc

    iget-object v0, p0, Lbl/afn;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1bc

    iget-object v0, p0, Lbl/afn;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1bc

    iget-object v0, p0, Lbl/afn;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1bc

    iget-object v0, p0, Lbl/afn;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1bc

    iget-object v0, p0, Lbl/afn;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1bc

    iget-object v0, p0, Lbl/afn;->menuSubtitleSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1bc

    iget-object v0, p0, Lbl/afn;->menuAudioBalanceBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1bc

    iget-object v0, p0, Lbl/afn;->menuEbookBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_1e4

    .line 471
    :cond_1bc
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_player_menu_config(Landroid/content/Context;)I

    move-result v2

    .line 473
    iget-object v0, p0, Lbl/afn;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_1e5

    move v0, v3

    .line 502
    :goto_1c9
    and-int v4, v2, v0

    if-eqz v4, :cond_23e

    move v4, v3

    .line 504
    :goto_1ce
    if-eqz v4, :cond_240

    .line 505
    xor-int/lit8 v5, v0, -0x1

    and-int/2addr v2, v5

    .line 506
    if-nez v2, :cond_242

    .line 512
    :goto_1d5
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v0}, Lbl/abd;->set_player_menu_config(Landroid/content/Context;I)V

    .line 513
    check-cast p1, Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v4, :cond_1e1

    move v1, v3

    :cond_1e1
    invoke-direct {p0, p1, v1}, Lbl/afn;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 515
    :cond_1e4
    return-void

    .line 475
    :cond_1e5
    iget-object v0, p0, Lbl/afn;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_1eb

    move v0, v4

    .line 476
    goto :goto_1c9

    .line 477
    :cond_1eb
    iget-object v0, p0, Lbl/afn;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_1f1

    .line 478
    const/4 v0, 0x4

    goto :goto_1c9

    .line 479
    :cond_1f1
    iget-object v0, p0, Lbl/afn;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_1f8

    .line 480
    const/16 v0, 0x8

    goto :goto_1c9

    .line 481
    :cond_1f8
    iget-object v0, p0, Lbl/afn;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_1ff

    .line 482
    const/16 v0, 0x10

    goto :goto_1c9

    .line 483
    :cond_1ff
    iget-object v0, p0, Lbl/afn;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_206

    .line 484
    const/16 v0, 0x20

    goto :goto_1c9

    .line 485
    :cond_206
    iget-object v0, p0, Lbl/afn;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_20d

    .line 486
    const/16 v0, 0x40

    goto :goto_1c9

    .line 487
    :cond_20d
    iget-object v0, p0, Lbl/afn;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_214

    .line 488
    const/16 v0, 0x80

    goto :goto_1c9

    .line 489
    :cond_214
    iget-object v0, p0, Lbl/afn;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_21b

    .line 490
    const/16 v0, 0x100

    goto :goto_1c9

    .line 491
    :cond_21b
    iget-object v0, p0, Lbl/afn;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_222

    .line 492
    const/16 v0, 0x200

    goto :goto_1c9

    .line 493
    :cond_222
    iget-object v0, p0, Lbl/afn;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_229

    .line 494
    const/16 v0, 0x400

    goto :goto_1c9

    .line 495
    :cond_229
    iget-object v0, p0, Lbl/afn;->menuSubtitleSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_230

    .line 496
    const/16 v0, 0x1000

    goto :goto_1c9

    .line 497
    :cond_230
    iget-object v0, p0, Lbl/afn;->menuAudioBalanceBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_237

    .line 498
    const/16 v0, 0x800

    goto :goto_1c9

    .line 499
    :cond_237
    iget-object v0, p0, Lbl/afn;->menuEbookBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_244

    .line 500
    const/16 v0, 0x2000

    goto :goto_1c9

    :cond_23e
    move v4, v1

    .line 502
    goto :goto_1ce

    .line 510
    :cond_240
    or-int/2addr v0, v2

    goto :goto_1d5

    :cond_242
    move v0, v2

    goto :goto_1d5

    :cond_244
    move v0, v1

    goto :goto_1c9
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const/16 v7, 0x8

    const v5, 0x7f0700f0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v6, 0x7f0700e8

    .line 80
    const-string v0, "inflater"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    const v0, 0x7f0a003a

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 82
    const-string v0, "view"

    invoke-static {v4, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    const v0, 0x7f0800bb

    invoke-virtual {p0, v4, v0}, Lbl/afn;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 85
    const v0, 0x7f08016f

    invoke-virtual {p0, v4, v0}, Lbl/afn;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 86
    const v0, 0x7f080096

    invoke-virtual {p0, v4, v0}, Lbl/afn;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 87
    const v0, 0x7f080120

    invoke-virtual {p0, v4, v0}, Lbl/afn;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 89
    iget-object v0, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v0, :cond_4e

    invoke-static {}, Lbl/bbi;->a()V

    .line 90
    :cond_4e
    iget-object v0, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 91
    iget-object v0, p0, Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v0, :cond_5a

    invoke-static {}, Lbl/bbi;->a()V

    .line 92
    :cond_5a
    iget-object v0, p0, Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 93
    iget-object v0, p0, Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v0, :cond_66

    invoke-static {}, Lbl/bbi;->a()V

    .line 94
    :cond_66
    iget-object v0, p0, Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 95
    iget-object v0, p0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v0, :cond_72

    invoke-static {}, Lbl/bbi;->a()V

    .line 96
    :cond_72
    iget-object v0, p0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 98
    iget-object v0, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 99
    iget-object v0, p0, Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 100
    iget-object v0, p0, Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 101
    iget-object v0, p0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 103
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->d(Landroid/content/Context;)I

    move-result v0

    .line 104
    const/16 v3, 0x10

    if-ne v0, v3, :cond_47c

    .line 105
    iget-object v0, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 114
    :cond_9c
    :goto_9c
    iget-object v0, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v0, 0x7f080227

    invoke-virtual {p0, v4, v0}, Lbl/afn;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 120
    const v0, 0x7f080228

    invoke-virtual {p0, v4, v0}, Lbl/afn;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 121
    const v0, 0x7f080229

    invoke-virtual {p0, v4, v0}, Lbl/afn;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 122
    const v0, 0x7f080184

    invoke-virtual {p0, v4, v0}, Lbl/afn;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->codecButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 124
    iget-object v0, p0, Lbl/afn;->decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_ef

    .line 125
    iget-object v0, p0, Lbl/afn;->decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 126
    iget-object v0, p0, Lbl/afn;->decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 127
    iget-object v0, p0, Lbl/afn;->decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    :cond_ef
    iget-object v0, p0, Lbl/afn;->decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_102

    .line 130
    iget-object v0, p0, Lbl/afn;->decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 131
    iget-object v0, p0, Lbl/afn;->decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 132
    iget-object v0, p0, Lbl/afn;->decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    :cond_102
    iget-object v0, p0, Lbl/afn;->decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_115

    .line 135
    iget-object v0, p0, Lbl/afn;->decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 136
    iget-object v0, p0, Lbl/afn;->decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 137
    iget-object v0, p0, Lbl/afn;->decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    :cond_115
    iget-object v0, p0, Lbl/afn;->codecButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_128

    .line 140
    iget-object v0, p0, Lbl/afn;->codecButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 141
    iget-object v0, p0, Lbl/afn;->codecButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 142
    iget-object v0, p0, Lbl/afn;->codecButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    :cond_128
    const v0, 0x7f08022b

    invoke-virtual {p0, v4, v0}, Lbl/afn;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lbl/afn;->decodeSettingsLayout:Landroid/view/ViewGroup;

    .line 146
    const v0, 0x7f08022c

    invoke-virtual {p0, v4, v0}, Lbl/afn;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lbl/afn;->codecSettingsLayout:Landroid/view/ViewGroup;

    .line 148
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->h(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_50c

    .line 163
    :cond_149
    :goto_149
    sget-object v0, Lbl/afn;->prefect_decoder:Ljava/lang/String;

    if-eqz v0, :cond_15e

    iget-object v0, p0, Lbl/afn;->codecButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_15e

    .line 164
    iget-object v0, p0, Lbl/afn;->codecButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    sget-object v3, Lbl/afn;->prefect_decoder:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :cond_15e
    const v0, 0x7f080224

    invoke-virtual {p0, v4, v0}, Lbl/afn;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 168
    const v0, 0x7f080225

    invoke-virtual {p0, v4, v0}, Lbl/afn;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 170
    const-string v0, "afn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ijkPlayerBtn="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", exoPlayerBtn="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v0, "afn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isExoPlayerSupported="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->isExoPlayerSupported()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", isExoPlayerAvailable="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 172
    invoke-static {}, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->isExoPlayerAvailable()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 171
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_1d7

    .line 175
    iget-object v0, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 176
    iget-object v0, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 177
    iget-object v0, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    :cond_1d7
    iget-object v0, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_202

    .line 180
    iget-object v0, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 181
    iget-object v0, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 182
    iget-object v0, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    invoke-static {}, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->isExoPlayerSupported()Z

    move-result v0

    if-eqz v0, :cond_1f6

    invoke-static {}, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->isExoPlayerAvailable()Z

    move-result v0

    if-nez v0, :cond_4be

    .line 185
    :cond_1f6
    const-string v0, "afn"

    const-string v3, "Hiding exoPlayerBtn - ExoPlayer not supported/available"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setVisibility(I)V

    .line 192
    :cond_202
    :goto_202
    invoke-direct {p0}, Lbl/afn;->updatePlayerSelection()V

    .line 194
    const v0, 0x7f080232

    invoke-virtual {p0, v4, v0}, Lbl/afn;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->liveIjkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 195
    const v0, 0x7f080233

    invoke-virtual {p0, v4, v0}, Lbl/afn;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->liveExoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 197
    iget-object v0, p0, Lbl/afn;->liveIjkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_22e

    .line 198
    iget-object v0, p0, Lbl/afn;->liveIjkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 199
    iget-object v0, p0, Lbl/afn;->liveIjkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 200
    iget-object v0, p0, Lbl/afn;->liveIjkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    :cond_22e
    iget-object v0, p0, Lbl/afn;->liveExoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_252

    .line 203
    iget-object v0, p0, Lbl/afn;->liveExoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 204
    iget-object v0, p0, Lbl/afn;->liveExoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 205
    iget-object v0, p0, Lbl/afn;->liveExoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    invoke-static {}, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->isExoPlayerSupported()Z

    move-result v0

    if-eqz v0, :cond_24d

    invoke-static {}, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->isExoPlayerAvailable()Z

    move-result v0

    if-nez v0, :cond_252

    .line 208
    :cond_24d
    iget-object v0, p0, Lbl/afn;->liveExoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setVisibility(I)V

    .line 212
    :cond_252
    invoke-direct {p0}, Lbl/afn;->updateLivePlayerSelection()V

    .line 215
    const v0, 0x7f0801f8

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 216
    const v0, 0x7f0801f9

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 217
    const v0, 0x7f0801fa

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 218
    const v0, 0x7f0801fb

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 219
    const v0, 0x7f0801fc

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 220
    const v0, 0x7f0801fd

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 221
    const v0, 0x7f0801fe

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 222
    const v0, 0x7f0801ff

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 223
    const v0, 0x7f080200

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 224
    const v0, 0x7f08026c

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 225
    const v0, 0x7f08020c

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 226
    const v0, 0x7f08022a

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->menuSubtitleSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 227
    const v0, 0x7f080235

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->menuAudioBalanceBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 228
    const v0, 0x7f080236

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->menuEbookBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 231
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4de

    sget v0, Lmybl/BiliFilter;->prefer_videoview:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4de

    move v3, v1

    .line 232
    :goto_2ff
    if-nez v3, :cond_30e

    .line 233
    iget-object v0, p0, Lbl/afn;->menuEbookBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lbl/afn;->menuAudioBalanceBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    const v5, 0x7f080235

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setNextFocusRightId(I)V

    .line 238
    :cond_30e
    iget-object v0, p0, Lbl/afn;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 239
    iget-object v0, p0, Lbl/afn;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 240
    iget-object v0, p0, Lbl/afn;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 241
    iget-object v0, p0, Lbl/afn;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 242
    iget-object v0, p0, Lbl/afn;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 243
    iget-object v0, p0, Lbl/afn;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 244
    iget-object v0, p0, Lbl/afn;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 245
    iget-object v0, p0, Lbl/afn;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 246
    iget-object v0, p0, Lbl/afn;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 247
    iget-object v0, p0, Lbl/afn;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 248
    iget-object v0, p0, Lbl/afn;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 249
    iget-object v0, p0, Lbl/afn;->menuSubtitleSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 250
    iget-object v0, p0, Lbl/afn;->menuAudioBalanceBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 251
    if-eqz v3, :cond_356

    .line 252
    iget-object v0, p0, Lbl/afn;->menuEbookBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 255
    :cond_356
    iget-object v0, p0, Lbl/afn;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 256
    iget-object v0, p0, Lbl/afn;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 257
    iget-object v0, p0, Lbl/afn;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 258
    iget-object v0, p0, Lbl/afn;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 259
    iget-object v0, p0, Lbl/afn;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 260
    iget-object v0, p0, Lbl/afn;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 261
    iget-object v0, p0, Lbl/afn;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 262
    iget-object v0, p0, Lbl/afn;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 263
    iget-object v0, p0, Lbl/afn;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 264
    iget-object v0, p0, Lbl/afn;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 265
    iget-object v0, p0, Lbl/afn;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 266
    iget-object v0, p0, Lbl/afn;->menuSubtitleSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 267
    iget-object v0, p0, Lbl/afn;->menuAudioBalanceBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 268
    if-eqz v3, :cond_39e

    .line 269
    iget-object v0, p0, Lbl/afn;->menuEbookBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 272
    :cond_39e
    iget-object v0, p0, Lbl/afn;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v0, p0, Lbl/afn;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v0, p0, Lbl/afn;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    iget-object v0, p0, Lbl/afn;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v0, p0, Lbl/afn;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v0, p0, Lbl/afn;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v0, p0, Lbl/afn;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-object v0, p0, Lbl/afn;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object v0, p0, Lbl/afn;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v0, p0, Lbl/afn;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object v0, p0, Lbl/afn;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v0, p0, Lbl/afn;->menuSubtitleSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    iget-object v0, p0, Lbl/afn;->menuAudioBalanceBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    if-eqz v3, :cond_3e6

    .line 286
    iget-object v0, p0, Lbl/afn;->menuEbookBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    :cond_3e6
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_player_menu_config(Landroid/content/Context;)I

    move-result v5

    .line 290
    iget-object v6, p0, Lbl/afn;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v5, 0x1

    if-eqz v0, :cond_4e1

    move v0, v1

    :goto_3f5
    invoke-direct {p0, v6, v0}, Lbl/afn;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 291
    iget-object v6, p0, Lbl/afn;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v5, 0x2

    if-eqz v0, :cond_4e4

    move v0, v1

    :goto_3ff
    invoke-direct {p0, v6, v0}, Lbl/afn;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 292
    iget-object v6, p0, Lbl/afn;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v5, 0x4

    if-eqz v0, :cond_4e7

    move v0, v1

    :goto_409
    invoke-direct {p0, v6, v0}, Lbl/afn;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 293
    iget-object v6, p0, Lbl/afn;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v5, 0x8

    if-eqz v0, :cond_4ea

    move v0, v1

    :goto_413
    invoke-direct {p0, v6, v0}, Lbl/afn;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 294
    iget-object v6, p0, Lbl/afn;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v5, 0x10

    if-eqz v0, :cond_4ed

    move v0, v1

    :goto_41d
    invoke-direct {p0, v6, v0}, Lbl/afn;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 295
    iget-object v6, p0, Lbl/afn;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v5, 0x20

    if-eqz v0, :cond_4f0

    move v0, v1

    :goto_427
    invoke-direct {p0, v6, v0}, Lbl/afn;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 296
    iget-object v6, p0, Lbl/afn;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v5, 0x40

    if-eqz v0, :cond_4f3

    move v0, v1

    :goto_431
    invoke-direct {p0, v6, v0}, Lbl/afn;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 297
    iget-object v6, p0, Lbl/afn;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit16 v0, v5, 0x80

    if-eqz v0, :cond_4f6

    move v0, v1

    :goto_43b
    invoke-direct {p0, v6, v0}, Lbl/afn;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 298
    iget-object v6, p0, Lbl/afn;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit16 v0, v5, 0x100

    if-eqz v0, :cond_4f9

    move v0, v1

    :goto_445
    invoke-direct {p0, v6, v0}, Lbl/afn;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 299
    iget-object v6, p0, Lbl/afn;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit16 v0, v5, 0x200

    if-eqz v0, :cond_4fc

    move v0, v1

    :goto_44f
    invoke-direct {p0, v6, v0}, Lbl/afn;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 300
    iget-object v6, p0, Lbl/afn;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit16 v0, v5, 0x400

    if-eqz v0, :cond_4ff

    move v0, v1

    :goto_459
    invoke-direct {p0, v6, v0}, Lbl/afn;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 301
    iget-object v6, p0, Lbl/afn;->menuSubtitleSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit16 v0, v5, 0x1000

    if-eqz v0, :cond_502

    move v0, v1

    :goto_463
    invoke-direct {p0, v6, v0}, Lbl/afn;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 302
    iget-object v6, p0, Lbl/afn;->menuAudioBalanceBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit16 v0, v5, 0x800

    if-eqz v0, :cond_505

    move v0, v1

    :goto_46d
    invoke-direct {p0, v6, v0}, Lbl/afn;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 303
    if-eqz v3, :cond_47b

    .line 304
    iget-object v0, p0, Lbl/afn;->menuEbookBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit16 v3, v5, 0x2000

    if-eqz v3, :cond_508

    :goto_478
    invoke-direct {p0, v0, v1}, Lbl/afn;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 308
    :cond_47b
    return-object v4

    .line 106
    :cond_47c
    const/16 v3, 0x20

    if-ne v0, v3, :cond_487

    .line 107
    iget-object v0, p0, Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_9c

    .line 108
    :cond_487
    const/16 v3, 0x50

    if-ne v0, v3, :cond_492

    .line 109
    iget-object v0, p0, Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_9c

    .line 110
    :cond_492
    const/16 v3, 0x78

    if-ne v0, v3, :cond_9c

    .line 111
    iget-object v0, p0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_9c

    .line 150
    :pswitch_49d
    iget-object v0, p0, Lbl/afn;->decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_149

    .line 151
    iget-object v0, p0, Lbl/afn;->decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_149

    .line 154
    :pswitch_4a8
    iget-object v0, p0, Lbl/afn;->decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_149

    .line 155
    iget-object v0, p0, Lbl/afn;->decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_149

    .line 158
    :pswitch_4b3
    iget-object v0, p0, Lbl/afn;->decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_149

    .line 159
    iget-object v0, p0, Lbl/afn;->decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_149

    .line 188
    :cond_4be
    const-string v0, "afn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exoPlayerBtn is visible, focusable="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v5}, Lcom/bilibili/tv/widget/DrawFrameLayout;->isFocusable()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_202

    :cond_4de
    move v3, v2

    .line 231
    goto/16 :goto_2ff

    :cond_4e1
    move v0, v2

    .line 290
    goto/16 :goto_3f5

    :cond_4e4
    move v0, v2

    .line 291
    goto/16 :goto_3ff

    :cond_4e7
    move v0, v2

    .line 292
    goto/16 :goto_409

    :cond_4ea
    move v0, v2

    .line 293
    goto/16 :goto_413

    :cond_4ed
    move v0, v2

    .line 294
    goto/16 :goto_41d

    :cond_4f0
    move v0, v2

    .line 295
    goto/16 :goto_427

    :cond_4f3
    move v0, v2

    .line 296
    goto/16 :goto_431

    :cond_4f6
    move v0, v2

    .line 297
    goto/16 :goto_43b

    :cond_4f9
    move v0, v2

    .line 298
    goto/16 :goto_445

    :cond_4fc
    move v0, v2

    .line 299
    goto/16 :goto_44f

    :cond_4ff
    move v0, v2

    .line 300
    goto/16 :goto_459

    :cond_502
    move v0, v2

    .line 301
    goto/16 :goto_463

    :cond_505
    move v0, v2

    .line 302
    goto/16 :goto_46d

    :cond_508
    move v1, v2

    .line 304
    goto/16 :goto_478

    .line 148
    nop

    :pswitch_data_50c
    .packed-switch 0x1
        :pswitch_49d
        :pswitch_4a8
        :pswitch_4b3
    .end packed-switch
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 672
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 673
    const-string v0, "afn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFocusChange: view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hasFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    instance-of v0, p1, Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_30

    .line 675
    check-cast p1, Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {p1, p2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpEnabled(Z)V

    .line 677
    :cond_30
    return-void
.end method
