.class final Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;
.super Ljava/lang/Object;
.source "StyledPlayerControlViewLayoutManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ANIMATION_INTERVAL_MS:J = 0x7d0L

.field private static final DURATION_FOR_HIDING_ANIMATION_MS:J = 0xfaL

.field private static final DURATION_FOR_SHOWING_ANIMATION_MS:J = 0xfaL

.field private static final UX_STATE_ALL_VISIBLE:I = 0x0

.field private static final UX_STATE_ANIMATING_HIDE:I = 0x3

.field private static final UX_STATE_ANIMATING_SHOW:I = 0x4

.field private static final UX_STATE_NONE_VISIBLE:I = 0x2

.field private static final UX_STATE_ONLY_PROGRESS_VISIBLE:I = 0x1


# instance fields
.field private animationEnabled:Z

.field private final basicControls:Landroid/view/ViewGroup;

.field private final bottomBar:Landroid/view/ViewGroup;

.field private final centerControls:Landroid/view/ViewGroup;

.field private final controlsBackground:Landroid/view/View;

.field private final extraControls:Landroid/view/ViewGroup;

.field private final extraControlsScrollView:Landroid/view/ViewGroup;

.field private final hideAllBarsAnimator:Landroid/animation/AnimatorSet;

.field private final hideAllBarsRunnable:Ljava/lang/Runnable;

.field private final hideControllerRunnable:Ljava/lang/Runnable;

.field private final hideMainBarAnimator:Landroid/animation/AnimatorSet;

.field private final hideMainBarRunnable:Ljava/lang/Runnable;

.field private final hideProgressBarAnimator:Landroid/animation/AnimatorSet;

.field private final hideProgressBarRunnable:Ljava/lang/Runnable;

.field private isMinimalMode:Z

.field private final minimalControls:Landroid/view/ViewGroup;

.field private needToShowBars:Z

.field private final onLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private final overflowHideAnimator:Landroid/animation/ValueAnimator;

.field private final overflowShowAnimator:Landroid/animation/ValueAnimator;

.field private final overflowShowButton:Landroid/view/View;

.field private final playerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

.field private final showAllBarsAnimator:Landroid/animation/AnimatorSet;

.field private final showAllBarsRunnable:Ljava/lang/Runnable;

.field private final showMainBarAnimator:Landroid/animation/AnimatorSet;

.field private final shownButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final timeBar:Landroid/view/View;

.field private final timeView:Landroid/view/ViewGroup;

.field private uxState:I


