.class Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$1;
.super Ljava/lang/Object;
.source "FavoriteMenuDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 87
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$1;->this$0:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$1;->this$0:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->dismiss()V

    .line 91
    return-void
.end method
