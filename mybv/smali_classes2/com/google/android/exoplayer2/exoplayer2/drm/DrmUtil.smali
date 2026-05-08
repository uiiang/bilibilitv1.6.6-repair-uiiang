.class public final Lcom/google/android/exoplayer2/drm/DrmUtil;
.super Ljava/lang/Object;
.source "DrmUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/DrmUtil$Api21;,
        Lcom/google/android/exoplayer2/drm/DrmUtil$Api23;,
        Lcom/google/android/exoplayer2/drm/DrmUtil$Api18;,
        Lcom/google/android/exoplayer2/drm/DrmUtil$ErrorSource;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ERROR_SOURCE_EXO_MEDIA_DRM:I = 0x1

.field public static final ERROR_SOURCE_LICENSE_ACQUISITION:I = 0x2

.field public static final ERROR_SOURCE_PROVISIONING:I = 0x3


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorCodeForMediaDrmException(Ljava/lang/Exception;I)I
    .registers 6
    .param p0, "exception"    # Ljava/lang/Exception;
    .param p1, "errorSource"    # I

    .line 83
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_11

    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/DrmUtil$Api21;->isMediaDrmStateException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 84
    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/DrmUtil$Api21;->mediaDrmStateExceptionToErrorCode(Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 85
    :cond_11
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    const/16 v2, 0x1776

    if-lt v0, v1, :cond_20

    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/DrmUtil$Api23;->isMediaDrmResetException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 86
    return v2

    .line 87
    :cond_20
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1772

    const/16 v3, 0x12

    if-lt v0, v3, :cond_2f

    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/DrmUtil$Api18;->isNotProvisionedException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 88
    return v1

    .line 89
    :cond_2f
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-lt v0, v3, :cond_3c

    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/DrmUtil$Api18;->isDeniedByServerException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 90
    const/16 v0, 0x1777

    return v0

    .line 91
    :cond_3c
    instance-of v0, p0, Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;

    if-eqz v0, :cond_43

    .line 92
    const/16 v0, 0x1771

    return v0

    .line 93
    :cond_43
    instance-of v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MissingSchemeDataException;

    if-eqz v0, :cond_4a

    .line 94
    const/16 v0, 0x1773

    return v0

    .line 95
    :cond_4a
    instance-of v0, p0, Lcom/google/android/exoplayer2/drm/KeysExpiredException;

    if-eqz v0, :cond_51

    .line 96
    const/16 v0, 0x1778

    return v0

    .line 97
    :cond_51
    const/4 v0, 0x1

    if-ne p1, v0, :cond_55

    .line 100
    return v2

    .line 101
    :cond_55
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5b

    .line 102
    const/16 v0, 0x1774

    return v0

    .line 103
    :cond_5b
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5f

    .line 104
    return v1

    .line 107
    :cond_5f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
