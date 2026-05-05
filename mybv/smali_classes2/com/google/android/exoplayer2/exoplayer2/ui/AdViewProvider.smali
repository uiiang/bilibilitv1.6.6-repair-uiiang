.class public interface abstract Lcom/google/android/exoplayer2/ui/AdViewProvider;
.super Ljava/lang/Object;
.source "AdViewProvider.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract getAdOverlayInfos()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/ui/AdOverlayInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAdViewGroup()Landroid/view/ViewGroup;
.end method
