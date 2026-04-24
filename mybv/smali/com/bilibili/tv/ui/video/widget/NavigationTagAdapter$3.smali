.class Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$3;
.super Ljava/lang/Object;
.source "NavigationTagAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->scrollToPositionWithOffset(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

.field final synthetic val$finalPosition:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;I)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$3;->this$0:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    iput p2, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$3;->val$finalPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 429
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$3;->this$0:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    # getter for: Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->access$200(Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-nez v0, :cond_10

    .line 430
    const-string v0, "NavigationTag"

    const-string v1, "scrollToPositionWithOffset | attachedRecyclerView\u4e3anull\uff0c\u8fd4\u56de"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :goto_f
    return-void

    .line 436
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$3;->this$0:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    # getter for: Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->access$200(Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "a"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 437
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$3;->this$0:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    # getter for: Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->access$200(Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$3;->val$finalPosition:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    const-string v0, "NavigationTag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollToPositionWithOffset | a(int)\u6210\u529f | position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$3;->val$finalPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_57} :catch_5e

    .line 442
    :goto_57
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$3;->this$0:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->pendingScrollRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->access$302(Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_f

    .line 439
    :catch_5e
    move-exception v0

    .line 440
    const-string v1, "NavigationTag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scrollToPositionWithOffset | a(int)\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57
.end method
