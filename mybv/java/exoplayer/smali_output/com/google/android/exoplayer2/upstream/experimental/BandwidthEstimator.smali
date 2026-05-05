.class public interface abstract Lcom/google/android/exoplayer2/upstream/experimental/BandwidthEstimator;
.super Ljava/lang/Object;
.source "BandwidthEstimator.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ESTIMATE_NOT_AVAILABLE:J = -0x8000000000000000L


# virtual methods
.method public abstract addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V
.end method

.method public abstract getBandwidthEstimate()J
.end method

.method public abstract onBytesTransferred(Lcom/google/android/exoplayer2/upstream/DataSource;I)V
.end method

.method public abstract onNetworkTypeChange(J)V
.end method

.method public abstract onTransferEnd(Lcom/google/android/exoplayer2/upstream/DataSource;)V
.end method

.method public abstract onTransferInitializing(Lcom/google/android/exoplayer2/upstream/DataSource;)V
.end method

.method public abstract onTransferStart(Lcom/google/android/exoplayer2/upstream/DataSource;)V
.end method

.method public abstract removeEventListener(Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V
.end method
