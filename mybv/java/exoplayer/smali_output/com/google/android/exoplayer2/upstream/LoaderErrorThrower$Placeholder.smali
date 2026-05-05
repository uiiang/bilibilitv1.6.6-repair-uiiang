.class public final Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower$Placeholder;
.super Ljava/lang/Object;
.source "LoaderErrorThrower.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Placeholder"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public maybeThrowError()V
    .registers 1

    .line 58
    return-void
.end method

.method public maybeThrowError(I)V
    .registers 2
    .param p1, "minRetryCount"    # I

    .line 63
    return-void
.end method
