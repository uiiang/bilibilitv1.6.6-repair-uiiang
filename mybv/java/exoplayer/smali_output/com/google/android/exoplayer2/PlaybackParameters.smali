.class public final Lcom/google/android/exoplayer2/PlaybackParameters;
.super Ljava/lang/Object;
.source "PlaybackParameters.java"

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
            "Lcom/google/android/exoplayer2/PlaybackParameters;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT:Lcom/google/android/exoplayer2/PlaybackParameters;

.field private static final FIELD_PITCH:Ljava/lang/String;

.field private static final FIELD_SPEED:Ljava/lang/String;


# instance fields
.field public final pitch:F

.field private final scaledUsPerMs:I

.field public final speed:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 37
    new-instance v0, Lcom/google/android/exoplayer2/PlaybackParameters;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(F)V

    sput-object v0, Lcom/google/android/exoplayer2/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 124
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/PlaybackParameters;->FIELD_SPEED:Ljava/lang/String;

    .line 125
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/PlaybackParameters;->FIELD_PITCH:Ljava/lang/String;

    .line 136
    new-instance v0, Lcom/google/android/exoplayer2/PlaybackParameters$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/PlaybackParameters$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/PlaybackParameters;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(F)V
    .registers 3
    .param p1, "speed"    # F

    .line 54
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(FF)V

    .line 55
    return-void
.end method

.method public constructor <init>(FF)V
    .registers 7
    .param p1, "speed"    # F
    .param p2, "pitch"    # F

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v3, p1, v2

    if-lez v3, :cond_c

    const/4 v3, 0x1

    goto :goto_d

    :cond_c
    const/4 v3, 0x0

    :goto_d
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 69
    cmpl-float v2, p2, v2

    if-lez v2, :cond_15

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 70
    iput p1, p0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    .line 71
    iput p2, p0, Lcom/google/android/exoplayer2/PlaybackParameters;->pitch:F

    .line 72
    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/PlaybackParameters;->scaledUsPerMs:I

    .line 73
    return-void
.end method

.method static synthetic lambda$static$0(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/PlaybackParameters;
    .registers 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 138
    sget-object v0, Lcom/google/android/exoplayer2/PlaybackParameters;->FIELD_SPEED:Ljava/lang/String;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 139
    .local v0, "speed":F
    sget-object v2, Lcom/google/android/exoplayer2/PlaybackParameters;->FIELD_PITCH:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 140
    .local v1, "pitch":F
    new-instance v2, Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-direct {v2, v0, v1}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(FF)V

    return-object v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 99
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 100
    return v0

    .line 102
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_28

    .line 105
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 106
    .local v2, "other":Lcom/google/android/exoplayer2/PlaybackParameters;
    iget v3, p0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    iget v4, v2, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_26

    iget v3, p0, Lcom/google/android/exoplayer2/PlaybackParameters;->pitch:F

    iget v4, v2, Lcom/google/android/exoplayer2/PlaybackParameters;->pitch:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_26

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    return v0

    .line 103
    .end local v2    # "other":Lcom/google/android/exoplayer2/PlaybackParameters;
    :cond_28
    :goto_28
    return v1
.end method

.method public getMediaTimeUsForPlayoutTimeMs(J)J
    .registers 5
    .param p1, "timeMs"    # J

    .line 83
    iget v0, p0, Lcom/google/android/exoplayer2/PlaybackParameters;->scaledUsPerMs:I

    int-to-long v0, v0

    mul-long v0, v0, p1

    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    .line 111
    const/16 v0, 0x11

    .line 112
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 113
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/PlaybackParameters;->pitch:F

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 114
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 4

    .line 129
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 130
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v1, Lcom/google/android/exoplayer2/PlaybackParameters;->FIELD_SPEED:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 131
    sget-object v1, Lcom/google/android/exoplayer2/PlaybackParameters;->FIELD_PITCH:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/PlaybackParameters;->pitch:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 132
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 119
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplayer2/PlaybackParameters;->pitch:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "PlaybackParameters(speed=%.2f, pitch=%.2f)"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withSpeed(F)Lcom/google/android/exoplayer2/PlaybackParameters;
    .registers 4
    .param p1, "speed"    # F

    .line 94
    new-instance v0, Lcom/google/android/exoplayer2/PlaybackParameters;

    iget v1, p0, Lcom/google/android/exoplayer2/PlaybackParameters;->pitch:F

    invoke-direct {v0, p1, v1}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(FF)V

    return-object v0
.end method
