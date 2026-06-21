.class Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$5;
.super Lbl/vn;
.source "FavoriteMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->toggleFavorite(Lmybl/FavoriteFolder;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/vn",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;

.field final synthetic val$folder:Lmybl/FavoriteFolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;Lmybl/FavoriteFolder;I)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$5;->this$0:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$5;->val$folder:Lmybl/FavoriteFolder;

    iput p3, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$5;->val$position:I

    invoke-direct {p0}, Lbl/vn;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 267
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$5;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public a(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$5;->this$0:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->isOperating:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->access$002(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;Z)Z

    .line 271
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$5;->val$folder:Lmybl/FavoriteFolder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmybl/FavoriteFolder;->setFavState(I)V

    .line 272
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$5;->this$0:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->access$200(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$5$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$5$1;-><init>(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$5;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 279
    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$5;->this$0:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->access$200(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$5;->this$0:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->access$200(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$5;->this$0:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->isOperating:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->access$002(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;Z)Z

    .line 289
    const-string v0, "FavoriteMenuDialog"

    const-string v1, "Failed to add video to favorite"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 290
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$5;->this$0:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->access$200(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$5;->this$0:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->access$200(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 291
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$5;->this$0:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->access$200(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$5$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$5$2;-><init>(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$5;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 299
    :cond_2f
    return-void
.end method
