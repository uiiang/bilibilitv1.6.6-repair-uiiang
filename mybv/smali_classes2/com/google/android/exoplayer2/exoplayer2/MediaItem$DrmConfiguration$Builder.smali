.class public final Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private forceDefaultLicenseUri:Z

.field private forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private keySetId:[B

.field private licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private licenseUri:Landroid/net/Uri;

.field private multiSession:Z

.field private playClearContentWithoutKey:Z

.field private scheme:Ljava/util/UUID;


# direct methods
.method private constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 615
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;

    .line 616
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;

    .line 617
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaItem$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/android/exoplayer2/MediaItem$1;

    .line 586
    invoke-direct {p0}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;)V
    .registers 3
    .param p1, "drmConfiguration"    # Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 620
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->scheme:Ljava/util/UUID;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->scheme:Ljava/util/UUID;

    .line 621
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseUri:Landroid/net/Uri;

    .line 622
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;

    .line 623
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->multiSession:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->multiSession:Z

    .line 624
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->playClearContentWithoutKey:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->playClearContentWithoutKey:Z

    .line 625
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->forceDefaultLicenseUri:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->forceDefaultLicenseUri:Z

    .line 626
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;

    .line 627
    # getter for: Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->keySetId:[B
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->access$600(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->keySetId:[B

    .line 628
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;Lcom/google/android/exoplayer2/MediaItem$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/MediaItem$1;

    .line 586
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;-><init>(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;)V
    .registers 3
    .param p1, "scheme"    # Ljava/util/UUID;

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 604
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->scheme:Ljava/util/UUID;

    .line 605
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;

    .line 606
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;

    .line 607
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;Ljava/util/UUID;)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .param p1, "x1"    # Ljava/util/UUID;

    .line 586
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->setNullableScheme(Ljava/util/UUID;)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 586
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->multiSession:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 586
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->playClearContentWithoutKey:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Lcom/google/common/collect/ImmutableList;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 586
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)[B
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 586
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->keySetId:[B

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Landroid/net/Uri;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 586
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Ljava/util/UUID;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 586
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->scheme:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 586
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->forceDefaultLicenseUri:Z

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Lcom/google/common/collect/ImmutableMap;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 586
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method private setNullableScheme(Ljava/util/UUID;)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .registers 2
    .param p1, "scheme"    # Ljava/util/UUID;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 644
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->scheme:Ljava/util/UUID;

    .line 645
    return-object p0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;
    .registers 3

    .line 757
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;-><init>(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;Lcom/google/android/exoplayer2/MediaItem$1;)V

    return-object v0
.end method

.method public forceSessionsForAudioAndVideoTracks(Z)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .registers 3
    .param p1, "forceSessionsForAudioAndVideoTracks"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 706
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->setForceSessionsForAudioAndVideoTracks(Z)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setForceDefaultLicenseUri(Z)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .registers 2
    .param p1, "forceDefaultLicenseUri"    # Z

    .line 682
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->forceDefaultLicenseUri:Z

    .line 683
    return-object p0
.end method

.method public setForceSessionsForAudioAndVideoTracks(Z)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .registers 4
    .param p1, "forceSessionsForAudioAndVideoTracks"    # Z

    .line 719
    nop

    .line 720
    if-eqz p1, :cond_12

    .line 721
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_16

    .line 722
    :cond_12
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 719
    :goto_16
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->setForcedSessionTrackTypes(Ljava/util/List;)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 723
    return-object p0
.end method

.method public setForcedSessionTrackTypes(Ljava/util/List;)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;"
        }
    .end annotation

    .line 739
    .local p1, "forcedSessionTrackTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;

    .line 740
    return-object p0
.end method

.method public setKeySetId([B)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .registers 3
    .param p1, "keySetId"    # [B

    .line 752
    if-eqz p1, :cond_8

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->keySetId:[B

    .line 753
    return-object p0
.end method

.method public setLicenseRequestHeaders(Ljava/util/Map;)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;"
        }
    .end annotation

    .line 665
    .local p1, "licenseRequestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;

    .line 666
    return-object p0
.end method

.method public setLicenseUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .registers 2
    .param p1, "licenseUri"    # Landroid/net/Uri;

    .line 651
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseUri:Landroid/net/Uri;

    .line 652
    return-object p0
.end method

.method public setLicenseUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .registers 3
    .param p1, "licenseUri"    # Ljava/lang/String;

    .line 658
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_8
    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseUri:Landroid/net/Uri;

    .line 659
    return-object p0
.end method

.method public setMultiSession(Z)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .registers 2
    .param p1, "multiSession"    # Z

    .line 672
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->multiSession:Z

    .line 673
    return-object p0
.end method

.method public setPlayClearContentWithoutKey(Z)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .registers 2
    .param p1, "playClearContentWithoutKey"    # Z

    .line 692
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->playClearContentWithoutKey:Z

    .line 693
    return-object p0
.end method

.method public setScheme(Ljava/util/UUID;)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .registers 2
    .param p1, "scheme"    # Ljava/util/UUID;

    .line 633
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->scheme:Ljava/util/UUID;

    .line 634
    return-object p0
.end method
