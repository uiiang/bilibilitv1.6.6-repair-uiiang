.class public final Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;
.super Ljava/lang/Object;
.source "Projection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/spherical/Projection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubMesh"
.end annotation


# static fields
.field public static final VIDEO_TEXTURE_ID:I


# instance fields
.field public final mode:I

.field public final textureCoords:[F

.field public final textureId:I

.field public final vertices:[F


# direct methods
.method public constructor <init>(I[F[FI)V
    .registers 11
    .param p1, "textureId"    # I
    .param p2, "vertices"    # [F
    .param p3, "textureCoords"    # [F
    .param p4, "mode"    # I

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput p1, p0, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;->textureId:I

    .line 216
    array-length v0, p2

    int-to-long v0, v0

    const-wide/16 v2, 0x2

    mul-long v0, v0, v2

    array-length v2, p3

    int-to-long v2, v2

    const-wide/16 v4, 0x3

    mul-long v2, v2, v4

    cmp-long v4, v0, v2

    if-nez v4, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 219
    iput-object p2, p0, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;->vertices:[F

    .line 220
    iput-object p3, p0, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;->textureCoords:[F

    .line 221
    iput p4, p0, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;->mode:I

    .line 222
    return-void
.end method


# virtual methods
.method public getVertexCount()I
    .registers 2

    .line 226
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;->vertices:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method
