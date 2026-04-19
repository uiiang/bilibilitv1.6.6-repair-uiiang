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

.field private menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private tabArea:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private tabBangumi:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private tabHotRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

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
    const/4 v0, 0x5

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
    const/4 v0, 0x5

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

    iput-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    return-void
.end method

.method private updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V
    .locals 1

    .prologue
    .line 264
    if-eqz p2, :cond_9

    .line 265
    const v0, 0x7f0700f0

    invoke-virtual {p1, v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 269
    :goto_8
    return-void

    .line 267
    :cond_9
    const v0, 0x7f0700ef

    invoke-virtual {p1, v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto :goto_8
.end method

.method private updateTopTabButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V
    .locals 1

    .prologue
    .line 256
    if-eqz p2, :cond_9

    .line 257
    const v0, 0x7f0700f0

    invoke-virtual {p1, v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 261
    :goto_8
    return-void

    .line 259
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

    .line 464
    iget-object v2, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v2, :cond_7

    .line 528
    :cond_6
    :goto_6
    return v0

    .line 467
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

    .line 468
    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 469
    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 470
    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v0

    .line 472
    :goto_50
    const/4 v3, 0x5

    if-ge v2, v3, :cond_153

    .line 473
    iget-object v3, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v3, v3, v2

    if-eqz v3, :cond_14f

    iget-object v3, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_14f

    move v2, v0

    .line 478
    :goto_64
    if-eqz v2, :cond_73

    iget-object v3, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_73

    iget-object v3, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_73

    move v2, v0

    .line 481
    :cond_73
    if-eqz v2, :cond_82

    iget-object v3, p0, Lbl/afm4;->tabHotRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_82

    iget-object v3, p0, Lbl/afm4;->tabHotRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_82

    move v2, v0

    .line 484
    :cond_82
    if-eqz v2, :cond_91

    iget-object v3, p0, Lbl/afm4;->tabArea:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_91

    iget-object v3, p0, Lbl/afm4;->tabArea:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_91

    move v2, v0

    .line 487
    :cond_91
    if-eqz v2, :cond_a0

    iget-object v3, p0, Lbl/afm4;->tabBangumi:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_a0

    iget-object v3, p0, Lbl/afm4;->tabBangumi:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_a0

    move v2, v0

    .line 490
    :cond_a0
    if-eqz v2, :cond_af

    iget-object v3, p0, Lbl/afm4;->tabPgc:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_af

    iget-object v3, p0, Lbl/afm4;->tabPgc:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_af

    move v2, v0

    .line 493
    :cond_af
    if-eqz v2, :cond_be

    iget-object v3, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_be

    iget-object v3, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_be

    move v2, v0

    .line 496
    :cond_be
    if-eqz v2, :cond_cd

    iget-object v3, p0, Lbl/afm4;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_cd

    iget-object v3, p0, Lbl/afm4;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_cd

    move v2, v0

    .line 499
    :cond_cd
    if-eqz v2, :cond_dc

    iget-object v3, p0, Lbl/afm4;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_dc

    iget-object v3, p0, Lbl/afm4;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_dc

    move v2, v0

    .line 502
    :cond_dc
    if-eqz v2, :cond_eb

    iget-object v3, p0, Lbl/afm4;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_eb

    iget-object v3, p0, Lbl/afm4;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_eb

    move v2, v0

    .line 505
    :cond_eb
    if-eqz v2, :cond_fa

    iget-object v3, p0, Lbl/afm4;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_fa

    iget-object v3, p0, Lbl/afm4;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_fa

    move v2, v0

    .line 508
    :cond_fa
    if-eqz v2, :cond_109

    iget-object v3, p0, Lbl/afm4;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_109

    iget-object v3, p0, Lbl/afm4;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_109

    move v2, v0

    .line 511
    :cond_109
    if-eqz v2, :cond_118

    iget-object v3, p0, Lbl/afm4;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_118

    iget-object v3, p0, Lbl/afm4;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_118

    move v2, v0

    .line 514
    :cond_118
    if-eqz v2, :cond_127

    iget-object v3, p0, Lbl/afm4;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_127

    iget-object v3, p0, Lbl/afm4;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_127

    move v2, v0

    .line 517
    :cond_127
    if-eqz v2, :cond_136

    iget-object v3, p0, Lbl/afm4;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_136

    iget-object v3, p0, Lbl/afm4;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_136

    move v2, v0

    .line 520
    :cond_136
    if-eqz v2, :cond_145

    iget-object v3, p0, Lbl/afm4;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_145

    iget-object v3, p0, Lbl/afm4;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_145

    move v2, v0

    .line 523
    :cond_145
    if-eqz v2, :cond_6

    .line 524
    iget-object v0, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->requestFocus()Z

    move v0, v1

    .line 525
    goto/16 :goto_6

    .line 472
    :cond_14f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_50

    :cond_153
    move v2, v1

    goto/16 :goto_64
.end method

.method public final b()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 436
    iget-object v1, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 460
    :cond_d
    :goto_d
    return v0

    .line 439
    :cond_e
    iget-object v1, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 442
    :cond_1a
    iget-object v1, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 445
    :cond_26
    iget-object v1, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 448
    :cond_32
    iget-object v1, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 451
    :cond_3e
    iget-object v1, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 454
    :cond_4a
    iget-object v1, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v1, v1, v0

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 457
    :cond_5a
    iget-object v1, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_66

    iget-object v1, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 460
    :cond_66
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public d_()V
    .locals 0

    .prologue
    .line 59
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

    .line 273
    iget-object v0, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_3c

    .line 274
    sget-boolean v0, Lmybl/BiliFilter;->progressbar_on:Z

    if-eqz v0, :cond_8e

    move-object v0, p1

    .line 275
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    const-string v3, "\u5173"

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    invoke-virtual {p1, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 281
    :goto_22
    sget-boolean v0, Lmybl/BiliFilter;->progressbar_on:Z

    if-nez v0, :cond_a0

    move v0, v1

    :goto_27
    sput-boolean v0, Lmybl/BiliFilter;->progressbar_on:Z

    .line 282
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "progressbar_on"

    sget-boolean v5, Lmybl/BiliFilter;->progressbar_on:Z

    .line 283
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 282
    invoke-static {v0, v3, v5}, Lbl/abd;->set_personal_config(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 285
    :cond_3c
    iget-object v0, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_6f

    .line 286
    sget-boolean v0, Lmybl/BiliFilter;->fastquit_on:Z

    if-eqz v0, :cond_a2

    move-object v0, p1

    .line 287
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    const-string v3, "\u5173"

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    invoke-virtual {p1, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 293
    :goto_55
    sget-boolean v0, Lmybl/BiliFilter;->fastquit_on:Z

    if-nez v0, :cond_b4

    move v0, v1

    :goto_5a
    sput-boolean v0, Lmybl/BiliFilter;->fastquit_on:Z

    .line 294
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

    .line 296
    :goto_70
    const/4 v0, 0x5

    if-ge v6, v0, :cond_103

    .line 297
    iget-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v0, v0, v6

    if-ne v0, p1, :cond_fe

    .line 298
    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    aget v3, v0, v6

    .line 299
    add-int/lit8 v0, v6, -0x1

    :goto_7f
    if-ltz v0, :cond_b6

    .line 300
    sget-object v5, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    add-int/lit8 v7, v0, 0x1

    sget-object v8, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    aget v8, v8, v0

    aput v8, v5, v7

    .line 299
    add-int/lit8 v0, v0, -0x1

    goto :goto_7f

    :cond_8e
    move-object v0, p1

    .line 278
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    const-string v3, "\u5f00"

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    invoke-virtual {p1, v10}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_22

    :cond_a0
    move v0, v2

    .line 281
    goto :goto_27

    :cond_a2
    move-object v0, p1

    .line 290
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    const-string v3, "\u5f00"

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    invoke-virtual {p1, v10}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_55

    :cond_b4
    move v0, v2

    .line 293
    goto :goto_5a

    .line 301
    :cond_b6
    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    aput v3, v0, v2

    .line 302
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    const-string v3, "myarea_map"

    sget-object v5, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v3, v5}, Lbl/abd;->set_personal_config(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    move v5, v2

    .line 303
    :goto_ca
    const/4 v0, 0x5

    if-ge v5, v0, :cond_fe

    .line 304
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

    .line 305
    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_ca

    .line 304
    :cond_fb
    const-string v3, ""

    goto :goto_e0

    .line 296
    :cond_fe
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_70

    .line 309
    :cond_103
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_1d8

    .line 310
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v4}, Lbl/abd;->set_home_column(Landroid/content/Context;I)V

    .line 311
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 312
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 313
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 326
    :cond_11d
    :goto_11d
    iget-object v0, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_212

    .line 327
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lbl/abd;->set_other_column(Landroid/content/Context;I)V

    .line 328
    iget-object v0, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 329
    iget-object v0, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 336
    :cond_132
    :goto_132
    iget-object v0, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_146

    iget-object v0, p0, Lbl/afm4;->tabHotRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_146

    iget-object v0, p0, Lbl/afm4;->tabArea:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_146

    iget-object v0, p0, Lbl/afm4;->tabBangumi:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_146

    iget-object v0, p0, Lbl/afm4;->tabPgc:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_16f

    .line 338
    :cond_146
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_top_tab_config(Landroid/content/Context;)I

    move-result v3

    .line 340
    iget-object v0, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_229

    move v0, v1

    .line 351
    :goto_153
    and-int v5, v3, v0

    if-eqz v5, :cond_247

    move v5, v1

    .line 353
    :goto_158
    if-eqz v5, :cond_24a

    .line 354
    xor-int/lit8 v6, v0, -0x1

    and-int/2addr v3, v6

    .line 355
    if-nez v3, :cond_2c4

    .line 361
    :goto_15f
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v0}, Lbl/abd;->set_top_tab_config(Landroid/content/Context;I)V

    move-object v0, p1

    .line 362
    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v5, :cond_24d

    move v3, v1

    :goto_16c
    invoke-direct {p0, v0, v3}, Lbl/afm4;->updateTopTabButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 365
    :cond_16f
    iget-object v0, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_250

    .line 366
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lbl/abd;->set_space_dynamic_mode(Landroid/content/Context;I)V

    .line 367
    iget-object v0, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 368
    iget-object v0, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 375
    :cond_184
    :goto_184
    iget-object v0, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1b0

    iget-object v0, p0, Lbl/afm4;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1b0

    iget-object v0, p0, Lbl/afm4;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1b0

    iget-object v0, p0, Lbl/afm4;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1b0

    iget-object v0, p0, Lbl/afm4;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1b0

    iget-object v0, p0, Lbl/afm4;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1b0

    iget-object v0, p0, Lbl/afm4;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1b0

    iget-object v0, p0, Lbl/afm4;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1b0

    iget-object v0, p0, Lbl/afm4;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1b0

    iget-object v0, p0, Lbl/afm4;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1b0

    iget-object v0, p0, Lbl/afm4;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_1d7

    .line 381
    :cond_1b0
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_player_menu_config(Landroid/content/Context;)I

    move-result v3

    .line 383
    iget-object v0, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_267

    move v0, v1

    .line 406
    :goto_1bd
    and-int v4, v3, v0

    if-eqz v4, :cond_2b5

    move v4, v1

    .line 408
    :goto_1c2
    if-eqz v4, :cond_2b8

    .line 409
    xor-int/lit8 v5, v0, -0x1

    and-int/2addr v3, v5

    .line 410
    if-nez v3, :cond_2be

    .line 416
    :goto_1c9
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v0}, Lbl/abd;->set_player_menu_config(Landroid/content/Context;I)V

    .line 417
    check-cast p1, Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v4, :cond_2bb

    :goto_1d4
    invoke-direct {p0, p1, v1}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 419
    :cond_1d7
    return-void

    .line 314
    :cond_1d8
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_1f5

    .line 315
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v3, 0x3

    invoke-static {v0, v3}, Lbl/abd;->set_home_column(Landroid/content/Context;I)V

    .line 316
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 317
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 318
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_11d

    .line 319
    :cond_1f5
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_11d

    .line 320
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v3, 0x4

    invoke-static {v0, v3}, Lbl/abd;->set_home_column(Landroid/content/Context;I)V

    .line 321
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 322
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 323
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_11d

    .line 330
    :cond_212
    iget-object v0, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_132

    .line 331
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lbl/abd;->set_other_column(Landroid/content/Context;I)V

    .line 332
    iget-object v0, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 333
    iget-object v0, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_132

    .line 342
    :cond_229
    iget-object v0, p0, Lbl/afm4;->tabHotRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_230

    move v0, v4

    .line 343
    goto/16 :goto_153

    .line 344
    :cond_230
    iget-object v0, p0, Lbl/afm4;->tabArea:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_237

    .line 345
    const/4 v0, 0x4

    goto/16 :goto_153

    .line 346
    :cond_237
    iget-object v0, p0, Lbl/afm4;->tabBangumi:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_23f

    .line 347
    const/16 v0, 0x8

    goto/16 :goto_153

    .line 348
    :cond_23f
    iget-object v0, p0, Lbl/afm4;->tabPgc:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2c7

    .line 349
    const/16 v0, 0x10

    goto/16 :goto_153

    :cond_247
    move v5, v2

    .line 351
    goto/16 :goto_158

    .line 359
    :cond_24a
    or-int/2addr v0, v3

    goto/16 :goto_15f

    :cond_24d
    move v3, v2

    .line 362
    goto/16 :goto_16c

    .line 369
    :cond_250
    iget-object v0, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_184

    .line 370
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lbl/abd;->set_space_dynamic_mode(Landroid/content/Context;I)V

    .line 371
    iget-object v0, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 372
    iget-object v0, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_184

    .line 385
    :cond_267
    iget-object v0, p0, Lbl/afm4;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_26e

    move v0, v4

    .line 386
    goto/16 :goto_1bd

    .line 387
    :cond_26e
    iget-object v0, p0, Lbl/afm4;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_275

    .line 388
    const/4 v0, 0x4

    goto/16 :goto_1bd

    .line 389
    :cond_275
    iget-object v0, p0, Lbl/afm4;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_27d

    .line 390
    const/16 v0, 0x8

    goto/16 :goto_1bd

    .line 391
    :cond_27d
    iget-object v0, p0, Lbl/afm4;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_285

    .line 392
    const/16 v0, 0x10

    goto/16 :goto_1bd

    .line 393
    :cond_285
    iget-object v0, p0, Lbl/afm4;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_28d

    .line 394
    const/16 v0, 0x20

    goto/16 :goto_1bd

    .line 395
    :cond_28d
    iget-object v0, p0, Lbl/afm4;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_295

    .line 396
    const/16 v0, 0x40

    goto/16 :goto_1bd

    .line 397
    :cond_295
    iget-object v0, p0, Lbl/afm4;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_29d

    .line 398
    const/16 v0, 0x80

    goto/16 :goto_1bd

    .line 399
    :cond_29d
    iget-object v0, p0, Lbl/afm4;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2a5

    .line 400
    const/16 v0, 0x100

    goto/16 :goto_1bd

    .line 401
    :cond_2a5
    iget-object v0, p0, Lbl/afm4;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2ad

    .line 402
    const/16 v0, 0x200

    goto/16 :goto_1bd

    .line 403
    :cond_2ad
    iget-object v0, p0, Lbl/afm4;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2c1

    .line 404
    const/16 v0, 0x400

    goto/16 :goto_1bd

    :cond_2b5
    move v4, v2

    .line 406
    goto/16 :goto_1c2

    .line 414
    :cond_2b8
    or-int/2addr v0, v3

    goto/16 :goto_1c9

    :cond_2bb
    move v1, v2

    .line 417
    goto/16 :goto_1d4

    :cond_2be
    move v0, v3

    goto/16 :goto_1c9

    :cond_2c1
    move v0, v2

    goto/16 :goto_1bd

    :cond_2c4
    move v0, v3

    goto/16 :goto_15f

    :cond_2c7
    move v0, v2

    goto/16 :goto_153
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .prologue
    const v9, 0x7f0700f0

    const v8, 0x7f0700ef

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v7, 0x7f0700e8

    .line 63
    const-string v0, "inflater"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    const v0, 0x7f0a008a

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 65
    const v0, 0x7f08017a

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 66
    const v0, 0x7f08017b

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 67
    iget-object v3, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    const v0, 0x7f08017e

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    aput-object v0, v3, v2

    .line 68
    iget-object v3, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    const v0, 0x7f08017f

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    aput-object v0, v3, v1

    .line 69
    iget-object v3, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    const/4 v5, 0x2

    const v0, 0x7f080180

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    aput-object v0, v3, v5

    .line 70
    iget-object v3, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    const/4 v5, 0x3

    const v0, 0x7f080181

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    aput-object v0, v3, v5

    .line 71
    iget-object v3, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    const/4 v5, 0x4

    const v0, 0x7f080182

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    aput-object v0, v3, v5

    .line 73
    iget-object v0, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 74
    iget-object v0, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 75
    iget-object v0, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 76
    iget-object v0, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 77
    sget-boolean v0, Lmybl/BiliFilter;->progressbar_on:Z

    if-eqz v0, :cond_9b

    .line 78
    iget-object v0, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    const-string v3, "\u5f00"

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 81
    :cond_9b
    sget-boolean v0, Lmybl/BiliFilter;->fastquit_on:Z

    if-eqz v0, :cond_b1

    .line 82
    iget-object v0, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    const-string v3, "\u5f00"

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 85
    :cond_b1
    iget-object v0, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v3, v2

    .line 87
    :goto_bc
    const/4 v0, 0x5

    if-ge v3, v0, :cond_ed

    .line 88
    iget-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v0, v0, v3

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 89
    iget-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v0, v0, v3

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 90
    iget-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v0, v0, v3

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
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

    .line 87
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_bc

    .line 94
    :cond_ed
    const v0, 0x7f0801b9

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 95
    const v0, 0x7f0801ba

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 96
    const v0, 0x7f0801bb

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 97
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 98
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 99
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 100
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 101
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 102
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 103
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_home_column(Landroid/content/Context;)I

    move-result v0

    .line 108
    const/4 v3, 0x2

    if-ne v0, v3, :cond_445

    .line 109
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 110
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 111
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 122
    :goto_155
    const v0, 0x7f0801d9

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 123
    const v0, 0x7f0801da

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 124
    iget-object v0, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 125
    iget-object v0, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 126
    iget-object v0, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 127
    iget-object v0, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 128
    iget-object v0, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_other_column(Landroid/content/Context;)I

    move-result v0

    .line 132
    if-nez v0, :cond_46a

    .line 133
    iget-object v0, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 134
    iget-object v0, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 140
    :goto_19d
    const v0, 0x7f0801bc

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 141
    const v0, 0x7f0801bd

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->tabHotRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 142
    const v0, 0x7f0801be

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->tabArea:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 143
    const v0, 0x7f0801bf

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->tabBangumi:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 144
    const v0, 0x7f0801c0

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->tabPgc:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 146
    iget-object v0, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 147
    iget-object v0, p0, Lbl/afm4;->tabHotRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 148
    iget-object v0, p0, Lbl/afm4;->tabArea:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 149
    iget-object v0, p0, Lbl/afm4;->tabBangumi:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 150
    iget-object v0, p0, Lbl/afm4;->tabPgc:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 152
    iget-object v0, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 153
    iget-object v0, p0, Lbl/afm4;->tabHotRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 154
    iget-object v0, p0, Lbl/afm4;->tabArea:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 155
    iget-object v0, p0, Lbl/afm4;->tabBangumi:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 156
    iget-object v0, p0, Lbl/afm4;->tabPgc:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 158
    iget-object v0, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lbl/afm4;->tabHotRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lbl/afm4;->tabArea:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lbl/afm4;->tabBangumi:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lbl/afm4;->tabPgc:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_top_tab_config(Landroid/content/Context;)I

    move-result v3

    .line 165
    iget-object v5, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_476

    move v0, v1

    :goto_22e
    invoke-direct {p0, v5, v0}, Lbl/afm4;->updateTopTabButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 166
    iget-object v5, p0, Lbl/afm4;->tabHotRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_479

    move v0, v1

    :goto_238
    invoke-direct {p0, v5, v0}, Lbl/afm4;->updateTopTabButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 167
    iget-object v5, p0, Lbl/afm4;->tabArea:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_47c

    move v0, v1

    :goto_242
    invoke-direct {p0, v5, v0}, Lbl/afm4;->updateTopTabButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 168
    iget-object v5, p0, Lbl/afm4;->tabBangumi:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v3, 0x8

    if-eqz v0, :cond_47f

    move v0, v1

    :goto_24c
    invoke-direct {p0, v5, v0}, Lbl/afm4;->updateTopTabButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 169
    iget-object v5, p0, Lbl/afm4;->tabPgc:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v3, 0x10

    if-eqz v0, :cond_482

    move v0, v1

    :goto_256
    invoke-direct {p0, v5, v0}, Lbl/afm4;->updateTopTabButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 171
    const v0, 0x7f0801eb

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 172
    const v0, 0x7f0801ec

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 173
    iget-object v0, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 174
    iget-object v0, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 175
    iget-object v0, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 176
    iget-object v0, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 177
    iget-object v0, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_29d

    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v0

    if-eqz v0, :cond_29d

    .line 182
    :cond_29d
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_space_dynamic_mode(Landroid/content/Context;)I

    move-result v0

    .line 183
    if-nez v0, :cond_485

    .line 184
    iget-object v0, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 185
    iget-object v0, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 191
    :goto_2b1
    const v0, 0x7f0801f8

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 192
    const v0, 0x7f0801f9

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 193
    const v0, 0x7f0801fa

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 194
    const v0, 0x7f0801fb

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 195
    const v0, 0x7f0801fc

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 196
    const v0, 0x7f0801fd

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 197
    const v0, 0x7f0801fe

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 198
    const v0, 0x7f0801ff

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 199
    const v0, 0x7f080200

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 200
    const v0, 0x7f080201

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 201
    const v0, 0x7f08020c

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 203
    iget-object v0, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 204
    iget-object v0, p0, Lbl/afm4;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 205
    iget-object v0, p0, Lbl/afm4;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 206
    iget-object v0, p0, Lbl/afm4;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 207
    iget-object v0, p0, Lbl/afm4;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 208
    iget-object v0, p0, Lbl/afm4;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 209
    iget-object v0, p0, Lbl/afm4;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 210
    iget-object v0, p0, Lbl/afm4;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 211
    iget-object v0, p0, Lbl/afm4;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 212
    iget-object v0, p0, Lbl/afm4;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 213
    iget-object v0, p0, Lbl/afm4;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 215
    iget-object v0, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 216
    iget-object v0, p0, Lbl/afm4;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 217
    iget-object v0, p0, Lbl/afm4;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 218
    iget-object v0, p0, Lbl/afm4;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 219
    iget-object v0, p0, Lbl/afm4;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 220
    iget-object v0, p0, Lbl/afm4;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 221
    iget-object v0, p0, Lbl/afm4;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 222
    iget-object v0, p0, Lbl/afm4;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 223
    iget-object v0, p0, Lbl/afm4;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 224
    iget-object v0, p0, Lbl/afm4;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 225
    iget-object v0, p0, Lbl/afm4;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 227
    iget-object v0, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v0, p0, Lbl/afm4;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v0, p0, Lbl/afm4;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v0, p0, Lbl/afm4;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v0, p0, Lbl/afm4;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v0, p0, Lbl/afm4;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v0, p0, Lbl/afm4;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v0, p0, Lbl/afm4;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p0, Lbl/afm4;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v0, p0, Lbl/afm4;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v0, p0, Lbl/afm4;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_player_menu_config(Landroid/content/Context;)I

    move-result v3

    .line 240
    iget-object v5, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_491

    move v0, v1

    :goto_3de
    invoke-direct {p0, v5, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 241
    iget-object v5, p0, Lbl/afm4;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_494

    move v0, v1

    :goto_3e8
    invoke-direct {p0, v5, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 242
    iget-object v5, p0, Lbl/afm4;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_497

    move v0, v1

    :goto_3f2
    invoke-direct {p0, v5, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 243
    iget-object v5, p0, Lbl/afm4;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v3, 0x8

    if-eqz v0, :cond_49a

    move v0, v1

    :goto_3fc
    invoke-direct {p0, v5, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 244
    iget-object v5, p0, Lbl/afm4;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v3, 0x10

    if-eqz v0, :cond_49d

    move v0, v1

    :goto_406
    invoke-direct {p0, v5, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 245
    iget-object v5, p0, Lbl/afm4;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v3, 0x20

    if-eqz v0, :cond_4a0

    move v0, v1

    :goto_410
    invoke-direct {p0, v5, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 246
    iget-object v5, p0, Lbl/afm4;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v3, 0x40

    if-eqz v0, :cond_4a3

    move v0, v1

    :goto_41a
    invoke-direct {p0, v5, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 247
    iget-object v5, p0, Lbl/afm4;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_4a6

    move v0, v1

    :goto_424
    invoke-direct {p0, v5, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 248
    iget-object v5, p0, Lbl/afm4;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit16 v0, v3, 0x100

    if-eqz v0, :cond_4a9

    move v0, v1

    :goto_42e
    invoke-direct {p0, v5, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 249
    iget-object v5, p0, Lbl/afm4;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit16 v0, v3, 0x200

    if-eqz v0, :cond_4ab

    move v0, v1

    :goto_438
    invoke-direct {p0, v5, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 250
    iget-object v0, p0, Lbl/afm4;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_4ad

    :goto_441
    invoke-direct {p0, v0, v1}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 252
    return-object v4

    .line 112
    :cond_445
    const/4 v3, 0x3

    if-ne v0, v3, :cond_459

    .line 113
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 114
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 115
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_155

    .line 117
    :cond_459
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 118
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 119
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_155

    .line 136
    :cond_46a
    iget-object v0, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 137
    iget-object v0, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_19d

    :cond_476
    move v0, v2

    .line 165
    goto/16 :goto_22e

    :cond_479
    move v0, v2

    .line 166
    goto/16 :goto_238

    :cond_47c
    move v0, v2

    .line 167
    goto/16 :goto_242

    :cond_47f
    move v0, v2

    .line 168
    goto/16 :goto_24c

    :cond_482
    move v0, v2

    .line 169
    goto/16 :goto_256

    .line 187
    :cond_485
    iget-object v0, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 188
    iget-object v0, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_2b1

    :cond_491
    move v0, v2

    .line 240
    goto/16 :goto_3de

    :cond_494
    move v0, v2

    .line 241
    goto/16 :goto_3e8

    :cond_497
    move v0, v2

    .line 242
    goto/16 :goto_3f2

    :cond_49a
    move v0, v2

    .line 243
    goto/16 :goto_3fc

    :cond_49d
    move v0, v2

    .line 244
    goto/16 :goto_406

    :cond_4a0
    move v0, v2

    .line 245
    goto/16 :goto_410

    :cond_4a3
    move v0, v2

    .line 246
    goto/16 :goto_41a

    :cond_4a6
    move v0, v2

    .line 247
    goto/16 :goto_424

    :cond_4a9
    move v0, v2

    .line 248
    goto :goto_42e

    :cond_4ab
    move v0, v2

    .line 249
    goto :goto_438

    :cond_4ad
    move v1, v2

    .line 250
    goto :goto_441
.end method

.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 423
    if-eqz p2, :cond_4c

    move-object v0, p1

    .line 424
    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpEnabled(Z)V

    :goto_a
    move v2, v3

    .line 428
    :goto_b
    const/4 v0, 0x5

    if-ge v2, v0, :cond_56

    .line 429
    iget-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v0, v0, v2

    if-ne v0, p1, :cond_48

    iget-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 430
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

    .line 431
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    :cond_48
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_b

    :cond_4c
    move-object v0, p1

    .line 426
    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpEnabled(Z)V

    goto :goto_a

    .line 430
    :cond_53
    const-string v1, ""

    goto :goto_31

    .line 433
    :cond_56
    return-void
.end method
