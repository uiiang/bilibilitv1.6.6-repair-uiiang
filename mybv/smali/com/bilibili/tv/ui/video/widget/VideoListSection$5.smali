.class Lcom/bilibili/tv/ui/video/widget/VideoListSection$5;
.super Ljava/lang/Object;
.source "VideoListSection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/widget/VideoListSection;->restoreFocusPositionInternal()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

.field final synthetic val$finalPosition:I

.field final synthetic val$layoutManager:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$5;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$5;->val$layoutManager:Ljava/lang/Object;

    iput p3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$5;->val$finalPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 455
    :try_start_0
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$5;->val$layoutManager:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "c"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 456
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$5;->val$layoutManager:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$5;->val$finalPosition:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 457
    if-eqz v0, :cond_48

    .line 458
    const-string v1, "ListSection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreFocusPosition.post | \u6eda\u52a8\u540e\u627e\u5230\u76ee\u6807view | position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$5;->val$finalPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 470
    :cond_47
    :goto_47
    return-void

    .line 461
    :cond_48
    const-string v0, "ListSection"

    const-string v1, "restoreFocusPosition.post | \u6eda\u52a8\u540e\u4ecd\u672a\u627e\u5230\u76ee\u6807view | fallback\u5230\u7b2c\u4e00\u4e2a\u53ef\u89c1child"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$5;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$700(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_47

    .line 464
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$5;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$700(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_69} :catch_6a

    goto :goto_47

    .line 467
    :catch_6a
    move-exception v0

    .line 468
    const-string v1, "ListSection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreFocusPosition.post | \u53cd\u5c04\u8c03\u7528\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47
.end method
