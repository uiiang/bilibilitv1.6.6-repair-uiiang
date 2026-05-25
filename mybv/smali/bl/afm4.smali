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
    .line 302
    if-eqz p2, :cond_9

    .line 303
    const v0, 0x7f0700f0

    invoke-virtual {p1, v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 307
    :goto_8
    return-void

    .line 305
    :cond_9
    const v0, 0x7f0700ef

    invoke-virtual {p1, v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto :goto_8
.end method

.method private updateTopTabButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V
    .locals 1

    .prologue
    .line 294
    if-eqz p2, :cond_9

    .line 295
    const v0, 0x7f0700f0

    invoke-virtual {p1, v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 299
    :goto_8
    return-void

    .line 297
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

    .line 523
    iget-object v2, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v2, :cond_7

    .line 597
    :cond_6
    :goto_6
    return v0

    .line 526
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

    .line 527
    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lbl/afm4;->recommendApiWebButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 528
    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lbl/afm4;->recommendApiAppButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 529
    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 530
    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v0

    .line 532
    :goto_60
    const/4 v3, 0x7

    if-ge v2, v3, :cond_190

    .line 533
    iget-object v3, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v3, v3, v2

    if-eqz v3, :cond_18c

    iget-object v3, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_18c

    move v2, v0

    .line 538
    :goto_74
    if-eqz v2, :cond_83

    iget-object v3, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_83

    iget-object v3, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_83

    move v2, v0

    .line 541
    :cond_83
    if-eqz v2, :cond_92

    iget-object v3, p0, Lbl/afm4;->tabHotRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_92

    iget-object v3, p0, Lbl/afm4;->tabHotRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_92

    move v2, v0

    .line 544
    :cond_92
    if-eqz v2, :cond_a1

    iget-object v3, p0, Lbl/afm4;->tabLive:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_a1

    iget-object v3, p0, Lbl/afm4;->tabLive:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_a1

    move v2, v0

    .line 547
    :cond_a1
    if-eqz v2, :cond_b0

    iget-object v3, p0, Lbl/afm4;->tabArea:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_b0

    iget-object v3, p0, Lbl/afm4;->tabArea:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_b0

    move v2, v0

    .line 550
    :cond_b0
    if-eqz v2, :cond_bf

    iget-object v3, p0, Lbl/afm4;->tabBangumi:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_bf

    iget-object v3, p0, Lbl/afm4;->tabBangumi:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_bf

    move v2, v0

    .line 553
    :cond_bf
    if-eqz v2, :cond_ce

    iget-object v3, p0, Lbl/afm4;->tabPgc:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_ce

    iget-object v3, p0, Lbl/afm4;->tabPgc:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_ce

    move v2, v0

    .line 556
    :cond_ce
    if-eqz v2, :cond_dd

    iget-object v3, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_dd

    iget-object v3, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_dd

    move v2, v0

    .line 559
    :cond_dd
    if-eqz v2, :cond_ec

    iget-object v3, p0, Lbl/afm4;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_ec

    iget-object v3, p0, Lbl/afm4;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_ec

    move v2, v0

    .line 562
    :cond_ec
    if-eqz v2, :cond_fb

    iget-object v3, p0, Lbl/afm4;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_fb

    iget-object v3, p0, Lbl/afm4;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_fb

    move v2, v0

    .line 565
    :cond_fb
    if-eqz v2, :cond_10a

    iget-object v3, p0, Lbl/afm4;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_10a

    iget-object v3, p0, Lbl/afm4;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_10a

    move v2, v0

    .line 568
    :cond_10a
    if-eqz v2, :cond_119

    iget-object v3, p0, Lbl/afm4;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_119

    iget-object v3, p0, Lbl/afm4;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_119

    move v2, v0

    .line 571
    :cond_119
    if-eqz v2, :cond_128

    iget-object v3, p0, Lbl/afm4;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_128

    iget-object v3, p0, Lbl/afm4;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_128

    move v2, v0

    .line 574
    :cond_128
    if-eqz v2, :cond_137

    iget-object v3, p0, Lbl/afm4;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_137

    iget-object v3, p0, Lbl/afm4;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_137

    move v2, v0

    .line 577
    :cond_137
    if-eqz v2, :cond_146

    iget-object v3, p0, Lbl/afm4;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_146

    iget-object v3, p0, Lbl/afm4;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_146

    move v2, v0

    .line 580
    :cond_146
    if-eqz v2, :cond_155

    iget-object v3, p0, Lbl/afm4;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_155

    iget-object v3, p0, Lbl/afm4;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_155

    move v2, v0

    .line 583
    :cond_155
    if-eqz v2, :cond_164

    iget-object v3, p0, Lbl/afm4;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_164

    iget-object v3, p0, Lbl/afm4;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_164

    move v2, v0

    .line 586
    :cond_164
    if-eqz v2, :cond_173

    iget-object v3, p0, Lbl/afm4;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_173

    iget-object v3, p0, Lbl/afm4;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_173

    move v2, v0

    .line 589
    :cond_173
    if-eqz v2, :cond_182

    iget-object v3, p0, Lbl/afm4;->menuSubtitleSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v3, :cond_182

    iget-object v3, p0, Lbl/afm4;->menuSubtitleSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_182

    move v2, v0

    .line 592
    :cond_182
    if-eqz v2, :cond_6

    .line 593
    iget-object v0, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->requestFocus()Z

    move v0, v1

    .line 594
    goto/16 :goto_6

    .line 532
    :cond_18c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_60

    :cond_190
    move v2, v1

    goto/16 :goto_74
.end method

.method public final b()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 489
    iget-object v1, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 519
    :cond_d
    :goto_d
    return v0

    .line 492
    :cond_e
    iget-object v1, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 504
    :cond_1a
    iget-object v1, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 507
    :cond_26
    iget-object v1, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 510
    :cond_32
    iget-object v1, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 513
    :cond_3e
    iget-object v1, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v1, v1, v0

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 516
    :cond_4e
    iget-object v1, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 519
    :cond_5a
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public d_()V
    .locals 0

    .prologue
    .line 64
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

    .line 311
    iget-object v0, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_3c

    .line 312
    sget-boolean v0, Lmybl/BiliFilter;->progressbar_on:Z

    if-eqz v0, :cond_8e

    move-object v0, p1

    .line 313
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    const-string v3, "\u5173"

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    invoke-virtual {p1, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 319
    :goto_22
    sget-boolean v0, Lmybl/BiliFilter;->progressbar_on:Z

    if-nez v0, :cond_a0

    move v0, v1

    :goto_27
    sput-boolean v0, Lmybl/BiliFilter;->progressbar_on:Z

    .line 320
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "progressbar_on"

    sget-boolean v5, Lmybl/BiliFilter;->progressbar_on:Z

    .line 321
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 320
    invoke-static {v0, v3, v5}, Lbl/abd;->set_personal_config(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 323
    :cond_3c
    iget-object v0, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_6f

    .line 324
    sget-boolean v0, Lmybl/BiliFilter;->fastquit_on:Z

    if-eqz v0, :cond_a2

    move-object v0, p1

    .line 325
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    const-string v3, "\u5173"

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    invoke-virtual {p1, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 331
    :goto_55
    sget-boolean v0, Lmybl/BiliFilter;->fastquit_on:Z

    if-nez v0, :cond_b4

    move v0, v1

    :goto_5a
    sput-boolean v0, Lmybl/BiliFilter;->fastquit_on:Z

    .line 332
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

    .line 334
    :goto_70
    const/4 v0, 0x7

    if-ge v6, v0, :cond_103

    .line 335
    iget-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v0, v0, v6

    if-ne v0, p1, :cond_fe

    .line 336
    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    aget v3, v0, v6

    .line 337
    add-int/lit8 v0, v6, -0x1

    :goto_7f
    if-ltz v0, :cond_b6

    .line 338
    sget-object v5, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    add-int/lit8 v7, v0, 0x1

    sget-object v8, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    aget v8, v8, v0

    aput v8, v5, v7

    .line 337
    add-int/lit8 v0, v0, -0x1

    goto :goto_7f

    :cond_8e
    move-object v0, p1

    .line 316
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    const-string v3, "\u5f00"

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    invoke-virtual {p1, v10}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_22

    :cond_a0
    move v0, v2

    .line 319
    goto :goto_27

    :cond_a2
    move-object v0, p1

    .line 328
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    const-string v3, "\u5f00"

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    invoke-virtual {p1, v10}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_55

    :cond_b4
    move v0, v2

    .line 331
    goto :goto_5a

    .line 339
    :cond_b6
    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    aput v3, v0, v2

    .line 340
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    const-string v3, "myarea_map"

    sget-object v5, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v3, v5}, Lbl/abd;->set_personal_config(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    move v5, v2

    .line 341
    :goto_ca
    const/4 v0, 0x7

    if-ge v5, v0, :cond_fe

    .line 342
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

    .line 343
    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_ca

    .line 342
    :cond_fb
    const-string v3, ""

    goto :goto_e0

    .line 334
    :cond_fe
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_70

    .line 347
    :cond_103
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_1f5

    .line 348
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v4}, Lbl/abd;->set_home_column(Landroid/content/Context;I)V

    .line 349
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 350
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 351
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 364
    :cond_11d
    :goto_11d
    iget-object v0, p0, Lbl/afm4;->recommendApiWebButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_22f

    .line 365
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lbl/abd;->set_recommend_api_type(Landroid/content/Context;I)V

    .line 366
    iget-object v0, p0, Lbl/afm4;->recommendApiWebButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 367
    iget-object v0, p0, Lbl/afm4;->recommendApiAppButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 374
    :cond_132
    :goto_132
    iget-object v0, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_246

    .line 375
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lbl/abd;->set_other_column(Landroid/content/Context;I)V

    .line 376
    iget-object v0, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 377
    iget-object v0, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 384
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

    .line 387
    :cond_15f
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_top_tab_config(Landroid/content/Context;)I

    move-result v3

    .line 389
    iget-object v0, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_25d

    move v0, v1

    .line 402
    :goto_16c
    and-int v5, v3, v0

    if-eqz v5, :cond_283

    move v5, v1

    .line 404
    :goto_171
    if-eqz v5, :cond_286

    .line 405
    xor-int/lit8 v6, v0, -0x1

    and-int/2addr v3, v6

    .line 406
    if-nez v3, :cond_308

    .line 412
    :goto_178
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v0}, Lbl/abd;->set_top_tab_config(Landroid/content/Context;I)V

    move-object v0, p1

    .line 413
    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v5, :cond_289

    move v3, v1

    :goto_185
    invoke-direct {p0, v0, v3}, Lbl/afm4;->updateTopTabButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 416
    :cond_188
    iget-object v0, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_28c

    .line 417
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lbl/abd;->set_space_dynamic_mode(Landroid/content/Context;I)V

    .line 418
    iget-object v0, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 419
    iget-object v0, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 426
    :cond_19d
    :goto_19d
    iget-object v0, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1cd

    iget-object v0, p0, Lbl/afm4;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1cd

    iget-object v0, p0, Lbl/afm4;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1cd

    iget-object v0, p0, Lbl/afm4;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1cd

    iget-object v0, p0, Lbl/afm4;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1cd

    iget-object v0, p0, Lbl/afm4;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1cd

    iget-object v0, p0, Lbl/afm4;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1cd

    iget-object v0, p0, Lbl/afm4;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1cd

    iget-object v0, p0, Lbl/afm4;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1cd

    iget-object v0, p0, Lbl/afm4;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1cd

    iget-object v0, p0, Lbl/afm4;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eq p1, v0, :cond_1cd

    iget-object v0, p0, Lbl/afm4;->menuSubtitleSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_1f4

    .line 432
    :cond_1cd
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_player_menu_config(Landroid/content/Context;)I

    move-result v3

    .line 434
    iget-object v0, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2a3

    move v0, v1

    .line 459
    :goto_1da
    and-int v4, v3, v0

    if-eqz v4, :cond_2f9

    move v4, v1

    .line 461
    :goto_1df
    if-eqz v4, :cond_2fc

    .line 462
    xor-int/lit8 v5, v0, -0x1

    and-int/2addr v3, v5

    .line 463
    if-nez v3, :cond_302

    .line 469
    :goto_1e6
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v0}, Lbl/abd;->set_player_menu_config(Landroid/content/Context;I)V

    .line 470
    check-cast p1, Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v4, :cond_2ff

    :goto_1f1
    invoke-direct {p0, p1, v1}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 472
    :cond_1f4
    return-void

    .line 352
    :cond_1f5
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_212

    .line 353
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v3, 0x3

    invoke-static {v0, v3}, Lbl/abd;->set_home_column(Landroid/content/Context;I)V

    .line 354
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 355
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 356
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_11d

    .line 357
    :cond_212
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_11d

    .line 358
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v3, 0x4

    invoke-static {v0, v3}, Lbl/abd;->set_home_column(Landroid/content/Context;I)V

    .line 359
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 360
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 361
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_11d

    .line 368
    :cond_22f
    iget-object v0, p0, Lbl/afm4;->recommendApiAppButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_132

    .line 369
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lbl/abd;->set_recommend_api_type(Landroid/content/Context;I)V

    .line 370
    iget-object v0, p0, Lbl/afm4;->recommendApiWebButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 371
    iget-object v0, p0, Lbl/afm4;->recommendApiAppButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_132

    .line 378
    :cond_246
    iget-object v0, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_147

    .line 379
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lbl/abd;->set_other_column(Landroid/content/Context;I)V

    .line 380
    iget-object v0, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 381
    iget-object v0, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_147

    .line 391
    :cond_25d
    iget-object v0, p0, Lbl/afm4;->tabHotRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_264

    move v0, v4

    .line 392
    goto/16 :goto_16c

    .line 393
    :cond_264
    iget-object v0, p0, Lbl/afm4;->tabLive:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_26b

    .line 394
    const/4 v0, 0x4

    goto/16 :goto_16c

    .line 395
    :cond_26b
    iget-object v0, p0, Lbl/afm4;->tabArea:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_273

    .line 396
    const/16 v0, 0x8

    goto/16 :goto_16c

    .line 397
    :cond_273
    iget-object v0, p0, Lbl/afm4;->tabBangumi:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_27b

    .line 398
    const/16 v0, 0x10

    goto/16 :goto_16c

    .line 399
    :cond_27b
    iget-object v0, p0, Lbl/afm4;->tabPgc:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_30b

    .line 400
    const/16 v0, 0x20

    goto/16 :goto_16c

    :cond_283
    move v5, v2

    .line 402
    goto/16 :goto_171

    .line 410
    :cond_286
    or-int/2addr v0, v3

    goto/16 :goto_178

    :cond_289
    move v3, v2

    .line 413
    goto/16 :goto_185

    .line 420
    :cond_28c
    iget-object v0, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_19d

    .line 421
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lbl/abd;->set_space_dynamic_mode(Landroid/content/Context;I)V

    .line 422
    iget-object v0, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 423
    iget-object v0, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_19d

    .line 436
    :cond_2a3
    iget-object v0, p0, Lbl/afm4;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2aa

    move v0, v4

    .line 437
    goto/16 :goto_1da

    .line 438
    :cond_2aa
    iget-object v0, p0, Lbl/afm4;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2b1

    .line 439
    const/4 v0, 0x4

    goto/16 :goto_1da

    .line 440
    :cond_2b1
    iget-object v0, p0, Lbl/afm4;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2b9

    .line 441
    const/16 v0, 0x8

    goto/16 :goto_1da

    .line 442
    :cond_2b9
    iget-object v0, p0, Lbl/afm4;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2c1

    .line 443
    const/16 v0, 0x10

    goto/16 :goto_1da

    .line 444
    :cond_2c1
    iget-object v0, p0, Lbl/afm4;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2c9

    .line 445
    const/16 v0, 0x20

    goto/16 :goto_1da

    .line 446
    :cond_2c9
    iget-object v0, p0, Lbl/afm4;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2d1

    .line 447
    const/16 v0, 0x40

    goto/16 :goto_1da

    .line 448
    :cond_2d1
    iget-object v0, p0, Lbl/afm4;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2d9

    .line 449
    const/16 v0, 0x80

    goto/16 :goto_1da

    .line 450
    :cond_2d9
    iget-object v0, p0, Lbl/afm4;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2e1

    .line 451
    const/16 v0, 0x100

    goto/16 :goto_1da

    .line 452
    :cond_2e1
    iget-object v0, p0, Lbl/afm4;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2e9

    .line 453
    const/16 v0, 0x200

    goto/16 :goto_1da

    .line 454
    :cond_2e9
    iget-object v0, p0, Lbl/afm4;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2f1

    .line 455
    const/16 v0, 0x400

    goto/16 :goto_1da

    .line 456
    :cond_2f1
    iget-object v0, p0, Lbl/afm4;->menuSubtitleSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_305

    .line 457
    const/16 v0, 0x1000

    goto/16 :goto_1da

    :cond_2f9
    move v4, v2

    .line 459
    goto/16 :goto_1df

    .line 467
    :cond_2fc
    or-int/2addr v0, v3

    goto/16 :goto_1e6

    :cond_2ff
    move v1, v2

    .line 470
    goto/16 :goto_1f1

    :cond_302
    move v0, v3

    goto/16 :goto_1e6

    :cond_305
    move v0, v2

    goto/16 :goto_1da

    :cond_308
    move v0, v3

    goto/16 :goto_178

    :cond_30b
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

    .line 68
    const-string v0, "inflater"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    const v0, 0x7f0a008a

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 70
    const v0, 0x7f08017a

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 71
    const v0, 0x7f08017b

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 72
    iget-object v3, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    const v0, 0x7f08017e

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    aput-object v0, v3, v2

    .line 73
    iget-object v3, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    const v0, 0x7f08017f

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    aput-object v0, v3, v1

    .line 74
    iget-object v3, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    const/4 v5, 0x2

    const v0, 0x7f080180

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    aput-object v0, v3, v5

    .line 75
    iget-object v3, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    const/4 v5, 0x3

    const v0, 0x7f080181

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    aput-object v0, v3, v5

    .line 76
    iget-object v3, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    const/4 v5, 0x4

    const v0, 0x7f080182

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    aput-object v0, v3, v5

    .line 77
    iget-object v3, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    const/4 v5, 0x5

    const v0, 0x7f080183

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    aput-object v0, v3, v5

    .line 78
    iget-object v3, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    const/4 v5, 0x6

    const v0, 0x7f08022d

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    aput-object v0, v3, v5

    .line 80
    iget-object v0, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 81
    iget-object v0, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 82
    iget-object v0, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 83
    iget-object v0, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 84
    sget-boolean v0, Lmybl/BiliFilter;->progressbar_on:Z

    if-eqz v0, :cond_b7

    .line 85
    iget-object v0, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    const-string v3, "\u5f00"

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 88
    :cond_b7
    sget-boolean v0, Lmybl/BiliFilter;->fastquit_on:Z

    if-eqz v0, :cond_cd

    .line 89
    iget-object v0, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    const-string v3, "\u5f00"

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 92
    :cond_cd
    iget-object v0, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v3, v2

    .line 94
    :goto_d8
    const/4 v0, 0x7

    if-ge v3, v0, :cond_109

    .line 95
    iget-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v0, v0, v3

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 96
    iget-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v0, v0, v3

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 97
    iget-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v0, v0, v3

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
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

    .line 94
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_d8

    .line 101
    :cond_109
    const v0, 0x7f0801b9

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 102
    const v0, 0x7f0801ba

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 103
    const v0, 0x7f0801bb

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 104
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 105
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 106
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 107
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 108
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 109
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 110
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_home_column(Landroid/content/Context;)I

    move-result v0

    .line 115
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4f1

    .line 116
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 117
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 118
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 129
    :goto_171
    const v0, 0x7f080230

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->recommendApiWebButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 130
    const v0, 0x7f080231

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->recommendApiAppButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 132
    iget-object v0, p0, Lbl/afm4;->recommendApiWebButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 133
    iget-object v0, p0, Lbl/afm4;->recommendApiAppButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 135
    iget-object v0, p0, Lbl/afm4;->recommendApiWebButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 136
    iget-object v0, p0, Lbl/afm4;->recommendApiAppButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 138
    iget-object v0, p0, Lbl/afm4;->recommendApiWebButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lbl/afm4;->recommendApiAppButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_recommend_api_type(Landroid/content/Context;)I

    move-result v0

    .line 142
    if-nez v0, :cond_516

    .line 143
    iget-object v0, p0, Lbl/afm4;->recommendApiWebButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 144
    iget-object v0, p0, Lbl/afm4;->recommendApiAppButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 150
    :goto_1b9
    const v0, 0x7f0801d9

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 151
    const v0, 0x7f0801da

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 152
    iget-object v0, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 153
    iget-object v0, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 154
    iget-object v0, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 155
    iget-object v0, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 156
    iget-object v0, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_other_column(Landroid/content/Context;)I

    move-result v0

    .line 160
    if-nez v0, :cond_522

    .line 161
    iget-object v0, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 162
    iget-object v0, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 168
    :goto_201
    const v0, 0x7f0801bc

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 169
    const v0, 0x7f0801bd

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->tabHotRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 170
    const v0, 0x7f08021c

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->tabLive:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 171
    const v0, 0x7f0801be

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->tabArea:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 172
    const v0, 0x7f0801bf

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->tabBangumi:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 173
    const v0, 0x7f0801c0

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->tabPgc:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 175
    iget-object v0, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 176
    iget-object v0, p0, Lbl/afm4;->tabHotRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 177
    iget-object v0, p0, Lbl/afm4;->tabLive:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 178
    iget-object v0, p0, Lbl/afm4;->tabArea:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 179
    iget-object v0, p0, Lbl/afm4;->tabBangumi:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 180
    iget-object v0, p0, Lbl/afm4;->tabPgc:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 182
    iget-object v0, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 183
    iget-object v0, p0, Lbl/afm4;->tabHotRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 184
    iget-object v0, p0, Lbl/afm4;->tabLive:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 185
    iget-object v0, p0, Lbl/afm4;->tabArea:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 186
    iget-object v0, p0, Lbl/afm4;->tabBangumi:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 187
    iget-object v0, p0, Lbl/afm4;->tabPgc:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 189
    iget-object v0, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lbl/afm4;->tabHotRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v0, p0, Lbl/afm4;->tabLive:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v0, p0, Lbl/afm4;->tabArea:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v0, p0, Lbl/afm4;->tabBangumi:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Lbl/afm4;->tabPgc:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_top_tab_config(Landroid/content/Context;)I

    move-result v3

    .line 197
    iget-object v5, p0, Lbl/afm4;->tabPersonalRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_52e

    move v0, v1

    :goto_2ac
    invoke-direct {p0, v5, v0}, Lbl/afm4;->updateTopTabButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 198
    iget-object v5, p0, Lbl/afm4;->tabHotRecommend:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_531

    move v0, v1

    :goto_2b6
    invoke-direct {p0, v5, v0}, Lbl/afm4;->updateTopTabButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 199
    iget-object v5, p0, Lbl/afm4;->tabLive:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_534

    move v0, v1

    :goto_2c0
    invoke-direct {p0, v5, v0}, Lbl/afm4;->updateTopTabButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 200
    iget-object v5, p0, Lbl/afm4;->tabArea:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v3, 0x8

    if-eqz v0, :cond_537

    move v0, v1

    :goto_2ca
    invoke-direct {p0, v5, v0}, Lbl/afm4;->updateTopTabButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 201
    iget-object v5, p0, Lbl/afm4;->tabBangumi:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v3, 0x10

    if-eqz v0, :cond_53a

    move v0, v1

    :goto_2d4
    invoke-direct {p0, v5, v0}, Lbl/afm4;->updateTopTabButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 202
    iget-object v5, p0, Lbl/afm4;->tabPgc:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v3, 0x20

    if-eqz v0, :cond_53d

    move v0, v1

    :goto_2de
    invoke-direct {p0, v5, v0}, Lbl/afm4;->updateTopTabButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 204
    const v0, 0x7f0801eb

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 205
    const v0, 0x7f0801ec

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 206
    iget-object v0, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 207
    iget-object v0, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 208
    iget-object v0, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 209
    iget-object v0, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 210
    iget-object v0, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v0, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_325

    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v0

    if-eqz v0, :cond_325

    .line 215
    :cond_325
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_space_dynamic_mode(Landroid/content/Context;)I

    move-result v0

    .line 216
    if-nez v0, :cond_540

    .line 217
    iget-object v0, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 218
    iget-object v0, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 224
    :goto_339
    const v0, 0x7f0801f8

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 225
    const v0, 0x7f0801f9

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 226
    const v0, 0x7f0801fa

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 227
    const v0, 0x7f0801fb

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 228
    const v0, 0x7f0801fc

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 229
    const v0, 0x7f0801fd

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 230
    const v0, 0x7f0801fe

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 231
    const v0, 0x7f0801ff

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 232
    const v0, 0x7f080200

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 233
    const v0, 0x7f080201

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 234
    const v0, 0x7f08020c

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 235
    const v0, 0x7f08022a

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->menuSubtitleSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 237
    iget-object v0, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 238
    iget-object v0, p0, Lbl/afm4;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 239
    iget-object v0, p0, Lbl/afm4;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 240
    iget-object v0, p0, Lbl/afm4;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 241
    iget-object v0, p0, Lbl/afm4;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 242
    iget-object v0, p0, Lbl/afm4;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 243
    iget-object v0, p0, Lbl/afm4;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 244
    iget-object v0, p0, Lbl/afm4;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 245
    iget-object v0, p0, Lbl/afm4;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 246
    iget-object v0, p0, Lbl/afm4;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 247
    iget-object v0, p0, Lbl/afm4;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 248
    iget-object v0, p0, Lbl/afm4;->menuSubtitleSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 250
    iget-object v0, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 251
    iget-object v0, p0, Lbl/afm4;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 252
    iget-object v0, p0, Lbl/afm4;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 253
    iget-object v0, p0, Lbl/afm4;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 254
    iget-object v0, p0, Lbl/afm4;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 255
    iget-object v0, p0, Lbl/afm4;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 256
    iget-object v0, p0, Lbl/afm4;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 257
    iget-object v0, p0, Lbl/afm4;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 258
    iget-object v0, p0, Lbl/afm4;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 259
    iget-object v0, p0, Lbl/afm4;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 260
    iget-object v0, p0, Lbl/afm4;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 261
    iget-object v0, p0, Lbl/afm4;->menuSubtitleSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 263
    iget-object v0, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iget-object v0, p0, Lbl/afm4;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v0, p0, Lbl/afm4;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget-object v0, p0, Lbl/afm4;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget-object v0, p0, Lbl/afm4;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v0, p0, Lbl/afm4;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v0, p0, Lbl/afm4;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object v0, p0, Lbl/afm4;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object v0, p0, Lbl/afm4;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v0, p0, Lbl/afm4;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v0, p0, Lbl/afm4;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v0, p0, Lbl/afm4;->menuSubtitleSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_player_menu_config(Landroid/content/Context;)I

    move-result v3

    .line 277
    iget-object v5, p0, Lbl/afm4;->menuQualityBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_54c

    move v0, v1

    :goto_480
    invoke-direct {p0, v5, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 278
    iget-object v5, p0, Lbl/afm4;->menuDanmakuBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_54f

    move v0, v1

    :goto_48a
    invoke-direct {p0, v5, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 279
    iget-object v5, p0, Lbl/afm4;->menuRatioBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_552

    move v0, v1

    :goto_494
    invoke-direct {p0, v5, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 280
    iget-object v5, p0, Lbl/afm4;->menuAdjustBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v3, 0x8

    if-eqz v0, :cond_555

    move v0, v1

    :goto_49e
    invoke-direct {p0, v5, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 281
    iget-object v5, p0, Lbl/afm4;->menuSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v3, 0x10

    if-eqz v0, :cond_558

    move v0, v1

    :goto_4a8
    invoke-direct {p0, v5, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 282
    iget-object v5, p0, Lbl/afm4;->menuAlphaBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v3, 0x20

    if-eqz v0, :cond_55b

    move v0, v1

    :goto_4b2
    invoke-direct {p0, v5, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 283
    iget-object v5, p0, Lbl/afm4;->menuSpeedBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit8 v0, v3, 0x40

    if-eqz v0, :cond_55e

    move v0, v1

    :goto_4bc
    invoke-direct {p0, v5, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 284
    iget-object v5, p0, Lbl/afm4;->menuModeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_561

    move v0, v1

    :goto_4c6
    invoke-direct {p0, v5, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 285
    iget-object v5, p0, Lbl/afm4;->menuSubtitleBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit16 v0, v3, 0x100

    if-eqz v0, :cond_564

    move v0, v1

    :goto_4d0
    invoke-direct {p0, v5, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 286
    iget-object v5, p0, Lbl/afm4;->menuChapterBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit16 v0, v3, 0x200

    if-eqz v0, :cond_567

    move v0, v1

    :goto_4da
    invoke-direct {p0, v5, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 287
    iget-object v5, p0, Lbl/afm4;->menuSkipBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit16 v0, v3, 0x400

    if-eqz v0, :cond_56a

    move v0, v1

    :goto_4e4
    invoke-direct {p0, v5, v0}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 288
    iget-object v0, p0, Lbl/afm4;->menuSubtitleSizeBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_56d

    :goto_4ed
    invoke-direct {p0, v0, v1}, Lbl/afm4;->updateMenuButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 290
    return-object v4

    .line 119
    :cond_4f1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_505

    .line 120
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 121
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 122
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_171

    .line 124
    :cond_505
    iget-object v0, p0, Lbl/afm4;->column2Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 125
    iget-object v0, p0, Lbl/afm4;->column3Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 126
    iget-object v0, p0, Lbl/afm4;->column4Button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_171

    .line 146
    :cond_516
    iget-object v0, p0, Lbl/afm4;->recommendApiWebButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 147
    iget-object v0, p0, Lbl/afm4;->recommendApiAppButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_1b9

    .line 164
    :cond_522
    iget-object v0, p0, Lbl/afm4;->otherNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 165
    iget-object v0, p0, Lbl/afm4;->otherCompactButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_201

    :cond_52e
    move v0, v2

    .line 197
    goto/16 :goto_2ac

    :cond_531
    move v0, v2

    .line 198
    goto/16 :goto_2b6

    :cond_534
    move v0, v2

    .line 199
    goto/16 :goto_2c0

    :cond_537
    move v0, v2

    .line 200
    goto/16 :goto_2ca

    :cond_53a
    move v0, v2

    .line 201
    goto/16 :goto_2d4

    :cond_53d
    move v0, v2

    .line 202
    goto/16 :goto_2de

    .line 220
    :cond_540
    iget-object v0, p0, Lbl/afm4;->spaceDynamicButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 221
    iget-object v0, p0, Lbl/afm4;->spaceAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_339

    :cond_54c
    move v0, v2

    .line 277
    goto/16 :goto_480

    :cond_54f
    move v0, v2

    .line 278
    goto/16 :goto_48a

    :cond_552
    move v0, v2

    .line 279
    goto/16 :goto_494

    :cond_555
    move v0, v2

    .line 280
    goto/16 :goto_49e

    :cond_558
    move v0, v2

    .line 281
    goto/16 :goto_4a8

    :cond_55b
    move v0, v2

    .line 282
    goto/16 :goto_4b2

    :cond_55e
    move v0, v2

    .line 283
    goto/16 :goto_4bc

    :cond_561
    move v0, v2

    .line 284
    goto/16 :goto_4c6

    :cond_564
    move v0, v2

    .line 285
    goto/16 :goto_4d0

    :cond_567
    move v0, v2

    .line 286
    goto/16 :goto_4da

    :cond_56a
    move v0, v2

    .line 287
    goto/16 :goto_4e4

    :cond_56d
    move v1, v2

    .line 288
    goto/16 :goto_4ed
.end method

.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 476
    if-eqz p2, :cond_4c

    move-object v0, p1

    .line 477
    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpEnabled(Z)V

    :goto_a
    move v2, v3

    .line 481
    :goto_b
    const/4 v0, 0x7

    if-ge v2, v0, :cond_56

    .line 482
    iget-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v0, v0, v2

    if-ne v0, p1, :cond_48

    iget-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 483
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

    .line 484
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    :cond_48
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_b

    :cond_4c
    move-object v0, p1

    .line 479
    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpEnabled(Z)V

    goto :goto_a

    .line 483
    :cond_53
    const-string v1, ""

    goto :goto_31

    .line 486
    :cond_56
    return-void
.end method
