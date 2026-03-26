.class Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$1;
.super Ljava/lang/Object;
.source "SortMenuAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/favorite/SortMenuAdapter;->a(Landroid/support/v7/widget/RecyclerView$v;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/favorite/SortMenuAdapter;

.field final synthetic val$item:Lcom/bilibili/tv/ui/favorite/SortMenuDialog$SortItem;

.field final synthetic val$viewHolder:Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/favorite/SortMenuAdapter;Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$ViewHolder;Lcom/bilibili/tv/ui/favorite/SortMenuDialog$SortItem;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$1;->this$0:Lcom/bilibili/tv/ui/favorite/SortMenuAdapter;

    iput-object p2, p0, Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$1;->val$viewHolder:Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$ViewHolder;

    iput-object p3, p0, Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$1;->val$item:Lcom/bilibili/tv/ui/favorite/SortMenuDialog$SortItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$1;->this$0:Lcom/bilibili/tv/ui/favorite/SortMenuAdapter;

    # getter for: Lcom/bilibili/tv/ui/favorite/SortMenuAdapter;->listener:Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$OnItemClickListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/SortMenuAdapter;->access$000(Lcom/bilibili/tv/ui/favorite/SortMenuAdapter;)Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 51
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$1;->val$viewHolder:Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$ViewHolder;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$ViewHolder;->d()I

    move-result v0

    .line 52
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1c

    .line 53
    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$1;->this$0:Lcom/bilibili/tv/ui/favorite/SortMenuAdapter;

    # getter for: Lcom/bilibili/tv/ui/favorite/SortMenuAdapter;->listener:Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$OnItemClickListener;
    invoke-static {v1}, Lcom/bilibili/tv/ui/favorite/SortMenuAdapter;->access$000(Lcom/bilibili/tv/ui/favorite/SortMenuAdapter;)Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$OnItemClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$1;->val$item:Lcom/bilibili/tv/ui/favorite/SortMenuDialog$SortItem;

    invoke-interface {v1, v2, v0}, Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$OnItemClickListener;->onItemClick(Lcom/bilibili/tv/ui/favorite/SortMenuDialog$SortItem;I)V

    .line 56
    :cond_1c
    return-void
.end method
