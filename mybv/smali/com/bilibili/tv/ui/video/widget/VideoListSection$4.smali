.class Lcom/bilibili/tv/ui/video/widget/VideoListSection$4;
.super Ljava/lang/Object;
.source "VideoListSection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/widget/VideoListSection;->scrollToCurrentVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

.field final synthetic val$finalPos:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$4;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    iput p2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$4;->val$finalPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 356
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$4;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1200(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_d

    .line 383
    :goto_c
    return-void

    .line 363
    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$4;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1200(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "scrollToPosition"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 364
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$4;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1200(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$4;->val$finalPos:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_3a} :catch_42
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_3a} :catch_6e

    .line 381
    :cond_3a
    :goto_3a
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$4;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$4;->val$finalPos:I

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$802(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)I

    goto :goto_c

    .line 366
    :catch_42
    move-exception v0

    .line 368
    :try_start_43
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$4;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1200(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3a

    .line 369
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$4;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1200(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 370
    if-eqz v0, :cond_3a

    .line 371
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 372
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$4;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1200(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    iget v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$4;->val$finalPos:I

    mul-int/2addr v0, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_6d} :catch_6e

    goto :goto_3a

    .line 377
    :catch_6e
    move-exception v0

    goto :goto_3a
.end method
