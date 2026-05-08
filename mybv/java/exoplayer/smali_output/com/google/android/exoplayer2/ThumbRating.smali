.class public final Lcom/google/android/exoplayer2/ThumbRating;
.super Lcom/google/android/exoplayer2/Rating;
.source "ThumbRating.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/ThumbRating;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_IS_THUMBS_UP:Ljava/lang/String;

.field private static final FIELD_RATED:Ljava/lang/String;

.field private static final TYPE:I = 0x3


# instance fields
.field private final isThumbsUp:Z

.field private final rated:Z


# direct methods
.method public static synthetic $r8$lambda$AKC_JpI1ZPlm6EFzvYW84DJrS_k(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/ThumbRating;
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/ThumbRating;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/ThumbRating;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 83
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/ThumbRating;->FIELD_RATED:Ljava/lang/String;

    .line 84
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/ThumbRating;->FIELD_IS_THUMBS_UP:Ljava/lang/String;

    .line 96
    new-instance v0, Lcom/google/android/exoplayer2/ThumbRating$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/ThumbRating$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/ThumbRating;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Lcom/google/android/exoplayer2/Rating;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ThumbRating;->rated:Z

    .line 42
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ThumbRating;->isThumbsUp:Z

    .line 43
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .param p1, "isThumbsUp"    # Z

    .line 50
    invoke-direct {p0}, Lcom/google/android/exoplayer2/Rating;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ThumbRating;->rated:Z

    .line 52
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ThumbRating;->isThumbsUp:Z

    .line 53
    return-void
.end method

.method private static fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/ThumbRating;
    .registers 5
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 99
    sget-object v0, Lcom/google/android/exoplayer2/ThumbRating;->FIELD_RATING_TYPE:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 100
    sget-object v0, Lcom/google/android/exoplayer2/ThumbRating;->FIELD_RATED:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 101
    .local v0, "rated":Z
    if-eqz v0, :cond_25

    .line 102
    new-instance v1, Lcom/google/android/exoplayer2/ThumbRating;

    sget-object v3, Lcom/google/android/exoplayer2/ThumbRating;->FIELD_IS_THUMBS_UP:Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ThumbRating;-><init>(Z)V

    goto :goto_2a

    .line 103
    :cond_25
    new-instance v1, Lcom/google/android/exoplayer2/ThumbRating;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/ThumbRating;-><init>()V

    .line 101
    :goto_2a
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 72
    instance-of v0, p1, Lcom/google/android/exoplayer2/ThumbRating;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 73
    return v1

    .line 75
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/ThumbRating;

    .line 76
    .local v0, "other":Lcom/google/android/exoplayer2/ThumbRating;
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ThumbRating;->isThumbsUp:Z

    iget-boolean v3, v0, Lcom/google/android/exoplayer2/ThumbRating;->isThumbsUp:Z

    if-ne v2, v3, :cond_16

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ThumbRating;->rated:Z

    iget-boolean v3, v0, Lcom/google/android/exoplayer2/ThumbRating;->rated:Z

    if-ne v2, v3, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 67
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ThumbRating;->rated:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ThumbRating;->isThumbsUp:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isRated()Z
    .registers 2

    .line 57
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ThumbRating;->rated:Z

    return v0
.end method

.method public isThumbsUp()Z
    .registers 2

    .line 62
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ThumbRating;->isThumbsUp:Z

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 4

    .line 88
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 89
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v1, Lcom/google/android/exoplayer2/ThumbRating;->FIELD_RATING_TYPE:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 90
    sget-object v1, Lcom/google/android/exoplayer2/ThumbRating;->FIELD_RATED:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ThumbRating;->rated:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 91
    sget-object v1, Lcom/google/android/exoplayer2/ThumbRating;->FIELD_IS_THUMBS_UP:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ThumbRating;->isThumbsUp:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 92
    return-object v0
.end method
