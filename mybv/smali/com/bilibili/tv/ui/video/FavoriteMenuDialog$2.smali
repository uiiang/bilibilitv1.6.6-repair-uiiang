.class Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$2;
.super Ljava/lang/Object;
.source "FavoriteMenuDialog.java"

# interfaces
.implements Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$OnItemCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$2;->this$0:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemCheckedChange(Lmybl/FavoriteFolder;ZI)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$2;->this$0:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->isOperating:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->access$000(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 99
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$2;->this$0:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;

    # invokes: Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->toggleFavorite(Lmybl/FavoriteFolder;ZI)V
    invoke-static {v0, p1, p2, p3}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->access$100(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;Lmybl/FavoriteFolder;ZI)V

    .line 101
    :cond_d
    return-void
.end method
