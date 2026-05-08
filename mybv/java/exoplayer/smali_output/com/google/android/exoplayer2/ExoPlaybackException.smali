.class public final Lcom/google/android/exoplayer2/ExoPlaybackException;
.super Lcom/google/android/exoplayer2/PlaybackException;
.source "ExoPlaybackException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ExoPlaybackException$Type;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/ExoPlaybackException;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_IS_RECOVERABLE:Ljava/lang/String;

.field private static final FIELD_RENDERER_FORMAT:Ljava/lang/String;

.field private static final FIELD_RENDERER_FORMAT_SUPPORT:Ljava/lang/String;

.field private static final FIELD_RENDERER_INDEX:Ljava/lang/String;

.field private static final FIELD_RENDERER_NAME:Ljava/lang/String;

.field private static final FIELD_TYPE:Ljava/lang/String;

.field public static final TYPE_REMOTE:I = 0x3

.field public static final TYPE_RENDERER:I = 0x1

.field public static final TYPE_SOURCE:I = 0x0

.field public static final TYPE_UNEXPECTED:I = 0x2


# instance fields
.field final isRecoverable:Z

.field public final mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaPeriodId;

.field public final rendererFormat:Lcom/google/android/exoplayer2/Format;

.field public final rendererFormatSupport:I

.field public final rendererIndex:I

.field public final rendererName:Ljava/lang/String;

.field public final type:I


