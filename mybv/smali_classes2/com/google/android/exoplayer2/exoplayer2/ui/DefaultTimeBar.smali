.class public Lcom/google/android/exoplayer2/ui/DefaultTimeBar;
.super Landroid/view/View;
.source "DefaultTimeBar.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ui/TimeBar;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ACCESSIBILITY_CLASS_NAME:Ljava/lang/String; = "android.widget.SeekBar"

.field public static final BAR_GRAVITY_BOTTOM:I = 0x1

.field public static final BAR_GRAVITY_CENTER:I = 0x0

.field public static final DEFAULT_AD_MARKER_COLOR:I = -0x4d000100

.field public static final DEFAULT_AD_MARKER_WIDTH_DP:I = 0x4

.field public static final DEFAULT_BAR_HEIGHT_DP:I = 0x4

.field public static final DEFAULT_BUFFERED_COLOR:I = -0x33000001

.field private static final DEFAULT_INCREMENT_COUNT:I = 0x14

.field public static final DEFAULT_PLAYED_AD_MARKER_COLOR:I = 0x33ffff00

.field public static final DEFAULT_PLAYED_COLOR:I = -0x1

.field public static final DEFAULT_SCRUBBER_COLOR:I = -0x1

.field public static final DEFAULT_SCRUBBER_DISABLED_SIZE_DP:I = 0x0

.field public static final DEFAULT_SCRUBBER_DRAGGED_SIZE_DP:I = 0x10

.field public static final DEFAULT_SCRUBBER_ENABLED_SIZE_DP:I = 0xc

.field public static final DEFAULT_TOUCH_TARGET_HEIGHT_DP:I = 0x1a

.field public static final DEFAULT_UNPLAYED_COLOR:I = 0x33ffffff

.field private static final FINE_SCRUB_RATIO:I = 0x3

.field private static final FINE_SCRUB_Y_THRESHOLD_DP:I = -0x32

.field private static final HIDDEN_SCRUBBER_SCALE:F = 0.0f

.field private static final SHOWN_SCRUBBER_SCALE:F = 1.0f

.field private static final STOP_SCRUBBING_TIMEOUT_MS:J = 0x3e8L


# instance fields
.field private adGroupCount:I

.field private adGroupTimesMs:[J

.field private final adMarkerPaint:Landroid/graphics/Paint;

.field private final adMarkerWidth:I

.field private final barGravity:I

.field private final barHeight:I

.field private final bufferedBar:Landroid/graphics/Rect;

.field private final bufferedPaint:Landroid/graphics/Paint;

.field private bufferedPosition:J

.field private final density:F

.field private duration:J

.field private final fineScrubYThreshold:I

.field private final formatBuilder:Ljava/lang/StringBuilder;

.field private final formatter:Ljava/util/Formatter;

.field private keyCountIncrement:I

.field private keyTimeIncrement:J

.field private lastCoarseScrubXPosition:I

.field private lastExclusionRectangle:Landroid/graphics/Rect;

.field private final listeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;",
            ">;"
        }
    .end annotation
.end field

