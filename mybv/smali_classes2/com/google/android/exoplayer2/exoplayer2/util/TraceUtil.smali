.class public final Lcom/google/android/exoplayer2/util/TraceUtil;
.super Ljava/lang/Object;
.source "TraceUtil.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .registers 3
    .param p0, "sectionName"    # Ljava/lang/String;

    .line 42
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_9

    .line 43
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSectionV18(Ljava/lang/String;)V

    .line 45
    :cond_9
    return-void
.end method

.method private static beginSectionV18(Ljava/lang/String;)V
    .registers 1
    .param p0, "sectionName"    # Ljava/lang/String;

    .line 60
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static endSection()V
    .registers 2

    .line 53
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_9

    .line 54
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSectionV18()V

    .line 56
    :cond_9
    return-void
.end method

.method private static endSectionV18()V
    .registers 0

    .line 65
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 66
    return-void
.end method
