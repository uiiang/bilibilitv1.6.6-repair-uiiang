.class public interface abstract Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$PlayInfoCallback;
.super Ljava/lang/Object;
.source "ResolveResourceParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlayInfoCallback"
.end annotation


# virtual methods
.method public abstract onPlayInfoFailed(Ljava/lang/Exception;)V
.end method

.method public abstract onPlayInfoReady(Lorg/json/JSONArray;)V
.end method
