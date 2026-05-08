.class public interface abstract Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;
.super Ljava/lang/Object;
.source "CmcdConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RequestConfig"
.end annotation


# virtual methods
.method public abstract getCustomData()Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRequestedMaximumThroughputKbps(I)I
.end method

.method public abstract isKeyAllowed(Ljava/lang/String;)Z
.end method
