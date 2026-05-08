.class public Lcom/google/android/exoplayer2/PlaybackException;
.super Ljava/lang/Exception;
.source "PlaybackException.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/PlaybackException$ErrorCode;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/PlaybackException;",
            ">;"
        }
    .end annotation
.end field

.field public static final CUSTOM_ERROR_CODE_BASE:I = 0xf4240

.field public static final ERROR_CODE_AUDIO_TRACK_INIT_FAILED:I = 0x1389

.field public static final ERROR_CODE_AUDIO_TRACK_WRITE_FAILED:I = 0x138a

.field public static final ERROR_CODE_BEHIND_LIVE_WINDOW:I = 0x3ea

.field public static final ERROR_CODE_DECODER_INIT_FAILED:I = 0xfa1

.field public static final ERROR_CODE_DECODER_QUERY_FAILED:I = 0xfa2

.field public static final ERROR_CODE_DECODING_FAILED:I = 0xfa3

.field public static final ERROR_CODE_DECODING_FORMAT_EXCEEDS_CAPABILITIES:I = 0xfa4

.field public static final ERROR_CODE_DECODING_FORMAT_UNSUPPORTED:I = 0xfa5

.field public static final ERROR_CODE_DRM_CONTENT_ERROR:I = 0x1773

.field public static final ERROR_CODE_DRM_DEVICE_REVOKED:I = 0x1777

.field public static final ERROR_CODE_DRM_DISALLOWED_OPERATION:I = 0x1775

.field public static final ERROR_CODE_DRM_LICENSE_ACQUISITION_FAILED:I = 0x1774

.field public static final ERROR_CODE_DRM_LICENSE_EXPIRED:I = 0x1778

.field public static final ERROR_CODE_DRM_PROVISIONING_FAILED:I = 0x1772

.field public static final ERROR_CODE_DRM_SCHEME_UNSUPPORTED:I = 0x1771

.field public static final ERROR_CODE_DRM_SYSTEM_ERROR:I = 0x1776

.field public static final ERROR_CODE_DRM_UNSPECIFIED:I = 0x1770

.field public static final ERROR_CODE_FAILED_RUNTIME_CHECK:I = 0x3ec

.field public static final ERROR_CODE_IO_BAD_HTTP_STATUS:I = 0x7d4

.field public static final ERROR_CODE_IO_CLEARTEXT_NOT_PERMITTED:I = 0x7d7

.field public static final ERROR_CODE_IO_FILE_NOT_FOUND:I = 0x7d5

.field public static final ERROR_CODE_IO_INVALID_HTTP_CONTENT_TYPE:I = 0x7d3

.field public static final ERROR_CODE_IO_NETWORK_CONNECTION_FAILED:I = 0x7d1

.field public static final ERROR_CODE_IO_NETWORK_CONNECTION_TIMEOUT:I = 0x7d2

.field public static final ERROR_CODE_IO_NO_PERMISSION:I = 0x7d6

.field public static final ERROR_CODE_IO_READ_POSITION_OUT_OF_RANGE:I = 0x7d8

.field public static final ERROR_CODE_IO_UNSPECIFIED:I = 0x7d0

.field public static final ERROR_CODE_PARSING_CONTAINER_MALFORMED:I = 0xbb9

.field public static final ERROR_CODE_PARSING_CONTAINER_UNSUPPORTED:I = 0xbbb

.field public static final ERROR_CODE_PARSING_MANIFEST_MALFORMED:I = 0xbba

.field public static final ERROR_CODE_PARSING_MANIFEST_UNSUPPORTED:I = 0xbbc

.field public static final ERROR_CODE_REMOTE_ERROR:I = 0x3e9

.field public static final ERROR_CODE_TIMEOUT:I = 0x3eb

.field public static final ERROR_CODE_UNSPECIFIED:I = 0x3e8

.field public static final ERROR_CODE_VIDEO_FRAME_PROCESSING_FAILED:I = 0x1b59

.field public static final ERROR_CODE_VIDEO_FRAME_PROCESSOR_INIT_FAILED:I = 0x1b58

.field protected static final FIELD_CUSTOM_ID_BASE:I = 0x3e8

.field private static final FIELD_INT_ERROR_CODE:Ljava/lang/String;

.field private static final FIELD_LONG_TIMESTAMP_MS:Ljava/lang/String;

.field private static final FIELD_STRING_CAUSE_CLASS_NAME:Ljava/lang/String;

.field private static final FIELD_STRING_CAUSE_MESSAGE:Ljava/lang/String;

.field private static final FIELD_STRING_MESSAGE:Ljava/lang/String;


# instance fields
.field public final errorCode:I

