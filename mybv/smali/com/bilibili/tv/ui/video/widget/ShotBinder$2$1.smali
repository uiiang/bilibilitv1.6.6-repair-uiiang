.class Lcom/bilibili/tv/ui/video/widget/ShotBinder$2$1;
.super Ljava/lang/Object;
.source "ShotBinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;

.field final synthetic val$cropped:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2$1;->this$1:Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2$1;->val$cropped:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 192
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2$1;->this$1:Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;

    iget-wide v0, v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->val$currentVersion:J

    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadVersion:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$000()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2d

    .line 193
    const-string v0, "ShotBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadShotImage: cancelled before set image "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2$1;->this$1:Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;

    iget-object v2, v2, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->val$cacheKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :goto_2c
    return-void

    .line 196
    :cond_2d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2$1;->this$1:Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;->val$holder:Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getCoverImageView()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2$1;->val$cropped:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/ScalableImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2c
.end method