# direct methods
.method public static synthetic $r8$lambda$mXbXdGG_PHMarv0ObcHmIhB4uIw(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/ExoPlaybackException;
    .registers 2

    new-instance v0, Lcom/google/android/exoplayer2/ExoPlaybackException;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ExoPlaybackException;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 398
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlaybackException$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/ExoPlaybackException$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/ExoPlaybackException;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    .line 400
    const/16 v0, 0x3e9

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/ExoPlaybackException;->FIELD_TYPE:Ljava/lang/String;

    .line 401
    nop

    .line 402
    const/16 v0, 0x3ea

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/ExoPlaybackException;->FIELD_RENDERER_NAME:Ljava/lang/String;

    .line 403
    nop

    .line 404
    const/16 v0, 0x3eb

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/ExoPlaybackException;->FIELD_RENDERER_INDEX:Ljava/lang/String;

    .line 405
    nop

    .line 406
    const/16 v0, 0x3ec

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/ExoPlaybackException;->FIELD_RENDERER_FORMAT:Ljava/lang/String;

    .line 407
    nop

    .line 408
    const/16 v0, 0x3ed

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/ExoPlaybackException;->FIELD_RENDERER_FORMAT_SUPPORT:Ljava/lang/String;

    .line 409
    nop

    .line 410
    const/16 v0, 0x3ee

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/ExoPlaybackException;->FIELD_IS_RECOVERABLE:Ljava/lang/String;

    .line 409
    return-void
.end method

.method private constructor <init>(ILjava/lang/Throwable;I)V
    .registers 14
    .param p1, "type"    # I
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "errorCode"    # I

    .line 209
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/ExoPlaybackException;-><init>(ILjava/lang/Throwable;Ljava/lang/String;ILjava/lang/String;ILcom/google/android/exoplayer2/Format;IZ)V

    .line 219
    return-void
.end method

.method private constructor <init>(ILjava/lang/Throwable;Ljava/lang/String;ILjava/lang/String;ILcom/google/android/exoplayer2/Format;IZ)V
    .registers 24
    .param p1, "type"    # I
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "customMessage"    # Ljava/lang/String;
    .param p4, "errorCode"    # I
    .param p5, "rendererName"    # Ljava/lang/String;
    .param p6, "rendererIndex"    # I
    .param p7, "rendererFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p8, "rendererFormatSupport"    # I
    .param p9, "isRecoverable"    # Z

    .line 231
    nop

    .line 232
    move v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move/from16 v3, p6

    move-object/from16 v4, p7

    move/from16 v5, p8

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/ExoPlaybackException;->deriveMessage(ILjava/lang/String;Ljava/lang/String;ILcom/google/android/exoplayer2/Format;I)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    .line 247
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 231
    move-object v1, p0

    move-object/from16 v3, p2

    move/from16 v4, p4

    move v5, p1

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v13, p9

    invoke-direct/range {v1 .. v13}, Lcom/google/android/exoplayer2/ExoPlaybackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILcom/google/android/exoplayer2/Format;ILcom/google/android/exoplayer2/source/MediaPeriodId;JZ)V

    .line 249
    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 252
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/PlaybackException;-><init>(Landroid/os/Bundle;)V

    .line 253
    sget-object v0, Lcom/google/android/exoplayer2/ExoPlaybackException;->FIELD_TYPE:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    .line 254
    sget-object v0, Lcom/google/android/exoplayer2/ExoPlaybackException;->FIELD_RENDERER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererName:Ljava/lang/String;

    .line 255
    sget-object v0, Lcom/google/android/exoplayer2/ExoPlaybackException;->FIELD_RENDERER_INDEX:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererIndex:I

    .line 256
    sget-object v0, Lcom/google/android/exoplayer2/ExoPlaybackException;->FIELD_RENDERER_FORMAT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 257
    .local v0, "rendererFormatBundle":Landroid/os/Bundle;
    nop

    .line 258
    const/4 v1, 0x0

    if-nez v0, :cond_29

    move-object v2, v1

    goto :goto_31

    :cond_29
    sget-object v2, Lcom/google/android/exoplayer2/Format;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/Format;

    :goto_31
    iput-object v2, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererFormat:Lcom/google/android/exoplayer2/Format;

    .line 259
    sget-object v2, Lcom/google/android/exoplayer2/ExoPlaybackException;->FIELD_RENDERER_FORMAT_SUPPORT:Ljava/lang/String;

    .line 260
    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererFormatSupport:I

    .line 261
    sget-object v2, Lcom/google/android/exoplayer2/ExoPlaybackException;->FIELD_IS_RECOVERABLE:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->isRecoverable:Z

    .line 262
    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaPeriodId;

    .line 263
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILcom/google/android/exoplayer2/Format;ILcom/google/android/exoplayer2/source/MediaPeriodId;JZ)V
    .registers 22
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "errorCode"    # I
    .param p4, "type"    # I
    .param p5, "rendererName"    # Ljava/lang/String;
    .param p6, "rendererIndex"    # I
    .param p7, "rendererFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p8, "rendererFormatSupport"    # I
    .param p9, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaPeriodId;
    .param p10, "timestampMs"    # J
    .param p12, "isRecoverable"    # Z

    .line 277
    move-object v6, p0

    move v7, p4

    move/from16 v8, p12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p10

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/PlaybackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IJ)V

    .line 278
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz v8, :cond_16

    if-ne v7, v1, :cond_14

    goto :goto_16

    :cond_14
    const/4 v2, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v2, 0x1

    :goto_17
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 279
    if-nez p2, :cond_1f

    const/4 v2, 0x3

    if-ne v7, v2, :cond_20

    :cond_1f
    const/4 v0, 0x1

    :cond_20
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 280
    iput v7, v6, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    .line 281
    move-object v0, p5

    iput-object v0, v6, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererName:Ljava/lang/String;

    .line 282
    move v1, p6

    iput v1, v6, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererIndex:I

    .line 283
    move-object/from16 v2, p7

    iput-object v2, v6, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererFormat:Lcom/google/android/exoplayer2/Format;

    .line 284
    move/from16 v3, p8

    iput v3, v6, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererFormatSupport:I

    .line 285
    move-object/from16 v4, p9

    iput-object v4, v6, Lcom/google/android/exoplayer2/ExoPlaybackException;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaPeriodId;

    .line 286
    iput-boolean v8, v6, Lcom/google/android/exoplayer2/ExoPlaybackException;->isRecoverable:Z

    .line 287
    return-void
.end method

