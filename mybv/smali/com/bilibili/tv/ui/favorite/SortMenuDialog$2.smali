.class Lcom/bilibili/tv/ui/favorite/SortMenuDialog$2;
.super Ljava/lang/Object;
.source "SortMenuDialog.java"

# interfaces
.implements Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/favorite/SortMenuDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/favorite/SortMenuDialog;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/favorite/SortMenuDialog;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/bilibili/tv/ui/favorite/SortMenuDialog$2;->this$0:Lcom/bilibili/tv/ui/favorite/SortMenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/bilibili/tv/ui/favorite/SortMenuDialog$SortItem;I)V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/SortMenuDialog$2;->this$0:Lcom/bilibili/tv/ui/favorite/SortMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/favorite/SortMenuDialog;->listener:Lcom/bilibili/tv/ui/favorite/SortMenuDialog$OnSortSelectedListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/SortMenuDialog;->access$000(Lcom/bilibili/tv/ui/favorite/SortMenuDialog;)Lcom/bilibili/tv/ui/favorite/SortMenuDialog$OnSortSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 95
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/SortMenuDialog$2;->this$0:Lcom/bilibili/tv/ui/favorite/SortMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/favorite/SortMenuDialog;->listener:Lcom/bilibili/tv/ui/favorite/SortMenuDialog$OnSortSelectedListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/SortMenuDialog;->access$000(Lcom/bilibili/tv/ui/favorite/SortMenuDialog;)Lcom/bilibili/tv/ui/favorite/SortMenuDialog$OnSortSelectedListener;

    move-result-object v0

    iget-object v1, p1, Lcom/bilibili/tv/ui/favorite/SortMenuDialog$SortItem;->value:Ljava/lang/String;

    iget-object v2, p1, Lcom/bilibili/tv/ui/favorite/SortMenuDialog$SortItem;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/bilibili/tv/ui/favorite/SortMenuDialog$OnSortSelectedListener;->onSortSelected(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_15
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/SortMenuDialog$2;->this$0:Lcom/bilibili/tv/ui/favorite/SortMenuDialog;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/SortMenuDialog;->dismiss()V

    .line 98
    return-void
.end method
