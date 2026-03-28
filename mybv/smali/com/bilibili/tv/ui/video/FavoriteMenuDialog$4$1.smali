.class Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4$1;
.super Ljava/lang/Object;
.source "FavoriteMenuDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4;->onSuccess(Lcom/alibaba/fastjson/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4$1;->this$1:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4$1;->this$1:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4;->this$0:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->adapter:Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->access$300(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;->notifyDataSetChanged()V

    .line 169
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4$1;->this$1:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4;->this$0:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;

    const v1, 0x7f0801c5

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 170
    if-eqz v0, :cond_22

    .line 171
    new-instance v1, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4$1$1;

    invoke-direct {v1, p0, v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4$1$1;-><init>(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4$1;Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 181
    :cond_22
    return-void
.end method
