.class public Lcom/google/android/exoplayer2/DefaultRenderersFactory;
.super Ljava/lang/Object;
.source "DefaultRenderersFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/RenderersFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/DefaultRenderersFactory$ExtensionRendererMode;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS:J = 0x1388L

.field public static final EXTENSION_RENDERER_MODE_OFF:I = 0x0

.field public static final EXTENSION_RENDERER_MODE_ON:I = 0x1

.field public static final EXTENSION_RENDERER_MODE_PREFER:I = 0x2

.field public static final MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY:I = 0x32

.field private static final TAG:Ljava/lang/String; = "DefaultRenderersFactory"


# instance fields
.field private allowedVideoJoiningTimeMs:J

.field private final codecAdapterFactory:Lcom/google/android/exoplayer2/mediacodec/DefaultMediaCodecAdapterFactory;

.field private final context:Landroid/content/Context;

.field private enableAudioTrackPlaybackParams:Z

.field private enableDecoderFallback:Z

.field private enableFloatOutput:Z

.field private enableOffload:Z

.field private extensionRendererMode:I

.field private mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    .line 117
    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/DefaultMediaCodecAdapterFactory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/mediacodec/DefaultMediaCodecAdapterFactory;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->codecAdapterFactory:Lcom/google/android/exoplayer2/mediacodec/DefaultMediaCodecAdapterFactory;

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    .line 119
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->allowedVideoJoiningTimeMs:J

    .line 120
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    iput-object v0, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    .line 121
    return-void
.end method