.field public final timestampMs:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 420
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/PlaybackException;->FIELD_INT_ERROR_CODE:Ljava/lang/String;

    .line 421
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/PlaybackException;->FIELD_LONG_TIMESTAMP_MS:Ljava/lang/String;

    .line 422
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/PlaybackException;->FIELD_STRING_MESSAGE:Ljava/lang/String;

    .line 423
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/PlaybackException;->FIELD_STRING_CAUSE_CLASS_NAME:Ljava/lang/String;

    .line 424
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/PlaybackException;->FIELD_STRING_CAUSE_MESSAGE:Ljava/lang/String;

    .line 436
    new-instance v0, Lcom/google/android/exoplayer2/PlaybackException$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/PlaybackException$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/PlaybackException;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 366
    sget-object v0, Lcom/google/android/exoplayer2/PlaybackException;->FIELD_STRING_MESSAGE:Ljava/lang/String;

    .line 367
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 368
    invoke-static {p1}, Lcom/google/android/exoplayer2/PlaybackException;->getCauseFromBundle(Landroid/os/Bundle;)Ljava/lang/Throwable;

    move-result-object v3

    sget-object v0, Lcom/google/android/exoplayer2/PlaybackException;->FIELD_INT_ERROR_CODE:Ljava/lang/String;

    .line 369
    const/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    sget-object v0, Lcom/google/android/exoplayer2/PlaybackException;->FIELD_LONG_TIMESTAMP_MS:Ljava/lang/String;

    .line 372
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 371
    invoke-virtual {p1, v0, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 366
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/PlaybackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IJ)V

    .line 373
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .registers 11
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "errorCode"    # I

    .line 361
    sget-object v0, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/PlaybackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IJ)V

    .line 362
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;IJ)V
    .registers 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "errorCode"    # I
    .param p4, "timestampMs"    # J

    .line 381
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 382
    iput p3, p0, Lcom/google/android/exoplayer2/PlaybackException;->errorCode:I

    .line 383
    iput-wide p4, p0, Lcom/google/android/exoplayer2/PlaybackException;->timestampMs:J

    .line 384
    return-void
.end method

