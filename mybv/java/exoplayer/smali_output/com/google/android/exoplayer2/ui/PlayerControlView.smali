.class public Lcom/google/android/exoplayer2/ui/PlayerControlView;
.super Landroid/widget/FrameLayout;
.source "PlayerControlView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;,
        Lcom/google/android/exoplayer2/ui/PlayerControlView$ProgressUpdateListener;,
        Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;,
        Lcom/google/android/exoplayer2/ui/PlayerControlView$Api21;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_REPEAT_TOGGLE_MODES:I = 0x0

.field public static final DEFAULT_SHOW_TIMEOUT_MS:I = 0x1388

.field public static final DEFAULT_TIME_BAR_MIN_UPDATE_INTERVAL_MS:I = 0xc8

.field private static final MAX_UPDATE_INTERVAL_MS:I = 0x3e8

.field public static final MAX_WINDOWS_FOR_MULTI_WINDOW_TIME_BAR:I = 0x64


# instance fields
.field private adGroupTimesMs:[J

.field private final buttonAlphaDisabled:F

.field private final buttonAlphaEnabled:F

.field private final componentListener:Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;

.field private currentBufferedPosition:J

.field private currentPosition:J

.field private currentWindowOffset:J

.field private final durationView:Landroid/widget/TextView;

.field private extraAdGroupTimesMs:[J

.field private extraPlayedAdGroups:[Z

.field private final fastForwardButton:Landroid/view/View;

.field private final formatBuilder:Ljava/lang/StringBuilder;

.field private final formatter:Ljava/util/Formatter;

.field private final hideAction:Ljava/lang/Runnable;

.field private hideAtMs:J

.field private isAttachedToWindow:Z

.field private multiWindowTimeBar:Z

.field private final nextButton:Landroid/view/View;

.field private final pauseButton:Landroid/view/View;

.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field private final playButton:Landroid/view/View;

.field private playedAdGroups:[Z

.field private player:Lcom/google/android/exoplayer2/Player;

.field private final positionView:Landroid/widget/TextView;

.field private final previousButton:Landroid/view/View;

.field private progressUpdateListener:Lcom/google/android/exoplayer2/ui/PlayerControlView$ProgressUpdateListener;

.field private final repeatAllButtonContentDescription:Ljava/lang/String;

.field private final repeatAllButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final repeatOffButtonContentDescription:Ljava/lang/String;

.field private final repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final repeatOneButtonContentDescription:Ljava/lang/String;

.field private final repeatOneButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final repeatToggleButton:Landroid/widget/ImageView;

.field private repeatToggleModes:I

.field private final rewindButton:Landroid/view/View;

.field private scrubbing:Z

.field private showFastForwardButton:Z

.field private showMultiWindowTimeBar:Z

.field private showNextButton:Z

.field private showPreviousButton:Z

.field private showRewindButton:Z

.field private showShuffleButton:Z

.field private showTimeoutMs:I

.field private final shuffleButton:Landroid/widget/ImageView;

.field private final shuffleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final shuffleOffContentDescription:Ljava/lang/String;

.field private final shuffleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final shuffleOnContentDescription:Ljava/lang/String;

.field private final timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

.field private timeBarMinUpdateIntervalMs:I

.field private final updateProgressAction:Ljava/lang/Runnable;

.field private final visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private final vrButton:Landroid/view/View;

.field private final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method public static synthetic $r8$lambda$EPQn3wIJfHsmBxsRaGVq7MNXq9U(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateProgress()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 254
    const-string v0, "goog.exo.ui"

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 352
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 353
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 356
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 357
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 360
    invoke-direct {p0, p1, p2, p3, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    .line 361
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "playbackAttrs"    # Landroid/util/AttributeSet;

    .line 373
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 374
    sget v0, Lcom/google/android/exoplayer2/ui/R$layout;->exo_player_control_view:I

    .line 375
    .local v0, "controllerLayoutId":I
    const/16 v1, 0x1388

    iput v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showTimeoutMs:I

    .line 376
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleModes:I

    .line 377
    const/16 v2, 0xc8

    iput v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->timeBarMinUpdateIntervalMs:I

    .line 378
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAtMs:J

    .line 379
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showRewindButton:Z

    .line 380
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showFastForwardButton:Z

    .line 381
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showPreviousButton:Z

    .line 382
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showNextButton:Z

    .line 383
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showShuffleButton:Z

    .line 384
    if-eqz p4, :cond_8e

    .line 385
    nop

    .line 387
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget-object v5, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerControlView:[I

    .line 388
    invoke-virtual {v4, p4, v5, p3, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 391
    .local v4, "a":Landroid/content/res/TypedArray;
    :try_start_2f
    sget v5, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerControlView_show_timeout:I

    iget v6, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showTimeoutMs:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showTimeoutMs:I

    .line 392
    sget v5, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerControlView_controller_layout_id:I

    .line 393
    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move v0, v5

    .line 394
    iget v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleModes:I

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->getRepeatToggleModes(Landroid/content/res/TypedArray;I)I

    move-result v5

    iput v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleModes:I

    .line 395
    sget v5, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerControlView_show_rewind_button:I

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showRewindButton:Z

    .line 396
    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showRewindButton:Z

    .line 397
    sget v5, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerControlView_show_fastforward_button:I

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showFastForwardButton:Z

    .line 398
    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showFastForwardButton:Z

    .line 400
    sget v5, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerControlView_show_previous_button:I

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showPreviousButton:Z

    .line 401
    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showPreviousButton:Z

    .line 402
    sget v5, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerControlView_show_next_button:I

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showNextButton:Z

    .line 403
    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showNextButton:Z

    .line 404
    sget v5, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerControlView_show_shuffle_button:I

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showShuffleButton:Z

    .line 405
    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showShuffleButton:Z

    .line 406
    sget v5, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerControlView_time_bar_min_update_interval:I

    iget v6, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->timeBarMinUpdateIntervalMs:I

    .line 407
    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 406
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setTimeBarMinUpdateInterval(I)V
    :try_end_85
    .catchall {:try_start_2f .. :try_end_85} :catchall_89

    .line 411
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 412
    goto :goto_8e

    .line 411
    :catchall_89
    move-exception v1

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 412
    throw v1

    .line 414
    .end local v4    # "a":Landroid/content/res/TypedArray;
    :cond_8e
    :goto_8e
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 415
    new-instance v4, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 416
    new-instance v4, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 417
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;

    .line 418
    new-instance v5, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->formatter:Ljava/util/Formatter;

    .line 419
    new-array v4, v1, [J

    iput-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->adGroupTimesMs:[J

    .line 420
    new-array v4, v1, [Z

    iput-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playedAdGroups:[Z

    .line 421
    new-array v4, v1, [J

    iput-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->extraAdGroupTimesMs:[J

    .line 422
    new-array v4, v1, [Z

    iput-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->extraPlayedAdGroups:[Z

    .line 423
    new-instance v4, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;Lcom/google/android/exoplayer2/ui/PlayerControlView$1;)V

    iput-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;

    .line 424
    new-instance v6, Lcom/google/android/exoplayer2/ui/PlayerControlView$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    iput-object v6, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    .line 425
    new-instance v6, Lcom/google/android/exoplayer2/ui/PlayerControlView$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    iput-object v6, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAction:Ljava/lang/Runnable;

    .line 427
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    invoke-virtual {v6, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 428
    const/high16 v6, 0x40000

    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setDescendantFocusability(I)V

    .line 430
    sget v6, Lcom/google/android/exoplayer2/ui/R$id;->exo_progress:I

    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/ui/TimeBar;

    .line 431
    .local v6, "customTimeBar":Lcom/google/android/exoplayer2/ui/TimeBar;
    sget v7, Lcom/google/android/exoplayer2/ui/R$id;->exo_progress_placeholder:I

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 432
    .local v7, "timeBarPlaceholder":Landroid/view/View;
    if-eqz v6, :cond_fa

    .line 433
    iput-object v6, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    goto :goto_123

    .line 434
    :cond_fa
    if-eqz v7, :cond_121

    .line 437
    new-instance v8, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    invoke-direct {v8, p1, v5, v1, p4}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    move-object v5, v8

    .line 438
    .local v5, "defaultTimeBar":Lcom/google/android/exoplayer2/ui/DefaultTimeBar;
    sget v8, Lcom/google/android/exoplayer2/ui/R$id;->exo_progress:I

    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setId(I)V

    .line 439
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 440
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 441
    .local v8, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v9

    .line 442
    .local v9, "timeBarIndex":I
    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 443
    invoke-virtual {v8, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 444
    iput-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    .line 445
    .end local v5    # "defaultTimeBar":Lcom/google/android/exoplayer2/ui/DefaultTimeBar;
    .end local v8    # "parent":Landroid/view/ViewGroup;
    .end local v9    # "timeBarIndex":I
    goto :goto_123

    .line 446
    :cond_121
    iput-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    .line 448
    :goto_123
    sget v5, Lcom/google/android/exoplayer2/ui/R$id;->exo_duration:I

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->durationView:Landroid/widget/TextView;

    .line 449
    sget v5, Lcom/google/android/exoplayer2/ui/R$id;->exo_position:I

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->positionView:Landroid/widget/TextView;

    .line 451
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    if-eqz v5, :cond_13e

    .line 452
    invoke-interface {v5, v4}, Lcom/google/android/exoplayer2/ui/TimeBar;->addListener(Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;)V

    .line 454
    :cond_13e
    sget v5, Lcom/google/android/exoplayer2/ui/R$id;->exo_play:I

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playButton:Landroid/view/View;

    .line 455
    if-eqz v5, :cond_14b

    .line 456
    invoke-virtual {v5, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    :cond_14b
    sget v5, Lcom/google/android/exoplayer2/ui/R$id;->exo_pause:I

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->pauseButton:Landroid/view/View;

    .line 459
    if-eqz v5, :cond_158

    .line 460
    invoke-virtual {v5, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    :cond_158
    sget v5, Lcom/google/android/exoplayer2/ui/R$id;->exo_prev:I

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->previousButton:Landroid/view/View;

    .line 463
    if-eqz v5, :cond_165

    .line 464
    invoke-virtual {v5, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    :cond_165
    sget v5, Lcom/google/android/exoplayer2/ui/R$id;->exo_next:I

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->nextButton:Landroid/view/View;

    .line 467
    if-eqz v5, :cond_172

    .line 468
    invoke-virtual {v5, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    :cond_172
    sget v5, Lcom/google/android/exoplayer2/ui/R$id;->exo_rew:I

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->rewindButton:Landroid/view/View;

    .line 471
    if-eqz v5, :cond_17f

    .line 472
    invoke-virtual {v5, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 474
    :cond_17f
    sget v5, Lcom/google/android/exoplayer2/ui/R$id;->exo_ffwd:I

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->fastForwardButton:Landroid/view/View;

    .line 475
    if-eqz v5, :cond_18c

    .line 476
    invoke-virtual {v5, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    :cond_18c
    sget v5, Lcom/google/android/exoplayer2/ui/R$id;->exo_repeat_toggle:I

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    .line 479
    if-eqz v5, :cond_19b

    .line 480
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    :cond_19b
    sget v5, Lcom/google/android/exoplayer2/ui/R$id;->exo_shuffle:I

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    .line 483
    if-eqz v5, :cond_1aa

    .line 484
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    :cond_1aa
    sget v4, Lcom/google/android/exoplayer2/ui/R$id;->exo_vr:I

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->vrButton:Landroid/view/View;

    .line 487
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setShowVrButton(Z)V

    .line 488
    invoke-direct {p0, v1, v1, v4}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateButton(ZZLandroid/view/View;)V

    .line 490
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 492
    .local v1, "resources":Landroid/content/res/Resources;
    sget v4, Lcom/google/android/exoplayer2/ui/R$integer;->exo_media_button_opacity_percentage_enabled:I

    .line 493
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    iput v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->buttonAlphaEnabled:F

    .line 494
    sget v4, Lcom/google/android/exoplayer2/ui/R$integer;->exo_media_button_opacity_percentage_disabled:I

    .line 495
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    iput v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->buttonAlphaDisabled:F

    .line 497
    sget v4, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_controls_repeat_off:I

    invoke-static {p1, v1, v4}, Lcom/google/android/exoplayer2/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 498
    sget v4, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_controls_repeat_one:I

    invoke-static {p1, v1, v4}, Lcom/google/android/exoplayer2/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatOneButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 499
    sget v4, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_controls_repeat_all:I

    invoke-static {p1, v1, v4}, Lcom/google/android/exoplayer2/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatAllButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 500
    sget v4, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_controls_shuffle_on:I

    invoke-static {p1, v1, v4}, Lcom/google/android/exoplayer2/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->shuffleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 501
    sget v4, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_controls_shuffle_off:I

    invoke-static {p1, v1, v4}, Lcom/google/android/exoplayer2/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->shuffleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 502
    sget v4, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_repeat_off_description:I

    .line 503
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatOffButtonContentDescription:Ljava/lang/String;

    .line 504
    sget v4, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_repeat_one_description:I

    .line 505
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatOneButtonContentDescription:Ljava/lang/String;

    .line 506
    sget v4, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_repeat_all_description:I

    .line 507
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatAllButtonContentDescription:Ljava/lang/String;

    .line 508
    sget v4, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_shuffle_on_description:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->shuffleOnContentDescription:Ljava/lang/String;

    .line 509
    sget v4, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_shuffle_off_description:I

    .line 510
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->shuffleOffContentDescription:Ljava/lang/String;

    .line 512
    iput-wide v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->currentPosition:J

    .line 513
    iput-wide v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->currentBufferedPosition:J

    .line 514
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 251
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updatePlayPauseButton()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Ljava/util/Formatter;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 251
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->formatter:Ljava/util/Formatter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/Player;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 251
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/exoplayer2/ui/PlayerControlView;Lcom/google/android/exoplayer2/Player;J)V
    .registers 4
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlayerControlView;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/Player;
    .param p2, "x2"    # J

    .line 251
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->seekToTimeBarPosition(Lcom/google/android/exoplayer2/Player;J)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 251
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->nextButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 251
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->previousButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 251
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->fastForwardButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 251
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->rewindButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 251
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 251
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->pauseButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 251
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 251
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateProgress()V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/exoplayer2/ui/PlayerControlView;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 251
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleModes:I

    return v0
.end method

.method static synthetic access$2100(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 251
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 251
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateRepeatModeButton()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 251
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateShuffleButton()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 251
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateNavigation()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 251
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateTimeline()V

    return-void
.end method

.method static synthetic access$702(Lcom/google/android/exoplayer2/ui/PlayerControlView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlayerControlView;
    .param p1, "x1"    # Z

    .line 251
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->scrubbing:Z

    return p1
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 251
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->positionView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Ljava/lang/StringBuilder;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 251
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private static canShowMultiWindowTimeBar(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline$Window;)Z
    .registers 10
    .param p0, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p1, "window"    # Lcom/google/android/exoplayer2/Timeline$Window;

    .line 1235
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    const/16 v1, 0x64

    const/4 v2, 0x0

    if-le v0, v1, :cond_a

    .line 1236
    return v2

    .line 1238
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    .line 1239
    .local v0, "windowCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_24

    .line 1240
    invoke-virtual {p0, v1, p1}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v3

    iget-wide v3, v3, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-nez v7, :cond_21

    .line 1241
    return v2

    .line 1239
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1244
    .end local v1    # "i":I
    :cond_24
    const/4 v1, 0x1

    return v1
.end method

.method private static getRepeatToggleModes(Landroid/content/res/TypedArray;I)I
    .registers 3
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "defaultValue"    # I

    .line 1250
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerControlView_repeat_toggle_modes:I

    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    return v0
.end method

.method private hideAfterTimeout()V
    .registers 6

    .line 808
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 809
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showTimeoutMs:I

    if-lez v0, :cond_1e

    .line 810
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showTimeoutMs:I

    int-to-long v3, v2

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAtMs:J

    .line 811
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isAttachedToWindow:Z

    if-eqz v0, :cond_25

    .line 812
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAction:Ljava/lang/Runnable;

    int-to-long v1, v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_25

    .line 815
    :cond_1e
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAtMs:J

    .line 817
    :cond_25
    :goto_25
    return-void
.end method

.method private static isHandledMediaKey(I)Z
    .registers 2
    .param p0, "keyCode"    # I

    .line 1217
    const/16 v0, 0x5a

    if-eq p0, v0, :cond_23

    const/16 v0, 0x59

    if-eq p0, v0, :cond_23

    const/16 v0, 0x55

    if-eq p0, v0, :cond_23

    const/16 v0, 0x4f

    if-eq p0, v0, :cond_23

    const/16 v0, 0x7e

    if-eq p0, v0, :cond_23

    const/16 v0, 0x7f

    if-eq p0, v0, :cond_23

    const/16 v0, 0x57

    if-eq p0, v0, :cond_23

    const/16 v0, 0x58

    if-ne p0, v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    :goto_24
    return v0
.end method

.method private requestPlayPauseAccessibilityFocus()V
    .registers 4

    .line 1083
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->shouldShowPlayButton(Lcom/google/android/exoplayer2/Player;)Z

    move-result v0

    .line 1084
    .local v0, "shouldShowPlayButton":Z
    const/16 v1, 0x8

    if-eqz v0, :cond_12

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playButton:Landroid/view/View;

    if-eqz v2, :cond_12

    .line 1085
    invoke-virtual {v2, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_1b

    .line 1086
    :cond_12
    if-nez v0, :cond_1b

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->pauseButton:Landroid/view/View;

    if-eqz v2, :cond_1b

    .line 1087
    invoke-virtual {v2, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1089
    :cond_1b
    :goto_1b
    return-void
.end method

.method private requestPlayPauseFocus()V
    .registers 3

    .line 1074
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->shouldShowPlayButton(Lcom/google/android/exoplayer2/Player;)Z

    move-result v0

    .line 1075
    .local v0, "shouldShowPlayButton":Z
    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playButton:Landroid/view/View;

    if-eqz v1, :cond_10

    .line 1076
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_19

    .line 1077
    :cond_10
    if-nez v0, :cond_19

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->pauseButton:Landroid/view/View;

    if-eqz v1, :cond_19

    .line 1078
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1080
    :cond_19
    :goto_19
    return-void
.end method

.method private seekTo(Lcom/google/android/exoplayer2/Player;IJ)V
    .registers 5
    .param p1, "player"    # Lcom/google/android/exoplayer2/Player;
    .param p2, "windowIndex"    # I
    .param p3, "positionMs"    # J

    .line 1126
    invoke-interface {p1, p2, p3, p4}, Lcom/google/android/exoplayer2/Player;->seekTo(IJ)V

    .line 1127
    return-void
.end method

.method private seekToTimeBarPosition(Lcom/google/android/exoplayer2/Player;J)V
    .registers 10
    .param p1, "player"    # Lcom/google/android/exoplayer2/Player;
    .param p2, "positionMs"    # J

    .line 1102
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 1103
    .local v0, "timeline":Lcom/google/android/exoplayer2/Timeline;
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->multiWindowTimeBar:Z

    if-eqz v1, :cond_2e

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 1104
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v1

    .line 1105
    .local v1, "windowCount":I
    const/4 v2, 0x0

    .line 1107
    .local v2, "windowIndex":I
    :goto_13
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Timeline$Window;->getDurationMs()J

    move-result-wide v3

    .line 1108
    .local v3, "windowDurationMs":J
    cmp-long v5, p2, v3

    if-gez v5, :cond_22

    .line 1109
    goto :goto_28

    .line 1110
    :cond_22
    add-int/lit8 v5, v1, -0x1

    if-ne v2, v5, :cond_29

    .line 1112
    move-wide p2, v3

    .line 1113
    nop

    .line 1118
    .end local v1    # "windowCount":I
    .end local v3    # "windowDurationMs":J
    :goto_28
    goto :goto_32

    .line 1115
    .restart local v1    # "windowCount":I
    .restart local v3    # "windowDurationMs":J
    :cond_29
    sub-long/2addr p2, v3

    .line 1116
    nop

    .end local v3    # "windowDurationMs":J
    add-int/lit8 v2, v2, 0x1

    .line 1117
    goto :goto_13

    .line 1119
    .end local v1    # "windowCount":I
    .end local v2    # "windowIndex":I
    :cond_2e
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    move-result v2

    .line 1121
    .restart local v2    # "windowIndex":I
    :goto_32
    invoke-direct {p0, p1, v2, p2, p3}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->seekTo(Lcom/google/android/exoplayer2/Player;IJ)V

    .line 1122
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateProgress()V

    .line 1123
    return-void
.end method

.method private updateAll()V
    .registers 1

    .line 820
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updatePlayPauseButton()V

    .line 821
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateNavigation()V

    .line 822
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateRepeatModeButton()V

    .line 823
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateShuffleButton()V

    .line 824
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateTimeline()V

    .line 825
    return-void
.end method

.method private updateButton(ZZLandroid/view/View;)V
    .registers 5
    .param p1, "visible"    # Z
    .param p2, "enabled"    # Z
    .param p3, "view"    # Landroid/view/View;

    .line 1092
    if-nez p3, :cond_3

    .line 1093
    return-void

    .line 1095
    :cond_3
    invoke-virtual {p3, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 1096
    if-eqz p2, :cond_b

    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->buttonAlphaEnabled:F

    goto :goto_d

    :cond_b
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->buttonAlphaDisabled:F

    :goto_d
    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1097
    if-eqz p1, :cond_14

    const/4 v0, 0x0

    goto :goto_16

    :cond_14
    const/16 v0, 0x8

    :goto_16
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1098
    return-void
.end method

.method private updateNavigation()V
    .registers 9

    .line 859
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_54

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isAttachedToWindow:Z

    if-nez v0, :cond_b

    goto :goto_54

    .line 863
    :cond_b
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    .line 864
    .local v0, "player":Lcom/google/android/exoplayer2/Player;
    const/4 v1, 0x0

    .line 865
    .local v1, "enableSeeking":Z
    const/4 v2, 0x0

    .line 866
    .local v2, "enablePrevious":Z
    const/4 v3, 0x0

    .line 867
    .local v3, "enableRewind":Z
    const/4 v4, 0x0

    .line 868
    .local v4, "enableFastForward":Z
    const/4 v5, 0x0

    .line 869
    .local v5, "enableNext":Z
    if-eqz v0, :cond_30

    .line 870
    const/4 v6, 0x5

    invoke-interface {v0, v6}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v1

    .line 871
    const/4 v6, 0x7

    invoke-interface {v0, v6}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v2

    .line 872
    const/16 v6, 0xb

    invoke-interface {v0, v6}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v3

    .line 873
    const/16 v6, 0xc

    invoke-interface {v0, v6}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v4

    .line 874
    const/16 v6, 0x9

    invoke-interface {v0, v6}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v5

    .line 877
    :cond_30
    iget-boolean v6, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showPreviousButton:Z

    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->previousButton:Landroid/view/View;

    invoke-direct {p0, v6, v2, v7}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateButton(ZZLandroid/view/View;)V

    .line 878
    iget-boolean v6, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showRewindButton:Z

    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->rewindButton:Landroid/view/View;

    invoke-direct {p0, v6, v3, v7}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateButton(ZZLandroid/view/View;)V

    .line 879
    iget-boolean v6, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showFastForwardButton:Z

    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->fastForwardButton:Landroid/view/View;

    invoke-direct {p0, v6, v4, v7}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateButton(ZZLandroid/view/View;)V

    .line 880
    iget-boolean v6, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showNextButton:Z

    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->nextButton:Landroid/view/View;

    invoke-direct {p0, v6, v5, v7}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateButton(ZZLandroid/view/View;)V

    .line 881
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    if-eqz v6, :cond_53

    .line 882
    invoke-interface {v6, v1}, Lcom/google/android/exoplayer2/ui/TimeBar;->setEnabled(Z)V

    .line 884
    :cond_53
    return-void

    .line 860
    .end local v0    # "player":Lcom/google/android/exoplayer2/Player;
    .end local v1    # "enableSeeking":Z
    .end local v2    # "enablePrevious":Z
    .end local v3    # "enableRewind":Z
    .end local v4    # "enableFastForward":Z
    .end local v5    # "enableNext":Z
    :cond_54
    :goto_54
    return-void
.end method

.method private updatePlayPauseButton()V
    .registers 10

    .line 828
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_82

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isAttachedToWindow:Z

    if-nez v0, :cond_c

    goto/16 :goto_82

    .line 831
    :cond_c
    const/4 v0, 0x0

    .line 832
    .local v0, "requestPlayPauseFocus":Z
    const/4 v1, 0x0

    .line 833
    .local v1, "requestPlayPauseAccessibilityFocus":Z
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->shouldShowPlayButton(Lcom/google/android/exoplayer2/Player;)Z

    move-result v2

    .line 834
    .local v2, "shouldShowPlayButton":Z
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playButton:Landroid/view/View;

    const/16 v4, 0x8

    const/16 v5, 0x15

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_4a

    .line 835
    if-nez v2, :cond_28

    invoke-virtual {v3}, Landroid/view/View;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v3, 0x1

    goto :goto_29

    :cond_28
    const/4 v3, 0x0

    :goto_29
    or-int/2addr v0, v3

    .line 836
    nop

    .line 837
    sget v3, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-ge v3, v5, :cond_31

    .line 838
    move v3, v0

    goto :goto_3e

    .line 839
    :cond_31
    if-nez v2, :cond_3d

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playButton:Landroid/view/View;

    invoke-static {v3}, Lcom/google/android/exoplayer2/ui/PlayerControlView$Api21;->isAccessibilityFocused(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3d

    const/4 v3, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v3, 0x0

    :goto_3e
    or-int/2addr v1, v3

    .line 840
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playButton:Landroid/view/View;

    if-eqz v2, :cond_45

    const/4 v8, 0x0

    goto :goto_47

    :cond_45
    const/16 v8, 0x8

    :goto_47
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 842
    :cond_4a
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->pauseButton:Landroid/view/View;

    if-eqz v3, :cond_77

    .line 843
    if-eqz v2, :cond_58

    invoke-virtual {v3}, Landroid/view/View;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_58

    const/4 v3, 0x1

    goto :goto_59

    :cond_58
    const/4 v3, 0x0

    :goto_59
    or-int/2addr v0, v3

    .line 844
    nop

    .line 845
    sget v3, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-ge v3, v5, :cond_61

    .line 846
    move v6, v0

    goto :goto_6d

    .line 847
    :cond_61
    if-eqz v2, :cond_6c

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->pauseButton:Landroid/view/View;

    invoke-static {v3}, Lcom/google/android/exoplayer2/ui/PlayerControlView$Api21;->isAccessibilityFocused(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_6c

    goto :goto_6d

    :cond_6c
    const/4 v6, 0x0

    :goto_6d
    or-int/2addr v1, v6

    .line 848
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->pauseButton:Landroid/view/View;

    if-eqz v2, :cond_73

    goto :goto_74

    :cond_73
    const/4 v4, 0x0

    :goto_74
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 850
    :cond_77
    if-eqz v0, :cond_7c

    .line 851
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->requestPlayPauseFocus()V

    .line 853
    :cond_7c
    if-eqz v1, :cond_81

    .line 854
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->requestPlayPauseAccessibilityFocus()V

    .line 856
    :cond_81
    return-void

    .line 829
    .end local v0    # "requestPlayPauseFocus":Z
    .end local v1    # "requestPlayPauseAccessibilityFocus":Z
    .end local v2    # "shouldShowPlayButton":Z
    :cond_82
    :goto_82
    return-void
.end method

.method private updateProgress()V
    .registers 23

    .line 1020
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_c5

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isAttachedToWindow:Z

    if-nez v1, :cond_e

    goto/16 :goto_c5

    .line 1024
    :cond_e
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    .line 1025
    .local v1, "player":Lcom/google/android/exoplayer2/Player;
    const-wide/16 v2, 0x0

    .line 1026
    .local v2, "position":J
    const-wide/16 v4, 0x0

    .line 1027
    .local v4, "bufferedPosition":J
    if-eqz v1, :cond_26

    .line 1028
    iget-wide v6, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->currentWindowOffset:J

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getContentPosition()J

    move-result-wide v8

    add-long v2, v6, v8

    .line 1029
    iget-wide v6, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->currentWindowOffset:J

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getContentBufferedPosition()J

    move-result-wide v8

    add-long v4, v6, v8

    .line 1031
    :cond_26
    iget-wide v6, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->currentPosition:J

    const/4 v8, 0x0

    const/4 v9, 0x1

    cmp-long v10, v2, v6

    if-eqz v10, :cond_30

    const/4 v6, 0x1

    goto :goto_31

    :cond_30
    const/4 v6, 0x0

    .line 1032
    .local v6, "positionChanged":Z
    :goto_31
    iget-wide v10, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->currentBufferedPosition:J

    cmp-long v7, v4, v10

    if-eqz v7, :cond_38

    const/4 v8, 0x1

    :cond_38
    move v7, v8

    .line 1033
    .local v7, "bufferedPositionChanged":Z
    iput-wide v2, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->currentPosition:J

    .line 1034
    iput-wide v4, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->currentBufferedPosition:J

    .line 1038
    iget-object v8, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->positionView:Landroid/widget/TextView;

    if-eqz v8, :cond_52

    iget-boolean v10, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->scrubbing:Z

    if-nez v10, :cond_52

    if-eqz v6, :cond_52

    .line 1039
    iget-object v10, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->formatter:Ljava/util/Formatter;

    invoke-static {v10, v11, v2, v3}, Lcom/google/android/exoplayer2/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1041
    :cond_52
    iget-object v8, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    if-eqz v8, :cond_5e

    .line 1042
    invoke-interface {v8, v2, v3}, Lcom/google/android/exoplayer2/ui/TimeBar;->setPosition(J)V

    .line 1043
    iget-object v8, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    invoke-interface {v8, v4, v5}, Lcom/google/android/exoplayer2/ui/TimeBar;->setBufferedPosition(J)V

    .line 1045
    :cond_5e
    iget-object v8, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->progressUpdateListener:Lcom/google/android/exoplayer2/ui/PlayerControlView$ProgressUpdateListener;

    if-eqz v8, :cond_69

    if-nez v6, :cond_66

    if-eqz v7, :cond_69

    .line 1046
    :cond_66
    invoke-interface {v8, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/ui/PlayerControlView$ProgressUpdateListener;->onProgressUpdate(JJ)V

    .line 1050
    :cond_69
    iget-object v8, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1051
    if-nez v1, :cond_72

    const/4 v8, 0x1

    goto :goto_76

    :cond_72
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v8

    .line 1052
    .local v8, "playbackState":I
    :goto_76
    const-wide/16 v10, 0x3e8

    if-eqz v1, :cond_b6

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->isPlaying()Z

    move-result v12

    if-eqz v12, :cond_b6

    .line 1054
    iget-object v9, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    if-eqz v9, :cond_89

    invoke-interface {v9}, Lcom/google/android/exoplayer2/ui/TimeBar;->getPreferredUpdateDelay()J

    move-result-wide v12

    goto :goto_8a

    :cond_89
    move-wide v12, v10

    .line 1057
    .local v12, "mediaTimeDelayMs":J
    :goto_8a
    rem-long v14, v2, v10

    sub-long v14, v10, v14

    .line 1058
    .local v14, "mediaTimeUntilNextFullSecondMs":J
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 1061
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v9

    iget v9, v9, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    .line 1063
    .local v9, "playbackSpeed":F
    const/16 v16, 0x0

    cmpl-float v16, v9, v16

    if-lez v16, :cond_a1

    long-to-float v10, v12

    div-float/2addr v10, v9

    float-to-long v10, v10

    :cond_a1
    move-wide/from16 v16, v10

    .line 1066
    .local v16, "delayMs":J
    iget v10, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->timeBarMinUpdateIntervalMs:I

    int-to-long v10, v10

    const-wide/16 v20, 0x3e8

    move-wide/from16 v18, v10

    invoke-static/range {v16 .. v21}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v10

    .line 1067
    .end local v16    # "delayMs":J
    .local v10, "delayMs":J
    move-object/from16 v16, v1

    .end local v1    # "player":Lcom/google/android/exoplayer2/Player;
    .local v16, "player":Lcom/google/android/exoplayer2/Player;
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v10, v11}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    .end local v9    # "playbackSpeed":F
    .end local v10    # "delayMs":J
    .end local v12    # "mediaTimeDelayMs":J
    .end local v14    # "mediaTimeUntilNextFullSecondMs":J
    goto :goto_c3

    .line 1052
    .end local v16    # "player":Lcom/google/android/exoplayer2/Player;
    .restart local v1    # "player":Lcom/google/android/exoplayer2/Player;
    :cond_b6
    move-object/from16 v16, v1

    .line 1068
    .end local v1    # "player":Lcom/google/android/exoplayer2/Player;
    .restart local v16    # "player":Lcom/google/android/exoplayer2/Player;
    const/4 v1, 0x4

    if-eq v8, v1, :cond_c3

    if-eq v8, v9, :cond_c3

    .line 1069
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v10, v11}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_c4

    .line 1068
    :cond_c3
    :goto_c3
    nop

    .line 1071
    :goto_c4
    return-void

    .line 1021
    .end local v2    # "position":J
    .end local v4    # "bufferedPosition":J
    .end local v6    # "positionChanged":Z
    .end local v7    # "bufferedPositionChanged":Z
    .end local v8    # "playbackState":I
    .end local v16    # "player":Lcom/google/android/exoplayer2/Player;
    :cond_c5
    :goto_c5
    return-void
.end method

.method private updateRepeatModeButton()V
    .registers 5

    .line 887
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isAttachedToWindow:Z

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    if-nez v0, :cond_f

    goto :goto_6d

    .line 891
    :cond_f
    iget v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleModes:I

    const/4 v2, 0x0

    if-nez v1, :cond_18

    .line 892
    invoke-direct {p0, v2, v2, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateButton(ZZLandroid/view/View;)V

    .line 893
    return-void

    .line 896
    :cond_18
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    .line 897
    .local v1, "player":Lcom/google/android/exoplayer2/Player;
    const/4 v3, 0x1

    if-nez v1, :cond_2f

    .line 898
    invoke-direct {p0, v3, v2, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateButton(ZZLandroid/view/View;)V

    .line 899
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 900
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatOffButtonContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 901
    return-void

    .line 904
    :cond_2f
    invoke-direct {p0, v3, v3, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateButton(ZZLandroid/view/View;)V

    .line 905
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getRepeatMode()I

    move-result v0

    packed-switch v0, :pswitch_data_6e

    goto :goto_67

    .line 915
    :pswitch_3a
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatAllButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 916
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatAllButtonContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 917
    goto :goto_67

    .line 911
    :pswitch_49
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatOneButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 912
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatOneButtonContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 913
    goto :goto_67

    .line 907
    :pswitch_58
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 908
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatOffButtonContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 909
    nop

    .line 921
    :goto_67
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 922
    return-void

    .line 888
    .end local v1    # "player":Lcom/google/android/exoplayer2/Player;
    :cond_6d
    :goto_6d
    return-void

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_58
        :pswitch_49
        :pswitch_3a
    .end packed-switch
.end method

.method private updateShuffleButton()V
    .registers 5

    .line 925
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_53

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isAttachedToWindow:Z

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    if-nez v0, :cond_f

    goto :goto_53

    .line 929
    :cond_f
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    .line 930
    .local v1, "player":Lcom/google/android/exoplayer2/Player;
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showShuffleButton:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1a

    .line 931
    invoke-direct {p0, v3, v3, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateButton(ZZLandroid/view/View;)V

    goto :goto_52

    .line 932
    :cond_1a
    const/4 v2, 0x1

    if-nez v1, :cond_2f

    .line 933
    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateButton(ZZLandroid/view/View;)V

    .line 934
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->shuffleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 935
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->shuffleOffContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_52

    .line 937
    :cond_2f
    invoke-direct {p0, v2, v2, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateButton(ZZLandroid/view/View;)V

    .line 938
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    .line 939
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getShuffleModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->shuffleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_3f

    :cond_3d
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->shuffleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 938
    :goto_3f
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 940
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    .line 941
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getShuffleModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 942
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->shuffleOnContentDescription:Ljava/lang/String;

    goto :goto_4f

    .line 943
    :cond_4d
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->shuffleOffContentDescription:Ljava/lang/String;

    .line 940
    :goto_4f
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 945
    :goto_52
    return-void

    .line 926
    .end local v1    # "player":Lcom/google/android/exoplayer2/Player;
    :cond_53
    :goto_53
    return-void
.end method

.method private updateTimeline()V
    .registers 29

    .line 948
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    .line 949
    .local v1, "player":Lcom/google/android/exoplayer2/Player;
    if-nez v1, :cond_7

    .line 950
    return-void

    .line 952
    :cond_7
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showMultiWindowTimeBar:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_1a

    .line 953
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v2

    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-static {v2, v5}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->canShowMultiWindowTimeBar(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline$Window;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->multiWindowTimeBar:Z

    .line 954
    const-wide/16 v5, 0x0

    iput-wide v5, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->currentWindowOffset:J

    .line 955
    const-wide/16 v7, 0x0

    .line 956
    .local v7, "durationUs":J
    const/4 v2, 0x0

    .line 957
    .local v2, "adGroupCount":I
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v9

    .line 958
    .local v9, "timeline":Lcom/google/android/exoplayer2/Timeline;
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_118

    .line 959
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    move-result v10

    .line 960
    .local v10, "currentWindowIndex":I
    iget-boolean v11, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->multiWindowTimeBar:Z

    if-eqz v11, :cond_38

    const/4 v12, 0x0

    goto :goto_39

    :cond_38
    move v12, v10

    .line 961
    .local v12, "firstWindowIndex":I
    :goto_39
    if-eqz v11, :cond_41

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v11

    sub-int/2addr v11, v4

    goto :goto_42

    :cond_41
    move v11, v10

    .line 962
    .local v11, "lastWindowIndex":I
    :goto_42
    move v13, v12

    .local v13, "i":I
    :goto_43
    if-gt v13, v11, :cond_115

    .line 963
    if-ne v13, v10, :cond_4d

    .line 964
    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v14

    iput-wide v14, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->currentWindowOffset:J

    .line 966
    :cond_4d
    iget-object v14, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v9, v13, v14}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 967
    iget-object v14, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-wide v14, v14, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v18, v14, v16

    if-nez v18, :cond_69

    .line 968
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->multiWindowTimeBar:Z

    xor-int/2addr v4, v5

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 969
    move-object/from16 v22, v1

    goto/16 :goto_11a

    .line 971
    :cond_69
    iget-object v14, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v14, v14, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    .local v14, "j":I
    :goto_6d
    iget-object v15, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v15, v15, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    if-gt v14, v15, :cond_105

    .line 972
    iget-object v15, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v9, v14, v15}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 973
    iget-object v15, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v15}, Lcom/google/android/exoplayer2/Timeline$Period;->getRemovedAdGroupCount()I

    move-result v15

    .line 974
    .local v15, "removedGroups":I
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupCount()I

    move-result v4

    .line 975
    .local v4, "totalGroups":I
    move/from16 v19, v15

    move/from16 v3, v19

    .local v3, "adGroupIndex":I
    :goto_88
    if-ge v3, v4, :cond_fa

    .line 976
    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v5, v3}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v5

    .line 977
    .local v5, "adGroupTimeInPeriodUs":J
    const-wide/high16 v22, -0x8000000000000000L

    cmp-long v24, v5, v22

    if-nez v24, :cond_ac

    .line 978
    move-object/from16 v22, v1

    .end local v1    # "player":Lcom/google/android/exoplayer2/Player;
    .local v22, "player":Lcom/google/android/exoplayer2/Player;
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move/from16 v23, v4

    move-wide/from16 v24, v5

    .end local v4    # "totalGroups":I
    .end local v5    # "adGroupTimeInPeriodUs":J
    .local v23, "totalGroups":I
    .local v24, "adGroupTimeInPeriodUs":J
    iget-wide v4, v1, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    cmp-long v1, v4, v16

    if-nez v1, :cond_a7

    .line 980
    const-wide/16 v20, 0x0

    goto :goto_f1

    .line 982
    :cond_a7
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    .end local v24    # "adGroupTimeInPeriodUs":J
    .restart local v5    # "adGroupTimeInPeriodUs":J
    goto :goto_b2

    .line 977
    .end local v22    # "player":Lcom/google/android/exoplayer2/Player;
    .end local v23    # "totalGroups":I
    .restart local v1    # "player":Lcom/google/android/exoplayer2/Player;
    .restart local v4    # "totalGroups":I
    :cond_ac
    move-object/from16 v22, v1

    move/from16 v23, v4

    move-wide/from16 v24, v5

    .line 984
    .end local v1    # "player":Lcom/google/android/exoplayer2/Player;
    .end local v4    # "totalGroups":I
    .restart local v22    # "player":Lcom/google/android/exoplayer2/Player;
    .restart local v23    # "totalGroups":I
    :goto_b2
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v24

    add-long v24, v5, v24

    .line 985
    .local v24, "adGroupTimeInWindowUs":J
    const-wide/16 v20, 0x0

    cmp-long v1, v24, v20

    if-ltz v1, :cond_f1

    .line 986
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->adGroupTimesMs:[J

    array-length v4, v1

    if-ne v2, v4, :cond_db

    .line 987
    array-length v4, v1

    if-nez v4, :cond_ca

    const/4 v4, 0x1

    goto :goto_cd

    :cond_ca
    array-length v4, v1

    mul-int/lit8 v4, v4, 0x2

    .line 988
    .local v4, "newLength":I
    :goto_cd
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->adGroupTimesMs:[J

    .line 989
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playedAdGroups:[Z

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playedAdGroups:[Z

    .line 991
    .end local v4    # "newLength":I
    :cond_db
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->adGroupTimesMs:[J

    add-long v26, v7, v24

    invoke-static/range {v26 .. v27}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v26

    aput-wide v26, v1, v2

    .line 992
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playedAdGroups:[Z

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/Timeline$Period;->hasPlayedAdGroup(I)Z

    move-result v4

    aput-boolean v4, v1, v2

    .line 993
    add-int/lit8 v2, v2, 0x1

    .line 975
    .end local v5    # "adGroupTimeInPeriodUs":J
    .end local v24    # "adGroupTimeInWindowUs":J
    :cond_f1
    :goto_f1
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v5, v20

    move-object/from16 v1, v22

    move/from16 v4, v23

    goto :goto_88

    .end local v22    # "player":Lcom/google/android/exoplayer2/Player;
    .end local v23    # "totalGroups":I
    .restart local v1    # "player":Lcom/google/android/exoplayer2/Player;
    .local v4, "totalGroups":I
    :cond_fa
    move-object/from16 v22, v1

    move/from16 v23, v4

    move-wide/from16 v20, v5

    .line 971
    .end local v1    # "player":Lcom/google/android/exoplayer2/Player;
    .end local v3    # "adGroupIndex":I
    .end local v4    # "totalGroups":I
    .end local v15    # "removedGroups":I
    .restart local v22    # "player":Lcom/google/android/exoplayer2/Player;
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x1

    goto/16 :goto_6d

    .end local v22    # "player":Lcom/google/android/exoplayer2/Player;
    .restart local v1    # "player":Lcom/google/android/exoplayer2/Player;
    :cond_105
    move-object/from16 v22, v1

    move-wide/from16 v20, v5

    .line 997
    .end local v1    # "player":Lcom/google/android/exoplayer2/Player;
    .end local v14    # "j":I
    .restart local v22    # "player":Lcom/google/android/exoplayer2/Player;
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    add-long/2addr v7, v3

    .line 962
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v22

    const/4 v4, 0x1

    goto/16 :goto_43

    .end local v22    # "player":Lcom/google/android/exoplayer2/Player;
    .restart local v1    # "player":Lcom/google/android/exoplayer2/Player;
    :cond_115
    move-object/from16 v22, v1

    .end local v1    # "player":Lcom/google/android/exoplayer2/Player;
    .restart local v22    # "player":Lcom/google/android/exoplayer2/Player;
    goto :goto_11a

    .line 958
    .end local v10    # "currentWindowIndex":I
    .end local v11    # "lastWindowIndex":I
    .end local v12    # "firstWindowIndex":I
    .end local v13    # "i":I
    .end local v22    # "player":Lcom/google/android/exoplayer2/Player;
    .restart local v1    # "player":Lcom/google/android/exoplayer2/Player;
    :cond_118
    move-object/from16 v22, v1

    .line 1000
    .end local v1    # "player":Lcom/google/android/exoplayer2/Player;
    .restart local v22    # "player":Lcom/google/android/exoplayer2/Player;
    :goto_11a
    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v3

    .line 1001
    .local v3, "durationMs":J
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->durationView:Landroid/widget/TextView;

    if-eqz v1, :cond_12d

    .line 1002
    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->formatter:Ljava/util/Formatter;

    invoke-static {v5, v6, v3, v4}, Lcom/google/android/exoplayer2/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1004
    :cond_12d
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    if-eqz v1, :cond_164

    .line 1005
    invoke-interface {v1, v3, v4}, Lcom/google/android/exoplayer2/ui/TimeBar;->setDuration(J)V

    .line 1006
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->extraAdGroupTimesMs:[J

    array-length v1, v1

    .line 1007
    .local v1, "extraAdGroupCount":I
    add-int v5, v2, v1

    .line 1008
    .local v5, "totalAdGroupCount":I
    iget-object v6, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->adGroupTimesMs:[J

    array-length v10, v6

    if-le v5, v10, :cond_14c

    .line 1009
    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->adGroupTimesMs:[J

    .line 1010
    iget-object v6, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playedAdGroups:[Z

    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playedAdGroups:[Z

    .line 1012
    :cond_14c
    iget-object v6, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->extraAdGroupTimesMs:[J

    iget-object v10, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->adGroupTimesMs:[J

    const/4 v11, 0x0

    invoke-static {v6, v11, v10, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1013
    iget-object v6, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->extraPlayedAdGroups:[Z

    iget-object v10, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playedAdGroups:[Z

    invoke-static {v6, v11, v10, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1014
    iget-object v6, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    iget-object v10, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->adGroupTimesMs:[J

    iget-object v11, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playedAdGroups:[Z

    invoke-interface {v6, v10, v11, v5}, Lcom/google/android/exoplayer2/ui/TimeBar;->setAdGroupTimesMs([J[ZI)V

    .line 1016
    .end local v1    # "extraAdGroupCount":I
    .end local v5    # "totalAdGroupCount":I
    :cond_164
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateProgress()V

    .line 1017
    return-void
.end method


# virtual methods
.method public addVisibilityListener(Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;

    .line 592
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1166
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1177
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1178
    .local v0, "keyCode":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    .line 1179
    .local v1, "player":Lcom/google/android/exoplayer2/Player;
    if-eqz v1, :cond_4c

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isHandledMediaKey(I)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_4c

    .line 1182
    :cond_f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_4a

    .line 1183
    const/16 v2, 0x5a

    if-ne v0, v2, :cond_24

    .line 1184
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4a

    .line 1185
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->seekForward()V

    goto :goto_4a

    .line 1187
    :cond_24
    const/16 v2, 0x59

    if-ne v0, v2, :cond_2c

    .line 1188
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->seekBack()V

    goto :goto_4a

    .line 1189
    :cond_2c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_4a

    .line 1190
    sparse-switch v0, :sswitch_data_4e

    goto :goto_4a

    .line 1199
    :sswitch_36
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->handlePauseButtonAction(Lcom/google/android/exoplayer2/Player;)Z

    .line 1200
    goto :goto_4a

    .line 1196
    :sswitch_3a
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->handlePlayButtonAction(Lcom/google/android/exoplayer2/Player;)Z

    .line 1197
    goto :goto_4a

    .line 1205
    :sswitch_3e
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->seekToPrevious()V

    .line 1206
    goto :goto_4a

    .line 1202
    :sswitch_42
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->seekToNext()V

    .line 1203
    goto :goto_4a

    .line 1193
    :sswitch_46
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->handlePlayPauseButtonAction(Lcom/google/android/exoplayer2/Player;)Z

    .line 1194
    nop

    .line 1212
    :cond_4a
    :goto_4a
    const/4 v2, 0x1

    return v2

    .line 1180
    :cond_4c
    :goto_4c
    const/4 v2, 0x0

    return v2

    :sswitch_data_4e
    .sparse-switch
        0x4f -> :sswitch_46
        0x55 -> :sswitch_46
        0x57 -> :sswitch_42
        0x58 -> :sswitch_3e
        0x7e -> :sswitch_3a
        0x7f -> :sswitch_36
    .end sparse-switch
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1156
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_c

    .line 1157
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_16

    .line 1158
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 1159
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAfterTimeout()V

    .line 1161
    :cond_16
    :goto_16
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getPlayer()Lcom/google/android/exoplayer2/Player;
    .registers 2

    .line 522
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    return-object v0
.end method

.method public getRepeatToggleModes()I
    .registers 2

    .line 686
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleModes:I

    return v0
.end method

.method public getShowShuffleButton()Z
    .registers 2

    .line 714
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showShuffleButton:Z

    return v0
.end method

.method public getShowTimeoutMs()I
    .registers 2

    .line 662
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showTimeoutMs:I

    return v0
.end method

.method public getShowVrButton()Z
    .registers 2

    .line 729
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->vrButton:Landroid/view/View;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public hide()V
    .registers 4

    .line 791
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 792
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setVisibility(I)V

    .line 793
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;

    .line 794
    .local v1, "visibilityListener":Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->getVisibility()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;->onVisibilityChange(I)V

    .line 795
    .end local v1    # "visibilityListener":Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;
    goto :goto_11

    .line 796
    :cond_25
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 797
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 798
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAtMs:J

    .line 800
    :cond_36
    return-void
.end method

.method public isVisible()Z
    .registers 2

    .line 804
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public onAttachedToWindow()V
    .registers 6

    .line 1131
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isAttachedToWindow:Z

    .line 1133
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAtMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_26

    .line 1134
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 1135
    .local v0, "delayMs":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_20

    .line 1136
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hide()V

    goto :goto_30

    .line 1138
    :cond_20
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_30

    .line 1140
    .end local v0    # "delayMs":J
    :cond_26
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1141
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAfterTimeout()V

    goto :goto_31

    .line 1140
    :cond_30
    :goto_30
    nop

    .line 1143
    :goto_31
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateAll()V

    .line 1144
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 1148
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isAttachedToWindow:Z

    .line 1150
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1151
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1152
    return-void
.end method

.method public removeVisibilityListener(Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;

    .line 602
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 603
    return-void
.end method

.method public setExtraAdGroupMarkers([J[Z)V
    .registers 6
    .param p1, "extraAdGroupTimesMs"    # [J
    .param p2, "extraPlayedAdGroups"    # [Z

    .line 574
    const/4 v0, 0x0

    if-nez p1, :cond_c

    .line 575
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->extraAdGroupTimesMs:[J

    .line 576
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->extraPlayedAdGroups:[Z

    goto :goto_1f

    .line 578
    :cond_c
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object p2, v1

    check-cast p2, [Z

    .line 579
    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_18

    const/4 v0, 0x1

    :cond_18
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 580
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->extraAdGroupTimesMs:[J

    .line 581
    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->extraPlayedAdGroups:[Z

    .line 583
    :goto_1f
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateTimeline()V

    .line 584
    return-void
.end method

.method public setPlayer(Lcom/google/android/exoplayer2/Player;)V
    .registers 6
    .param p1, "player"    # Lcom/google/android/exoplayer2/Player;

    .line 533
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 534
    if-eqz p1, :cond_21

    .line 535
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v2, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    nop

    .line 534
    :goto_22
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 536
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-ne v0, p1, :cond_2a

    .line 537
    return-void

    .line 539
    :cond_2a
    if-eqz v0, :cond_31

    .line 540
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->removeListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 542
    :cond_31
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    .line 543
    if-eqz p1, :cond_3a

    .line 544
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 546
    :cond_3a
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateAll()V

    .line 547
    return-void
.end method

.method public setProgressUpdateListener(Lcom/google/android/exoplayer2/ui/PlayerControlView$ProgressUpdateListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/google/android/exoplayer2/ui/PlayerControlView$ProgressUpdateListener;

    .line 611
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->progressUpdateListener:Lcom/google/android/exoplayer2/ui/PlayerControlView$ProgressUpdateListener;

    .line 612
    return-void
.end method

.method public setRepeatToggleModes(I)V
    .registers 5
    .param p1, "repeatToggleModes"    # I

    .line 695
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleModes:I

    .line 696
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_2a

    .line 697
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getRepeatMode()I

    move-result v0

    .line 698
    .local v0, "currentMode":I
    if-nez p1, :cond_15

    if-eqz v0, :cond_15

    .line 700
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/Player;->setRepeatMode(I)V

    goto :goto_2a

    .line 701
    :cond_15
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_21

    if-ne v0, v1, :cond_21

    .line 703
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/Player;->setRepeatMode(I)V

    goto :goto_2a

    .line 704
    :cond_21
    if-ne p1, v1, :cond_2a

    if-ne v0, v2, :cond_2a

    .line 706
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/Player;->setRepeatMode(I)V

    .line 709
    .end local v0    # "currentMode":I
    :cond_2a
    :goto_2a
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateRepeatModeButton()V

    .line 710
    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .registers 2
    .param p1, "showFastForwardButton"    # Z

    .line 630
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showFastForwardButton:Z

    .line 631
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateNavigation()V

    .line 632
    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .registers 2
    .param p1, "showMultiWindowTimeBar"    # Z

    .line 558
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showMultiWindowTimeBar:Z

    .line 559
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateTimeline()V

    .line 560
    return-void
.end method

.method public setShowNextButton(Z)V
    .registers 2
    .param p1, "showNextButton"    # Z

    .line 650
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showNextButton:Z

    .line 651
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateNavigation()V

    .line 652
    return-void
.end method

.method public setShowPreviousButton(Z)V
    .registers 2
    .param p1, "showPreviousButton"    # Z

    .line 640
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showPreviousButton:Z

    .line 641
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateNavigation()V

    .line 642
    return-void
.end method

.method public setShowRewindButton(Z)V
    .registers 2
    .param p1, "showRewindButton"    # Z

    .line 620
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showRewindButton:Z

    .line 621
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateNavigation()V

    .line 622
    return-void
.end method

.method public setShowShuffleButton(Z)V
    .registers 2
    .param p1, "showShuffleButton"    # Z

    .line 723
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showShuffleButton:Z

    .line 724
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateShuffleButton()V

    .line 725
    return-void
.end method

.method public setShowTimeoutMs(I)V
    .registers 3
    .param p1, "showTimeoutMs"    # I

    .line 673
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showTimeoutMs:I

    .line 674
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 676
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAfterTimeout()V

    .line 678
    :cond_b
    return-void
.end method

.method public setShowVrButton(Z)V
    .registers 4
    .param p1, "showVrButton"    # Z

    .line 738
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->vrButton:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 739
    if-eqz p1, :cond_8

    const/4 v1, 0x0

    goto :goto_a

    :cond_8
    const/16 v1, 0x8

    :goto_a
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 741
    :cond_d
    return-void
.end method

.method public setTimeBarMinUpdateInterval(I)V
    .registers 4
    .param p1, "minUpdateIntervalMs"    # I

    .line 767
    nop

    .line 768
    const/16 v0, 0x10

    const/16 v1, 0x3e8

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->timeBarMinUpdateIntervalMs:I

    .line 769
    return-void
.end method

.method public setVrButtonListener(Landroid/view/View$OnClickListener;)V
    .registers 5
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 749
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->vrButton:Landroid/view/View;

    if-eqz v0, :cond_15

    .line 750
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 751
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->getShowVrButton()Z

    move-result v0

    if-eqz p1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->vrButton:Landroid/view/View;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateButton(ZZLandroid/view/View;)V

    .line 753
    :cond_15
    return-void
.end method

.method public show()V
    .registers 4

    .line 776
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 777
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setVisibility(I)V

    .line 778
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;

    .line 779
    .local v1, "visibilityListener":Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->getVisibility()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;->onVisibilityChange(I)V

    .line 780
    .end local v1    # "visibilityListener":Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;
    goto :goto_10

    .line 781
    :cond_24
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateAll()V

    .line 782
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->requestPlayPauseFocus()V

    .line 783
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->requestPlayPauseAccessibilityFocus()V

    .line 786
    :cond_2d
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAfterTimeout()V

    .line 787
    return-void
.end method
