.class public interface abstract Lbl/PlayUrlPrefetch$StateProvider;
.super Ljava/lang/Object;
.source "PlayUrlPrefetch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/PlayUrlPrefetch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StateProvider"
.end annotation


# virtual methods
.method public abstract currentEpisode()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;
.end method

.method public abstract currentPositionMs()I
.end method

.method public abstract durationMs()I
.end method

.method public abstract episodeList()[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;
.end method

.method public abstract expectedQuality()I
.end method
