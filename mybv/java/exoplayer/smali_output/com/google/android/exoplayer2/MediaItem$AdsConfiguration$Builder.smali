.class public final Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration$Builder;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private adTagUri:Landroid/net/Uri;

.field private adsId:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .registers 2
    .param p1, "adTagUri"    # Landroid/net/Uri;

    .line 961
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 962
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration$Builder;->adTagUri:Landroid/net/Uri;

    .line 963
    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration$Builder;)Landroid/net/Uri;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration$Builder;

    .line 951
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration$Builder;->adTagUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration$Builder;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration$Builder;

    .line 951
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration$Builder;->adsId:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;
    .registers 3

    .line 985
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;-><init>(Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration$Builder;Lcom/google/android/exoplayer2/MediaItem$1;)V

    return-object v0
.end method

.method public setAdTagUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration$Builder;
    .registers 2
    .param p1, "adTagUri"    # Landroid/net/Uri;

    .line 968
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration$Builder;->adTagUri:Landroid/net/Uri;

    .line 969
    return-object p0
.end method

.method public setAdsId(Ljava/lang/Object;)Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration$Builder;
    .registers 2
    .param p1, "adsId"    # Ljava/lang/Object;

    .line 980
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration$Builder;->adsId:Ljava/lang/Object;

    .line 981
    return-object p0
.end method