# direct methods
.method public static synthetic $r8$lambda$0VsVklQz4qFTXkhePiUPYh2Z8k4(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->updateLayoutForSizeChange()V

    return-void
.end method

.method public static synthetic $r8$lambda$CnpNsEg4DfUNVCHU5L7Emt1LsvY(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->onLayoutWidthChanged()V

    return-void
.end method

.method public static synthetic $r8$lambda$Uyxy2Z5tryCJnBj0GA3SSrWvvRI(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideAllBars()V

    return-void
.end method

.method public static synthetic $r8$lambda$VKNe7w6AWMvw7j806Pu7FvZ8CcU(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideController()V

    return-void
.end method

.method public static synthetic $r8$lambda$Vs5assiPBGhh1Xvnalr4DNIJOIQ(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;Landroid/view/View;IIIIIIII)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$akKKMYLY_2Y8Uy3G__gXPajPJw4(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideProgressBar()V

    return-void
.end method

.method public static synthetic $r8$lambda$cowlG_ChsG0MJipiWwZoUTotDpE(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->onOverflowButtonClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mZy_nJWmidRaMg4VLdhkc5z6g28(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideMainBar()V

    return-void
.end method

.method public static synthetic $r8$lambda$vJBNlG93jz_b-Seh008BUkzw9D4(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->showAllBars()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .registers 16
    .param p1, "playerControlView"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->playerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 90
    new-instance v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->showAllBarsRunnable:Ljava/lang/Runnable;

    .line 91
    new-instance v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$$ExternalSyntheticLambda5;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideAllBarsRunnable:Ljava/lang/Runnable;

    .line 92
    new-instance v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$$ExternalSyntheticLambda6;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideProgressBarRunnable:Ljava/lang/Runnable;

    .line 93
    new-instance v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$$ExternalSyntheticLambda7;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideMainBarRunnable:Ljava/lang/Runnable;

    .line 94
    new-instance v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$$ExternalSyntheticLambda8;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideControllerRunnable:Ljava/lang/Runnable;

    .line 95
    new-instance v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$$ExternalSyntheticLambda9;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->onLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->animationEnabled:Z

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->uxState:I

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->shownButtons:Ljava/util/List;

    .line 101
    sget v0, Lcom/google/android/exoplayer2/ui/R$id;->exo_controls_background:I

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->controlsBackground:Landroid/view/View;

    .line 102
    sget v0, Lcom/google/android/exoplayer2/ui/R$id;->exo_center_controls:I

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->centerControls:Landroid/view/ViewGroup;

    .line 105
    sget v0, Lcom/google/android/exoplayer2/ui/R$id;->exo_minimal_controls:I

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->minimalControls:Landroid/view/ViewGroup;

    .line 108
    sget v0, Lcom/google/android/exoplayer2/ui/R$id;->exo_bottom_bar:I

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->bottomBar:Landroid/view/ViewGroup;

    .line 111
    sget v1, Lcom/google/android/exoplayer2/ui/R$id;->exo_time:I

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->timeView:Landroid/view/ViewGroup;

    .line 112
    sget v1, Lcom/google/android/exoplayer2/ui/R$id;->exo_progress:I

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->timeBar:Landroid/view/View;

    .line 115
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_basic_controls:I

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->basicControls:Landroid/view/ViewGroup;

    .line 116
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_extra_controls:I

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->extraControls:Landroid/view/ViewGroup;

    .line 117
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_extra_controls_scroll_view:I

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->extraControlsScrollView:Landroid/view/ViewGroup;

    .line 118
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_overflow_show:I

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->overflowShowButton:Landroid/view/View;

    .line 119
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_overflow_hide:I

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 120
    .local v3, "overflowHideButton":Landroid/view/View;
    if-eqz v2, :cond_b4

    if-eqz v3, :cond_b4

    .line 121
    new-instance v4, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$$ExternalSyntheticLambda10;

    invoke-direct {v4, p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$$ExternalSyntheticLambda10;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    new-instance v2, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$$ExternalSyntheticLambda10;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    :cond_b4
    const/4 v2, 0x2

    new-array v4, v2, [F

    fill-array-data v4, :array_208

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 126
    .local v4, "fadeOutAnimator":Landroid/animation/ValueAnimator;
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 127
    new-instance v5, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$$ExternalSyntheticLambda11;

    invoke-direct {v5, p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$$ExternalSyntheticLambda11;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 140
    new-instance v5, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$1;

    invoke-direct {v5, p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$1;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 163
    new-array v5, v2, [F

    fill-array-data v5, :array_210

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 164
    .local v5, "fadeInAnimator":Landroid/animation/ValueAnimator;
    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 165
    new-instance v6, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$$ExternalSyntheticLambda12;

    invoke-direct {v6, p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$$ExternalSyntheticLambda12;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 178
    new-instance v6, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$2;

    invoke-direct {v6, p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$2;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 197
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 198
    .local v6, "resources":Landroid/content/res/Resources;
    sget v7, Lcom/google/android/exoplayer2/ui/R$dimen;->exo_styled_bottom_bar_height:I

    .line 199
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    sget v8, Lcom/google/android/exoplayer2/ui/R$dimen;->exo_styled_progress_bar_height:I

    .line 200
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    sub-float/2addr v7, v8

    .line 201
    .local v7, "translationYForProgressBar":F
    sget v8, Lcom/google/android/exoplayer2/ui/R$dimen;->exo_styled_bottom_bar_height:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    .line 203
    .local v8, "translationYForNoBars":F
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideMainBarAnimator:Landroid/animation/AnimatorSet;

    .line 204
    const-wide/16 v10, 0xfa

    invoke-virtual {v9, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 205
    new-instance v12, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$3;

    invoke-direct {v12, p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$3;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    invoke-virtual {v9, v12}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 221
    nop

    .line 222
    invoke-virtual {v9, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    .line 223
    const/4 v12, 0x0

    invoke-static {v12, v7, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->ofTranslationY(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    .line 224
    invoke-static {v12, v7, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->ofTranslationY(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 226
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideProgressBarAnimator:Landroid/animation/AnimatorSet;

    .line 227
    invoke-virtual {v9, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 228
    new-instance v13, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$4;

    invoke-direct {v13, p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$4;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    invoke-virtual {v9, v13}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 244
    nop

    .line 245
    invoke-static {v7, v8, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->ofTranslationY(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    .line 246
    invoke-static {v7, v8, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->ofTranslationY(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 248
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideAllBarsAnimator:Landroid/animation/AnimatorSet;

    .line 249
    invoke-virtual {v9, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 250
    new-instance v13, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$5;

    invoke-direct {v13, p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$5;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    invoke-virtual {v9, v13}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 266
    nop

    .line 267
    invoke-virtual {v9, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    .line 268
    invoke-static {v12, v8, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->ofTranslationY(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    .line 269
    invoke-static {v12, v8, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->ofTranslationY(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 271
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->showMainBarAnimator:Landroid/animation/AnimatorSet;

    .line 272
    invoke-virtual {v9, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 273
    new-instance v13, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$6;

    invoke-direct {v13, p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$6;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V

    invoke-virtual {v9, v13}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 285
    nop

    .line 286
    invoke-virtual {v9, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    .line 287
    invoke-static {v7, v12, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->ofTranslationY(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    .line 288
    invoke-static {v7, v12, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->ofTranslationY(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 290
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->showAllBarsAnimator:Landroid/animation/AnimatorSet;

    .line 291
    invoke-virtual {v9, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 292
    new-instance v13, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$7;

    invoke-direct {v13, p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$7;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V

    invoke-virtual {v9, v13}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 304
    nop

    .line 305
    invoke-virtual {v9, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    .line 306
    invoke-static {v8, v12, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->ofTranslationY(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 307
    invoke-static {v8, v12, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->ofTranslationY(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 309
    new-array v0, v2, [F

    fill-array-data v0, :array_218

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->overflowShowAnimator:Landroid/animation/ValueAnimator;

    .line 310
    invoke-virtual {v0, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 311
    new-instance v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 313
    new-instance v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$8;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$8;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 332
    new-array v0, v2, [F

    fill-array-data v0, :array_220

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->overflowHideAnimator:Landroid/animation/ValueAnimator;

    .line 333
    invoke-virtual {v0, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 334
    new-instance v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 336
    new-instance v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$9;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$9;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 352
    return-void

    :array_208
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_210
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_218
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_220
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    .line 35
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->timeBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    .line 35
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->isMinimalMode:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    .line 35
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->controlsBackground:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)Landroid/view/ViewGroup;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    .line 35
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->centerControls:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)Landroid/view/ViewGroup;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    .line 35
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->minimalControls:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;
    .param p1, "x1"    # I

    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->setUxState(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    .line 35
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->needToShowBars:Z

    return v0
.end method

.method static synthetic access$602(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;
    .param p1, "x1"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->needToShowBars:Z

    return p1
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    .line 35
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->showAllBarsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)Landroid/view/ViewGroup;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    .line 35
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->extraControlsScrollView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)Landroid/view/ViewGroup;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    .line 35
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->basicControls:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private animateOverflow(F)V
    .registers 6
    .param p1, "animatedValue"    # F

    .line 558
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->extraControlsScrollView:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_17

    .line 559
    nop

    .line 560
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float v2, v1, p1

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 561
    .local v0, "extraControlTranslationX":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->extraControlsScrollView:Landroid/view/ViewGroup;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 564
    .end local v0    # "extraControlTranslationX":I
    :cond_17
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->timeView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_20

    .line 565
    sub-float v2, v1, p1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 567
    :cond_20
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->basicControls:Landroid/view/ViewGroup;

    if-eqz v0, :cond_28

    .line 568
    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 570
    :cond_28
    return-void
.end method

.method private static getHeightWithMargins(Landroid/view/View;)I
    .registers 6
    .param p0, "v"    # Landroid/view/View;

    .line 725
    if-nez p0, :cond_4

    .line 726
    const/4 v0, 0x0

    return v0

    .line 728
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 729
    .local v0, "height":I
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 730
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_19

    .line 731
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 732
    .local v2, "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 734
    .end local v2    # "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_19
    return v0
.end method

.method private static getWidthWithMargins(Landroid/view/View;)I
    .registers 6
    .param p0, "v"    # Landroid/view/View;

    .line 712
    if-nez p0, :cond_4

    .line 713
    const/4 v0, 0x0

    return v0

    .line 715
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 716
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 717
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_19

    .line 718
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 719
    .local v2, "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 721
    .end local v2    # "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_19
    return v0
.end method

.method private hideAllBars()V
    .registers 2

    .line 531
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideAllBarsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 532
    return-void
.end method

.method private hideController()V
    .registers 2

    .line 544
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->setUxState(I)V

    .line 545
    return-void
.end method

.method private hideMainBar()V
    .registers 4

    .line 539
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideMainBarAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 540
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideProgressBarRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->postDelayedRunnable(Ljava/lang/Runnable;J)V

    .line 541
    return-void
.end method

.method private hideProgressBar()V
    .registers 2

    .line 535
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideProgressBarAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 536
    return-void
.end method

.method private static ofTranslationY(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;
    .registers 5
    .param p0, "startValue"    # F
    .param p1, "endValue"    # F
    .param p2, "target"    # Landroid/view/View;

    .line 548
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const-string v1, "translationY"

    invoke-static {p2, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 485
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->useMinimalMode()Z

    move-result v0

    .line 486
    .local v0, "useMinimalMode":Z
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->isMinimalMode:Z

    if-eq v1, v0, :cond_12

    .line 487
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->isMinimalMode:Z

    .line 488
    new-instance v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 490
    :cond_12
    sub-int v1, p4, p2

    sub-int v2, p8, p6

    if-eq v1, v2, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    .line 491
    .local v1, "widthChanged":Z
    :goto_1b
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->isMinimalMode:Z

    if-nez v2, :cond_29

    if-eqz v1, :cond_29

    .line 492
    new-instance v2, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 494
    :cond_29
    return-void
.end method

.method private onLayoutWidthChanged()V
    .registers 10

    .line 646
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->basicControls:Landroid/view/ViewGroup;

    if-eqz v0, :cond_dd

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->extraControls:Landroid/view/ViewGroup;

    if-nez v0, :cond_a

    goto/16 :goto_dd

    .line 650
    :cond_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->playerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 651
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->playerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 652
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->playerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 653
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 657
    .local v0, "width":I
    :goto_1e
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->extraControls:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_41

    .line 658
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->extraControls:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    .line 659
    .local v1, "controlViewIndex":I
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->extraControls:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 660
    .local v3, "controlView":Landroid/view/View;
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->extraControls:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 661
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->basicControls:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 662
    .end local v1    # "controlViewIndex":I
    .end local v3    # "controlView":Landroid/view/View;
    goto :goto_1e

    .line 663
    :cond_41
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->overflowShowButton:Landroid/view/View;

    if-eqz v1, :cond_4a

    .line 664
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 669
    :cond_4a
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->timeView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    move-result v1

    .line 670
    .local v1, "occupiedWidth":I
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->basicControls:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v3

    .line 671
    .local v4, "endIndex":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_58
    if-ge v5, v4, :cond_68

    .line 672
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->basicControls:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 673
    .local v6, "controlView":Landroid/view/View;
    invoke-static {v6}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    move-result v7

    add-int/2addr v1, v7

    .line 671
    .end local v6    # "controlView":Landroid/view/View;
    add-int/lit8 v5, v5, 0x1

    goto :goto_58

    .line 676
    .end local v5    # "i":I
    :cond_68
    if-le v1, v0, :cond_c0

    .line 678
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->overflowShowButton:Landroid/view/View;

    if-eqz v5, :cond_78

    .line 679
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 680
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->overflowShowButton:Landroid/view/View;

    invoke-static {v5}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v1, v5

    .line 682
    :cond_78
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 684
    .local v5, "controlsToMove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_7e
    if-ge v6, v4, :cond_94

    .line 685
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->basicControls:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 686
    .local v7, "control":Landroid/view/View;
    invoke-static {v7}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v1, v8

    .line 687
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    if-gt v1, v0, :cond_91

    .line 689
    goto :goto_94

    .line 684
    .end local v7    # "control":Landroid/view/View;
    :cond_91
    add-int/lit8 v6, v6, 0x1

    goto :goto_7e

    .line 692
    .end local v6    # "i":I
    :cond_94
    :goto_94
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_bf

    .line 693
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->basicControls:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v2, v7}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 694
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_bf

    .line 696
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->extraControls:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v3

    .line 697
    .local v6, "index":I
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->extraControls:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v7, v8, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 694
    .end local v6    # "index":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_a4

    .line 700
    .end local v2    # "i":I
    .end local v5    # "controlsToMove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_bf
    goto :goto_dc

    .line 702
    :cond_c0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->extraControlsScrollView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_dc

    .line 703
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_dc

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->overflowHideAnimator:Landroid/animation/ValueAnimator;

    .line 704
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v2

    if-nez v2, :cond_dc

    .line 705
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->overflowShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 706
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->overflowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 709
    :cond_dc
    :goto_dc
    return-void

    .line 647
    .end local v0    # "width":I
    .end local v1    # "occupiedWidth":I
    .end local v4    # "endIndex":I
    :cond_dd
    :goto_dd
    return-void
.end method

.method private onOverflowButtonClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 497
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->resetHideCallbacks()V

    .line 498
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/google/android/exoplayer2/ui/R$id;->exo_overflow_show:I

    if-ne v0, v1, :cond_11

    .line 499
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->overflowShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1e

    .line 500
    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/google/android/exoplayer2/ui/R$id;->exo_overflow_hide:I

    if-ne v0, v1, :cond_1e

    .line 501
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->overflowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 503
    :cond_1e
    :goto_1e
    return-void
.end method

.method private postDelayedRunnable(Ljava/lang/Runnable;J)V
    .registers 7
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "interval"    # J

    .line 552
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_b

    .line 553
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->playerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 555
    :cond_b
    return-void
.end method

.method private setUxState(I)V
    .registers 5
    .param p1, "uxState"    # I

    .line 451
    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->uxState:I

    .line 452
    .local v0, "prevUxState":I
    iput p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->uxState:I

    .line 453
    const/4 v1, 0x2

    if-ne p1, v1, :cond_f

    .line 454
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->playerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setVisibility(I)V

    goto :goto_17

    .line 455
    :cond_f
    if-ne v0, v1, :cond_17

    .line 456
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->playerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setVisibility(I)V

    .line 460
    :cond_17
    :goto_17
    if-eq v0, p1, :cond_1e

    .line 461
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->playerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->notifyOnVisibilityChange()V

    .line 463
    :cond_1e
    return-void
.end method

.method private shouldHideInMinimalMode(Landroid/view/View;)Z
    .registers 4
    .param p1, "button"    # Landroid/view/View;

    .line 635
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 636
    .local v0, "id":I
    sget v1, Lcom/google/android/exoplayer2/ui/R$id;->exo_bottom_bar:I

    if-eq v0, v1, :cond_23

    sget v1, Lcom/google/android/exoplayer2/ui/R$id;->exo_prev:I

    if-eq v0, v1, :cond_23

    sget v1, Lcom/google/android/exoplayer2/ui/R$id;->exo_next:I

    if-eq v0, v1, :cond_23

    sget v1, Lcom/google/android/exoplayer2/ui/R$id;->exo_rew:I

    if-eq v0, v1, :cond_23

    sget v1, Lcom/google/android/exoplayer2/ui/R$id;->exo_rew_with_amount:I

    if-eq v0, v1, :cond_23

    sget v1, Lcom/google/android/exoplayer2/ui/R$id;->exo_ffwd:I

    if-eq v0, v1, :cond_23

    sget v1, Lcom/google/android/exoplayer2/ui/R$id;->exo_ffwd_with_amount:I

    if-ne v0, v1, :cond_21

    goto :goto_23

    :cond_21
    const/4 v1, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v1, 0x1

    :goto_24
    return v1
.end method

.method private showAllBars()V
    .registers 2

    .line 506
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->animationEnabled:Z

    if-nez v0, :cond_c

    .line 507
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->setUxState(I)V

    .line 508
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->resetHideCallbacks()V

    .line 509
    return-void

    .line 512
    :cond_c
    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->uxState:I

    packed-switch v0, :pswitch_data_28

    goto :goto_23

    .line 523
    :pswitch_12
    return-void

    .line 520
    :pswitch_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->needToShowBars:Z

    .line 521
    goto :goto_23

    .line 514
    :pswitch_17
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->showAllBarsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 515
    goto :goto_23

    .line 517
    :pswitch_1d
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->showMainBarAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 518
    nop

    .line 527
    :goto_23
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->resetHideCallbacks()V

    .line 528
    return-void

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_17
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method private updateLayoutForSizeChange()V
    .registers 8

    .line 603
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->minimalControls:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    .line 604
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->isMinimalMode:Z

    if-eqz v3, :cond_c

    const/4 v3, 0x0

    goto :goto_d

    :cond_c
    const/4 v3, 0x4

    :goto_d
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 607
    :cond_10
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->timeBar:Landroid/view/View;

    if-eqz v0, :cond_57

    .line 608
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->playerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 610
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/google/android/exoplayer2/ui/R$dimen;->exo_styled_progress_margin_bottom:I

    .line 611
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 612
    .local v0, "timeBarMarginBottom":I
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->timeBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 613
    .local v3, "timeBarParams":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v3, :cond_38

    .line 614
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->isMinimalMode:Z

    if-eqz v4, :cond_30

    const/4 v4, 0x0

    goto :goto_31

    :cond_30
    move v4, v0

    :goto_31
    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 615
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->timeBar:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 617
    :cond_38
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->timeBar:Landroid/view/View;

    instance-of v5, v4, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    if-eqz v5, :cond_57

    .line 618
    check-cast v4, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    .line 619
    .local v4, "defaultTimeBar":Lcom/google/android/exoplayer2/ui/DefaultTimeBar;
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->isMinimalMode:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_49

    .line 620
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->hideScrubber(Z)V

    goto :goto_57

    .line 621
    :cond_49
    iget v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->uxState:I

    if-ne v5, v6, :cond_51

    .line 622
    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->hideScrubber(Z)V

    goto :goto_57

    .line 623
    :cond_51
    const/4 v6, 0x3

    if-eq v5, v6, :cond_57

    .line 624
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->showScrubber()V

    .line 629
    .end local v0    # "timeBarMarginBottom":I
    .end local v3    # "timeBarParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v4    # "defaultTimeBar":Lcom/google/android/exoplayer2/ui/DefaultTimeBar;
    :cond_57
    :goto_57
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->shownButtons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 630
    .local v3, "v":Landroid/view/View;
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->isMinimalMode:Z

    if-eqz v4, :cond_75

    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->shouldHideInMinimalMode(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_75

    const/4 v4, 0x4

    goto :goto_76

    :cond_75
    const/4 v4, 0x0

    :goto_76
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 631
    .end local v3    # "v":Landroid/view/View;
    goto :goto_5d

    .line 632
    :cond_7a
    return-void
.end method

.method private useMinimalMode()Z
    .registers 8

    .line 573
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->playerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 574
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->playerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 575
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->playerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 576
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 577
    .local v0, "width":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->playerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 578
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->playerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 579
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->playerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 580
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 582
    .local v1, "height":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->centerControls:Landroid/view/ViewGroup;

    .line 583
    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    move-result v2

    .line 584
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->centerControls:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    if-eqz v3, :cond_3f

    .line 585
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->centerControls:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_40

    .line 586
    :cond_3f
    const/4 v3, 0x0

    :goto_40
    sub-int/2addr v2, v3

    .line 587
    .local v2, "centerControlWidth":I
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->centerControls:Landroid/view/ViewGroup;

    .line 588
    invoke-static {v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->getHeightWithMargins(Landroid/view/View;)I

    move-result v3

    .line 589
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->centerControls:Landroid/view/ViewGroup;

    if-eqz v5, :cond_57

    .line 590
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->centerControls:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_58

    .line 591
    :cond_57
    const/4 v5, 0x0

    :goto_58
    sub-int/2addr v3, v5

    .line 593
    .local v3, "centerControlHeight":I
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->timeView:Landroid/view/ViewGroup;

    .line 596
    invoke-static {v5}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->overflowShowButton:Landroid/view/View;

    invoke-static {v6}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    move-result v6

    add-int/2addr v5, v6

    .line 594
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 597
    .local v5, "defaultModeMinimumWidth":I
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->bottomBar:Landroid/view/ViewGroup;

    invoke-static {v6}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->getHeightWithMargins(Landroid/view/View;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v3

    .line 599
    .local v6, "defaultModeMinimumHeight":I
    if-le v0, v5, :cond_77

    if-gt v1, v6, :cond_78

    :cond_77
    const/4 v4, 0x1

    :cond_78
    return v4
.end method


# virtual methods
.method public getShowButton(Landroid/view/View;)Z
    .registers 3
    .param p1, "button"    # Landroid/view/View;

    .line 447
    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->shownButtons:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public hide()V
    .registers 3

    .line 364
    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->uxState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_21

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    goto :goto_21

    .line 367
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->removeHideCallbacks()V

    .line 368
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->animationEnabled:Z

    if-nez v0, :cond_14

    .line 369
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideController()V

    goto :goto_20

    .line 370
    :cond_14
    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->uxState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 371
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideProgressBar()V

    goto :goto_20

    .line 373
    :cond_1d
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideAllBars()V

    .line 375
    :goto_20
    return-void

    .line 365
    :cond_21
    :goto_21
    return-void
.end method

.method public hideImmediately()V
    .registers 3

    .line 378
    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->uxState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_10

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    goto :goto_10

    .line 381
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->removeHideCallbacks()V

    .line 382
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideController()V

    .line 383
    return-void

    .line 379
    :cond_10
    :goto_10
    return-void
.end method

.method public isAnimationEnabled()Z
    .registers 2

    .line 390
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->animationEnabled:Z

    return v0
.end method

.method public isFullyVisible()Z
    .registers 2

    .line 426
    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->uxState:I

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->playerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method synthetic lambda$new$0$com-google-android-exoplayer2-ui-StyledPlayerControlViewLayoutManager(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 129
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 130
    .local v0, "animatedValue":F
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->controlsBackground:Landroid/view/View;

    if-eqz v1, :cond_11

    .line 131
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 133
    :cond_11
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->centerControls:Landroid/view/ViewGroup;

    if-eqz v1, :cond_18

    .line 134
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 136
    :cond_18
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->minimalControls:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1f

    .line 137
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 139
    :cond_1f
    return-void
.end method

.method synthetic lambda$new$1$com-google-android-exoplayer2-ui-StyledPlayerControlViewLayoutManager(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 167
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 168
    .local v0, "animatedValue":F
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->controlsBackground:Landroid/view/View;

    if-eqz v1, :cond_11

    .line 169
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 171
    :cond_11
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->centerControls:Landroid/view/ViewGroup;

    if-eqz v1, :cond_18

    .line 172
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 174
    :cond_18
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->minimalControls:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1f

    .line 175
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 177
    :cond_1f
    return-void
.end method

.method synthetic lambda$new$2$com-google-android-exoplayer2-ui-StyledPlayerControlViewLayoutManager(Landroid/animation/ValueAnimator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 312
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->animateOverflow(F)V

    return-void
.end method

.method synthetic lambda$new$3$com-google-android-exoplayer2-ui-StyledPlayerControlViewLayoutManager(Landroid/animation/ValueAnimator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 335
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->animateOverflow(F)V

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 3

    .line 418
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->playerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->onLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 419
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    .line 422
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->playerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->onLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 423
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 466
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->controlsBackground:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 470
    sub-int v1, p4, p2

    sub-int v2, p5, p3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 472
    :cond_c
    return-void
.end method

.method public removeHideCallbacks()V
    .registers 3

    .line 411
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->playerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideControllerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 412
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->playerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideAllBarsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 413
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->playerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideMainBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 414
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->playerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideProgressBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 415
    return-void
.end method

.method public resetHideCallbacks()V
    .registers 5

    .line 394
    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->uxState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 395
    return-void

    .line 397
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->removeHideCallbacks()V

    .line 398
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->playerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getShowTimeoutMs()I

    move-result v0

    .line 399
    .local v0, "showTimeoutMs":I
    if-lez v0, :cond_2f

    .line 400
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->animationEnabled:Z

    if-nez v1, :cond_1c

    .line 401
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideControllerRunnable:Ljava/lang/Runnable;

    int-to-long v2, v0

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->postDelayedRunnable(Ljava/lang/Runnable;J)V

    goto :goto_2f

    .line 402
    :cond_1c
    iget v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->uxState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_29

    .line 403
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideProgressBarRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->postDelayedRunnable(Ljava/lang/Runnable;J)V

    goto :goto_2f

    .line 405
    :cond_29
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideMainBarRunnable:Ljava/lang/Runnable;

    int-to-long v2, v0

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->postDelayedRunnable(Ljava/lang/Runnable;J)V

    .line 408
    :cond_2f
    :goto_2f
    return-void
.end method

.method public setAnimationEnabled(Z)V
    .registers 2
    .param p1, "animationEnabled"    # Z

    .line 386
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->animationEnabled:Z

    .line 387
    return-void
.end method

.method public setShowButton(Landroid/view/View;Z)V
    .registers 4
    .param p1, "button"    # Landroid/view/View;
    .param p2, "showButton"    # Z

    .line 430
    if-nez p1, :cond_3

    .line 431
    return-void

    .line 433
    :cond_3
    if-nez p2, :cond_10

    .line 434
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->shownButtons:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 436
    return-void

    .line 438
    :cond_10
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->isMinimalMode:Z

    if-eqz v0, :cond_1f

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->shouldHideInMinimalMode(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 439
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_23

    .line 441
    :cond_1f
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 443
    :goto_23
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->shownButtons:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    return-void
.end method

.method public show()V
    .registers 3

    .line 355
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->playerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_18

    .line 356
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->playerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->playerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateAll()V

    .line 358
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->playerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->requestPlayPauseFocus()V

    .line 360
    :cond_18
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->showAllBars()V

    .line 361
    return-void
.end method
