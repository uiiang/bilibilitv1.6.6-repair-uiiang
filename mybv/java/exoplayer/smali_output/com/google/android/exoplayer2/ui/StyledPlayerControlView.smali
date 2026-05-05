.class public Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;
.super Landroid/widget/FrameLayout;
.source "StyledPlayerControlView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$PlaybackSpeedAdapter;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ProgressUpdateListener;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$OnFullScreenModeChangedListener;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$VisibilityListener;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SubSettingViewHolder;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackSelectionAdapter;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;
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

.field private static final PLAYBACK_SPEEDS:[F

.field private static final SETTINGS_AUDIO_TRACK_SELECTION_POSITION:I = 0x1

.field private static final SETTINGS_PLAYBACK_SPEED_POSITION:I


# instance fields
.field private adGroupTimesMs:[J

.field private final audioTrackButton:Landroid/view/View;

.field private final audioTrackSelectionAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter;

.field private final buttonAlphaDisabled:F

.field private final buttonAlphaEnabled:F

.field private final componentListener:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;

.field private final controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

.field private currentWindowOffset:J

.field private final durationView:Landroid/widget/TextView;

.field private extraAdGroupTimesMs:[J

.field private extraPlayedAdGroups:[Z

.field private final fastForwardButton:Landroid/view/View;

.field private final fastForwardButtonTextView:Landroid/widget/TextView;

.field private final formatBuilder:Ljava/lang/StringBuilder;

.field private final formatter:Ljava/util/Formatter;

.field private final fullScreenButton:Landroid/widget/ImageView;

.field private final fullScreenEnterContentDescription:Ljava/lang/String;

.field private final fullScreenEnterDrawable:Landroid/graphics/drawable/Drawable;

.field private final fullScreenExitContentDescription:Ljava/lang/String;

.field private final fullScreenExitDrawable:Landroid/graphics/drawable/Drawable;

.field private isAttachedToWindow:Z

.field private isFullScreen:Z

.field private final minimalFullScreenButton:Landroid/widget/ImageView;

.field private multiWindowTimeBar:Z

.field private needToHideBars:Z

.field private final nextButton:Landroid/view/View;

.field private onFullScreenModeChangedListener:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$OnFullScreenModeChangedListener;

.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field private final playPauseButton:Landroid/view/View;

.field private final playbackSpeedAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$PlaybackSpeedAdapter;

.field private final playbackSpeedButton:Landroid/view/View;

.field private playedAdGroups:[Z

.field private player:Lcom/google/android/exoplayer2/Player;

.field private final positionView:Landroid/widget/TextView;

.field private final previousButton:Landroid/view/View;

.field private progressUpdateListener:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ProgressUpdateListener;

.field private final repeatAllButtonContentDescription:Ljava/lang/String;

.field private final repeatAllButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final repeatOffButtonContentDescription:Ljava/lang/String;

.field private final repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final repeatOneButtonContentDescription:Ljava/lang/String;

.field private final repeatOneButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final repeatToggleButton:Landroid/widget/ImageView;

.field private repeatToggleModes:I

.field private final resources:Landroid/content/res/Resources;

.field private final rewindButton:Landroid/view/View;

.field private final rewindButtonTextView:Landroid/widget/TextView;

.field private scrubbing:Z

.field private final settingsAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;

.field private final settingsButton:Landroid/view/View;

.field private final settingsView:Landroidx/recyclerview/widget/RecyclerView;

.field private final settingsWindow:Landroid/widget/PopupWindow;

.field private final settingsWindowMargin:I

.field private showMultiWindowTimeBar:Z

.field private showTimeoutMs:I

.field private final shuffleButton:Landroid/widget/ImageView;

.field private final shuffleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final shuffleOffContentDescription:Ljava/lang/String;

.field private final shuffleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final shuffleOnContentDescription:Ljava/lang/String;

.field private final subtitleButton:Landroid/widget/ImageView;

.field private final subtitleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final subtitleOffContentDescription:Ljava/lang/String;

.field private final subtitleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final subtitleOnContentDescription:Ljava/lang/String;

.field private final textTrackSelectionAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;

.field private final timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

.field private timeBarMinUpdateIntervalMs:I

.field private final trackNameProvider:Lcom/google/android/exoplayer2/ui/TrackNameProvider;

.field private final updateProgressAction:Ljava/lang/Runnable;

.field private final visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$VisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private final vrButton:Landroid/view/View;

.field private final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method public static synthetic $r8$lambda$VIUC90akgliKObyZnsLjDCSGVvY(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->onFullScreenButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dsDS5OYIroORhxkiiMev-op7GuU(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateProgress()V

    return-void
.end method

.method public static synthetic $r8$lambda$yF0wxNFGTOK6vMLq5xLUexTMVVQ(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Landroid/view/View;IIIIIIII)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 200
    const-string v0, "goog.exo.ui"

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    .line 261
    const/4 v0, 0x7

    new-array v0, v0, [F

    fill-array-data v0, :array_e

    sput-object v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->PLAYBACK_SPEEDS:[F

    return-void

    :array_e
    .array-data 4
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 351
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 352
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 355
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 356
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 359
    invoke-direct {p0, p1, p2, p3, p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    .line 360
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V
    .registers 40
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "playbackAttrs"    # Landroid/util/AttributeSet;

    .line 373
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 374
    sget v2, Lcom/google/android/exoplayer2/ui/R$layout;->exo_styled_player_control_view:I

    .line 375
    .local v2, "controllerLayoutId":I
    const/16 v0, 0x1388

    iput v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->showTimeoutMs:I

    .line 376
    const/4 v0, 0x0

    iput v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatToggleModes:I

    .line 377
    const/16 v3, 0xc8

    iput v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->timeBarMinUpdateIntervalMs:I

    .line 378
    const/4 v3, 0x1

    .line 379
    .local v3, "showRewindButton":Z
    const/4 v4, 0x1

    .line 380
    .local v4, "showFastForwardButton":Z
    const/4 v5, 0x1

    .line 381
    .local v5, "showPreviousButton":Z
    const/4 v6, 0x1

    .line 382
    .local v6, "showNextButton":Z
    const/4 v7, 0x0

    .line 383
    .local v7, "showShuffleButton":Z
    const/4 v10, 0x0

    .line 384
    .local v10, "showSubtitleButton":Z
    const/4 v11, 0x1

    .line 385
    .local v11, "animationEnabled":Z
    const/4 v12, 0x0

    .line 387
    .local v12, "showVrButton":Z
    if-eqz v9, :cond_9e

    .line 388
    nop

    .line 390
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v13

    sget-object v14, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView:[I

    .line 391
    move/from16 v15, p3

    invoke-virtual {v13, v9, v14, v15, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 397
    .local v13, "a":Landroid/content/res/TypedArray;
    :try_start_2d
    sget v14, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_controller_layout_id:I

    .line 398
    invoke-virtual {v13, v14, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    move v2, v14

    .line 400
    sget v14, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_show_timeout:I

    iget v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->showTimeoutMs:I

    invoke-virtual {v13, v14, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->showTimeoutMs:I

    .line 401
    iget v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatToggleModes:I

    invoke-static {v13, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getRepeatToggleModes(Landroid/content/res/TypedArray;I)I

    move-result v0

    iput v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatToggleModes:I

    .line 402
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_show_rewind_button:I

    .line 403
    invoke-virtual {v13, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v3, v0

    .line 404
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_show_fastforward_button:I

    .line 405
    invoke-virtual {v13, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v4, v0

    .line 407
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_show_previous_button:I

    .line 408
    invoke-virtual {v13, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v5, v0

    .line 410
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_show_next_button:I

    .line 411
    invoke-virtual {v13, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v6, v0

    .line 412
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_show_shuffle_button:I

    .line 413
    invoke-virtual {v13, v0, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v7, v0

    .line 415
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_show_subtitle_button:I

    .line 416
    invoke-virtual {v13, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v10, v0

    .line 418
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_show_vr_button:I

    .line 419
    invoke-virtual {v13, v0, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v12, v0

    .line 420
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_time_bar_min_update_interval:I

    iget v14, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->timeBarMinUpdateIntervalMs:I

    .line 421
    invoke-virtual {v13, v0, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 420
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setTimeBarMinUpdateInterval(I)V

    .line 424
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_animation_enabled:I

    .line 425
    invoke-virtual {v13, v0, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0
    :try_end_88
    .catchall {:try_start_2d .. :try_end_88} :catchall_99

    move v11, v0

    .line 427
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 428
    move v0, v2

    move v13, v6

    move v14, v7

    move v7, v10

    move v6, v11

    move v10, v3

    move v11, v4

    move/from16 v34, v12

    move v12, v5

    move/from16 v5, v34

    goto :goto_ac

    .line 427
    :catchall_99
    move-exception v0

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 428
    throw v0

    .line 387
    .end local v13    # "a":Landroid/content/res/TypedArray;
    :cond_9e
    move/from16 v15, p3

    move v0, v2

    move v13, v6

    move v14, v7

    move v7, v10

    move v6, v11

    move v10, v3

    move v11, v4

    move/from16 v34, v12

    move v12, v5

    move/from16 v5, v34

    .line 431
    .end local v2    # "controllerLayoutId":I
    .end local v3    # "showRewindButton":Z
    .end local v4    # "showFastForwardButton":Z
    .local v0, "controllerLayoutId":I
    .local v5, "showVrButton":Z
    .local v6, "animationEnabled":Z
    .local v7, "showSubtitleButton":Z
    .local v10, "showRewindButton":Z
    .local v11, "showFastForwardButton":Z
    .local v12, "showPreviousButton":Z
    .local v13, "showNextButton":Z
    .local v14, "showShuffleButton":Z
    :goto_ac
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 432
    const/high16 v2, 0x40000

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setDescendantFocusability(I)V

    .line 434
    new-instance v4, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;

    const/4 v3, 0x0

    invoke-direct {v4, v1, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$1;)V

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->componentListener:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;

    .line 435
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 436
    new-instance v2, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 437
    new-instance v2, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 438
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;

    .line 439
    new-instance v3, Ljava/util/Formatter;

    move/from16 v18, v0

    .end local v0    # "controllerLayoutId":I
    .local v18, "controllerLayoutId":I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->formatter:Ljava/util/Formatter;

    .line 440
    const/4 v0, 0x0

    new-array v2, v0, [J

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->adGroupTimesMs:[J

    .line 441
    new-array v2, v0, [Z

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playedAdGroups:[Z

    .line 442
    new-array v2, v0, [J

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->extraAdGroupTimesMs:[J

    .line 443
    new-array v2, v0, [Z

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->extraPlayedAdGroups:[Z

    .line 444
    new-instance v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    .line 446
    sget v0, Lcom/google/android/exoplayer2/ui/R$id;->exo_duration:I

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->durationView:Landroid/widget/TextView;

    .line 447
    sget v0, Lcom/google/android/exoplayer2/ui/R$id;->exo_position:I

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->positionView:Landroid/widget/TextView;

    .line 449
    sget v0, Lcom/google/android/exoplayer2/ui/R$id;->exo_subtitle:I

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->subtitleButton:Landroid/widget/ImageView;

    .line 450
    if-eqz v0, :cond_124

    .line 451
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    :cond_124
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_fullscreen:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->fullScreenButton:Landroid/widget/ImageView;

    .line 455
    new-instance v3, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->initializeFullScreenButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 456
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_minimal_fullscreen:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->minimalFullScreenButton:Landroid/widget/ImageView;

    .line 457
    new-instance v3, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->initializeFullScreenButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 459
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_settings:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsButton:Landroid/view/View;

    .line 460
    if-eqz v2, :cond_155

    .line 461
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    :cond_155
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_playback_speed:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playbackSpeedButton:Landroid/view/View;

    .line 465
    if-eqz v2, :cond_162

    .line 466
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    :cond_162
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_audio_track:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->audioTrackButton:Landroid/view/View;

    .line 470
    if-eqz v2, :cond_16f

    .line 471
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 474
    :cond_16f
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_progress:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/android/exoplayer2/ui/TimeBar;

    .line 475
    .local v3, "customTimeBar":Lcom/google/android/exoplayer2/ui/TimeBar;
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_progress_placeholder:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 476
    .local v2, "timeBarPlaceholder":Landroid/view/View;
    if-eqz v3, :cond_18d

    .line 477
    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    move-object/from16 v17, v3

    move-object v9, v4

    move/from16 v24, v5

    move/from16 v25, v6

    move v15, v7

    move-object v4, v2

    const/4 v2, 0x0

    goto :goto_1de

    .line 478
    :cond_18d
    if-eqz v2, :cond_1d2

    .line 481
    new-instance v19, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    const/16 v20, 0x0

    const/16 v21, 0x0

    sget v22, Lcom/google/android/exoplayer2/ui/R$style;->ExoStyledControls_TimeBar:I

    move-object/from16 v23, v2

    .end local v2    # "timeBarPlaceholder":Landroid/view/View;
    .local v23, "timeBarPlaceholder":Landroid/view/View;
    move-object/from16 v2, v19

    move-object/from16 v17, v3

    .end local v3    # "customTimeBar":Lcom/google/android/exoplayer2/ui/TimeBar;
    .local v17, "customTimeBar":Lcom/google/android/exoplayer2/ui/TimeBar;
    move-object/from16 v3, p1

    move-object v9, v4

    move-object/from16 v4, v20

    move/from16 v24, v5

    .end local v5    # "showVrButton":Z
    .local v24, "showVrButton":Z
    move/from16 v5, v21

    move/from16 v25, v6

    .end local v6    # "animationEnabled":Z
    .local v25, "animationEnabled":Z
    move-object/from16 v6, p4

    move v15, v7

    .end local v7    # "showSubtitleButton":Z
    .local v15, "showSubtitleButton":Z
    move/from16 v7, v22

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;I)V

    .line 483
    .local v2, "defaultTimeBar":Lcom/google/android/exoplayer2/ui/DefaultTimeBar;
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_progress:I

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setId(I)V

    .line 484
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 485
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 486
    .local v3, "parent":Landroid/view/ViewGroup;
    move-object/from16 v4, v23

    .end local v23    # "timeBarPlaceholder":Landroid/view/View;
    .local v4, "timeBarPlaceholder":Landroid/view/View;
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 487
    .local v5, "timeBarIndex":I
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 488
    invoke-virtual {v3, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 489
    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    .line 490
    .end local v2    # "defaultTimeBar":Lcom/google/android/exoplayer2/ui/DefaultTimeBar;
    .end local v3    # "parent":Landroid/view/ViewGroup;
    .end local v5    # "timeBarIndex":I
    const/4 v2, 0x0

    goto :goto_1de

    .line 491
    .end local v4    # "timeBarPlaceholder":Landroid/view/View;
    .end local v15    # "showSubtitleButton":Z
    .end local v17    # "customTimeBar":Lcom/google/android/exoplayer2/ui/TimeBar;
    .end local v24    # "showVrButton":Z
    .end local v25    # "animationEnabled":Z
    .local v2, "timeBarPlaceholder":Landroid/view/View;
    .local v3, "customTimeBar":Lcom/google/android/exoplayer2/ui/TimeBar;
    .local v5, "showVrButton":Z
    .restart local v6    # "animationEnabled":Z
    .restart local v7    # "showSubtitleButton":Z
    :cond_1d2
    move-object/from16 v17, v3

    move-object v9, v4

    move/from16 v24, v5

    move/from16 v25, v6

    move v15, v7

    move-object v4, v2

    .end local v2    # "timeBarPlaceholder":Landroid/view/View;
    .end local v3    # "customTimeBar":Lcom/google/android/exoplayer2/ui/TimeBar;
    .end local v5    # "showVrButton":Z
    .end local v6    # "animationEnabled":Z
    .end local v7    # "showSubtitleButton":Z
    .restart local v4    # "timeBarPlaceholder":Landroid/view/View;
    .restart local v15    # "showSubtitleButton":Z
    .restart local v17    # "customTimeBar":Lcom/google/android/exoplayer2/ui/TimeBar;
    .restart local v24    # "showVrButton":Z
    .restart local v25    # "animationEnabled":Z
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    .line 493
    :goto_1de
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    if-eqz v3, :cond_1e5

    .line 494
    invoke-interface {v3, v9}, Lcom/google/android/exoplayer2/ui/TimeBar;->addListener(Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;)V

    .line 497
    :cond_1e5
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_play_pause:I

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playPauseButton:Landroid/view/View;

    .line 498
    if-eqz v3, :cond_1f2

    .line 499
    invoke-virtual {v3, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    :cond_1f2
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_prev:I

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->previousButton:Landroid/view/View;

    .line 502
    if-eqz v3, :cond_1ff

    .line 503
    invoke-virtual {v3, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 505
    :cond_1ff
    sget v5, Lcom/google/android/exoplayer2/ui/R$id;->exo_next:I

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->nextButton:Landroid/view/View;

    .line 506
    if-eqz v5, :cond_20c

    .line 507
    invoke-virtual {v5, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    :cond_20c
    sget v6, Lcom/google/android/exoplayer2/ui/R$font;->roboto_medium_numbers:I

    invoke-static {v8, v6}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v6

    .line 510
    .local v6, "typeface":Landroid/graphics/Typeface;
    sget v7, Lcom/google/android/exoplayer2/ui/R$id;->exo_rew:I

    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 511
    .local v7, "rewButton":Landroid/view/View;
    if-nez v7, :cond_223

    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_rew_with_amount:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    goto :goto_224

    :cond_223
    const/4 v2, 0x0

    :goto_224
    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->rewindButtonTextView:Landroid/widget/TextView;

    .line 512
    if-eqz v2, :cond_22b

    .line 513
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 515
    :cond_22b
    if-nez v7, :cond_22e

    goto :goto_22f

    :cond_22e
    move-object v2, v7

    :goto_22f
    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->rewindButton:Landroid/view/View;

    .line 516
    if-eqz v2, :cond_236

    .line 517
    invoke-virtual {v2, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    :cond_236
    move-object/from16 v23, v4

    .end local v4    # "timeBarPlaceholder":Landroid/view/View;
    .restart local v23    # "timeBarPlaceholder":Landroid/view/View;
    sget v4, Lcom/google/android/exoplayer2/ui/R$id;->exo_ffwd:I

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 520
    .local v4, "ffwdButton":Landroid/view/View;
    if-nez v4, :cond_24b

    move-object/from16 v19, v7

    .end local v7    # "rewButton":Landroid/view/View;
    .local v19, "rewButton":Landroid/view/View;
    sget v7, Lcom/google/android/exoplayer2/ui/R$id;->exo_ffwd_with_amount:I

    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    goto :goto_24e

    .end local v19    # "rewButton":Landroid/view/View;
    .restart local v7    # "rewButton":Landroid/view/View;
    :cond_24b
    move-object/from16 v19, v7

    .end local v7    # "rewButton":Landroid/view/View;
    .restart local v19    # "rewButton":Landroid/view/View;
    const/4 v7, 0x0

    :goto_24e
    iput-object v7, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->fastForwardButtonTextView:Landroid/widget/TextView;

    .line 521
    if-eqz v7, :cond_255

    .line 522
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 524
    :cond_255
    if-nez v4, :cond_258

    goto :goto_259

    :cond_258
    move-object v7, v4

    :goto_259
    iput-object v7, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->fastForwardButton:Landroid/view/View;

    .line 525
    if-eqz v7, :cond_260

    .line 526
    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 528
    :cond_260
    move-object/from16 v20, v4

    .end local v4    # "ffwdButton":Landroid/view/View;
    .local v20, "ffwdButton":Landroid/view/View;
    sget v4, Lcom/google/android/exoplayer2/ui/R$id;->exo_repeat_toggle:I

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    .line 529
    if-eqz v4, :cond_271

    .line 530
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 532
    :cond_271
    move-object/from16 v21, v6

    .end local v6    # "typeface":Landroid/graphics/Typeface;
    .local v21, "typeface":Landroid/graphics/Typeface;
    sget v6, Lcom/google/android/exoplayer2/ui/R$id;->exo_shuffle:I

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    .line 533
    if-eqz v6, :cond_282

    .line 534
    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 537
    :cond_282
    move-object/from16 v22, v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->resources:Landroid/content/res/Resources;

    .line 538
    move-object/from16 v26, v0

    sget v0, Lcom/google/android/exoplayer2/ui/R$integer;->exo_media_button_opacity_percentage_enabled:I

    .line 539
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v27, 0x42c80000    # 100.0f

    div-float v0, v0, v27

    iput v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->buttonAlphaEnabled:F

    .line 540
    sget v0, Lcom/google/android/exoplayer2/ui/R$integer;->exo_media_button_opacity_percentage_disabled:I

    .line 541
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float v0, v0, v27

    iput v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->buttonAlphaDisabled:F

    .line 543
    sget v0, Lcom/google/android/exoplayer2/ui/R$id;->exo_vr:I

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->vrButton:Landroid/view/View;

    .line 544
    if-eqz v0, :cond_2b5

    .line 545
    move/from16 v27, v15

    const/4 v15, 0x0

    .end local v15    # "showSubtitleButton":Z
    .local v27, "showSubtitleButton":Z
    invoke-direct {v1, v15, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateButton(ZLandroid/view/View;)V

    goto :goto_2b7

    .line 544
    .end local v27    # "showSubtitleButton":Z
    .restart local v15    # "showSubtitleButton":Z
    :cond_2b5
    move/from16 v27, v15

    .line 548
    .end local v15    # "showSubtitleButton":Z
    .restart local v27    # "showSubtitleButton":Z
    :goto_2b7
    new-instance v15, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    invoke-direct {v15, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    iput-object v15, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    .line 549
    move-object/from16 v28, v0

    move/from16 v0, v25

    .end local v25    # "animationEnabled":Z
    .local v0, "animationEnabled":Z
    invoke-virtual {v15, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->setAnimationEnabled(Z)V

    .line 551
    nop

    .end local v0    # "animationEnabled":Z
    .restart local v25    # "animationEnabled":Z
    const/4 v0, 0x2

    move-object/from16 v29, v6

    new-array v6, v0, [Ljava/lang/String;

    .line 552
    .local v6, "settingTexts":[Ljava/lang/String;
    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    .line 553
    .local v0, "settingIcons":[Landroid/graphics/drawable/Drawable;
    move/from16 v30, v14

    .end local v14    # "showShuffleButton":Z
    .local v30, "showShuffleButton":Z
    sget v14, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_playback_speed:I

    .line 554
    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    aput-object v14, v6, v16

    .line 555
    sget v14, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_speed:I

    .line 556
    invoke-static {v8, v4, v14}, Lcom/google/android/exoplayer2/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    aput-object v14, v0, v16

    .line 557
    sget v14, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_selection_title_audio:I

    .line 558
    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v31, v5

    const/4 v5, 0x1

    aput-object v14, v6, v5

    .line 559
    sget v14, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_audiotrack:I

    .line 560
    invoke-static {v8, v4, v14}, Lcom/google/android/exoplayer2/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    aput-object v14, v0, v5

    .line 561
    new-instance v14, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;

    invoke-direct {v14, v1, v6, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;[Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V

    iput-object v14, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;

    .line 562
    sget v5, Lcom/google/android/exoplayer2/ui/R$dimen;->exo_settings_offset:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsWindowMargin:I

    .line 563
    nop

    .line 565
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    move-object/from16 v32, v0

    .end local v0    # "settingIcons":[Landroid/graphics/drawable/Drawable;
    .local v32, "settingIcons":[Landroid/graphics/drawable/Drawable;
    sget v0, Lcom/google/android/exoplayer2/ui/R$layout;->exo_styled_settings_list:I

    .line 566
    move-object/from16 v33, v6

    const/4 v6, 0x0

    .end local v6    # "settingTexts":[Ljava/lang/String;
    .local v33, "settingTexts":[Ljava/lang/String;
    invoke-virtual {v5, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsView:Landroidx/recyclerview/widget/RecyclerView;

    .line 567
    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 568
    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 569
    new-instance v5, Landroid/widget/PopupWindow;

    const/4 v6, -0x2

    const/4 v14, 0x1

    invoke-direct {v5, v0, v6, v6, v14}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    .line 571
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v6, 0x17

    if-ge v0, v6, :cond_33f

    .line 574
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v6, 0x0

    invoke-direct {v0, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_340

    .line 571
    :cond_33f
    const/4 v6, 0x0

    .line 576
    :goto_340
    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 577
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->needToHideBars:Z

    .line 579
    new-instance v0, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->trackNameProvider:Lcom/google/android/exoplayer2/ui/TrackNameProvider;

    .line 580
    sget v0, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_subtitle_on:I

    .line 581
    invoke-static {v8, v4, v0}, Lcom/google/android/exoplayer2/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->subtitleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 582
    sget v0, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_subtitle_off:I

    .line 583
    invoke-static {v8, v4, v0}, Lcom/google/android/exoplayer2/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->subtitleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 584
    sget v0, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_cc_enabled_description:I

    .line 585
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->subtitleOnContentDescription:Ljava/lang/String;

    .line 586
    sget v0, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_cc_disabled_description:I

    .line 587
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->subtitleOffContentDescription:Ljava/lang/String;

    .line 588
    new-instance v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;

    const/4 v5, 0x0

    invoke-direct {v0, v1, v5}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$1;)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->textTrackSelectionAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;

    .line 589
    new-instance v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter;

    invoke-direct {v0, v1, v5}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$1;)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->audioTrackSelectionAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter;

    .line 590
    new-instance v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$PlaybackSpeedAdapter;

    sget v5, Lcom/google/android/exoplayer2/ui/R$array;->exo_controls_playback_speeds:I

    .line 592
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    sget-object v9, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->PLAYBACK_SPEEDS:[F

    invoke-direct {v0, v1, v5, v9}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$PlaybackSpeedAdapter;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;[Ljava/lang/String;[F)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playbackSpeedAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$PlaybackSpeedAdapter;

    .line 594
    sget v0, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_fullscreen_exit:I

    .line 595
    invoke-static {v8, v4, v0}, Lcom/google/android/exoplayer2/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->fullScreenExitDrawable:Landroid/graphics/drawable/Drawable;

    .line 596
    sget v0, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_fullscreen_enter:I

    .line 597
    invoke-static {v8, v4, v0}, Lcom/google/android/exoplayer2/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->fullScreenEnterDrawable:Landroid/graphics/drawable/Drawable;

    .line 598
    sget v0, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_repeat_off:I

    .line 599
    invoke-static {v8, v4, v0}, Lcom/google/android/exoplayer2/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 600
    sget v0, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_repeat_one:I

    .line 601
    invoke-static {v8, v4, v0}, Lcom/google/android/exoplayer2/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatOneButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 602
    sget v0, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_repeat_all:I

    .line 603
    invoke-static {v8, v4, v0}, Lcom/google/android/exoplayer2/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatAllButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 604
    sget v0, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_shuffle_on:I

    .line 605
    invoke-static {v8, v4, v0}, Lcom/google/android/exoplayer2/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shuffleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 606
    sget v0, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_shuffle_off:I

    .line 607
    invoke-static {v8, v4, v0}, Lcom/google/android/exoplayer2/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shuffleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 608
    sget v0, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_fullscreen_exit_description:I

    .line 609
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->fullScreenExitContentDescription:Ljava/lang/String;

    .line 610
    sget v0, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_fullscreen_enter_description:I

    .line 611
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->fullScreenEnterContentDescription:Ljava/lang/String;

    .line 612
    sget v0, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_repeat_off_description:I

    .line 613
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatOffButtonContentDescription:Ljava/lang/String;

    .line 614
    sget v0, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_repeat_one_description:I

    .line 615
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatOneButtonContentDescription:Ljava/lang/String;

    .line 616
    sget v0, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_repeat_all_description:I

    .line 617
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatAllButtonContentDescription:Ljava/lang/String;

    .line 618
    sget v0, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_shuffle_on_description:I

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shuffleOnContentDescription:Ljava/lang/String;

    .line 619
    sget v0, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_shuffle_off_description:I

    .line 620
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shuffleOffContentDescription:Ljava/lang/String;

    .line 623
    sget v0, Lcom/google/android/exoplayer2/ui/R$id;->exo_bottom_bar:I

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 624
    .local v0, "bottomBar":Landroid/view/ViewGroup;
    const/4 v4, 0x1

    invoke-virtual {v15, v0, v4}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 625
    invoke-virtual {v15, v7, v11}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 626
    invoke-virtual {v15, v2, v10}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 627
    invoke-virtual {v15, v3, v12}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 628
    move-object/from16 v2, v31

    invoke-virtual {v15, v2, v13}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 629
    move-object/from16 v2, v29

    move/from16 v7, v30

    .end local v30    # "showShuffleButton":Z
    .local v7, "showShuffleButton":Z
    invoke-virtual {v15, v2, v7}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 630
    move-object/from16 v2, v26

    move/from16 v3, v27

    .end local v27    # "showSubtitleButton":Z
    .local v3, "showSubtitleButton":Z
    invoke-virtual {v15, v2, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 631
    move/from16 v5, v24

    move-object/from16 v2, v28

    .end local v24    # "showVrButton":Z
    .restart local v5    # "showVrButton":Z
    invoke-virtual {v15, v2, v5}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 632
    iget v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatToggleModes:I

    if-eqz v2, :cond_433

    goto :goto_434

    :cond_433
    const/4 v4, 0x0

    :goto_434
    move-object/from16 v2, v22

    invoke-virtual {v15, v2, v4}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 634
    new-instance v2, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 635
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 197
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateTrackLists()V

    return-void
.end method

.method static synthetic access$1102(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;
    .param p1, "x1"    # Z

    .line 197
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->scrubbing:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->positionView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Ljava/lang/StringBuilder;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Ljava/util/Formatter;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->formatter:Ljava/util/Formatter;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/Player;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Lcom/google/android/exoplayer2/Player;J)V
    .registers 4
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/Player;
    .param p2, "x2"    # J

    .line 197
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->seekToTimeBarPosition(Lcom/google/android/exoplayer2/Player;J)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 197
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->needToHideBars:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->nextButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->previousButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->fastForwardButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->rewindButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playPauseButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 197
    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatToggleModes:I

    return v0
.end method

.method static synthetic access$2600(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;
    .param p1, "x1"    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .param p2, "x2"    # Landroid/view/View;

    .line 197
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->displaySettingsWindow(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 197
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updatePlayPauseButton()V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playbackSpeedButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$PlaybackSpeedAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playbackSpeedAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$PlaybackSpeedAdapter;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->audioTrackButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->audioTrackSelectionAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->subtitleButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->textTrackSelectionAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;I)V
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;
    .param p1, "x1"    # I

    .line 197
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->onSettingViewClicked(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 197
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateProgress()V

    return-void
.end method

.method static synthetic access$4000(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;F)V
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;
    .param p1, "x1"    # F

    .line 197
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setPlaybackSpeed(F)V

    return-void
.end method

.method static synthetic access$4100(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/PopupWindow;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->subtitleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->subtitleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->subtitleOnContentDescription:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->subtitleOffContentDescription:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 197
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateRepeatModeButton()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 197
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateShuffleButton()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 197
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateNavigation()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 197
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateTimeline()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 197
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updatePlaybackSpeedList()V

    return-void
.end method

.method private static canShowMultiWindowTimeBar(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Timeline$Window;)Z
    .registers 12
    .param p0, "player"    # Lcom/google/android/exoplayer2/Player;
    .param p1, "window"    # Lcom/google/android/exoplayer2/Timeline$Window;

    .line 1571
    const/16 v0, 0x11

    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 1572
    return v1

    .line 1574
    :cond_a
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 1575
    .local v0, "timeline":Lcom/google/android/exoplayer2/Timeline;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v2

    .line 1576
    .local v2, "windowCount":I
    const/4 v3, 0x1

    if-le v2, v3, :cond_31

    const/16 v4, 0x64

    if-le v2, v4, :cond_1a

    goto :goto_31

    .line 1579
    :cond_1a
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1b
    if-ge v4, v2, :cond_30

    .line 1580
    invoke-virtual {v0, v4, p1}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v5

    iget-wide v5, v5, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v5, v7

    if-nez v9, :cond_2d

    .line 1581
    return v1

    .line 1579
    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 1584
    .end local v4    # "i":I
    :cond_30
    return v3

    .line 1577
    :cond_31
    :goto_31
    return v1
.end method

.method private displaySettingsWindow(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V
    .registers 6
    .param p2, "anchorView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1339
    .local p1, "adapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<*>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1341
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateSettingsWindowSize()V

    .line 1343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->needToHideBars:Z

    .line 1344
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1345
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->needToHideBars:Z

    .line 1347
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsWindowMargin:I

    sub-int/2addr v0, v1

    .line 1348
    .local v0, "xoff":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v1

    neg-int v1, v1

    iget v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsWindowMargin:I

    sub-int/2addr v1, v2

    .line 1350
    .local v1, "yoff":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, p2, v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 1351
    return-void
.end method

.method private gatherSupportedTrackInfosOfType(Lcom/google/android/exoplayer2/Tracks;I)Lcom/google/common/collect/ImmutableList;
    .registers 11
    .param p1, "tracks"    # Lcom/google/android/exoplayer2/Tracks;
    .param p2, "trackType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Tracks;",
            "I)",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;",
            ">;"
        }
    .end annotation

    .line 1163
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 1164
    .local v0, "trackInfos":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;>;"
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Tracks;->getGroups()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 1165
    .local v1, "trackGroups":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Tracks$Group;>;"
    const/4 v2, 0x0

    .local v2, "trackGroupIndex":I
    :goto_a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_48

    .line 1166
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/Tracks$Group;

    .line 1167
    .local v3, "trackGroup":Lcom/google/android/exoplayer2/Tracks$Group;
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Tracks$Group;->getType()I

    move-result v4

    if-eq v4, p2, :cond_1d

    .line 1168
    goto :goto_45

    .line 1170
    :cond_1d
    const/4 v4, 0x0

    .local v4, "trackIndex":I
    :goto_1e
    iget v5, v3, Lcom/google/android/exoplayer2/Tracks$Group;->length:I

    if-ge v4, v5, :cond_45

    .line 1171
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/Tracks$Group;->isTrackSupported(I)Z

    move-result v5

    if-nez v5, :cond_29

    .line 1172
    goto :goto_42

    .line 1174
    :cond_29
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/Tracks$Group;->getTrackFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    .line 1175
    .local v5, "trackFormat":Lcom/google/android/exoplayer2/Format;
    iget v6, v5, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_34

    .line 1176
    goto :goto_42

    .line 1178
    :cond_34
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->trackNameProvider:Lcom/google/android/exoplayer2/ui/TrackNameProvider;

    invoke-interface {v6, v5}, Lcom/google/android/exoplayer2/ui/TrackNameProvider;->getTrackName(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v6

    .line 1179
    .local v6, "trackName":Ljava/lang/String;
    new-instance v7, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;

    invoke-direct {v7, p1, v2, v4, v6}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;-><init>(Lcom/google/android/exoplayer2/Tracks;IILjava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 1170
    .end local v5    # "trackFormat":Lcom/google/android/exoplayer2/Format;
    .end local v6    # "trackName":Ljava/lang/String;
    :goto_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 1165
    .end local v3    # "trackGroup":Lcom/google/android/exoplayer2/Tracks$Group;
    .end local v4    # "trackIndex":I
    :cond_45
    :goto_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1182
    .end local v2    # "trackGroupIndex":I
    :cond_48
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    return-object v2
.end method

.method private static getRepeatToggleModes(Landroid/content/res/TypedArray;I)I
    .registers 3
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "defaultValue"    # I

    .line 1610
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_repeat_toggle_modes:I

    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    return v0
.end method

.method private initTrackSelectionAdapter()V
    .registers 4

    .line 1145
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->textTrackSelectionAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;->clear()V

    .line 1146
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->audioTrackSelectionAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter;->clear()V

    .line 1147
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_50

    .line 1148
    const/16 v1, 0x1e

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    .line 1149
    const/16 v1, 0x1d

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_50

    .line 1152
    :cond_21
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentTracks()Lcom/google/android/exoplayer2/Tracks;

    move-result-object v0

    .line 1153
    .local v0, "tracks":Lcom/google/android/exoplayer2/Tracks;
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->audioTrackSelectionAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->gatherSupportedTrackInfosOfType(Lcom/google/android/exoplayer2/Tracks;I)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter;->init(Ljava/util/List;)V

    .line 1154
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->subtitleButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->getShowButton(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 1155
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->textTrackSelectionAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;

    const/4 v2, 0x3

    invoke-direct {p0, v0, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->gatherSupportedTrackInfosOfType(Lcom/google/android/exoplayer2/Tracks;I)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;->init(Ljava/util/List;)V

    goto :goto_4f

    .line 1157
    :cond_46
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->textTrackSelectionAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;->init(Ljava/util/List;)V

    .line 1159
    :goto_4f
    return-void

    .line 1150
    .end local v0    # "tracks":Lcom/google/android/exoplayer2/Tracks;
    :cond_50
    :goto_50
    return-void
.end method

.method private static initializeFullScreenButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 3
    .param p0, "fullScreenButton"    # Landroid/view/View;
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 1588
    if-nez p0, :cond_3

    .line 1589
    return-void

    .line 1591
    :cond_3
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1592
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1593
    return-void
.end method

.method private static isHandledMediaKey(I)Z
    .registers 2
    .param p0, "keyCode"    # I

    .line 1553
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

.method private onFullScreenButtonClicked(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 1402
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->onFullScreenModeChangedListener:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$OnFullScreenModeChangedListener;

    if-nez v0, :cond_5

    .line 1403
    return-void

    .line 1406
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isFullScreen:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isFullScreen:Z

    .line 1407
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->fullScreenButton:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateFullScreenButtonForState(Landroid/widget/ImageView;Z)V

    .line 1408
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->minimalFullScreenButton:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isFullScreen:Z

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateFullScreenButtonForState(Landroid/widget/ImageView;Z)V

    .line 1409
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->onFullScreenModeChangedListener:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$OnFullScreenModeChangedListener;

    if-eqz v0, :cond_20

    .line 1410
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isFullScreen:Z

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$OnFullScreenModeChangedListener;->onFullScreenModeChanged(Z)V

    .line 1412
    :cond_20
    return-void
.end method

.method private onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 23
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 1531
    move-object v0, p0

    sub-int v1, p4, p2

    .line 1532
    .local v1, "width":I
    sub-int v2, p5, p3

    .line 1533
    .local v2, "height":I
    sub-int v3, p8, p6

    .line 1534
    .local v3, "oldWidth":I
    sub-int v4, p9, p7

    .line 1536
    .local v4, "oldHeight":I
    if-ne v1, v3, :cond_d

    if-eq v2, v4, :cond_3a

    :cond_d
    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 1537
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateSettingsWindowSize()V

    .line 1538
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getWidth()I

    move-result v5

    iget-object v6, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsWindowMargin:I

    sub-int/2addr v5, v6

    .line 1539
    .local v5, "xOffset":I
    iget-object v6, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v6

    neg-int v6, v6

    iget v7, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsWindowMargin:I

    sub-int/2addr v6, v7

    .line 1540
    .local v6, "yOffset":I
    iget-object v7, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    const/4 v11, -0x1

    const/4 v12, -0x1

    move-object v8, p1

    move v9, v5

    move v10, v6

    invoke-virtual/range {v7 .. v12}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 1542
    .end local v5    # "xOffset":I
    .end local v6    # "yOffset":I
    :cond_3a
    return-void
.end method

.method private onSettingViewClicked(I)V
    .registers 4
    .param p1, "position"    # I

    .line 1429
    if-nez p1, :cond_10

    .line 1430
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playbackSpeedAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$PlaybackSpeedAdapter;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsButton:Landroid/view/View;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->displaySettingsWindow(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    goto :goto_26

    .line 1431
    :cond_10
    const/4 v0, 0x1

    if-ne p1, v0, :cond_21

    .line 1432
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->audioTrackSelectionAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsButton:Landroid/view/View;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->displaySettingsWindow(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    goto :goto_26

    .line 1434
    :cond_21
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1436
    :goto_26
    return-void
.end method

.method private seekToTimeBarPosition(Lcom/google/android/exoplayer2/Player;J)V
    .registers 10
    .param p1, "player"    # Lcom/google/android/exoplayer2/Player;
    .param p2, "positionMs"    # J

    .line 1375
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->multiWindowTimeBar:Z

    if-eqz v0, :cond_3b

    .line 1376
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1377
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1378
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 1379
    .local v0, "timeline":Lcom/google/android/exoplayer2/Timeline;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v1

    .line 1380
    .local v1, "windowCount":I
    const/4 v2, 0x0

    .line 1382
    .local v2, "windowIndex":I
    :goto_1d
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Timeline$Window;->getDurationMs()J

    move-result-wide v3

    .line 1383
    .local v3, "windowDurationMs":J
    cmp-long v5, p2, v3

    if-gez v5, :cond_2c

    .line 1384
    goto :goto_32

    .line 1385
    :cond_2c
    add-int/lit8 v5, v1, -0x1

    if-ne v2, v5, :cond_36

    .line 1387
    move-wide p2, v3

    .line 1388
    nop

    .line 1393
    .end local v3    # "windowDurationMs":J
    :goto_32
    invoke-interface {p1, v2, p2, p3}, Lcom/google/android/exoplayer2/Player;->seekTo(IJ)V

    .line 1394
    .end local v0    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    .end local v1    # "windowCount":I
    .end local v2    # "windowIndex":I
    goto :goto_45

    .line 1390
    .restart local v0    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    .restart local v1    # "windowCount":I
    .restart local v2    # "windowIndex":I
    .restart local v3    # "windowDurationMs":J
    :cond_36
    sub-long/2addr p2, v3

    .line 1391
    nop

    .end local v3    # "windowDurationMs":J
    add-int/lit8 v2, v2, 0x1

    .line 1392
    goto :goto_1d

    .line 1395
    .end local v0    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    .end local v1    # "windowCount":I
    .end local v2    # "windowIndex":I
    :cond_3b
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1396
    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplayer2/Player;->seekTo(J)V

    .line 1398
    :cond_45
    :goto_45
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateProgress()V

    .line 1399
    return-void
.end method

.method private setPlaybackSpeed(F)V
    .registers 4
    .param p1, "speed"    # F

    .line 1354
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_1b

    const/16 v1, 0xd

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_1b

    .line 1357
    :cond_d
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/PlaybackParameters;->withSpeed(F)Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    .line 1358
    return-void

    .line 1355
    :cond_1b
    :goto_1b
    return-void
.end method

.method private shouldEnablePlayPauseButton()Z
    .registers 4

    .line 1545
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_22

    .line 1546
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    .line 1547
    const/16 v2, 0x11

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    .line 1548
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    :cond_21
    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    .line 1545
    :goto_23
    return v1
.end method

.method private updateButton(ZLandroid/view/View;)V
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "view"    # Landroid/view/View;

    .line 1367
    if-nez p2, :cond_3

    .line 1368
    return-void

    .line 1370
    :cond_3
    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1371
    if-eqz p1, :cond_b

    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->buttonAlphaEnabled:F

    goto :goto_d

    :cond_b
    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->buttonAlphaDisabled:F

    :goto_d
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1372
    return-void
.end method

.method private updateFastForwardButton()V
    .registers 10

    .line 1064
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getSeekForwardIncrement()J

    move-result-wide v0

    goto :goto_b

    :cond_9
    const-wide/16 v0, 0x3a98

    .line 1065
    .local v0, "fastForwardMs":J
    :goto_b
    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    long-to-int v3, v2

    .line 1066
    .local v3, "fastForwardSec":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->fastForwardButtonTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_1b

    .line 1067
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1069
    :cond_1b
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->fastForwardButton:Landroid/view/View;

    if-eqz v2, :cond_34

    .line 1070
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->resources:Landroid/content/res/Resources;

    sget v5, Lcom/google/android/exoplayer2/ui/R$plurals;->exo_controls_fastforward_by_amount_description:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 1074
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 1071
    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1070
    invoke-virtual {v2, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1076
    :cond_34
    return-void
.end method

.method private updateFullScreenButtonForState(Landroid/widget/ImageView;Z)V
    .registers 4
    .param p1, "fullScreenButton"    # Landroid/widget/ImageView;
    .param p2, "isFullScreen"    # Z

    .line 1416
    if-nez p1, :cond_3

    .line 1417
    return-void

    .line 1419
    :cond_3
    if-eqz p2, :cond_10

    .line 1420
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->fullScreenExitDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1421
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->fullScreenExitContentDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 1423
    :cond_10
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->fullScreenEnterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1424
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->fullScreenEnterContentDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1426
    :goto_1a
    return-void
.end method

.method private static updateFullScreenButtonVisibility(Landroid/view/View;Z)V
    .registers 3
    .param p0, "fullScreenButton"    # Landroid/view/View;
    .param p1, "visible"    # Z

    .line 1597
    if-nez p0, :cond_3

    .line 1598
    return-void

    .line 1600
    :cond_3
    if-eqz p1, :cond_a

    .line 1601
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_f

    .line 1603
    :cond_a
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1605
    :goto_f
    return-void
.end method

.method private updateNavigation()V
    .registers 8

    .line 1011
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isAttachedToWindow:Z

    if-nez v0, :cond_b

    goto :goto_6a

    .line 1015
    :cond_b
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    .line 1016
    .local v0, "player":Lcom/google/android/exoplayer2/Player;
    const/4 v1, 0x0

    .line 1017
    .local v1, "enableSeeking":Z
    const/4 v2, 0x0

    .line 1018
    .local v2, "enablePrevious":Z
    const/4 v3, 0x0

    .line 1019
    .local v3, "enableRewind":Z
    const/4 v4, 0x0

    .line 1020
    .local v4, "enableFastForward":Z
    const/4 v5, 0x0

    .line 1021
    .local v5, "enableNext":Z
    if-eqz v0, :cond_44

    .line 1023
    iget-boolean v6, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->showMultiWindowTimeBar:Z

    if-eqz v6, :cond_27

    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-static {v0, v6}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->canShowMultiWindowTimeBar(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Timeline$Window;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 1024
    const/16 v6, 0xa

    invoke-interface {v0, v6}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v6

    goto :goto_2c

    .line 1025
    :cond_27
    const/4 v6, 0x5

    invoke-interface {v0, v6}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v6

    :goto_2c
    move v1, v6

    .line 1026
    const/4 v6, 0x7

    invoke-interface {v0, v6}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v2

    .line 1027
    const/16 v6, 0xb

    invoke-interface {v0, v6}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v3

    .line 1028
    const/16 v6, 0xc

    invoke-interface {v0, v6}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v4

    .line 1029
    const/16 v6, 0x9

    invoke-interface {v0, v6}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v5

    .line 1032
    :cond_44
    if-eqz v3, :cond_49

    .line 1033
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateRewindButton()V

    .line 1035
    :cond_49
    if-eqz v4, :cond_4e

    .line 1036
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateFastForwardButton()V

    .line 1039
    :cond_4e
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->previousButton:Landroid/view/View;

    invoke-direct {p0, v2, v6}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateButton(ZLandroid/view/View;)V

    .line 1040
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->rewindButton:Landroid/view/View;

    invoke-direct {p0, v3, v6}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateButton(ZLandroid/view/View;)V

    .line 1041
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->fastForwardButton:Landroid/view/View;

    invoke-direct {p0, v4, v6}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateButton(ZLandroid/view/View;)V

    .line 1042
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->nextButton:Landroid/view/View;

    invoke-direct {p0, v5, v6}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateButton(ZLandroid/view/View;)V

    .line 1043
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    if-eqz v6, :cond_69

    .line 1044
    invoke-interface {v6, v1}, Lcom/google/android/exoplayer2/ui/TimeBar;->setEnabled(Z)V

    .line 1046
    :cond_69
    return-void

    .line 1012
    .end local v0    # "player":Lcom/google/android/exoplayer2/Player;
    .end local v1    # "enableSeeking":Z
    .end local v2    # "enablePrevious":Z
    .end local v3    # "enableRewind":Z
    .end local v4    # "enableFastForward":Z
    .end local v5    # "enableNext":Z
    :cond_6a
    :goto_6a
    return-void
.end method

.method private updatePlayPauseButton()V
    .registers 7

    .line 986
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isAttachedToWindow:Z

    if-nez v0, :cond_b

    goto :goto_4b

    .line 989
    :cond_b
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playPauseButton:Landroid/view/View;

    if-eqz v0, :cond_4a

    .line 990
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->shouldShowPlayButton(Lcom/google/android/exoplayer2/Player;)Z

    move-result v0

    .line 993
    .local v0, "shouldShowPlayButton":Z
    if-eqz v0, :cond_1a

    .line 994
    sget v1, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_play:I

    goto :goto_1c

    .line 995
    :cond_1a
    sget v1, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_pause:I

    :goto_1c
    nop

    .line 998
    .local v1, "drawableRes":I
    if-eqz v0, :cond_22

    .line 999
    sget v2, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_play_description:I

    goto :goto_24

    .line 1000
    :cond_22
    sget v2, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_pause_description:I

    :goto_24
    nop

    .line 1001
    .local v2, "stringRes":I
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playPauseButton:Landroid/view/View;

    check-cast v3, Landroid/widget/ImageView;

    .line 1002
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->resources:Landroid/content/res/Resources;

    invoke-static {v4, v5, v1}, Lcom/google/android/exoplayer2/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1003
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playPauseButton:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->resources:Landroid/content/res/Resources;

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1005
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shouldEnablePlayPauseButton()Z

    move-result v3

    .line 1006
    .local v3, "enablePlayPause":Z
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playPauseButton:Landroid/view/View;

    invoke-direct {p0, v3, v4}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateButton(ZLandroid/view/View;)V

    .line 1008
    .end local v0    # "shouldShowPlayButton":Z
    .end local v1    # "drawableRes":I
    .end local v2    # "stringRes":I
    .end local v3    # "enablePlayPause":Z
    :cond_4a
    return-void

    .line 987
    :cond_4b
    :goto_4b
    return-void
.end method

.method private updatePlaybackSpeedList()V
    .registers 4

    .line 1311
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-nez v0, :cond_5

    .line 1312
    return-void

    .line 1314
    :cond_5
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playbackSpeedAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$PlaybackSpeedAdapter;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$PlaybackSpeedAdapter;->updateSelectedIndex(F)V

    .line 1315
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playbackSpeedAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$PlaybackSpeedAdapter;

    .line 1316
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$PlaybackSpeedAdapter;->getSelectedText()Ljava/lang/String;

    move-result-object v1

    .line 1315
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;->setSubTextAtPosition(ILjava/lang/String;)V

    .line 1317
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateSettingsButton()V

    .line 1318
    return-void
.end method

.method private updateProgress()V
    .registers 21

    .line 1265
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_ab

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isAttachedToWindow:Z

    if-nez v1, :cond_e

    goto/16 :goto_ab

    .line 1268
    :cond_e
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    .line 1269
    .local v1, "player":Lcom/google/android/exoplayer2/Player;
    const-wide/16 v2, 0x0

    .line 1270
    .local v2, "position":J
    const-wide/16 v4, 0x0

    .line 1271
    .local v4, "bufferedPosition":J
    if-eqz v1, :cond_2e

    const/16 v6, 0x10

    invoke-interface {v1, v6}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 1272
    iget-wide v6, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->currentWindowOffset:J

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getContentPosition()J

    move-result-wide v8

    add-long v2, v6, v8

    .line 1273
    iget-wide v6, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->currentWindowOffset:J

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getContentBufferedPosition()J

    move-result-wide v8

    add-long v4, v6, v8

    .line 1275
    :cond_2e
    iget-object v6, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->positionView:Landroid/widget/TextView;

    if-eqz v6, :cond_41

    iget-boolean v7, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->scrubbing:Z

    if-nez v7, :cond_41

    .line 1276
    iget-object v7, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->formatter:Ljava/util/Formatter;

    invoke-static {v7, v8, v2, v3}, Lcom/google/android/exoplayer2/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1278
    :cond_41
    iget-object v6, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    if-eqz v6, :cond_4d

    .line 1279
    invoke-interface {v6, v2, v3}, Lcom/google/android/exoplayer2/ui/TimeBar;->setPosition(J)V

    .line 1280
    iget-object v6, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    invoke-interface {v6, v4, v5}, Lcom/google/android/exoplayer2/ui/TimeBar;->setBufferedPosition(J)V

    .line 1282
    :cond_4d
    iget-object v6, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->progressUpdateListener:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ProgressUpdateListener;

    if-eqz v6, :cond_54

    .line 1283
    invoke-interface {v6, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ProgressUpdateListener;->onProgressUpdate(JJ)V

    .line 1287
    :cond_54
    iget-object v6, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1288
    const/4 v6, 0x1

    if-nez v1, :cond_5e

    const/4 v7, 0x1

    goto :goto_62

    :cond_5e
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v7

    .line 1289
    .local v7, "playbackState":I
    :goto_62
    const-wide/16 v8, 0x3e8

    if-eqz v1, :cond_9e

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->isPlaying()Z

    move-result v10

    if-eqz v10, :cond_9e

    .line 1291
    iget-object v6, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    if-eqz v6, :cond_75

    invoke-interface {v6}, Lcom/google/android/exoplayer2/ui/TimeBar;->getPreferredUpdateDelay()J

    move-result-wide v10

    goto :goto_76

    :cond_75
    move-wide v10, v8

    .line 1294
    .local v10, "mediaTimeDelayMs":J
    :goto_76
    rem-long v12, v2, v8

    sub-long v12, v8, v12

    .line 1295
    .local v12, "mediaTimeUntilNextFullSecondMs":J
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 1298
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v6

    iget v6, v6, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    .line 1300
    .local v6, "playbackSpeed":F
    const/4 v14, 0x0

    cmpl-float v14, v6, v14

    if-lez v14, :cond_8c

    long-to-float v8, v10

    div-float/2addr v8, v6

    float-to-long v8, v8

    :cond_8c
    move-wide v14, v8

    .line 1303
    .local v14, "delayMs":J
    iget v8, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->timeBarMinUpdateIntervalMs:I

    int-to-long v8, v8

    const-wide/16 v18, 0x3e8

    move-wide/from16 v16, v8

    invoke-static/range {v14 .. v19}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v8

    .line 1304
    .end local v14    # "delayMs":J
    .local v8, "delayMs":J
    iget-object v14, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v14, v8, v9}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    .end local v6    # "playbackSpeed":F
    .end local v8    # "delayMs":J
    .end local v10    # "mediaTimeDelayMs":J
    .end local v12    # "mediaTimeUntilNextFullSecondMs":J
    goto :goto_a9

    .line 1305
    :cond_9e
    const/4 v10, 0x4

    if-eq v7, v10, :cond_a9

    if-eq v7, v6, :cond_a9

    .line 1306
    iget-object v6, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v6, v8, v9}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_aa

    .line 1305
    :cond_a9
    :goto_a9
    nop

    .line 1308
    :goto_aa
    return-void

    .line 1266
    .end local v1    # "player":Lcom/google/android/exoplayer2/Player;
    .end local v2    # "position":J
    .end local v4    # "bufferedPosition":J
    .end local v7    # "playbackState":I
    :cond_ab
    :goto_ab
    return-void
.end method

.method private updateRepeatModeButton()V
    .registers 4

    .line 1079
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_75

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isAttachedToWindow:Z

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    if-nez v0, :cond_f

    goto :goto_75

    .line 1083
    :cond_f
    iget v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatToggleModes:I

    const/4 v2, 0x0

    if-nez v1, :cond_18

    .line 1084
    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateButton(ZLandroid/view/View;)V

    .line 1085
    return-void

    .line 1088
    :cond_18
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    .line 1089
    .local v0, "player":Lcom/google/android/exoplayer2/Player;
    if-eqz v0, :cond_61

    const/16 v1, 0xf

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v1

    if-nez v1, :cond_25

    goto :goto_61

    .line 1096
    :cond_25
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateButton(ZLandroid/view/View;)V

    .line 1097
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getRepeatMode()I

    move-result v1

    packed-switch v1, :pswitch_data_76

    goto :goto_60

    .line 1107
    :pswitch_33
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatAllButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1108
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatAllButtonContentDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1109
    goto :goto_60

    .line 1103
    :pswitch_42
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatOneButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1104
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatOneButtonContentDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1105
    goto :goto_60

    .line 1099
    :pswitch_51
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1100
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatOffButtonContentDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1101
    nop

    .line 1113
    :goto_60
    return-void

    .line 1090
    :cond_61
    :goto_61
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateButton(ZLandroid/view/View;)V

    .line 1091
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1092
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatOffButtonContentDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1093
    return-void

    .line 1080
    .end local v0    # "player":Lcom/google/android/exoplayer2/Player;
    :cond_75
    :goto_75
    return-void

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_51
        :pswitch_42
        :pswitch_33
    .end packed-switch
.end method

.method private updateRewindButton()V
    .registers 10

    .line 1050
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getSeekBackIncrement()J

    move-result-wide v0

    goto :goto_b

    :cond_9
    const-wide/16 v0, 0x1388

    .line 1051
    .local v0, "rewindMs":J
    :goto_b
    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    long-to-int v3, v2

    .line 1052
    .local v3, "rewindSec":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->rewindButtonTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_1b

    .line 1053
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1055
    :cond_1b
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->rewindButton:Landroid/view/View;

    if-eqz v2, :cond_34

    .line 1056
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->resources:Landroid/content/res/Resources;

    sget v5, Lcom/google/android/exoplayer2/ui/R$plurals;->exo_controls_rewind_by_amount_description:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 1058
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 1057
    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1056
    invoke-virtual {v2, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1060
    :cond_34
    return-void
.end method

.method private updateSettingsButton()V
    .registers 3

    .line 1321
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;->hasSettingsToShow()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsButton:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateButton(ZLandroid/view/View;)V

    .line 1322
    return-void
.end method

.method private updateSettingsWindowSize()V
    .registers 8

    .line 1325
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView;->measure(II)V

    .line 1327
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsWindowMargin:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 1328
    .local v0, "maxWidth":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    .line 1329
    .local v1, "itemWidth":I
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1330
    .local v2, "width":I
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1332
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsWindowMargin:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 1333
    .local v3, "maxHeight":I
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v4

    .line 1334
    .local v4, "totalHeight":I
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1335
    .local v5, "height":I
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1336
    return-void
.end method

.method private updateShuffleButton()V
    .registers 4

    .line 1116
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_66

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isAttachedToWindow:Z

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    if-nez v0, :cond_f

    goto :goto_66

    .line 1120
    :cond_f
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    .line 1121
    .local v1, "player":Lcom/google/android/exoplayer2/Player;
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->getShowButton(Landroid/view/View;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_20

    .line 1122
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateButton(ZLandroid/view/View;)V

    goto :goto_65

    .line 1123
    :cond_20
    if-eqz v1, :cond_52

    const/16 v0, 0xe

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_52

    .line 1128
    :cond_2b
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateButton(ZLandroid/view/View;)V

    .line 1129
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    .line 1130
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getShuffleModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shuffleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_3e

    :cond_3c
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shuffleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 1129
    :goto_3e
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1131
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    .line 1132
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getShuffleModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 1133
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shuffleOnContentDescription:Ljava/lang/String;

    goto :goto_4e

    .line 1134
    :cond_4c
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shuffleOffContentDescription:Ljava/lang/String;

    .line 1131
    :goto_4e
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_65

    .line 1124
    :cond_52
    :goto_52
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateButton(ZLandroid/view/View;)V

    .line 1125
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shuffleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1126
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shuffleOffContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1136
    :goto_65
    return-void

    .line 1117
    .end local v1    # "player":Lcom/google/android/exoplayer2/Player;
    :cond_66
    :goto_66
    return-void
.end method

.method private updateTimeline()V
    .registers 29

    .line 1186
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    .line 1187
    .local v1, "player":Lcom/google/android/exoplayer2/Player;
    if-nez v1, :cond_7

    .line 1188
    return-void

    .line 1190
    :cond_7
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->showMultiWindowTimeBar:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_16

    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->canShowMultiWindowTimeBar(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Timeline$Window;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->multiWindowTimeBar:Z

    .line 1191
    const-wide/16 v5, 0x0

    iput-wide v5, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->currentWindowOffset:J

    .line 1192
    const-wide/16 v7, 0x0

    .line 1193
    .local v7, "durationUs":J
    const/4 v2, 0x0

    .line 1195
    .local v2, "adGroupCount":I
    const/16 v9, 0x11

    invoke-interface {v1, v9}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v9

    if-eqz v9, :cond_2d

    .line 1196
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v9

    goto :goto_2f

    .line 1197
    :cond_2d
    sget-object v9, Lcom/google/android/exoplayer2/Timeline;->EMPTY:Lcom/google/android/exoplayer2/Timeline;

    :goto_2f
    nop

    .line 1198
    .local v9, "timeline":Lcom/google/android/exoplayer2/Timeline;
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v10

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v10, :cond_145

    .line 1199
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    move-result v10

    .line 1200
    .local v10, "currentWindowIndex":I
    iget-boolean v13, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->multiWindowTimeBar:Z

    if-eqz v13, :cond_45

    const/4 v14, 0x0

    goto :goto_46

    :cond_45
    move v14, v10

    .line 1201
    .local v14, "firstWindowIndex":I
    :goto_46
    if-eqz v13, :cond_4e

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v13

    sub-int/2addr v13, v4

    goto :goto_4f

    :cond_4e
    move v13, v10

    .line 1202
    .local v13, "lastWindowIndex":I
    :goto_4f
    move v15, v14

    .local v15, "i":I
    :goto_50
    if-gt v15, v13, :cond_140

    .line 1203
    if-ne v15, v10, :cond_5a

    .line 1204
    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->currentWindowOffset:J

    .line 1206
    :cond_5a
    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v9, v15, v5}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 1207
    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    cmp-long v18, v5, v11

    if-nez v18, :cond_71

    .line 1208
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->multiWindowTimeBar:Z

    xor-int/2addr v4, v5

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1209
    move-object/from16 v23, v9

    goto/16 :goto_144

    .line 1211
    :cond_71
    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v5, v5, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    .local v5, "j":I
    :goto_75
    iget-object v6, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v6, v6, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    if-gt v5, v6, :cond_129

    .line 1212
    iget-object v6, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v9, v5, v6}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1213
    iget-object v6, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/Timeline$Period;->getRemovedAdGroupCount()I

    move-result v6

    .line 1214
    .local v6, "removedGroups":I
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupCount()I

    move-result v4

    .line 1215
    .local v4, "totalGroups":I
    move/from16 v19, v6

    move/from16 v3, v19

    .local v3, "adGroupIndex":I
    :goto_90
    if-ge v3, v4, :cond_115

    .line 1216
    iget-object v11, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v11, v3}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v11

    .line 1217
    .local v11, "adGroupTimeInPeriodUs":J
    const-wide/high16 v22, -0x8000000000000000L

    cmp-long v24, v11, v22

    if-nez v24, :cond_bb

    .line 1218
    move/from16 v22, v4

    .end local v4    # "totalGroups":I
    .local v22, "totalGroups":I
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object/from16 v23, v9

    move/from16 v24, v10

    .end local v9    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    .end local v10    # "currentWindowIndex":I
    .local v23, "timeline":Lcom/google/android/exoplayer2/Timeline;
    .local v24, "currentWindowIndex":I
    iget-wide v9, v4, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v9, v20

    if-nez v4, :cond_b6

    .line 1220
    move/from16 v25, v6

    const-wide/16 v16, 0x0

    goto :goto_104

    .line 1222
    :cond_b6
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-wide v11, v4, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    goto :goto_c1

    .line 1217
    .end local v22    # "totalGroups":I
    .end local v23    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    .end local v24    # "currentWindowIndex":I
    .restart local v4    # "totalGroups":I
    .restart local v9    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    .restart local v10    # "currentWindowIndex":I
    :cond_bb
    move/from16 v22, v4

    move-object/from16 v23, v9

    move/from16 v24, v10

    .line 1224
    .end local v4    # "totalGroups":I
    .end local v9    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    .end local v10    # "currentWindowIndex":I
    .restart local v22    # "totalGroups":I
    .restart local v23    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    .restart local v24    # "currentWindowIndex":I
    :goto_c1
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v9

    add-long/2addr v9, v11

    .line 1225
    .local v9, "adGroupTimeInWindowUs":J
    const-wide/16 v16, 0x0

    cmp-long v4, v9, v16

    if-ltz v4, :cond_102

    .line 1226
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->adGroupTimesMs:[J

    move/from16 v25, v6

    .end local v6    # "removedGroups":I
    .local v25, "removedGroups":I
    array-length v6, v4

    if-ne v2, v6, :cond_eb

    .line 1227
    array-length v6, v4

    if-nez v6, :cond_da

    const/4 v6, 0x1

    goto :goto_dd

    :cond_da
    array-length v6, v4

    mul-int/lit8 v6, v6, 0x2

    .line 1228
    .local v6, "newLength":I
    :goto_dd
    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->adGroupTimesMs:[J

    .line 1229
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playedAdGroups:[Z

    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playedAdGroups:[Z

    .line 1231
    .end local v6    # "newLength":I
    :cond_eb
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->adGroupTimesMs:[J

    add-long v26, v7, v9

    invoke-static/range {v26 .. v27}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v26

    aput-wide v26, v4, v2

    .line 1232
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playedAdGroups:[Z

    iget-object v6, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v6, v3}, Lcom/google/android/exoplayer2/Timeline$Period;->hasPlayedAdGroup(I)Z

    move-result v6

    aput-boolean v6, v4, v2

    .line 1233
    add-int/lit8 v2, v2, 0x1

    goto :goto_104

    .line 1225
    .end local v25    # "removedGroups":I
    .local v6, "removedGroups":I
    :cond_102
    move/from16 v25, v6

    .line 1215
    .end local v6    # "removedGroups":I
    .end local v9    # "adGroupTimeInWindowUs":J
    .end local v11    # "adGroupTimeInPeriodUs":J
    .restart local v25    # "removedGroups":I
    :goto_104
    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v22

    move-object/from16 v9, v23

    move/from16 v10, v24

    move/from16 v6, v25

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_90

    .end local v22    # "totalGroups":I
    .end local v23    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    .end local v24    # "currentWindowIndex":I
    .end local v25    # "removedGroups":I
    .restart local v4    # "totalGroups":I
    .restart local v6    # "removedGroups":I
    .local v9, "timeline":Lcom/google/android/exoplayer2/Timeline;
    .restart local v10    # "currentWindowIndex":I
    :cond_115
    move/from16 v22, v4

    move/from16 v25, v6

    move-object/from16 v23, v9

    move/from16 v24, v10

    const-wide/16 v16, 0x0

    .line 1211
    .end local v3    # "adGroupIndex":I
    .end local v4    # "totalGroups":I
    .end local v6    # "removedGroups":I
    .end local v9    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    .end local v10    # "currentWindowIndex":I
    .restart local v23    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    .restart local v24    # "currentWindowIndex":I
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x1

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_75

    .end local v23    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    .end local v24    # "currentWindowIndex":I
    .restart local v9    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    .restart local v10    # "currentWindowIndex":I
    :cond_129
    move-object/from16 v23, v9

    move/from16 v24, v10

    const-wide/16 v16, 0x0

    .line 1237
    .end local v5    # "j":I
    .end local v9    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    .end local v10    # "currentWindowIndex":I
    .restart local v23    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    .restart local v24    # "currentWindowIndex":I
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    add-long/2addr v7, v3

    .line 1202
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v5, v16

    const/4 v4, 0x1

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_50

    .end local v23    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    .end local v24    # "currentWindowIndex":I
    .restart local v9    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    .restart local v10    # "currentWindowIndex":I
    :cond_140
    move-object/from16 v23, v9

    move/from16 v24, v10

    .line 1239
    .end local v9    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    .end local v10    # "currentWindowIndex":I
    .end local v13    # "lastWindowIndex":I
    .end local v14    # "firstWindowIndex":I
    .end local v15    # "i":I
    .restart local v23    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    :cond_144
    :goto_144
    goto :goto_160

    .end local v23    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    .restart local v9    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    :cond_145
    move-object/from16 v23, v9

    .end local v9    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    .restart local v23    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    const/16 v3, 0x10

    invoke-interface {v1, v3}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v3

    if-eqz v3, :cond_144

    .line 1240
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getContentDuration()J

    move-result-wide v3

    .line 1241
    .local v3, "playerDurationMs":J
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v3, v5

    if-eqz v9, :cond_160

    .line 1242
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v7

    .line 1245
    .end local v3    # "playerDurationMs":J
    :cond_160
    :goto_160
    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v3

    .line 1246
    .local v3, "durationMs":J
    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->durationView:Landroid/widget/TextView;

    if-eqz v5, :cond_173

    .line 1247
    iget-object v6, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->formatter:Ljava/util/Formatter;

    invoke-static {v6, v9, v3, v4}, Lcom/google/android/exoplayer2/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1249
    :cond_173
    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    if-eqz v5, :cond_1aa

    .line 1250
    invoke-interface {v5, v3, v4}, Lcom/google/android/exoplayer2/ui/TimeBar;->setDuration(J)V

    .line 1251
    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->extraAdGroupTimesMs:[J

    array-length v5, v5

    .line 1252
    .local v5, "extraAdGroupCount":I
    add-int v6, v2, v5

    .line 1253
    .local v6, "totalAdGroupCount":I
    iget-object v9, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->adGroupTimesMs:[J

    array-length v10, v9

    if-le v6, v10, :cond_192

    .line 1254
    invoke-static {v9, v6}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v9

    iput-object v9, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->adGroupTimesMs:[J

    .line 1255
    iget-object v9, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playedAdGroups:[Z

    invoke-static {v9, v6}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v9

    iput-object v9, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playedAdGroups:[Z

    .line 1257
    :cond_192
    iget-object v9, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->extraAdGroupTimesMs:[J

    iget-object v10, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->adGroupTimesMs:[J

    const/4 v11, 0x0

    invoke-static {v9, v11, v10, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1258
    iget-object v9, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->extraPlayedAdGroups:[Z

    iget-object v10, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playedAdGroups:[Z

    invoke-static {v9, v11, v10, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1259
    iget-object v9, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    iget-object v10, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->adGroupTimesMs:[J

    iget-object v11, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playedAdGroups:[Z

    invoke-interface {v9, v10, v11, v6}, Lcom/google/android/exoplayer2/ui/TimeBar;->setAdGroupTimesMs([J[ZI)V

    .line 1261
    .end local v5    # "extraAdGroupCount":I
    .end local v6    # "totalAdGroupCount":I
    :cond_1aa
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateProgress()V

    .line 1262
    return-void
.end method

.method private updateTrackLists()V
    .registers 3

    .line 1139
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->initTrackSelectionAdapter()V

    .line 1140
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->textTrackSelectionAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->subtitleButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateButton(ZLandroid/view/View;)V

    .line 1141
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateSettingsButton()V

    .line 1142
    return-void
.end method


# virtual methods
.method public addVisibilityListener(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$VisibilityListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$VisibilityListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 716
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1460
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z

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

    .line 1471
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1472
    .local v0, "keyCode":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    .line 1473
    .local v1, "player":Lcom/google/android/exoplayer2/Player;
    if-eqz v1, :cond_6b

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isHandledMediaKey(I)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_6b

    .line 1476
    :cond_f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_69

    .line 1477
    const/16 v2, 0x5a

    if-ne v0, v2, :cond_2c

    .line 1478
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_69

    .line 1479
    const/16 v2, 0xc

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 1480
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->seekForward()V

    goto :goto_69

    .line 1482
    :cond_2c
    const/16 v2, 0x59

    if-ne v0, v2, :cond_3c

    .line 1483
    const/16 v2, 0xb

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1484
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->seekBack()V

    goto :goto_69

    .line 1485
    :cond_3c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_69

    .line 1486
    sparse-switch v0, :sswitch_data_6e

    goto :goto_69

    .line 1495
    :sswitch_46
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->handlePauseButtonAction(Lcom/google/android/exoplayer2/Player;)Z

    .line 1496
    goto :goto_69

    .line 1492
    :sswitch_4a
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->handlePlayButtonAction(Lcom/google/android/exoplayer2/Player;)Z

    .line 1493
    goto :goto_69

    .line 1503
    :sswitch_4e
    const/4 v2, 0x7

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 1504
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->seekToPrevious()V

    goto :goto_69

    .line 1498
    :sswitch_59
    const/16 v2, 0x9

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 1499
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->seekToNext()V

    goto :goto_69

    .line 1489
    :sswitch_65
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->handlePlayPauseButtonAction(Lcom/google/android/exoplayer2/Player;)Z

    .line 1490
    nop

    .line 1512
    :cond_69
    :goto_69
    const/4 v2, 0x1

    return v2

    .line 1474
    :cond_6b
    :goto_6b
    const/4 v2, 0x0

    return v2

    nop

    :sswitch_data_6e
    .sparse-switch
        0x4f -> :sswitch_65
        0x55 -> :sswitch_65
        0x57 -> :sswitch_59
        0x58 -> :sswitch_4e
        0x7e -> :sswitch_4a
        0x7f -> :sswitch_46
    .end sparse-switch
.end method

.method public getPlayer()Lcom/google/android/exoplayer2/Player;
    .registers 2

    .line 643
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    return-object v0
.end method

.method public getRepeatToggleModes()I
    .registers 2

    .line 812
    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatToggleModes:I

    return v0
.end method

.method public getShowShuffleButton()Z
    .registers 3

    .line 842
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->getShowButton(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public getShowSubtitleButton()Z
    .registers 3

    .line 857
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->subtitleButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->getShowButton(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public getShowTimeoutMs()I
    .registers 2

    .line 789
    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->showTimeoutMs:I

    return v0
.end method

.method public getShowVrButton()Z
    .registers 3

    .line 871
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->vrButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->getShowButton(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public hide()V
    .registers 2

    .line 950
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hide()V

    .line 951
    return-void
.end method

.method public hideImmediately()V
    .registers 2

    .line 955
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideImmediately()V

    .line 956
    return-void
.end method

.method public isAnimationEnabled()Z
    .registers 2

    .line 906
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->isAnimationEnabled()Z

    move-result v0

    return v0
.end method

.method public isFullyVisible()Z
    .registers 2

    .line 960
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->isFullyVisible()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .line 965
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method notifyOnVisibilityChange()V
    .registers 4

    .line 970
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$VisibilityListener;

    .line 971
    .local v1, "visibilityListener":Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$VisibilityListener;
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getVisibility()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$VisibilityListener;->onVisibilityChange(I)V

    .line 972
    .end local v1    # "visibilityListener":Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$VisibilityListener;
    goto :goto_6

    .line 973
    :cond_1a
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    .line 1440
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1441
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->onAttachedToWindow()V

    .line 1442
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isAttachedToWindow:Z

    .line 1443
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isFullyVisible()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1444
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->resetHideCallbacks()V

    .line 1446
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateAll()V

    .line 1447
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 1451
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1452
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->onDetachedFromWindow()V

    .line 1453
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isAttachedToWindow:Z

    .line 1454
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1455
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->removeHideCallbacks()V

    .line 1456
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 12
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 1517
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1518
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->onLayout(ZIIII)V

    .line 1519
    return-void
.end method

.method public removeVisibilityListener(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$VisibilityListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$VisibilityListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 729
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 730
    return-void
.end method

.method requestPlayPauseFocus()V
    .registers 2

    .line 1361
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playPauseButton:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 1362
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1364
    :cond_7
    return-void
.end method

.method public setAnimationEnabled(Z)V
    .registers 3
    .param p1, "animationEnabled"    # Z

    .line 901
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->setAnimationEnabled(Z)V

    .line 902
    return-void
.end method

.method public setExtraAdGroupMarkers([J[Z)V
    .registers 6
    .param p1, "extraAdGroupTimesMs"    # [J
    .param p2, "extraPlayedAdGroups"    # [Z

    .line 695
    const/4 v0, 0x0

    if-nez p1, :cond_c

    .line 696
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->extraAdGroupTimesMs:[J

    .line 697
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->extraPlayedAdGroups:[Z

    goto :goto_1f

    .line 699
    :cond_c
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object p2, v1

    check-cast p2, [Z

    .line 700
    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_18

    const/4 v0, 0x1

    :cond_18
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 701
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->extraAdGroupTimesMs:[J

    .line 702
    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->extraPlayedAdGroups:[Z

    .line 704
    :goto_1f
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateTimeline()V

    .line 705
    return-void
.end method

.method public setOnFullScreenModeChangedListener(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$OnFullScreenModeChangedListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$OnFullScreenModeChangedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 935
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->onFullScreenModeChangedListener:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$OnFullScreenModeChangedListener;

    .line 936
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->fullScreenButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_a

    const/4 v3, 0x1

    goto :goto_b

    :cond_a
    const/4 v3, 0x0

    :goto_b
    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateFullScreenButtonVisibility(Landroid/view/View;Z)V

    .line 937
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->minimalFullScreenButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateFullScreenButtonVisibility(Landroid/view/View;Z)V

    .line 938
    return-void
.end method

.method public setPlayer(Lcom/google/android/exoplayer2/Player;)V
    .registers 6
    .param p1, "player"    # Lcom/google/android/exoplayer2/Player;

    .line 654
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

    .line 655
    if-eqz p1, :cond_21

    .line 656
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

    .line 655
    :goto_22
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 657
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-ne v0, p1, :cond_2a

    .line 658
    return-void

    .line 660
    :cond_2a
    if-eqz v0, :cond_31

    .line 661
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->componentListener:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->removeListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 663
    :cond_31
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    .line 664
    if-eqz p1, :cond_3a

    .line 665
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->componentListener:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 667
    :cond_3a
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateAll()V

    .line 668
    return-void
.end method

.method public setProgressUpdateListener(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ProgressUpdateListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ProgressUpdateListener;

    .line 738
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->progressUpdateListener:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ProgressUpdateListener;

    .line 739
    return-void
.end method

.method public setRepeatToggleModes(I)V
    .registers 7
    .param p1, "repeatToggleModes"    # I

    .line 821
    iput p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatToggleModes:I

    .line 822
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_34

    const/16 v3, 0xf

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 823
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getRepeatMode()I

    move-result v0

    .line 824
    .local v0, "currentMode":I
    if-nez p1, :cond_20

    if-eqz v0, :cond_20

    .line 826
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v3, v1}, Lcom/google/android/exoplayer2/Player;->setRepeatMode(I)V

    goto :goto_34

    .line 827
    :cond_20
    const/4 v3, 0x2

    if-ne p1, v2, :cond_2b

    if-ne v0, v3, :cond_2b

    .line 829
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/Player;->setRepeatMode(I)V

    goto :goto_34

    .line 830
    :cond_2b
    if-ne p1, v3, :cond_34

    if-ne v0, v2, :cond_34

    .line 832
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v4, v3}, Lcom/google/android/exoplayer2/Player;->setRepeatMode(I)V

    .line 835
    .end local v0    # "currentMode":I
    :cond_34
    :goto_34
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_3b

    const/4 v1, 0x1

    :cond_3b
    invoke-virtual {v0, v3, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 837
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateRepeatModeButton()V

    .line 838
    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .registers 4
    .param p1, "showFastForwardButton"    # Z

    .line 757
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->fastForwardButton:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 758
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateNavigation()V

    .line 759
    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .registers 2
    .param p1, "showMultiWindowTimeBar"    # Z

    .line 679
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->showMultiWindowTimeBar:Z

    .line 680
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateTimeline()V

    .line 681
    return-void
.end method

.method public setShowNextButton(Z)V
    .registers 4
    .param p1, "showNextButton"    # Z

    .line 777
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->nextButton:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 778
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateNavigation()V

    .line 779
    return-void
.end method

.method public setShowPreviousButton(Z)V
    .registers 4
    .param p1, "showPreviousButton"    # Z

    .line 767
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->previousButton:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 768
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateNavigation()V

    .line 769
    return-void
.end method

.method public setShowRewindButton(Z)V
    .registers 4
    .param p1, "showRewindButton"    # Z

    .line 747
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->rewindButton:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 748
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateNavigation()V

    .line 749
    return-void
.end method

.method public setShowShuffleButton(Z)V
    .registers 4
    .param p1, "showShuffleButton"    # Z

    .line 851
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 852
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateShuffleButton()V

    .line 853
    return-void
.end method

.method public setShowSubtitleButton(Z)V
    .registers 4
    .param p1, "showSubtitleButton"    # Z

    .line 866
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->subtitleButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 867
    return-void
.end method

.method public setShowTimeoutMs(I)V
    .registers 3
    .param p1, "showTimeoutMs"    # I

    .line 800
    iput p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->showTimeoutMs:I

    .line 801
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isFullyVisible()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 802
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->resetHideCallbacks()V

    .line 804
    :cond_d
    return-void
.end method

.method public setShowVrButton(Z)V
    .registers 4
    .param p1, "showVrButton"    # Z

    .line 880
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->vrButton:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 881
    return-void
.end method

.method public setTimeBarMinUpdateInterval(I)V
    .registers 4
    .param p1, "minUpdateIntervalMs"    # I

    .line 921
    nop

    .line 922
    const/16 v0, 0x10

    const/16 v1, 0x3e8

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->timeBarMinUpdateIntervalMs:I

    .line 923
    return-void
.end method

.method public setVrButtonListener(Landroid/view/View$OnClickListener;)V
    .registers 4
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 889
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->vrButton:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 890
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 891
    if-eqz p1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->vrButton:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateButton(ZLandroid/view/View;)V

    .line 893
    :cond_11
    return-void
.end method

.method public show()V
    .registers 2

    .line 945
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->show()V

    .line 946
    return-void
.end method

.method updateAll()V
    .registers 1

    .line 976
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updatePlayPauseButton()V

    .line 977
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateNavigation()V

    .line 978
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateRepeatModeButton()V

    .line 979
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateShuffleButton()V

    .line 980
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateTrackLists()V

    .line 981
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updatePlaybackSpeedList()V

    .line 982
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateTimeline()V

    .line 983
    return-void
.end method
