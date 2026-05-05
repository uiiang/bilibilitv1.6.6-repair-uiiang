.class final Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;
.super Ljava/lang/Object;
.source "MediaCodecVideoRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VideoFrameProcessorAccessor"
.end annotation


# static fields
.field private static buildScaleAndRotateTransformationMethod:Ljava/lang/reflect/Method;

.field private static buildVideoFrameProcessorFactoryMethod:Ljava/lang/reflect/Method;

.field private static scaleAndRotateTransformationBuilderConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static setRotationMethod:Ljava/lang/reflect/Method;

.field private static videoFrameProcessorFactoryBuilderConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRotationEffect(F)Lcom/google/android/exoplayer2/util/Effect;
    .registers 6
    .param p0, "rotationDegrees"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2332
    invoke-static {}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->prepare()V

    .line 2333
    sget-object v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->scaleAndRotateTransformationBuilderConstructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2334
    .local v0, "builder":Ljava/lang/Object;
    sget-object v2, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->setRotationMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2335
    sget-object v2, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->buildScaleAndRotateTransformationMethod:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/util/Effect;

    return-object v1
.end method

.method public static getFrameProcessorFactory()Lcom/google/android/exoplayer2/util/VideoFrameProcessor$Factory;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2339
    invoke-static {}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->prepare()V

    .line 2340
    sget-object v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->videoFrameProcessorFactoryBuilderConstructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2341
    .local v0, "builder":Ljava/lang/Object;
    sget-object v2, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->buildVideoFrameProcessorFactoryMethod:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    .line 2342
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/util/VideoFrameProcessor$Factory;

    .line 2341
    return-object v1
.end method

.method private static prepare()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "scaleAndRotateTransformationBuilderConstructor",
            "setRotationMethod",
            "buildScaleAndRotateTransformationMethod",
            "videoFrameProcessorFactoryBuilderConstructor",
            "buildVideoFrameProcessorFactoryMethod"
        }
    .end annotation

    .line 2353
    sget-object v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->scaleAndRotateTransformationBuilderConstructor:Ljava/lang/reflect/Constructor;

    const-string v1, "build"

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->setRotationMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->buildScaleAndRotateTransformationMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_35

    .line 2356
    :cond_f
    nop

    .line 2357
    const-string v0, "com.google.android.exoplayer2.effect.ScaleAndRotateTransformation$Builder"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2359
    .local v0, "scaleAndRotateTransformationBuilderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v3, v2, [Ljava/lang/Class;

    .line 2360
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    sput-object v3, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->scaleAndRotateTransformationBuilderConstructor:Ljava/lang/reflect/Constructor;

    .line 2361
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v2

    .line 2362
    const-string v4, "setRotationDegrees"

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->setRotationMethod:Ljava/lang/reflect/Method;

    .line 2363
    new-array v3, v2, [Ljava/lang/Class;

    .line 2364
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->buildScaleAndRotateTransformationMethod:Ljava/lang/reflect/Method;

    .line 2366
    .end local v0    # "scaleAndRotateTransformationBuilderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_35
    sget-object v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->videoFrameProcessorFactoryBuilderConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_3d

    sget-object v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->buildVideoFrameProcessorFactoryMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_54

    .line 2368
    :cond_3d
    nop

    .line 2369
    const-string v0, "com.google.android.exoplayer2.effect.DefaultVideoFrameProcessor$Factory$Builder"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2371
    .local v0, "videoFrameProcessorFactoryBuilderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v3, v2, [Ljava/lang/Class;

    .line 2372
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    sput-object v3, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->videoFrameProcessorFactoryBuilderConstructor:Ljava/lang/reflect/Constructor;

    .line 2373
    new-array v2, v2, [Ljava/lang/Class;

    .line 2374
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->buildVideoFrameProcessorFactoryMethod:Ljava/lang/reflect/Method;

    .line 2376
    .end local v0    # "videoFrameProcessorFactoryBuilderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_54
    return-void
.end method
