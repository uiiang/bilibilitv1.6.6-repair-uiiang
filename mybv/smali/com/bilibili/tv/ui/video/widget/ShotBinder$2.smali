.class Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;
.super Ljava/lang/Object;
.source "ShotBinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadShotImage(Lcom/bilibili/tv/api/video/VideoShotItem;Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/widget/ShotBinder;

.field final synthetic val$cacheKey:Ljava/lang/String;

.field final synthetic val$currentVersion:J

.field final synthetic val$holder:Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;

.field final synthetic val$imageUrl:Ljava/lang/String;

.field final synthetic val$shotTime:I

.field final synthetic val$snapshotIndex:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/widget/ShotBinder;JLjava/lang/String;Ljava/lang/String;ILcom/bilibili/tv/ui/video/widget/CompactVideoHolder;I)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->this$0:Lcom/bilibili/tv/ui/video/widget/ShotBinder;

    iput-wide p2, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->val$currentVersion:J

    iput-object p4, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->val$cacheKey:Ljava/lang/String;

    iput-object p5, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->val$imageUrl:Ljava/lang/String;

    iput p6, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->val$snapshotIndex:I

    iput-object p7, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->val$holder:Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;

    iput p8, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->val$shotTime:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->val$currentVersion:J

    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadVersion:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$000()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3b

    .line 166
    const-string v0, "ShotBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadShotImage: cancelled due to version change "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->val$cacheKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadingUrls:Ljava/util/Set;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$100()Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 168
    :try_start_2d
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadingUrls:Ljava/util/Set;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$100()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->val$cacheKey:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 169
    monitor-exit v1

    .line 244
    :goto_37
    return-void

    .line 169
    :catchall_38
    move-exception v0

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_38

    throw v0

    .line 174
    :cond_3b
    :try_start_3b
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->val$imageUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 176
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 177
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 178
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 180
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 181
    const/4 v2, 0x2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 183
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 184
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 186
    if-nez v1, :cond_b5

    .line 187
    const-string v0, "ShotBinder"

    const-string v1, "loadShotImage: sheetBitmap is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadingUrls:Ljava/util/Set;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$100()Ljava/util/Set;

    move-result-object v1

    monitor-enter v1
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_77} :catch_85

    .line 189
    :try_start_77
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadingUrls:Ljava/util/Set;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$100()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->val$cacheKey:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 190
    monitor-exit v1

    goto :goto_37

    :catchall_82
    move-exception v0

    monitor-exit v1
    :try_end_84
    .catchall {:try_start_77 .. :try_end_84} :catchall_82

    :try_start_84
    throw v0
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_85} :catch_85

    .line 238
    :catch_85
    move-exception v0

    .line 239
    const-string v1, "ShotBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadShotImage error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadingUrls:Ljava/util/Set;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$100()Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 241
    :try_start_a7
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadingUrls:Ljava/util/Set;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$100()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->val$cacheKey:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 242
    monitor-exit v1

    goto :goto_37

    :catchall_b2
    move-exception v0

    monitor-exit v1
    :try_end_b4
    .catchall {:try_start_a7 .. :try_end_b4} :catchall_b2

    throw v0

    .line 194
    :cond_b5
    :try_start_b5
    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->val$currentVersion:J

    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadVersion:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$000()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_f4

    .line 195
    const-string v0, "ShotBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadShotImage: cancelled after download "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->val$cacheKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 197
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadingUrls:Ljava/util/Set;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$100()Ljava/util/Set;

    move-result-object v1

    monitor-enter v1
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_e5} :catch_85

    .line 198
    :try_start_e5
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadingUrls:Ljava/util/Set;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$100()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->val$cacheKey:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 199
    monitor-exit v1

    goto/16 :goto_37

    :catchall_f1
    move-exception v0

    monitor-exit v1
    :try_end_f3
    .catchall {:try_start_e5 .. :try_end_f3} :catchall_f1

    :try_start_f3
    throw v0

    .line 203
    :cond_f4
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 204
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 205
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->this$0:Lcom/bilibili/tv/ui/video/widget/ShotBinder;

    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;
    invoke-static {v3}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$200(Lcom/bilibili/tv/ui/video/widget/ShotBinder;)Lcom/bilibili/tv/api/video/VideoShot;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bilibili/tv/api/video/VideoShot;->getImgXLen()I

    move-result v3

    div-int/2addr v0, v3

    .line 206
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->this$0:Lcom/bilibili/tv/ui/video/widget/ShotBinder;

    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;
    invoke-static {v3}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$200(Lcom/bilibili/tv/ui/video/widget/ShotBinder;)Lcom/bilibili/tv/api/video/VideoShot;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bilibili/tv/api/video/VideoShot;->getImgYLen()I

    move-result v3

    div-int/2addr v2, v3

    .line 208
    iget v3, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->val$snapshotIndex:I

    iget-object v4, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->this$0:Lcom/bilibili/tv/ui/video/widget/ShotBinder;

    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;
    invoke-static {v4}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$200(Lcom/bilibili/tv/ui/video/widget/ShotBinder;)Lcom/bilibili/tv/api/video/VideoShot;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bilibili/tv/api/video/VideoShot;->getImgXLen()I

    move-result v4

    iget-object v5, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->this$0:Lcom/bilibili/tv/ui/video/widget/ShotBinder;

    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;
    invoke-static {v5}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$200(Lcom/bilibili/tv/ui/video/widget/ShotBinder;)Lcom/bilibili/tv/api/video/VideoShot;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bilibili/tv/api/video/VideoShot;->getImgYLen()I

    move-result v5

    mul-int/2addr v4, v5

    rem-int/2addr v3, v4

    .line 209
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->this$0:Lcom/bilibili/tv/ui/video/widget/ShotBinder;

    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;
    invoke-static {v4}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$200(Lcom/bilibili/tv/ui/video/widget/ShotBinder;)Lcom/bilibili/tv/api/video/VideoShot;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bilibili/tv/api/video/VideoShot;->getImgXLen()I

    move-result v4

    rem-int v4, v3, v4

    .line 210
    iget-object v5, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->this$0:Lcom/bilibili/tv/ui/video/widget/ShotBinder;

    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;
    invoke-static {v5}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$200(Lcom/bilibili/tv/ui/video/widget/ShotBinder;)Lcom/bilibili/tv/api/video/VideoShot;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bilibili/tv/api/video/VideoShot;->getImgXLen()I

    move-result v5

    div-int/2addr v3, v5

    .line 212
    mul-int/2addr v4, v0

    .line 213
    mul-int/2addr v3, v2

    .line 215
    invoke-static {v1, v4, v3, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 220
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->snapshotCache:Landroid/util/LruCache;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$300()Landroid/util/LruCache;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->val$cacheKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadingUrls:Ljava/util/Set;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$100()Ljava/util/Set;

    move-result-object v1

    monitor-enter v1
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_155} :catch_85

    .line 223
    :try_start_155
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadingUrls:Ljava/util/Set;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$100()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->val$cacheKey:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 224
    monitor-exit v1
    :try_end_15f
    .catchall {:try_start_155 .. :try_end_15f} :catchall_16f

    .line 226
    :try_start_15f
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->val$holder:Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getCoverImageView()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v1

    new-instance v2, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2$1;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2$1;-><init>(Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/widget/ScalableImageView;->post(Ljava/lang/Runnable;)Z
    :try_end_16d
    .catch Ljava/lang/Exception; {:try_start_15f .. :try_end_16d} :catch_85

    goto/16 :goto_37

    .line 224
    :catchall_16f
    move-exception v0

    :try_start_170
    monitor-exit v1
    :try_end_171
    .catchall {:try_start_170 .. :try_end_171} :catchall_16f

    :try_start_171
    throw v0
    :try_end_172
    .catch Ljava/lang/Exception; {:try_start_171 .. :try_end_172} :catch_85
.end method
