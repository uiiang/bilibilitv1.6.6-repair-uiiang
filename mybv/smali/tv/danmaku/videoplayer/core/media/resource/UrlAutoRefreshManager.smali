.class public Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;
.super Ljava/lang/Object;
.source "UrlAutoRefreshManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager$RefreshCallback;
    }
.end annotation


# static fields
.field private static final PLAYURL_AUTO_REFRESH_FALLBACK_DELAY_MS:J = 0x325aa0L

.field private static final PLAYURL_AUTO_REFRESH_FALLBACK_MIN_DURATION_MS:J = 0x36ee80L

.field private static final PLAYURL_AUTO_REFRESH_LEAD_MS:J = 0x2bf20L

.field private static final PLAYURL_AUTO_REFRESH_MIN_RELOAD_INTERVAL_MS:J = 0x7530L

.field private static final TAG:Ljava/lang/String; = "UrlAutoRefreshManager"

.field private static final TEST_MODE:Z = true

.field private static final TEST_REFRESH_DELAY_MS:J = 0x7530L


# instance fields
.field private callback:Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager$RefreshCallback;

.field private lastReloadTime:J

.field private refreshToken:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;->lastReloadTime:J

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;->refreshToken:I

    return-void
.end method

.method public static isLikelyExpiredUrlError(I)Z
    .locals 1

    .prologue
    .line 122
    const/16 v0, 0x193

    if-eq p0, v0, :cond_c

    const/16 v0, 0x194

    if-eq p0, v0, :cond_c

    const/16 v0, 0x19a

    if-ne p0, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isLikelyExpiredUrlError(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 126
    if-nez p0, :cond_4

    .line 128
    :cond_3
    :goto_3
    return v0

    .line 127
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 128
    const-string v2, "403"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    const-string v2, "404"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    const-string v2, "410"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    const-string v2, "forbidden"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_28
    const/4 v0, 0x1

    goto :goto_3
.end method


# virtual methods
.method public calculateRefreshDelay(Ljava/lang/Long;Ljava/lang/Long;)J
    .locals 2

    .prologue
    .line 74
    const-string v0, "UrlAutoRefreshManager"

    const-string v1, "[TEST_MODE] Using test refresh delay: 30000ms"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-wide/16 v0, 0x7530

    return-wide v0
.end method

.method public getRefreshCallback()Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager$RefreshCallback;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;->callback:Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager$RefreshCallback;

    return-object v0
.end method

.method public getRefreshToken()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;->refreshToken:I

    return v0
.end method

.method public isTokenValid(I)Z
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;->refreshToken:I

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public pickEarliestDeadlineEpochSec(Ljava/util/List;)Ljava/lang/Long;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 38
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 68
    :cond_b
    return-object v1

    .line 43
    :cond_c
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_10
    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 44
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    .line 47
    :try_start_24
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 48
    const-string v2, "deadline"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    const-string v3, "expires"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    if-eqz v2, :cond_4e

    .line 53
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 58
    :goto_3a
    cmp-long v0, v2, v4

    if-lez v0, :cond_58

    .line 59
    if-eqz v1, :cond_48

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v0, v2, v8

    if-gez v0, :cond_58

    .line 60
    :cond_48
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_4c
    move-object v1, v0

    .line 66
    goto :goto_10

    .line 54
    :cond_4e
    if-eqz v0, :cond_5a

    .line 55
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_53} :catch_55

    move-result-wide v2

    goto :goto_3a

    .line 63
    :catch_55
    move-exception v0

    move-object v0, v1

    goto :goto_4c

    :cond_58
    move-object v0, v1

    goto :goto_4c

    :cond_5a
    move-wide v2, v4

    goto :goto_3a
.end method

.method public recordRefresh()V
    .locals 3

    .prologue
    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;->lastReloadTime:J

    .line 109
    iget v0, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;->refreshToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;->refreshToken:I

    .line 110
    const-string v0, "UrlAutoRefreshManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refresh recorded, token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;->refreshToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void
.end method

.method public setRefreshCallback(Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager$RefreshCallback;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;->callback:Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager$RefreshCallback;

    .line 31
    return-void
.end method

.method public shouldRefresh()Z
    .locals 6

    .prologue
    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 100
    iget-wide v2, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;->lastReloadTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-gez v2, :cond_31

    .line 101
    const-string v2, "UrlAutoRefreshManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Refresh throttled, last reload was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;->lastReloadTime:J

    sub-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms ago"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v0, 0x0

    .line 104
    :goto_30
    return v0

    :cond_31
    const/4 v0, 0x1

    goto :goto_30
.end method
