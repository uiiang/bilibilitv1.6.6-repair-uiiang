.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$2;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scheduleRemainingSectionBuilds(ILcom/bilibili/tv/ui/video/VideoDetailActivity$SectionBuildTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

.field final synthetic val$next:[I

.field final synthetic val$task:Lcom/bilibili/tv/ui/video/VideoDetailActivity$SectionBuildTask;

.field final synthetic val$totalCount:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;[IILcom/bilibili/tv/ui/video/VideoDetailActivity$SectionBuildTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 306
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$2;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$2;->val$next:[I

    iput p3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$2;->val$totalCount:I

    iput-object p4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$2;->val$task:Lcom/bilibili/tv/ui/video/VideoDetailActivity$SectionBuildTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 309
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$2;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$2;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_16

    .line 310
    :cond_10
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$2;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pendingSectionBuildRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v4}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$102(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 330
    :goto_15
    return-void

    .line 313
    :cond_16
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$2;->val$next:[I

    aget v0, v0, v3

    .line 314
    iget v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$2;->val$totalCount:I

    if-lt v0, v1, :cond_50

    .line 315
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$2;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pendingSectionBuildRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v4}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$102(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 316
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$2;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "season sections build finish | total="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$2;->val$totalCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | containerChildren="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$2;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v2, v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    .line 317
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 316
    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPerf(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;)V

    goto :goto_15

    .line 320
    :cond_50
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$2;->val$next:[I

    add-int/lit8 v2, v0, 0x1

    aput v2, v1, v3

    .line 321
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$2;->val$task:Lcom/bilibili/tv/ui/video/VideoDetailActivity$SectionBuildTask;

    invoke-interface {v1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SectionBuildTask;->buildSection(I)V

    .line 322
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$2;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->refreshVisualOrder()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    .line 323
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$2;->val$next:[I

    aget v0, v0, v3

    iget v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$2;->val$totalCount:I

    if-ge v0, v1, :cond_72

    .line 324
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$2;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    const-wide/16 v2, 0x20

    invoke-virtual {v0, p0, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_15

    .line 326
    :cond_72
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$2;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pendingSectionBuildRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v4}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$102(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 327
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$2;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "season sections build finish | total="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$2;->val$totalCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | containerChildren="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$2;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v2, v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    .line 328
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 327
    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPerf(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;)V

    goto/16 :goto_15
.end method
