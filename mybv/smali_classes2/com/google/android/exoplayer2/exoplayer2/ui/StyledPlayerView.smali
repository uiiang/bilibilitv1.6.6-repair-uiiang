.class public Lcom/google/android/exoplayer2/ui/StyledPlayerView;
.super Landroid/widget/FrameLayout;
.source "StyledPlayerView.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ui/AdViewProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/StyledPlayerView$FullscreenButtonClickListener;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerView$ControllerVisibilityListener;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerView$ComponentListener;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerView$ShowBuffering;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerView$ArtworkDisplayMode;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ARTWORK_DISPLAY_MODE_FILL:I = 0x2

.field public static final ARTWORK_DISPLAY_MODE_FIT:I = 0x1

.field public static final ARTWORK_DISPLAY_MODE_OFF:I = 0x0

.field public static final SHOW_BUFFERING_ALWAYS:I = 0x2

.field public static final SHOW_BUFFERING_NEVER:I = 0x0

.field public static final SHOW_BUFFERING_WHEN_PLAYING:I = 0x1

.field private static final SURFACE_TYPE_NONE:I = 0x0

.field private static final SURFACE_TYPE_SPHERICAL_GL_SURFACE_VIEW:I = 0x3

.field private static final SURFACE_TYPE_SURFACE_VIEW:I = 0x1

.field private static final SURFACE_TYPE_TEXTURE_VIEW:I = 0x2

.field private static final SURFACE_TYPE_VIDEO_DECODER_GL_SURFACE_VIEW:I = 0x4


# instance fields
.field private final adOverlayFrameLayout:Landroid/widget/FrameLayout;

.field private artworkDisplayMode:I

.field private final artworkView:Landroid/widget/ImageView;

.field private final bufferingView:Landroid/view/View;

.field private final componentListener:Lcom/google/android/exoplayer2/ui/StyledPlayerView$ComponentListener;

.field private final contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

.field private final controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

.field private controllerAutoShow:Z

.field private controllerHideDuringAds:Z

.field private controllerHideOnTouch:Z

.field private controllerShowTimeoutMs:I

.field private controllerVisibilityListener:Lcom/google/android/exoplayer2/ui/StyledPlayerView$ControllerVisibilityListener;

.field private customErrorMessage:Ljava/lang/CharSequence;

.field private defaultArtwork:Landroid/graphics/drawable/Drawable;

.field private errorMessageProvider:Lcom/google/android/exoplayer2/util/ErrorMessageProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/ErrorMessageProvider<",
            "-",
            "Lcom/google/android/exoplayer2/PlaybackException;",
            ">;"
        }
    .end annotation
.end field

.field private final errorMessageView:Landroid/widget/TextView;

.field private fullscreenButtonClickListener:Lcom/google/android/exoplayer2/ui/StyledPlayerView$FullscreenButtonClickListener;

.field private isTouching:Z

.field private keepContentOnPlayerReset:Z

.field private legacyControllerVisibilityListener:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$VisibilityListener;

.field private final overlayFrameLayout:Landroid/widget/FrameLayout;

.field private player:Lcom/google/android/exoplayer2/Player;

.field private showBuffering:I

.field private final shutterView:Landroid/view/View;

.field private final subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

.field private final surfaceView:Landroid/view/View;

.field private final surfaceViewIgnoresVideoAspectRatio:Z

.field private textureViewRotation:I

