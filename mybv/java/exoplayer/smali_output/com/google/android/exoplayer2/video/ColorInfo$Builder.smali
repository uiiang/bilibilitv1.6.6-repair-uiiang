.class public final Lcom/google/android/exoplayer2/video/ColorInfo$Builder;
.super Ljava/lang/Object;
.source "ColorInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/ColorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private colorRange:I

.field private colorSpace:I

.field private colorTransfer:I

.field private hdrStaticInfo:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;->colorSpace:I

    .line 57
    iput v0, p0, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;->colorRange:I

    .line 58
    iput v0, p0, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;->colorTransfer:I

    .line 59
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/video/ColorInfo;)V
    .registers 3
    .param p1, "colorInfo"    # Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iget v0, p1, Lcom/google/android/exoplayer2/video/ColorInfo;->colorSpace:I

    iput v0, p0, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;->colorSpace:I

    .line 64
    iget v0, p1, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRange:I

    iput v0, p0, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;->colorRange:I

    .line 65
    iget v0, p1, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    iput v0, p0, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;->colorTransfer:I

    .line 66
    iget-object v0, p1, Lcom/google/android/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;->hdrStaticInfo:[B

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/video/ColorInfo;Lcom/google/android/exoplayer2/video/ColorInfo$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer2/video/ColorInfo;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/video/ColorInfo$1;

    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;-><init>(Lcom/google/android/exoplayer2/video/ColorInfo;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/video/ColorInfo;
    .registers 6

    .line 128
    new-instance v0, Lcom/google/android/exoplayer2/video/ColorInfo;

    iget v1, p0, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;->colorSpace:I

    iget v2, p0, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;->colorRange:I

    iget v3, p0, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;->colorTransfer:I

    iget-object v4, p0, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;->hdrStaticInfo:[B

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/video/ColorInfo;-><init>(III[B)V

    return-object v0
.end method

.method public setColorRange(I)Lcom/google/android/exoplayer2/video/ColorInfo$Builder;
    .registers 2
    .param p1, "colorRange"    # I

    .line 95
    iput p1, p0, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;->colorRange:I

    .line 96
    return-object p0
.end method

.method public setColorSpace(I)Lcom/google/android/exoplayer2/video/ColorInfo$Builder;
    .registers 2
    .param p1, "colorSpace"    # I

    .line 80
    iput p1, p0, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;->colorSpace:I

    .line 81
    return-object p0
.end method

.method public setColorTransfer(I)Lcom/google/android/exoplayer2/video/ColorInfo$Builder;
    .registers 2
    .param p1, "colorTransfer"    # I

    .line 110
    iput p1, p0, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;->colorTransfer:I

    .line 111
    return-object p0
.end method

.method public setHdrStaticInfo([B)Lcom/google/android/exoplayer2/video/ColorInfo$Builder;
    .registers 2
    .param p1, "hdrStaticInfo"    # [B

    .line 122
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;->hdrStaticInfo:[B

    .line 123
    return-object p0
.end method
