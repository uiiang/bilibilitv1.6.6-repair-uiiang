.class public final synthetic Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader;Landroid/net/Uri;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader;

    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader$$ExternalSyntheticLambda0;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader$$ExternalSyntheticLambda0;->f$1:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader;->lambda$loadBitmap$2$com-google-android-exoplayer2-upstream-DataSourceBitmapLoader(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
