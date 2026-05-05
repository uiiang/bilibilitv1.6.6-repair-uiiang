.class public final Lcom/google/android/exoplayer2/HeartRating;
.super Lcom/google/android/exoplayer2/Rating;
.source "HeartRating.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/HeartRating;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_IS_HEART:Ljava/lang/String;

.field private static final FIELD_RATED:Ljava/lang/String;

.field private static final TYPE:I


# instance fields
.field private final isHeart:Z

.field private final rated:Z


# direct methods
.method public static synthetic $r8$lambda$vPIJW6ssYQujpVr4cEbnIbolVQo(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/HeartRating;
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/HeartRating;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/HeartRating;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 84
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/HeartRating;->FIELD_RATED:Ljava/lang/String;

    .line 85
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/HeartRating;->FIELD_IS_HEART:Ljava/lang/String;

    .line 97
    new-instance v0, Lcom/google/android/exoplayer2/HeartRating$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/HeartRating$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/HeartRating;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Lcom/google/android/exoplayer2/Rating;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/HeartRating;->rated:Z

    .line 43
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/HeartRating;->isHeart:Z

    .line 44
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .param p1, "isHeart"    # Z

    .line 51
    invoke-direct {p0}, Lcom/google/android/exoplayer2/Rating;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/HeartRating;->rated:Z

    .line 53
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/HeartRating;->isHeart:Z

    .line 54
    return-void
.end method

.method private static fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/HeartRating;
    .registers 5
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 100
    sget-object v0, Lcom/google/android/exoplayer2/HeartRating;->FIELD_RATING_TYPE:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 101
    sget-object v0, Lcom/google/android/exoplayer2/HeartRating;->FIELD_RATED:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 102
    .local v0, "isRated":Z
    if-eqz v0, :cond_24

    .line 103
    new-instance v2, Lcom/google/android/exoplayer2/HeartRating;

    sget-object v3, Lcom/google/android/exoplayer2/HeartRating;->FIELD_IS_HEART:Ljava/lang/String;

    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/HeartRating;-><init>(Z)V

    goto :goto_29

    .line 104
    :cond_24
    new-instance v2, Lcom/google/android/exoplayer2/HeartRating;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/HeartRating;-><init>()V

    .line 102
    :goto_29
    return-object v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 73
    instance-of v0, p1, Lcom/google/android/exoplayer2/HeartRating;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 74
    return v1

    .line 76
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/HeartRating;

    .line 77
    .local v0, "other":Lcom/google/android/exoplayer2/HeartRating;
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/HeartRating;->isHeart:Z

    iget-boolean v3, v0, Lcom/google/android/exoplayer2/HeartRating;->isHeart:Z

    if-ne v2, v3, :cond_16

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/HeartRating;->rated:Z

    iget-boolean v3, v0, Lcom/google/android/exoplayer2/HeartRating;->rated:Z

    if-ne v2, v3, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 68
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/HeartRating;->rated:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/HeartRating;->isHeart:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isHeart()Z
    .registers 2

    .line 63
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/HeartRating;->isHeart:Z

    return v0
.end method

.method public isRated()Z
    .registers 2

    .line 58
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/HeartRating;->rated:Z

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 4

    .line 89
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 90
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v1, Lcom/google/android/exoplayer2/HeartRating;->FIELD_RATING_TYPE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 91
    sget-object v1, Lcom/google/android/exoplayer2/HeartRating;->FIELD_RATED:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/HeartRating;->rated:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 92
    sget-object v1, Lcom/google/android/exoplayer2/HeartRating;->FIELD_IS_HEART:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/HeartRating;->isHeart:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 93
    return-object v0
.end method
