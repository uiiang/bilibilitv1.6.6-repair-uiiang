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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 307
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$3;->this$0:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    iput p2, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$3;->val$finalPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 310
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$3;->this$0:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    # getter for: Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->access$100(Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-nez v0, :cond_9

    .line 328
    :goto_8
    return-void

    .line 314
    :cond_9
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$3;->this$0:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    # getter for: Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->access$100(Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v0

    .line 315
    if-eqz v0, :cond_43

    .line 317
    :try_start_15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "b"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 318
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$3;->val$finalPosition:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_43} :catch_4a

    .line 327
    :cond_43
    :goto_43
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$3;->this$0:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->pendingScrollRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->access$202(Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_8

    .line 319
    :catch_4a
    move-exception v0

    .line 321
    :try_start_4b
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$3;->this$0:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    # getter for: Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->access$100(Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;)Landroid/support/v7/widget/RecyclerView;

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

    .line 322
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$3;->this$0:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    # getter for: Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->access$100(Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$3;->val$finalPosition:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_78} :catch_79

    goto :goto_43

    .line 323
    :catch_79
    move-exception v0

    goto :goto_43
.end method
