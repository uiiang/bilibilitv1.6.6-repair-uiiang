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
    .line 368
    if-eqz p2, :cond_9

    .line 369
    const v0, 0x7f0700f0

    invoke-virtual {p1, v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 373
    :goto_8
    return-void

    .line 371
    :cond_9
    const v0, 0x7f0700ef

    invoke-virtual {p1, v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto :goto_8
.end method

.method private updateTopTabButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V
    .locals 1

    .prologue
    .line 360
    if-eqz p2, :cond_9

    .line 361
    const v0, 0x7f0700f0

    invoke-virtual {p1, v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 365
    :goto_8
    return-void

    .line 363
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

    .line 594
    iget-object v2, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v2, :cond_7

    .line 675
    :cond_6
    :goto_6
    return v0

    .line 597
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

    .line 598
    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lbl/afm4;->recommendApiWebButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 599
    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lbl/afm4;->recommendApiAppButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 600
    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 601
    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v0

    .line 603
    :goto_60
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1af

    .line 604
    iget-object v3, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1ab

    iget-object v3, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_1ab

    move v2, v0

    .line 609
    :goto_75
    if-eqz v2, :cond_84

    iget-object v3, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_84

    iget-object v3, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_84

    move v2, v0

    .line 612
    :cond_84
    if-eqz v2, :cond_93

    iget-object v3, p0, Lbl/afm4;->tabHotRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_93

    iget-object v3, p0, Lbl/afm4;->tabHotRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_93

    move v2, v0

    .line 615
    :cond_93
    if-eqz v2, :cond_a2

    iget-object v3, p0, Lbl/afm4;->tabLive:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_a2

    iget-object v3, p0, Lbl/afm4;->tabLive:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_a2

    move v2, v0

    .line 618
    :cond_a2
    if-eqz v2, :cond_b1

    iget-object v3, p0, Lbl/afm4;->tabArea:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_b1

    iget-object v3, p0, Lbl/afm4;->tabArea:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_b1

    move v2, v0

    .line 621
    :cond_b1
    if-eqz v2, :cond_c0

    iget-object v3, p0, Lbl/afm4;->tabBangumi:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_c0

    iget-object v3, p0, Lbl/afm4;->tabBangumi:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_c0

    move v2, v0

    .line 624
    :cond_c0
    if-eqz v2, :cond_cf

    iget-object v3, p0, Lbl/afm4;->tabPgc:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_cf

    iget-object v3, p0, Lbl/afm4;->tabPgc:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_cf

    move v2, v0

    .line 627
    :cond_cf
    if-eqz v2, :cond_de

    iget-object v3, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_de

    iget-object v3, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_de

    move v2, v0

    .line 630
    :cond_de
    if-eqz v2, :cond_ed

    iget-object v3, p0, Lbl/afm4;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_ed

    iget-object v3, p0, Lbl/afm4;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_ed

    move v2, v0

    .line 633
    :cond_ed
    if-eqz v2, :cond_fc

    iget-object v3, p0, Lbl/afm4;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_fc

    iget-object v3, p0, Lbl/afm4;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_fc

    move v2, v0

    .line 636
    :cond_fc
    if-eqz v2, :cond_10b

    iget-object v3, p0, Lbl/afm4;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_10b

    iget-object v3, p0, Lbl/afm4;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_10b

    move v2, v0

    .line 639
    :cond_10b
    if-eqz v2, :cond_11a

    iget-object v3, p0, Lbl/afm4;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_11a

    iget-object v3, p0, Lbl/afm4;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_11a

    move v2, v0

    .line 642
    :cond_11a
    if-eqz v2, :cond_129

    iget-object v3, p0, Lbl/afm4;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_129

    iget-object v3, p0, Lbl/afm4;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_129

    move v2, v0

    .line 645
    :cond_129
    if-eqz v2, :cond_138

    iget-object v3, p0, Lbl/afm4;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_138

    iget-object v3, p0, Lbl/afm4;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_138

    move v2, v0

    .line 648
    :cond_138
    if-eqz v2, :cond_147

    iget-object v3, p0, Lbl/afm4;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_147

    iget-object v3, p0, Lbl/afm4;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_147

    move v2, v0

    .line 651
    :cond_147
    if-eqz v2, :cond_156

    iget-object v3, p0, Lbl/afm4;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_156

    iget-object v3, p0, Lbl/afm4;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_156

    move v2, v0

    .line 654
    :cond_156
    if-eqz v2, :cond_165

    iget-object v3, p0, Lbl/afm4;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_165

    iget-object v3, p0, Lbl/afm4;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_165

    move v2, v0

    .line 657
    :cond_165
    if-eqz v2, :cond_174

    iget-object v3, p0, Lbl/afm4;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_174

    iget-object v3, p0, Lbl/afm4;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_174

    move v2, v0

    .line 660
    :cond_174
    if-eqz v2, :cond_183

    iget-object v3, p0, Lbl/afm4;->menuSubtitleSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_183

    iget-object v3, p0, Lbl/afm4;->menuSubtitleSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_183

    move v2, v0

    .line 663
    :cond_183
    if-eqz v2, :cond_192

    iget-object v3, p0, Lbl/afm4;->menuAudioBalanceBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_192

    iget-object v3, p0, Lbl/afm4;->menuAudioBalanceBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_192

    move v2, v0

    .line 666
    :cond_192
    if-eqz v2, :cond_1a1

    iget-object v3, p0, Lbl/afm4;->menuEbookBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_1a1

    iget-object v3, p0, Lbl/afm4;->menuEbookBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_1a1

    move v2, v0

    .line 670
    :cond_1a1
    if-eqz v2, :cond_6

    .line 671
    iget-object v0, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->requestFocus()Z

    move v0, v1

    .line 672
    goto/16 :goto_6

    .line 603
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

    .line 560
    iget-object v1, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 590
    :cond_d
    :goto_d
    return v0

    .line 563
    :cond_e
    iget-object v1, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 575
    :cond_1a
    iget-object v1, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 578
    :cond_26
    iget-object v1, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 581
    :cond_32
    iget-object v1, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 584
    :cond_3e
    iget-object v1, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v1, v1, v0

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 587
    :cond_4e
    iget-object v1, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 590
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

    .line 377
    iget-object v0, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_3d

    .line 378
    sget-boolean v0, Lmybl/BiliFilter;->progressbar_on:Z

    if-eqz v0, :cond_8e

    move-object v0, p1

    .line 379
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    const-string v3, "\u5173"

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    invoke-virtual {p1, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 385
    :goto_23
    sget-boolean v0, Lmybl/BiliFilter;->progressbar_on:Z

    if-nez v0, :cond_a0

    move v0, v1

    :goto_28
    sput-boolean v0, Lmybl/BiliFilter;->progressbar_on:Z

    .line 386
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "progressbar_on"

    sget-boolean v5, Lmybl/BiliFilter;->progressbar_on:Z

    .line 387
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 386
    invoke-static {v0, v3, v5}, Lbl/abd;->set_personal_config(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 389
    :cond_3d
    iget-object v0, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_70

    .line 390
    sget-boolean v0, Lmybl/BiliFilter;->fastquit_on:Z

    if-eqz v0, :cond_a2

    move-object v0, p1

    .line 391
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    const-string v3, "\u5173"

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    invoke-virtual {p1, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 397
    :goto_56
    sget-boolean v0, Lmybl/BiliFilter;->fastquit_on:Z

    if-nez v0, :cond_b4

    move v0, v1

    :goto_5b
    sput-boolean v0, Lmybl/BiliFilter;->fastquit_on:Z

    .line 398
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

    .line 400
    :goto_71
    if-ge v6, v4, :cond_102

    .line 401
    iget-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v0, v0, v6

    if-ne v0, p1, :cond_fd

    .line 402
    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    aget v3, v0, v6

    .line 403
    add-int/lit8 v0, v6, -0x1

    :goto_7f
    if-ltz v0, :cond_b6

    .line 404
    sget-object v5, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    add-int/lit8 v7, v0, 0x1

    sget-object v8, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    aget v8, v8, v0

    aput v8, v5, v7

    .line 403
    add-int/lit8 v0, v0, -0x1

    goto :goto_7f

    :cond_8e
    move-object v0, p1

    .line 382
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    const-string v3, "\u5f00"

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    invoke-virtual {p1, v10}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_23

    :cond_a0
    move v0, v2

    .line 385
    goto :goto_28

    :cond_a2
    move-object v0, p1

    .line 394
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    const-string v3, "\u5f00"

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    invoke-virtual {p1, v10}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_56

    :cond_b4
    move v0, v2

    .line 397
    goto :goto_5b

    .line 405
    :cond_b6
    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    aput v3, v0, v2

    .line 406
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    const-string v3, "myarea_map"

    sget-object v5, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v3, v5}, Lbl/abd;->set_personal_config(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    move v5, v2

    .line 407
    :goto_ca
    if-ge v5, v4, :cond_fd

    .line 408
    iget-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v0, v0, v5

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 409
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

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_ca

    .line 409
    :cond_fa
    const-string v3, ""

    goto :goto_df

    .line 400
    :cond_fd
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_71

    .line 413
    :cond_102
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_1fd

    .line 414
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lbl/abd;->set_home_column(Landroid/content/Context;I)V

    .line 415
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 416
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 417
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 430
    :cond_11d
    :goto_11d
    iget-object v0, p0, Lbl/afm4;->recommendApiWebButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_237

    .line 431
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lbl/abd;->set_recommend_api_type(Landroid/content/Context;I)V

    .line 432
    iget-object v0, p0, Lbl/afm4;->recommendApiWebButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 433
    iget-object v0, p0, Lbl/afm4;->recommendApiAppButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 440
    :cond_132
    :goto_132
    iget-object v0, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_24e

    .line 441
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lbl/abd;->set_other_column(Landroid/content/Context;I)V

    .line 442
    iget-object v0, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 443
    iget-object v0, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 450
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

    .line 453
    :cond_15f
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_top_tab_config(Landroid/content/Context;)I

    move-result v3

    .line 455
    iget-object v0, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_265

    move v0, v1

    .line 468
    :goto_16c
    and-int v5, v3, v0

    if-eqz v5, :cond_28a

    move v5, v1

    .line 470
    :goto_171
    if-eqz v5, :cond_28d

    .line 471
    xor-int/lit8 v6, v0, -0x1

    and-int/2addr v3, v6

    .line 472
    if-nez v3, :cond_31e

    .line 478
    :goto_178
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v0}, Lbl/abd;->set_top_tab_config(Landroid/content/Context;I)V

    move-object v0, p1

    .line 479
    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v5, :cond_290

    move v3, v1

    :goto_185
    invoke-direct {p0, v0, v3}, Lbl/afm4;->updateTopTabButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 482
    :cond_188
    iget-object v0, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_293

    .line 483
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lbl/abd;->set_space_dynamic_mode(Landroid/content/Context;I)V

    .line 484
    iget-object v0, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 485
    iget-object v0, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 492
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

    .line 499
    :cond_1d5
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_player_menu_config(Landroid/content/Context;)I

    move-result v3

    .line 501
    iget-object v0, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2aa

    move v0, v1

    .line 530
    :goto_1e2
    and-int v4, v3, v0

    if-eqz v4, :cond_30f

    move v4, v1

    .line 532
    :goto_1e7
    if-eqz v4, :cond_312

    .line 533
    xor-int/lit8 v5, v0, -0x1

    and-int/2addr v3, v5

    .line 534
    if-nez v3, :cond_318

    .line 540
    :goto_1ee
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v0}, Lbl/abd;->set_player_menu_config(Landroid/content/Context;I)V

    .line 541
    check-cast p1, Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v4, :cond_315

    :goto_1f9
    invoke-direct {p0, p1, v1}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 543
    :cond_1fc
    return-void

    .line 418
    :cond_1fd
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_21a

    .line 419
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v3, 0x3

    invoke-static {v0, v3}, Lbl/abd;->set_home_column(Landroid/content/Context;I)V

    .line 420
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 421
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 422
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_11d

    .line 423
    :cond_21a
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_11d

    .line 424
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v3, 0x4

    invoke-static {v0, v3}, Lbl/abd;->set_home_column(Landroid/content/Context;I)V

    .line 425
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 426
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 427
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_11d

    .line 434
    :cond_237
    iget-object v0, p0, Lbl/afm4;->recommendApiAppButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_132

    .line 435
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lbl/abd;->set_recommend_api_type(Landroid/content/Context;I)V

    .line 436
    iget-object v0, p0, Lbl/afm4;->recommendApiWebButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 437
    iget-object v0, p0, Lbl/afm4;->recommendApiAppButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_132

    .line 444
    :cond_24e
    iget-object v0, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_147

    .line 445
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lbl/abd;->set_other_column(Landroid/content/Context;I)V

    .line 446
    iget-object v0, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 447
    iget-object v0, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_147

    .line 457
    :cond_265
    iget-object v0, p0, Lbl/afm4;->tabHotRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_26c

    .line 458
    const/4 v0, 0x2

    goto/16 :goto_16c

    .line 459
    :cond_26c
    iget-object v0, p0, Lbl/afm4;->tabLive:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_273

    .line 460
    const/4 v0, 0x4

    goto/16 :goto_16c

    .line 461
    :cond_273
    iget-object v0, p0, Lbl/afm4;->tabArea:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_27a

    move v0, v4

    .line 462
    goto/16 :goto_16c

    .line 463
    :cond_27a
    iget-object v0, p0, Lbl/afm4;->tabBangumi:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_282

    .line 464
    const/16 v0, 0x10

    goto/16 :goto_16c

    .line 465
    :cond_282
    iget-object v0, p0, Lbl/afm4;->tabPgc:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_321

    .line 466
    const/16 v0, 0x20

    goto/16 :goto_16c

    :cond_28a
    move v5, v2

    .line 468
    goto/16 :goto_171

    .line 476
    :cond_28d
    or-int/2addr v0, v3

    goto/16 :goto_178

    :cond_290
    move v3, v2

    .line 479
    goto/16 :goto_185

    .line 486
    :cond_293
    iget-object v0, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_19d

    .line 487
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lbl/abd;->set_space_dynamic_mode(Landroid/content/Context;I)V

    .line 488
    iget-object v0, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 489
    iget-object v0, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_19d

    .line 503
    :cond_2aa
    iget-object v0, p0, Lbl/afm4;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2b1

    .line 504
    const/4 v0, 0x2

    goto/16 :goto_1e2

    .line 505
    :cond_2b1
    iget-object v0, p0, Lbl/afm4;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2b8

    .line 506
    const/4 v0, 0x4

    goto/16 :goto_1e2

    .line 507
    :cond_2b8
    iget-object v0, p0, Lbl/afm4;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2bf

    move v0, v4

    .line 508
    goto/16 :goto_1e2

    .line 509
    :cond_2bf
    iget-object v0, p0, Lbl/afm4;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2c7

    .line 510
    const/16 v0, 0x10

    goto/16 :goto_1e2

    .line 511
    :cond_2c7
    iget-object v0, p0, Lbl/afm4;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2cf

    .line 512
    const/16 v0, 0x20

    goto/16 :goto_1e2

    .line 513
    :cond_2cf
    iget-object v0, p0, Lbl/afm4;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2d7

    .line 514
    const/16 v0, 0x40

    goto/16 :goto_1e2

    .line 515
    :cond_2d7
    iget-object v0, p0, Lbl/afm4;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2df

    .line 516
    const/16 v0, 0x80

    goto/16 :goto_1e2

    .line 517
    :cond_2df
    iget-object v0, p0, Lbl/afm4;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2e7

    .line 518
    const/16 v0, 0x100

    goto/16 :goto_1e2

    .line 519
    :cond_2e7
    iget-object v0, p0, Lbl/afm4;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2ef

    .line 520
    const/16 v0, 0x200

    goto/16 :goto_1e2

    .line 521
    :cond_2ef
    iget-object v0, p0, Lbl/afm4;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2f7

    .line 522
    const/16 v0, 0x400

    goto/16 :goto_1e2

    .line 523
    :cond_2f7
    iget-object v0, p0, Lbl/afm4;->menuSubtitleSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2ff

    .line 524
    const/16 v0, 0x1000

    goto/16 :goto_1e2

    .line 525
    :cond_2ff
    iget-object v0, p0, Lbl/afm4;->menuAudioBalanceBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_307

    .line 526
    const/16 v0, 0x800

    goto/16 :goto_1e2

    .line 527
    :cond_307
    iget-object v0, p0, Lbl/afm4;->menuEbookBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_31b

    .line 528
    const/16 v0, 0x2000

    goto/16 :goto_1e2

    :cond_30f
    move v4, v2

    .line 530
    goto/16 :goto_1e7

    .line 538
    :cond_312
    or-int/2addr v0, v3

    goto/16 :goto_1ee

    :cond_315
    move v1, v2

    .line 541
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

    move-result-object v5

    .line 72
    const v0, 0x7f08017a

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 73
    const v0, 0x7f08017b

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 74
    iget-object v3, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    const v0, 0x7f08017e

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    aput-object v0, v3, v2

    .line 75
    iget-object v3, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    const v0, 0x7f08017f

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    aput-object v0, v3, v1

    .line 76
    iget-object v3, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    const/4 v4, 0x2

    const v0, 0x7f080180

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    aput-object v0, v3, v4

    .line 77
    iget-object v3, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    const/4 v4, 0x3

    const v0, 0x7f080181

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    aput-object v0, v3, v4

    .line 78
    iget-object v3, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    const/4 v4, 0x4

    const v0, 0x7f080182

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    aput-object v0, v3, v4

    .line 79
    iget-object v3, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    const/4 v4, 0x5

    const v0, 0x7f080183

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    aput-object v0, v3, v4

    .line 80
    iget-object v3, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    const/4 v4, 0x6

    const v0, 0x7f08022d

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    aput-object v0, v3, v4

    .line 81
    iget-object v3, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    const/4 v4, 0x7

    const v0, 0x7f080261

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    aput-object v0, v3, v4

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

    sget-object v4, Lbl/afm4;->tab_names:[Ljava/lang/String;

    sget-object v6, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    aget v6, v6, v3

    aget-object v4, v4, v6

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_e6

    .line 105
    :cond_118
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_171

    move v4, v2

    .line 106
    :goto_123
    const/16 v0, 0x8

    if-ge v4, v0, :cond_171

    .line 107
    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    aget v0, v0, v4

    const/4 v3, 0x7

    if-ne v0, v3, :cond_5db

    .line 108
    iget-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v0, v0, v4

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setVisibility(I)V

    .line 110
    const/4 v0, 0x0

    .line 111
    add-int/lit8 v3, v4, -0x1

    :goto_13a
    if-ltz v3, :cond_14a

    .line 112
    iget-object v6, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/bilibili/tv/widget/DrawFrameLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_5ca

    .line 113
    iget-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v0, v0, v3

    .line 117
    :cond_14a
    const/4 v3, 0x0

    .line 118
    add-int/lit8 v4, v4, 0x1

    :goto_14d
    const/16 v6, 0x8

    if-ge v4, v6, :cond_15f

    .line 119
    iget-object v6, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcom/bilibili/tv/widget/DrawFrameLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_5ce

    .line 120
    iget-object v3, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v3, v3, v4

    .line 124
    :cond_15f
    if-eqz v0, :cond_171

    .line 125
    if-eqz v3, :cond_5d2

    .line 127
    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->getId()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setNextFocusRightId(I)V

    .line 128
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->getId()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setNextFocusLeftId(I)V

    .line 139
    :cond_171
    :goto_171
    const v0, 0x7f0801b9

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 140
    const v0, 0x7f0801ba

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 141
    const v0, 0x7f0801bb

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 142
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 143
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 144
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 145
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 146
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 147
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 148
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_home_column(Landroid/content/Context;)I

    move-result v0

    .line 153
    const/4 v3, 0x2

    if-ne v0, v3, :cond_5e0

    .line 154
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 155
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 156
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 167
    :goto_1d9
    const v0, 0x7f080230

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->recommendApiWebButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 168
    const v0, 0x7f080231

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->recommendApiAppButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 170
    iget-object v0, p0, Lbl/afm4;->recommendApiWebButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 171
    iget-object v0, p0, Lbl/afm4;->recommendApiAppButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 173
    iget-object v0, p0, Lbl/afm4;->recommendApiWebButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 174
    iget-object v0, p0, Lbl/afm4;->recommendApiAppButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 176
    iget-object v0, p0, Lbl/afm4;->recommendApiWebButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v0, p0, Lbl/afm4;->recommendApiAppButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_recommend_api_type(Landroid/content/Context;)I

    move-result v0

    .line 180
    if-nez v0, :cond_605

    .line 181
    iget-object v0, p0, Lbl/afm4;->recommendApiWebButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 182
    iget-object v0, p0, Lbl/afm4;->recommendApiAppButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 188
    :goto_221
    const v0, 0x7f0801d9

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 189
    const v0, 0x7f0801da

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 190
    iget-object v0, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 191
    iget-object v0, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 192
    iget-object v0, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 193
    iget-object v0, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 194
    iget-object v0, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v0, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_other_column(Landroid/content/Context;)I

    move-result v0

    .line 198
    if-nez v0, :cond_611

    .line 199
    iget-object v0, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 200
    iget-object v0, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 206
    :goto_269
    const v0, 0x7f0801bc

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 207
    const v0, 0x7f0801bd

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->tabHotRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 208
    const v0, 0x7f08021c

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->tabLive:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 209
    const v0, 0x7f0801be

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->tabArea:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 210
    const v0, 0x7f0801bf

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->tabBangumi:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 211
    const v0, 0x7f0801c0

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->tabPgc:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 213
    iget-object v0, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 214
    iget-object v0, p0, Lbl/afm4;->tabHotRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 215
    iget-object v0, p0, Lbl/afm4;->tabLive:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 216
    iget-object v0, p0, Lbl/afm4;->tabArea:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 217
    iget-object v0, p0, Lbl/afm4;->tabBangumi:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 218
    iget-object v0, p0, Lbl/afm4;->tabPgc:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 220
    iget-object v0, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 221
    iget-object v0, p0, Lbl/afm4;->tabHotRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 222
    iget-object v0, p0, Lbl/afm4;->tabLive:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 223
    iget-object v0, p0, Lbl/afm4;->tabArea:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 224
    iget-object v0, p0, Lbl/afm4;->tabBangumi:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 225
    iget-object v0, p0, Lbl/afm4;->tabPgc:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 227
    iget-object v0, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v0, p0, Lbl/afm4;->tabHotRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v0, p0, Lbl/afm4;->tabLive:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v0, p0, Lbl/afm4;->tabArea:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v0, p0, Lbl/afm4;->tabBangumi:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v0, p0, Lbl/afm4;->tabPgc:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_top_tab_config(Landroid/content/Context;)I

    move-result v3

    .line 235
    iget-object v4, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_61d

    move v0, v1

    :goto_314
    invoke-direct {p0, v4, v0}, Lbl/afm4;->updateTopTabButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 236
    iget-object v4, p0, Lbl/afm4;->tabHotRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_620

    move v0, v1

    :goto_31e
    invoke-direct {p0, v4, v0}, Lbl/afm4;->updateTopTabButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 237
    iget-object v4, p0, Lbl/afm4;->tabLive:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_623

    move v0, v1

    :goto_328
    invoke-direct {p0, v4, v0}, Lbl/afm4;->updateTopTabButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 238
    iget-object v4, p0, Lbl/afm4;->tabArea:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v3, 0x8

    if-eqz v0, :cond_626

    move v0, v1

    :goto_332
    invoke-direct {p0, v4, v0}, Lbl/afm4;->updateTopTabButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 239
    iget-object v4, p0, Lbl/afm4;->tabBangumi:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v3, 0x10

    if-eqz v0, :cond_629

    move v0, v1

    :goto_33c
    invoke-direct {p0, v4, v0}, Lbl/afm4;->updateTopTabButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 240
    iget-object v4, p0, Lbl/afm4;->tabPgc:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v3, 0x20

    if-eqz v0, :cond_62c

    move v0, v1

    :goto_346
    invoke-direct {p0, v4, v0}, Lbl/afm4;->updateTopTabButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 242
    const v0, 0x7f0801eb

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 243
    const v0, 0x7f0801ec

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 244
    iget-object v0, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 245
    iget-object v0, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 246
    iget-object v0, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 247
    iget-object v0, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 248
    iget-object v0, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v0, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_38d

    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v0

    if-eqz v0, :cond_38d

    .line 253
    :cond_38d
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_space_dynamic_mode(Landroid/content/Context;)I

    move-result v0

    .line 254
    if-nez v0, :cond_62f

    .line 255
    iget-object v0, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 256
    iget-object v0, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 262
    :goto_3a1
    const v0, 0x7f0801f8

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 263
    const v0, 0x7f0801f9

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 264
    const v0, 0x7f0801fa

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 265
    const v0, 0x7f0801fb

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 266
    const v0, 0x7f0801fc

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 267
    const v0, 0x7f0801fd

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 268
    const v0, 0x7f0801fe

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 269
    const v0, 0x7f0801ff

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 270
    const v0, 0x7f080200

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 271
    const v0, 0x7f080201

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 272
    const v0, 0x7f08020c

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 273
    const v0, 0x7f08022a

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuSubtitleSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 274
    const v0, 0x7f080235

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuAudioBalanceBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 275
    const v0, 0x7f080236

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuEbookBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 279
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_63b

    sget v0, Lmybl/BiliFilter;->prefer_videoview:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_63b

    move v3, v1

    .line 280
    :goto_44b
    if-nez v3, :cond_45c

    .line 282
    iget-object v0, p0, Lbl/afm4;->menuEbookBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lbl/afm4;->menuAudioBalanceBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    const v4, 0x7f080235

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setNextFocusRightId(I)V

    .line 287
    :cond_45c
    iget-object v0, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 288
    iget-object v0, p0, Lbl/afm4;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 289
    iget-object v0, p0, Lbl/afm4;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 290
    iget-object v0, p0, Lbl/afm4;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 291
    iget-object v0, p0, Lbl/afm4;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 292
    iget-object v0, p0, Lbl/afm4;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 293
    iget-object v0, p0, Lbl/afm4;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 294
    iget-object v0, p0, Lbl/afm4;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 295
    iget-object v0, p0, Lbl/afm4;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 296
    iget-object v0, p0, Lbl/afm4;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 297
    iget-object v0, p0, Lbl/afm4;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 298
    iget-object v0, p0, Lbl/afm4;->menuSubtitleSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 299
    iget-object v0, p0, Lbl/afm4;->menuAudioBalanceBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 300
    if-eqz v3, :cond_4a4

    .line 301
    iget-object v0, p0, Lbl/afm4;->menuEbookBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 304
    :cond_4a4
    iget-object v0, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 305
    iget-object v0, p0, Lbl/afm4;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 306
    iget-object v0, p0, Lbl/afm4;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 307
    iget-object v0, p0, Lbl/afm4;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 308
    iget-object v0, p0, Lbl/afm4;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 309
    iget-object v0, p0, Lbl/afm4;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 310
    iget-object v0, p0, Lbl/afm4;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 311
    iget-object v0, p0, Lbl/afm4;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 312
    iget-object v0, p0, Lbl/afm4;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 313
    iget-object v0, p0, Lbl/afm4;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 314
    iget-object v0, p0, Lbl/afm4;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 315
    iget-object v0, p0, Lbl/afm4;->menuSubtitleSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 316
    iget-object v0, p0, Lbl/afm4;->menuAudioBalanceBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 317
    if-eqz v3, :cond_4ec

    .line 318
    iget-object v0, p0, Lbl/afm4;->menuEbookBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 321
    :cond_4ec
    iget-object v0, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    iget-object v0, p0, Lbl/afm4;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    iget-object v0, p0, Lbl/afm4;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    iget-object v0, p0, Lbl/afm4;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    iget-object v0, p0, Lbl/afm4;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object v0, p0, Lbl/afm4;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    iget-object v0, p0, Lbl/afm4;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    iget-object v0, p0, Lbl/afm4;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v0, p0, Lbl/afm4;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object v0, p0, Lbl/afm4;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    iget-object v0, p0, Lbl/afm4;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object v0, p0, Lbl/afm4;->menuSubtitleSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    iget-object v0, p0, Lbl/afm4;->menuAudioBalanceBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    if-eqz v3, :cond_534

    .line 335
    iget-object v0, p0, Lbl/afm4;->menuEbookBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    :cond_534
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_player_menu_config(Landroid/content/Context;)I

    move-result v4

    .line 339
    iget-object v6, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v4, 0x1

    if-eqz v0, :cond_63e

    move v0, v1

    :goto_543
    invoke-direct {p0, v6, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 340
    iget-object v6, p0, Lbl/afm4;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v4, 0x2

    if-eqz v0, :cond_641

    move v0, v1

    :goto_54d
    invoke-direct {p0, v6, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 341
    iget-object v6, p0, Lbl/afm4;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v4, 0x4

    if-eqz v0, :cond_644

    move v0, v1

    :goto_557
    invoke-direct {p0, v6, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 342
    iget-object v6, p0, Lbl/afm4;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v4, 0x8

    if-eqz v0, :cond_647

    move v0, v1

    :goto_561
    invoke-direct {p0, v6, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 343
    iget-object v6, p0, Lbl/afm4;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v4, 0x10

    if-eqz v0, :cond_64a

    move v0, v1

    :goto_56b
    invoke-direct {p0, v6, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 344
    iget-object v6, p0, Lbl/afm4;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v4, 0x20

    if-eqz v0, :cond_64d

    move v0, v1

    :goto_575
    invoke-direct {p0, v6, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 345
    iget-object v6, p0, Lbl/afm4;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v4, 0x40

    if-eqz v0, :cond_650

    move v0, v1

    :goto_57f
    invoke-direct {p0, v6, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 346
    iget-object v6, p0, Lbl/afm4;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit16 v0, v4, 0x80

    if-eqz v0, :cond_653

    move v0, v1

    :goto_589
    invoke-direct {p0, v6, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 347
    iget-object v6, p0, Lbl/afm4;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit16 v0, v4, 0x100

    if-eqz v0, :cond_656

    move v0, v1

    :goto_593
    invoke-direct {p0, v6, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 348
    iget-object v6, p0, Lbl/afm4;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit16 v0, v4, 0x200

    if-eqz v0, :cond_659

    move v0, v1

    :goto_59d
    invoke-direct {p0, v6, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 349
    iget-object v6, p0, Lbl/afm4;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit16 v0, v4, 0x400

    if-eqz v0, :cond_65c

    move v0, v1

    :goto_5a7
    invoke-direct {p0, v6, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 350
    iget-object v6, p0, Lbl/afm4;->menuSubtitleSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit16 v0, v4, 0x1000

    if-eqz v0, :cond_65f

    move v0, v1

    :goto_5b1
    invoke-direct {p0, v6, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 351
    iget-object v6, p0, Lbl/afm4;->menuAudioBalanceBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit16 v0, v4, 0x800

    if-eqz v0, :cond_662

    move v0, v1

    :goto_5bb
    invoke-direct {p0, v6, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 352
    if-eqz v3, :cond_5c9

    .line 353
    iget-object v0, p0, Lbl/afm4;->menuEbookBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit16 v3, v4, 0x2000

    if-eqz v3, :cond_665

    :goto_5c6
    invoke-direct {p0, v0, v1}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 356
    :cond_5c9
    return-object v5

    .line 111
    :cond_5ca
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_13a

    .line 118
    :cond_5ce
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_14d

    .line 131
    :cond_5d2
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setNextFocusRightId(I)V

    goto/16 :goto_171

    .line 106
    :cond_5db
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_123

    .line 157
    :cond_5e0
    const/4 v3, 0x3

    if-ne v0, v3, :cond_5f4

    .line 158
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 159
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 160
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_1d9

    .line 162
    :cond_5f4
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 163
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 164
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_1d9

    .line 184
    :cond_605
    iget-object v0, p0, Lbl/afm4;->recommendApiWebButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 185
    iget-object v0, p0, Lbl/afm4;->recommendApiAppButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_221

    .line 202
    :cond_611
    iget-object v0, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 203
    iget-object v0, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_269

    :cond_61d
    move v0, v2

    .line 235
    goto/16 :goto_314

    :cond_620
    move v0, v2

    .line 236
    goto/16 :goto_31e

    :cond_623
    move v0, v2

    .line 237
    goto/16 :goto_328

    :cond_626
    move v0, v2

    .line 238
    goto/16 :goto_332

    :cond_629
    move v0, v2

    .line 239
    goto/16 :goto_33c

    :cond_62c
    move v0, v2

    .line 240
    goto/16 :goto_346

    .line 258
    :cond_62f
    iget-object v0, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 259
    iget-object v0, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_3a1

    :cond_63b
    move v3, v2

    .line 279
    goto/16 :goto_44b

    :cond_63e
    move v0, v2

    .line 339
    goto/16 :goto_543

    :cond_641
    move v0, v2

    .line 340
    goto/16 :goto_54d

    :cond_644
    move v0, v2

    .line 341
    goto/16 :goto_557

    :cond_647
    move v0, v2

    .line 342
    goto/16 :goto_561

    :cond_64a
    move v0, v2

    .line 343
    goto/16 :goto_56b

    :cond_64d
    move v0, v2

    .line 344
    goto/16 :goto_575

    :cond_650
    move v0, v2

    .line 345
    goto/16 :goto_57f

    :cond_653
    move v0, v2

    .line 346
    goto/16 :goto_589

    :cond_656
    move v0, v2

    .line 347
    goto/16 :goto_593

    :cond_659
    move v0, v2

    .line 348
    goto/16 :goto_59d

    :cond_65c
    move v0, v2

    .line 349
    goto/16 :goto_5a7

    :cond_65f
    move v0, v2

    .line 350
    goto/16 :goto_5b1

    :cond_662
    move v0, v2

    .line 351
    goto/16 :goto_5bb

    :cond_665
    move v1, v2

    .line 353
    goto/16 :goto_5c6
.end method

.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 547
    if-eqz p2, :cond_4d

    move-object v0, p1

    .line 548
    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpEnabled(Z)V

    :goto_a
    move v2, v3

    .line 552
    :goto_b
    const/16 v0, 0x8

    if-ge v2, v0, :cond_57

    .line 553
    iget-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v0, v0, v2

    if-ne v0, p1, :cond_49

    iget-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 554
    iget-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 555
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

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    :cond_49
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_b

    :cond_4d
    move-object v0, p1

    .line 550
    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpEnabled(Z)V

    goto :goto_a

    .line 555
    :cond_54
    const-string v1, ""

    goto :goto_32

    .line 557
    :cond_57
    return-void
.end method
