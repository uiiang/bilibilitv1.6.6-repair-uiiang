.class public final Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;
.super Ljava/lang/Object;
.source "MediaItem.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdsConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_AD_TAG_URI:Ljava/lang/String;


# instance fields
.field public final adTagUri:Landroid/net/Uri;

.field public final adsId:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$Fk2OKv0an2Un2ojMt2_35hT1SCg(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 1035
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;->FIELD_AD_TAG_URI:Ljava/lang/String;

    .line 1042
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration$Builder;

    .line 1003
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1004
    # getter for: Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration$Builder;->adTagUri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration$Builder;->access$1600(Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;->adTagUri:Landroid/net/Uri;

    .line 1005
    # getter for: Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration$Builder;->adsId:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration$Builder;->access$1700(Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration$Builder;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;->adsId:Ljava/lang/Object;

    .line 1006
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration$Builder;Lcom/google/android/exoplayer2/MediaItem$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration$Builder;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/MediaItem$1;

    .line 948
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;-><init>(Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration$Builder;)V

    return-void
.end method

.method private static fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;
    .registers 3
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 1045
    sget-object v0, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;->FIELD_AD_TAG_URI:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1046
    .local v0, "adTagUri":Landroid/net/Uri;
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    new-instance v1, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration$Builder;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration$Builder;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration$Builder;->build()Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public buildUpon()Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration$Builder;
    .registers 3

    .line 1010
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration$Builder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;->adTagUri:Landroid/net/Uri;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration$Builder;-><init>(Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;->adsId:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration$Builder;->setAdsId(Ljava/lang/Object;)Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1015
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1016
    return v0

    .line 1018
    :cond_4
    instance-of v1, p1, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 1019
    return v2

    .line 1022
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    .line 1023
    .local v1, "other":Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;
    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;->adTagUri:Landroid/net/Uri;

    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;->adTagUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;->adsId:Ljava/lang/Object;

    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;->adsId:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 1028
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;->adTagUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    .line 1029
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;->adsId:Ljava/lang/Object;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    add-int/2addr v1, v2

    .line 1030
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 4

    .line 1058
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1059
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v1, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;->FIELD_AD_TAG_URI:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;->adTagUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1060
    return-object v0
.end method
