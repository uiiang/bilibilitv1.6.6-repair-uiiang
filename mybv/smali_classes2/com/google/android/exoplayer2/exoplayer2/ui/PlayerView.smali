.class public Lcom/google/android/exoplayer2/ui/PlayerView;
.super Landroid/widget/FrameLayout;
.source "PlayerView.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ui/AdViewProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;,
        Lcom/google/android/exoplayer2/ui/PlayerView$ShowBuffering;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
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

.field private final artworkView:Landroid/widget/ImageView;

.field private final bufferingView:Landroid/view/View;

.field private final componentListener:Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;

.field private final contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

.field private final controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

.field private controllerAutoShow:Z

.field private controllerHideDuringAds:Z

.field private controllerHideOnTouch:Z

.field private controllerShowTimeoutMs:I

.field private controllerVisibilityListener:Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;

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

.field private isTouching:Z

.field private keepContentOnPlayerReset:Z

.field private final overlayFrameLayout:Landroid/widget/FrameLayout;

.field private player:Lcom/google/android/exoplayer2/Player;

.field private showBuffering:I

.field private final shutterView:Landroid/view/View;

.field private final subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

.field private final surfaceView:Landroid/view/View;

.field private final surfaceViewIgnoresVideoAspectRatio:Z

.field private textureViewRotation:I

.field private useArtwork:Z

