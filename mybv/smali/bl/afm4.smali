.class public final Lbl/afm4;
.super Lbl/adw;
.source "afm4.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbl/afm4$a;
    }
.end annotation


# static fields
.field public static final Companion:Lbl/afm4$a;

.field public static tab_names:[Ljava/lang/String;


# instance fields
.field private column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

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

.field private otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private recommendApiAppButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private recommendApiWebButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private tabArea:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private tabBangumi:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private tabHotRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private tabLive:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private tabPgc:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    new-instance v0, Lbl/afm4$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbl/afm4$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lbl/afm4;->Companion:Lbl/afm4$a;

    .line 22
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u767b\u5f55"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u52a8\u6001"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u5f85\u770b"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u6536\u85cf"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u5386\u53f2"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u8ffd\u756a"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u8ffd\u5267"

    aput-object v2, v0, v1

    sput-object v0, Lbl/afm4;->tab_names:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 17
    invoke-direct {p0}, Lbl/adw;-><init>()V

    .line 23
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/bilibili/tv/widget/DrawFrameLayout;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v2, v0, v1

    iput-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    return-void
.end method

.method private updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V
    .locals 1

    .prologue
    .line 332
    if-eqz p2, :cond_9

    .line 333
    const v0, 0x7f0700f0

    invoke-virtual {p1, v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 337
    :goto_8
    return-void

    .line 335
    :cond_9
    const v0, 0x7f0700ef

    invoke-virtual {p1, v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto :goto_8
.end method

.method private updateTopTabButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V
    .locals 1

    .prologue
    .line 324
    if-eqz p2, :cond_9

    .line 325
    const v0, 0x7f0700f0

    invoke-virtual {p1, v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 329
    :goto_8
    return-void

    .line 327
    :cond_9
    const v0, 0x7f0700ef

    invoke-virtual {p1, v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto :goto_8
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 558
    iget-object v2, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v2, :cond_7

    .line 639
    :cond_6
    :goto_6
    return v0

    .line 561
    :cond_7
    iget-object v2, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 562
    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lbl/afm4;->recommendApiWebButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 563
    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lbl/afm4;->recommendApiAppButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 564
    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 565
    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v0

    .line 567
    :goto_60
    const/4 v3, 0x7

    if-ge v2, v3, :cond_1ae

    .line 568
    iget-object v3, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1aa

    iget-object v3, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_1aa

    move v2, v0

    .line 573
    :goto_74
    if-eqz v2, :cond_83

    iget-object v3, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_83

    iget-object v3, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_83

    move v2, v0

    .line 576
    :cond_83
    if-eqz v2, :cond_92

    iget-object v3, p0, Lbl/afm4;->tabHotRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_92

    iget-object v3, p0, Lbl/afm4;->tabHotRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_92

    move v2, v0

    .line 579
    :cond_92
    if-eqz v2, :cond_a1

    iget-object v3, p0, Lbl/afm4;->tabLive:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_a1

    iget-object v3, p0, Lbl/afm4;->tabLive:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_a1

    move v2, v0

    .line 582
    :cond_a1
    if-eqz v2, :cond_b0

    iget-object v3, p0, Lbl/afm4;->tabArea:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_b0

    iget-object v3, p0, Lbl/afm4;->tabArea:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_b0

    move v2, v0

    .line 585
    :cond_b0
    if-eqz v2, :cond_bf

    iget-object v3, p0, Lbl/afm4;->tabBangumi:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_bf

    iget-object v3, p0, Lbl/afm4;->tabBangumi:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_bf

    move v2, v0

    .line 588
    :cond_bf
    if-eqz v2, :cond_ce

    iget-object v3, p0, Lbl/afm4;->tabPgc:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_ce

    iget-object v3, p0, Lbl/afm4;->tabPgc:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_ce

    move v2, v0

    .line 591
    :cond_ce
    if-eqz v2, :cond_dd

    iget-object v3, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_dd

    iget-object v3, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_dd

    move v2, v0

    .line 594
    :cond_dd
    if-eqz v2, :cond_ec

    iget-object v3, p0, Lbl/afm4;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_ec

    iget-object v3, p0, Lbl/afm4;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_ec

    move v2, v0

    .line 597
    :cond_ec
    if-eqz v2, :cond_fb

    iget-object v3, p0, Lbl/afm4;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_fb

    iget-object v3, p0, Lbl/afm4;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_fb

    move v2, v0

    .line 600
    :cond_fb
    if-eqz v2, :cond_10a

    iget-object v3, p0, Lbl/afm4;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_10a

    iget-object v3, p0, Lbl/afm4;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_10a

    move v2, v0

    .line 603
    :cond_10a
    if-eqz v2, :cond_119

    iget-object v3, p0, Lbl/afm4;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_119

    iget-object v3, p0, Lbl/afm4;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_119

    move v2, v0

    .line 606
    :cond_119
    if-eqz v2, :cond_128

    iget-object v3, p0, Lbl/afm4;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_128

    iget-object v3, p0, Lbl/afm4;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_128

    move v2, v0

    .line 609
    :cond_128
    if-eqz v2, :cond_137

    iget-object v3, p0, Lbl/afm4;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_137

    iget-object v3, p0, Lbl/afm4;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_137

    move v2, v0

    .line 612
    :cond_137
    if-eqz v2, :cond_146

    iget-object v3, p0, Lbl/afm4;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_146

    iget-object v3, p0, Lbl/afm4;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_146

    move v2, v0

    .line 615
    :cond_146
    if-eqz v2, :cond_155

    iget-object v3, p0, Lbl/afm4;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_155

    iget-object v3, p0, Lbl/afm4;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_155

    move v2, v0

    .line 618
    :cond_155
    if-eqz v2, :cond_164

    iget-object v3, p0, Lbl/afm4;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_164

    iget-object v3, p0, Lbl/afm4;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_164

    move v2, v0

    .line 621
    :cond_164
    if-eqz v2, :cond_173

    iget-object v3, p0, Lbl/afm4;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_173

    iget-object v3, p0, Lbl/afm4;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_173

    move v2, v0

    .line 624
    :cond_173
    if-eqz v2, :cond_182

    iget-object v3, p0, Lbl/afm4;->menuSubtitleSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_182

    iget-object v3, p0, Lbl/afm4;->menuSubtitleSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_182

    move v2, v0

    .line 627
    :cond_182
    if-eqz v2, :cond_191

    iget-object v3, p0, Lbl/afm4;->menuAudioBalanceBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_191

    iget-object v3, p0, Lbl/afm4;->menuAudioBalanceBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_191

    move v2, v0

    .line 630
    :cond_191
    if-eqz v2, :cond_1a0

    iget-object v3, p0, Lbl/afm4;->menuEbookBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_1a0

    iget-object v3, p0, Lbl/afm4;->menuEbookBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_1a0

    move v2, v0

    .line 634
    :cond_1a0
    if-eqz v2, :cond_6

    .line 635
    iget-object v0, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->requestFocus()Z

    move v0, v1

    .line 636
    goto/16 :goto_6

    .line 567
    :cond_1aa
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_60

    :cond_1ae
    move v2, v1

    goto/16 :goto_74
.end method

.method public final b()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 524
    iget-object v1, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 554
    :cond_d
    :goto_d
    return v0

    .line 527
    :cond_e
    iget-object v1, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 539
    :cond_1a
    iget-object v1, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 542
    :cond_26
    iget-object v1, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 545
    :cond_32
    iget-object v1, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 548
    :cond_3e
    iget-object v1, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v1, v1, v0

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 551
    :cond_4e
    iget-object v1, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 554
    :cond_5a
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public d_()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 11

    .prologue
    const/4 v4, 0x2

    const v10, 0x7f0700f0

    const/4 v1, 0x1

    const v9, 0x7f0700ef

    const/4 v2, 0x0

    .line 341
    iget-object v0, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_3c

    .line 342
    sget-boolean v0, Lmybl/BiliFilter;->progressbar_on:Z

    if-eqz v0, :cond_8e

    move-object v0, p1

    .line 343
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    const-string v3, "\u5173"

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    invoke-virtual {p1, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 349
    :goto_22
    sget-boolean v0, Lmybl/BiliFilter;->progressbar_on:Z

    if-nez v0, :cond_a0

    move v0, v1

    :goto_27
    sput-boolean v0, Lmybl/BiliFilter;->progressbar_on:Z

    .line 350
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "progressbar_on"

    sget-boolean v5, Lmybl/BiliFilter;->progressbar_on:Z

    .line 351
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 350
    invoke-static {v0, v3, v5}, Lbl/abd;->set_personal_config(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 353
    :cond_3c
    iget-object v0, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_6f

    .line 354
    sget-boolean v0, Lmybl/BiliFilter;->fastquit_on:Z

    if-eqz v0, :cond_a2

    move-object v0, p1

    .line 355
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    const-string v3, "\u5173"

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    invoke-virtual {p1, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 361
    :goto_55
    sget-boolean v0, Lmybl/BiliFilter;->fastquit_on:Z

    if-nez v0, :cond_b4

    move v0, v1

    :goto_5a
    sput-boolean v0, Lmybl/BiliFilter;->fastquit_on:Z

    .line 362
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "fastquit_on"

    sget-boolean v5, Lmybl/BiliFilter;->fastquit_on:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v0, v3, v5}, Lbl/abd;->set_personal_config(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6f
    move v6, v2

    .line 364
    :goto_70
    const/4 v0, 0x7

    if-ge v6, v0, :cond_103

    .line 365
    iget-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v0, v0, v6

    if-ne v0, p1, :cond_fe

    .line 366
    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    aget v3, v0, v6

    .line 367
    add-int/lit8 v0, v6, -0x1

    :goto_7f
    if-ltz v0, :cond_b6

    .line 368
    sget-object v5, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    add-int/lit8 v7, v0, 0x1

    sget-object v8, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    aget v8, v8, v0

    aput v8, v5, v7

    .line 367
    add-int/lit8 v0, v0, -0x1

    goto :goto_7f

    :cond_8e
    move-object v0, p1

    .line 346
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    const-string v3, "\u5f00"

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    invoke-virtual {p1, v10}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_22

    :cond_a0
    move v0, v2

    .line 349
    goto :goto_27

    :cond_a2
    move-object v0, p1

    .line 358
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    const-string v3, "\u5f00"

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    invoke-virtual {p1, v10}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_55

    :cond_b4
    move v0, v2

    .line 361
    goto :goto_5a

    .line 369
    :cond_b6
    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    aput v3, v0, v2

    .line 370
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    const-string v3, "myarea_map"

    sget-object v5, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v3, v5}, Lbl/abd;->set_personal_config(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    move v5, v2

    .line 371
    :goto_ca
    const/4 v0, 0x7

    if-ge v5, v0, :cond_fe

    .line 372
    iget-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v0, v0, v5

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-ne v5, v6, :cond_fb

    const-string v3, "\u226a "

    :goto_e0
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v7, Lbl/afm4;->tab_names:[Ljava/lang/String;

    sget-object v8, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    aget v8, v8, v5

    aget-object v7, v7, v8

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 373
    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_ca

    .line 372
    :cond_fb
    const-string v3, ""

    goto :goto_e0

    .line 364
    :cond_fe
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_70

    .line 377
    :cond_103
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_1fd

    .line 378
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v4}, Lbl/abd;->set_home_column(Landroid/content/Context;I)V

    .line 379
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 380
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 381
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 394
    :cond_11d
    :goto_11d
    iget-object v0, p0, Lbl/afm4;->recommendApiWebButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_237

    .line 395
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lbl/abd;->set_recommend_api_type(Landroid/content/Context;I)V

    .line 396
    iget-object v0, p0, Lbl/afm4;->recommendApiWebButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 397
    iget-object v0, p0, Lbl/afm4;->recommendApiAppButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 404
    :cond_132
    :goto_132
    iget-object v0, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_24e

    .line 405
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lbl/abd;->set_other_column(Landroid/content/Context;I)V

    .line 406
    iget-object v0, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 407
    iget-object v0, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 414
    :cond_147
    :goto_147
    iget-object v0, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_15f

    iget-object v0, p0, Lbl/afm4;->tabHotRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_15f

    iget-object v0, p0, Lbl/afm4;->tabLive:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_15f

    iget-object v0, p0, Lbl/afm4;->tabArea:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_15f

    iget-object v0, p0, Lbl/afm4;->tabBangumi:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_15f

    iget-object v0, p0, Lbl/afm4;->tabPgc:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_188

    .line 417
    :cond_15f
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_top_tab_config(Landroid/content/Context;)I

    move-result v3

    .line 419
    iget-object v0, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_265

    move v0, v1

    .line 432
    :goto_16c
    and-int v5, v3, v0

    if-eqz v5, :cond_28b

    move v5, v1

    .line 434
    :goto_171
    if-eqz v5, :cond_28e

    .line 435
    xor-int/lit8 v6, v0, -0x1

    and-int/2addr v3, v6

    .line 436
    if-nez v3, :cond_320

    .line 442
    :goto_178
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v0}, Lbl/abd;->set_top_tab_config(Landroid/content/Context;I)V

    move-object v0, p1

    .line 443
    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v5, :cond_291

    move v3, v1

    :goto_185
    invoke-direct {p0, v0, v3}, Lbl/afm4;->updateTopTabButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 446
    :cond_188
    iget-object v0, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_294

    .line 447
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lbl/abd;->set_space_dynamic_mode(Landroid/content/Context;I)V

    .line 448
    iget-object v0, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 449
    iget-object v0, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 456
    :cond_19d
    :goto_19d
    iget-object v0, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1d5

    iget-object v0, p0, Lbl/afm4;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1d5

    iget-object v0, p0, Lbl/afm4;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1d5

    iget-object v0, p0, Lbl/afm4;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1d5

    iget-object v0, p0, Lbl/afm4;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1d5

    iget-object v0, p0, Lbl/afm4;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1d5

    iget-object v0, p0, Lbl/afm4;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1d5

    iget-object v0, p0, Lbl/afm4;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1d5

    iget-object v0, p0, Lbl/afm4;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1d5

    iget-object v0, p0, Lbl/afm4;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1d5

    iget-object v0, p0, Lbl/afm4;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1d5

    iget-object v0, p0, Lbl/afm4;->menuSubtitleSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1d5

    iget-object v0, p0, Lbl/afm4;->menuAudioBalanceBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1d5

    iget-object v0, p0, Lbl/afm4;->menuEbookBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_1fc

    .line 463
    :cond_1d5
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_player_menu_config(Landroid/content/Context;)I

    move-result v3

    .line 465
    iget-object v0, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2ab

    move v0, v1

    .line 494
    :goto_1e2
    and-int v4, v3, v0

    if-eqz v4, :cond_311

    move v4, v1

    .line 496
    :goto_1e7
    if-eqz v4, :cond_314

    .line 497
    xor-int/lit8 v5, v0, -0x1

    and-int/2addr v3, v5

    .line 498
    if-nez v3, :cond_31a

    .line 504
    :goto_1ee
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v0}, Lbl/abd;->set_player_menu_config(Landroid/content/Context;I)V

    .line 505
    check-cast p1, Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v4, :cond_317

    :goto_1f9
    invoke-direct {p0, p1, v1}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 507
    :cond_1fc
    return-void

    .line 382
    :cond_1fd
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_21a

    .line 383
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v3, 0x3

    invoke-static {v0, v3}, Lbl/abd;->set_home_column(Landroid/content/Context;I)V

    .line 384
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 385
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 386
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_11d

    .line 387
    :cond_21a
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_11d

    .line 388
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v3, 0x4

    invoke-static {v0, v3}, Lbl/abd;->set_home_column(Landroid/content/Context;I)V

    .line 389
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 390
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 391
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_11d

    .line 398
    :cond_237
    iget-object v0, p0, Lbl/afm4;->recommendApiAppButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_132

    .line 399
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lbl/abd;->set_recommend_api_type(Landroid/content/Context;I)V

    .line 400
    iget-object v0, p0, Lbl/afm4;->recommendApiWebButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 401
    iget-object v0, p0, Lbl/afm4;->recommendApiAppButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_132

    .line 408
    :cond_24e
    iget-object v0, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_147

    .line 409
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lbl/abd;->set_other_column(Landroid/content/Context;I)V

    .line 410
    iget-object v0, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 411
    iget-object v0, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_147

    .line 421
    :cond_265
    iget-object v0, p0, Lbl/afm4;->tabHotRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_26c

    move v0, v4

    .line 422
    goto/16 :goto_16c

    .line 423
    :cond_26c
    iget-object v0, p0, Lbl/afm4;->tabLive:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_273

    .line 424
    const/4 v0, 0x4

    goto/16 :goto_16c

    .line 425
    :cond_273
    iget-object v0, p0, Lbl/afm4;->tabArea:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_27b

    .line 426
    const/16 v0, 0x8

    goto/16 :goto_16c

    .line 427
    :cond_27b
    iget-object v0, p0, Lbl/afm4;->tabBangumi:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_283

    .line 428
    const/16 v0, 0x10

    goto/16 :goto_16c

    .line 429
    :cond_283
    iget-object v0, p0, Lbl/afm4;->tabPgc:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_323

    .line 430
    const/16 v0, 0x20

    goto/16 :goto_16c

    :cond_28b
    move v5, v2

    .line 432
    goto/16 :goto_171

    .line 440
    :cond_28e
    or-int/2addr v0, v3

    goto/16 :goto_178

    :cond_291
    move v3, v2

    .line 443
    goto/16 :goto_185

    .line 450
    :cond_294
    iget-object v0, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_19d

    .line 451
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lbl/abd;->set_space_dynamic_mode(Landroid/content/Context;I)V

    .line 452
    iget-object v0, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 453
    iget-object v0, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_19d

    .line 467
    :cond_2ab
    iget-object v0, p0, Lbl/afm4;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2b2

    move v0, v4

    .line 468
    goto/16 :goto_1e2

    .line 469
    :cond_2b2
    iget-object v0, p0, Lbl/afm4;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2b9

    .line 470
    const/4 v0, 0x4

    goto/16 :goto_1e2

    .line 471
    :cond_2b9
    iget-object v0, p0, Lbl/afm4;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2c1

    .line 472
    const/16 v0, 0x8

    goto/16 :goto_1e2

    .line 473
    :cond_2c1
    iget-object v0, p0, Lbl/afm4;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2c9

    .line 474
    const/16 v0, 0x10

    goto/16 :goto_1e2

    .line 475
    :cond_2c9
    iget-object v0, p0, Lbl/afm4;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2d1

    .line 476
    const/16 v0, 0x20

    goto/16 :goto_1e2

    .line 477
    :cond_2d1
    iget-object v0, p0, Lbl/afm4;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2d9

    .line 478
    const/16 v0, 0x40

    goto/16 :goto_1e2

    .line 479
    :cond_2d9
    iget-object v0, p0, Lbl/afm4;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2e1

    .line 480
    const/16 v0, 0x80

    goto/16 :goto_1e2

    .line 481
    :cond_2e1
    iget-object v0, p0, Lbl/afm4;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2e9

    .line 482
    const/16 v0, 0x100

    goto/16 :goto_1e2

    .line 483
    :cond_2e9
    iget-object v0, p0, Lbl/afm4;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2f1

    .line 484
    const/16 v0, 0x200

    goto/16 :goto_1e2

    .line 485
    :cond_2f1
    iget-object v0, p0, Lbl/afm4;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2f9

    .line 486
    const/16 v0, 0x400

    goto/16 :goto_1e2

    .line 487
    :cond_2f9
    iget-object v0, p0, Lbl/afm4;->menuSubtitleSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_301

    .line 488
    const/16 v0, 0x1000

    goto/16 :goto_1e2

    .line 489
    :cond_301
    iget-object v0, p0, Lbl/afm4;->menuAudioBalanceBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_309

    .line 490
    const/16 v0, 0x800

    goto/16 :goto_1e2

    .line 491
    :cond_309
    iget-object v0, p0, Lbl/afm4;->menuEbookBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_31d

    .line 492
    const/16 v0, 0x2000

    goto/16 :goto_1e2

    :cond_311
    move v4, v2

    .line 494
    goto/16 :goto_1e7

    .line 502
    :cond_314
    or-int/2addr v0, v3

    goto/16 :goto_1ee

    :cond_317
    move v1, v2

    .line 505
    goto/16 :goto_1f9

    :cond_31a
    move v0, v3

    goto/16 :goto_1ee

    :cond_31d
    move v0, v2

    goto/16 :goto_1e2

    :cond_320
    move v0, v3

    goto/16 :goto_178

    :cond_323
    move v0, v2

    goto/16 :goto_16c
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .prologue
    const v9, 0x7f0700f0

    const v8, 0x7f0700ef

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v7, 0x7f0700e8

    .line 70
    const-string v0, "inflater"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    const v0, 0x7f0a008a

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 72
    const v0, 0x7f08017a

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 73
    const v0, 0x7f08017b

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 74
    iget-object v3, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    const v0, 0x7f08017e

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    aput-object v0, v3, v2

    .line 75
    iget-object v3, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    const v0, 0x7f08017f

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    aput-object v0, v3, v1

    .line 76
    iget-object v3, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    const/4 v5, 0x2

    const v0, 0x7f080180

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    aput-object v0, v3, v5

    .line 77
    iget-object v3, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    const/4 v5, 0x3

    const v0, 0x7f080181

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    aput-object v0, v3, v5

    .line 78
    iget-object v3, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    const/4 v5, 0x4

    const v0, 0x7f080182

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    aput-object v0, v3, v5

    .line 79
    iget-object v3, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    const/4 v5, 0x5

    const v0, 0x7f080183

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    aput-object v0, v3, v5

    .line 80
    iget-object v3, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    const/4 v5, 0x6

    const v0, 0x7f08022d

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    aput-object v0, v3, v5

    .line 82
    iget-object v0, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 83
    iget-object v0, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 84
    iget-object v0, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 85
    iget-object v0, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 86
    sget-boolean v0, Lmybl/BiliFilter;->progressbar_on:Z

    if-eqz v0, :cond_b7

    .line 87
    iget-object v0, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    const-string v3, "\u5f00"

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 90
    :cond_b7
    sget-boolean v0, Lmybl/BiliFilter;->fastquit_on:Z

    if-eqz v0, :cond_cd

    .line 91
    iget-object v0, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    const-string v3, "\u5f00"

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 94
    :cond_cd
    iget-object v0, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v3, v2

    .line 96
    :goto_d8
    const/4 v0, 0x7

    if-ge v3, v0, :cond_109

    .line 97
    iget-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v0, v0, v3

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 98
    iget-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v0, v0, v3

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 99
    iget-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v0, v0, v3

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    sget-object v5, Lbl/afm4;->tab_names:[Ljava/lang/String;

    sget-object v6, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    aget v6, v6, v3

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_d8

    .line 103
    :cond_109
    const v0, 0x7f0801b9

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 104
    const v0, 0x7f0801ba

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 105
    const v0, 0x7f0801bb

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 106
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 107
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 108
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 109
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 110
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 111
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 112
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_home_column(Landroid/content/Context;)I

    move-result v0

    .line 117
    const/4 v3, 0x2

    if-ne v0, v3, :cond_558

    .line 118
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 119
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 120
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 131
    :goto_171
    const v0, 0x7f080230

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->recommendApiWebButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 132
    const v0, 0x7f080231

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->recommendApiAppButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 134
    iget-object v0, p0, Lbl/afm4;->recommendApiWebButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 135
    iget-object v0, p0, Lbl/afm4;->recommendApiAppButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 137
    iget-object v0, p0, Lbl/afm4;->recommendApiWebButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 138
    iget-object v0, p0, Lbl/afm4;->recommendApiAppButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 140
    iget-object v0, p0, Lbl/afm4;->recommendApiWebButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lbl/afm4;->recommendApiAppButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_recommend_api_type(Landroid/content/Context;)I

    move-result v0

    .line 144
    if-nez v0, :cond_57d

    .line 145
    iget-object v0, p0, Lbl/afm4;->recommendApiWebButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 146
    iget-object v0, p0, Lbl/afm4;->recommendApiAppButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 152
    :goto_1b9
    const v0, 0x7f0801d9

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 153
    const v0, 0x7f0801da

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 154
    iget-object v0, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 155
    iget-object v0, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 156
    iget-object v0, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 157
    iget-object v0, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 158
    iget-object v0, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_other_column(Landroid/content/Context;)I

    move-result v0

    .line 162
    if-nez v0, :cond_589

    .line 163
    iget-object v0, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 164
    iget-object v0, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 170
    :goto_201
    const v0, 0x7f0801bc

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 171
    const v0, 0x7f0801bd

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->tabHotRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 172
    const v0, 0x7f08021c

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->tabLive:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 173
    const v0, 0x7f0801be

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->tabArea:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 174
    const v0, 0x7f0801bf

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->tabBangumi:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 175
    const v0, 0x7f0801c0

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->tabPgc:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 177
    iget-object v0, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 178
    iget-object v0, p0, Lbl/afm4;->tabHotRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 179
    iget-object v0, p0, Lbl/afm4;->tabLive:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 180
    iget-object v0, p0, Lbl/afm4;->tabArea:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 181
    iget-object v0, p0, Lbl/afm4;->tabBangumi:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 182
    iget-object v0, p0, Lbl/afm4;->tabPgc:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 184
    iget-object v0, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 185
    iget-object v0, p0, Lbl/afm4;->tabHotRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 186
    iget-object v0, p0, Lbl/afm4;->tabLive:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 187
    iget-object v0, p0, Lbl/afm4;->tabArea:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 188
    iget-object v0, p0, Lbl/afm4;->tabBangumi:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 189
    iget-object v0, p0, Lbl/afm4;->tabPgc:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 191
    iget-object v0, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v0, p0, Lbl/afm4;->tabHotRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v0, p0, Lbl/afm4;->tabLive:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Lbl/afm4;->tabArea:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v0, p0, Lbl/afm4;->tabBangumi:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v0, p0, Lbl/afm4;->tabPgc:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_top_tab_config(Landroid/content/Context;)I

    move-result v3

    .line 199
    iget-object v5, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_595

    move v0, v1

    :goto_2ac
    invoke-direct {p0, v5, v0}, Lbl/afm4;->updateTopTabButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 200
    iget-object v5, p0, Lbl/afm4;->tabHotRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_598

    move v0, v1

    :goto_2b6
    invoke-direct {p0, v5, v0}, Lbl/afm4;->updateTopTabButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 201
    iget-object v5, p0, Lbl/afm4;->tabLive:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_59b

    move v0, v1

    :goto_2c0
    invoke-direct {p0, v5, v0}, Lbl/afm4;->updateTopTabButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 202
    iget-object v5, p0, Lbl/afm4;->tabArea:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v3, 0x8

    if-eqz v0, :cond_59e

    move v0, v1

    :goto_2ca
    invoke-direct {p0, v5, v0}, Lbl/afm4;->updateTopTabButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 203
    iget-object v5, p0, Lbl/afm4;->tabBangumi:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v3, 0x10

    if-eqz v0, :cond_5a1

    move v0, v1

    :goto_2d4
    invoke-direct {p0, v5, v0}, Lbl/afm4;->updateTopTabButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 204
    iget-object v5, p0, Lbl/afm4;->tabPgc:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v3, 0x20

    if-eqz v0, :cond_5a4

    move v0, v1

    :goto_2de
    invoke-direct {p0, v5, v0}, Lbl/afm4;->updateTopTabButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 206
    const v0, 0x7f0801eb

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 207
    const v0, 0x7f0801ec

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 208
    iget-object v0, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 209
    iget-object v0, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 210
    iget-object v0, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 211
    iget-object v0, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 212
    iget-object v0, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v0, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_325

    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v0

    if-eqz v0, :cond_325

    .line 217
    :cond_325
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_space_dynamic_mode(Landroid/content/Context;)I

    move-result v0

    .line 218
    if-nez v0, :cond_5a7

    .line 219
    iget-object v0, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 220
    iget-object v0, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 226
    :goto_339
    const v0, 0x7f0801f8

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 227
    const v0, 0x7f0801f9

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 228
    const v0, 0x7f0801fa

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 229
    const v0, 0x7f0801fb

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 230
    const v0, 0x7f0801fc

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 231
    const v0, 0x7f0801fd

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 232
    const v0, 0x7f0801fe

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 233
    const v0, 0x7f0801ff

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 234
    const v0, 0x7f080200

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 235
    const v0, 0x7f080201

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 236
    const v0, 0x7f08020c

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 237
    const v0, 0x7f08022a

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuSubtitleSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 238
    const v0, 0x7f080235

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuAudioBalanceBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 239
    const v0, 0x7f080236

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuEbookBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 243
    sget v0, Lmybl/BiliFilter;->prefer_videoview:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5b3

    move v3, v1

    .line 244
    :goto_3d9
    if-nez v3, :cond_3ea

    .line 246
    iget-object v0, p0, Lbl/afm4;->menuEbookBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lbl/afm4;->menuAudioBalanceBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    const v5, 0x7f080235

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setNextFocusRightId(I)V

    .line 251
    :cond_3ea
    iget-object v0, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 252
    iget-object v0, p0, Lbl/afm4;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 253
    iget-object v0, p0, Lbl/afm4;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 254
    iget-object v0, p0, Lbl/afm4;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 255
    iget-object v0, p0, Lbl/afm4;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 256
    iget-object v0, p0, Lbl/afm4;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 257
    iget-object v0, p0, Lbl/afm4;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 258
    iget-object v0, p0, Lbl/afm4;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 259
    iget-object v0, p0, Lbl/afm4;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 260
    iget-object v0, p0, Lbl/afm4;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 261
    iget-object v0, p0, Lbl/afm4;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 262
    iget-object v0, p0, Lbl/afm4;->menuSubtitleSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 263
    iget-object v0, p0, Lbl/afm4;->menuAudioBalanceBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 264
    if-eqz v3, :cond_432

    .line 265
    iget-object v0, p0, Lbl/afm4;->menuEbookBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 268
    :cond_432
    iget-object v0, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 269
    iget-object v0, p0, Lbl/afm4;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 270
    iget-object v0, p0, Lbl/afm4;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 271
    iget-object v0, p0, Lbl/afm4;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 272
    iget-object v0, p0, Lbl/afm4;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 273
    iget-object v0, p0, Lbl/afm4;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 274
    iget-object v0, p0, Lbl/afm4;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 275
    iget-object v0, p0, Lbl/afm4;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 276
    iget-object v0, p0, Lbl/afm4;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 277
    iget-object v0, p0, Lbl/afm4;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 278
    iget-object v0, p0, Lbl/afm4;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 279
    iget-object v0, p0, Lbl/afm4;->menuSubtitleSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 280
    iget-object v0, p0, Lbl/afm4;->menuAudioBalanceBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 281
    if-eqz v3, :cond_47a

    .line 282
    iget-object v0, p0, Lbl/afm4;->menuEbookBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 285
    :cond_47a
    iget-object v0, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v0, p0, Lbl/afm4;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v0, p0, Lbl/afm4;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v0, p0, Lbl/afm4;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v0, p0, Lbl/afm4;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v0, p0, Lbl/afm4;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    iget-object v0, p0, Lbl/afm4;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    iget-object v0, p0, Lbl/afm4;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v0, p0, Lbl/afm4;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object v0, p0, Lbl/afm4;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    iget-object v0, p0, Lbl/afm4;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object v0, p0, Lbl/afm4;->menuSubtitleSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    iget-object v0, p0, Lbl/afm4;->menuAudioBalanceBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    if-eqz v3, :cond_4c2

    .line 299
    iget-object v0, p0, Lbl/afm4;->menuEbookBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    :cond_4c2
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_player_menu_config(Landroid/content/Context;)I

    move-result v5

    .line 303
    iget-object v6, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v5, 0x1

    if-eqz v0, :cond_5b6

    move v0, v1

    :goto_4d1
    invoke-direct {p0, v6, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 304
    iget-object v6, p0, Lbl/afm4;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v5, 0x2

    if-eqz v0, :cond_5b9

    move v0, v1

    :goto_4db
    invoke-direct {p0, v6, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 305
    iget-object v6, p0, Lbl/afm4;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v5, 0x4

    if-eqz v0, :cond_5bc

    move v0, v1

    :goto_4e5
    invoke-direct {p0, v6, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 306
    iget-object v6, p0, Lbl/afm4;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v5, 0x8

    if-eqz v0, :cond_5bf

    move v0, v1

    :goto_4ef
    invoke-direct {p0, v6, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 307
    iget-object v6, p0, Lbl/afm4;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v5, 0x10

    if-eqz v0, :cond_5c2

    move v0, v1

    :goto_4f9
    invoke-direct {p0, v6, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 308
    iget-object v6, p0, Lbl/afm4;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v5, 0x20

    if-eqz v0, :cond_5c5

    move v0, v1

    :goto_503
    invoke-direct {p0, v6, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 309
    iget-object v6, p0, Lbl/afm4;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v5, 0x40

    if-eqz v0, :cond_5c8

    move v0, v1

    :goto_50d
    invoke-direct {p0, v6, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 310
    iget-object v6, p0, Lbl/afm4;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit16 v0, v5, 0x80

    if-eqz v0, :cond_5cb

    move v0, v1

    :goto_517
    invoke-direct {p0, v6, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 311
    iget-object v6, p0, Lbl/afm4;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit16 v0, v5, 0x100

    if-eqz v0, :cond_5ce

    move v0, v1

    :goto_521
    invoke-direct {p0, v6, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 312
    iget-object v6, p0, Lbl/afm4;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit16 v0, v5, 0x200

    if-eqz v0, :cond_5d1

    move v0, v1

    :goto_52b
    invoke-direct {p0, v6, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 313
    iget-object v6, p0, Lbl/afm4;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit16 v0, v5, 0x400

    if-eqz v0, :cond_5d4

    move v0, v1

    :goto_535
    invoke-direct {p0, v6, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 314
    iget-object v6, p0, Lbl/afm4;->menuSubtitleSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit16 v0, v5, 0x1000

    if-eqz v0, :cond_5d7

    move v0, v1

    :goto_53f
    invoke-direct {p0, v6, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 315
    iget-object v6, p0, Lbl/afm4;->menuAudioBalanceBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit16 v0, v5, 0x800

    if-eqz v0, :cond_5da

    move v0, v1

    :goto_549
    invoke-direct {p0, v6, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 316
    if-eqz v3, :cond_557

    .line 317
    iget-object v0, p0, Lbl/afm4;->menuEbookBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit16 v3, v5, 0x2000

    if-eqz v3, :cond_5dd

    :goto_554
    invoke-direct {p0, v0, v1}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 320
    :cond_557
    return-object v4

    .line 121
    :cond_558
    const/4 v3, 0x3

    if-ne v0, v3, :cond_56c

    .line 122
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 123
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 124
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_171

    .line 126
    :cond_56c
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 127
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 128
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_171

    .line 148
    :cond_57d
    iget-object v0, p0, Lbl/afm4;->recommendApiWebButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 149
    iget-object v0, p0, Lbl/afm4;->recommendApiAppButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_1b9

    .line 166
    :cond_589
    iget-object v0, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 167
    iget-object v0, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_201

    :cond_595
    move v0, v2

    .line 199
    goto/16 :goto_2ac

    :cond_598
    move v0, v2

    .line 200
    goto/16 :goto_2b6

    :cond_59b
    move v0, v2

    .line 201
    goto/16 :goto_2c0

    :cond_59e
    move v0, v2

    .line 202
    goto/16 :goto_2ca

    :cond_5a1
    move v0, v2

    .line 203
    goto/16 :goto_2d4

    :cond_5a4
    move v0, v2

    .line 204
    goto/16 :goto_2de

    .line 222
    :cond_5a7
    iget-object v0, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 223
    iget-object v0, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_339

    :cond_5b3
    move v3, v2

    .line 243
    goto/16 :goto_3d9

    :cond_5b6
    move v0, v2

    .line 303
    goto/16 :goto_4d1

    :cond_5b9
    move v0, v2

    .line 304
    goto/16 :goto_4db

    :cond_5bc
    move v0, v2

    .line 305
    goto/16 :goto_4e5

    :cond_5bf
    move v0, v2

    .line 306
    goto/16 :goto_4ef

    :cond_5c2
    move v0, v2

    .line 307
    goto/16 :goto_4f9

    :cond_5c5
    move v0, v2

    .line 308
    goto/16 :goto_503

    :cond_5c8
    move v0, v2

    .line 309
    goto/16 :goto_50d

    :cond_5cb
    move v0, v2

    .line 310
    goto/16 :goto_517

    :cond_5ce
    move v0, v2

    .line 311
    goto/16 :goto_521

    :cond_5d1
    move v0, v2

    .line 312
    goto/16 :goto_52b

    :cond_5d4
    move v0, v2

    .line 313
    goto/16 :goto_535

    :cond_5d7
    move v0, v2

    .line 314
    goto/16 :goto_53f

    :cond_5da
    move v0, v2

    .line 315
    goto/16 :goto_549

    :cond_5dd
    move v1, v2

    .line 317
    goto/16 :goto_554
.end method

.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 511
    if-eqz p2, :cond_4c

    move-object v0, p1

    .line 512
    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpEnabled(Z)V

    :goto_a
    move v2, v3

    .line 516
    :goto_b
    const/4 v0, 0x7

    if-ge v2, v0, :cond_56

    .line 517
    iget-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v0, v0, v2

    if-ne v0, p1, :cond_48

    iget-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 518
    iget-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_53

    const-string v1, "\u226a "

    :goto_31
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lbl/afm4;->tab_names:[Ljava/lang/String;

    sget-object v5, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    aget v5, v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 519
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    :cond_48
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_b

    :cond_4c
    move-object v0, p1

    .line 514
    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpEnabled(Z)V

    goto :goto_a

    .line 518
    :cond_53
    const-string v1, ""

    goto :goto_31

    .line 521
    :cond_56
    return-void
.end method