.field private useController:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 296
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 297
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 300
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 301
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 31
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 305
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 307
    new-instance v0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$ComponentListener;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/StyledPlayerView$ComponentListener;

    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->isInEditMode()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v4, :cond_4c

    .line 310
    iput-object v6, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 311
    iput-object v6, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->shutterView:Landroid/view/View;

    .line 312
    iput-object v6, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    .line 313
    iput-boolean v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceViewIgnoresVideoAspectRatio:Z

    .line 314
    iput-object v6, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->artworkView:Landroid/widget/ImageView;

    .line 315
    iput-object v6, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    .line 316
    iput-object v6, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->bufferingView:Landroid/view/View;

    .line 317
    iput-object v6, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->errorMessageView:Landroid/widget/TextView;

    .line 318
    iput-object v6, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 319
    iput-object v6, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->adOverlayFrameLayout:Landroid/widget/FrameLayout;

    .line 320
    iput-object v6, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    .line 321
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 322
    .local v0, "logo":Landroid/widget/ImageView;
    sget v4, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_41

    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v2, v4, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->configureEditModeLogoV23(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/ImageView;)V

    goto :goto_48

    .line 325
    :cond_41
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v2, v4, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->configureEditModeLogo(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/ImageView;)V

    .line 327
    :goto_48
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->addView(Landroid/view/View;)V

    .line 328
    return-void

    .line 331
    .end local v0    # "logo":Landroid/widget/ImageView;
    :cond_4c
    const/4 v4, 0x0

    .line 332
    .local v4, "shutterColorSet":Z
    const/4 v7, 0x0

    .line 333
    .local v7, "shutterColor":I
    sget v8, Lcom/google/android/exoplayer2/ui/R$layout;->exo_styled_player_view:I

    .line 334
    .local v8, "playerLayoutId":I
    const/4 v9, 0x1

    .line 335
    .local v9, "useArtwork":Z
    const/4 v10, 0x1

    .line 336
    .local v10, "artworkDisplayMode":I
    const/4 v11, 0x0

    .line 337
    .local v11, "defaultArtworkId":I
    const/4 v12, 0x1

    .line 338
    .local v12, "useController":Z
    const/4 v13, 0x1

    .line 339
    .local v13, "surfaceType":I
    const/4 v14, 0x0

    .line 340
    .local v14, "resizeMode":I
    const/16 v15, 0x1388

    .line 341
    .local v15, "controllerShowTimeoutMs":I
    const/4 v6, 0x1

    .line 342
    .local v6, "controllerHideOnTouch":Z
    const/4 v5, 0x1

    .line 343
    .local v5, "controllerAutoShow":Z
    move/from16 v17, v4

    .end local v4    # "shutterColorSet":Z
    .local v17, "shutterColorSet":Z
    const/4 v4, 0x1

    .line 344
    .local v4, "controllerHideDuringAds":Z
    const/4 v2, 0x0

    .line 345
    .local v2, "showBuffering":I
    if-eqz v3, :cond_138

    .line 346
    nop

    .line 348
    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    move/from16 v19, v4

    .end local v4    # "controllerHideDuringAds":Z
    .local v19, "controllerHideDuringAds":Z
    sget-object v4, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView:[I

    .line 349
    move/from16 v1, p3

    move/from16 v20, v2

    const/4 v2, 0x0

    .end local v2    # "showBuffering":I
    .local v20, "showBuffering":I
    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 352
    .local v4, "a":Landroid/content/res/TypedArray;
    :try_start_74
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView_shutter_background_color:I

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0
    :try_end_7a
    .catchall {:try_start_74 .. :try_end_7a} :catchall_12b

    move v2, v0

    .line 353
    .end local v17    # "shutterColorSet":Z
    .local v2, "shutterColorSet":Z
    :try_start_7b
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView_shutter_background_color:I

    .line 354
    invoke-virtual {v4, v0, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    move v7, v0

    .line 355
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView_player_layout_id:I

    .line 356
    invoke-virtual {v4, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    move v8, v0

    .line 357
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView_use_artwork:I

    invoke-virtual {v4, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v9, v0

    .line 358
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView_artwork_display_mode:I

    .line 359
    invoke-virtual {v4, v0, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move v10, v0

    .line 360
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView_default_artwork:I

    .line 361
    invoke-virtual {v4, v0, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    move v11, v0

    .line 362
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView_use_controller:I

    invoke-virtual {v4, v0, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v12, v0

    .line 363
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView_surface_type:I

    invoke-virtual {v4, v0, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move v13, v0

    .line 364
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView_resize_mode:I

    invoke-virtual {v4, v0, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move v14, v0

    .line 365
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView_show_timeout:I

    .line 366
    invoke-virtual {v4, v0, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move v15, v0

    .line 367
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView_hide_on_touch:I

    .line 368
    invoke-virtual {v4, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v6, v0

    .line 369
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView_auto_show:I

    .line 370
    invoke-virtual {v4, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v5, v0

    .line 371
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView_show_buffering:I
    :try_end_ca
    .catchall {:try_start_7b .. :try_end_ca} :catchall_11f

    move/from16 v1, v20

    .end local v20    # "showBuffering":I
    .local v1, "showBuffering":I
    :try_start_cc
    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0
    :try_end_d0
    .catchall {:try_start_cc .. :try_end_d0} :catchall_115

    move v1, v0

    .line 372
    :try_start_d1
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView_keep_content_on_player_reset:I
    :try_end_d3
    .catchall {:try_start_d1 .. :try_end_d3} :catchall_109

    move/from16 v17, v1

    move/from16 v20, v2

    move-object/from16 v1, p0

    .end local v1    # "showBuffering":I
    .end local v2    # "shutterColorSet":Z
    .local v17, "showBuffering":I
    .local v20, "shutterColorSet":Z
    :try_start_d9
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->keepContentOnPlayerReset:Z

    .line 373
    invoke-virtual {v4, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->keepContentOnPlayerReset:Z

    .line 376
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView_hide_during_ads:I
    :try_end_e3
    .catchall {:try_start_d9 .. :try_end_e3} :catchall_103

    .line 377
    move/from16 v2, v19

    .end local v19    # "controllerHideDuringAds":Z
    .local v2, "controllerHideDuringAds":Z
    :try_start_e5
    invoke-virtual {v4, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0
    :try_end_e9
    .catchall {:try_start_e5 .. :try_end_e9} :catchall_ff

    .line 379
    .end local v2    # "controllerHideDuringAds":Z
    .local v0, "controllerHideDuringAds":Z
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 380
    move/from16 v2, v17

    move/from16 v4, v20

    move/from16 v17, v15

    move v15, v14

    move v14, v13

    move v13, v12

    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v0

    goto/16 :goto_14e

    .line 379
    .end local v0    # "controllerHideDuringAds":Z
    .restart local v2    # "controllerHideDuringAds":Z
    :catchall_ff
    move-exception v0

    move/from16 v19, v17

    goto :goto_134

    .end local v2    # "controllerHideDuringAds":Z
    .restart local v19    # "controllerHideDuringAds":Z
    :catchall_103
    move-exception v0

    move/from16 v2, v19

    move/from16 v19, v17

    .end local v19    # "controllerHideDuringAds":Z
    .restart local v2    # "controllerHideDuringAds":Z
    goto :goto_134

    .end local v17    # "showBuffering":I
    .end local v20    # "shutterColorSet":Z
    .restart local v1    # "showBuffering":I
    .local v2, "shutterColorSet":Z
    .restart local v19    # "controllerHideDuringAds":Z
    :catchall_109
    move-exception v0

    move/from16 v17, v1

    move/from16 v20, v2

    move/from16 v2, v19

    move-object/from16 v1, p0

    move/from16 v19, v17

    .end local v1    # "showBuffering":I
    .end local v19    # "controllerHideDuringAds":Z
    .local v2, "controllerHideDuringAds":Z
    .restart local v17    # "showBuffering":I
    .restart local v20    # "shutterColorSet":Z
    goto :goto_134

    .end local v17    # "showBuffering":I
    .end local v20    # "shutterColorSet":Z
    .restart local v1    # "showBuffering":I
    .local v2, "shutterColorSet":Z
    .restart local v19    # "controllerHideDuringAds":Z
    :catchall_115
    move-exception v0

    move/from16 v20, v2

    move/from16 v2, v19

    move/from16 v19, v1

    move-object/from16 v1, p0

    .end local v1    # "showBuffering":I
    .local v2, "controllerHideDuringAds":Z
    .local v19, "showBuffering":I
    .restart local v20    # "shutterColorSet":Z
    goto :goto_134

    .local v2, "shutterColorSet":Z
    .local v19, "controllerHideDuringAds":Z
    .local v20, "showBuffering":I
    :catchall_11f
    move-exception v0

    move-object/from16 v1, p0

    move/from16 v26, v20

    move/from16 v20, v2

    move/from16 v2, v19

    move/from16 v19, v26

    .local v2, "controllerHideDuringAds":Z
    .local v19, "showBuffering":I
    .local v20, "shutterColorSet":Z
    goto :goto_134

    .end local v2    # "controllerHideDuringAds":Z
    .local v17, "shutterColorSet":Z
    .local v19, "controllerHideDuringAds":Z
    .local v20, "showBuffering":I
    :catchall_12b
    move-exception v0

    move-object/from16 v1, p0

    move/from16 v2, v19

    move/from16 v19, v20

    move/from16 v20, v17

    .end local v17    # "shutterColorSet":Z
    .restart local v2    # "controllerHideDuringAds":Z
    .local v19, "showBuffering":I
    .local v20, "shutterColorSet":Z
    :goto_134
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 380
    throw v0

    .line 345
    .end local v19    # "showBuffering":I
    .end local v20    # "shutterColorSet":Z
    .local v2, "showBuffering":I
    .local v4, "controllerHideDuringAds":Z
    .restart local v17    # "shutterColorSet":Z
    :cond_138
    move-object/from16 v18, v0

    move/from16 v19, v2

    move v2, v4

    .end local v4    # "controllerHideDuringAds":Z
    .local v2, "controllerHideDuringAds":Z
    .restart local v19    # "showBuffering":I
    move/from16 v4, v17

    move/from16 v17, v15

    move v15, v14

    move v14, v13

    move v13, v12

    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v2

    move/from16 v2, v19

    .line 383
    .end local v19    # "showBuffering":I
    .local v2, "showBuffering":I
    .local v4, "shutterColorSet":Z
    .local v5, "controllerHideDuringAds":Z
    .local v6, "controllerAutoShow":Z
    .local v7, "controllerHideOnTouch":Z
    .local v8, "shutterColor":I
    .local v9, "playerLayoutId":I
    .local v10, "useArtwork":Z
    .local v11, "artworkDisplayMode":I
    .local v12, "defaultArtworkId":I
    .local v13, "useController":Z
    .local v14, "surfaceType":I
    .local v15, "resizeMode":I
    .local v17, "controllerShowTimeoutMs":I
    :goto_14e
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v9, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 384
    const/high16 v0, 0x40000

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setDescendantFocusability(I)V

    .line 387
    sget v0, Lcom/google/android/exoplayer2/ui/R$id;->exo_content_frame:I

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 388
    if-eqz v0, :cond_169

    .line 389
    invoke-static {v0, v15}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setResizeModeRaw(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;I)V

    .line 393
    :cond_169
    move/from16 v19, v9

    .end local v9    # "playerLayoutId":I
    .local v19, "playerLayoutId":I
    sget v9, Lcom/google/android/exoplayer2/ui/R$id;->exo_shutter:I

    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->shutterView:Landroid/view/View;

    .line 394
    if-eqz v9, :cond_17a

    if-eqz v4, :cond_17a

    .line 395
    invoke-virtual {v9, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 399
    :cond_17a
    const/4 v9, 0x0

    .line 400
    .local v9, "surfaceViewIgnoresVideoAspectRatio":Z
    move/from16 v20, v4

    .end local v4    # "shutterColorSet":Z
    .restart local v20    # "shutterColorSet":Z
    if-eqz v0, :cond_244

    if-eqz v14, :cond_244

    .line 401
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    move/from16 v21, v8

    .end local v8    # "shutterColor":I
    .local v21, "shutterColor":I
    const/4 v8, -0x1

    invoke-direct {v4, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 404
    .local v4, "params":Landroid/view/ViewGroup$LayoutParams;
    packed-switch v14, :pswitch_data_340

    .line 431
    move/from16 v22, v9

    move/from16 v23, v14

    move/from16 v24, v15

    move-object/from16 v14, p1

    .end local v9    # "surfaceViewIgnoresVideoAspectRatio":Z
    .end local v14    # "surfaceType":I
    .end local v15    # "resizeMode":I
    .local v22, "surfaceViewIgnoresVideoAspectRatio":Z
    .local v23, "surfaceType":I
    .local v24, "resizeMode":I
    new-instance v8, Landroid/view/SurfaceView;

    invoke-direct {v8, v14}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v8, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    goto/16 :goto_228

    .line 422
    .end local v22    # "surfaceViewIgnoresVideoAspectRatio":Z
    .end local v23    # "surfaceType":I
    .end local v24    # "resizeMode":I
    .restart local v9    # "surfaceViewIgnoresVideoAspectRatio":Z
    .restart local v14    # "surfaceType":I
    .restart local v15    # "resizeMode":I
    :pswitch_19d
    :try_start_19d
    const-string v8, "com.google.android.exoplayer2.video.VideoDecoderGLSurfaceView"

    .line 423
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8
    :try_end_1a3
    .catch Ljava/lang/Exception; {:try_start_19d .. :try_end_1a3} :catch_1ce

    .line 424
    .local v8, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move/from16 v22, v9

    move/from16 v23, v14

    const/4 v9, 0x1

    .end local v9    # "surfaceViewIgnoresVideoAspectRatio":Z
    .end local v14    # "surfaceType":I
    .restart local v22    # "surfaceViewIgnoresVideoAspectRatio":Z
    .restart local v23    # "surfaceType":I
    :try_start_1a8
    new-array v14, v9, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    const/16 v16, 0x0

    aput-object v9, v14, v16

    invoke-virtual {v8, v14}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    move-object/from16 v24, v8

    const/4 v14, 0x1

    .end local v8    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v24, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v8, v14, [Ljava/lang/Object;
    :try_end_1b9
    .catch Ljava/lang/Exception; {:try_start_1a8 .. :try_end_1b9} :catch_1ca

    move-object/from16 v14, p1

    :try_start_1bb
    aput-object v14, v8, v16

    invoke-virtual {v9, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    iput-object v8, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;
    :try_end_1c5
    .catch Ljava/lang/Exception; {:try_start_1bb .. :try_end_1c5} :catch_1c8

    .line 428
    .end local v24    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move/from16 v24, v15

    goto :goto_228

    .line 425
    :catch_1c8
    move-exception v0

    goto :goto_1d5

    :catch_1ca
    move-exception v0

    move-object/from16 v14, p1

    goto :goto_1d5

    .end local v22    # "surfaceViewIgnoresVideoAspectRatio":Z
    .end local v23    # "surfaceType":I
    .restart local v9    # "surfaceViewIgnoresVideoAspectRatio":Z
    .restart local v14    # "surfaceType":I
    :catch_1ce
    move-exception v0

    move/from16 v22, v9

    move/from16 v23, v14

    move-object/from16 v14, p1

    .line 426
    .end local v9    # "surfaceViewIgnoresVideoAspectRatio":Z
    .end local v14    # "surfaceType":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v22    # "surfaceViewIgnoresVideoAspectRatio":Z
    .restart local v23    # "surfaceType":I
    :goto_1d5
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "video_decoder_gl_surface_view requires an ExoPlayer dependency"

    invoke-direct {v8, v9, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 410
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v22    # "surfaceViewIgnoresVideoAspectRatio":Z
    .end local v23    # "surfaceType":I
    .restart local v9    # "surfaceViewIgnoresVideoAspectRatio":Z
    .restart local v14    # "surfaceType":I
    :pswitch_1dd
    move/from16 v22, v9

    move/from16 v23, v14

    move-object/from16 v14, p1

    .end local v9    # "surfaceViewIgnoresVideoAspectRatio":Z
    .end local v14    # "surfaceType":I
    .restart local v22    # "surfaceViewIgnoresVideoAspectRatio":Z
    .restart local v23    # "surfaceType":I
    :try_start_1e3
    const-string v8, "com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView"

    .line 411
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8
    :try_end_1e9
    .catch Ljava/lang/Exception; {:try_start_1e3 .. :try_end_1e9} :catch_20d

    .line 413
    .restart local v8    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move/from16 v24, v15

    const/4 v9, 0x1

    .end local v15    # "resizeMode":I
    .local v24, "resizeMode":I
    :try_start_1ec
    new-array v15, v9, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    const/16 v16, 0x0

    aput-object v9, v15, v16

    invoke-virtual {v8, v15}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    move-object/from16 v25, v8

    const/4 v15, 0x1

    .end local v8    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v25, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v8, v15, [Ljava/lang/Object;

    aput-object v14, v8, v16

    invoke-virtual {v9, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    iput-object v8, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;
    :try_end_207
    .catch Ljava/lang/Exception; {:try_start_1ec .. :try_end_207} :catch_20b

    .line 417
    .end local v25    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 418
    const/4 v8, 0x1

    .line 419
    .end local v22    # "surfaceViewIgnoresVideoAspectRatio":Z
    .local v8, "surfaceViewIgnoresVideoAspectRatio":Z
    move v9, v8

    goto :goto_22a

    .line 414
    .end local v8    # "surfaceViewIgnoresVideoAspectRatio":Z
    .restart local v22    # "surfaceViewIgnoresVideoAspectRatio":Z
    :catch_20b
    move-exception v0

    goto :goto_210

    .end local v24    # "resizeMode":I
    .restart local v15    # "resizeMode":I
    :catch_20d
    move-exception v0

    move/from16 v24, v15

    .line 415
    .end local v15    # "resizeMode":I
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v24    # "resizeMode":I
    :goto_210
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "spherical_gl_surface_view requires an ExoPlayer dependency"

    invoke-direct {v8, v9, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 406
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v22    # "surfaceViewIgnoresVideoAspectRatio":Z
    .end local v23    # "surfaceType":I
    .end local v24    # "resizeMode":I
    .restart local v9    # "surfaceViewIgnoresVideoAspectRatio":Z
    .restart local v14    # "surfaceType":I
    .restart local v15    # "resizeMode":I
    :pswitch_218
    move/from16 v22, v9

    move/from16 v23, v14

    move/from16 v24, v15

    move-object/from16 v14, p1

    .end local v9    # "surfaceViewIgnoresVideoAspectRatio":Z
    .end local v14    # "surfaceType":I
    .end local v15    # "resizeMode":I
    .restart local v22    # "surfaceViewIgnoresVideoAspectRatio":Z
    .restart local v23    # "surfaceType":I
    .restart local v24    # "resizeMode":I
    new-instance v8, Landroid/view/TextureView;

    invoke-direct {v8, v14}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v8, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    .line 407
    nop

    .line 434
    :goto_228
    move/from16 v9, v22

    .end local v22    # "surfaceViewIgnoresVideoAspectRatio":Z
    .restart local v9    # "surfaceViewIgnoresVideoAspectRatio":Z
    :goto_22a
    iget-object v8, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    invoke-virtual {v8, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 438
    iget-object v8, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    move-object/from16 v15, v18

    invoke-virtual {v8, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    iget-object v8, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    move-object/from16 v18, v4

    const/4 v4, 0x0

    .end local v4    # "params":Landroid/view/ViewGroup$LayoutParams;
    .local v18, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v8, v4}, Landroid/view/View;->setClickable(Z)V

    .line 440
    iget-object v8, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    invoke-virtual {v0, v8, v4}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->addView(Landroid/view/View;I)V

    .line 441
    .end local v18    # "params":Landroid/view/ViewGroup$LayoutParams;
    goto :goto_255

    .line 400
    .end local v21    # "shutterColor":I
    .end local v23    # "surfaceType":I
    .end local v24    # "resizeMode":I
    .local v8, "shutterColor":I
    .restart local v14    # "surfaceType":I
    .restart local v15    # "resizeMode":I
    :cond_244
    move/from16 v21, v8

    move/from16 v22, v9

    move/from16 v23, v14

    move/from16 v24, v15

    move-object/from16 v15, v18

    move-object/from16 v14, p1

    .line 442
    .end local v8    # "shutterColor":I
    .end local v9    # "surfaceViewIgnoresVideoAspectRatio":Z
    .end local v14    # "surfaceType":I
    .end local v15    # "resizeMode":I
    .restart local v21    # "shutterColor":I
    .restart local v22    # "surfaceViewIgnoresVideoAspectRatio":Z
    .restart local v23    # "surfaceType":I
    .restart local v24    # "resizeMode":I
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    move/from16 v9, v22

    .line 444
    .end local v22    # "surfaceViewIgnoresVideoAspectRatio":Z
    .restart local v9    # "surfaceViewIgnoresVideoAspectRatio":Z
    :goto_255
    iput-boolean v9, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceViewIgnoresVideoAspectRatio:Z

    .line 447
    sget v0, Lcom/google/android/exoplayer2/ui/R$id;->exo_ad_overlay:I

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->adOverlayFrameLayout:Landroid/widget/FrameLayout;

    .line 450
    sget v0, Lcom/google/android/exoplayer2/ui/R$id;->exo_overlay:I

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    .line 453
    sget v0, Lcom/google/android/exoplayer2/ui/R$id;->exo_artwork:I

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->artworkView:Landroid/widget/ImageView;

    .line 454
    if-eqz v10, :cond_27d

    if-eqz v11, :cond_27d

    if-eqz v0, :cond_27d

    const/4 v0, 0x1

    goto :goto_27e

    :cond_27d
    const/4 v0, 0x0

    .line 456
    .local v0, "isArtworkEnabled":Z
    :goto_27e
    if-eqz v0, :cond_282

    move v4, v11

    goto :goto_283

    :cond_282
    const/4 v4, 0x0

    :goto_283
    iput v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->artworkDisplayMode:I

    .line 457
    if-eqz v12, :cond_291

    .line 458
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v12}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    .line 462
    :cond_291
    sget v4, Lcom/google/android/exoplayer2/ui/R$id;->exo_subtitles:I

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/ui/SubtitleView;

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    .line 463
    if-eqz v4, :cond_2a3

    .line 464
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setUserDefaultStyle()V

    .line 465
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setUserDefaultTextSize()V

    .line 469
    :cond_2a3
    sget v4, Lcom/google/android/exoplayer2/ui/R$id;->exo_buffering:I

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->bufferingView:Landroid/view/View;

    .line 470
    const/16 v8, 0x8

    if-eqz v4, :cond_2b2

    .line 471
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 473
    :cond_2b2
    iput v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->showBuffering:I

    .line 476
    sget v4, Lcom/google/android/exoplayer2/ui/R$id;->exo_error_message:I

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->errorMessageView:Landroid/widget/TextView;

    .line 477
    if-eqz v4, :cond_2c3

    .line 478
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 482
    :cond_2c3
    sget v4, Lcom/google/android/exoplayer2/ui/R$id;->exo_controller:I

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 483
    .local v4, "customController":Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;
    sget v8, Lcom/google/android/exoplayer2/ui/R$id;->exo_controller_placeholder:I

    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 484
    .local v8, "controllerPlaceholder":Landroid/view/View;
    if-eqz v4, :cond_2dc

    .line 485
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    move/from16 v18, v0

    move/from16 v22, v2

    move-object/from16 v16, v4

    goto :goto_313

    .line 486
    :cond_2dc
    if-eqz v8, :cond_30a

    .line 489
    move/from16 v18, v0

    .end local v0    # "isArtworkEnabled":Z
    .local v18, "isArtworkEnabled":Z
    new-instance v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    move/from16 v22, v2

    move-object/from16 v16, v4

    const/4 v2, 0x0

    const/4 v4, 0x0

    .end local v2    # "showBuffering":I
    .end local v4    # "customController":Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;
    .local v16, "customController":Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;
    .local v22, "showBuffering":I
    invoke-direct {v0, v14, v4, v2, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 490
    sget v4, Lcom/google/android/exoplayer2/ui/R$id;->exo_controller:I

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setId(I)V

    .line 491
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 492
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 493
    .local v4, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 494
    .local v2, "controllerIndex":I
    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 495
    invoke-virtual {v4, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 496
    .end local v2    # "controllerIndex":I
    .end local v4    # "parent":Landroid/view/ViewGroup;
    goto :goto_313

    .line 497
    .end local v16    # "customController":Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;
    .end local v18    # "isArtworkEnabled":Z
    .end local v22    # "showBuffering":I
    .restart local v0    # "isArtworkEnabled":Z
    .local v2, "showBuffering":I
    .local v4, "customController":Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;
    :cond_30a
    move/from16 v18, v0

    move/from16 v22, v2

    move-object/from16 v16, v4

    .end local v0    # "isArtworkEnabled":Z
    .end local v2    # "showBuffering":I
    .end local v4    # "customController":Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;
    .restart local v16    # "customController":Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;
    .restart local v18    # "isArtworkEnabled":Z
    .restart local v22    # "showBuffering":I
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 499
    :goto_313
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    if-eqz v0, :cond_31a

    move/from16 v2, v17

    goto :goto_31b

    :cond_31a
    const/4 v2, 0x0

    :goto_31b
    iput v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerShowTimeoutMs:I

    .line 500
    iput-boolean v7, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerHideOnTouch:Z

    .line 501
    iput-boolean v6, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerAutoShow:Z

    .line 502
    iput-boolean v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerHideDuringAds:Z

    .line 503
    if-eqz v13, :cond_329

    if-eqz v0, :cond_329

    const/4 v2, 0x1

    goto :goto_32a

    :cond_329
    const/4 v2, 0x0

    :goto_32a
    iput-boolean v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController:Z

    .line 504
    if-eqz v0, :cond_336

    .line 505
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->hideImmediately()V

    .line 506
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->addVisibilityListener(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$VisibilityListener;)V

    .line 508
    :cond_336
    if-eqz v13, :cond_33c

    .line 509
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setClickable(Z)V

    .line 511
    :cond_33c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateContentDescription()V

    .line 512
    return-void

    :pswitch_data_340
    .packed-switch 0x2
        :pswitch_218
        :pswitch_1dd
        :pswitch_19d
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Lcom/google/android/exoplayer2/ui/SubtitleView;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    .line 180
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Lcom/google/android/exoplayer2/Player;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    .line 180
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    .line 180
    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->textureViewRotation:I

    return v0
.end method

.method static synthetic access$1100(Landroid/view/TextureView;I)V
    .registers 2
    .param p0, "x0"    # Landroid/view/TextureView;
    .param p1, "x1"    # I

    .line 180
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->applyTextureViewRotation(Landroid/view/TextureView;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    .line 180
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->toggleControllerVisibility()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    .line 180
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateContentDescription()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Lcom/google/android/exoplayer2/ui/StyledPlayerView$ControllerVisibilityListener;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    .line 180
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerVisibilityListener:Lcom/google/android/exoplayer2/ui/StyledPlayerView$ControllerVisibilityListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Lcom/google/android/exoplayer2/ui/StyledPlayerView$FullscreenButtonClickListener;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    .line 180
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->fullscreenButtonClickListener:Lcom/google/android/exoplayer2/ui/StyledPlayerView$FullscreenButtonClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    .line 180
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateAspectRatio()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    .line 180
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->shutterView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/ui/StyledPlayerView;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerView;
    .param p1, "x1"    # Z

    .line 180
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateForCurrentTrackSelections(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    .line 180
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateBuffering()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    .line 180
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateErrorMessage()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    .line 180
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateControllerVisibility()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    .line 180
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->isPlayingAd()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    .line 180
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerHideDuringAds:Z

    return v0
.end method

.method private static applyTextureViewRotation(Landroid/view/TextureView;I)V
    .registers 11
    .param p0, "textureView"    # Landroid/view/TextureView;
    .param p1, "textureViewRotation"    # I

    .line 1512
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1513
    .local v0, "transformMatrix":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 1514
    .local v1, "textureViewWidth":F
    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 1515
    .local v2, "textureViewHeight":F
    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-eqz v4, :cond_42

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_42

    if-eqz p1, :cond_42

    .line 1516
    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v1, v4

    .line 1517
    .local v5, "pivotX":F
    div-float v4, v2, v4

    .line 1518
    .local v4, "pivotY":F
    int-to-float v6, p1

    invoke-virtual {v0, v6, v5, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1521
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v3, v6

    .line 1522
    .local v3, "originalTextureRect":Landroid/graphics/RectF;
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 1523
    .local v6, "rotatedTextureRect":Landroid/graphics/RectF;
    invoke-virtual {v0, v6, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1524
    nop

    .line 1525
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float v7, v1, v7

    .line 1526
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float v8, v2, v8

    .line 1524
    invoke-virtual {v0, v7, v8, v5, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1530
    .end local v3    # "originalTextureRect":Landroid/graphics/RectF;
    .end local v4    # "pivotY":F
    .end local v5    # "pivotX":F
    .end local v6    # "rotatedTextureRect":Landroid/graphics/RectF;
    :cond_42
    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 1531
    return-void
.end method

.method private closeShutter()V
    .registers 3

    .line 1405
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->shutterView:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 1406
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1408
    :cond_8
    return-void
.end method

.method private static configureEditModeLogo(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/ImageView;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "logo"    # Landroid/widget/ImageView;

    .line 1501
    sget v0, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_edit_mode_logo:I

    invoke-static {p0, p1, v0}, Lcom/google/android/exoplayer2/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1502
    sget v0, Lcom/google/android/exoplayer2/ui/R$color;->exo_edit_mode_background_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 1503
    return-void
.end method

.method private static configureEditModeLogoV23(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/ImageView;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "logo"    # Landroid/widget/ImageView;

    .line 1496
    sget v0, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_edit_mode_logo:I

    invoke-static {p0, p1, v0}, Lcom/google/android/exoplayer2/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1497
    sget v0, Lcom/google/android/exoplayer2/ui/R$color;->exo_edit_mode_background_color:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 1498
    return-void
.end method

.method private hideArtwork()V
    .registers 3

    .line 1398
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->artworkView:Landroid/widget/ImageView;

    if-eqz v0, :cond_10

    .line 1399
    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1400
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->artworkView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1402
    :cond_10
    return-void
.end method

.method private isDpadKey(I)Z
    .registers 3
    .param p1, "keyCode"    # I

    .line 1535
    const/16 v0, 0x13

    if-eq p1, v0, :cond_27

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_27

    const/16 v0, 0x16

    if-eq p1, v0, :cond_27

    const/16 v0, 0x10f

    if-eq p1, v0, :cond_27

    const/16 v0, 0x14

    if-eq p1, v0, :cond_27

    const/16 v0, 0x10d

    if-eq p1, v0, :cond_27

    const/16 v0, 0x15

    if-eq p1, v0, :cond_27

    const/16 v0, 0x10c

    if-eq p1, v0, :cond_27

    const/16 v0, 0x17

    if-ne p1, v0, :cond_25

    goto :goto_27

    :cond_25
    const/4 v0, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v0, 0x1

    :goto_28
    return v0
.end method

.method private isPlayingAd()Z
    .registers 3

    .line 1315
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_1e

    .line 1316
    const/16 v1, 0x10

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    .line 1317
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    .line 1318
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 1315
    :goto_1f
    return v0
.end method

.method private maybeShowController(Z)V
    .registers 4
    .param p1, "isForced"    # Z

    .line 1280
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerHideDuringAds:Z

    if-eqz v0, :cond_b

    .line 1281
    return-void

    .line 1283
    :cond_b
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1284
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 1285
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isFullyVisible()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getShowTimeoutMs()I

    move-result v0

    if-gtz v0, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    .line 1286
    .local v0, "wasShowingIndefinitely":Z
    :goto_24
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->shouldShowControllerIndefinitely()Z

    move-result v1

    .line 1287
    .local v1, "shouldShowIndefinitely":Z
    if-nez p1, :cond_2e

    if-nez v0, :cond_2e

    if-eqz v1, :cond_31

    .line 1288
    :cond_2e
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->showController(Z)V

    .line 1291
    .end local v0    # "wasShowingIndefinitely":Z
    .end local v1    # "shouldShowIndefinitely":Z
    :cond_31
    return-void
.end method

.method private setArtworkFromMediaMetadata(Lcom/google/android/exoplayer2/Player;)Z
    .registers 6
    .param p1, "player"    # Lcom/google/android/exoplayer2/Player;
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "artworkView"
        }
    .end annotation

    .line 1362
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 1363
    return v1

    .line 1365
    :cond_a
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getMediaMetadata()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v0

    .line 1366
    .local v0, "mediaMetadata":Lcom/google/android/exoplayer2/MediaMetadata;
    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaMetadata;->artworkData:[B

    if-nez v2, :cond_13

    .line 1367
    return v1

    .line 1369
    :cond_13
    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaMetadata;->artworkData:[B

    iget-object v3, v0, Lcom/google/android/exoplayer2/MediaMetadata;->artworkData:[B

    array-length v3, v3

    .line 1370
    invoke-static {v2, v1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1372
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setDrawableArtwork(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    return v2
.end method

.method private setDrawableArtwork(Landroid/graphics/drawable/Drawable;)Z
    .registers 9
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "artworkView"
        }
    .end annotation

    .line 1377
    const/4 v0, 0x0

    if-eqz p1, :cond_3d

    .line 1378
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 1379
    .local v1, "drawableWidth":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 1380
    .local v2, "drawableHeight":I
    if-lez v1, :cond_3d

    if-lez v2, :cond_3d

    .line 1381
    int-to-float v3, v1

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 1382
    .local v3, "artworkLayoutAspectRatio":F
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 1383
    .local v4, "scaleStyle":Landroid/widget/ImageView$ScaleType;
    iget v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->artworkDisplayMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_27

    .line 1384
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 1385
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 1387
    :cond_27
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {p0, v5, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->onContentAspectRatioChanged(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;F)V

    .line 1388
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->artworkView:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1389
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->artworkView:Landroid/widget/ImageView;

    invoke-virtual {v5, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1390
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->artworkView:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1391
    const/4 v0, 0x1

    return v0

    .line 1394
    .end local v1    # "drawableWidth":I
    .end local v2    # "drawableHeight":I
    .end local v3    # "artworkLayoutAspectRatio":F
    .end local v4    # "scaleStyle":Landroid/widget/ImageView$ScaleType;
    :cond_3d
    return v0
.end method

.method private static setResizeModeRaw(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;I)V
    .registers 2
    .param p0, "aspectRatioFrame"    # Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
    .param p1, "resizeMode"    # I

    .line 1507
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    .line 1508
    return-void
.end method

.method private shouldShowControllerIndefinitely()Z
    .registers 5

    .line 1294
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 1295
    return v1

    .line 1297
    :cond_6
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    .line 1298
    .local v0, "playbackState":I
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerAutoShow:Z

    if-eqz v2, :cond_38

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    .line 1299
    const/16 v3, 0x11

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    .line 1300
    invoke-interface {v2}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_38

    :cond_24
    if-eq v0, v1, :cond_37

    const/4 v2, 0x4

    if-eq v0, v2, :cond_37

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    .line 1303
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/Player;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v2

    if-nez v2, :cond_38

    :cond_37
    goto :goto_39

    :cond_38
    const/4 v1, 0x0

    .line 1298
    :goto_39
    return v1
.end method

.method private showController(Z)V
    .registers 4
    .param p1, "showIndefinitely"    # Z

    .line 1307
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1308
    return-void

    .line 1310
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    if-eqz p1, :cond_d

    const/4 v1, 0x0

    goto :goto_f

    :cond_d
    iget v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerShowTimeoutMs:I

    :goto_f
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setShowTimeoutMs(I)V

    .line 1311
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->show()V

    .line 1312
    return-void
.end method

.method public static switchTargetView(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/ui/StyledPlayerView;Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V
    .registers 4
    .param p0, "player"    # Lcom/google/android/exoplayer2/Player;
    .param p1, "oldPlayerView"    # Lcom/google/android/exoplayer2/ui/StyledPlayerView;
    .param p2, "newPlayerView"    # Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    .line 525
    if-ne p1, p2, :cond_3

    .line 526
    return-void

    .line 532
    :cond_3
    if-eqz p2, :cond_8

    .line 533
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 535
    :cond_8
    if-eqz p1, :cond_e

    .line 536
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 538
    :cond_e
    return-void
.end method

.method private toggleControllerVisibility()V
    .registers 2

    .line 1268
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-nez v0, :cond_b

    goto :goto_22

    .line 1271
    :cond_b
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isFullyVisible()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1272
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->maybeShowController(Z)V

    goto :goto_21

    .line 1273
    :cond_18
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerHideOnTouch:Z

    if-eqz v0, :cond_21

    .line 1274
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->hide()V

    .line 1276
    :cond_21
    :goto_21
    return-void

    .line 1269
    :cond_22
    :goto_22
    return-void
.end method

.method private updateAspectRatio()V
    .registers 9

    .line 1462
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getVideoSize()Lcom/google/android/exoplayer2/video/VideoSize;

    move-result-object v0

    goto :goto_b

    :cond_9
    sget-object v0, Lcom/google/android/exoplayer2/video/VideoSize;->UNKNOWN:Lcom/google/android/exoplayer2/video/VideoSize;

    .line 1463
    .local v0, "videoSize":Lcom/google/android/exoplayer2/video/VideoSize;
    :goto_b
    iget v1, v0, Lcom/google/android/exoplayer2/video/VideoSize;->width:I

    .line 1464
    .local v1, "width":I
    iget v2, v0, Lcom/google/android/exoplayer2/video/VideoSize;->height:I

    .line 1465
    .local v2, "height":I
    iget v3, v0, Lcom/google/android/exoplayer2/video/VideoSize;->unappliedRotationDegrees:I

    .line 1467
    .local v3, "unappliedRotationDegrees":I
    const/4 v4, 0x0

    if-eqz v2, :cond_1f

    if-nez v1, :cond_17

    goto :goto_1f

    :cond_17
    int-to-float v5, v1

    iget v6, v0, Lcom/google/android/exoplayer2/video/VideoSize;->pixelWidthHeightRatio:F

    mul-float v5, v5, v6

    int-to-float v6, v2

    div-float/2addr v5, v6

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v5, 0x0

    .line 1469
    .local v5, "videoAspectRatio":F
    :goto_20
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    instance-of v7, v6, Landroid/view/TextureView;

    if-eqz v7, :cond_53

    .line 1471
    cmpl-float v7, v5, v4

    if-lez v7, :cond_36

    const/16 v7, 0x5a

    if-eq v3, v7, :cond_32

    const/16 v7, 0x10e

    if-ne v3, v7, :cond_36

    .line 1475
    :cond_32
    const/high16 v7, 0x3f800000    # 1.0f

    div-float/2addr v7, v5

    move v5, v7

    .line 1477
    :cond_36
    iget v7, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->textureViewRotation:I

    if-eqz v7, :cond_3f

    .line 1478
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/StyledPlayerView$ComponentListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1480
    :cond_3f
    iput v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->textureViewRotation:I

    .line 1481
    if-eqz v3, :cond_4a

    .line 1484
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/StyledPlayerView$ComponentListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1486
    :cond_4a
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    check-cast v6, Landroid/view/TextureView;

    iget v7, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->textureViewRotation:I

    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->applyTextureViewRotation(Landroid/view/TextureView;I)V

    .line 1489
    :cond_53
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 1490
    iget-boolean v7, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceViewIgnoresVideoAspectRatio:Z

    if-eqz v7, :cond_5a

    goto :goto_5b

    :cond_5a
    move v4, v5

    .line 1489
    :goto_5b
    invoke-virtual {p0, v6, v4}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->onContentAspectRatioChanged(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;F)V

    .line 1491
    return-void
.end method

.method private updateBuffering()V
    .registers 5

    .line 1411
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->bufferingView:Landroid/view/View;

    if-eqz v0, :cond_2c

    .line 1412
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 1414
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_20

    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->showBuffering:I

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1f

    if-ne v0, v3, :cond_20

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    .line 1416
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1f
    goto :goto_21

    :cond_20
    const/4 v3, 0x0

    :goto_21
    move v0, v3

    .line 1417
    .local v0, "showBufferingSpinner":Z
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->bufferingView:Landroid/view/View;

    if-eqz v0, :cond_27

    goto :goto_29

    :cond_27
    const/16 v1, 0x8

    :goto_29
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1419
    .end local v0    # "showBufferingSpinner":Z
    :cond_2c
    return-void
.end method

.method private updateContentDescription()V
    .registers 4

    .line 1440
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController:Z

    if-nez v2, :cond_a

    goto :goto_34

    .line 1442
    :cond_a
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isFullyVisible()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1443
    nop

    .line 1444
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerHideOnTouch:Z

    if-eqz v0, :cond_20

    .line 1445
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_hide:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_21

    .line 1446
    :cond_20
    nop

    .line 1443
    :goto_21
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_37

    .line 1448
    :cond_25
    nop

    .line 1449
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_show:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1448
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_37

    .line 1441
    :cond_34
    :goto_34
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1451
    :goto_37
    return-void
.end method

.method private updateControllerVisibility()V
    .registers 2

    .line 1454
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerHideDuringAds:Z

    if-eqz v0, :cond_e

    .line 1455
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->hideController()V

    goto :goto_12

    .line 1457
    :cond_e
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->maybeShowController(Z)V

    .line 1459
    :goto_12
    return-void
.end method

.method private updateErrorMessage()V
    .registers 5

    .line 1422
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->errorMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_3c

    .line 1423
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->customErrorMessage:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    .line 1424
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1425
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->errorMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1426
    return-void

    .line 1428
    :cond_12
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayerError()Lcom/google/android/exoplayer2/PlaybackException;

    move-result-object v0

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    .line 1429
    .local v0, "error":Lcom/google/android/exoplayer2/PlaybackException;
    :goto_1c
    if-eqz v0, :cond_35

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->errorMessageProvider:Lcom/google/android/exoplayer2/util/ErrorMessageProvider;

    if-eqz v1, :cond_35

    .line 1430
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/util/ErrorMessageProvider;->getErrorMessage(Ljava/lang/Throwable;)Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    .line 1431
    .local v1, "errorMessage":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->errorMessageView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1432
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->errorMessageView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1433
    .end local v1    # "errorMessage":Ljava/lang/CharSequence;
    goto :goto_3c

    .line 1434
    :cond_35
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->errorMessageView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1437
    .end local v0    # "error":Lcom/google/android/exoplayer2/PlaybackException;
    :cond_3c
    :goto_3c
    return-void
.end method

.method private updateForCurrentTrackSelections(Z)V
    .registers 5
    .param p1, "isNewPlayer"    # Z

    .line 1322
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    .line 1323
    .local v0, "player":Lcom/google/android/exoplayer2/Player;
    if-eqz v0, :cond_4c

    .line 1324
    const/16 v1, 0x1e

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 1325
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentTracks()Lcom/google/android/exoplayer2/Tracks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Tracks;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_4c

    .line 1333
    :cond_17
    if-eqz p1, :cond_20

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->keepContentOnPlayerReset:Z

    if-nez v1, :cond_20

    .line 1335
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->closeShutter()V

    .line 1338
    :cond_20
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentTracks()Lcom/google/android/exoplayer2/Tracks;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Tracks;->isTypeSelected(I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1341
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->hideArtwork()V

    .line 1342
    return-void

    .line 1346
    :cond_2f
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->closeShutter()V

    .line 1348
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useArtwork()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 1349
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setArtworkFromMediaMetadata(Lcom/google/android/exoplayer2/Player;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1350
    return-void

    .line 1352
    :cond_3f
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setDrawableArtwork(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 1353
    return-void

    .line 1357
    :cond_48
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->hideArtwork()V

    .line 1358
    return-void

    .line 1326
    :cond_4c
    :goto_4c
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->keepContentOnPlayerReset:Z

    if-nez v1, :cond_56

    .line 1327
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->hideArtwork()V

    .line 1328
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->closeShutter()V

    .line 1330
    :cond_56
    return-void
.end method

.method private useArtwork()Z
    .registers 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "artworkView"
        }
        result = true
    .end annotation

    .line 1260
    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->artworkDisplayMode:I

    if-eqz v0, :cond_b

    .line 1261
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->artworkView:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    const/4 v0, 0x1

    return v0

    .line 1264
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method private useController()Z
    .registers 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "controller"
        }
        result = true
    .end annotation

    .line 1251
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController:Z

    if-eqz v0, :cond_b

    .line 1252
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    const/4 v0, 0x1

    return v0

    .line 1255
    :cond_b
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 793
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_19

    .line 794
    const/16 v1, 0x10

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    .line 795
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 796
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 799
    :cond_19
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->isDpadKey(I)Z

    move-result v0

    .line 800
    .local v0, "isDpadKey":Z
    const/4 v1, 0x0

    .line 801
    .local v1, "handled":Z
    const/4 v2, 0x1

    if-eqz v0, :cond_38

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController()Z

    move-result v3

    if-eqz v3, :cond_38

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isFullyVisible()Z

    move-result v3

    if-nez v3, :cond_38

    .line 803
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->maybeShowController(Z)V

    .line 804
    const/4 v1, 0x1

    goto :goto_55

    .line 805
    :cond_38
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-nez v3, :cond_51

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_45

    goto :goto_51

    .line 810
    :cond_45
    if-eqz v0, :cond_55

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController()Z

    move-result v3

    if-eqz v3, :cond_55

    .line 812
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->maybeShowController(Z)V

    goto :goto_55

    .line 808
    :cond_51
    :goto_51
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->maybeShowController(Z)V

    .line 809
    const/4 v1, 0x1

    .line 814
    :cond_55
    :goto_55
    return v1
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 825
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public getAdOverlayInfos()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/ui/AdOverlayInfo;",
            ">;"
        }
    .end annotation

    .line 1233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1234
    .local v0, "overlayViews":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/ui/AdOverlayInfo;>;"
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_14

    .line 1235
    new-instance v2, Lcom/google/android/exoplayer2/ui/AdOverlayInfo;

    const/4 v3, 0x4

    const-string v4, "Transparent overlay does not impact viewability"

    invoke-direct {v2, v1, v3, v4}, Lcom/google/android/exoplayer2/ui/AdOverlayInfo;-><init>(Landroid/view/View;ILjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1241
    :cond_14
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    if-eqz v1, :cond_21

    .line 1242
    new-instance v2, Lcom/google/android/exoplayer2/ui/AdOverlayInfo;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/google/android/exoplayer2/ui/AdOverlayInfo;-><init>(Landroid/view/View;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1244
    :cond_21
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1
.end method

.method public getAdViewGroup()Landroid/view/ViewGroup;
    .registers 3

    .line 1227
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->adOverlayFrameLayout:Landroid/widget/FrameLayout;

    const-string v1, "exo_ad_overlay must be present for ad playback"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getArtworkDisplayMode()I
    .registers 2

    .line 662
    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->artworkDisplayMode:I

    return v0
.end method

.method public getControllerAutoShow()Z
    .registers 2

    .line 901
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerAutoShow:Z

    return v0
.end method

.method public getControllerHideOnTouch()Z
    .registers 2

    .line 881
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerHideOnTouch:Z

    return v0
.end method

.method public getControllerShowTimeoutMs()I
    .registers 2

    .line 860
    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerShowTimeoutMs:I

    return v0
.end method

.method public getDefaultArtwork()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 668
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverlayFrameLayout()Landroid/widget/FrameLayout;
    .registers 2

    .line 1154
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPlayer()Lcom/google/android/exoplayer2/Player;
    .registers 2

    .line 543
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    return-object v0
.end method

.method public getResizeMode()I
    .registers 2

    .line 631
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->getResizeMode()I

    move-result v0

    return v0
.end method

.method public getSubtitleView()Lcom/google/android/exoplayer2/ui/SubtitleView;
    .registers 2

    .line 1165
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    return-object v0
.end method

.method public getUseArtwork()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 640
    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->artworkDisplayMode:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public getUseController()Z
    .registers 2

    .line 686
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController:Z

    return v0
.end method

.method public getVideoSurfaceView()Landroid/view/View;
    .registers 2

    .line 1142
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    return-object v0
.end method

.method public hideController()V
    .registers 2

    .line 846
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    if-eqz v0, :cond_7

    .line 847
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->hide()V

    .line 849
    :cond_7
    return-void
.end method

.method public isControllerFullyVisible()Z
    .registers 2

    .line 830
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isFullyVisible()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected onContentAspectRatioChanged(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;F)V
    .registers 3
    .param p1, "contentFrame"    # Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
    .param p2, "aspectRatio"    # F

    .line 1218
    if-eqz p1, :cond_5

    .line 1219
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 1221
    :cond_5
    return-void
.end method

.method public onPause()V
    .registers 3

    .line 1204
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    instance-of v1, v0, Landroid/opengl/GLSurfaceView;

    if-eqz v1, :cond_b

    .line 1205
    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 1207
    :cond_b
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 1191
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    instance-of v1, v0, Landroid/opengl/GLSurfaceView;

    if-eqz v1, :cond_b

    .line 1192
    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 1194
    :cond_b
    return-void
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1176
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-nez v0, :cond_b

    goto :goto_10

    .line 1179
    :cond_b
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->maybeShowController(Z)V

    .line 1180
    return v0

    .line 1177
    :cond_10
    :goto_10
    const/4 v0, 0x0

    return v0
.end method

.method public performClick()Z
    .registers 2

    .line 1170
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->toggleControllerVisibility()V

    .line 1171
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method public setArtworkDisplayMode(I)V
    .registers 4
    .param p1, "artworkDisplayMode"    # I

    .line 653
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->artworkView:Landroid/widget/ImageView;

    if-eqz v1, :cond_8

    goto :goto_a

    :cond_8
    const/4 v1, 0x0

    goto :goto_b

    :cond_a
    :goto_a
    const/4 v1, 0x1

    :goto_b
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 654
    iget v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->artworkDisplayMode:I

    if-eq v1, p1, :cond_17

    .line 655
    iput p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->artworkDisplayMode:I

    .line 656
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateForCurrentTrackSelections(Z)V

    .line 658
    :cond_17
    return-void
.end method

.method public setAspectRatioListener(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioListener;

    .line 1119
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatioListener(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioListener;)V

    .line 1121
    return-void
.end method

.method public setControllerAutoShow(Z)V
    .registers 2
    .param p1, "controllerAutoShow"    # Z

    .line 912
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerAutoShow:Z

    .line 913
    return-void
.end method

.method public setControllerHideDuringAds(Z)V
    .registers 2
    .param p1, "controllerHideDuringAds"    # Z

    .line 922
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerHideDuringAds:Z

    .line 923
    return-void
.end method

.method public setControllerHideOnTouch(Z)V
    .registers 3
    .param p1, "controllerHideOnTouch"    # Z

    .line 890
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerHideOnTouch:Z

    .line 892
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateContentDescription()V

    .line 893
    return-void
.end method

.method public setControllerOnFullScreenModeChangedListener(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$OnFullScreenModeChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$OnFullScreenModeChangedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1000
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->fullscreenButtonClickListener:Lcom/google/android/exoplayer2/ui/StyledPlayerView$FullscreenButtonClickListener;

    .line 1002
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setOnFullScreenModeChangedListener(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$OnFullScreenModeChangedListener;)V

    .line 1003
    return-void
.end method

.method public setControllerShowTimeoutMs(I)V
    .registers 3
    .param p1, "controllerShowTimeoutMs"    # I

    .line 871
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    iput p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerShowTimeoutMs:I

    .line 873
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isFullyVisible()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 875
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->showController()V

    .line 877
    :cond_12
    return-void
.end method

.method public setControllerVisibilityListener(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$VisibilityListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$VisibilityListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 954
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->legacyControllerVisibilityListener:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$VisibilityListener;

    if-ne v0, p1, :cond_a

    .line 956
    return-void

    .line 959
    :cond_a
    if-eqz v0, :cond_11

    .line 960
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->removeVisibilityListener(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$VisibilityListener;)V

    .line 962
    :cond_11
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->legacyControllerVisibilityListener:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$VisibilityListener;

    .line 963
    if-eqz p1, :cond_21

    .line 964
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->addVisibilityListener(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$VisibilityListener;)V

    .line 965
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView$ControllerVisibilityListener;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setControllerVisibilityListener(Lcom/google/android/exoplayer2/ui/StyledPlayerView$ControllerVisibilityListener;)V

    .line 967
    :cond_21
    return-void
.end method

.method public setControllerVisibilityListener(Lcom/google/android/exoplayer2/ui/StyledPlayerView$ControllerVisibilityListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/google/android/exoplayer2/ui/StyledPlayerView$ControllerVisibilityListener;

    .line 936
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerVisibilityListener:Lcom/google/android/exoplayer2/ui/StyledPlayerView$ControllerVisibilityListener;

    .line 937
    if-eqz p1, :cond_b

    .line 938
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$VisibilityListener;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setControllerVisibilityListener(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$VisibilityListener;)V

    .line 940
    :cond_b
    return-void
.end method

.method public setCustomErrorMessage(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 786
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->errorMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 787
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->customErrorMessage:Ljava/lang/CharSequence;

    .line 788
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateErrorMessage()V

    .line 789
    return-void
.end method

.method public setDefaultArtwork(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "defaultArtwork"    # Landroid/graphics/drawable/Drawable;

    .line 678
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_a

    .line 679
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    .line 680
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateForCurrentTrackSelections(Z)V

    .line 682
    :cond_a
    return-void
.end method

.method public setErrorMessageProvider(Lcom/google/android/exoplayer2/util/ErrorMessageProvider;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ErrorMessageProvider<",
            "-",
            "Lcom/google/android/exoplayer2/PlaybackException;",
            ">;)V"
        }
    .end annotation

    .line 773
    .local p1, "errorMessageProvider":Lcom/google/android/exoplayer2/util/ErrorMessageProvider;, "Lcom/google/android/exoplayer2/util/ErrorMessageProvider<-Lcom/google/android/exoplayer2/PlaybackException;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->errorMessageProvider:Lcom/google/android/exoplayer2/util/ErrorMessageProvider;

    if-eq v0, p1, :cond_9

    .line 774
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->errorMessageProvider:Lcom/google/android/exoplayer2/util/ErrorMessageProvider;

    .line 775
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateErrorMessage()V

    .line 777
    :cond_9
    return-void
.end method

.method public setExtraAdGroupMarkers([J[Z)V
    .registers 4
    .param p1, "extraAdGroupTimesMs"    # [J
    .param p2, "extraPlayedAdGroups"    # [Z

    .line 1107
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setExtraAdGroupMarkers([J[Z)V

    .line 1109
    return-void
.end method

.method public setFullscreenButtonClickListener(Lcom/google/android/exoplayer2/ui/StyledPlayerView$FullscreenButtonClickListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/google/android/exoplayer2/ui/StyledPlayerView$FullscreenButtonClickListener;

    .line 981
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->fullscreenButtonClickListener:Lcom/google/android/exoplayer2/ui/StyledPlayerView$FullscreenButtonClickListener;

    .line 983
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/StyledPlayerView$ComponentListener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setOnFullScreenModeChangedListener(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$OnFullScreenModeChangedListener;)V

    .line 984
    return-void
.end method

.method public setKeepContentOnPlayerReset(Z)V
    .registers 3
    .param p1, "keepContentOnPlayerReset"    # Z

    .line 745
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->keepContentOnPlayerReset:Z

    if-eq v0, p1, :cond_a

    .line 746
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->keepContentOnPlayerReset:Z

    .line 747
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateForCurrentTrackSelections(Z)V

    .line 749
    :cond_a
    return-void
.end method

.method public setPlayer(Lcom/google/android/exoplayer2/Player;)V
    .registers 8
    .param p1, "player"    # Lcom/google/android/exoplayer2/Player;

    .line 560
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

    .line 561
    if-eqz p1, :cond_21

    .line 562
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v0, 0x1

    .line 561
    :goto_22
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 563
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-ne v0, p1, :cond_2a

    .line 564
    return-void

    .line 566
    :cond_2a
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    .line 567
    .local v0, "oldPlayer":Lcom/google/android/exoplayer2/Player;
    const/16 v1, 0x1b

    if-eqz v0, :cond_50

    .line 568
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/StyledPlayerView$ComponentListener;

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/Player;->removeListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 569
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 570
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    instance-of v5, v4, Landroid/view/TextureView;

    if-eqz v5, :cond_47

    .line 571
    check-cast v4, Landroid/view/TextureView;

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/Player;->clearVideoTextureView(Landroid/view/TextureView;)V

    goto :goto_50

    .line 572
    :cond_47
    instance-of v5, v4, Landroid/view/SurfaceView;

    if-eqz v5, :cond_50

    .line 573
    check-cast v4, Landroid/view/SurfaceView;

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/Player;->clearVideoSurfaceView(Landroid/view/SurfaceView;)V

    .line 577
    :cond_50
    :goto_50
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    if-eqz v4, :cond_58

    .line 578
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    .line 580
    :cond_58
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    .line 581
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController()Z

    move-result v4

    if-eqz v4, :cond_65

    .line 582
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v4, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 584
    :cond_65
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateBuffering()V

    .line 585
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateErrorMessage()V

    .line 586
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateForCurrentTrackSelections(Z)V

    .line 587
    if-eqz p1, :cond_c1

    .line 588
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 589
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    instance-of v2, v1, Landroid/view/TextureView;

    if-eqz v2, :cond_82

    .line 590
    check-cast v1, Landroid/view/TextureView;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/Player;->setVideoTextureView(Landroid/view/TextureView;)V

    goto :goto_8b

    .line 591
    :cond_82
    instance-of v2, v1, Landroid/view/SurfaceView;

    if-eqz v2, :cond_8b

    .line 592
    check-cast v1, Landroid/view/SurfaceView;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/Player;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    .line 594
    :cond_8b
    :goto_8b
    const/16 v1, 0x1e

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 595
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentTracks()Lcom/google/android/exoplayer2/Tracks;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Tracks;->isTypeSupported(I)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 597
    :cond_9e
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateAspectRatio()V

    .line 600
    :cond_a1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    if-eqz v1, :cond_b8

    const/16 v1, 0x1c

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 601
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentCues()Lcom/google/android/exoplayer2/text/CueGroup;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/text/CueGroup;->cues:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    .line 603
    :cond_b8
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/StyledPlayerView$ComponentListener;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/Player;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 604
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->maybeShowController(Z)V

    goto :goto_c4

    .line 606
    :cond_c1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->hideController()V

    .line 608
    :goto_c4
    return-void
.end method

.method public setRepeatToggleModes(I)V
    .registers 3
    .param p1, "repeatToggleModes"    # I

    .line 1051
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setRepeatToggleModes(I)V

    .line 1053
    return-void
.end method

.method public setResizeMode(I)V
    .registers 3
    .param p1, "resizeMode"    # I

    .line 625
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    .line 627
    return-void
.end method

.method public setShowBuffering(I)V
    .registers 3
    .param p1, "showBuffering"    # I

    .line 760
    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->showBuffering:I

    if-eq v0, p1, :cond_9

    .line 761
    iput p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->showBuffering:I

    .line 762
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateBuffering()V

    .line 764
    :cond_9
    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .registers 3
    .param p1, "showFastForwardButton"    # Z

    .line 1021
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setShowFastForwardButton(Z)V

    .line 1023
    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .registers 3
    .param p1, "showMultiWindowTimeBar"    # Z

    .line 1091
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setShowMultiWindowTimeBar(Z)V

    .line 1093
    return-void
.end method

.method public setShowNextButton(Z)V
    .registers 3
    .param p1, "showNextButton"    # Z

    .line 1041
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setShowNextButton(Z)V

    .line 1043
    return-void
.end method

.method public setShowPreviousButton(Z)V
    .registers 3
    .param p1, "showPreviousButton"    # Z

    .line 1031
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setShowPreviousButton(Z)V

    .line 1033
    return-void
.end method

.method public setShowRewindButton(Z)V
    .registers 3
    .param p1, "showRewindButton"    # Z

    .line 1011
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setShowRewindButton(Z)V

    .line 1013
    return-void
.end method

.method public setShowShuffleButton(Z)V
    .registers 3
    .param p1, "showShuffleButton"    # Z

    .line 1061
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setShowShuffleButton(Z)V

    .line 1063
    return-void
.end method

.method public setShowSubtitleButton(Z)V
    .registers 3
    .param p1, "showSubtitleButton"    # Z

    .line 1071
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setShowSubtitleButton(Z)V

    .line 1073
    return-void
.end method

.method public setShowVrButton(Z)V
    .registers 3
    .param p1, "showVrButton"    # Z

    .line 1081
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setShowVrButton(Z)V

    .line 1083
    return-void
.end method

.method public setShutterBackgroundColor(I)V
    .registers 3
    .param p1, "color"    # I

    .line 720
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->shutterView:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 721
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 723
    :cond_7
    return-void
.end method

.method public setUseArtwork(Z)V
    .registers 3
    .param p1, "useArtwork"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 648
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setArtworkDisplayMode(I)V

    .line 649
    return-void
.end method

.method public setUseController(Z)V
    .registers 5
    .param p1, "useController"    # Z

    .line 699
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_b

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    if-eqz v2, :cond_9

    goto :goto_b

    :cond_9
    const/4 v2, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v2, 0x1

    :goto_c
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 700
    if-nez p1, :cond_17

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->hasOnClickListeners()Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_17
    const/4 v0, 0x1

    :cond_18
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setClickable(Z)V

    .line 701
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController:Z

    if-ne v0, p1, :cond_20

    .line 702
    return-void

    .line 704
    :cond_20
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController:Z

    .line 705
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 706
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    goto :goto_3d

    .line 707
    :cond_30
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    if-eqz v0, :cond_3d

    .line 708
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->hide()V

    .line 709
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 711
    :cond_3d
    :goto_3d
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateContentDescription()V

    .line 712
    return-void
.end method

.method public setVisibility(I)V
    .registers 4
    .param p1, "visibility"    # I

    .line 612
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 613
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    instance-of v1, v0, Landroid/view/SurfaceView;

    if-eqz v1, :cond_c

    .line 615
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 617
    :cond_c
    return-void
.end method

.method public showController()V
    .registers 2

    .line 841
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->shouldShowControllerIndefinitely()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->showController(Z)V

    .line 842
    return-void
.end method
