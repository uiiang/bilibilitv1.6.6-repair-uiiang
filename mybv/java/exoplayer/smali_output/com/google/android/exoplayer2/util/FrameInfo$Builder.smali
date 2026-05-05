.class public final Lcom/google/android/exoplayer2/util/FrameInfo$Builder;
.super Ljava/lang/Object;
.source "FrameInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/FrameInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private height:I

.field private offsetToAddUs:J

.field private pixelWidthHeightRatio:F

.field private width:I


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/google/android/exoplayer2/util/FrameInfo$Builder;->width:I

    .line 49
    iput p2, p0, Lcom/google/android/exoplayer2/util/FrameInfo$Builder;->height:I

    .line 50
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/exoplayer2/util/FrameInfo$Builder;->pixelWidthHeightRatio:F

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/util/FrameInfo;)V
    .registers 4
    .param p1, "frameInfo"    # Lcom/google/android/exoplayer2/util/FrameInfo;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iget v0, p1, Lcom/google/android/exoplayer2/util/FrameInfo;->width:I

    iput v0, p0, Lcom/google/android/exoplayer2/util/FrameInfo$Builder;->width:I

    .line 56
    iget v0, p1, Lcom/google/android/exoplayer2/util/FrameInfo;->height:I

    iput v0, p0, Lcom/google/android/exoplayer2/util/FrameInfo$Builder;->height:I

    .line 57
    iget v0, p1, Lcom/google/android/exoplayer2/util/FrameInfo;->pixelWidthHeightRatio:F

    iput v0, p0, Lcom/google/android/exoplayer2/util/FrameInfo$Builder;->pixelWidthHeightRatio:F

    .line 58
    iget-wide v0, p1, Lcom/google/android/exoplayer2/util/FrameInfo;->offsetToAddUs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/util/FrameInfo$Builder;->offsetToAddUs:J

    .line 59
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/util/FrameInfo;
    .registers 9

    .line 100
    new-instance v7, Lcom/google/android/exoplayer2/util/FrameInfo;

    iget v1, p0, Lcom/google/android/exoplayer2/util/FrameInfo$Builder;->width:I

    iget v2, p0, Lcom/google/android/exoplayer2/util/FrameInfo$Builder;->height:I

    iget v3, p0, Lcom/google/android/exoplayer2/util/FrameInfo$Builder;->pixelWidthHeightRatio:F

    iget-wide v4, p0, Lcom/google/android/exoplayer2/util/FrameInfo$Builder;->offsetToAddUs:J

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/util/FrameInfo;-><init>(IIFJLcom/google/android/exoplayer2/util/FrameInfo$1;)V

    return-object v7
.end method

.method public setHeight(I)Lcom/google/android/exoplayer2/util/FrameInfo$Builder;
    .registers 2
    .param p1, "height"    # I

    .line 71
    iput p1, p0, Lcom/google/android/exoplayer2/util/FrameInfo$Builder;->height:I

    .line 72
    return-object p0
.end method

.method public setOffsetToAddUs(J)Lcom/google/android/exoplayer2/util/FrameInfo$Builder;
    .registers 3
    .param p1, "offsetToAddUs"    # J

    .line 94
    iput-wide p1, p0, Lcom/google/android/exoplayer2/util/FrameInfo$Builder;->offsetToAddUs:J

    .line 95
    return-object p0
.end method

.method public setPixelWidthHeightRatio(F)Lcom/google/android/exoplayer2/util/FrameInfo$Builder;
    .registers 2
    .param p1, "pixelWidthHeightRatio"    # F

    .line 82
    iput p1, p0, Lcom/google/android/exoplayer2/util/FrameInfo$Builder;->pixelWidthHeightRatio:F

    .line 83
    return-object p0
.end method

.method public setWidth(I)Lcom/google/android/exoplayer2/util/FrameInfo$Builder;
    .registers 2
    .param p1, "width"    # I

    .line 64
    iput p1, p0, Lcom/google/android/exoplayer2/util/FrameInfo$Builder;->width:I

    .line 65
    return-object p0
.end method
