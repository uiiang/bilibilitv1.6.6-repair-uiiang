.class public final Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackOptions;
.super Ljava/lang/Object;
.source "LoadErrorHandlingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FallbackOptions"
.end annotation


# instance fields
.field public final numberOfExcludedLocations:I

.field public final numberOfExcludedTracks:I

.field public final numberOfLocations:I

.field public final numberOfTracks:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5
    .param p1, "numberOfLocations"    # I
    .param p2, "numberOfExcludedLocations"    # I
    .param p3, "numberOfTracks"    # I
    .param p4, "numberOfExcludedTracks"    # I

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackOptions;->numberOfLocations:I

    .line 121
    iput p2, p0, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackOptions;->numberOfExcludedLocations:I

    .line 122
    iput p3, p0, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackOptions;->numberOfTracks:I

    .line 123
    iput p4, p0, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackOptions;->numberOfExcludedTracks:I

    .line 124
    return-void
.end method


# virtual methods
.method public isFallbackAvailable(I)Z
    .registers 6
    .param p1, "type"    # I

    .line 128
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_d

    .line 129
    iget v2, p0, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackOptions;->numberOfLocations:I

    iget v3, p0, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackOptions;->numberOfExcludedLocations:I

    sub-int/2addr v2, v3

    if-le v2, v1, :cond_15

    const/4 v0, 0x1

    goto :goto_15

    .line 130
    :cond_d
    iget v2, p0, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackOptions;->numberOfTracks:I

    iget v3, p0, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackOptions;->numberOfExcludedTracks:I

    sub-int/2addr v2, v3

    if-le v2, v1, :cond_15

    const/4 v0, 0x1

    .line 128
    :cond_15
    :goto_15
    return v0
.end method
