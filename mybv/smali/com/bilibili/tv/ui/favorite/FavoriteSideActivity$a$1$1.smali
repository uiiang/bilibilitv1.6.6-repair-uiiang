.class Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a$1$1;
.super Ljava/lang/Object;
.source "FavoriteSideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a$1;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a$1;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a$1;)V
    .locals 0

    .prologue
    .line 527
    iput-object p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a$1$1;->this$1:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a$1$1;->this$1:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->a:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->access$700(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;

    .line 531
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 535
    :cond_16
    :goto_16
    return-void

    .line 534
    :cond_17
    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a$1$1;->this$1:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a$1;

    iget-object v1, v1, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a$1;->val$folder:Lbl/FavoriteFolder;

    # invokes: Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->showVideoList(Lbl/FavoriteFolder;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->access$1100(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;Lbl/FavoriteFolder;)V

    goto :goto_16
.end method