.method public static createForRemote(Ljava/lang/String;)Lcom/google/android/exoplayer2/ExoPlaybackException;
    .registers 12
    .param p0, "message"    # Ljava/lang/String;

    .line 196
    new-instance v10, Lcom/google/android/exoplayer2/ExoPlaybackException;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/16 v4, 0x3e9

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v0, v10

    move-object v3, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/ExoPlaybackException;-><init>(ILjava/lang/Throwable;Ljava/lang/String;ILjava/lang/String;ILcom/google/android/exoplayer2/Format;IZ)V

    return-object v10
.end method

.method public static createForRenderer(Ljava/lang/Throwable;Ljava/lang/String;ILcom/google/android/exoplayer2/Format;IZI)Lcom/google/android/exoplayer2/ExoPlaybackException;
    .registers 18
    .param p0, "cause"    # Ljava/lang/Throwable;
    .param p1, "rendererName"    # Ljava/lang/String;
    .param p2, "rendererIndex"    # I
    .param p3, "rendererFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p4, "rendererFormatSupport"    # I
    .param p5, "isRecoverable"    # Z
    .param p6, "errorCode"    # I

    .line 156
    new-instance v10, Lcom/google/android/exoplayer2/ExoPlaybackException;

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 164
    if-nez p3, :cond_9

    const/4 v0, 0x4

    const/4 v8, 0x4

    goto :goto_a

    :cond_9
    move v8, p4

    :goto_a
    move-object v0, v10

    move-object v2, p0

    move/from16 v4, p6

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/ExoPlaybackException;-><init>(ILjava/lang/Throwable;Ljava/lang/String;ILjava/lang/String;ILcom/google/android/exoplayer2/Format;IZ)V

    .line 156
    return-object v10
.end method

.method public static createForSource(Ljava/io/IOException;I)Lcom/google/android/exoplayer2/ExoPlaybackException;
    .registers 4
    .param p0, "cause"    # Ljava/io/IOException;
    .param p1, "errorCode"    # I

    .line 129
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlaybackException;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method

.method public static createForUnexpected(Ljava/lang/RuntimeException;)Lcom/google/android/exoplayer2/ExoPlaybackException;
    .registers 2
    .param p0, "cause"    # Ljava/lang/RuntimeException;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 174
    const/16 v0, 0x3e8

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    return-object v0
.end method

.method public static createForUnexpected(Ljava/lang/RuntimeException;I)Lcom/google/android/exoplayer2/ExoPlaybackException;
    .registers 4
    .param p0, "cause"    # Ljava/lang/RuntimeException;
    .param p1, "errorCode"    # I

    .line 186
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlaybackException;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method

.method private static deriveMessage(ILjava/lang/String;Ljava/lang/String;ILcom/google/android/exoplayer2/Format;I)Ljava/lang/String;
    .registers 9
    .param p0, "type"    # I
    .param p1, "customMessage"    # Ljava/lang/String;
    .param p2, "rendererName"    # Ljava/lang/String;
    .param p3, "rendererIndex"    # I
    .param p4, "rendererFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p5, "rendererFormatSupport"    # I

    .line 366
    packed-switch p0, :pswitch_data_5a

    .line 386
    :pswitch_3
    const-string v0, "Unexpected runtime error"

    .local v0, "message":Ljava/lang/String;
    goto :goto_3c

    .line 382
    .end local v0    # "message":Ljava/lang/String;
    :pswitch_6
    const-string v0, "Remote error"

    .line 383
    .restart local v0    # "message":Ljava/lang/String;
    goto :goto_3c

    .line 371
    .end local v0    # "message":Ljava/lang/String;
    :pswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " error, index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", format_supported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 379
    invoke-static {p5}, Lcom/google/android/exoplayer2/util/Util;->getFormatSupportString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 380
    .restart local v0    # "message":Ljava/lang/String;
    goto :goto_3c

    .line 368
    .end local v0    # "message":Ljava/lang/String;
    :pswitch_39
    const-string v0, "Source error"

    .line 369
    .restart local v0    # "message":Ljava/lang/String;
    nop

    .line 389
    :goto_3c
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_59

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 392
    :cond_59
    return-object v0

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_39
        :pswitch_9
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method copyWithMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaPeriodId;)Lcom/google/android/exoplayer2/ExoPlaybackException;
    .registers 16
    .param p1, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaPeriodId;

    .line 344
    new-instance v13, Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 345
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 346
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->errorCode:I

    iget v4, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererName:Ljava/lang/String;

    iget v6, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererIndex:I

    iget-object v7, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererFormat:Lcom/google/android/exoplayer2/Format;

    iget v8, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererFormatSupport:I

    iget-wide v10, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->timestampMs:J

    iget-boolean v12, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->isRecoverable:Z

    move-object v0, v13

    move-object v9, p1

    invoke-direct/range {v0 .. v12}, Lcom/google/android/exoplayer2/ExoPlaybackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILcom/google/android/exoplayer2/Format;ILcom/google/android/exoplayer2/source/MediaPeriodId;JZ)V

    .line 344
    return-object v13