# virtual methods
.method protected buildAudioRenderers(Landroid/content/Context;ILcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;ZLcom/google/android/exoplayer2/audio/AudioSink;Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Ljava/util/ArrayList;)V
    .registers 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extensionRendererMode"    # I
    .param p3, "mediaCodecSelector"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;
    .param p4, "enableDecoderFallback"    # Z
    .param p5, "audioSink"    # Lcom/google/android/exoplayer2/audio/AudioSink;
    .param p6, "eventHandler"    # Landroid/os/Handler;
    .param p7, "eventListener"    # Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;",
            "Z",
            "Lcom/google/android/exoplayer2/audio/AudioSink;",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .line 459
    .local p8, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/Renderer;>;"
    move v1, p2

    move-object/from16 v10, p8

    const-string v11, "DefaultRenderersFactory"

    new-instance v0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    .line 462
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->getCodecAdapterFactory()Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;

    move-result-object v4

    move-object v2, v0

    move-object v3, p1

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioSink;)V

    .line 468
    .local v2, "audioRenderer":Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    if-nez v1, :cond_20

    .line 471
    return-void

    .line 473
    :cond_20
    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 474
    .local v0, "extensionRendererIndex":I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2b

    .line 475
    add-int/lit8 v0, v0, -0x1

    move v4, v0

    goto :goto_2c

    .line 474
    :cond_2b
    move v4, v0

    .line 479
    .end local v0    # "extensionRendererIndex":I
    .local v4, "extensionRendererIndex":I
    :goto_2c
    const/4 v5, 0x0

    :try_start_2d
    const-string v0, "com.google.android.exoplayer2.decoder.midi.MidiRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 480
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 481
    .local v6, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/Renderer;
    :try_end_41
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2d .. :try_end_41} :catch_5b
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_41} :catch_52

    .line 482
    .local v7, "renderer":Lcom/google/android/exoplayer2/Renderer;
    add-int/lit8 v8, v4, 0x1

    .end local v4    # "extensionRendererIndex":I
    .local v8, "extensionRendererIndex":I
    :try_start_43
    invoke-virtual {v10, v4, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 483
    const-string v4, "Loaded MidiRenderer."

    invoke-static {v11, v4}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_43 .. :try_end_4b} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4b} :catch_4c

    .line 489
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v7    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    goto :goto_5d

    .line 486
    :catch_4c
    move-exception v0

    move v4, v8

    goto :goto_53

    .line 484
    :catch_4f
    move-exception v0

    move v4, v8

    goto :goto_5c

    .line 486
    .end local v8    # "extensionRendererIndex":I
    .restart local v4    # "extensionRendererIndex":I
    :catch_52
    move-exception v0

    .line 488
    .local v0, "e":Ljava/lang/Exception;
    :goto_53
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "Error instantiating MIDI extension"

    invoke-direct {v3, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 484
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_5b
    move-exception v0

    .line 489
    :goto_5c
    move v8, v4

    .line 493
    .end local v4    # "extensionRendererIndex":I
    .restart local v8    # "extensionRendererIndex":I
    :goto_5d
    const/4 v4, 0x3

    const/4 v6, 0x1

    :try_start_5f
    const-string v0, "com.google.android.exoplayer2.ext.opus.LibopusAudioRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 494
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v7, v4, [Ljava/lang/Class;

    const-class v9, Landroid/os/Handler;

    aput-object v9, v7, v5

    const-class v9, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    aput-object v9, v7, v6

    const-class v9, Lcom/google/android/exoplayer2/audio/AudioSink;

    aput-object v9, v7, v3

    .line 495
    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    .line 499
    .local v7, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v9, v4, [Ljava/lang/Object;

    aput-object p6, v9, v5

    aput-object p7, v9, v6

    aput-object p5, v9, v3

    .line 500
    invoke-virtual {v7, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer2/Renderer;
    :try_end_85
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5f .. :try_end_85} :catch_9f
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_85} :catch_96

    .line 501
    .local v9, "renderer":Lcom/google/android/exoplayer2/Renderer;
    add-int/lit8 v12, v8, 0x1

    .end local v8    # "extensionRendererIndex":I
    .local v12, "extensionRendererIndex":I
    :try_start_87
    invoke-virtual {v10, v8, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 502
    const-string v8, "Loaded LibopusAudioRenderer."

    invoke-static {v11, v8}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_87 .. :try_end_8f} :catch_93
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8f} :catch_90

    .line 508
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v9    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    goto :goto_a1

    .line 505
    :catch_90
    move-exception v0

    move v8, v12

    goto :goto_97

    .line 503
    :catch_93
    move-exception v0

    move v8, v12

    goto :goto_a0

    .line 505
    .end local v12    # "extensionRendererIndex":I
    .restart local v8    # "extensionRendererIndex":I
    :catch_96
    move-exception v0

    .line 507
    .local v0, "e":Ljava/lang/Exception;
    :goto_97
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Error instantiating Opus extension"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 503
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_9f
    move-exception v0

    .line 508
    :goto_a0
    move v12, v8

    .line 512
    .end local v8    # "extensionRendererIndex":I
    .restart local v12    # "extensionRendererIndex":I
    :goto_a1
    :try_start_a1
    const-string v0, "com.google.android.exoplayer2.ext.flac.LibflacAudioRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 513
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, Landroid/os/Handler;

    aput-object v8, v7, v5

    const-class v8, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    aput-object v8, v7, v6

    const-class v8, Lcom/google/android/exoplayer2/audio/AudioSink;

    aput-object v8, v7, v3

    .line 514
    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    .line 518
    .restart local v7    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v8, v4, [Ljava/lang/Object;

    aput-object p6, v8, v5

    aput-object p7, v8, v6

    aput-object p5, v8, v3

    .line 519
    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/Renderer;
    :try_end_c7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a1 .. :try_end_c7} :catch_e1
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_c7} :catch_d8

    .line 520
    .local v8, "renderer":Lcom/google/android/exoplayer2/Renderer;
    add-int/lit8 v9, v12, 0x1

    .end local v12    # "extensionRendererIndex":I
    .local v9, "extensionRendererIndex":I
    :try_start_c9
    invoke-virtual {v10, v12, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 521
    const-string v12, "Loaded LibflacAudioRenderer."

    invoke-static {v11, v12}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c9 .. :try_end_d1} :catch_d5
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_d1} :catch_d2

    .line 527
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v8    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    goto :goto_e3

    .line 524
    :catch_d2
    move-exception v0

    move v12, v9

    goto :goto_d9

    .line 522
    :catch_d5
    move-exception v0

    move v12, v9

    goto :goto_e2

    .line 524
    .end local v9    # "extensionRendererIndex":I
    .restart local v12    # "extensionRendererIndex":I
    :catch_d8
    move-exception v0

    .line 526
    .local v0, "e":Ljava/lang/Exception;
    :goto_d9
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Error instantiating FLAC extension"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 522
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_e1
    move-exception v0

    .line 527
    :goto_e2
    move v9, v12

    .line 531
    .end local v12    # "extensionRendererIndex":I
    .restart local v9    # "extensionRendererIndex":I
    :goto_e3
    :try_start_e3
    const-string v0, "com.google.android.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer"

    .line 532
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 533
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, Landroid/os/Handler;

    aput-object v8, v7, v5

    const-class v8, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    aput-object v8, v7, v6

    const-class v8, Lcom/google/android/exoplayer2/audio/AudioSink;

    aput-object v8, v7, v3

    .line 534
    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    .line 538
    .restart local v7    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p6, v4, v5

    aput-object p7, v4, v6

    aput-object p5, v4, v3

    .line 539
    invoke-virtual {v7, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/Renderer;
    :try_end_109
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e3 .. :try_end_109} :catch_123
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_109} :catch_11a

    .line 540
    .local v3, "renderer":Lcom/google/android/exoplayer2/Renderer;
    add-int/lit8 v4, v9, 0x1

    .end local v9    # "extensionRendererIndex":I
    .restart local v4    # "extensionRendererIndex":I
    :try_start_10b
    invoke-virtual {v10, v9, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 541
    const-string v5, "Loaded FfmpegAudioRenderer."

    invoke-static {v11, v5}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_113
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10b .. :try_end_113} :catch_117
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_113} :catch_114

    .line 547
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    .end local v7    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    goto :goto_125

    .line 544
    :catch_114
    move-exception v0

    move v9, v4

    goto :goto_11b

    .line 542
    :catch_117
    move-exception v0

    move v9, v4

    goto :goto_124

    .line 544
    .end local v4    # "extensionRendererIndex":I
    .restart local v9    # "extensionRendererIndex":I
    :catch_11a
    move-exception v0

    .line 546
    .local v0, "e":Ljava/lang/Exception;
    :goto_11b
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Error instantiating FFmpeg extension"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 542
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_123
    move-exception v0

    .line 547
    :goto_124
    move v4, v9

    .line 548
    .end local v9    # "extensionRendererIndex":I
    .restart local v4    # "extensionRendererIndex":I
    :goto_125
    return-void