.method private static createRemoteException(Ljava/lang/String;)Landroid/os/RemoteException;
    .registers 2
    .param p0, "message"    # Ljava/lang/String;

    .line 463
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0, p0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static createThrowable(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;
    .registers 6
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 457
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method private static getCauseFromBundle(Landroid/os/Bundle;)Ljava/lang/Throwable;
    .registers 6
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 468
    sget-object v0, Lcom/google/android/exoplayer2/PlaybackException;->FIELD_STRING_CAUSE_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, "causeClassName":Ljava/lang/String;
    sget-object v1, Lcom/google/android/exoplayer2/PlaybackException;->FIELD_STRING_CAUSE_MESSAGE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 470
    .local v1, "causeMessage":Ljava/lang/String;
    const/4 v2, 0x0

    .line 471
    .local v2, "cause":Ljava/lang/Throwable;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_35

    .line 473
    :try_start_13
    const-class v3, Lcom/google/android/exoplayer2/PlaybackException;

    .line 475
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 474
    const/4 v4, 0x1

    invoke-static {v0, v4, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 476
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Ljava/lang/Throwable;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 477
    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/PlaybackException;->createThrowable(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v4
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_2e

    move-object v2, v4

    .line 483
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2b
    if-nez v2, :cond_35

    .line 486
    goto :goto_31

    .line 479
    :catchall_2e
    move-exception v3

    .line 483
    if-nez v2, :cond_35

    .line 486
    :goto_31
    invoke-static {v1}, Lcom/google/android/exoplayer2/PlaybackException;->createRemoteException(Ljava/lang/String;)Landroid/os/RemoteException;

    move-result-object v2

    .line 490
    :cond_35
    return-object v2
.end method

.method public static getErrorCodeName(I)Ljava/lang/String;
    .registers 2
    .param p0, "errorCode"    # I

    .line 255
    sparse-switch p0, :sswitch_data_7a

    .line 329
    const v0, 0xf4240

    if-lt p0, v0, :cond_77

    .line 330
    const-string v0, "custom error code"

    return-object v0

    .line 327
    :sswitch_b
    const-string v0, "ERROR_CODE_VIDEO_FRAME_PROCESSING_FAILED"

    return-object v0

    .line 325
    :sswitch_e
    const-string v0, "ERROR_CODE_VIDEO_FRAME_PROCESSOR_INIT_FAILED"

    return-object v0

    .line 323
    :sswitch_11
    const-string v0, "ERROR_CODE_DRM_LICENSE_EXPIRED"

    return-object v0

    .line 321
    :sswitch_14
    const-string v0, "ERROR_CODE_DRM_DEVICE_REVOKED"

    return-object v0

    .line 319
    :sswitch_17
    const-string v0, "ERROR_CODE_DRM_SYSTEM_ERROR"

    return-object v0

    .line 317
    :sswitch_1a
    const-string v0, "ERROR_CODE_DRM_DISALLOWED_OPERATION"

    return-object v0

    .line 315
    :sswitch_1d
    const-string v0, "ERROR_CODE_DRM_LICENSE_ACQUISITION_FAILED"

    return-object v0

    .line 313
    :sswitch_20
    const-string v0, "ERROR_CODE_DRM_CONTENT_ERROR"

    return-object v0

    .line 311
    :sswitch_23
    const-string v0, "ERROR_CODE_DRM_PROVISIONING_FAILED"

    return-object v0

    .line 309
    :sswitch_26
    const-string v0, "ERROR_CODE_DRM_SCHEME_UNSUPPORTED"

    return-object v0

    .line 307
    :sswitch_29
    const-string v0, "ERROR_CODE_DRM_UNSPECIFIED"

    return-object v0

    .line 305
    :sswitch_2c
    const-string v0, "ERROR_CODE_AUDIO_TRACK_WRITE_FAILED"

    return-object v0

    .line 303
    :sswitch_2f
    const-string v0, "ERROR_CODE_AUDIO_TRACK_INIT_FAILED"

    return-object v0

    .line 301
    :sswitch_32
    const-string v0, "ERROR_CODE_DECODING_FORMAT_UNSUPPORTED"

    return-object v0

    .line 299
    :sswitch_35
    const-string v0, "ERROR_CODE_DECODING_FORMAT_EXCEEDS_CAPABILITIES"

    return-object v0

    .line 297
    :sswitch_38
    const-string v0, "ERROR_CODE_DECODING_FAILED"

    return-object v0

    .line 295
    :sswitch_3b
    const-string v0, "ERROR_CODE_DECODER_QUERY_FAILED"

    return-object v0

    .line 293
    :sswitch_3e
    const-string v0, "ERROR_CODE_DECODER_INIT_FAILED"

    return-object v0

    .line 291
    :sswitch_41
    const-string v0, "ERROR_CODE_PARSING_MANIFEST_UNSUPPORTED"

    return-object v0

    .line 289
    :sswitch_44
    const-string v0, "ERROR_CODE_PARSING_CONTAINER_UNSUPPORTED"

    return-object v0

    .line 287
    :sswitch_47
    const-string v0, "ERROR_CODE_PARSING_MANIFEST_MALFORMED"

    return-object v0

    .line 285
    :sswitch_4a
    const-string v0, "ERROR_CODE_PARSING_CONTAINER_MALFORMED"

    return-object v0

    .line 283
    :sswitch_4d
    const-string v0, "ERROR_CODE_IO_READ_POSITION_OUT_OF_RANGE"

    return-object v0

    .line 281
    :sswitch_50
    const-string v0, "ERROR_CODE_IO_CLEARTEXT_NOT_PERMITTED"

    return-object v0

    .line 279
    :sswitch_53
    const-string v0, "ERROR_CODE_IO_NO_PERMISSION"

    return-object v0

    .line 277
    :sswitch_56
    const-string v0, "ERROR_CODE_IO_FILE_NOT_FOUND"

    return-object v0

    .line 275
    :sswitch_59
    const-string v0, "ERROR_CODE_IO_BAD_HTTP_STATUS"

    return-object v0

    .line 273
    :sswitch_5c
    const-string v0, "ERROR_CODE_IO_INVALID_HTTP_CONTENT_TYPE"

    return-object v0

    .line 271
    :sswitch_5f
    const-string v0, "ERROR_CODE_IO_NETWORK_CONNECTION_TIMEOUT"

    return-object v0

    .line 269
    :sswitch_62
    const-string v0, "ERROR_CODE_IO_NETWORK_CONNECTION_FAILED"

    return-object v0

    .line 267
    :sswitch_65
    const-string v0, "ERROR_CODE_IO_UNSPECIFIED"

    return-object v0

    .line 265
    :sswitch_68
    const-string v0, "ERROR_CODE_FAILED_RUNTIME_CHECK"

    return-object v0

    .line 263
    :sswitch_6b
    const-string v0, "ERROR_CODE_TIMEOUT"

    return-object v0

    .line 261
    :sswitch_6e
    const-string v0, "ERROR_CODE_BEHIND_LIVE_WINDOW"

    return-object v0

    .line 259
    :sswitch_71
    const-string v0, "ERROR_CODE_REMOTE_ERROR"

    return-object v0

    .line 257
    :sswitch_74
    const-string v0, "ERROR_CODE_UNSPECIFIED"

    return-object v0

    .line 332
    :cond_77
    const-string v0, "invalid error code"

    return-object v0

    :sswitch_data_7a
    .sparse-switch
        0x3e8 -> :sswitch_74
        0x3e9 -> :sswitch_71
        0x3ea -> :sswitch_6e
        0x3eb -> :sswitch_6b
        0x3ec -> :sswitch_68
        0x7d0 -> :sswitch_65
        0x7d1 -> :sswitch_62
        0x7d2 -> :sswitch_5f
        0x7d3 -> :sswitch_5c
        0x7d4 -> :sswitch_59
        0x7d5 -> :sswitch_56
        0x7d6 -> :sswitch_53
        0x7d7 -> :sswitch_50
        0x7d8 -> :sswitch_4d
        0xbb9 -> :sswitch_4a
        0xbba -> :sswitch_47
        0xbbb -> :sswitch_44
        0xbbc -> :sswitch_41
        0xfa1 -> :sswitch_3e
        0xfa2 -> :sswitch_3b
        0xfa3 -> :sswitch_38
        0xfa4 -> :sswitch_35
        0xfa5 -> :sswitch_32
        0x1389 -> :sswitch_2f
        0x138a -> :sswitch_2c
        0x1770 -> :sswitch_29
        0x1771 -> :sswitch_26
        0x1772 -> :sswitch_23
        0x1773 -> :sswitch_20
        0x1774 -> :sswitch_1d
        0x1775 -> :sswitch_1a
        0x1776 -> :sswitch_17
        0x1777 -> :sswitch_14
        0x1778 -> :sswitch_11
        0x1b58 -> :sswitch_e
        0x1b59 -> :sswitch_b
    .end sparse-switch
.end method


# virtual methods
.method public errorInfoEquals(Lcom/google/android/exoplayer2/PlaybackException;)Z
    .registers 11
    .param p1, "other"    # Lcom/google/android/exoplayer2/PlaybackException;

    .line 394
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 395
    return v0

    .line 397
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_61

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_61

    .line 401
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/PlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 402
    .local v2, "thisCause":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 403
    .local v3, "thatCause":Ljava/lang/Throwable;
    if-eqz v2, :cond_3c

    if-eqz v3, :cond_3c

    .line 404
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 405
    return v1

    .line 407
    :cond_2d
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_41

    .line 408
    return v1

    .line 410
    :cond_3c
    if-nez v2, :cond_60

    if-eqz v3, :cond_41

    goto :goto_60

    .line 413
    :cond_41
    iget v4, p0, Lcom/google/android/exoplayer2/PlaybackException;->errorCode:I

    iget v5, p1, Lcom/google/android/exoplayer2/PlaybackException;->errorCode:I

    if-ne v4, v5, :cond_5e

    .line 414
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/PlaybackException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlaybackException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    iget-wide v4, p0, Lcom/google/android/exoplayer2/PlaybackException;->timestampMs:J

    iget-wide v6, p1, Lcom/google/android/exoplayer2/PlaybackException;->timestampMs:J

    cmp-long v8, v4, v6

    if-nez v8, :cond_5e

    goto :goto_5f

    :cond_5e
    const/4 v0, 0x0

    .line 413
    :goto_5f
    return v0

    .line 411
    :cond_60
    :goto_60
    return v1

    .line 398
    .end local v2    # "thisCause":Ljava/lang/Throwable;
    .end local v3    # "thatCause":Ljava/lang/Throwable;
    :cond_61
    :goto_61
    return v1
.end method

.method public final getErrorCodeName()Ljava/lang/String;
    .registers 2

    .line 342
    iget v0, p0, Lcom/google/android/exoplayer2/PlaybackException;->errorCode:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/PlaybackException;->getErrorCodeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 5

    .line 441
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 442
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v1, Lcom/google/android/exoplayer2/PlaybackException;->FIELD_INT_ERROR_CODE:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/PlaybackException;->errorCode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 443
    sget-object v1, Lcom/google/android/exoplayer2/PlaybackException;->FIELD_LONG_TIMESTAMP_MS:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/PlaybackException;->timestampMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 444
    sget-object v1, Lcom/google/android/exoplayer2/PlaybackException;->FIELD_STRING_MESSAGE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/PlaybackException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/PlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 446
    .local v1, "cause":Ljava/lang/Throwable;
    if-eqz v1, :cond_38

    .line 447
    sget-object v2, Lcom/google/android/exoplayer2/PlaybackException;->FIELD_STRING_CAUSE_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    sget-object v2, Lcom/google/android/exoplayer2/PlaybackException;->FIELD_STRING_CAUSE_MESSAGE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    :cond_38
    return-object v0
.end method
