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
    const/16 v0, 0x8

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

    const/4 v1, 0x7

    const-string v2, "\u4e0b\u8f7d"

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
    const/16 v0, 0x8

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

    const/4 v1, 0x7

    aput-object v2, v0, v1

    iput-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    return-void
.end method

.method private updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V
    .locals 1

    .prologue
    .line 333
    if-eqz p2, :cond_9

    .line 334
    const v0, 0x7f0700f0

    invoke-virtual {p1, v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 338
    :goto_8
    return-void

    .line 336
    :cond_9
    const v0, 0x7f0700ef

    invoke-virtual {p1, v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto :goto_8
.end method

.method private updateTopTabButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V
    .locals 1

    .prologue
    .line 325
    if-eqz p2, :cond_9

    .line 326
    const v0, 0x7f0700f0

    invoke-virtual {p1, v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 330
    :goto_8
    return-void

    .line 328
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

    .line 559
    iget-object v2, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v2, :cond_7

    .line 640
    :cond_6
    :goto_6
    return v0

    .line 562
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

    .line 563
    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lbl/afm4;->recommendApiWebButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 564
    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lbl/afm4;->recommendApiAppButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 565
    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 566
    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v0

    .line 568
    :goto_60
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1af

    .line 569
    iget-object v3, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1ab

    iget-object v3, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_1ab

    move v2, v0

    .line 574
    :goto_75
    if-eqz v2, :cond_84

    iget-object v3, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_84

    iget-object v3, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_84

    move v2, v0

    .line 577
    :cond_84
    if-eqz v2, :cond_93

    iget-object v3, p0, Lbl/afm4;->tabHotRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_93

    iget-object v3, p0, Lbl/afm4;->tabHotRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_93

    move v2, v0

    .line 580
    :cond_93
    if-eqz v2, :cond_a2

    iget-object v3, p0, Lbl/afm4;->tabLive:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_a2

    iget-object v3, p0, Lbl/afm4;->tabLive:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_a2

    move v2, v0

    .line 583
    :cond_a2
    if-eqz v2, :cond_b1

    iget-object v3, p0, Lbl/afm4;->tabArea:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_b1

    iget-object v3, p0, Lbl/afm4;->tabArea:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_b1

    move v2, v0

    .line 586
    :cond_b1
    if-eqz v2, :cond_c0

    iget-object v3, p0, Lbl/afm4;->tabBangumi:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_c0

    iget-object v3, p0, Lbl/afm4;->tabBangumi:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_c0

    move v2, v0

    .line 589
    :cond_c0
    if-eqz v2, :cond_cf

    iget-object v3, p0, Lbl/afm4;->tabPgc:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_cf

    iget-object v3, p0, Lbl/afm4;->tabPgc:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_cf

    move v2, v0

    .line 592
    :cond_cf
    if-eqz v2, :cond_de

    iget-object v3, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_de

    iget-object v3, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_de

    move v2, v0

    .line 595
    :cond_de
    if-eqz v2, :cond_ed

    iget-object v3, p0, Lbl/afm4;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_ed

    iget-object v3, p0, Lbl/afm4;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_ed

    move v2, v0

    .line 598
    :cond_ed
    if-eqz v2, :cond_fc

    iget-object v3, p0, Lbl/afm4;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_fc

    iget-object v3, p0, Lbl/afm4;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_fc

    move v2, v0

    .line 601
    :cond_fc
    if-eqz v2, :cond_10b

    iget-object v3, p0, Lbl/afm4;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_10b

    iget-object v3, p0, Lbl/afm4;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_10b

    move v2, v0

    .line 604
    :cond_10b
    if-eqz v2, :cond_11a

    iget-object v3, p0, Lbl/afm4;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_11a

    iget-object v3, p0, Lbl/afm4;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_11a

    move v2, v0

    .line 607
    :cond_11a
    if-eqz v2, :cond_129

    iget-object v3, p0, Lbl/afm4;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_129

    iget-object v3, p0, Lbl/afm4;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_129

    move v2, v0

    .line 610
    :cond_129
    if-eqz v2, :cond_138

    iget-object v3, p0, Lbl/afm4;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_138

    iget-object v3, p0, Lbl/afm4;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_138

    move v2, v0

    .line 613
    :cond_138
    if-eqz v2, :cond_147

    iget-object v3, p0, Lbl/afm4;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_147

    iget-object v3, p0, Lbl/afm4;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_147

    move v2, v0

    .line 616
    :cond_147
    if-eqz v2, :cond_156

    iget-object v3, p0, Lbl/afm4;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_156

    iget-object v3, p0, Lbl/afm4;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_156

    move v2, v0

    .line 619
    :cond_156
    if-eqz v2, :cond_165

    iget-object v3, p0, Lbl/afm4;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_165

    iget-object v3, p0, Lbl/afm4;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_165

    move v2, v0

    .line 622
    :cond_165
    if-eqz v2, :cond_174

    iget-object v3, p0, Lbl/afm4;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_174

    iget-object v3, p0, Lbl/afm4;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_174

    move v2, v0

    .line 625
    :cond_174
    if-eqz v2, :cond_183

    iget-object v3, p0, Lbl/afm4;->menuSubtitleSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_183

    iget-object v3, p0, Lbl/afm4;->menuSubtitleSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_183

    move v2, v0

    .line 628
    :cond_183
    if-eqz v2, :cond_192

    iget-object v3, p0, Lbl/afm4;->menuAudioBalanceBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_192

    iget-object v3, p0, Lbl/afm4;->menuAudioBalanceBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_192

    move v2, v0

    .line 631
    :cond_192
    if-eqz v2, :cond_1a1

    iget-object v3, p0, Lbl/afm4;->menuEbookBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_1a1

    iget-object v3, p0, Lbl/afm4;->menuEbookBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_1a1

    move v2, v0

    .line 635
    :cond_1a1
    if-eqz v2, :cond_6

    .line 636
    iget-object v0, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->requestFocus()Z

    move v0, v1

    .line 637
    goto/16 :goto_6

    .line 568
    :cond_1ab
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_60

    :cond_1af
    move v2, v1

    goto/16 :goto_75
.end method

.method public final b()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 525
    iget-object v1, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 555
    :cond_d
    :goto_d
    return v0

    .line 528
    :cond_e
    iget-object v1, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 540
    :cond_1a
    iget-object v1, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 543
    :cond_26
    iget-object v1, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 546
    :cond_32
    iget-object v1, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 549
    :cond_3e
    iget-object v1, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v1, v1, v0

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 552
    :cond_4e
    iget-object v1, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 555
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
    const/16 v4, 0x8

    const v10, 0x7f0700f0

    const/4 v1, 0x1

    const v9, 0x7f0700ef

    const/4 v2, 0x0

    .line 342
    iget-object v0, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_3d

    .line 343
    sget-boolean v0, Lmybl/BiliFilter;->progressbar_on:Z

    if-eqz v0, :cond_8e

    move-object v0, p1

    .line 344
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    const-string v3, "\u5173"

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    invoke-virtual {p1, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 350
    :goto_23
    sget-boolean v0, Lmybl/BiliFilter;->progressbar_on:Z

    if-nez v0, :cond_a0

    move v0, v1

    :goto_28
    sput-boolean v0, Lmybl/BiliFilter;->progressbar_on:Z

    .line 351
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "progressbar_on"

    sget-boolean v5, Lmybl/BiliFilter;->progressbar_on:Z

    .line 352
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 351
    invoke-static {v0, v3, v5}, Lbl/abd;->set_personal_config(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 354
    :cond_3d
    iget-object v0, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_70

    .line 355
    sget-boolean v0, Lmybl/BiliFilter;->fastquit_on:Z

    if-eqz v0, :cond_a2

    move-object v0, p1

    .line 356
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    const-string v3, "\u5173"

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    invoke-virtual {p1, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 362
    :goto_56
    sget-boolean v0, Lmybl/BiliFilter;->fastquit_on:Z

    if-nez v0, :cond_b4

    move v0, v1

    :goto_5b
    sput-boolean v0, Lmybl/BiliFilter;->fastquit_on:Z

    .line 363
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "fastquit_on"

    sget-boolean v5, Lmybl/BiliFilter;->fastquit_on:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v0, v3, v5}, Lbl/abd;->set_personal_config(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_70
    move v6, v2

    .line 365
    :goto_71
    if-ge v6, v4, :cond_102

    .line 366
    iget-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v0, v0, v6

    if-ne v0, p1, :cond_fd

    .line 367
    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    aget v3, v0, v6

    .line 368
    add-int/lit8 v0, v6, -0x1

    :goto_7f
    if-ltz v0, :cond_b6

    .line 369
    sget-object v5, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    add-int/lit8 v7, v0, 0x1

    sget-object v8, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    aget v8, v8, v0

    aput v8, v5, v7

    .line 368
    add-int/lit8 v0, v0, -0x1

    goto :goto_7f

    :cond_8e
    move-object v0, p1

    .line 347
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    const-string v3, "\u5f00"

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    invoke-virtual {p1, v10}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_23

    :cond_a0
    move v0, v2

    .line 350
    goto :goto_28

    :cond_a2
    move-object v0, p1

    .line 359
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    const-string v3, "\u5f00"

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    invoke-virtual {p1, v10}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_56

    :cond_b4
    move v0, v2

    .line 362
    goto :goto_5b

    .line 370
    :cond_b6
    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    aput v3, v0, v2

    .line 371
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    const-string v3, "myarea_map"

    sget-object v5, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v3, v5}, Lbl/abd;->set_personal_config(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    move v5, v2

    .line 372
    :goto_ca
    if-ge v5, v4, :cond_fd

    .line 373
    iget-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v0, v0, v5

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-ne v5, v6, :cond_fa

    const-string v3, "\u226a "

    :goto_df
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

    .line 374
    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_ca

    .line 373
    :cond_fa
    const-string v3, ""

    goto :goto_df

    .line 365
    :cond_fd
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_71

    .line 378
    :cond_102
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_1fd

    .line 379
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lbl/abd;->set_home_column(Landroid/content/Context;I)V

    .line 380
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 381
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 382
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 395
    :cond_11d
    :goto_11d
    iget-object v0, p0, Lbl/afm4;->recommendApiWebButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_237

    .line 396
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lbl/abd;->set_recommend_api_type(Landroid/content/Context;I)V

    .line 397
    iget-object v0, p0, Lbl/afm4;->recommendApiWebButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 398
    iget-object v0, p0, Lbl/afm4;->recommendApiAppButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 405
    :cond_132
    :goto_132
    iget-object v0, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_24e

    .line 406
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lbl/abd;->set_other_column(Landroid/content/Context;I)V

    .line 407
    iget-object v0, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 408
    iget-object v0, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 415
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

    .line 418
    :cond_15f
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_top_tab_config(Landroid/content/Context;)I

    move-result v3

    .line 420
    iget-object v0, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_265

    move v0, v1

    .line 433
    :goto_16c
    and-int v5, v3, v0

    if-eqz v5, :cond_28a

    move v5, v1

    .line 435
    :goto_171
    if-eqz v5, :cond_28d

    .line 436
    xor-int/lit8 v6, v0, -0x1

    and-int/2addr v3, v6

    .line 437
    if-nez v3, :cond_31e

    .line 443
    :goto_178
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v0}, Lbl/abd;->set_top_tab_config(Landroid/content/Context;I)V

    move-object v0, p1

    .line 444
    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v5, :cond_290

    move v3, v1

    :goto_185
    invoke-direct {p0, v0, v3}, Lbl/afm4;->updateTopTabButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 447
    :cond_188
    iget-object v0, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_293

    .line 448
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lbl/abd;->set_space_dynamic_mode(Landroid/content/Context;I)V

    .line 449
    iget-object v0, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 450
    iget-object v0, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 457
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

    .line 464
    :cond_1d5
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_player_menu_config(Landroid/content/Context;)I

    move-result v3

    .line 466
    iget-object v0, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2aa

    move v0, v1

    .line 495
    :goto_1e2
    and-int v4, v3, v0

    if-eqz v4, :cond_30f

    move v4, v1

    .line 497
    :goto_1e7
    if-eqz v4, :cond_312

    .line 498
    xor-int/lit8 v5, v0, -0x1

    and-int/2addr v3, v5

    .line 499
    if-nez v3, :cond_318

    .line 505
    :goto_1ee
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v0}, Lbl/abd;->set_player_menu_config(Landroid/content/Context;I)V

    .line 506
    check-cast p1, Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v4, :cond_315

    :goto_1f9
    invoke-direct {p0, p1, v1}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 508
    :cond_1fc
    return-void

    .line 383
    :cond_1fd
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_21a

    .line 384
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v3, 0x3

    invoke-static {v0, v3}, Lbl/abd;->set_home_column(Landroid/content/Context;I)V

    .line 385
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 386
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 387
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_11d

    .line 388
    :cond_21a
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_11d

    .line 389
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v3, 0x4

    invoke-static {v0, v3}, Lbl/abd;->set_home_column(Landroid/content/Context;I)V

    .line 390
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 391
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 392
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_11d

    .line 399
    :cond_237
    iget-object v0, p0, Lbl/afm4;->recommendApiAppButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_132

    .line 400
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lbl/abd;->set_recommend_api_type(Landroid/content/Context;I)V

    .line 401
    iget-object v0, p0, Lbl/afm4;->recommendApiWebButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 402
    iget-object v0, p0, Lbl/afm4;->recommendApiAppButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_132

    .line 409
    :cond_24e
    iget-object v0, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_147

    .line 410
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lbl/abd;->set_other_column(Landroid/content/Context;I)V

    .line 411
    iget-object v0, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 412
    iget-object v0, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_147

    .line 422
    :cond_265
    iget-object v0, p0, Lbl/afm4;->tabHotRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_26c

    .line 423
    const/4 v0, 0x2

    goto/16 :goto_16c

    .line 424
    :cond_26c
    iget-object v0, p0, Lbl/afm4;->tabLive:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_273

    .line 425
    const/4 v0, 0x4

    goto/16 :goto_16c

    .line 426
    :cond_273
    iget-object v0, p0, Lbl/afm4;->tabArea:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_27a

    move v0, v4

    .line 427
    goto/16 :goto_16c

    .line 428
    :cond_27a
    iget-object v0, p0, Lbl/afm4;->tabBangumi:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_282

    .line 429
    const/16 v0, 0x10

    goto/16 :goto_16c

    .line 430
    :cond_282
    iget-object v0, p0, Lbl/afm4;->tabPgc:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_321

    .line 431
    const/16 v0, 0x20

    goto/16 :goto_16c

    :cond_28a
    move v5, v2

    .line 433
    goto/16 :goto_171

    .line 441
    :cond_28d
    or-int/2addr v0, v3

    goto/16 :goto_178

    :cond_290
    move v3, v2

    .line 444
    goto/16 :goto_185

    .line 451
    :cond_293
    iget-object v0, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_19d

    .line 452
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lbl/abd;->set_space_dynamic_mode(Landroid/content/Context;I)V

    .line 453
    iget-object v0, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 454
    iget-object v0, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_19d

    .line 468
    :cond_2aa
    iget-object v0, p0, Lbl/afm4;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2b1

    .line 469
    const/4 v0, 0x2

    goto/16 :goto_1e2

    .line 470
    :cond_2b1
    iget-object v0, p0, Lbl/afm4;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2b8

    .line 471
    const/4 v0, 0x4

    goto/16 :goto_1e2

    .line 472
    :cond_2b8
    iget-object v0, p0, Lbl/afm4;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2bf

    move v0, v4

    .line 473
    goto/16 :goto_1e2

    .line 474
    :cond_2bf
    iget-object v0, p0, Lbl/afm4;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2c7

    .line 475
    const/16 v0, 0x10

    goto/16 :goto_1e2

    .line 476
    :cond_2c7
    iget-object v0, p0, Lbl/afm4;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2cf

    .line 477
    const/16 v0, 0x20

    goto/16 :goto_1e2

    .line 478
    :cond_2cf
    iget-object v0, p0, Lbl/afm4;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2d7

    .line 479
    const/16 v0, 0x40

    goto/16 :goto_1e2

    .line 480
    :cond_2d7
    iget-object v0, p0, Lbl/afm4;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2df

    .line 481
    const/16 v0, 0x80

    goto/16 :goto_1e2

    .line 482
    :cond_2df
    iget-object v0, p0, Lbl/afm4;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2e7

    .line 483
    const/16 v0, 0x100

    goto/16 :goto_1e2

    .line 484
    :cond_2e7
    iget-object v0, p0, Lbl/afm4;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2ef

    .line 485
    const/16 v0, 0x200

    goto/16 :goto_1e2

    .line 486
    :cond_2ef
    iget-object v0, p0, Lbl/afm4;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2f7

    .line 487
    const/16 v0, 0x400

    goto/16 :goto_1e2

    .line 488
    :cond_2f7
    iget-object v0, p0, Lbl/afm4;->menuSubtitleSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2ff

    .line 489
    const/16 v0, 0x1000

    goto/16 :goto_1e2

    .line 490
    :cond_2ff
    iget-object v0, p0, Lbl/afm4;->menuAudioBalanceBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_307

    .line 491
    const/16 v0, 0x800

    goto/16 :goto_1e2

    .line 492
    :cond_307
    iget-object v0, p0, Lbl/afm4;->menuEbookBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_31b

    .line 493
    const/16 v0, 0x2000

    goto/16 :goto_1e2

    :cond_30f
    move v4, v2

    .line 495
    goto/16 :goto_1e7

    .line 503
    :cond_312
    or-int/2addr v0, v3

    goto/16 :goto_1ee

    :cond_315
    move v1, v2

    .line 506
    goto/16 :goto_1f9

    :cond_318
    move v0, v3

    goto/16 :goto_1ee

    :cond_31b
    move v0, v2

    goto/16 :goto_1e2

    :cond_31e
    move v0, v3

    goto/16 :goto_178

    :cond_321
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

    .line 81
    iget-object v3, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    const/4 v5, 0x7

    const v0, 0x7f080261

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    aput-object v0, v3, v5

    .line 83
    iget-object v0, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 84
    iget-object v0, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 85
    iget-object v0, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 86
    iget-object v0, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 87
    sget-boolean v0, Lmybl/BiliFilter;->progressbar_on:Z

    if-eqz v0, :cond_c5

    .line 88
    iget-object v0, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    const-string v3, "\u5f00"

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 91
    :cond_c5
    sget-boolean v0, Lmybl/BiliFilter;->fastquit_on:Z

    if-eqz v0, :cond_db

    .line 92
    iget-object v0, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    const-string v3, "\u5f00"

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 95
    :cond_db
    iget-object v0, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v3, v2

    .line 97
    :goto_e6
    const/16 v0, 0x8

    if-ge v3, v0, :cond_118

    .line 98
    iget-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v0, v0, v3

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 99
    iget-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v0, v0, v3

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 100
    iget-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v0, v0, v3

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
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

    .line 97
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_e6

    .line 104
    :cond_118
    const v0, 0x7f0801b9

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 105
    const v0, 0x7f0801ba

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 106
    const v0, 0x7f0801bb

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 107
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 108
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 109
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 110
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 111
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 112
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 113
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_home_column(Landroid/content/Context;)I

    move-result v0

    .line 118
    const/4 v3, 0x2

    if-ne v0, v3, :cond_567

    .line 119
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 120
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 121
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 132
    :goto_180
    const v0, 0x7f080230

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->recommendApiWebButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 133
    const v0, 0x7f080231

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->recommendApiAppButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 135
    iget-object v0, p0, Lbl/afm4;->recommendApiWebButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 136
    iget-object v0, p0, Lbl/afm4;->recommendApiAppButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 138
    iget-object v0, p0, Lbl/afm4;->recommendApiWebButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 139
    iget-object v0, p0, Lbl/afm4;->recommendApiAppButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 141
    iget-object v0, p0, Lbl/afm4;->recommendApiWebButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lbl/afm4;->recommendApiAppButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_recommend_api_type(Landroid/content/Context;)I

    move-result v0

    .line 145
    if-nez v0, :cond_58c

    .line 146
    iget-object v0, p0, Lbl/afm4;->recommendApiWebButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 147
    iget-object v0, p0, Lbl/afm4;->recommendApiAppButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 153
    :goto_1c8
    const v0, 0x7f0801d9

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 154
    const v0, 0x7f0801da

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 155
    iget-object v0, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 156
    iget-object v0, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 157
    iget-object v0, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 158
    iget-object v0, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 159
    iget-object v0, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_other_column(Landroid/content/Context;)I

    move-result v0

    .line 163
    if-nez v0, :cond_598

    .line 164
    iget-object v0, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 165
    iget-object v0, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 171
    :goto_210
    const v0, 0x7f0801bc

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 172
    const v0, 0x7f0801bd

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->tabHotRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 173
    const v0, 0x7f08021c

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->tabLive:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 174
    const v0, 0x7f0801be

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->tabArea:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 175
    const v0, 0x7f0801bf

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->tabBangumi:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 176
    const v0, 0x7f0801c0

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->tabPgc:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 178
    iget-object v0, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 179
    iget-object v0, p0, Lbl/afm4;->tabHotRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 180
    iget-object v0, p0, Lbl/afm4;->tabLive:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 181
    iget-object v0, p0, Lbl/afm4;->tabArea:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 182
    iget-object v0, p0, Lbl/afm4;->tabBangumi:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 183
    iget-object v0, p0, Lbl/afm4;->tabPgc:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 185
    iget-object v0, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 186
    iget-object v0, p0, Lbl/afm4;->tabHotRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 187
    iget-object v0, p0, Lbl/afm4;->tabLive:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 188
    iget-object v0, p0, Lbl/afm4;->tabArea:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 189
    iget-object v0, p0, Lbl/afm4;->tabBangumi:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 190
    iget-object v0, p0, Lbl/afm4;->tabPgc:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 192
    iget-object v0, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v0, p0, Lbl/afm4;->tabHotRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Lbl/afm4;->tabLive:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v0, p0, Lbl/afm4;->tabArea:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v0, p0, Lbl/afm4;->tabBangumi:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v0, p0, Lbl/afm4;->tabPgc:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_top_tab_config(Landroid/content/Context;)I

    move-result v3

    .line 200
    iget-object v5, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_5a4

    move v0, v1

    :goto_2bb
    invoke-direct {p0, v5, v0}, Lbl/afm4;->updateTopTabButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 201
    iget-object v5, p0, Lbl/afm4;->tabHotRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_5a7

    move v0, v1

    :goto_2c5
    invoke-direct {p0, v5, v0}, Lbl/afm4;->updateTopTabButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 202
    iget-object v5, p0, Lbl/afm4;->tabLive:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_5aa

    move v0, v1

    :goto_2cf
    invoke-direct {p0, v5, v0}, Lbl/afm4;->updateTopTabButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 203
    iget-object v5, p0, Lbl/afm4;->tabArea:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v3, 0x8

    if-eqz v0, :cond_5ad

    move v0, v1

    :goto_2d9
    invoke-direct {p0, v5, v0}, Lbl/afm4;->updateTopTabButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 204
    iget-object v5, p0, Lbl/afm4;->tabBangumi:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v3, 0x10

    if-eqz v0, :cond_5b0

    move v0, v1

    :goto_2e3
    invoke-direct {p0, v5, v0}, Lbl/afm4;->updateTopTabButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 205
    iget-object v5, p0, Lbl/afm4;->tabPgc:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v3, 0x20

    if-eqz v0, :cond_5b3

    move v0, v1

    :goto_2ed
    invoke-direct {p0, v5, v0}, Lbl/afm4;->updateTopTabButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 207
    const v0, 0x7f0801eb

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 208
    const v0, 0x7f0801ec

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 209
    iget-object v0, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 210
    iget-object v0, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 211
    iget-object v0, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 212
    iget-object v0, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 213
    iget-object v0, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_334

    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v0

    if-eqz v0, :cond_334

    .line 218
    :cond_334
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_space_dynamic_mode(Landroid/content/Context;)I

    move-result v0

    .line 219
    if-nez v0, :cond_5b6

    .line 220
    iget-object v0, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 221
    iget-object v0, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 227
    :goto_348
    const v0, 0x7f0801f8

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 228
    const v0, 0x7f0801f9

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 229
    const v0, 0x7f0801fa

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 230
    const v0, 0x7f0801fb

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 231
    const v0, 0x7f0801fc

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 232
    const v0, 0x7f0801fd

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 233
    const v0, 0x7f0801fe

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 234
    const v0, 0x7f0801ff

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 235
    const v0, 0x7f080200

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 236
    const v0, 0x7f080201

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 237
    const v0, 0x7f08020c

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 238
    const v0, 0x7f08022a

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuSubtitleSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 239
    const v0, 0x7f080235

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuAudioBalanceBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 240
    const v0, 0x7f080236

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuEbookBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 244
    sget v0, Lmybl/BiliFilter;->prefer_videoview:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5c2

    move v3, v1

    .line 245
    :goto_3e8
    if-nez v3, :cond_3f9

    .line 247
    iget-object v0, p0, Lbl/afm4;->menuEbookBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lbl/afm4;->menuAudioBalanceBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    const v5, 0x7f080235

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setNextFocusRightId(I)V

    .line 252
    :cond_3f9
    iget-object v0, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 253
    iget-object v0, p0, Lbl/afm4;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 254
    iget-object v0, p0, Lbl/afm4;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 255
    iget-object v0, p0, Lbl/afm4;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 256
    iget-object v0, p0, Lbl/afm4;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 257
    iget-object v0, p0, Lbl/afm4;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 258
    iget-object v0, p0, Lbl/afm4;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 259
    iget-object v0, p0, Lbl/afm4;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 260
    iget-object v0, p0, Lbl/afm4;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 261
    iget-object v0, p0, Lbl/afm4;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 262
    iget-object v0, p0, Lbl/afm4;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 263
    iget-object v0, p0, Lbl/afm4;->menuSubtitleSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 264
    iget-object v0, p0, Lbl/afm4;->menuAudioBalanceBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 265
    if-eqz v3, :cond_441

    .line 266
    iget-object v0, p0, Lbl/afm4;->menuEbookBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 269
    :cond_441
    iget-object v0, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 270
    iget-object v0, p0, Lbl/afm4;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 271
    iget-object v0, p0, Lbl/afm4;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 272
    iget-object v0, p0, Lbl/afm4;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 273
    iget-object v0, p0, Lbl/afm4;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 274
    iget-object v0, p0, Lbl/afm4;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 275
    iget-object v0, p0, Lbl/afm4;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 276
    iget-object v0, p0, Lbl/afm4;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 277
    iget-object v0, p0, Lbl/afm4;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 278
    iget-object v0, p0, Lbl/afm4;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 279
    iget-object v0, p0, Lbl/afm4;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 280
    iget-object v0, p0, Lbl/afm4;->menuSubtitleSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 281
    iget-object v0, p0, Lbl/afm4;->menuAudioBalanceBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 282
    if-eqz v3, :cond_489

    .line 283
    iget-object v0, p0, Lbl/afm4;->menuEbookBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 286
    :cond_489
    iget-object v0, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v0, p0, Lbl/afm4;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v0, p0, Lbl/afm4;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v0, p0, Lbl/afm4;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v0, p0, Lbl/afm4;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    iget-object v0, p0, Lbl/afm4;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    iget-object v0, p0, Lbl/afm4;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v0, p0, Lbl/afm4;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object v0, p0, Lbl/afm4;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    iget-object v0, p0, Lbl/afm4;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object v0, p0, Lbl/afm4;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    iget-object v0, p0, Lbl/afm4;->menuSubtitleSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    iget-object v0, p0, Lbl/afm4;->menuAudioBalanceBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    if-eqz v3, :cond_4d1

    .line 300
    iget-object v0, p0, Lbl/afm4;->menuEbookBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    :cond_4d1
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_player_menu_config(Landroid/content/Context;)I

    move-result v5

    .line 304
    iget-object v6, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v5, 0x1

    if-eqz v0, :cond_5c5

    move v0, v1

    :goto_4e0
    invoke-direct {p0, v6, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 305
    iget-object v6, p0, Lbl/afm4;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v5, 0x2

    if-eqz v0, :cond_5c8

    move v0, v1

    :goto_4ea
    invoke-direct {p0, v6, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 306
    iget-object v6, p0, Lbl/afm4;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v5, 0x4

    if-eqz v0, :cond_5cb

    move v0, v1

    :goto_4f4
    invoke-direct {p0, v6, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 307
    iget-object v6, p0, Lbl/afm4;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v5, 0x8

    if-eqz v0, :cond_5ce

    move v0, v1

    :goto_4fe
    invoke-direct {p0, v6, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 308
    iget-object v6, p0, Lbl/afm4;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v5, 0x10

    if-eqz v0, :cond_5d1

    move v0, v1

    :goto_508
    invoke-direct {p0, v6, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 309
    iget-object v6, p0, Lbl/afm4;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v5, 0x20

    if-eqz v0, :cond_5d4

    move v0, v1

    :goto_512
    invoke-direct {p0, v6, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 310
    iget-object v6, p0, Lbl/afm4;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v5, 0x40

    if-eqz v0, :cond_5d7

    move v0, v1

    :goto_51c
    invoke-direct {p0, v6, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 311
    iget-object v6, p0, Lbl/afm4;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit16 v0, v5, 0x80

    if-eqz v0, :cond_5da

    move v0, v1

    :goto_526
    invoke-direct {p0, v6, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 312
    iget-object v6, p0, Lbl/afm4;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit16 v0, v5, 0x100

    if-eqz v0, :cond_5dd

    move v0, v1

    :goto_530
    invoke-direct {p0, v6, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 313
    iget-object v6, p0, Lbl/afm4;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit16 v0, v5, 0x200

    if-eqz v0, :cond_5e0

    move v0, v1

    :goto_53a
    invoke-direct {p0, v6, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 314
    iget-object v6, p0, Lbl/afm4;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit16 v0, v5, 0x400

    if-eqz v0, :cond_5e3

    move v0, v1

    :goto_544
    invoke-direct {p0, v6, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 315
    iget-object v6, p0, Lbl/afm4;->menuSubtitleSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit16 v0, v5, 0x1000

    if-eqz v0, :cond_5e6

    move v0, v1

    :goto_54e
    invoke-direct {p0, v6, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 316
    iget-object v6, p0, Lbl/afm4;->menuAudioBalanceBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit16 v0, v5, 0x800

    if-eqz v0, :cond_5e9

    move v0, v1

    :goto_558
    invoke-direct {p0, v6, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 317
    if-eqz v3, :cond_566

    .line 318
    iget-object v0, p0, Lbl/afm4;->menuEbookBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit16 v3, v5, 0x2000

    if-eqz v3, :cond_5ec

    :goto_563
    invoke-direct {p0, v0, v1}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 321
    :cond_566
    return-object v4

    .line 122
    :cond_567
    const/4 v3, 0x3

    if-ne v0, v3, :cond_57b

    .line 123
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 124
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 125
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_180

    .line 127
    :cond_57b
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 128
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 129
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_180

    .line 149
    :cond_58c
    iget-object v0, p0, Lbl/afm4;->recommendApiWebButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 150
    iget-object v0, p0, Lbl/afm4;->recommendApiAppButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_1c8

    .line 167
    :cond_598
    iget-object v0, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 168
    iget-object v0, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_210

    :cond_5a4
    move v0, v2

    .line 200
    goto/16 :goto_2bb

    :cond_5a7
    move v0, v2

    .line 201
    goto/16 :goto_2c5

    :cond_5aa
    move v0, v2

    .line 202
    goto/16 :goto_2cf

    :cond_5ad
    move v0, v2

    .line 203
    goto/16 :goto_2d9

    :cond_5b0
    move v0, v2

    .line 204
    goto/16 :goto_2e3

    :cond_5b3
    move v0, v2

    .line 205
    goto/16 :goto_2ed

    .line 223
    :cond_5b6
    iget-object v0, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 224
    iget-object v0, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_348

    :cond_5c2
    move v3, v2

    .line 244
    goto/16 :goto_3e8

    :cond_5c5
    move v0, v2

    .line 304
    goto/16 :goto_4e0

    :cond_5c8
    move v0, v2

    .line 305
    goto/16 :goto_4ea

    :cond_5cb
    move v0, v2

    .line 306
    goto/16 :goto_4f4

    :cond_5ce
    move v0, v2

    .line 307
    goto/16 :goto_4fe

    :cond_5d1
    move v0, v2

    .line 308
    goto/16 :goto_508

    :cond_5d4
    move v0, v2

    .line 309
    goto/16 :goto_512

    :cond_5d7
    move v0, v2

    .line 310
    goto/16 :goto_51c

    :cond_5da
    move v0, v2

    .line 311
    goto/16 :goto_526

    :cond_5dd
    move v0, v2

    .line 312
    goto/16 :goto_530

    :cond_5e0
    move v0, v2

    .line 313
    goto/16 :goto_53a

    :cond_5e3
    move v0, v2

    .line 314
    goto/16 :goto_544

    :cond_5e6
    move v0, v2

    .line 315
    goto/16 :goto_54e

    :cond_5e9
    move v0, v2

    .line 316
    goto/16 :goto_558

    :cond_5ec
    move v1, v2

    .line 318
    goto/16 :goto_563
.end method

.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 512
    if-eqz p2, :cond_4d

    move-object v0, p1

    .line 513
    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpEnabled(Z)V

    :goto_a
    move v2, v3

    .line 517
    :goto_b
    const/16 v0, 0x8

    if-ge v2, v0, :cond_57

    .line 518
    iget-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v0, v0, v2

    if-ne v0, p1, :cond_49

    iget-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 519
    iget-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_54

    const-string v1, "\u226a "

    :goto_32
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

    .line 520
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    :cond_49
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_b

    :cond_4d
    move-object v0, p1

    .line 515
    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpEnabled(Z)V

    goto :goto_a

    .line 519
    :cond_54
    const-string v1, ""

    goto :goto_32

    .line 522
    :cond_57
    return-void
.end method
