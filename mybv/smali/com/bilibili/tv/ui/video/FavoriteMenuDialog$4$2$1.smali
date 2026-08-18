.class Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4$2$1;
.super Ljava/lang/Object;
.source "FavoriteMenuDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4$2;

.field final synthetic val$recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4$2;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 207
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4$2$1;->this$2:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4$2;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4$2$1;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4$2$1;->this$2:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4$2;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4$2;->this$1:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4;->this$0:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->access$200(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4$2$1;->this$2:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4$2;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4$2;->this$1:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4;->this$0:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->access$200(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 217
    :cond_1c
    :goto_1c
    return-void

    .line 211
    :cond_1d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4$2$1;->this$2:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4$2;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4$2;->this$1:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4;->this$0:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->adapter:Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->access$400(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;->a()I

    move-result v0

    if-eqz v0, :cond_1c

    .line 213
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4$2$1;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_1c

    .line 215
    invoke-virtual {v0}, Landroid/view/View;->requestFocusFromTouch()Z

    goto :goto_1c
.end method
