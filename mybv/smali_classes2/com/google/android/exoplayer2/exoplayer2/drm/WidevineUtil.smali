.class public final Lcom/google/android/exoplayer2/drm/WidevineUtil;
.super Ljava/lang/Object;
.source "WidevineUtil.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final PROPERTY_LICENSE_DURATION_REMAINING:Ljava/lang/String; = "LicenseDurationRemaining"

.field public static final PROPERTY_PLAYBACK_DURATION_REMAINING:Ljava/lang/String; = "PlaybackDurationRemaining"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDurationRemainingSec(Ljava/util/Map;Ljava/lang/String;)J
    .registers 5
    .param p1, "property"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .line 60
    .local p0, "keyStatus":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_11

    .line 62
    :try_start_2
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_f

    .line 64
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_e} :catch_10

    return-wide v1

    .line 68
    .end local v0    # "value":Ljava/lang/String;
    :cond_f
    goto :goto_11

    .line 66
    :catch_10
    move-exception v0

    .line 70
    :cond_11
    :goto_11
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public static getLicenseDurationRemainingSec(Lcom/google/android/exoplayer2/drm/DrmSession;)Landroid/util/Pair;
    .registers 6
    .param p0, "drmSession"    # Lcom/google/android/exoplayer2/drm/DrmSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/drm/DrmSession;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 50
    invoke-interface {p0}, Lcom/google/android/exoplayer2/drm/DrmSession;->queryKeyStatus()Ljava/util/Map;

    move-result-object v0

    .line 51
    .local v0, "keyStatus":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_8

    .line 52
    const/4 v1, 0x0

    return-object v1

    .line 54
    :cond_8
    new-instance v1, Landroid/util/Pair;

    .line 55
    const-string v2, "LicenseDurationRemaining"

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/drm/WidevineUtil;->getDurationRemainingSec(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 56
    const-string v3, "PlaybackDurationRemaining"

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/drm/WidevineUtil;->getDurationRemainingSec(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    return-object v1
.end method
