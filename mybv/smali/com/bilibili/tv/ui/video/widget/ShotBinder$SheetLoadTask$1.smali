.class Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask$1;
.super Ljava/lang/Object;
.source "ShotBinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;

.field final synthetic val$liveBitmap:Landroid/graphics/Bitmap;

.field final synthetic val$liveHolder:Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;

.field final synthetic val$request:Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 790
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask$1;->this$0:Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask$1;->val$request:Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;

    iput-object p3, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask$1;->val$liveHolder:Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;

    iput-object p4, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask$1;->val$liveBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 793
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask$1;->val$request:Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;

    iget-wide v0, v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;->version:J

    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadVersion:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$1000()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_35

    .line 794
    const-string v0, "ShotPerf"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[post-drop] reason=version | time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask$1;->val$request:Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;

    iget-object v2, v2, Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;->item:Lcom/bilibili/tv/api/video/VideoShotItem;

    iget v2, v2, Lcom/bilibili/tv/api/video/VideoShotItem;->time:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :goto_34
    return-void

    .line 798
    :cond_35
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask$1;->val$liveHolder:Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask$1;->val$request:Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;->item:Lcom/bilibili/tv/api/video/VideoShotItem;

    if-eq v0, v1, :cond_68

    .line 799
    const-string v0, "ShotPerf"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[post-drop] reason=tag | time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask$1;->val$request:Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;

    iget-object v2, v2, Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;->item:Lcom/bilibili/tv/api/video/VideoShotItem;

    iget v2, v2, Lcom/bilibili/tv/api/video/VideoShotItem;->time:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 804
    :cond_68
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask$1;->val$liveHolder:Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getCoverImageView()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask$1;->val$liveBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/ScalableImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_34
.end method
