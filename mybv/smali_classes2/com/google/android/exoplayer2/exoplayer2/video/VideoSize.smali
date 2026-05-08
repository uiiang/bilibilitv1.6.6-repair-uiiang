.class public final Lcom/google/android/exoplayer2/video/VideoSize;
.super Ljava/lang/Object;
.source "VideoSize.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/video/VideoSize;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_HEIGHT:I = 0x0

.field private static final DEFAULT_PIXEL_WIDTH_HEIGHT_RATIO:F = 1.0f

.field private static final DEFAULT_UNAPPLIED_ROTATION_DEGREES:I

.field private static final DEFAULT_WIDTH:I

.field private static final FIELD_HEIGHT:Ljava/lang/String;

.field private static final FIELD_PIXEL_WIDTH_HEIGHT_RATIO:Ljava/lang/String;

.field private static final FIELD_UNAPPLIED_ROTATION_DEGREES:Ljava/lang/String;

.field private static final FIELD_WIDTH:Ljava/lang/String;

.field public static final UNKNOWN:Lcom/google/android/exoplayer2/video/VideoSize;


# instance fields
.field public final height:I

.field public final pixelWidthHeightRatio:F

.field public final unappliedRotationDegrees:I

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Lcom/google/android/exoplayer2/video/VideoSize;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/google/android/exoplayer2/video/VideoSize;-><init>(II)V

    sput-object v0, Lcom/google/android/exoplayer2/video/VideoSize;->UNKNOWN:Lcom/google/android/exoplayer2/video/VideoSize;

    .line 136
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/video/VideoSize;->FIELD_WIDTH:Ljava/lang/String;

    .line 137
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/video/VideoSize;->FIELD_HEIGHT:Ljava/lang/String;

    .line 138
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/video/VideoSize;->FIELD_UNAPPLIED_ROTATION_DEGREES:Ljava/lang/String;

    .line 139
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/video/VideoSize;->FIELD_PIXEL_WIDTH_HEIGHT_RATIO:Ljava/lang/String;

    .line 151
    new-instance v0, Lcom/google/android/exoplayer2/video/VideoSize$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/video/VideoSize$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/video/VideoSize;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 83
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/video/VideoSize;-><init>(IIIF)V

    .line 84
    return-void
.end method

.method public constructor <init>(IIIF)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unappliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput p1, p0, Lcom/google/android/exoplayer2/video/VideoSize;->width:I

    .line 104
    iput p2, p0, Lcom/google/android/exoplayer2/video/VideoSize;->height:I

    .line 105
    iput p3, p0, Lcom/google/android/exoplayer2/video/VideoSize;->unappliedRotationDegrees:I

    .line 106
    iput p4, p0, Lcom/google/android/exoplayer2/video/VideoSize;->pixelWidthHeightRatio:F

    .line 107
    return-void
.end method

.method static synthetic lambda$static$0(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/video/VideoSize;
    .registers 6
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 153
    sget-object v0, Lcom/google/android/exoplayer2/video/VideoSize;->FIELD_WIDTH:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 154
    .local v0, "width":I
    sget-object v2, Lcom/google/android/exoplayer2/video/VideoSize;->FIELD_HEIGHT:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 155
    .local v2, "height":I
    sget-object v3, Lcom/google/android/exoplayer2/video/VideoSize;->FIELD_UNAPPLIED_ROTATION_DEGREES:Ljava/lang/String;

    .line 156
    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 157
    .local v1, "unappliedRotationDegrees":I
    sget-object v3, Lcom/google/android/exoplayer2/video/VideoSize;->FIELD_PIXEL_WIDTH_HEIGHT_RATIO:Ljava/lang/String;

    .line 158
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v3

    .line 159
    .local v3, "pixelWidthHeightRatio":F
    new-instance v4, Lcom/google/android/exoplayer2/video/VideoSize;

    invoke-direct {v4, v0, v2, v1, v3}, Lcom/google/android/exoplayer2/video/VideoSize;-><init>(IIIF)V

    return-object v4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 111
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 112
    return v0

    .line 114
    :cond_4
    instance-of v1, p1, Lcom/google/android/exoplayer2/video/VideoSize;

    const/4 v2, 0x0

    if-eqz v1, :cond_29

    .line 115
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/video/VideoSize;

    .line 116
    .local v1, "other":Lcom/google/android/exoplayer2/video/VideoSize;
    iget v3, p0, Lcom/google/android/exoplayer2/video/VideoSize;->width:I

    iget v4, v1, Lcom/google/android/exoplayer2/video/VideoSize;->width:I

    if-ne v3, v4, :cond_27

    iget v3, p0, Lcom/google/android/exoplayer2/video/VideoSize;->height:I

    iget v4, v1, Lcom/google/android/exoplayer2/video/VideoSize;->height:I

    if-ne v3, v4, :cond_27

    iget v3, p0, Lcom/google/android/exoplayer2/video/VideoSize;->unappliedRotationDegrees:I

    iget v4, v1, Lcom/google/android/exoplayer2/video/VideoSize;->unappliedRotationDegrees:I

    if-ne v3, v4, :cond_27

    iget v3, p0, Lcom/google/android/exoplayer2/video/VideoSize;->pixelWidthHeightRatio:F

    iget v4, v1, Lcom/google/android/exoplayer2/video/VideoSize;->pixelWidthHeightRatio:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_27

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    return v0

    .line 121
    .end local v1    # "other":Lcom/google/android/exoplayer2/video/VideoSize;
    :cond_29
    return v2
.end method

.method public hashCode()I
    .registers 4

    .line 126
    const/4 v0, 0x7

    .line 127
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/video/VideoSize;->width:I

    add-int/2addr v1, v2

    .line 128
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/video/VideoSize;->height:I

    add-int/2addr v0, v2

    .line 129
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/video/VideoSize;->unappliedRotationDegrees:I

    add-int/2addr v1, v2

    .line 130
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/video/VideoSize;->pixelWidthHeightRatio:F

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 131
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 4

    .line 143
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 144
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v1, Lcom/google/android/exoplayer2/video/VideoSize;->FIELD_WIDTH:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/video/VideoSize;->width:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 145
    sget-object v1, Lcom/google/android/exoplayer2/video/VideoSize;->FIELD_HEIGHT:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/video/VideoSize;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 146
    sget-object v1, Lcom/google/android/exoplayer2/video/VideoSize;->FIELD_UNAPPLIED_ROTATION_DEGREES:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/video/VideoSize;->unappliedRotationDegrees:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 147
    sget-object v1, Lcom/google/android/exoplayer2/video/VideoSize;->FIELD_PIXEL_WIDTH_HEIGHT_RATIO:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/video/VideoSize;->pixelWidthHeightRatio:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 148
    return-object v0
.end method
