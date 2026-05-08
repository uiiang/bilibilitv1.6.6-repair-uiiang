.class public final Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private id:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private mimeType:Ljava/lang/String;

.field private roleFlags:I

.field private selectionFlags:I

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .registers 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1491
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->uri:Landroid/net/Uri;

    .line 1492
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;)V
    .registers 3
    .param p1, "subtitleConfiguration"    # Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;

    .line 1494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1495
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->uri:Landroid/net/Uri;

    .line 1496
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->mimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->mimeType:Ljava/lang/String;

    .line 1497
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->language:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->language:Ljava/lang/String;

    .line 1498
    iget v0, p1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->selectionFlags:I

    iput v0, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->selectionFlags:I

    .line 1499
    iget v0, p1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->roleFlags:I

    iput v0, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->roleFlags:I

    .line 1500
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->label:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->label:Ljava/lang/String;

    .line 1501
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->id:Ljava/lang/String;

    .line 1502
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;Lcom/google/android/exoplayer2/MediaItem$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/MediaItem$1;

    .line 1476
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;-><init>(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;)Lcom/google/android/exoplayer2/MediaItem$Subtitle;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;

    .line 1476
    invoke-direct {p0}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->buildSubtitle()Lcom/google/android/exoplayer2/MediaItem$Subtitle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;)Landroid/net/Uri;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;

    .line 1476
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;

    .line 1476
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;

    .line 1476
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->language:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;

    .line 1476
    iget v0, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->selectionFlags:I

    return v0
.end method

.method static synthetic access$3200(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;

    .line 1476
    iget v0, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->roleFlags:I

    return v0
.end method

.method static synthetic access$3300(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;

    .line 1476
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->label:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;

    .line 1476
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->id:Ljava/lang/String;

    return-object v0
.end method

.method private buildSubtitle()Lcom/google/android/exoplayer2/MediaItem$Subtitle;
    .registers 3

    .line 1559
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$Subtitle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/MediaItem$Subtitle;-><init>(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;Lcom/google/android/exoplayer2/MediaItem$1;)V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;
    .registers 3

    .line 1555
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;-><init>(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;Lcom/google/android/exoplayer2/MediaItem$1;)V

    return-object v0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .line 1549
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->id:Ljava/lang/String;

    .line 1550
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;
    .registers 2
    .param p1, "label"    # Ljava/lang/String;

    .line 1542
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->label:Ljava/lang/String;

    .line 1543
    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;
    .registers 2
    .param p1, "language"    # Ljava/lang/String;

    .line 1521
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->language:Ljava/lang/String;

    .line 1522
    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;
    .registers 2
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 1514
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->mimeType:Ljava/lang/String;

    .line 1515
    return-object p0
.end method

.method public setRoleFlags(I)Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;
    .registers 2
    .param p1, "roleFlags"    # I

    .line 1535
    iput p1, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->roleFlags:I

    .line 1536
    return-object p0
.end method

.method public setSelectionFlags(I)Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;
    .registers 2
    .param p1, "selectionFlags"    # I

    .line 1528
    iput p1, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->selectionFlags:I

    .line 1529
    return-object p0
.end method

.method public setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;
    .registers 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1507
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->uri:Landroid/net/Uri;

    .line 1508
    return-object p0
.end method
