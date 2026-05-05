.class public final Lcom/google/android/exoplayer2/util/SurfaceInfo;
.super Ljava/lang/Object;
.source "SurfaceInfo.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final height:I

.field public final orientationDegrees:I

.field public final surface:Landroid/view/Surface;

.field public final width:I


# direct methods
.method public constructor <init>(Landroid/view/Surface;II)V
    .registers 5
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/util/SurfaceInfo;-><init>(Landroid/view/Surface;III)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/view/Surface;III)V
    .registers 7
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "orientationDegrees"    # I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-eqz p4, :cond_14

    const/16 v0, 0x5a

    if-eq p4, v0, :cond_14

    const/16 v0, 0xb4

    if-eq p4, v0, :cond_14

    const/16 v0, 0x10e

    if-ne p4, v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    const-string v1, "orientationDegrees must be 0, 90, 180, or 270"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 60
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/SurfaceInfo;->surface:Landroid/view/Surface;

    .line 61
    iput p2, p0, Lcom/google/android/exoplayer2/util/SurfaceInfo;->width:I

    .line 62
    iput p3, p0, Lcom/google/android/exoplayer2/util/SurfaceInfo;->height:I

    .line 63
    iput p4, p0, Lcom/google/android/exoplayer2/util/SurfaceInfo;->orientationDegrees:I

    .line 64
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 68
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 69
    return v0

    .line 71
    :cond_4
    instance-of v1, p1, Lcom/google/android/exoplayer2/util/SurfaceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 72
    return v2

    .line 74
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/util/SurfaceInfo;

    .line 75
    .local v1, "that":Lcom/google/android/exoplayer2/util/SurfaceInfo;
    iget v3, p0, Lcom/google/android/exoplayer2/util/SurfaceInfo;->width:I

    iget v4, v1, Lcom/google/android/exoplayer2/util/SurfaceInfo;->width:I

    if-ne v3, v4, :cond_2a

    iget v3, p0, Lcom/google/android/exoplayer2/util/SurfaceInfo;->height:I

    iget v4, v1, Lcom/google/android/exoplayer2/util/SurfaceInfo;->height:I

    if-ne v3, v4, :cond_2a

    iget v3, p0, Lcom/google/android/exoplayer2/util/SurfaceInfo;->orientationDegrees:I

    iget v4, v1, Lcom/google/android/exoplayer2/util/SurfaceInfo;->orientationDegrees:I

    if-ne v3, v4, :cond_2a

    iget-object v3, p0, Lcom/google/android/exoplayer2/util/SurfaceInfo;->surface:Landroid/view/Surface;

    iget-object v4, v1, Lcom/google/android/exoplayer2/util/SurfaceInfo;->surface:Landroid/view/Surface;

    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    .line 75
    :goto_2b
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 83
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/SurfaceInfo;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 84
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/util/SurfaceInfo;->width:I

    add-int/2addr v1, v2

    .line 85
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/util/SurfaceInfo;->height:I

    add-int/2addr v0, v2

    .line 86
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/util/SurfaceInfo;->orientationDegrees:I

    add-int/2addr v1, v2

    .line 87
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method
