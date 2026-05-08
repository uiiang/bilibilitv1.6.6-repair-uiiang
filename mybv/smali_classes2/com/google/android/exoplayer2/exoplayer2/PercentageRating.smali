.class public final Lcom/google/android/exoplayer2/PercentageRating;
.super Lcom/google/android/exoplayer2/Rating;
.source "PercentageRating.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/PercentageRating;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_PERCENT:Ljava/lang/String;

.field private static final TYPE:I = 0x1


# instance fields
.field private final percent:F


# direct methods
.method public static synthetic $r8$lambda$gV1VuOc0syRaJALh6cdfjMjuj2Y(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/PercentageRating;
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/PercentageRating;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/PercentageRating;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 84
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/PercentageRating;->FIELD_PERCENT:Ljava/lang/String;

    .line 95
    new-instance v0, Lcom/google/android/exoplayer2/PercentageRating$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/PercentageRating$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/PercentageRating;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Lcom/google/android/exoplayer2/Rating;-><init>()V

    .line 41
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/exoplayer2/PercentageRating;->percent:F

    .line 42
    return-void
.end method

.method public constructor <init>(F)V
    .registers 4
    .param p1, "percent"    # F

    .line 49
    invoke-direct {p0}, Lcom/google/android/exoplayer2/Rating;-><init>()V

    .line 50
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_10

    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    const-string v1, "percent must be in the range of [0, 100]"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 51
    iput p1, p0, Lcom/google/android/exoplayer2/PercentageRating;->percent:F

    .line 52
    return-void
.end method

.method private static fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/PercentageRating;
    .registers 3
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 98
    sget-object v0, Lcom/google/android/exoplayer2/PercentageRating;->FIELD_RATING_TYPE:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 99
    sget-object v0, Lcom/google/android/exoplayer2/PercentageRating;->FIELD_PERCENT:Ljava/lang/String;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 100
    .local v0, "percent":F
    cmpl-float v1, v0, v1

    if-nez v1, :cond_21

    new-instance v1, Lcom/google/android/exoplayer2/PercentageRating;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/PercentageRating;-><init>()V

    goto :goto_26

    :cond_21
    new-instance v1, Lcom/google/android/exoplayer2/PercentageRating;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/PercentageRating;-><init>(F)V

    :goto_26
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 74
    instance-of v0, p1, Lcom/google/android/exoplayer2/PercentageRating;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 75
    return v1

    .line 77
    :cond_6
    iget v0, p0, Lcom/google/android/exoplayer2/PercentageRating;->percent:F

    move-object v2, p1

    check-cast v2, Lcom/google/android/exoplayer2/PercentageRating;

    iget v2, v2, Lcom/google/android/exoplayer2/PercentageRating;->percent:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1
.end method

.method public getPercent()F
    .registers 2

    .line 64
    iget v0, p0, Lcom/google/android/exoplayer2/PercentageRating;->percent:F

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 69
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/exoplayer2/PercentageRating;->percent:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isRated()Z
    .registers 3

    .line 56
    iget v0, p0, Lcom/google/android/exoplayer2/PercentageRating;->percent:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 4

    .line 88
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 89
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v1, Lcom/google/android/exoplayer2/PercentageRating;->FIELD_RATING_TYPE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 90
    sget-object v1, Lcom/google/android/exoplayer2/PercentageRating;->FIELD_PERCENT:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/PercentageRating;->percent:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 91
    return-object v0
.end method
