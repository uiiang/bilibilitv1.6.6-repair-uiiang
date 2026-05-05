.class public final Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;
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
    name = "RequestMetadata"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;

.field private static final FIELD_EXTRAS:Ljava/lang/String;

.field private static final FIELD_MEDIA_URI:Ljava/lang/String;

.field private static final FIELD_SEARCH_QUERY:Ljava/lang/String;


# instance fields
.field public final extras:Landroid/os/Bundle;

.field public final mediaUri:Landroid/net/Uri;

.field public final searchQuery:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1987
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;->build()Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;->EMPTY:Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;

    .line 2078
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;->FIELD_MEDIA_URI:Ljava/lang/String;

    .line 2079
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;->FIELD_SEARCH_QUERY:Ljava/lang/String;

    .line 2080
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;->FIELD_EXTRAS:Ljava/lang/String;

    .line 2098
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;

    .line 2046
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2047
    # getter for: Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;->mediaUri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;->access$4600(Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;->mediaUri:Landroid/net/Uri;

    .line 2048
    # getter for: Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;->searchQuery:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;->access$4700(Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;->searchQuery:Ljava/lang/String;

    .line 2049
    # getter for: Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;->extras:Landroid/os/Bundle;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;->access$4800(Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;->extras:Landroid/os/Bundle;

    .line 2050
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;Lcom/google/android/exoplayer2/MediaItem$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/MediaItem$1;

    .line 1984
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;-><init>(Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;)V

    return-void
.end method

.method static synthetic lambda$static$0(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;
    .registers 3
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 2100
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;-><init>()V

    sget-object v1, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;->FIELD_MEDIA_URI:Ljava/lang/String;

    .line 2101
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;->setMediaUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;->FIELD_SEARCH_QUERY:Ljava/lang/String;

    .line 2102
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;->setSearchQuery(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;->FIELD_EXTRAS:Ljava/lang/String;

    .line 2103
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;->setExtras(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;

    move-result-object v0

    .line 2104
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;->build()Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;

    move-result-object v0

    .line 2100
    return-object v0
.end method


# virtual methods
.method public buildUpon()Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;
    .registers 3

    .line 2054
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;-><init>(Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;Lcom/google/android/exoplayer2/MediaItem$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 2059
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2060
    return v0

    .line 2062
    :cond_4
    instance-of v1, p1, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 2063
    return v2

    .line 2065
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;

    .line 2066
    .local v1, "that":Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;
    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;->mediaUri:Landroid/net/Uri;

    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;->mediaUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;->searchQuery:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;->searchQuery:Ljava/lang/String;

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
    .registers 5

    .line 2071
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;->mediaUri:Landroid/net/Uri;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    .line 2072
    .local v0, "result":I
    :goto_b
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;->searchQuery:Ljava/lang/String;

    if-nez v3, :cond_12

    goto :goto_16

    :cond_12
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_16
    add-int/2addr v2, v1

    .line 2073
    .end local v0    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 4

    .line 2084
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2085
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;->mediaUri:Landroid/net/Uri;

    if-eqz v1, :cond_e

    .line 2086
    sget-object v2, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;->FIELD_MEDIA_URI:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2088
    :cond_e
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;->searchQuery:Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 2089
    sget-object v2, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;->FIELD_SEARCH_QUERY:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2091
    :cond_17
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_20

    .line 2092
    sget-object v2, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;->FIELD_EXTRAS:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2094
    :cond_20
    return-object v0
.end method