.field private playedAdGroups:[Z

.field private final playedAdMarkerPaint:Landroid/graphics/Paint;

.field private final playedPaint:Landroid/graphics/Paint;

.field private position:J

.field private final progressBar:Landroid/graphics/Rect;

.field private scrubPosition:J

.field private final scrubberBar:Landroid/graphics/Rect;

.field private final scrubberDisabledSize:I

.field private final scrubberDraggedSize:I

.field private final scrubberDrawable:Landroid/graphics/drawable/Drawable;

.field private final scrubberEnabledSize:I

.field private final scrubberPadding:I

.field private scrubberPaddingDisabled:Z

.field private final scrubberPaint:Landroid/graphics/Paint;

.field private scrubberScale:F

.field private scrubberScalingAnimator:Landroid/animation/ValueAnimator;

.field private scrubbing:Z

.field private final seekBounds:Landroid/graphics/Rect;

.field private final stopScrubbingRunnable:Ljava/lang/Runnable;

.field private final touchPosition:Landroid/graphics/Point;

.field private final touchTargetHeight:I

.field private final unplayedPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 232
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 233
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 236
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 237
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 240
    invoke-direct {p0, p1, p2, p3, p2}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    .line 241
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "timebarAttrs"    # Landroid/util/AttributeSet;

    .line 248
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;I)V

    .line 249
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;I)V
    .registers 29
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "timebarAttrs"    # Landroid/util/AttributeSet;
    .param p5, "defStyleRes"    # I

    .line 259
    move-object/from16 v1, p0

    move-object/from16 v2, p4

    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 260
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    .line 261
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    .line 262
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedBar:Landroid/graphics/Rect;

    .line 263
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    .line 264
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->playedPaint:Landroid/graphics/Paint;

    .line 265
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedPaint:Landroid/graphics/Paint;

    .line 266
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->unplayedPaint:Landroid/graphics/Paint;

    .line 267
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adMarkerPaint:Landroid/graphics/Paint;

    .line 268
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->playedAdMarkerPaint:Landroid/graphics/Paint;

    .line 269
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberPaint:Landroid/graphics/Paint;

    .line 270
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 271
    new-instance v9, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v9}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v9, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 272
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    iput-object v9, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->touchPosition:Landroid/graphics/Point;

    .line 275
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 276
    .local v9, "res":Landroid/content/res/Resources;
    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 277
    .local v10, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v11, v10, Landroid/util/DisplayMetrics;->density:F

    iput v11, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->density:F

    .line 278
    const/16 v12, -0x32

    invoke-static {v11, v12}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->dpToPx(FI)I

    move-result v12

    iput v12, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->fineScrubYThreshold:I

    .line 279
    const/4 v12, 0x4

    invoke-static {v11, v12}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->dpToPx(FI)I

    move-result v13

    .line 280
    .local v13, "defaultBarHeight":I
    const/16 v14, 0x1a

    invoke-static {v11, v14}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->dpToPx(FI)I

    move-result v14

    .line 281
    .local v14, "defaultTouchTargetHeight":I
    invoke-static {v11, v12}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->dpToPx(FI)I

    move-result v12

    .line 282
    .local v12, "defaultAdMarkerWidth":I
    const/16 v15, 0xc

    invoke-static {v11, v15}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->dpToPx(FI)I

    move-result v15

    .line 283
    .local v15, "defaultScrubberEnabledSize":I
    const/4 v8, 0x0

    move-object/from16 v16, v9

    .end local v9    # "res":Landroid/content/res/Resources;
    .local v16, "res":Landroid/content/res/Resources;
    invoke-static {v11, v8}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->dpToPx(FI)I

    move-result v9

    .line 284
    .local v9, "defaultScrubberDisabledSize":I
    const/16 v8, 0x10

    invoke-static {v11, v8}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->dpToPx(FI)I

    move-result v8

    .line 285
    .local v8, "defaultScrubberDraggedSize":I
    if-eqz v2, :cond_180

    .line 286
    nop

    .line 288
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v11

    move-object/from16 v18, v10

    .end local v10    # "displayMetrics":Landroid/util/DisplayMetrics;
    .local v18, "displayMetrics":Landroid/util/DisplayMetrics;
    sget-object v10, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar:[I

    .line 289
    move-object/from16 v20, v5

    move-object/from16 v19, v6

    move/from16 v6, p3

    move/from16 v5, p5

    invoke-virtual {v11, v2, v10, v6, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 292
    .local v10, "a":Landroid/content/res/TypedArray;
    :try_start_ac
    sget v11, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_scrubber_drawable:I

    invoke-virtual {v10, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_b4
    .catchall {:try_start_ac .. :try_end_b4} :catchall_177

    .line 293
    if-eqz v11, :cond_cb

    .line 294
    :try_start_b6
    invoke-direct {v1, v11}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setDrawableLayoutDirection(Landroid/graphics/drawable/Drawable;)Z

    .line 295
    nop

    .line 296
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v11

    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v11
    :try_end_c2
    .catchall {:try_start_b6 .. :try_end_c2} :catchall_c4

    move v14, v11

    goto :goto_cb

    .line 335
    :catchall_c4
    move-exception v0

    move/from16 v21, v8

    move/from16 v22, v9

    goto/16 :goto_17c

    .line 298
    :cond_cb
    :goto_cb
    :try_start_cb
    sget v11, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_bar_height:I

    .line 299
    invoke-virtual {v10, v11, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    iput v11, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->barHeight:I

    .line 300
    sget v11, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_touch_target_height:I

    .line 301
    invoke-virtual {v10, v11, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    iput v11, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->touchTargetHeight:I

    .line 303
    sget v11, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_bar_gravity:I

    const/4 v2, 0x0

    invoke-virtual {v10, v11, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->barGravity:I

    .line 304
    sget v2, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_ad_marker_width:I

    .line 305
    invoke-virtual {v10, v2, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adMarkerWidth:I

    .line 307
    sget v2, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_scrubber_enabled_size:I

    .line 308
    invoke-virtual {v10, v2, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberEnabledSize:I

    .line 310
    sget v2, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_scrubber_disabled_size:I

    .line 311
    invoke-virtual {v10, v2, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDisabledSize:I

    .line 313
    sget v2, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_scrubber_dragged_size:I

    .line 314
    invoke-virtual {v10, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDraggedSize:I

    .line 316
    sget v2, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_played_color:I

    const/4 v11, -0x1

    invoke-virtual {v10, v2, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 317
    .local v2, "playedColor":I
    sget v11, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_scrubber_color:I

    .line 318
    const/4 v5, -0x1

    invoke-virtual {v10, v11, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 319
    .local v5, "scrubberColor":I
    sget v11, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_buffered_color:I

    .line 320
    const v6, -0x33000001    # -1.3421772E8f

    invoke-virtual {v10, v11, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 321
    .local v6, "bufferedColor":I
    sget v11, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_unplayed_color:I
    :try_end_11d
    .catchall {:try_start_cb .. :try_end_11d} :catchall_16f

    .line 322
    move/from16 v17, v14

    const v14, 0x33ffffff

    .end local v14    # "defaultTouchTargetHeight":I
    .local v17, "defaultTouchTargetHeight":I
    :try_start_122
    invoke-virtual {v10, v11, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 323
    .local v11, "unplayedColor":I
    sget v14, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_ad_marker_color:I
    :try_end_128
    .catchall {:try_start_122 .. :try_end_128} :catchall_167

    .line 324
    move/from16 v21, v8

    const v8, -0x4d000100

    .end local v8    # "defaultScrubberDraggedSize":I
    .local v21, "defaultScrubberDraggedSize":I
    :try_start_12d
    invoke-virtual {v10, v14, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 325
    .local v8, "adMarkerColor":I
    sget v14, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_played_ad_marker_color:I
    :try_end_133
    .catchall {:try_start_12d .. :try_end_133} :catchall_161

    .line 326
    move/from16 v22, v9

    const v9, 0x33ffff00

    .end local v9    # "defaultScrubberDisabledSize":I
    .local v22, "defaultScrubberDisabledSize":I
    :try_start_138
    invoke-virtual {v10, v14, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 328
    .local v9, "playedAdMarkerColor":I
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 329
    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 330
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 331
    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 332
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 333
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_152
    .catchall {:try_start_138 .. :try_end_152} :catchall_15d

    .line 335
    .end local v2    # "playedColor":I
    .end local v5    # "scrubberColor":I
    .end local v6    # "bufferedColor":I
    .end local v8    # "adMarkerColor":I
    .end local v9    # "playedAdMarkerColor":I
    .end local v11    # "unplayedColor":I
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 336
    nop

    .line 337
    .end local v10    # "a":Landroid/content/res/TypedArray;
    move/from16 v14, v17

    move/from16 v8, v21

    move/from16 v6, v22

    goto :goto_1bc

    .line 335
    .restart local v10    # "a":Landroid/content/res/TypedArray;
    :catchall_15d
    move-exception v0

    move/from16 v14, v17

    goto :goto_17c

    .end local v22    # "defaultScrubberDisabledSize":I
    .local v9, "defaultScrubberDisabledSize":I
    :catchall_161
    move-exception v0

    move/from16 v22, v9

    move/from16 v14, v17

    .end local v9    # "defaultScrubberDisabledSize":I
    .restart local v22    # "defaultScrubberDisabledSize":I
    goto :goto_17c

    .end local v21    # "defaultScrubberDraggedSize":I
    .end local v22    # "defaultScrubberDisabledSize":I
    .local v8, "defaultScrubberDraggedSize":I
    .restart local v9    # "defaultScrubberDisabledSize":I
    :catchall_167
    move-exception v0

    move/from16 v21, v8

    move/from16 v22, v9

    move/from16 v14, v17

    .end local v8    # "defaultScrubberDraggedSize":I
    .end local v9    # "defaultScrubberDisabledSize":I
    .restart local v21    # "defaultScrubberDraggedSize":I
    .restart local v22    # "defaultScrubberDisabledSize":I
    goto :goto_17c

    .end local v17    # "defaultTouchTargetHeight":I
    .end local v21    # "defaultScrubberDraggedSize":I
    .end local v22    # "defaultScrubberDisabledSize":I
    .restart local v8    # "defaultScrubberDraggedSize":I
    .restart local v9    # "defaultScrubberDisabledSize":I
    .restart local v14    # "defaultTouchTargetHeight":I
    :catchall_16f
    move-exception v0

    move/from16 v21, v8

    move/from16 v22, v9

    move/from16 v17, v14

    .end local v8    # "defaultScrubberDraggedSize":I
    .end local v9    # "defaultScrubberDisabledSize":I
    .end local v14    # "defaultTouchTargetHeight":I
    .restart local v17    # "defaultTouchTargetHeight":I
    .restart local v21    # "defaultScrubberDraggedSize":I
    .restart local v22    # "defaultScrubberDisabledSize":I
    goto :goto_17c

    .end local v17    # "defaultTouchTargetHeight":I
    .end local v21    # "defaultScrubberDraggedSize":I
    .end local v22    # "defaultScrubberDisabledSize":I
    .restart local v8    # "defaultScrubberDraggedSize":I
    .restart local v9    # "defaultScrubberDisabledSize":I
    .restart local v14    # "defaultTouchTargetHeight":I
    :catchall_177
    move-exception v0

    move/from16 v21, v8

    move/from16 v22, v9

    .end local v8    # "defaultScrubberDraggedSize":I
    .end local v9    # "defaultScrubberDisabledSize":I
    .restart local v21    # "defaultScrubberDraggedSize":I
    .restart local v22    # "defaultScrubberDisabledSize":I
    :goto_17c
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 336
    throw v0

    .line 338
    .end local v18    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v21    # "defaultScrubberDraggedSize":I
    .end local v22    # "defaultScrubberDisabledSize":I
    .restart local v8    # "defaultScrubberDraggedSize":I
    .restart local v9    # "defaultScrubberDisabledSize":I
    .local v10, "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_180
    move-object v2, v5

    move-object v5, v6

    move/from16 v21, v8

    move/from16 v22, v9

    move-object/from16 v18, v10

    .end local v8    # "defaultScrubberDraggedSize":I
    .end local v9    # "defaultScrubberDisabledSize":I
    .end local v10    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v18    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v21    # "defaultScrubberDraggedSize":I
    .restart local v22    # "defaultScrubberDisabledSize":I
    iput v13, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->barHeight:I

    .line 339
    iput v14, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->touchTargetHeight:I

    .line 340
    const/4 v6, 0x0

    iput v6, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->barGravity:I

    .line 341
    iput v12, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adMarkerWidth:I

    .line 342
    iput v15, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberEnabledSize:I

    .line 343
    move/from16 v6, v22

    .end local v22    # "defaultScrubberDisabledSize":I
    .local v6, "defaultScrubberDisabledSize":I
    iput v6, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDisabledSize:I

    .line 344
    nop

    .end local v21    # "defaultScrubberDraggedSize":I
    .restart local v8    # "defaultScrubberDraggedSize":I
    iput v8, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDraggedSize:I

    .line 345
    const/4 v9, -0x1

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 346
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 347
    const v0, -0x33000001    # -1.3421772E8f

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 348
    const v0, 0x33ffffff

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 349
    const v0, -0x4d000100

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 350
    const v0, 0x33ffff00

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 351
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    .line 353
    :goto_1bc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->formatBuilder:Ljava/lang/StringBuilder;

    .line 354
    new-instance v2, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->formatter:Ljava/util/Formatter;

    .line 355
    new-instance v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/ui/DefaultTimeBar;)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->stopScrubbingRunnable:Ljava/lang/Runnable;

    .line 356
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1e4

    .line 357
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    iput v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberPadding:I

    goto :goto_1f8

    .line 359
    :cond_1e4
    const/4 v2, 0x1

    iget v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDisabledSize:I

    iget v3, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberEnabledSize:I

    iget v4, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDraggedSize:I

    .line 360
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    iput v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberPadding:I

    .line 363
    :goto_1f8
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberScale:F

    .line 364
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberScalingAnimator:Landroid/animation/ValueAnimator;

    .line 365
    new-instance v2, Lcom/google/android/exoplayer2/ui/DefaultTimeBar$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/ui/DefaultTimeBar;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 370
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    .line 371
    iput-wide v2, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->keyTimeIncrement:J

    .line 372
    const/16 v0, 0x14

    iput v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->keyCountIncrement:I

    .line 373
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setFocusable(Z)V

    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_225

    .line 375
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setImportantForAccessibility(I)V

    .line 377
    :cond_225
    return-void
.end method

.method private static dpToPx(FI)I
    .registers 4
    .param p0, "density"    # F
    .param p1, "dps"    # I

    .line 986
    int-to-float v0, p1

    mul-float v0, v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private drawPlayhead(Landroid/graphics/Canvas;)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 923
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_9

    .line 924
    return-void

    .line 926
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v0

    .line 927
    .local v0, "playheadX":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 928
    .local v1, "playheadY":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4f

    .line 930
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubbing:Z

    if-nez v2, :cond_3a

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_2e

    goto :goto_3a

    .line 932
    :cond_2e
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_37

    iget v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberEnabledSize:I

    goto :goto_3c

    :cond_37
    iget v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDisabledSize:I

    goto :goto_3c

    .line 931
    :cond_3a
    :goto_3a
    iget v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDraggedSize:I

    .line 932
    :goto_3c
    nop

    .line 933
    .local v2, "scrubberSize":I
    int-to-float v3, v2

    iget v4, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberScale:F

    mul-float v3, v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 934
    .local v3, "playheadRadius":I
    int-to-float v4, v0

    int-to-float v5, v1

    int-to-float v6, v3

    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 935
    .end local v2    # "scrubberSize":I
    .end local v3    # "playheadRadius":I
    goto :goto_7d

    .line 936
    :cond_4f
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberScale:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 937
    .local v2, "scrubberDrawableWidth":I
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberScale:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    .line 938
    .local v3, "scrubberDrawableHeight":I
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v5, v2, 0x2

    sub-int v5, v0, v5

    div-int/lit8 v6, v3, 0x2

    sub-int v6, v1, v6

    div-int/lit8 v7, v2, 0x2

    add-int/2addr v7, v0

    div-int/lit8 v8, v3, 0x2

    add-int/2addr v8, v1

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 943
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 945
    .end local v2    # "scrubberDrawableWidth":I
    .end local v3    # "scrubberDrawableHeight":I
    :goto_7d
    return-void
.end method

.method private drawTimeBar(Landroid/graphics/Canvas;)V
    .registers 27
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 884
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 885
    .local v1, "progressBarHeight":I
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    div-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    .line 886
    .local v2, "barTop":I
    add-int v3, v2, v1

    .line 887
    .local v3, "barBottom":I
    iget-wide v4, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-gtz v8, :cond_2f

    .line 888
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v6, v4

    int-to-float v7, v2

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v8, v4

    int-to-float v9, v3

    iget-object v10, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->unplayedPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 889
    return-void

    .line 891
    :cond_2f
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedBar:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 892
    .local v4, "bufferedLeft":I
    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedBar:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 893
    .local v5, "bufferedRight":I
    iget-object v6, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget-object v7, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 894
    .local v6, "progressLeft":I
    iget-object v7, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    if-ge v6, v7, :cond_5c

    .line 895
    int-to-float v9, v6

    int-to-float v10, v2

    iget-object v7, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v11, v7

    int-to-float v12, v3

    iget-object v13, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->unplayedPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 897
    :cond_5c
    iget-object v7, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 898
    if-le v5, v4, :cond_71

    .line 899
    int-to-float v8, v4

    int-to-float v9, v2

    int-to-float v10, v5

    int-to-float v11, v3

    iget-object v12, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedPaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 901
    :cond_71
    iget-object v7, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-lez v7, :cond_8c

    .line 902
    iget-object v7, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v9, v7

    int-to-float v10, v2

    iget-object v7, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v11, v7

    int-to-float v12, v3

    iget-object v13, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->playedPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 904
    :cond_8c
    iget v7, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adGroupCount:I

    if-nez v7, :cond_91

    .line 905
    return-void

    .line 907
    :cond_91
    iget-object v7, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adGroupTimesMs:[J

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [J

    .line 908
    .local v7, "adGroupTimesMs":[J
    iget-object v8, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->playedAdGroups:[Z

    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Z

    .line 909
    .local v8, "playedAdGroups":[Z
    iget v9, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adMarkerWidth:I

    div-int/lit8 v9, v9, 0x2

    .line 910
    .local v9, "adMarkerOffset":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_a6
    iget v11, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adGroupCount:I

    if-ge v10, v11, :cond_109

    .line 911
    aget-wide v12, v7, v10

    const-wide/16 v14, 0x0

    move/from16 v18, v4

    move v11, v5

    .end local v4    # "bufferedLeft":I
    .end local v5    # "bufferedRight":I
    .local v11, "bufferedRight":I
    .local v18, "bufferedLeft":I
    iget-wide v4, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    move-wide/from16 v16, v4

    invoke-static/range {v12 .. v17}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v4

    .line 912
    .local v4, "adGroupTimeMs":J
    iget-object v12, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    .line 913
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-long v12, v12

    mul-long v12, v12, v4

    iget-wide v14, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    div-long/2addr v12, v14

    long-to-int v13, v12

    sub-int/2addr v13, v9

    .line 914
    .local v13, "markerPositionOffset":I
    iget-object v12, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    iget-object v14, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    .line 916
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v14

    iget v15, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adMarkerWidth:I

    sub-int/2addr v14, v15

    const/4 v15, 0x0

    invoke-static {v15, v13}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    add-int/2addr v12, v14

    .line 917
    .local v12, "markerLeft":I
    aget-boolean v14, v8, v10

    if-eqz v14, :cond_e5

    iget-object v14, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->playedAdMarkerPaint:Landroid/graphics/Paint;

    goto :goto_e7

    :cond_e5
    iget-object v14, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adMarkerPaint:Landroid/graphics/Paint;

    :goto_e7
    move-object/from16 v24, v14

    .line 918
    .local v24, "paint":Landroid/graphics/Paint;
    int-to-float v14, v12

    int-to-float v15, v2

    move/from16 v16, v1

    .end local v1    # "progressBarHeight":I
    .local v16, "progressBarHeight":I
    iget v1, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adMarkerWidth:I

    add-int/2addr v1, v12

    int-to-float v1, v1

    int-to-float v0, v3

    move-object/from16 v19, p1

    move/from16 v20, v14

    move/from16 v21, v15

    move/from16 v22, v1

    move/from16 v23, v0

    invoke-virtual/range {v19 .. v24}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 910
    .end local v4    # "adGroupTimeMs":J
    .end local v12    # "markerLeft":I
    .end local v13    # "markerPositionOffset":I
    .end local v24    # "paint":Landroid/graphics/Paint;
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move v5, v11

    move/from16 v1, v16

    move/from16 v4, v18

    goto :goto_a6

    .line 920
    .end local v10    # "i":I
    .end local v11    # "bufferedRight":I
    .end local v16    # "progressBarHeight":I
    .end local v18    # "bufferedLeft":I
    .restart local v1    # "progressBarHeight":I
    .local v4, "bufferedLeft":I
    .restart local v5    # "bufferedRight":I
    :cond_109
    return-void
.end method

.method private getPositionIncrement()J
    .registers 6

    .line 972
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->keyTimeIncrement:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_19

    .line 973
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_14

    const-wide/16 v0, 0x0

    goto :goto_1a

    :cond_14
    iget v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->keyCountIncrement:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    goto :goto_1a

    .line 974
    :cond_19
    nop

    .line 972
    :goto_1a
    return-wide v0
.end method

.method private getProgressText()Ljava/lang/String;
    .registers 5

    .line 968
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->formatBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->formatter:Ljava/util/Formatter;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->position:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getScrubberPosition()J
    .registers 6

    .line 873
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_28

    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_14

    goto :goto_28

    .line 876
    :cond_14
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    mul-long v0, v0, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0

    .line 874
    :cond_28
    :goto_28
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private isInSeekBar(FF)Z
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 880
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private positionScrubber(F)V
    .registers 6
    .param p1, "xPosition"    # F

    .line 864
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    float-to-int v1, p1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v2, v3}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 865
    return-void
.end method

.method private static pxToDp(FI)I
    .registers 3
    .param p0, "density"    # F
    .param p1, "px"    # I

    .line 990
    int-to-float v0, p1

    div-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method private resolveRelativeTouchPosition(Landroid/view/MotionEvent;)Landroid/graphics/Point;
    .registers 5
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 868
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->touchPosition:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 869
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->touchPosition:Landroid/graphics/Point;

    return-object v0
.end method

.method private scrubIncrementally(J)Z
    .registers 12
    .param p1, "positionChange"    # J

    .line 830
    iget-wide v4, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    const-wide/16 v0, 0x0

    const/4 v6, 0x0

    cmp-long v2, v4, v0

    if-gtz v2, :cond_a

    .line 831
    return v6

    .line 833
    :cond_a
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubbing:Z

    if-eqz v0, :cond_11

    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubPosition:J

    goto :goto_13

    :cond_11
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->position:J

    :goto_13
    move-wide v7, v0

    .line 834
    .local v7, "previousPosition":J
    add-long v0, v7, p1

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v0

    .line 835
    .local v0, "scrubPosition":J
    cmp-long v2, v0, v7

    if-nez v2, :cond_21

    .line 836
    return v6

    .line 838
    :cond_21
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubbing:Z

    if-nez v2, :cond_29

    .line 839
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->startScrubbing(J)V

    goto :goto_2c

    .line 841
    :cond_29
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->updateScrubbing(J)V

    .line 843
    :goto_2c
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->update()V

    .line 844
    const/4 v2, 0x1

    return v2
.end method

.method private setDrawableLayoutDirection(Landroid/graphics/drawable/Drawable;)Z
    .registers 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 978
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_12

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getLayoutDirection()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setDrawableLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private static setDrawableLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z
    .registers 4
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "layoutDirection"    # I

    .line 982
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_e

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private setSystemGestureExclusionRectsV29(II)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 957
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->lastExclusionRectangle:Landroid/graphics/Rect;

    if-eqz v0, :cond_13

    .line 958
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ne v0, p1, :cond_13

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->lastExclusionRectangle:Landroid/graphics/Rect;

    .line 959
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ne v0, p2, :cond_13

    .line 961
    return-void

    .line 963
    :cond_13
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->lastExclusionRectangle:Landroid/graphics/Rect;

    .line 964
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setSystemGestureExclusionRects(Ljava/util/List;)V

    .line 965
    return-void
.end method

.method private startScrubbing(J)V
    .registers 6
    .param p1, "scrubPosition"    # J

    .line 787
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubPosition:J

    .line 788
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubbing:Z

    .line 789
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setPressed(Z)V

    .line 790
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 791
    .local v1, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_11

    .line 792
    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 794
    :cond_11
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;

    .line 795
    .local v2, "listener":Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;
    invoke-interface {v2, p0, p1, p2}, Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;->onScrubStart(Lcom/google/android/exoplayer2/ui/TimeBar;J)V

    .line 796
    .end local v2    # "listener":Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;
    goto :goto_17

    .line 797
    :cond_27
    return-void
.end method

.method private stopScrubbing(Z)V
    .registers 7
    .param p1, "canceled"    # Z

    .line 810
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->stopScrubbingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 811
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubbing:Z

    .line 812
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setPressed(Z)V

    .line 813
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 814
    .local v1, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_14

    .line 815
    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 817
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->invalidate()V

    .line 818
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;

    .line 819
    .local v2, "listener":Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;
    iget-wide v3, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubPosition:J

    invoke-interface {v2, p0, v3, v4, p1}, Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;->onScrubStop(Lcom/google/android/exoplayer2/ui/TimeBar;JZ)V

    .line 820
    .end local v2    # "listener":Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;
    goto :goto_1d

    .line 821
    :cond_2f
    return-void
.end method

.method private update()V
    .registers 9

    .line 848
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 849
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 850
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubbing:Z

    if-eqz v0, :cond_15

    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubPosition:J

    goto :goto_17

    :cond_15
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->position:J

    .line 851
    .local v0, "newScrubberTime":J
    :goto_17
    iget-wide v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_5e

    .line 852
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedPosition:J

    mul-long v2, v2, v4

    iget-wide v4, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    div-long/2addr v2, v4

    long-to-int v3, v2

    .line 853
    .local v3, "bufferedPixelWidth":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedBar:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 854
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v4, v2

    mul-long v4, v4, v0

    iget-wide v6, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    div-long/2addr v4, v6

    long-to-int v2, v4

    .line 855
    .local v2, "scrubberPixelPosition":I
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 856
    .end local v2    # "scrubberPixelPosition":I
    .end local v3    # "bufferedPixelWidth":I
    goto :goto_6e

    .line 857
    :cond_5e
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedBar:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 858
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 860
    :goto_6e
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->invalidate(Landroid/graphics/Rect;)V

    .line 861
    return-void
.end method

.method private updateDrawableState()V
    .registers 3

    .line 948
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_19

    .line 949
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    .line 950
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 951
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->invalidate()V

    .line 953
    :cond_19
    return-void
.end method

.method private updateScrubbing(J)V
    .registers 6
    .param p1, "scrubPosition"    # J

    .line 800
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubPosition:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_7

    .line 801
    return-void

    .line 803
    :cond_7
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubPosition:J

    .line 804
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;

    .line 805
    .local v1, "listener":Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;
    invoke-interface {v1, p0, p1, p2}, Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;->onScrubMove(Lcom/google/android/exoplayer2/ui/TimeBar;J)V

    .line 806
    .end local v1    # "listener":Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;
    goto :goto_f

    .line 807
    :cond_1f
    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;

    .line 496
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 498
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 1

    .line 673
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 674
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->updateDrawableState()V

    .line 675
    return-void
.end method

.method public getPreferredUpdateDelay()J
    .registers 7

    .line 552
    iget v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->density:F

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->pxToDp(FI)I

    move-result v0

    .line 553
    .local v0, "timeBarWidthDp":I
    if-eqz v0, :cond_23

    iget-wide v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_23

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-nez v5, :cond_20

    goto :goto_23

    .line 555
    :cond_20
    int-to-long v3, v0

    div-long/2addr v1, v3

    goto :goto_28

    .line 554
    :cond_23
    :goto_23
    const-wide v1, 0x7fffffffffffffffL

    .line 553
    :goto_28
    return-wide v1
.end method

.method public hideScrubber(J)V
    .registers 7
    .param p1, "hideAnimationDurationMs"    # J

    .line 420
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberScalingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 421
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberScalingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 423
    :cond_d
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberScalingAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberScale:F

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 424
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberScalingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 425
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberScalingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 426
    return-void
.end method

.method public hideScrubber(Z)V
    .registers 3
    .param p1, "disableScrubberPadding"    # Z

    .line 406
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberScalingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 407
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberScalingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 409
    :cond_d
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberPaddingDisabled:Z

    .line 410
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberScale:F

    .line 411
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->invalidate(Landroid/graphics/Rect;)V

    .line 412
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .line 679
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 680
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 681
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 683
    :cond_a
    return-void
.end method

.method synthetic lambda$new$0$com-google-android-exoplayer2-ui-DefaultTimeBar()V
    .registers 2

    .line 355
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->stopScrubbing(Z)V

    return-void
.end method

.method synthetic lambda$new$1$com-google-android-exoplayer2-ui-DefaultTimeBar(Landroid/animation/ValueAnimator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 367
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberScale:F

    .line 368
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->invalidate(Landroid/graphics/Rect;)V

    .line 369
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 581
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 582
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->drawTimeBar(Landroid/graphics/Canvas;)V

    .line 583
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->drawPlayhead(Landroid/graphics/Canvas;)V

    .line 584
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 585
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 665
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 666
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubbing:Z

    if-eqz v0, :cond_d

    if-nez p1, :cond_d

    .line 667
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->stopScrubbing(Z)V

    .line 669
    :cond_d
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 737
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 738
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_15

    .line 739
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getProgressText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    :cond_15
    const-string v0, "android.widget.SeekBar"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 742
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 746
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 747
    const-string v0, "android.widget.SeekBar"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 748
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getProgressText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 749
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_18

    .line 750
    return-void

    .line 752
    :cond_18
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_29

    .line 753
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 754
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_33

    .line 756
    :cond_29
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 757
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 759
    :goto_33
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 635
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 636
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getPositionIncrement()J

    move-result-wide v0

    .line 637
    .local v0, "positionIncrement":J
    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_32

    goto :goto_2c

    .line 650
    :sswitch_f
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubbing:Z

    if-eqz v3, :cond_2c

    .line 651
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->stopScrubbing(Z)V

    .line 652
    return v2

    .line 639
    :sswitch_18
    neg-long v0, v0

    .line 642
    :sswitch_19
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubIncrementally(J)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 643
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->stopScrubbingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 644
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->stopScrubbingRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, v3, v4, v5}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 645
    return v2

    .line 659
    .end local v0    # "positionIncrement":J
    :cond_2c
    :goto_2c
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    nop

    :sswitch_data_32
    .sparse-switch
        0x15 -> :sswitch_18
        0x16 -> :sswitch_19
        0x17 -> :sswitch_f
        0x42 -> :sswitch_f
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 18
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 701
    move-object v0, p0

    sub-int v1, p4, p2

    .line 702
    .local v1, "width":I
    sub-int v2, p5, p3

    .line 703
    .local v2, "height":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getPaddingLeft()I

    move-result v3

    .line 704
    .local v3, "seekLeft":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getPaddingRight()I

    move-result v4

    sub-int v4, v1, v4

    .line 707
    .local v4, "seekRight":I
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberPaddingDisabled:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_16

    const/4 v5, 0x0

    goto :goto_18

    :cond_16
    iget v5, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberPadding:I

    .line 708
    .local v5, "scrubberPadding":I
    :goto_18
    iget v7, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->barGravity:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3a

    .line 709
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getPaddingBottom()I

    move-result v7

    sub-int v7, v2, v7

    iget v8, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->touchTargetHeight:I

    sub-int/2addr v7, v8

    .line 710
    .local v7, "seekBoundsY":I
    nop

    .line 711
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getPaddingBottom()I

    move-result v8

    sub-int v8, v2, v8

    iget v9, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->barHeight:I

    sub-int/2addr v8, v9

    div-int/lit8 v9, v9, 0x2

    sub-int v9, v5, v9

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int/2addr v8, v6

    .local v8, "progressBarY":I
    goto :goto_46

    .line 713
    .end local v7    # "seekBoundsY":I
    .end local v8    # "progressBarY":I
    :cond_3a
    iget v6, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->touchTargetHeight:I

    sub-int v6, v2, v6

    div-int/lit8 v7, v6, 0x2

    .line 714
    .restart local v7    # "seekBoundsY":I
    iget v6, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->barHeight:I

    sub-int v6, v2, v6

    div-int/lit8 v8, v6, 0x2

    .line 716
    .restart local v8    # "progressBarY":I
    :goto_46
    iget-object v6, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    iget v9, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->touchTargetHeight:I

    add-int/2addr v9, v7

    invoke-virtual {v6, v3, v7, v4, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 717
    iget-object v6, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v5

    iget-object v10, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v5

    iget v11, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->barHeight:I

    add-int/2addr v11, v8

    invoke-virtual {v6, v9, v8, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 722
    sget v6, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v9, 0x1d

    if-lt v6, v9, :cond_69

    .line 723
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setSystemGestureExclusionRectsV29(II)V

    .line 725
    :cond_69
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->update()V

    .line 726
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 687
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 688
    .local v0, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 690
    .local v1, "heightSize":I
    if-nez v0, :cond_d

    .line 691
    iget v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->touchTargetHeight:I

    goto :goto_19

    .line 692
    :cond_d
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_13

    .line 693
    move v2, v1

    goto :goto_19

    .line 694
    :cond_13
    iget v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->touchTargetHeight:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_19
    nop

    .line 695
    .local v2, "height":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual {p0, v3, v2}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setMeasuredDimension(II)V

    .line 696
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->updateDrawableState()V

    .line 697
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 3
    .param p1, "layoutDirection"    # I

    .line 730
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setDrawableLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 731
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->invalidate()V

    .line 733
    :cond_d
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 589
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_74

    iget-wide v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_10

    goto :goto_74

    .line 592
    :cond_10
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->resolveRelativeTouchPosition(Landroid/view/MotionEvent;)Landroid/graphics/Point;

    move-result-object v0

    .line 593
    .local v0, "touchPosition":Landroid/graphics/Point;
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 594
    .local v2, "x":I
    iget v3, v0, Landroid/graphics/Point;->y:I

    .line 595
    .local v3, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_76

    goto :goto_73

    .line 606
    :pswitch_21
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubbing:Z

    if-eqz v4, :cond_73

    .line 607
    iget v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->fineScrubYThreshold:I

    if-ge v3, v1, :cond_35

    .line 608
    iget v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->lastCoarseScrubXPosition:I

    sub-int v4, v2, v1

    .line 609
    .local v4, "relativeX":I
    div-int/lit8 v6, v4, 0x3

    add-int/2addr v1, v6

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->positionScrubber(F)V

    .line 610
    .end local v4    # "relativeX":I
    goto :goto_3b

    .line 611
    :cond_35
    iput v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->lastCoarseScrubXPosition:I

    .line 612
    int-to-float v1, v2

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->positionScrubber(F)V

    .line 614
    :goto_3b
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getScrubberPosition()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->updateScrubbing(J)V

    .line 615
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->update()V

    .line 616
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->invalidate()V

    .line 617
    return v5

    .line 622
    :pswitch_49
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubbing:Z

    if-eqz v4, :cond_73

    .line 623
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_55

    const/4 v1, 0x1

    :cond_55
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->stopScrubbing(Z)V

    .line 624
    return v5

    .line 597
    :pswitch_59
    int-to-float v4, v2

    int-to-float v6, v3

    invoke-direct {p0, v4, v6}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->isInSeekBar(FF)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 598
    int-to-float v1, v2

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->positionScrubber(F)V

    .line 599
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getScrubberPosition()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->startScrubbing(J)V

    .line 600
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->update()V

    .line 601
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->invalidate()V

    .line 602
    return v5

    .line 630
    :cond_73
    :goto_73
    return v1

    .line 590
    .end local v0    # "touchPosition":Landroid/graphics/Point;
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_74
    :goto_74
    return v1

    nop

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_59
        :pswitch_49
        :pswitch_21
        :pswitch_49
    .end packed-switch
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 10
    .param p1, "action"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .line 763
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 764
    return v1

    .line 766
    :cond_8
    iget-wide v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_12

    .line 767
    return v0

    .line 769
    :cond_12
    const/16 v2, 0x2000

    if-ne p1, v2, :cond_25

    .line 770
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getPositionIncrement()J

    move-result-wide v2

    neg-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubIncrementally(J)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 771
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->stopScrubbing(Z)V

    goto :goto_36

    .line 773
    :cond_25
    const/16 v2, 0x1000

    if-ne p1, v2, :cond_3b

    .line 774
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getPositionIncrement()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubIncrementally(J)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 775
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->stopScrubbing(Z)V

    .line 780
    :cond_36
    :goto_36
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->sendAccessibilityEvent(I)V

    .line 781
    return v1

    .line 778
    :cond_3b
    return v0
.end method

.method public removeListener(Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;

    .line 502
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 503
    return-void
.end method

.method public setAdGroupTimesMs([J[ZI)V
    .registers 5
    .param p1, "adGroupTimesMs"    # [J
    .param p2, "playedAdGroups"    # [Z
    .param p3, "adGroupCount"    # I

    .line 561
    if-eqz p3, :cond_9

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 563
    iput p3, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adGroupCount:I

    .line 564
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adGroupTimesMs:[J

    .line 565
    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->playedAdGroups:[Z

    .line 566
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->update()V

    .line 567
    return-void
.end method

.method public setAdMarkerColor(I)V
    .registers 3
    .param p1, "adMarkerColor"    # I

    .line 478
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adMarkerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 479
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->invalidate(Landroid/graphics/Rect;)V

    .line 480
    return-void
.end method

.method public setBufferedColor(I)V
    .registers 3
    .param p1, "bufferedColor"    # I

    .line 457
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 458
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->invalidate(Landroid/graphics/Rect;)V

    .line 459
    return-void
.end method

.method public setBufferedPosition(J)V
    .registers 6
    .param p1, "bufferedPosition"    # J

    .line 531
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedPosition:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_7

    .line 532
    return-void

    .line 534
    :cond_7
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedPosition:J

    .line 535
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->update()V

    .line 536
    return-void
.end method

.method public setDuration(J)V
    .registers 6
    .param p1, "duration"    # J

    .line 540
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_7

    .line 541
    return-void

    .line 543
    :cond_7
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    .line 544
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubbing:Z

    if-eqz v0, :cond_1a

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_1a

    .line 545
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->stopScrubbing(Z)V

    .line 547
    :cond_1a
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->update()V

    .line 548
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 573
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 574
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubbing:Z

    if-eqz v0, :cond_d

    if-nez p1, :cond_d

    .line 575
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->stopScrubbing(Z)V

    .line 577
    :cond_d
    return-void
.end method

.method public setKeyCountIncrement(I)V
    .registers 4
    .param p1, "count"    # I

    .line 514
    if-lez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 515
    iput p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->keyCountIncrement:I

    .line 516
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->keyTimeIncrement:J

    .line 517
    return-void
.end method

.method public setKeyTimeIncrement(J)V
    .registers 6
    .param p1, "time"    # J

    .line 507
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 508
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->keyCountIncrement:I

    .line 509
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->keyTimeIncrement:J

    .line 510
    return-void
.end method

.method public setPlayedAdMarkerColor(I)V
    .registers 3
    .param p1, "playedAdMarkerColor"    # I

    .line 488
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->playedAdMarkerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 489
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->invalidate(Landroid/graphics/Rect;)V

    .line 490
    return-void
.end method

.method public setPlayedColor(I)V
    .registers 3
    .param p1, "playedColor"    # I

    .line 435
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->playedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 436
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->invalidate(Landroid/graphics/Rect;)V

    .line 437
    return-void
.end method

.method public setPosition(J)V
    .registers 6
    .param p1, "position"    # J

    .line 521
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->position:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_7

    .line 522
    return-void

    .line 524
    :cond_7
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->position:J

    .line 525
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getProgressText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 526
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->update()V

    .line 527
    return-void
.end method

.method public setScrubberColor(I)V
    .registers 3
    .param p1, "scrubberColor"    # I

    .line 445
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 446
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->invalidate(Landroid/graphics/Rect;)V

    .line 447
    return-void
.end method

.method public setUnplayedColor(I)V
    .registers 3
    .param p1, "unplayedColor"    # I

    .line 468
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->unplayedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 469
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->invalidate(Landroid/graphics/Rect;)V

    .line 470
    return-void
.end method

.method public showScrubber()V
    .registers 2

    .line 381
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberScalingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 382
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberScalingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 384
    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberPaddingDisabled:Z

    .line 385
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberScale:F

    .line 386
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->invalidate(Landroid/graphics/Rect;)V

    .line 387
    return-void
.end method

.method public showScrubber(J)V
    .registers 7
    .param p1, "showAnimationDurationMs"    # J

    .line 395
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberScalingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 396
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberScalingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 398
    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberPaddingDisabled:Z

    .line 399
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberScalingAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberScale:F

    aput v3, v2, v0

    const/4 v0, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 400
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberScalingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 401
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberScalingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 402
    return-void
.end method
