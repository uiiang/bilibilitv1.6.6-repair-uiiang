.class public final Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;
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
    name = "DrmConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_FORCED_SESSION_TRACK_TYPES:Ljava/lang/String;

.field private static final FIELD_FORCE_DEFAULT_LICENSE_URI:Ljava/lang/String;

.field private static final FIELD_KEY_SET_ID:Ljava/lang/String;

.field private static final FIELD_LICENSE_REQUEST_HEADERS:Ljava/lang/String;

.field private static final FIELD_LICENSE_URI:Ljava/lang/String;

.field private static final FIELD_MULTI_SESSION:Ljava/lang/String;

.field private static final FIELD_PLAY_CLEAR_CONTENT_WITHOUT_KEY:Ljava/lang/String;

.field private static final FIELD_SCHEME:Ljava/lang/String;


# instance fields
.field public final forceDefaultLicenseUri:Z

.field public final forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final keySetId:[B

.field public final licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final licenseUri:Landroid/net/Uri;

.field public final multiSession:Z

.field public final playClearContentWithoutKey:Z

.field public final requestHeaders:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final scheme:Ljava/util/UUID;

.field public final sessionForClearTypes:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final uuid:Ljava/util/UUID;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$uhgScDZ3MwT5ixhei3hRZbX5i5o(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 874
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->FIELD_SCHEME:Ljava/lang/String;

    .line 875
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->FIELD_LICENSE_URI:Ljava/lang/String;

    .line 876
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->FIELD_LICENSE_REQUEST_HEADERS:Ljava/lang/String;

    .line 877
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->FIELD_MULTI_SESSION:Ljava/lang/String;

    .line 878
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->FIELD_PLAY_CLEAR_CONTENT_WITHOUT_KEY:Ljava/lang/String;

    .line 879
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->FIELD_FORCE_DEFAULT_LICENSE_URI:Ljava/lang/String;

    .line 880
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->FIELD_FORCED_SESSION_TRACK_TYPES:Ljava/lang/String;

    .line 881
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->FIELD_KEY_SET_ID:Ljava/lang/String;

    .line 884
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)V
    .registers 4
    .param p1, "builder"    # Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 810
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 811
    # getter for: Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->forceDefaultLicenseUri:Z
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->access$800(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Z

    move-result v0

    if-eqz v0, :cond_12

    # getter for: Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseUri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->access$200(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    :goto_13
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 812
    # getter for: Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->scheme:Ljava/util/UUID;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->access$300(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->scheme:Ljava/util/UUID;

    .line 813
    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->uuid:Ljava/util/UUID;

    .line 814
    # getter for: Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseUri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->access$200(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseUri:Landroid/net/Uri;

    .line 815
    # getter for: Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->access$900(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->requestHeaders:Lcom/google/common/collect/ImmutableMap;

    .line 816
    # getter for: Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->access$900(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;

    .line 817
    # getter for: Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->multiSession:Z
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->access$1000(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->multiSession:Z

    .line 818
    # getter for: Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->forceDefaultLicenseUri:Z
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->access$800(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->forceDefaultLicenseUri:Z

    .line 819
    # getter for: Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->playClearContentWithoutKey:Z
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->access$1100(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->playClearContentWithoutKey:Z

    .line 820
    # getter for: Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->access$1200(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->sessionForClearTypes:Lcom/google/common/collect/ImmutableList;

    .line 821
    # getter for: Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->access$1200(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;

    .line 822
    nop

    .line 823
    # getter for: Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->keySetId:[B
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->access$1300(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)[B

    move-result-object v0

    if-eqz v0, :cond_69

    .line 824
    # getter for: Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->keySetId:[B
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->access$1300(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)[B

    move-result-object v0

    # getter for: Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->keySetId:[B
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->access$1300(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)[B

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_6a

    .line 825
    :cond_69
    const/4 v0, 0x0

    :goto_6a
    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->keySetId:[B

    .line 826
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;Lcom/google/android/exoplayer2/MediaItem$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/MediaItem$1;

    .line 583
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;-><init>(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;)[B
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    .line 583
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->keySetId:[B

    return-object v0
.end method

.method private static fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;
    .registers 13
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 887
    sget-object v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->FIELD_SCHEME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 888
    .local v0, "scheme":Ljava/util/UUID;
    sget-object v1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->FIELD_LICENSE_URI:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 889
    .local v1, "licenseUri":Landroid/net/Uri;
    sget-object v2, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->FIELD_LICENSE_REQUEST_HEADERS:Ljava/lang/String;

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 890
    invoke-static {p0, v2, v3}, Lcom/google/android/exoplayer2/util/BundleableUtil;->getBundleWithDefault(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 891
    .local v2, "licenseMapAsBundle":Landroid/os/Bundle;
    nop

    .line 892
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/BundleableUtil;->bundleToStringImmutableMap(Landroid/os/Bundle;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    .line 893
    .local v3, "licenseRequestHeaders":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v4, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->FIELD_MULTI_SESSION:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 894
    .local v4, "multiSession":Z
    sget-object v6, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->FIELD_PLAY_CLEAR_CONTENT_WITHOUT_KEY:Ljava/lang/String;

    .line 895
    invoke-virtual {p0, v6, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 896
    .local v6, "playClearContentWithoutKey":Z
    sget-object v7, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->FIELD_FORCE_DEFAULT_LICENSE_URI:Ljava/lang/String;

    invoke-virtual {p0, v7, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 897
    .local v5, "forceDefaultLicenseUri":Z
    sget-object v7, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->FIELD_FORCED_SESSION_TRACK_TYPES:Ljava/lang/String;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 898
    invoke-static {p0, v7, v8}, Lcom/google/android/exoplayer2/util/BundleableUtil;->getIntegerArrayListWithDefault(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v7

    .line 900
    .local v7, "forcedSessionTrackTypesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    nop

    .line 901
    invoke-static {v7}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    .line 902
    .local v8, "forcedSessionTrackTypes":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Ljava/lang/Integer;>;"
    sget-object v9, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->FIELD_KEY_SET_ID:Ljava/lang/String;

    invoke-virtual {p0, v9}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v9

    .line 904
    .local v9, "keySetId":[B
    new-instance v10, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    invoke-direct {v10, v0}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;-><init>(Ljava/util/UUID;)V

    .line 905
    .local v10, "builder":Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    nop

    .line 906
    invoke-virtual {v10, v1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->setLicenseUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    move-result-object v11

    .line 907
    invoke-virtual {v11, v3}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->setLicenseRequestHeaders(Ljava/util/Map;)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    move-result-object v11

    .line 908
    invoke-virtual {v11, v4}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->setMultiSession(Z)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    move-result-object v11

    .line 909
    invoke-virtual {v11, v5}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->setForceDefaultLicenseUri(Z)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    move-result-object v11

    .line 910
    invoke-virtual {v11, v6}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->setPlayClearContentWithoutKey(Z)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    move-result-object v11

    .line 911
    invoke-virtual {v11, v8}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->setForcedSessionTrackTypes(Ljava/util/List;)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    move-result-object v11

    .line 912
    invoke-virtual {v11, v9}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->setKeySetId([B)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    move-result-object v11

    .line 913
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->build()Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    move-result-object v11

    .line 905
    return-object v11
.end method


# virtual methods
.method public buildUpon()Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .registers 3

    .line 836
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;-><init>(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;Lcom/google/android/exoplayer2/MediaItem$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 841
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 842
    return v0

    .line 844
    :cond_4
    instance-of v1, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 845
    return v2

    .line 848
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    .line 849
    .local v1, "other":Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;
    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->scheme:Ljava/util/UUID;

    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->scheme:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseUri:Landroid/net/Uri;

    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseUri:Landroid/net/Uri;

    .line 850
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;

    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;

    .line 851
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->multiSession:Z

    iget-boolean v4, v1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->multiSession:Z

    if-ne v3, v4, :cond_52

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->forceDefaultLicenseUri:Z

    iget-boolean v4, v1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->forceDefaultLicenseUri:Z

    if-ne v3, v4, :cond_52

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->playClearContentWithoutKey:Z

    iget-boolean v4, v1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->playClearContentWithoutKey:Z

    if-ne v3, v4, :cond_52

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;

    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;

    .line 855
    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->keySetId:[B

    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->keySetId:[B

    .line 856
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_52

    goto :goto_53

    :cond_52
    const/4 v0, 0x0

    .line 849
    :goto_53
    return v0
.end method

.method public getKeySetId()[B
    .registers 3

    .line 831
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->keySetId:[B

    if-eqz v0, :cond_a

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 861
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->scheme:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    .line 862
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseUri:Landroid/net/Uri;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    add-int/2addr v1, v2

    .line 863
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 864
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->multiSession:Z

    add-int/2addr v1, v2

    .line 865
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->forceDefaultLicenseUri:Z

    add-int/2addr v0, v2

    .line 866
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->playClearContentWithoutKey:Z

    add-int/2addr v1, v2

    .line 867
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 868
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->keySetId:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    .line 869
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 5

    .line 918
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 919
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->FIELD_SCHEME:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->scheme:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseUri:Landroid/net/Uri;

    if-eqz v1, :cond_19

    .line 921
    sget-object v2, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->FIELD_LICENSE_URI:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 923
    :cond_19
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 924
    sget-object v1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->FIELD_LICENSE_REQUEST_HEADERS:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;

    .line 925
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/BundleableUtil;->stringMapToBundle(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v2

    .line 924
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 927
    :cond_2c
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->multiSession:Z

    if-eqz v1, :cond_35

    .line 928
    sget-object v2, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->FIELD_MULTI_SESSION:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 930
    :cond_35
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->playClearContentWithoutKey:Z

    if-eqz v1, :cond_3e

    .line 931
    sget-object v2, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->FIELD_PLAY_CLEAR_CONTENT_WITHOUT_KEY:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 933
    :cond_3e
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->forceDefaultLicenseUri:Z

    if-eqz v1, :cond_47

    .line 934
    sget-object v2, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->FIELD_FORCE_DEFAULT_LICENSE_URI:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 936
    :cond_47
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5b

    .line 937
    sget-object v1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->FIELD_FORCED_SESSION_TRACK_TYPES:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 940
    :cond_5b
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->keySetId:[B

    if-eqz v1, :cond_64

    .line 941
    sget-object v2, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->FIELD_KEY_SET_ID:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 943
    :cond_64
    return-object v0
.end method
