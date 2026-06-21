.class Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$5$2;
.super Ljava/lang/Object;
.source "FavoriteMenuDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$5;->onError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$5;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$5;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$5$2;->this$1:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$5$2;->this$1:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$5;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$5;->this$0:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->access$200(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$5$2;->this$1:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$5;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$5;->this$0:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->access$200(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 296
    :cond_18
    :goto_18
    return-void

    .line 295
    :cond_19
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$5$2;->this$1:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$5;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$5;->this$0:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->access$200(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u6dfb\u52a0\u6536\u85cf\u5931\u8d25"

    invoke-static {v0, v1}, Lbl/lr;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_18
.end method
