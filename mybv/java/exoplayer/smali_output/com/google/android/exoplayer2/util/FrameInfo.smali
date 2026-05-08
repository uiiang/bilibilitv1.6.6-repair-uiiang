.class public Lcom/google/android/exoplayer2/util/FrameInfo;
.super Ljava/lang/Object;
.source "FrameInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/FrameInfo$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final height:I

.field public final offsetToAddUs:J

.field public final pixelWidthHeightRatio:F

.field public final width:I


# direct methods
.method private constructor <init>(IIFJ)V
    .registers 11
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "pixelWidthHeightRatio"    # F
    .param p4, "offsetToAddUs"    # J

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    :goto_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "width must be positive, but is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 122
    if-lez p2, :cond_23

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "height must be positive, but is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 124
    iput p1, p0, Lcom/google/android/exoplayer2/util/FrameInfo;->width:I

    .line 125
    iput p2, p0, Lcom/google/android/exoplayer2/util/FrameInfo;->height:I

    .line 126
    iput p3, p0, Lcom/google/android/exoplayer2/util/FrameInfo;->pixelWidthHeightRatio:F

    .line 127
    iput-wide p4, p0, Lcom/google/android/exoplayer2/util/FrameInfo;->offsetToAddUs:J

    .line 128
    return-void
.end method

.method synthetic constructor <init>(IIFJLcom/google/android/exoplayer2/util/FrameInfo$1;)V
    .registers 7
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # F
    .param p4, "x3"    # J
    .param p6, "x4"    # Lcom/google/android/exoplayer2/util/FrameInfo$1;

    .line 31
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/util/FrameInfo;-><init>(IIFJ)V

    return-void
.end method
