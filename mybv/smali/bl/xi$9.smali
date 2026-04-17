.class Lbl/xi$9;
.super Ljava/lang/Object;
.source "xi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xi;->loadSeekPreviewSnapshot(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/xi;

.field final synthetic val$cacheKey:Ljava/lang/String;

.field final synthetic val$imageUrl:Ljava/lang/String;

.field final synthetic val$snapshotIndex:I


# direct methods
.method constructor <init>(Lbl/xi;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1140
    iput-object p1, p0, Lbl/xi$9;->this$0:Lbl/xi;

    iput-object p2, p0, Lbl/xi$9;->val$imageUrl:Ljava/lang/String;

    iput p3, p0, Lbl/xi$9;->val$snapshotIndex:I

    iput-object p4, p0, Lbl/xi$9;->val$cacheKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 1144
    :try_start_0
    const-string v0, "xi_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadSeekPreviewSnapshot: loading bitmap from url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/xi$9;->val$imageUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lbl/xi$9;->val$imageUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1146
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 1147
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1148
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1149
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 1151
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1152
    const/4 v2, 0x2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1154
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1155
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1157
    if-nez v1, :cond_52

    .line 1158
    const-string v0, "xi_java"

    const-string v1, "loadSeekPreviewSnapshot: sheetBitmap is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    :cond_51
    :goto_51
    return-void

    .line 1162
    :cond_52
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 1163
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 1164
    iget-object v3, p0, Lbl/xi$9;->this$0:Lbl/xi;

    # getter for: Lbl/xi;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;
    invoke-static {v3}, Lbl/xi;->access$600(Lbl/xi;)Lcom/bilibili/tv/api/video/VideoShot;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bilibili/tv/api/video/VideoShot;->getImgXLen()I

    move-result v3

    div-int v3, v0, v3

    .line 1165
    iget-object v4, p0, Lbl/xi$9;->this$0:Lbl/xi;

    # getter for: Lbl/xi;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;
    invoke-static {v4}, Lbl/xi;->access$600(Lbl/xi;)Lcom/bilibili/tv/api/video/VideoShot;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bilibili/tv/api/video/VideoShot;->getImgYLen()I

    move-result v4

    div-int v4, v2, v4

    .line 1167
    iget v5, p0, Lbl/xi$9;->val$snapshotIndex:I

    iget-object v6, p0, Lbl/xi$9;->this$0:Lbl/xi;

    # getter for: Lbl/xi;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;
    invoke-static {v6}, Lbl/xi;->access$600(Lbl/xi;)Lcom/bilibili/tv/api/video/VideoShot;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bilibili/tv/api/video/VideoShot;->getImgXLen()I

    move-result v6

    iget-object v7, p0, Lbl/xi$9;->this$0:Lbl/xi;

    # getter for: Lbl/xi;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;
    invoke-static {v7}, Lbl/xi;->access$600(Lbl/xi;)Lcom/bilibili/tv/api/video/VideoShot;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bilibili/tv/api/video/VideoShot;->getImgYLen()I

    move-result v7

    mul-int/2addr v6, v7

    rem-int/2addr v5, v6

    .line 1168
    iget-object v6, p0, Lbl/xi$9;->this$0:Lbl/xi;

    # getter for: Lbl/xi;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;
    invoke-static {v6}, Lbl/xi;->access$600(Lbl/xi;)Lcom/bilibili/tv/api/video/VideoShot;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bilibili/tv/api/video/VideoShot;->getImgXLen()I

    move-result v6

    rem-int v6, v5, v6

    .line 1169
    iget-object v7, p0, Lbl/xi$9;->this$0:Lbl/xi;

    # getter for: Lbl/xi;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;
    invoke-static {v7}, Lbl/xi;->access$600(Lbl/xi;)Lcom/bilibili/tv/api/video/VideoShot;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bilibili/tv/api/video/VideoShot;->getImgXLen()I

    move-result v7

    div-int/2addr v5, v7

    .line 1171
    mul-int/2addr v6, v3

    .line 1172
    mul-int/2addr v5, v4

    .line 1174
    const-string v7, "xi_java"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadSeekPreviewSnapshot: actualSize="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "x"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", cell="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    invoke-static {v1, v6, v5, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1181
    const/16 v1, 0x140

    const/16 v2, 0xb4

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1185
    iget-object v2, p0, Lbl/xi$9;->this$0:Lbl/xi;

    # getter for: Lbl/xi;->seekPreviewCache:Landroid/util/LruCache;
    invoke-static {v2}, Lbl/xi;->access$800(Lbl/xi;)Landroid/util/LruCache;

    move-result-object v2

    iget-object v3, p0, Lbl/xi$9;->val$cacheKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    iget-object v2, p0, Lbl/xi$9;->this$0:Lbl/xi;

    invoke-virtual {v2}, Lbl/xi;->o()Landroid/app/Activity;

    move-result-object v2

    .line 1188
    if-eqz v2, :cond_101

    .line 1189
    new-instance v3, Lbl/xi$9$1;

    invoke-direct {v3, p0, v1}, Lbl/xi$9$1;-><init>(Lbl/xi$9;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1201
    :cond_101
    if-eq v0, v1, :cond_51

    .line 1202
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_106} :catch_108

    goto/16 :goto_51

    .line 1204
    :catch_108
    move-exception v0

    .line 1205
    const-string v1, "xi_java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadSeekPreviewSnapshot error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_51
.end method
