.class public abstract Lcom/google/android/exoplayer2/Rating;
.super Ljava/lang/Object;
.source "Rating.java"

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
            "Lcom/google/android/exoplayer2/Rating;",
            ">;"
        }
    .end annotation
.end field

.field static final FIELD_RATING_TYPE:Ljava/lang/String;

.field static final RATING_TYPE_HEART:I = 0x0

.field static final RATING_TYPE_PERCENTAGE:I = 0x1

.field static final RATING_TYPE_STAR:I = 0x2

.field static final RATING_TYPE_THUMB:I = 0x3

.field static final RATING_TYPE_UNSET:I = -0x1

.field static final RATING_UNSET:F = -1.0f


# direct methods
.method public static synthetic $r8$lambda$S87uZHR0r4DpwOSwqteylD8fJ5w(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Rating;
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/Rating;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Rating;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 69
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Rating;->FIELD_RATING_TYPE:Ljava/lang/String;

    .line 72
    new-instance v0, Lcom/google/android/exoplayer2/Rating$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Rating$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/Rating;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Rating;
    .registers 5
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 76
    sget-object v0, Lcom/google/android/exoplayer2/Rating;->FIELD_RATING_TYPE:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 77
    .local v0, "ratingType":I
    packed-switch v0, :pswitch_data_48

    .line 88
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown RatingType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :pswitch_23
    sget-object v1, Lcom/google/android/exoplayer2/ThumbRating;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/Rating;

    return-object v1

    .line 83
    :pswitch_2c
    sget-object v1, Lcom/google/android/exoplayer2/StarRating;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/Rating;

    return-object v1

    .line 81
    :pswitch_35
    sget-object v1, Lcom/google/android/exoplayer2/PercentageRating;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/Rating;

    return-object v1

    .line 79
    :pswitch_3e
    sget-object v1, Lcom/google/android/exoplayer2/HeartRating;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/Rating;

    return-object v1

    nop

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_35
        :pswitch_2c
        :pswitch_23
    .end packed-switch
.end method


# virtual methods
.method public abstract isRated()Z
.end method