.end method

.method public errorInfoEquals(Lcom/google/android/exoplayer2/PlaybackException;)Z
    .registers 6
    .param p1, "that"    # Lcom/google/android/exoplayer2/PlaybackException;

    .line 321
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/PlaybackException;->errorInfoEquals(Lcom/google/android/exoplayer2/PlaybackException;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 322
    return v1

    .line 326
    :cond_8
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 327
    .local v0, "other":Lcom/google/android/exoplayer2/ExoPlaybackException;
    iget v2, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    iget v3, v0, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    if-ne v2, v3, :cond_46

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererName:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererName:Ljava/lang/String;

    .line 328
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    iget v2, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererIndex:I

    iget v3, v0, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererIndex:I

    if-ne v2, v3, :cond_46

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererFormat:Lcom/google/android/exoplayer2/Format;

    .line 330
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    iget v2, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererFormatSupport:I

    iget v3, v0, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererFormatSupport:I

    if-ne v2, v3, :cond_46

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaPeriodId;

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlaybackException;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaPeriodId;

    .line 332
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->isRecoverable:Z

    iget-boolean v3, v0, Lcom/google/android/exoplayer2/ExoPlaybackException;->isRecoverable:Z

    if-ne v2, v3, :cond_46

    const/4 v1, 0x1

    goto :goto_47

    :cond_46
    nop

    .line 327
    :goto_47
    return v1
.end method

.method public getRendererException()Ljava/lang/Exception;
    .registers 3

    .line 305
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 306
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    return-object v0
.end method

.method public getSourceException()Ljava/io/IOException;
    .registers 2

    .line 295
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 296
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    return-object v0
.end method

.method public getUnexpectedException()Ljava/lang/RuntimeException;
    .registers 3

    .line 315
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 316
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 4

    .line 420
    invoke-super {p0}, Lcom/google/android/exoplayer2/PlaybackException;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 421
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v1, Lcom/google/android/exoplayer2/ExoPlaybackException;->FIELD_TYPE:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 422
    sget-object v1, Lcom/google/android/exoplayer2/ExoPlaybackException;->FIELD_RENDERER_NAME:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    sget-object v1, Lcom/google/android/exoplayer2/ExoPlaybackException;->FIELD_RENDERER_INDEX:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 424
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz v1, :cond_26

    .line 425
    sget-object v2, Lcom/google/android/exoplayer2/ExoPlaybackException;->FIELD_RENDERER_FORMAT:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Format;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 427
    :cond_26
    sget-object v1, Lcom/google/android/exoplayer2/ExoPlaybackException;->FIELD_RENDERER_FORMAT_SUPPORT:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererFormatSupport:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 428
    sget-object v1, Lcom/google/android/exoplayer2/ExoPlaybackException;->FIELD_IS_RECOVERABLE:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->isRecoverable:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 429
    return-object v0
.end method
