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

.field final synthetic val$holderRef:Ljava/lang/ref/WeakReference;

.field final synthetic val$imageUrl:Ljava/lang/String;

.field final synthetic val$shotTime:I

.field final synthetic val$snapshotIndex:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/widget/ShotBinder;JLjava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->this$0:Lcom/bilibili/tv/ui/video/widget/ShotBinder;

    iput-wide p2, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->val$currentVersion:J

    iput-object p4, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->val$cacheKey:Ljava/lang/String;

    iput-object p5, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->val$holderRef:Ljava/lang/ref/WeakReference;

    iput-object p6, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->val$imageUrl:Ljava/lang/String;

    iput p7, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->val$snapshotIndex:I

    iput p8, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->val$shotTime:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 175
    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->val$currentVersion:J

    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadVersion:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$000()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3b

    .line 176
    const-string v2, "ShotBinder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadShotImage: cancelled due to version change "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->val$cacheKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadingUrls:Ljava/util/Set;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$100()Ljava/util/Set;

    move-result-object v3

    monitor-enter v3

    .line 178
    :try_start_2d
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadingUrls:Ljava/util/Set;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$100()Ljava/util/Set;

    move-result-object v2

    iget-object v4, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->val$cacheKey:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 179
    monitor-exit v3

    .line 277
    :goto_37
    return-void

    .line 179
    :catchall_38
    move-exception v2

    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_38

    throw v2

    .line 184
    :cond_3b
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->val$holderRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;

    .line 185
    if-nez v2, :cond_72

    .line 186
    const-string v2, "ShotBinder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadShotImage: holder recycled, skip "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->val$cacheKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadingUrls:Ljava/util/Set;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$100()Ljava/util/Set;

    move-result-object v3

    monitor-enter v3

    .line 188
    :try_start_64
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadingUrls:Ljava/util/Set;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$100()Ljava/util/Set;

    move-result-object v2

    iget-object v4, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->val$cacheKey:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 189
    monitor-exit v3

    goto :goto_37

    :catchall_6f
    move-exception v2

    monitor-exit v3
    :try_end_71
    .catchall {:try_start_64 .. :try_end_71} :catchall_6f

    throw v2

    .line 192
    :cond_72
    iget-wide v4, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->val$currentVersion:J

    .line 195
    :try_start_74
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->val$imageUrl:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    .line 197
    const/16 v2, 0x2710

    invoke-virtual {v8, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 198
    const/16 v2, 0x2710

    invoke-virtual {v8, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_8d} :catch_be

    .line 200
    :try_start_8d
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->connect()V

    .line 202
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 203
    const/4 v3, 0x2

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 205
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v3, v6, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 207
    if-nez v2, :cond_f7

    .line 208
    const-string v2, "ShotBinder"

    const-string v3, "loadShotImage: sheetBitmap is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadingUrls:Ljava/util/Set;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$100()Ljava/util/Set;

    move-result-object v3

    monitor-enter v3
    :try_end_af
    .catchall {:try_start_8d .. :try_end_af} :catchall_f2

    .line 210
    :try_start_af
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadingUrls:Ljava/util/Set;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$100()Ljava/util/Set;

    move-result-object v2

    iget-object v4, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->val$cacheKey:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 211
    monitor-exit v3
    :try_end_b9
    .catchall {:try_start_af .. :try_end_b9} :catchall_ef

    .line 269
    :try_start_b9
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_bc} :catch_be

    goto/16 :goto_37

    .line 271
    :catch_be
    move-exception v2

    .line 272
    const-string v3, "ShotBinder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadShotImage error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadingUrls:Ljava/util/Set;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$100()Ljava/util/Set;

    move-result-object v3

    monitor-enter v3

    .line 274
    :try_start_e0
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadingUrls:Ljava/util/Set;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$100()Ljava/util/Set;

    move-result-object v2

    iget-object v4, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->val$cacheKey:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 275
    monitor-exit v3

    goto/16 :goto_37

    :catchall_ec
    move-exception v2

    monitor-exit v3
    :try_end_ee
    .catchall {:try_start_e0 .. :try_end_ee} :catchall_ec

    throw v2

    .line 211
    :catchall_ef
    move-exception v2

    :try_start_f0
    monitor-exit v3
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_ef

    :try_start_f1
    throw v2
    :try_end_f2
    .catchall {:try_start_f1 .. :try_end_f2} :catchall_f2

    .line 269
    :catchall_f2
    move-exception v2

    :try_start_f3
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 270
    throw v2
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_f7} :catch_be

    .line 215
    :cond_f7
    :try_start_f7
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadVersion:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$000()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_137

    .line 216
    const-string v3, "ShotBinder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadShotImage: cancelled after download "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->val$cacheKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 218
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadingUrls:Ljava/util/Set;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$100()Ljava/util/Set;

    move-result-object v3

    monitor-enter v3
    :try_end_125
    .catchall {:try_start_f7 .. :try_end_125} :catchall_f2

    .line 219
    :try_start_125
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadingUrls:Ljava/util/Set;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$100()Ljava/util/Set;

    move-result-object v2

    iget-object v4, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->val$cacheKey:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 220
    monitor-exit v3
    :try_end_12f
    .catchall {:try_start_125 .. :try_end_12f} :catchall_134

    .line 269
    :try_start_12f
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_132} :catch_be

    goto/16 :goto_37

    .line 220
    :catchall_134
    move-exception v2

    :try_start_135
    monitor-exit v3
    :try_end_136
    .catchall {:try_start_135 .. :try_end_136} :catchall_134

    :try_start_136
    throw v2

    .line 224
    :cond_137
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 225
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 226
    iget-object v7, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->this$0:Lcom/bilibili/tv/ui/video/widget/ShotBinder;

    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;
    invoke-static {v7}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$200(Lcom/bilibili/tv/ui/video/widget/ShotBinder;)Lcom/bilibili/tv/api/video/VideoShot;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bilibili/tv/api/video/VideoShot;->getImgXLen()I

    move-result v7

    div-int/2addr v3, v7

    .line 227
    iget-object v7, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->this$0:Lcom/bilibili/tv/ui/video/widget/ShotBinder;

    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;
    invoke-static {v7}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$200(Lcom/bilibili/tv/ui/video/widget/ShotBinder;)Lcom/bilibili/tv/api/video/VideoShot;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bilibili/tv/api/video/VideoShot;->getImgYLen()I

    move-result v7

    div-int/2addr v6, v7

    .line 229
    iget v7, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->val$snapshotIndex:I

    iget-object v9, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->this$0:Lcom/bilibili/tv/ui/video/widget/ShotBinder;

    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;
    invoke-static {v9}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$200(Lcom/bilibili/tv/ui/video/widget/ShotBinder;)Lcom/bilibili/tv/api/video/VideoShot;

    move-result-object v9

    invoke-virtual {v9}, Lcom/bilibili/tv/api/video/VideoShot;->getImgXLen()I

    move-result v9

    iget-object v10, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->this$0:Lcom/bilibili/tv/ui/video/widget/ShotBinder;

    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;
    invoke-static {v10}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$200(Lcom/bilibili/tv/ui/video/widget/ShotBinder;)Lcom/bilibili/tv/api/video/VideoShot;

    move-result-object v10

    invoke-virtual {v10}, Lcom/bilibili/tv/api/video/VideoShot;->getImgYLen()I

    move-result v10

    mul-int/2addr v9, v10

    rem-int/2addr v7, v9

    .line 230
    iget-object v9, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->this$0:Lcom/bilibili/tv/ui/video/widget/ShotBinder;

    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;
    invoke-static {v9}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$200(Lcom/bilibili/tv/ui/video/widget/ShotBinder;)Lcom/bilibili/tv/api/video/VideoShot;

    move-result-object v9

    invoke-virtual {v9}, Lcom/bilibili/tv/api/video/VideoShot;->getImgXLen()I

    move-result v9

    rem-int v9, v7, v9

    .line 231
    iget-object v10, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->this$0:Lcom/bilibili/tv/ui/video/widget/ShotBinder;

    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;
    invoke-static {v10}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$200(Lcom/bilibili/tv/ui/video/widget/ShotBinder;)Lcom/bilibili/tv/api/video/VideoShot;

    move-result-object v10

    invoke-virtual {v10}, Lcom/bilibili/tv/api/video/VideoShot;->getImgXLen()I

    move-result v10

    div-int/2addr v7, v10

    .line 233
    mul-int/2addr v9, v3

    .line 234
    mul-int/2addr v7, v6

    .line 236
    invoke-static {v2, v9, v7, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 241
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->snapshotCache:Landroid/util/LruCache;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$300()Landroid/util/LruCache;

    move-result-object v3

    iget-object v6, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->val$cacheKey:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_19c

    .line 244
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 247
    :cond_19c
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadingUrls:Ljava/util/Set;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$100()Ljava/util/Set;

    move-result-object v3

    monitor-enter v3
    :try_end_1a1
    .catchall {:try_start_136 .. :try_end_1a1} :catchall_f2

    .line 248
    :try_start_1a1
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadingUrls:Ljava/util/Set;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$100()Ljava/util/Set;

    move-result-object v2

    iget-object v6, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->val$cacheKey:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 249
    monitor-exit v3
    :try_end_1ab
    .catchall {:try_start_1a1 .. :try_end_1ab} :catchall_1d4

    .line 252
    :try_start_1ab
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->val$holderRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;

    .line 253
    if-nez v6, :cond_1d7

    .line 254
    const-string v2, "ShotBinder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadShotImage: holder recycled before set image "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->val$cacheKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1cf
    .catchall {:try_start_1ab .. :try_end_1cf} :catchall_f2

    .line 269
    :try_start_1cf
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1d2
    .catch Ljava/lang/Exception; {:try_start_1cf .. :try_end_1d2} :catch_be

    goto/16 :goto_37

    .line 249
    :catchall_1d4
    move-exception v2

    :try_start_1d5
    monitor-exit v3
    :try_end_1d6
    .catchall {:try_start_1d5 .. :try_end_1d6} :catchall_1d4

    :try_start_1d6
    throw v2

    .line 257
    :cond_1d7
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getCoverImageView()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v9

    new-instance v2, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2$1;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2$1;-><init>(Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;JLcom/bilibili/tv/ui/video/widget/CompactVideoHolder;Landroid/graphics/Bitmap;)V

    invoke-virtual {v9, v2}, Lcom/bilibili/tv/widget/ScalableImageView;->post(Ljava/lang/Runnable;)Z
    :try_end_1e4
    .catchall {:try_start_1d6 .. :try_end_1e4} :catchall_f2

    .line 269
    :try_start_1e4
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1e7
    .catch Ljava/lang/Exception; {:try_start_1e4 .. :try_end_1e7} :catch_be

    goto/16 :goto_37
.end method
