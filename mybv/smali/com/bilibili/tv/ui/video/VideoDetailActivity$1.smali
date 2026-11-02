.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;->startFramePerf(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

.field final synthetic val$count:[I

.field final synthetic val$lastPreDraw:[J

.field final synthetic val$root:Landroid/view/View;

.field final synthetic val$stage:Ljava/lang/String;

.field final synthetic val$startMs:J


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;[J[ILjava/lang/String;JLandroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 246
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;->val$lastPreDraw:[J

    iput-object p3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;->val$count:[I

    iput-object p4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;->val$stage:Ljava/lang/String;

    iput-wide p5, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;->val$startMs:J

    iput-object p7, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;->val$root:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 12

    .prologue
    const-wide/16 v0, 0x0

    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 249
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 250
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;->val$lastPreDraw:[J

    aget-wide v2, v2, v4

    cmp-long v2, v2, v0

    if-nez v2, :cond_73

    move-wide v2, v0

    .line 251
    :goto_11
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;->val$count:[I

    aget v0, v0, v4

    if-nez v0, :cond_80

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ugcSeasonSections:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_80

    move v1, v4

    .line 253
    :goto_25
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ugcSeasonSections:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_80

    .line 254
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ugcSeasonSections:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 255
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v5

    .line 256
    const-string v10, " [s"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " visible="

    .line 257
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v5, :cond_7b

    move v5, v6

    :goto_58
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "/"

    .line 258
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getDataSize()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_25

    .line 250
    :cond_73
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;->val$lastPreDraw:[J

    aget-wide v0, v0, v4

    sub-long v0, v8, v0

    move-wide v2, v0

    goto :goto_11

    .line 257
    :cond_7b
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v5

    goto :goto_58

    .line 261
    :cond_80
    const-string v0, "LoadPerf"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[frame] "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;->val$stage:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " #"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;->val$count:[I

    aget v5, v5, v4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " sinceStage="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v10, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;->val$startMs:J

    sub-long v10, v8, v10

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "ms frameInterval="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms sections="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 264
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v2, v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-nez v2, :cond_fd

    :goto_c5
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 265
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 261
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;->val$lastPreDraw:[J

    aput-wide v8, v0, v4

    .line 267
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;->val$count:[I

    aget v1, v0, v4

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v4

    .line 268
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;->val$count:[I

    aget v0, v0, v4

    const/16 v1, 0xa

    if-lt v0, v1, :cond_fb

    .line 269
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;->val$root:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_fb

    .line 271
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 274
    :cond_fb
    const/4 v0, 0x1

    return v0

    .line 264
    :cond_fd
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v2, v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    goto :goto_c5
.end method
