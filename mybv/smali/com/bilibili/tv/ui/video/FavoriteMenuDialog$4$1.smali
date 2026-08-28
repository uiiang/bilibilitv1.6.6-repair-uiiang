.class Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4$1;
.super Ljava/lang/Object;
.source "FavoriteMenuDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4;->a(Ljava/lang/Void;)V
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
    .line 228
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4$1;->this$1:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4$1;->this$1:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4;->this$0:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->adapter:Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->access$400(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4$1;->this$1:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4;

    iget v1, v1, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4;->val$position:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;->notifyItemChanged(I)V

    .line 232
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4$1;->this$1:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4;->this$0:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;

    # invokes: Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->updateMainFavoriteStatus()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->access$500(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)V

    .line 233
    return-void
.end method