.field private useController:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 319
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 320
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 323
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 324
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 30
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 328
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 330
    new-instance v0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ui/PlayerView;)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;

    .line 332
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->isInEditMode()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v4, :cond_4c

    .line 333
    iput-object v6, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 334
    iput-object v6, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->shutterView:Landroid/view/View;

    .line 335
    iput-object v6, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    .line 336
    iput-boolean v5, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceViewIgnoresVideoAspectRatio:Z

    .line 337
    iput-object v6, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    .line 338
    iput-object v6, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    .line 339
    iput-object v6, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->bufferingView:Landroid/view/View;

    .line 340
    iput-object v6, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    .line 341
    iput-object v6, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 342
    iput-object v6, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->adOverlayFrameLayout:Landroid/widget/FrameLayout;

    .line 343
    iput-object v6, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    .line 344
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 345
    .local v0, "logo":Landroid/widget/ImageView;
    sget v4, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_41

    .line 346
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v2, v4, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->configureEditModeLogoV23(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/ImageView;)V

    goto :goto_48

    .line 348
    :cond_41
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v2, v4, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->configureEditModeLogo(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/ImageView;)V

    .line 350
    :goto_48
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->addView(Landroid/view/View;)V

    .line 351
    return-void

    .line 354
    .end local v0    # "logo":Landroid/widget/ImageView;
    :cond_4c
    const/4 v4, 0x0

    .line 355
    .local v4, "shutterColorSet":Z
    const/4 v7, 0x0

    .line 356
    .local v7, "shutterColor":I
    sget v8, Lcom/google/android/exoplayer2/ui/R$layout;->exo_player_view:I

    .line 357
    .local v8, "playerLayoutId":I
    const/4 v9, 0x1

    .line 358
    .local v9, "useArtwork":Z
    const/4 v10, 0x0

    .line 359
    .local v10, "defaultArtworkId":I
    const/4 v11, 0x1

    .line 360
    .local v11, "useController":Z
    const/4 v12, 0x1

    .line 361
    .local v12, "surfaceType":I
    const/4 v13, 0x0

    .line 362
    .local v13, "resizeMode":I
    const/16 v14, 0x1388

    .line 363
    .local v14, "controllerShowTimeoutMs":I
    const/4 v15, 0x1

    .line 364
    .local v15, "controllerHideOnTouch":Z
    const/4 v6, 0x1

    .line 365
    .local v6, "controllerAutoShow":Z
    const/4 v5, 0x1

    .line 366
    .local v5, "controllerHideDuringAds":Z
    move/from16 v17, v4

    .end local v4    # "shutterColorSet":Z
    .local v17, "shutterColorSet":Z
    const/4 v4, 0x0

    .line 367
    .local v4, "showBuffering":I
    if-eqz v3, :cond_119

    .line 368
    nop

    .line 370
    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v2, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView:[I

    .line 371
    move/from16 v19, v5

    const/4 v1, 0x0

    move/from16 v5, p3

    .end local v5    # "controllerHideDuringAds":Z
    .local v19, "controllerHideDuringAds":Z
    invoke-virtual {v0, v3, v2, v5, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 374
    .local v2, "a":Landroid/content/res/TypedArray;
    :try_start_71
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_shutter_background_color:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0
    :try_end_77
    .catchall {:try_start_71 .. :try_end_77} :catchall_10e

    move v1, v0

    .line 375
    .end local v17    # "shutterColorSet":Z
    .local v1, "shutterColorSet":Z
    :try_start_78
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_shutter_background_color:I

    invoke-virtual {v2, v0, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    move v7, v0

    .line 376
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_player_layout_id:I

    invoke-virtual {v2, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    move v8, v0

    .line 377
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_use_artwork:I

    invoke-virtual {v2, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v9, v0

    .line 378
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_default_artwork:I

    .line 379
    invoke-virtual {v2, v0, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    move v10, v0

    .line 380
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_use_controller:I

    invoke-virtual {v2, v0, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v11, v0

    .line 381
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_surface_type:I

    invoke-virtual {v2, v0, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move v12, v0

    .line 382
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_resize_mode:I

    invoke-virtual {v2, v0, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move v13, v0

    .line 383
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_show_timeout:I

    .line 384
    invoke-virtual {v2, v0, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move v14, v0

    .line 385
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_hide_on_touch:I

    .line 386
    invoke-virtual {v2, v0, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v15, v0

    .line 387
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_auto_show:I

    invoke-virtual {v2, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v6, v0

    .line 388
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_show_buffering:I

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0
    :try_end_c4
    .catchall {:try_start_78 .. :try_end_c4} :catchall_104

    move v4, v0

    .line 389
    :try_start_c5
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_keep_content_on_player_reset:I
    :try_end_c7
    .catchall {:try_start_c5 .. :try_end_c7} :catchall_fa

    move/from16 v17, v1

    move/from16 v20, v4

    move-object/from16 v1, p0

    .end local v1    # "shutterColorSet":Z
    .end local v4    # "showBuffering":I
    .restart local v17    # "shutterColorSet":Z
    .local v20, "showBuffering":I
    :try_start_cd
    iget-boolean v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->keepContentOnPlayerReset:Z

    .line 390
    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->keepContentOnPlayerReset:Z

    .line 392
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_hide_during_ads:I
    :try_end_d7
    .catchall {:try_start_cd .. :try_end_d7} :catchall_f6

    .line 393
    move/from16 v4, v19

    .end local v19    # "controllerHideDuringAds":Z
    .local v4, "controllerHideDuringAds":Z
    :try_start_d9
    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0
    :try_end_dd
    .catchall {:try_start_d9 .. :try_end_dd} :catchall_f0

    .line 395
    .end local v4    # "controllerHideDuringAds":Z
    .local v0, "controllerHideDuringAds":Z
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 396
    move v5, v15

    move/from16 v4, v17

    move/from16 v2, v20

    move v15, v14

    move v14, v13

    move v13, v12

    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v0

    goto :goto_12e

    .line 395
    .end local v0    # "controllerHideDuringAds":Z
    .restart local v4    # "controllerHideDuringAds":Z
    :catchall_f0
    move-exception v0

    move/from16 v19, v4

    move/from16 v4, v17

    goto :goto_115

    .end local v4    # "controllerHideDuringAds":Z
    .restart local v19    # "controllerHideDuringAds":Z
    :catchall_f6
    move-exception v0

    move/from16 v4, v17

    .end local v19    # "controllerHideDuringAds":Z
    .restart local v4    # "controllerHideDuringAds":Z
    goto :goto_115

    .end local v17    # "shutterColorSet":Z
    .end local v20    # "showBuffering":I
    .restart local v1    # "shutterColorSet":Z
    .local v4, "showBuffering":I
    .restart local v19    # "controllerHideDuringAds":Z
    :catchall_fa
    move-exception v0

    move/from16 v17, v1

    move/from16 v20, v4

    move-object/from16 v1, p0

    move/from16 v4, v17

    .end local v1    # "shutterColorSet":Z
    .end local v19    # "controllerHideDuringAds":Z
    .local v4, "controllerHideDuringAds":Z
    .restart local v17    # "shutterColorSet":Z
    .restart local v20    # "showBuffering":I
    goto :goto_115

    .end local v17    # "shutterColorSet":Z
    .end local v20    # "showBuffering":I
    .restart local v1    # "shutterColorSet":Z
    .local v4, "showBuffering":I
    .restart local v19    # "controllerHideDuringAds":Z
    :catchall_104
    move-exception v0

    move/from16 v17, v1

    move-object/from16 v1, p0

    move/from16 v20, v4

    move/from16 v4, v17

    .end local v1    # "shutterColorSet":Z
    .restart local v17    # "shutterColorSet":Z
    goto :goto_115

    :catchall_10e
    move-exception v0

    move-object/from16 v1, p0

    move/from16 v20, v4

    move/from16 v4, v17

    .end local v17    # "shutterColorSet":Z
    .local v4, "shutterColorSet":Z
    .restart local v20    # "showBuffering":I
    :goto_115
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 396
    throw v0

    .line 367
    .end local v2    # "a":Landroid/content/res/TypedArray;
    .end local v19    # "controllerHideDuringAds":Z
    .end local v20    # "showBuffering":I
    .local v4, "showBuffering":I
    .restart local v5    # "controllerHideDuringAds":Z
    .restart local v17    # "shutterColorSet":Z
    :cond_119
    move-object/from16 v18, v0

    move/from16 v19, v5

    move/from16 v5, p3

    .end local v5    # "controllerHideDuringAds":Z
    .restart local v19    # "controllerHideDuringAds":Z
    move v2, v4

    move v5, v15

    move/from16 v4, v17

    move v15, v14

    move v14, v13

    move v13, v12

    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v7

    move v7, v6

    move/from16 v6, v19

    .line 399
    .end local v17    # "shutterColorSet":Z
    .end local v19    # "controllerHideDuringAds":Z
    .local v2, "showBuffering":I
    .local v4, "shutterColorSet":Z
    .local v5, "controllerHideOnTouch":Z
    .local v6, "controllerHideDuringAds":Z
    .local v7, "controllerAutoShow":Z
    .local v8, "shutterColor":I
    .local v9, "playerLayoutId":I
    .local v10, "useArtwork":Z
    .local v11, "defaultArtworkId":I
    .local v12, "useController":Z
    .local v13, "surfaceType":I
    .local v14, "resizeMode":I
    .local v15, "controllerShowTimeoutMs":I
    :goto_12e
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v9, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 400
    const/high16 v0, 0x40000

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setDescendantFocusability(I)V

    .line 403
    sget v0, Lcom/google/android/exoplayer2/ui/R$id;->exo_content_frame:I

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 404
    if-eqz v0, :cond_149

    .line 405
    invoke-static {v0, v14}, Lcom/google/android/exoplayer2/ui/PlayerView;->setResizeModeRaw(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;I)V

    .line 409
    :cond_149
    move/from16 v17, v9

    .end local v9    # "playerLayoutId":I
    .local v17, "playerLayoutId":I
    sget v9, Lcom/google/android/exoplayer2/ui/R$id;->exo_shutter:I

    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->shutterView:Landroid/view/View;

    .line 410
    if-eqz v9, :cond_15a

    if-eqz v4, :cond_15a

    .line 411
    invoke-virtual {v9, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 415
    :cond_15a
    const/4 v9, 0x0

    .line 416
    .local v9, "surfaceViewIgnoresVideoAspectRatio":Z
    move/from16 v19, v4

    .end local v4    # "shutterColorSet":Z
    .local v19, "shutterColorSet":Z
    if-eqz v0, :cond_224

    if-eqz v13, :cond_224

    .line 417
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    move/from16 v21, v8

    .end local v8    # "shutterColor":I
    .local v21, "shutterColor":I
    const/4 v8, -0x1

    invoke-direct {v4, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 420
    .local v4, "params":Landroid/view/ViewGroup$LayoutParams;
    packed-switch v13, :pswitch_data_312

    .line 447
    move/from16 v22, v9

    move/from16 v23, v13

    move/from16 v24, v14

    move-object/from16 v13, p1

    .end local v9    # "surfaceViewIgnoresVideoAspectRatio":Z
    .end local v13    # "surfaceType":I
    .end local v14    # "resizeMode":I
    .local v22, "surfaceViewIgnoresVideoAspectRatio":Z
    .local v23, "surfaceType":I
    .local v24, "resizeMode":I
    new-instance v8, Landroid/view/SurfaceView;

    invoke-direct {v8, v13}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v8, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    goto/16 :goto_208

    .line 438
    .end local v22    # "surfaceViewIgnoresVideoAspectRatio":Z
    .end local v23    # "surfaceType":I
    .end local v24    # "resizeMode":I
    .restart local v9    # "surfaceViewIgnoresVideoAspectRatio":Z
    .restart local v13    # "surfaceType":I
    .restart local v14    # "resizeMode":I
    :pswitch_17d
    :try_start_17d
    const-string v8, "com.google.android.exoplayer2.video.VideoDecoderGLSurfaceView"

    .line 439
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8
    :try_end_183
    .catch Ljava/lang/Exception; {:try_start_17d .. :try_end_183} :catch_1ae

    .line 440
    .local v8, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move/from16 v22, v9

    move/from16 v23, v13

    const/4 v9, 0x1

    .end local v9    # "surfaceViewIgnoresVideoAspectRatio":Z
    .end local v13    # "surfaceType":I
    .restart local v22    # "surfaceViewIgnoresVideoAspectRatio":Z
    .restart local v23    # "surfaceType":I
    :try_start_188
    new-array v13, v9, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    const/16 v16, 0x0

    aput-object v9, v13, v16

    invoke-virtual {v8, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    move-object/from16 v24, v8

    const/4 v13, 0x1

    .end local v8    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v24, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v8, v13, [Ljava/lang/Object;
    :try_end_199
    .catch Ljava/lang/Exception; {:try_start_188 .. :try_end_199} :catch_1aa

    move-object/from16 v13, p1

    :try_start_19b
    aput-object v13, v8, v16

    invoke-virtual {v9, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    iput-object v8, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;
    :try_end_1a5
    .catch Ljava/lang/Exception; {:try_start_19b .. :try_end_1a5} :catch_1a8

    .line 444
    .end local v24    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move/from16 v24, v14

    goto :goto_208

    .line 441
    :catch_1a8
    move-exception v0

    goto :goto_1b5

    :catch_1aa
    move-exception v0

    move-object/from16 v13, p1

    goto :goto_1b5

    .end local v22    # "surfaceViewIgnoresVideoAspectRatio":Z
    .end local v23    # "surfaceType":I
    .restart local v9    # "surfaceViewIgnoresVideoAspectRatio":Z
    .restart local v13    # "surfaceType":I
    :catch_1ae
    move-exception v0

    move/from16 v22, v9

    move/from16 v23, v13

    move-object/from16 v13, p1

    .line 442
    .end local v9    # "surfaceViewIgnoresVideoAspectRatio":Z
    .end local v13    # "surfaceType":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v22    # "surfaceViewIgnoresVideoAspectRatio":Z
    .restart local v23    # "surfaceType":I
    :goto_1b5
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "video_decoder_gl_surface_view requires an ExoPlayer dependency"

    invoke-direct {v8, v9, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 426
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v22    # "surfaceViewIgnoresVideoAspectRatio":Z
    .end local v23    # "surfaceType":I
    .restart local v9    # "surfaceViewIgnoresVideoAspectRatio":Z
    .restart local v13    # "surfaceType":I
    :pswitch_1bd
    move/from16 v22, v9

    move/from16 v23, v13

    move-object/from16 v13, p1

    .end local v9    # "surfaceViewIgnoresVideoAspectRatio":Z
    .end local v13    # "surfaceType":I
    .restart local v22    # "surfaceViewIgnoresVideoAspectRatio":Z
    .restart local v23    # "surfaceType":I
    :try_start_1c3
    const-string v8, "com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView"

    .line 427
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8
    :try_end_1c9
    .catch Ljava/lang/Exception; {:try_start_1c3 .. :try_end_1c9} :catch_1ed

    .line 429
    .restart local v8    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move/from16 v24, v14

    const/4 v9, 0x1

    .end local v14    # "resizeMode":I
    .local v24, "resizeMode":I
    :try_start_1cc
    new-array v14, v9, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    const/16 v16, 0x0

    aput-object v9, v14, v16

    invoke-virtual {v8, v14}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    move-object/from16 v25, v8

    const/4 v14, 0x1

    .end local v8    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v25, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v8, v14, [Ljava/lang/Object;

    aput-object v13, v8, v16

    invoke-virtual {v9, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    iput-object v8, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;
    :try_end_1e7
    .catch Ljava/lang/Exception; {:try_start_1cc .. :try_end_1e7} :catch_1eb

    .line 433
    .end local v25    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 434
    const/4 v8, 0x1

    .line 435
    .end local v22    # "surfaceViewIgnoresVideoAspectRatio":Z
    .local v8, "surfaceViewIgnoresVideoAspectRatio":Z
    move v9, v8

    goto :goto_20a

    .line 430
    .end local v8    # "surfaceViewIgnoresVideoAspectRatio":Z
    .restart local v22    # "surfaceViewIgnoresVideoAspectRatio":Z
    :catch_1eb
    move-exception v0

    goto :goto_1f0

    .end local v24    # "resizeMode":I
    .restart local v14    # "resizeMode":I
    :catch_1ed
    move-exception v0

    move/from16 v24, v14

    .line 431
    .end local v14    # "resizeMode":I
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v24    # "resizeMode":I
    :goto_1f0
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "spherical_gl_surface_view requires an ExoPlayer dependency"

    invoke-direct {v8, v9, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 422
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v22    # "surfaceViewIgnoresVideoAspectRatio":Z
    .end local v23    # "surfaceType":I
    .end local v24    # "resizeMode":I
    .restart local v9    # "surfaceViewIgnoresVideoAspectRatio":Z
    .restart local v13    # "surfaceType":I
    .restart local v14    # "resizeMode":I
    :pswitch_1f8
    move/from16 v22, v9

    move/from16 v23, v13

    move/from16 v24, v14

    move-object/from16 v13, p1

    .end local v9    # "surfaceViewIgnoresVideoAspectRatio":Z
    .end local v13    # "surfaceType":I
    .end local v14    # "resizeMode":I
    .restart local v22    # "surfaceViewIgnoresVideoAspectRatio":Z
    .restart local v23    # "surfaceType":I
    .restart local v24    # "resizeMode":I
    new-instance v8, Landroid/view/TextureView;

    invoke-direct {v8, v13}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v8, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    .line 423
    nop

    .line 450
    :goto_208
    move/from16 v9, v22

    .end local v22    # "surfaceViewIgnoresVideoAspectRatio":Z
    .restart local v9    # "surfaceViewIgnoresVideoAspectRatio":Z
    :goto_20a
    iget-object v8, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    invoke-virtual {v8, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    iget-object v8, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    move-object/from16 v14, v18

    invoke-virtual {v8, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    iget-object v8, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    move-object/from16 v18, v4

    const/4 v4, 0x0

    .end local v4    # "params":Landroid/view/ViewGroup$LayoutParams;
    .local v18, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v8, v4}, Landroid/view/View;->setClickable(Z)V

    .line 456
    iget-object v8, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    invoke-virtual {v0, v8, v4}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->addView(Landroid/view/View;I)V

    .line 457
    .end local v18    # "params":Landroid/view/ViewGroup$LayoutParams;
    goto :goto_235

    .line 416
    .end local v21    # "shutterColor":I
    .end local v23    # "surfaceType":I
    .end local v24    # "resizeMode":I
    .local v8, "shutterColor":I
    .restart local v13    # "surfaceType":I
    .restart local v14    # "resizeMode":I
    :cond_224
    move/from16 v21, v8

    move/from16 v22, v9

    move/from16 v23, v13

    move/from16 v24, v14

    move-object/from16 v14, v18

    move-object/from16 v13, p1

    .line 458
    .end local v8    # "shutterColor":I
    .end local v9    # "surfaceViewIgnoresVideoAspectRatio":Z
    .end local v13    # "surfaceType":I
    .end local v14    # "resizeMode":I
    .restart local v21    # "shutterColor":I
    .restart local v22    # "surfaceViewIgnoresVideoAspectRatio":Z
    .restart local v23    # "surfaceType":I
    .restart local v24    # "resizeMode":I
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    move/from16 v9, v22

    .line 460
    .end local v22    # "surfaceViewIgnoresVideoAspectRatio":Z
    .restart local v9    # "surfaceViewIgnoresVideoAspectRatio":Z
    :goto_235
    iput-boolean v9, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceViewIgnoresVideoAspectRatio:Z

    .line 463
    sget v0, Lcom/google/android/exoplayer2/ui/R$id;->exo_ad_overlay:I

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->adOverlayFrameLayout:Landroid/widget/FrameLayout;

    .line 466
    sget v0, Lcom/google/android/exoplayer2/ui/R$id;->exo_overlay:I

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    .line 469
    sget v0, Lcom/google/android/exoplayer2/ui/R$id;->exo_artwork:I

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    .line 470
    if-eqz v10, :cond_25b

    if-eqz v0, :cond_25b

    const/4 v0, 0x1

    goto :goto_25c

    :cond_25b
    const/4 v0, 0x0

    :goto_25c
    iput-boolean v0, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->useArtwork:Z

    .line 471
    if-eqz v11, :cond_26a

    .line 472
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v11}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    .line 476
    :cond_26a
    sget v0, Lcom/google/android/exoplayer2/ui/R$id;->exo_subtitles:I

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/SubtitleView;

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    .line 477
    if-eqz v0, :cond_27c

    .line 478
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setUserDefaultStyle()V

    .line 479
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setUserDefaultTextSize()V

    .line 483
    :cond_27c
    sget v0, Lcom/google/android/exoplayer2/ui/R$id;->exo_buffering:I

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->bufferingView:Landroid/view/View;

    .line 484
    const/16 v4, 0x8

    if-eqz v0, :cond_28b

    .line 485
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 487
    :cond_28b
    iput v2, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->showBuffering:I

    .line 490
    sget v0, Lcom/google/android/exoplayer2/ui/R$id;->exo_error_message:I

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    .line 491
    if-eqz v0, :cond_29c

    .line 492
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 496
    :cond_29c
    sget v0, Lcom/google/android/exoplayer2/ui/R$id;->exo_controller:I

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 497
    .local v0, "customController":Lcom/google/android/exoplayer2/ui/PlayerControlView;
    sget v4, Lcom/google/android/exoplayer2/ui/R$id;->exo_controller_placeholder:I

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 498
    .local v4, "controllerPlaceholder":Landroid/view/View;
    if-eqz v0, :cond_2b3

    .line 499
    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    move-object/from16 v18, v0

    move/from16 v16, v2

    goto :goto_2e6

    .line 500
    :cond_2b3
    if-eqz v4, :cond_2df

    .line 503
    new-instance v8, Lcom/google/android/exoplayer2/ui/PlayerControlView;

    move-object/from16 v18, v0

    move/from16 v16, v2

    const/4 v0, 0x0

    const/4 v2, 0x0

    .end local v0    # "customController":Lcom/google/android/exoplayer2/ui/PlayerControlView;
    .end local v2    # "showBuffering":I
    .local v16, "showBuffering":I
    .local v18, "customController":Lcom/google/android/exoplayer2/ui/PlayerControlView;
    invoke-direct {v8, v13, v2, v0, v3}, Lcom/google/android/exoplayer2/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    iput-object v8, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 504
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_controller:I

    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setId(I)V

    .line 505
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 506
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 507
    .local v2, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 508
    .local v0, "controllerIndex":I
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 509
    invoke-virtual {v2, v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 510
    .end local v0    # "controllerIndex":I
    .end local v2    # "parent":Landroid/view/ViewGroup;
    goto :goto_2e6

    .line 511
    .end local v16    # "showBuffering":I
    .end local v18    # "customController":Lcom/google/android/exoplayer2/ui/PlayerControlView;
    .local v0, "customController":Lcom/google/android/exoplayer2/ui/PlayerControlView;
    .local v2, "showBuffering":I
    :cond_2df
    move-object/from16 v18, v0

    move/from16 v16, v2

    .end local v0    # "customController":Lcom/google/android/exoplayer2/ui/PlayerControlView;
    .end local v2    # "showBuffering":I
    .restart local v16    # "showBuffering":I
    .restart local v18    # "customController":Lcom/google/android/exoplayer2/ui/PlayerControlView;
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 513
    :goto_2e6
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_2ec

    move v2, v15

    goto :goto_2ed

    :cond_2ec
    const/4 v2, 0x0

    :goto_2ed
    iput v2, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerShowTimeoutMs:I

    .line 514
    iput-boolean v5, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerHideOnTouch:Z

    .line 515
    iput-boolean v7, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerAutoShow:Z

    .line 516
    iput-boolean v6, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerHideDuringAds:Z

    .line 517
    if-eqz v12, :cond_2fb

    if-eqz v0, :cond_2fb

    const/4 v2, 0x1

    goto :goto_2fc

    :cond_2fb
    const/4 v2, 0x0

    :goto_2fc
    iput-boolean v2, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->useController:Z

    .line 518
    if-eqz v0, :cond_308

    .line 519
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hide()V

    .line 520
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->addVisibilityListener(Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;)V

    .line 522
    :cond_308
    if-eqz v12, :cond_30e

    .line 523
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setClickable(Z)V

    .line 525
    :cond_30e
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateContentDescription()V

    .line 526
    return-void

    :pswitch_data_312
    .packed-switch 0x2
        :pswitch_1f8
        :pswitch_1bd
        :pswitch_17d
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/ui/PlayerView;)Lcom/google/android/exoplayer2/ui/SubtitleView;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 259
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/ui/PlayerView;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 259
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateAspectRatio()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/exoplayer2/ui/PlayerView;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 259
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->textureViewRotation:I

    return v0
.end method

.method static synthetic access$1100(Landroid/view/TextureView;I)V
    .registers 2
    .param p0, "x0"    # Landroid/view/TextureView;
    .param p1, "x1"    # I

    .line 259
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->applyTextureViewRotation(Landroid/view/TextureView;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/exoplayer2/ui/PlayerView;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 259
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->toggleControllerVisibility()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/exoplayer2/ui/PlayerView;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 259
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateContentDescription()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/ui/PlayerView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 259
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->shutterView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/ui/PlayerView;)Lcom/google/android/exoplayer2/Player;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 259
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/ui/PlayerView;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlayerView;
    .param p1, "x1"    # Z

    .line 259
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateForCurrentTrackSelections(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/ui/PlayerView;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 259
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateBuffering()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/ui/PlayerView;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 259
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateErrorMessage()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/ui/PlayerView;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 259
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateControllerVisibility()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/ui/PlayerView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 259
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->isPlayingAd()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/ui/PlayerView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 259
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerHideDuringAds:Z

    return v0
.end method

.method private static applyTextureViewRotation(Landroid/view/TextureView;I)V
    .registers 11
    .param p0, "textureView"    # Landroid/view/TextureView;
    .param p1, "textureViewRotation"    # I

    .line 1410
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1411
    .local v0, "transformMatrix":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 1412
    .local v1, "textureViewWidth":F
    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 1413
    .local v2, "textureViewHeight":F
    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-eqz v4, :cond_42

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_42

    if-eqz p1, :cond_42

    .line 1414
    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v1, v4

    .line 1415
    .local v5, "pivotX":F
    div-float v4, v2, v4

    .line 1416
    .local v4, "pivotY":F
    int-to-float v6, p1

    invoke-virtual {v0, v6, v5, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1419
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v3, v6

    .line 1420
    .local v3, "originalTextureRect":Landroid/graphics/RectF;
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 1421
    .local v6, "rotatedTextureRect":Landroid/graphics/RectF;
    invoke-virtual {v0, v6, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1422
    nop

    .line 1423
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float v7, v1, v7

    .line 1424
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float v8, v2, v8

    .line 1422
    invoke-virtual {v0, v7, v8, v5, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1428
    .end local v3    # "originalTextureRect":Landroid/graphics/RectF;
    .end local v4    # "pivotY":F
    .end local v5    # "pivotX":F
    .end local v6    # "rotatedTextureRect":Landroid/graphics/RectF;
    :cond_42
    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 1429
    return-void
.end method

.method private closeShutter()V
    .registers 3

    .line 1335
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->shutterView:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 1336
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1338
    :cond_8
    return-void
.end method

.method private static configureEditModeLogo(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/ImageView;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "logo"    # Landroid/widget/ImageView;

    .line 1399
    sget v0, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_edit_mode_logo:I

    invoke-static {p0, p1, v0}, Lcom/google/android/exoplayer2/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1400
    sget v0, Lcom/google/android/exoplayer2/ui/R$color;->exo_edit_mode_background_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 1401
    return-void
.end method

.method private static configureEditModeLogoV23(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/ImageView;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "logo"    # Landroid/widget/ImageView;

    .line 1394
    sget v0, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_edit_mode_logo:I

    invoke-static {p0, p1, v0}, Lcom/google/android/exoplayer2/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1395
    sget v0, Lcom/google/android/exoplayer2/ui/R$color;->exo_edit_mode_background_color:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 1396
    return-void
.end method

.method private hideArtwork()V
    .registers 3

    .line 1328
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    if-eqz v0, :cond_10

    .line 1329
    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1330
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1332
    :cond_10
    return-void
.end method

.method private isDpadKey(I)Z
    .registers 3
    .param p1, "keyCode"    # I

    .line 1433
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
    .registers 2

    .line 1227
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private maybeShowController(Z)V
    .registers 4
    .param p1, "isForced"    # Z

    .line 1195
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerHideDuringAds:Z

    if-eqz v0, :cond_b

    .line 1196
    return-void

    .line 1198
    :cond_b
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->useController()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1199
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->getShowTimeoutMs()I

    move-result v0

    if-gtz v0, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    .line 1200
    .local v0, "wasShowingIndefinitely":Z
    :goto_24
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->shouldShowControllerIndefinitely()Z

    move-result v1

    .line 1201
    .local v1, "shouldShowIndefinitely":Z
    if-nez p1, :cond_2e

    if-nez v0, :cond_2e

    if-eqz v1, :cond_31

    .line 1202
    :cond_2e
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->showController(Z)V

    .line 1205
    .end local v0    # "wasShowingIndefinitely":Z
    .end local v1    # "shouldShowIndefinitely":Z
    :cond_31
    return-void
.end method

.method private setArtworkFromMediaMetadata(Lcom/google/android/exoplayer2/MediaMetadata;)Z
    .registers 5
    .param p1, "mediaMetadata"    # Lcom/google/android/exoplayer2/MediaMetadata;
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "artworkView"
        }
    .end annotation

    .line 1302
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->artworkData:[B

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1303
    return v1

    .line 1305
    :cond_6
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->artworkData:[B

    iget-object v2, p1, Lcom/google/android/exoplayer2/MediaMetadata;->artworkData:[B

    array-length v2, v2

    .line 1306
    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1308
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setDrawableArtwork(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    return v1
.end method

.method private setDrawableArtwork(Landroid/graphics/drawable/Drawable;)Z
    .registers 7
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "artworkView"
        }
    .end annotation

    .line 1313
    const/4 v0, 0x0

    if-eqz p1, :cond_23

    .line 1314
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 1315
    .local v1, "drawableWidth":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 1316
    .local v2, "drawableHeight":I
    if-lez v1, :cond_23

    if-lez v2, :cond_23

    .line 1317
    int-to-float v3, v1

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 1318
    .local v3, "artworkAspectRatio":F
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {p0, v4, v3}, Lcom/google/android/exoplayer2/ui/PlayerView;->onContentAspectRatioChanged(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;F)V

    .line 1319
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1320
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1321
    const/4 v0, 0x1

    return v0

    .line 1324
    .end local v1    # "drawableWidth":I
    .end local v2    # "drawableHeight":I
    .end local v3    # "artworkAspectRatio":F
    :cond_23
    return v0
.end method

.method private static setResizeModeRaw(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;I)V
    .registers 2
    .param p0, "aspectRatioFrame"    # Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
    .param p1, "resizeMode"    # I

    .line 1405
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    .line 1406
    return-void
.end method

.method private shouldShowControllerIndefinitely()Z
    .registers 4

    .line 1208
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 1209
    return v1

    .line 1211
    :cond_6
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    .line 1212
    .local v0, "playbackState":I
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerAutoShow:Z

    if-eqz v2, :cond_1c

    if-eq v0, v1, :cond_1b

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1b

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    .line 1215
    invoke-interface {v2}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v2

    if-nez v2, :cond_1c

    :cond_1b
    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    .line 1212
    :goto_1d
    return v1
.end method

.method private showController(Z)V
    .registers 4
    .param p1, "showIndefinitely"    # Z

    .line 1219
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->useController()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1220
    return-void

    .line 1222
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz p1, :cond_d

    const/4 v1, 0x0

    goto :goto_f

    :cond_d
    iget v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerShowTimeoutMs:I

    :goto_f
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setShowTimeoutMs(I)V

    .line 1223
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->show()V

    .line 1224
    return-void
.end method

.method public static switchTargetView(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/ui/PlayerView;Lcom/google/android/exoplayer2/ui/PlayerView;)V
    .registers 4
    .param p0, "player"    # Lcom/google/android/exoplayer2/Player;
    .param p1, "oldPlayerView"    # Lcom/google/android/exoplayer2/ui/PlayerView;
    .param p2, "newPlayerView"    # Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 537
    if-ne p1, p2, :cond_3

    .line 538
    return-void

    .line 544
    :cond_3
    if-eqz p2, :cond_8

    .line 545
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 547
    :cond_8
    if-eqz p1, :cond_e

    .line 548
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 550
    :cond_e
    return-void
.end method

.method private toggleControllerVisibility()V
    .registers 2

    .line 1183
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->useController()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-nez v0, :cond_b

    goto :goto_22

    .line 1186
    :cond_b
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1187
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->maybeShowController(Z)V

    goto :goto_21

    .line 1188
    :cond_18
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerHideOnTouch:Z

    if-eqz v0, :cond_21

    .line 1189
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hide()V

    .line 1191
    :cond_21
    :goto_21
    return-void

    .line 1184
    :cond_22
    :goto_22
    return-void
.end method

.method private updateAspectRatio()V
    .registers 9

    .line 1269
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getVideoSize()Lcom/google/android/exoplayer2/video/VideoSize;

    move-result-object v0

    goto :goto_b

    :cond_9
    sget-object v0, Lcom/google/android/exoplayer2/video/VideoSize;->UNKNOWN:Lcom/google/android/exoplayer2/video/VideoSize;

    .line 1270
    .local v0, "videoSize":Lcom/google/android/exoplayer2/video/VideoSize;
    :goto_b
    iget v1, v0, Lcom/google/android/exoplayer2/video/VideoSize;->width:I

    .line 1271
    .local v1, "width":I
    iget v2, v0, Lcom/google/android/exoplayer2/video/VideoSize;->height:I

    .line 1272
    .local v2, "height":I
    iget v3, v0, Lcom/google/android/exoplayer2/video/VideoSize;->unappliedRotationDegrees:I

    .line 1274
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

    .line 1276
    .local v5, "videoAspectRatio":F
    :goto_20
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    instance-of v7, v6, Landroid/view/TextureView;

    if-eqz v7, :cond_53

    .line 1278
    cmpl-float v7, v5, v4

    if-lez v7, :cond_36

    const/16 v7, 0x5a

    if-eq v3, v7, :cond_32

    const/16 v7, 0x10e

    if-ne v3, v7, :cond_36

    .line 1282
    :cond_32
    const/high16 v7, 0x3f800000    # 1.0f

    div-float/2addr v7, v5

    move v5, v7

    .line 1284
    :cond_36
    iget v7, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->textureViewRotation:I

    if-eqz v7, :cond_3f

    .line 1285
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1287
    :cond_3f
    iput v3, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->textureViewRotation:I

    .line 1288
    if-eqz v3, :cond_4a

    .line 1291
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1293
    :cond_4a
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    check-cast v6, Landroid/view/TextureView;

    iget v7, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->textureViewRotation:I

    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/ui/PlayerView;->applyTextureViewRotation(Landroid/view/TextureView;I)V

    .line 1296
    :cond_53
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 1297
    iget-boolean v7, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceViewIgnoresVideoAspectRatio:Z

    if-eqz v7, :cond_5a

    goto :goto_5b

    :cond_5a
    move v4, v5

    .line 1296
    :goto_5b
    invoke-virtual {p0, v6, v4}, Lcom/google/android/exoplayer2/ui/PlayerView;->onContentAspectRatioChanged(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;F)V

    .line 1298
    return-void
.end method

.method private updateBuffering()V
    .registers 5

    .line 1341
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->bufferingView:Landroid/view/View;

    if-eqz v0, :cond_2c

    .line 1342
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 1344
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_20

    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->showBuffering:I

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1f

    if-ne v0, v3, :cond_20

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    .line 1346
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1f
    goto :goto_21

    :cond_20
    const/4 v3, 0x0

    :goto_21
    move v0, v3

    .line 1347
    .local v0, "showBufferingSpinner":Z
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->bufferingView:Landroid/view/View;

    if-eqz v0, :cond_27

    goto :goto_29

    :cond_27
    const/16 v1, 0x8

    :goto_29
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1349
    .end local v0    # "showBufferingSpinner":Z
    :cond_2c
    return-void
.end method

.method private updateContentDescription()V
    .registers 4

    .line 1370
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->useController:Z

    if-nez v2, :cond_a

    goto :goto_34

    .line 1372
    :cond_a
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_25

    .line 1373
    nop

    .line 1374
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerHideOnTouch:Z

    if-eqz v0, :cond_20

    .line 1375
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_hide:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_21

    .line 1376
    :cond_20
    nop

    .line 1373
    :goto_21
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_37

    .line 1378
    :cond_25
    nop

    .line 1379
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_show:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1378
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_37

    .line 1371
    :cond_34
    :goto_34
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1381
    :goto_37
    return-void
.end method

.method private updateControllerVisibility()V
    .registers 2

    .line 1384
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerHideDuringAds:Z

    if-eqz v0, :cond_e

    .line 1385
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->hideController()V

    goto :goto_12

    .line 1387
    :cond_e
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->maybeShowController(Z)V

    .line 1389
    :goto_12
    return-void
.end method

.method private updateErrorMessage()V
    .registers 5

    .line 1352
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_3c

    .line 1353
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->customErrorMessage:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    .line 1354
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1355
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1356
    return-void

    .line 1358
    :cond_12
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayerError()Lcom/google/android/exoplayer2/PlaybackException;

    move-result-object v0

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    .line 1359
    .local v0, "error":Lcom/google/android/exoplayer2/PlaybackException;
    :goto_1c
    if-eqz v0, :cond_35

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageProvider:Lcom/google/android/exoplayer2/util/ErrorMessageProvider;

    if-eqz v1, :cond_35

    .line 1360
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/util/ErrorMessageProvider;->getErrorMessage(Ljava/lang/Throwable;)Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    .line 1361
    .local v1, "errorMessage":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1362
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1363
    .end local v1    # "errorMessage":Ljava/lang/CharSequence;
    goto :goto_3c

    .line 1364
    :cond_35
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1367
    .end local v0    # "error":Lcom/google/android/exoplayer2/PlaybackException;
    :cond_3c
    :goto_3c
    return-void
.end method

.method private updateForCurrentTrackSelections(Z)V
    .registers 5
    .param p1, "isNewPlayer"    # Z

    .line 1231
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    .line 1232
    .local v0, "player":Lcom/google/android/exoplayer2/Player;
    if-eqz v0, :cond_50

    .line 1233
    const/16 v1, 0x1e

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 1234
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentTracks()Lcom/google/android/exoplayer2/Tracks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Tracks;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_50

    .line 1242
    :cond_17
    if-eqz p1, :cond_20

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->keepContentOnPlayerReset:Z

    if-nez v1, :cond_20

    .line 1244
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->closeShutter()V

    .line 1246
    :cond_20
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentTracks()Lcom/google/android/exoplayer2/Tracks;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Tracks;->isTypeSelected(I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1249
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->hideArtwork()V

    .line 1250
    return-void

    .line 1254
    :cond_2f
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->closeShutter()V

    .line 1256
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->useArtwork()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 1257
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getMediaMetadata()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setArtworkFromMediaMetadata(Lcom/google/android/exoplayer2/MediaMetadata;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 1258
    return-void

    .line 1260
    :cond_43
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setDrawableArtwork(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 1261
    return-void

    .line 1265
    :cond_4c
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->hideArtwork()V

    .line 1266
    return-void

    .line 1235
    :cond_50
    :goto_50
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->keepContentOnPlayerReset:Z

    if-nez v1, :cond_5a

    .line 1236
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->hideArtwork()V

    .line 1237
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->closeShutter()V

    .line 1239
    :cond_5a
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

    .line 1175
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->useArtwork:Z

    if-eqz v0, :cond_b

    .line 1176
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1177
    const/4 v0, 0x1

    return v0

    .line 1179
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

    .line 1166
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->useController:Z

    if-eqz v0, :cond_b

    .line 1167
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1168
    const/4 v0, 0x1

    return v0

    .line 1170
    :cond_b
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 789
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 790
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 793
    :cond_f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->isDpadKey(I)Z

    move-result v0

    .line 794
    .local v0, "isDpadKey":Z
    const/4 v1, 0x0

    .line 795
    .local v1, "handled":Z
    const/4 v2, 0x1

    if-eqz v0, :cond_2e

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->useController()Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

    move-result v3

    if-nez v3, :cond_2e

    .line 797
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->maybeShowController(Z)V

    .line 798
    const/4 v1, 0x1

    goto :goto_4b

    .line 799
    :cond_2e
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-nez v3, :cond_47

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_3b

    goto :goto_47

    .line 804
    :cond_3b
    if-eqz v0, :cond_4b

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->useController()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 806
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->maybeShowController(Z)V

    goto :goto_4b

    .line 802
    :cond_47
    :goto_47
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->maybeShowController(Z)V

    .line 803
    const/4 v1, 0x1

    .line 808
    :cond_4b
    :goto_4b
    return v1
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 819
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->useController()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z

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

    .line 1148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1149
    .local v0, "overlayViews":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/ui/AdOverlayInfo;>;"
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_14

    .line 1150
    new-instance v2, Lcom/google/android/exoplayer2/ui/AdOverlayInfo;

    const/4 v3, 0x4

    const-string v4, "Transparent overlay does not impact viewability"

    invoke-direct {v2, v1, v3, v4}, Lcom/google/android/exoplayer2/ui/AdOverlayInfo;-><init>(Landroid/view/View;ILjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1156
    :cond_14
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v1, :cond_21

    .line 1157
    new-instance v2, Lcom/google/android/exoplayer2/ui/AdOverlayInfo;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/google/android/exoplayer2/ui/AdOverlayInfo;-><init>(Landroid/view/View;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1159
    :cond_21
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1
.end method

.method public getAdViewGroup()Landroid/view/ViewGroup;
    .registers 3

    .line 1142
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->adOverlayFrameLayout:Landroid/widget/FrameLayout;

    const-string v1, "exo_ad_overlay must be present for ad playback"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getControllerAutoShow()Z
    .registers 2

    .line 895
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerAutoShow:Z

    return v0
.end method

.method public getControllerHideOnTouch()Z
    .registers 2

    .line 875
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerHideOnTouch:Z

    return v0
.end method

.method public getControllerShowTimeoutMs()I
    .registers 2

    .line 854
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerShowTimeoutMs:I

    return v0
.end method

.method public getDefaultArtwork()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 664
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverlayFrameLayout()Landroid/widget/FrameLayout;
    .registers 2

    .line 1069
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPlayer()Lcom/google/android/exoplayer2/Player;
    .registers 2

    .line 555
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    return-object v0
.end method

.method public getResizeMode()I
    .registers 2

    .line 639
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->getResizeMode()I

    move-result v0

    return v0
.end method

.method public getSubtitleView()Lcom/google/android/exoplayer2/ui/SubtitleView;
    .registers 2

    .line 1080
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    return-object v0
.end method

.method public getUseArtwork()Z
    .registers 2

    .line 645
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->useArtwork:Z

    return v0
.end method

.method public getUseController()Z
    .registers 2

    .line 682
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->useController:Z

    return v0
.end method

.method public getVideoSurfaceView()Landroid/view/View;
    .registers 2

    .line 1057
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    return-object v0
.end method

.method public hideController()V
    .registers 2

    .line 840
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_7

    .line 841
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hide()V

    .line 843
    :cond_7
    return-void
.end method

.method public isControllerVisible()Z
    .registers 2

    .line 824
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

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

    .line 1133
    if-eqz p1, :cond_5

    .line 1134
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 1136
    :cond_5
    return-void
.end method

.method public onPause()V
    .registers 3

    .line 1119
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    instance-of v1, v0, Landroid/opengl/GLSurfaceView;

    if-eqz v1, :cond_b

    .line 1120
    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 1122
    :cond_b
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 1106
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    instance-of v1, v0, Landroid/opengl/GLSurfaceView;

    if-eqz v1, :cond_b

    .line 1107
    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 1109
    :cond_b
    return-void
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1091
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->useController()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-nez v0, :cond_b

    goto :goto_10

    .line 1094
    :cond_b
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->maybeShowController(Z)V

    .line 1095
    return v0

    .line 1092
    :cond_10
    :goto_10
    const/4 v0, 0x0

    return v0
.end method

.method public performClick()Z
    .registers 2

    .line 1085
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->toggleControllerVisibility()V

    .line 1086
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method public setAspectRatioListener(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioListener;

    .line 1034
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatioListener(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioListener;)V

    .line 1036
    return-void
.end method

.method public setControllerAutoShow(Z)V
    .registers 2
    .param p1, "controllerAutoShow"    # Z

    .line 906
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerAutoShow:Z

    .line 907
    return-void
.end method

.method public setControllerHideDuringAds(Z)V
    .registers 2
    .param p1, "controllerHideDuringAds"    # Z

    .line 916
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerHideDuringAds:Z

    .line 917
    return-void
.end method

.method public setControllerHideOnTouch(Z)V
    .registers 3
    .param p1, "controllerHideOnTouch"    # Z

    .line 884
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerHideOnTouch:Z

    .line 886
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateContentDescription()V

    .line 887
    return-void
.end method

.method public setControllerShowTimeoutMs(I)V
    .registers 3
    .param p1, "controllerShowTimeoutMs"    # I

    .line 865
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerShowTimeoutMs:I

    .line 867
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 869
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->showController()V

    .line 871
    :cond_12
    return-void
.end method

.method public setControllerVisibilityListener(Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;

    .line 927
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerVisibilityListener:Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;

    if-ne v0, p1, :cond_a

    .line 929
    return-void

    .line 931
    :cond_a
    if-eqz v0, :cond_11

    .line 932
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->removeVisibilityListener(Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;)V

    .line 934
    :cond_11
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerVisibilityListener:Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;

    .line 935
    if-eqz p1, :cond_1a

    .line 936
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->addVisibilityListener(Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;)V

    .line 938
    :cond_1a
    return-void
.end method

.method public setCustomErrorMessage(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 782
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 783
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->customErrorMessage:Ljava/lang/CharSequence;

    .line 784
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateErrorMessage()V

    .line 785
    return-void
.end method

.method public setDefaultArtwork(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "defaultArtwork"    # Landroid/graphics/drawable/Drawable;

    .line 674
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_a

    .line 675
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    .line 676
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateForCurrentTrackSelections(Z)V

    .line 678
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

    .line 769
    .local p1, "errorMessageProvider":Lcom/google/android/exoplayer2/util/ErrorMessageProvider;, "Lcom/google/android/exoplayer2/util/ErrorMessageProvider<-Lcom/google/android/exoplayer2/PlaybackException;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageProvider:Lcom/google/android/exoplayer2/util/ErrorMessageProvider;

    if-eq v0, p1, :cond_9

    .line 770
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageProvider:Lcom/google/android/exoplayer2/util/ErrorMessageProvider;

    .line 771
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateErrorMessage()V

    .line 773
    :cond_9
    return-void
.end method

.method public setExtraAdGroupMarkers([J[Z)V
    .registers 4
    .param p1, "extraAdGroupTimesMs"    # [J
    .param p2, "extraPlayedAdGroups"    # [Z

    .line 1022
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setExtraAdGroupMarkers([J[Z)V

    .line 1024
    return-void
.end method

.method public setKeepContentOnPlayerReset(Z)V
    .registers 3
    .param p1, "keepContentOnPlayerReset"    # Z

    .line 741
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->keepContentOnPlayerReset:Z

    if-eq v0, p1, :cond_a

    .line 742
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->keepContentOnPlayerReset:Z

    .line 743
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateForCurrentTrackSelections(Z)V

    .line 745
    :cond_a
    return-void
.end method

.method public setPlayer(Lcom/google/android/exoplayer2/Player;)V
    .registers 8
    .param p1, "player"    # Lcom/google/android/exoplayer2/Player;

    .line 572
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

    .line 573
    if-eqz p1, :cond_21

    .line 574
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

    .line 573
    :goto_22
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 575
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-ne v0, p1, :cond_2a

    .line 576
    return-void

    .line 578
    :cond_2a
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    .line 579
    .local v0, "oldPlayer":Lcom/google/android/exoplayer2/Player;
    const/16 v1, 0x1b

    if-eqz v0, :cond_50

    .line 580
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/Player;->removeListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 581
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 582
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    instance-of v5, v4, Landroid/view/TextureView;

    if-eqz v5, :cond_47

    .line 583
    check-cast v4, Landroid/view/TextureView;

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/Player;->clearVideoTextureView(Landroid/view/TextureView;)V

    goto :goto_50

    .line 584
    :cond_47
    instance-of v5, v4, Landroid/view/SurfaceView;

    if-eqz v5, :cond_50

    .line 585
    check-cast v4, Landroid/view/SurfaceView;

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/Player;->clearVideoSurfaceView(Landroid/view/SurfaceView;)V

    .line 589
    :cond_50
    :goto_50
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    if-eqz v4, :cond_58

    .line 590
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    .line 592
    :cond_58
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    .line 593
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->useController()Z

    move-result v4

    if-eqz v4, :cond_65

    .line 594
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v4, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 596
    :cond_65
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateBuffering()V

    .line 597
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateErrorMessage()V

    .line 598
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateForCurrentTrackSelections(Z)V

    .line 599
    if-eqz p1, :cond_ae

    .line 600
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 601
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    instance-of v2, v1, Landroid/view/TextureView;

    if-eqz v2, :cond_82

    .line 602
    check-cast v1, Landroid/view/TextureView;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/Player;->setVideoTextureView(Landroid/view/TextureView;)V

    goto :goto_8b

    .line 603
    :cond_82
    instance-of v2, v1, Landroid/view/SurfaceView;

    if-eqz v2, :cond_8b

    .line 604
    check-cast v1, Landroid/view/SurfaceView;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/Player;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    .line 606
    :cond_8b
    :goto_8b
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateAspectRatio()V

    .line 608
    :cond_8e
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    if-eqz v1, :cond_a5

    const/16 v1, 0x1c

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 609
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentCues()Lcom/google/android/exoplayer2/text/CueGroup;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/text/CueGroup;->cues:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    .line 611
    :cond_a5
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/Player;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 612
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ui/PlayerView;->maybeShowController(Z)V

    goto :goto_b1

    .line 614
    :cond_ae
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->hideController()V

    .line 616
    :goto_b1
    return-void
.end method

.method public setRepeatToggleModes(I)V
    .registers 3
    .param p1, "repeatToggleModes"    # I

    .line 986
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setRepeatToggleModes(I)V

    .line 988
    return-void
.end method

.method public setResizeMode(I)V
    .registers 3
    .param p1, "resizeMode"    # I

    .line 633
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    .line 635
    return-void
.end method

.method public setShowBuffering(I)V
    .registers 3
    .param p1, "showBuffering"    # I

    .line 756
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->showBuffering:I

    if-eq v0, p1, :cond_9

    .line 757
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->showBuffering:I

    .line 758
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateBuffering()V

    .line 760
    :cond_9
    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .registers 3
    .param p1, "showFastForwardButton"    # Z

    .line 956
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setShowFastForwardButton(Z)V

    .line 958
    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .registers 3
    .param p1, "showMultiWindowTimeBar"    # Z

    .line 1006
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setShowMultiWindowTimeBar(Z)V

    .line 1008
    return-void
.end method

.method public setShowNextButton(Z)V
    .registers 3
    .param p1, "showNextButton"    # Z

    .line 976
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setShowNextButton(Z)V

    .line 978
    return-void
.end method

.method public setShowPreviousButton(Z)V
    .registers 3
    .param p1, "showPreviousButton"    # Z

    .line 966
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setShowPreviousButton(Z)V

    .line 968
    return-void
.end method

.method public setShowRewindButton(Z)V
    .registers 3
    .param p1, "showRewindButton"    # Z

    .line 946
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setShowRewindButton(Z)V

    .line 948
    return-void
.end method

.method public setShowShuffleButton(Z)V
    .registers 3
    .param p1, "showShuffleButton"    # Z

    .line 996
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setShowShuffleButton(Z)V

    .line 998
    return-void
.end method

.method public setShutterBackgroundColor(I)V
    .registers 3
    .param p1, "color"    # I

    .line 716
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->shutterView:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 717
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 719
    :cond_7
    return-void
.end method

.method public setUseArtwork(Z)V
    .registers 4
    .param p1, "useArtwork"    # Z

    .line 654
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

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

    .line 655
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->useArtwork:Z

    if-eq v1, p1, :cond_17

    .line 656
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->useArtwork:Z

    .line 657
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateForCurrentTrackSelections(Z)V

    .line 659
    :cond_17
    return-void
.end method

.method public setUseController(Z)V
    .registers 5
    .param p1, "useController"    # Z

    .line 695
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_b

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

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

    .line 696
    if-nez p1, :cond_17

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->hasOnClickListeners()Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_17
    const/4 v0, 0x1

    :cond_18
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setClickable(Z)V

    .line 697
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->useController:Z

    if-ne v0, p1, :cond_20

    .line 698
    return-void

    .line 700
    :cond_20
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->useController:Z

    .line 701
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->useController()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 702
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    goto :goto_3d

    .line 703
    :cond_30
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_3d

    .line 704
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hide()V

    .line 705
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 707
    :cond_3d
    :goto_3d
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateContentDescription()V

    .line 708
    return-void
.end method

.method public setVisibility(I)V
    .registers 4
    .param p1, "visibility"    # I

    .line 620
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 621
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    instance-of v1, v0, Landroid/view/SurfaceView;

    if-eqz v1, :cond_c

    .line 623
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 625
    :cond_c
    return-void
.end method

.method public showController()V
    .registers 2

    .line 835
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->shouldShowControllerIndefinitely()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->showController(Z)V

    .line 836
    return-void
.end method
