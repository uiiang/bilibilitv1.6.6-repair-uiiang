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

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;->lastReloadTime:J

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;->refreshToken:I

    return-void
.end method

.method public static isLikelyExpiredUrlError(I)Z
    .locals 1

    .prologue
    .line 112
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

    .line 116
    if-nez p0, :cond_4

    .line 118
    :cond_3
    :goto_3
    return v0

    .line 117
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 118
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
    .locals 10

    .prologue
    const-wide/32 v8, 0x2bf20

    const-wide/16 v6, 0x0

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 70
    if-eqz p1, :cond_54

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-lez v2, :cond_54

    .line 71
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 72
    sub-long/2addr v2, v8

    .line 73
    sub-long v0, v2, v0

    .line 74
    const-string v2, "UrlAutoRefreshManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateRefreshDelay: deadline="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", refreshIn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms, lead="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 83
    :goto_53
    return-wide v0

    .line 78
    :cond_54
    if-eqz p2, :cond_6c

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-ltz v0, :cond_6c

    .line 79
    const-string v0, "UrlAutoRefreshManager"

    const-string v1, "No deadline, using fallback delay: 3300000ms"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-wide/32 v0, 0x325aa0

    goto :goto_53

    .line 82
    :cond_6c
    const-string v0, "UrlAutoRefreshManager"

    const-string v1, "Video too short or no deadline, skip auto refresh"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-wide/16 v0, -0x1

    goto :goto_53
.end method

.method public getRefreshCallback()Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager$RefreshCallback;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;->callback:Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager$RefreshCallback;

    return-object v0
.end method

.method public getRefreshToken()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;->refreshToken:I

    return v0
.end method

.method public isTokenValid(I)Z
    .locals 1

    .prologue
    .line 108
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

    .line 34
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 64
    :cond_b
    return-object v1

    .line 39
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

    .line 40
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    .line 43
    :try_start_24
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 44
    const-string v2, "deadline"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    const-string v3, "expires"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    if-eqz v2, :cond_4e

    .line 49
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 54
    :goto_3a
    cmp-long v0, v2, v4

    if-lez v0, :cond_58

    .line 55
    if-eqz v1, :cond_48

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v0, v2, v8

    if-gez v0, :cond_58

    .line 56
    :cond_48
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_4c
    move-object v1, v0

    .line 62
    goto :goto_10

    .line 50
    :cond_4e
    if-eqz v0, :cond_5a

    .line 51
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_53} :catch_55

    move-result-wide v2

    goto :goto_3a

    .line 59
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
    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;->lastReloadTime:J

    .line 99
    iget v0, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;->refreshToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;->refreshToken:I

    .line 100
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

    .line 101
    return-void
.end method

.method public setRefreshCallback(Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager$RefreshCallback;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;->callback:Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager$RefreshCallback;

    .line 27
    return-void
.end method

.method public shouldRefresh()Z
    .locals 6

    .prologue
    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 90
    iget-wide v2, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;->lastReloadTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-gez v2, :cond_31

    .line 91
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

    .line 92
    const/4 v0, 0x0

    .line 94
    :goto_30
    return v0

    :cond_31
    const/4 v0, 0x1

    goto :goto_30
.end method
