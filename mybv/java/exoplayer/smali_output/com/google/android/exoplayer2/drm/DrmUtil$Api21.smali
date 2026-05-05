.class final Lcom/google/android/exoplayer2/drm/DrmUtil$Api21;
.super Ljava/lang/Object;
.source "DrmUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/DrmUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api21"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMediaDrmStateException(Ljava/lang/Throwable;)Z
    .registers 2
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 132
    instance-of v0, p0, Landroid/media/MediaDrm$MediaDrmStateException;

    return v0
.end method

.method public static mediaDrmStateExceptionToErrorCode(Ljava/lang/Throwable;)I
    .registers 4
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 139
    move-object v0, p0

    check-cast v0, Landroid/media/MediaDrm$MediaDrmStateException;

    invoke-virtual {v0}, Landroid/media/MediaDrm$MediaDrmStateException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "diagnosticsInfo":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getErrorCodeFromPlatformDiagnosticsInfo(Ljava/lang/String;)I

    move-result v1

    .line 141
    .local v1, "drmErrorCode":I
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getErrorCodeForMediaDrmErrorCode(I)I

    move-result v2

    return v2
.end method
