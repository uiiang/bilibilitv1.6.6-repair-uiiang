.class public interface abstract Lmybl/WbiSigner$WbiSignCallback;
.super Ljava/lang/Object;
.source "WbiSigner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmybl/WbiSigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WbiSignCallback"
.end annotation


# virtual methods
.method public abstract onSignError(Ljava/lang/Exception;)V
.end method

.method public abstract onSignReady(Ljava/lang/String;)V
.end method
