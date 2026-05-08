.class public final Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private extras:Landroid/os/Bundle;

.field private mediaUri:Landroid/net/Uri;

.field private searchQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1997
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;)V
    .registers 3
    .param p1, "requestMetadata"    # Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;

    .line 1999
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2000
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;->mediaUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;->mediaUri:Landroid/net/Uri;

    .line 2001
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;->searchQuery:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;->searchQuery:Ljava/lang/String;

    .line 2002
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;->extras:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;->extras:Landroid/os/Bundle;

    .line 2003
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;Lcom/google/android/exoplayer2/MediaItem$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/MediaItem$1;

    .line 1990
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;-><init>(Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;)Landroid/net/Uri;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;

    .line 1990
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;->mediaUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;

    .line 1990
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;->searchQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;)Landroid/os/Bundle;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;

    .line 1990
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;->extras:Landroid/os/Bundle;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;
    .registers 3

    .line 2028
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;-><init>(Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;Lcom/google/android/exoplayer2/MediaItem$1;)V

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;
    .registers 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 2022
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;->extras:Landroid/os/Bundle;

    .line 2023
    return-object p0
.end method

.method public setMediaUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;
    .registers 2
    .param p1, "mediaUri"    # Landroid/net/Uri;

    .line 2008
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;->mediaUri:Landroid/net/Uri;

    .line 2009
    return-object p0
.end method

.method public setSearchQuery(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;
    .registers 2
    .param p1, "searchQuery"    # Ljava/lang/String;

    .line 2015
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;->searchQuery:Ljava/lang/String;

    .line 2016
    return-object p0
.end method
