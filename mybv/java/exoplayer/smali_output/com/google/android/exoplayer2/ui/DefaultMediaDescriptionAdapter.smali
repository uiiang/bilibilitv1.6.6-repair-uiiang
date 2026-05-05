.class public final Lcom/google/android/exoplayer2/ui/DefaultMediaDescriptionAdapter;
.super Ljava/lang/Object;
.source "DefaultMediaDescriptionAdapter.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final pendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;)V
    .registers 2
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultMediaDescriptionAdapter;->pendingIntent:Landroid/app/PendingIntent;

    .line 53
    return-void
.end method


# virtual methods
.method public createCurrentContentIntent(Lcom/google/android/exoplayer2/Player;)Landroid/app/PendingIntent;
    .registers 3
    .param p1, "player"    # Lcom/google/android/exoplayer2/Player;

    .line 72
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultMediaDescriptionAdapter;->pendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getCurrentContentText(Lcom/google/android/exoplayer2/Player;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "player"    # Lcom/google/android/exoplayer2/Player;

    .line 78
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 79
    const/4 v0, 0x0

    return-object v0

    .line 81
    :cond_a
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getMediaMetadata()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaMetadata;->artist:Ljava/lang/CharSequence;

    .line 82
    .local v0, "artist":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 83
    return-object v0

    .line 86
    :cond_17
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getMediaMetadata()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    return-object v1
.end method

.method public getCurrentContentTitle(Lcom/google/android/exoplayer2/Player;)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "player"    # Lcom/google/android/exoplayer2/Player;

    .line 57
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_b

    .line 58
    return-object v1

    .line 60
    :cond_b
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getMediaMetadata()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    .line 61
    .local v0, "displayTitle":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 62
    return-object v0

    .line 65
    :cond_18
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getMediaMetadata()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/MediaMetadata;->title:Ljava/lang/CharSequence;

    .line 66
    .local v2, "title":Ljava/lang/CharSequence;
    if-eqz v2, :cond_21

    move-object v1, v2

    :cond_21
    return-object v1
.end method

.method public getCurrentLargeIcon(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$BitmapCallback;)Landroid/graphics/Bitmap;
    .registers 6
    .param p1, "player"    # Lcom/google/android/exoplayer2/Player;
    .param p2, "callback"    # Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$BitmapCallback;

    .line 92
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 93
    return-object v1

    .line 95
    :cond_a
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getMediaMetadata()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaMetadata;->artworkData:[B

    .line 96
    .local v0, "data":[B
    if-nez v0, :cond_13

    .line 97
    return-object v1

    .line 99
    :cond_13
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public synthetic getCurrentSubText(Lcom/google/android/exoplayer2/Player;)Ljava/lang/CharSequence;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter$-CC;->$default$getCurrentSubText(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;Lcom/google/android/exoplayer2/Player;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
