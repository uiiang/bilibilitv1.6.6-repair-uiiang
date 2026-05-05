.class public final Lcom/google/android/exoplayer2/StarRating;
.super Lcom/google/android/exoplayer2/Rating;
.source "StarRating.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/StarRating;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_MAX_STARS:Ljava/lang/String;

.field private static final FIELD_STAR_RATING:Ljava/lang/String;

.field private static final MAX_STARS_DEFAULT:I = 0x5

.field private static final TYPE:I = 0x2


# instance fields
.field private final maxStars:I

.field private final starRating:F


# direct methods
.method public static synthetic $r8$lambda$PFFEnOFJiYnmZMUGPr8Imzm26I8(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/StarRating;
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/StarRating;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/StarRating;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 111
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/StarRating;->FIELD_MAX_STARS:Ljava/lang/String;

    .line 112
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/StarRating;->FIELD_STAR_RATING:Ljava/lang/String;

    .line 124
    new-instance v0, Lcom/google/android/exoplayer2/StarRating$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/StarRating$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/StarRating;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "maxStars"    # I

    .line 49
    invoke-direct {p0}, Lcom/google/android/exoplayer2/Rating;-><init>()V

    .line 50
    if-lez p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v1, "maxStars must be a positive integer"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 51
    iput p1, p0, Lcom/google/android/exoplayer2/StarRating;->maxStars:I

    .line 52
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/exoplayer2/StarRating;->starRating:F

    .line 53
    return-void
.end method

.method public constructor <init>(IF)V
    .registers 7
    .param p1, "maxStars"    # I
    .param p2, "starRating"    # F

    .line 65
    invoke-direct {p0}, Lcom/google/android/exoplayer2/Rating;-><init>()V

    .line 66
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    :goto_a
    const-string v3, "maxStars must be a positive integer"

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 67
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_1a

    int-to-float v2, p1

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    const-string v1, "starRating is out of range [0, maxStars]"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 69
    iput p1, p0, Lcom/google/android/exoplayer2/StarRating;->maxStars:I

    .line 70
    iput p2, p0, Lcom/google/android/exoplayer2/StarRating;->starRating:F

    .line 71
    return-void
.end method

.method private static fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/StarRating;
    .registers 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 127
    sget-object v0, Lcom/google/android/exoplayer2/StarRating;->FIELD_RATING_TYPE:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 128
    sget-object v0, Lcom/google/android/exoplayer2/StarRating;->FIELD_MAX_STARS:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 129
    .local v0, "maxStars":I
    sget-object v1, Lcom/google/android/exoplayer2/StarRating;->FIELD_STAR_RATING:Ljava/lang/String;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 130
    .local v1, "starRating":F
    cmpl-float v2, v1, v2

    if-nez v2, :cond_29

    .line 131
    new-instance v2, Lcom/google/android/exoplayer2/StarRating;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/StarRating;-><init>(I)V

    goto :goto_2e

    .line 132
    :cond_29
    new-instance v2, Lcom/google/android/exoplayer2/StarRating;

    invoke-direct {v2, v0, v1}, Lcom/google/android/exoplayer2/StarRating;-><init>(IF)V

    .line 130
    :goto_2e
    return-object v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 99
    instance-of v0, p1, Lcom/google/android/exoplayer2/StarRating;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 100
    return v1

    .line 102
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/StarRating;

    .line 103
    .local v0, "other":Lcom/google/android/exoplayer2/StarRating;
    iget v2, p0, Lcom/google/android/exoplayer2/StarRating;->maxStars:I

    iget v3, v0, Lcom/google/android/exoplayer2/StarRating;->maxStars:I

    if-ne v2, v3, :cond_18

    iget v2, p0, Lcom/google/android/exoplayer2/StarRating;->starRating:F

    iget v3, v0, Lcom/google/android/exoplayer2/StarRating;->starRating:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1
.end method

.method public getMaxStars()I
    .registers 2

    .line 81
    iget v0, p0, Lcom/google/android/exoplayer2/StarRating;->maxStars:I

    return v0
.end method

.method public getStarRating()F
    .registers 2

    .line 89
    iget v0, p0, Lcom/google/android/exoplayer2/StarRating;->starRating:F

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 94
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/exoplayer2/StarRating;->maxStars:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplayer2/StarRating;->starRating:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isRated()Z
    .registers 3

    .line 75
    iget v0, p0, Lcom/google/android/exoplayer2/StarRating;->starRating:F

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

    .line 116
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 117
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v1, Lcom/google/android/exoplayer2/StarRating;->FIELD_RATING_TYPE:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 118
    sget-object v1, Lcom/google/android/exoplayer2/StarRating;->FIELD_MAX_STARS:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/StarRating;->maxStars:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    sget-object v1, Lcom/google/android/exoplayer2/StarRating;->FIELD_STAR_RATING:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/StarRating;->starRating:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 120
    return-object v0
.end method