.end method

.method protected buildAudioSink(Landroid/content/Context;ZZZ)Lcom/google/android/exoplayer2/audio/AudioSink;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enableFloatOutput"    # Z
    .param p3, "enableAudioTrackPlaybackParams"    # Z
    .param p4, "enableOffload"    # Z

    .line 633
    new-instance v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;-><init>(Landroid/content/Context;)V

    .line 634
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->setEnableFloatOutput(Z)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;

    move-result-object v0

    .line 635
    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->setEnableAudioTrackPlaybackParams(Z)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;

    move-result-object v0

    .line 637
    if-eqz p4, :cond_11

    .line 638
    const/4 v1, 0x1

    goto :goto_12

    .line 639
    :cond_11
    const/4 v1, 0x0

    .line 636
    :goto_12
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->setOffloadMode(I)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;

    move-result-object v0

    .line 640
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->build()Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    move-result-object v0

    .line 633
    return-object v0
.end method

.method protected buildCameraMotionRenderers(Landroid/content/Context;ILjava/util/ArrayList;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extensionRendererMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .line 595
    .local p3, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/Renderer;>;"
    new-instance v0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;-><init>()V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    return-void
.end method

.method protected buildMetadataRenderers(Landroid/content/Context;Lcom/google/android/exoplayer2/metadata/MetadataOutput;Landroid/os/Looper;ILjava/util/ArrayList;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "output"    # Lcom/google/android/exoplayer2/metadata/MetadataOutput;
    .param p3, "outputLooper"    # Landroid/os/Looper;
    .param p4, "extensionRendererMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/metadata/MetadataOutput;",
            "Landroid/os/Looper;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .line 583
    .local p5, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/Renderer;>;"
    new-instance v0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;

    invoke-direct {v0, p2, p3}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;-><init>(Lcom/google/android/exoplayer2/metadata/MetadataOutput;Landroid/os/Looper;)V

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    return-void
.end method

.method protected buildMiscellaneousRenderers(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventHandler"    # Landroid/os/Handler;
    .param p3, "extensionRendererMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .line 612
    .local p4, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/Renderer;>;"
    return-void
.end method

.method protected buildTextRenderers(Landroid/content/Context;Lcom/google/android/exoplayer2/text/TextOutput;Landroid/os/Looper;ILjava/util/ArrayList;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "output"    # Lcom/google/android/exoplayer2/text/TextOutput;
    .param p3, "outputLooper"    # Landroid/os/Looper;
    .param p4, "extensionRendererMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/text/TextOutput;",
            "Landroid/os/Looper;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .line 565
    .local p5, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/Renderer;>;"
    new-instance v0, Lcom/google/android/exoplayer2/text/TextRenderer;

    invoke-direct {v0, p2, p3}, Lcom/google/android/exoplayer2/text/TextRenderer;-><init>(Lcom/google/android/exoplayer2/text/TextOutput;Landroid/os/Looper;)V

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    return-void
.end method

.method protected buildVideoRenderers(Landroid/content/Context;ILcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;JLjava/util/ArrayList;)V
    .registers 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extensionRendererMode"    # I
    .param p3, "mediaCodecSelector"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;
    .param p4, "enableDecoderFallback"    # Z
    .param p5, "eventHandler"    # Landroid/os/Handler;
    .param p6, "eventListener"    # Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
    .param p7, "allowedVideoJoiningTimeMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;",
            "Z",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/video/VideoRendererEventListener;",
            "J",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .line 365
    .local p9, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/Renderer;>;"
    move/from16 v1, p2

    move-object/from16 v12, p9

    const-string v13, "DefaultRenderersFactory"

    new-instance v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    .line 368
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->getCodecAdapterFactory()Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;

    move-result-object v4

    const/16 v11, 0x32

    move-object v2, v0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-wide/from16 v6, p7

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v2 .. v11}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V

    .line 375
    .local v2, "videoRenderer":Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    if-nez v1, :cond_24

    .line 378
    return-void

    .line 380
    :cond_24
    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 381
    .local v0, "extensionRendererIndex":I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2f

    .line 382
    add-int/lit8 v0, v0, -0x1

    move v4, v0

    goto :goto_30

    .line 381
    :cond_2f
    move v4, v0

    .line 387
    .end local v0    # "extensionRendererIndex":I
    .local v4, "extensionRendererIndex":I
    :goto_30
    const/16 v5, 0x32

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x1

    :try_start_36
    const-string v0, "com.google.android.exoplayer2.ext.vp9.LibvpxVideoRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 388
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v10, v8, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v7

    const-class v11, Landroid/os/Handler;

    aput-object v11, v10, v9

    const-class v11, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    aput-object v11, v10, v3

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v6

    .line 389
    invoke-virtual {v0, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    .line 394
    .local v10, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v11, v8, [Ljava/lang/Object;

    .line 397
    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v11, v7

    aput-object p5, v11, v9

    aput-object p6, v11, v3

    .line 400
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v11, v6

    .line 396
    invoke-virtual {v10, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer2/Renderer;
    :try_end_6a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_36 .. :try_end_6a} :catch_84
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_6a} :catch_7b

    .line 401
    .local v11, "renderer":Lcom/google/android/exoplayer2/Renderer;
    add-int/lit8 v14, v4, 0x1

    .end local v4    # "extensionRendererIndex":I
    .local v14, "extensionRendererIndex":I
    :try_start_6c
    invoke-virtual {v12, v4, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 402
    const-string v4, "Loaded LibvpxVideoRenderer."

    invoke-static {v13, v4}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_74
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6c .. :try_end_74} :catch_78
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_74} :catch_75

    .line 408
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v11    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    goto :goto_86

    .line 405
    :catch_75
    move-exception v0

    move v4, v14

    goto :goto_7c

    .line 403
    :catch_78
    move-exception v0

    move v4, v14

    goto :goto_85

    .line 405
    .end local v14    # "extensionRendererIndex":I
    .restart local v4    # "extensionRendererIndex":I
    :catch_7b
    move-exception v0

    .line 407
    .local v0, "e":Ljava/lang/Exception;
    :goto_7c
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "Error instantiating VP9 extension"

    invoke-direct {v3, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 403
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_84
    move-exception v0

    .line 408
    :goto_85
    move v14, v4

    .line 412
    .end local v4    # "extensionRendererIndex":I
    .restart local v14    # "extensionRendererIndex":I
    :goto_86
    :try_start_86
    const-string v0, "com.google.android.exoplayer2.ext.av1.Libgav1VideoRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 413
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v4, v8, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v10, v4, v7

    const-class v10, Landroid/os/Handler;

    aput-object v10, v4, v9

    const-class v10, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    aput-object v10, v4, v3

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v4, v6

    .line 414
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 419
    .local v4, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v8, v8, [Ljava/lang/Object;

    .line 422
    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v7

    aput-object p5, v8, v9

    aput-object p6, v8, v3

    .line 425
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v6

    .line 421
    invoke-virtual {v4, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/Renderer;
    :try_end_ba
    .catch Ljava/lang/ClassNotFoundException; {:try_start_86 .. :try_end_ba} :catch_d4
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_ba} :catch_cb

    .line 426
    .local v3, "renderer":Lcom/google/android/exoplayer2/Renderer;
    add-int/lit8 v5, v14, 0x1

    .end local v14    # "extensionRendererIndex":I
    .local v5, "extensionRendererIndex":I
    :try_start_bc
    invoke-virtual {v12, v14, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 427
    const-string v6, "Loaded Libgav1VideoRenderer."

    invoke-static {v13, v6}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_bc .. :try_end_c4} :catch_c8
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_c4} :catch_c5

    .line 433
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    goto :goto_d6

    .line 430
    :catch_c5
    move-exception v0

    move v14, v5

    goto :goto_cc

    .line 428
    :catch_c8
    move-exception v0

    move v14, v5

    goto :goto_d5

    .line 430
    .end local v5    # "extensionRendererIndex":I
    .restart local v14    # "extensionRendererIndex":I
    :catch_cb
    move-exception v0

    .line 432
    .local v0, "e":Ljava/lang/Exception;
    :goto_cc
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Error instantiating AV1 extension"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 428
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_d4
    move-exception v0

    .line 433
    :goto_d5
    move v5, v14

    .line 434
    .end local v14    # "extensionRendererIndex":I
    .restart local v5    # "extensionRendererIndex":I
    :goto_d6
    return-void
.end method

.method public createRenderers(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/text/TextOutput;Lcom/google/android/exoplayer2/metadata/MetadataOutput;)[Lcom/google/android/exoplayer2/Renderer;
    .registers 18
    .param p1, "eventHandler"    # Landroid/os/Handler;
    .param p2, "videoRendererEventListener"    # Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
    .param p3, "audioRendererEventListener"    # Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
    .param p4, "textRendererOutput"    # Lcom/google/android/exoplayer2/text/TextOutput;
    .param p5, "metadataRendererOutput"    # Lcom/google/android/exoplayer2/metadata/MetadataOutput;

    .line 300
    move-object v10, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 301
    .local v11, "renderersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/Renderer;>;"
    iget-object v1, v10, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    iget v2, v10, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    iget-object v3, v10, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    iget-boolean v4, v10, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->enableDecoderFallback:Z

    iget-wide v7, v10, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->allowedVideoJoiningTimeMs:J

    move-object v0, p0

    move-object v5, p1

    move-object v6, p2

    move-object v9, v11

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->buildVideoRenderers(Landroid/content/Context;ILcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;JLjava/util/ArrayList;)V

    .line 311
    iget-object v0, v10, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    iget-boolean v1, v10, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->enableFloatOutput:Z

    iget-boolean v2, v10, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->enableAudioTrackPlaybackParams:Z

    iget-boolean v3, v10, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->enableOffload:Z

    .line 312
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->buildAudioSink(Landroid/content/Context;ZZZ)Lcom/google/android/exoplayer2/audio/AudioSink;

    move-result-object v9

    .line 313
    .local v9, "audioSink":Lcom/google/android/exoplayer2/audio/AudioSink;
    if-eqz v9, :cond_36

    .line 314
    iget-object v1, v10, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    iget v2, v10, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    iget-object v3, v10, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    iget-boolean v4, v10, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->enableDecoderFallback:Z

    move-object v0, p0

    move-object v5, v9

    move-object v6, p1

    move-object v7, p3

    move-object v8, v11

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->buildAudioRenderers(Landroid/content/Context;ILcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;ZLcom/google/android/exoplayer2/audio/AudioSink;Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Ljava/util/ArrayList;)V

    .line 324
    :cond_36
    iget-object v1, v10, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    .line 327
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget v4, v10, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    .line 324
    move-object v0, p0

    move-object/from16 v2, p4

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->buildTextRenderers(Landroid/content/Context;Lcom/google/android/exoplayer2/text/TextOutput;Landroid/os/Looper;ILjava/util/ArrayList;)V

    .line 330
    iget-object v1, v10, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    .line 333
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget v4, v10, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    .line 330
    move-object/from16 v2, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->buildMetadataRenderers(Landroid/content/Context;Lcom/google/android/exoplayer2/metadata/MetadataOutput;Landroid/os/Looper;ILjava/util/ArrayList;)V

    .line 336
    iget-object v0, v10, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    iget v1, v10, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    invoke-virtual {p0, v0, v1, v11}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->buildCameraMotionRenderers(Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 337
    iget-object v0, v10, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    iget v1, v10, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    move-object v2, p1

    invoke-virtual {p0, v0, p1, v1, v11}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->buildMiscellaneousRenderers(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V

    .line 338
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/exoplayer2/Renderer;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/Renderer;

    return-object v0
.end method

.method public experimentalSetSynchronizeCodecInteractionsWithQueueingEnabled(Z)Lcom/google/android/exoplayer2/DefaultRenderersFactory;
    .registers 3
    .param p1, "enabled"    # Z

    .line 180
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->codecAdapterFactory:Lcom/google/android/exoplayer2/mediacodec/DefaultMediaCodecAdapterFactory;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/mediacodec/DefaultMediaCodecAdapterFactory;->experimentalSetSynchronizeCodecInteractionsWithQueueingEnabled(Z)V

    .line 181
    return-object p0
.end method

.method public forceDisableMediaCodecAsynchronousQueueing()Lcom/google/android/exoplayer2/DefaultRenderersFactory;
    .registers 2

    .line 164
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->codecAdapterFactory:Lcom/google/android/exoplayer2/mediacodec/DefaultMediaCodecAdapterFactory;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/DefaultMediaCodecAdapterFactory;->forceDisableAsynchronous()Lcom/google/android/exoplayer2/mediacodec/DefaultMediaCodecAdapterFactory;

    .line 165
    return-object p0
.end method

.method public forceEnableMediaCodecAsynchronousQueueing()Lcom/google/android/exoplayer2/DefaultRenderersFactory;
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->codecAdapterFactory:Lcom/google/android/exoplayer2/mediacodec/DefaultMediaCodecAdapterFactory;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/DefaultMediaCodecAdapterFactory;->forceEnableAsynchronous()Lcom/google/android/exoplayer2/mediacodec/DefaultMediaCodecAdapterFactory;

    .line 152
    return-object p0
.end method

.method protected getCodecAdapterFactory()Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;
    .registers 2

    .line 648
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->codecAdapterFactory:Lcom/google/android/exoplayer2/mediacodec/DefaultMediaCodecAdapterFactory;

    return-object v0
.end method

.method public setAllowedVideoJoiningTimeMs(J)Lcom/google/android/exoplayer2/DefaultRenderersFactory;
    .registers 3
    .param p1, "allowedVideoJoiningTimeMs"    # J

    .line 289
    iput-wide p1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->allowedVideoJoiningTimeMs:J

    .line 290
    return-object p0
.end method

.method public setEnableAudioFloatOutput(Z)Lcom/google/android/exoplayer2/DefaultRenderersFactory;
    .registers 2
    .param p1, "enableFloatOutput"    # Z

    .line 225
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->enableFloatOutput:Z

    .line 226
    return-object p0
.end method

.method public setEnableAudioOffload(Z)Lcom/google/android/exoplayer2/DefaultRenderersFactory;
    .registers 2
    .param p1, "enableOffload"    # Z

    .line 248
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->enableOffload:Z

    .line 249
    return-object p0
.end method

.method public setEnableAudioTrackPlaybackParams(Z)Lcom/google/android/exoplayer2/DefaultRenderersFactory;
    .registers 2
    .param p1, "enableAudioTrackPlaybackParams"    # Z

    .line 273
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->enableAudioTrackPlaybackParams:Z

    .line 274
    return-object p0
.end method

.method public setEnableDecoderFallback(Z)Lcom/google/android/exoplayer2/DefaultRenderersFactory;
    .registers 2
    .param p1, "enableDecoderFallback"    # Z

    .line 194
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->enableDecoderFallback:Z

    .line 195
    return-object p0
.end method

.method public setExtensionRendererMode(I)Lcom/google/android/exoplayer2/DefaultRenderersFactory;
    .registers 2
    .param p1, "extensionRendererMode"    # I

    .line 136
    iput p1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    .line 137
    return-object p0
.end method

.method public setMediaCodecSelector(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;)Lcom/google/android/exoplayer2/DefaultRenderersFactory;
    .registers 2
    .param p1, "mediaCodecSelector"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    .line 208
    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    .line 209
    return-object p0
.end method
