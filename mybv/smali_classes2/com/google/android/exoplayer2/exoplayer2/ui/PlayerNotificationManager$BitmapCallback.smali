.class public final Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$BitmapCallback;
.super Ljava/lang/Object;
.source "PlayerNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BitmapCallback"
.end annotation


# instance fields
.field private final notificationTag:I

.field final synthetic this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;
    .param p2, "notificationTag"    # I

    .line 602
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$BitmapCallback;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 603
    iput p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$BitmapCallback;->notificationTag:I

    .line 604
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;ILcom/google/android/exoplayer2/ui/PlayerNotificationManager$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$1;

    .line 598
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$BitmapCallback;-><init>(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;I)V

    return-void
.end method


# virtual methods
.method public onBitmap(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 612
    if-eqz p1, :cond_9

    .line 613
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$BitmapCallback;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    iget v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$BitmapCallback;->notificationTag:I

    # invokes: Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->postUpdateNotificationBitmap(Landroid/graphics/Bitmap;I)V
    invoke-static {v0, p1, v1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->access$000(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;Landroid/graphics/Bitmap;I)V

    .line 615
    :cond_9
    return-void
.end method
