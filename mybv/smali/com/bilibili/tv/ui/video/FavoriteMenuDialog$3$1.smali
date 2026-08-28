.class Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$3$1;
.super Ljava/lang/Object;
.source "FavoriteMenuDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$3;->onSuccess(Lcom/alibaba/fastjson/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$3;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$3;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$3$1;->this$1:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$3$1;->this$1:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$3;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$3;->this$0:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->access$200(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$3$1;->this$1:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$3;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$3;->this$0:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->access$200(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 147
    :cond_18
    :goto_18
    return-void

    .line 138
    :cond_19
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$3$1;->this$1:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$3;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$3;->this$0:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;

    const v1, 0x7f080234

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 139
    if-eqz v0, :cond_2c

    .line 140
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    :cond_2c
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$3$1;->this$1:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$3;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$3;->this$0:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;

    const v1, 0x7f0801c5

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 144
    if-eqz v0, :cond_18

    .line 145
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_18
.end method
