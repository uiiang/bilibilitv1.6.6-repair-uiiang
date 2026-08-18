.class Lcom/bilibili/tv/player/widget/PlayerSeekBar$3;
.super Ljava/lang/Object;
.source "PlayerSeekBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/player/widget/PlayerSeekBar;->loadSnapshotAsync(ILcom/bilibili/tv/player/widget/PlayerSeekBar$SnapshotLoadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

.field final synthetic val$cacheKey:Ljava/lang/String;

.field final synthetic val$callback:Lcom/bilibili/tv/player/widget/PlayerSeekBar$SnapshotLoadCallback;

.field final synthetic val$imageUrl:Ljava/lang/String;

.field final synthetic val$snapshotIndex:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/player/widget/PlayerSeekBar;Ljava/lang/String;Lcom/bilibili/tv/player/widget/PlayerSeekBar$SnapshotLoadCallback;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 252
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar$3;->this$0:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    iput-object p2, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar$3;->val$imageUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar$3;->val$callback:Lcom/bilibili/tv/player/widget/PlayerSeekBar$SnapshotLoadCallback;

    iput p4, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar$3;->val$snapshotIndex:I

    iput-object p5, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar$3;->val$cacheKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 256
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar$3;->val$imageUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 258
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 259
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 260
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 262
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 263
    const/4 v2, 0x2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 265
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 266
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 268
    if-nez v1, :cond_3b

    .line 269
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar$3;->this$0:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    new-instance v1, Lcom/bilibili/tv/player/widget/PlayerSeekBar$3$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/player/widget/PlayerSeekBar$3$1;-><init>(Lcom/bilibili/tv/player/widget/PlayerSeekBar$3;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->post(Ljava/lang/Runnable;)Z

    .line 320
    :cond_3a
    :goto_3a
    return-void

    .line 278
    :cond_3b
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 279
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 280
    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar$3;->this$0:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    # getter for: Lcom/bilibili/tv/player/widget/PlayerSeekBar;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;
    invoke-static {v3}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->access$200(Lcom/bilibili/tv/player/widget/PlayerSeekBar;)Lcom/bilibili/tv/api/video/VideoShot;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bilibili/tv/api/video/VideoShot;->getImgXLen()I

    move-result v3

    div-int/2addr v0, v3

    .line 281
    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar$3;->this$0:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    # getter for: Lcom/bilibili/tv/player/widget/PlayerSeekBar;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;
    invoke-static {v3}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->access$200(Lcom/bilibili/tv/player/widget/PlayerSeekBar;)Lcom/bilibili/tv/api/video/VideoShot;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bilibili/tv/api/video/VideoShot;->getImgYLen()I

    move-result v3

    div-int/2addr v2, v3

    .line 283
    iget v3, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar$3;->val$snapshotIndex:I

    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar$3;->this$0:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    # getter for: Lcom/bilibili/tv/player/widget/PlayerSeekBar;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;
    invoke-static {v4}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->access$200(Lcom/bilibili/tv/player/widget/PlayerSeekBar;)Lcom/bilibili/tv/api/video/VideoShot;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bilibili/tv/api/video/VideoShot;->getImgXLen()I

    move-result v4

    iget-object v5, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar$3;->this$0:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    # getter for: Lcom/bilibili/tv/player/widget/PlayerSeekBar;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;
    invoke-static {v5}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->access$200(Lcom/bilibili/tv/player/widget/PlayerSeekBar;)Lcom/bilibili/tv/api/video/VideoShot;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bilibili/tv/api/video/VideoShot;->getImgYLen()I

    move-result v5

    mul-int/2addr v4, v5

    rem-int/2addr v3, v4

    .line 284
    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar$3;->this$0:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    # getter for: Lcom/bilibili/tv/player/widget/PlayerSeekBar;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;
    invoke-static {v4}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->access$200(Lcom/bilibili/tv/player/widget/PlayerSeekBar;)Lcom/bilibili/tv/api/video/VideoShot;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bilibili/tv/api/video/VideoShot;->getImgXLen()I

    move-result v4

    rem-int v4, v3, v4

    .line 285
    iget-object v5, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar$3;->this$0:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    # getter for: Lcom/bilibili/tv/player/widget/PlayerSeekBar;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;
    invoke-static {v5}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->access$200(Lcom/bilibili/tv/player/widget/PlayerSeekBar;)Lcom/bilibili/tv/api/video/VideoShot;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bilibili/tv/api/video/VideoShot;->getImgXLen()I

    move-result v5

    div-int/2addr v3, v5

    .line 287
    mul-int/2addr v4, v0

    .line 288
    mul-int/2addr v3, v2

    .line 290
    invoke-static {v1, v4, v3, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 295
    const/16 v1, 0x140

    const/16 v2, 0xb4

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 299
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar$3;->this$0:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    # getter for: Lcom/bilibili/tv/player/widget/PlayerSeekBar;->snapshotCache:Landroid/util/LruCache;
    invoke-static {v2}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->access$300(Lcom/bilibili/tv/player/widget/PlayerSeekBar;)Landroid/util/LruCache;

    move-result-object v2

    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar$3;->val$cacheKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar$3;->this$0:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    new-instance v3, Lcom/bilibili/tv/player/widget/PlayerSeekBar$3$2;

    invoke-direct {v3, p0, v1}, Lcom/bilibili/tv/player/widget/PlayerSeekBar$3$2;-><init>(Lcom/bilibili/tv/player/widget/PlayerSeekBar$3;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->post(Ljava/lang/Runnable;)Z

    .line 308
    if-eq v0, v1, :cond_3a

    .line 309
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b1} :catch_b2

    goto :goto_3a

    .line 311
    :catch_b2
    move-exception v0

    .line 312
    const-string v1, "PlayerSeekBar_java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadSnapshotAsync error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar$3;->this$0:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    new-instance v1, Lcom/bilibili/tv/player/widget/PlayerSeekBar$3$3;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/player/widget/PlayerSeekBar$3$3;-><init>(Lcom/bilibili/tv/player/widget/PlayerSeekBar$3;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3a
.end method
