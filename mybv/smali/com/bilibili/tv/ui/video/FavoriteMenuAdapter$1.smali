.class Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$1;
.super Ljava/lang/Object;
.source "FavoriteMenuAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;->a(Landroid/support/v7/widget/RecyclerView$v;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;

.field final synthetic val$folder:Lmybl/FavoriteFolder;

.field final synthetic val$viewHolder:Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;Lmybl/FavoriteFolder;Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$1;->this$0:Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$1;->val$folder:Lmybl/FavoriteFolder;

    iput-object p3, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$1;->val$viewHolder:Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 56
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$1;->val$folder:Lmybl/FavoriteFolder;

    invoke-virtual {v0}, Lmybl/FavoriteFolder;->isFavored()Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x1

    .line 57
    :goto_9
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$1;->this$0:Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;

    # getter for: Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;->listener:Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$OnItemCheckedChangeListener;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;->access$000(Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;)Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$OnItemCheckedChangeListener;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 58
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$1;->val$viewHolder:Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$ViewHolder;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$ViewHolder;->d()I

    move-result v1

    .line 59
    const/4 v2, -0x1

    if-eq v1, v2, :cond_25

    .line 60
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$1;->this$0:Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;

    # getter for: Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;->listener:Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$OnItemCheckedChangeListener;
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;->access$000(Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;)Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$OnItemCheckedChangeListener;

    move-result-object v2

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$1;->val$folder:Lmybl/FavoriteFolder;

    invoke-interface {v2, v3, v0, v1}, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$OnItemCheckedChangeListener;->onItemCheckedChange(Lmybl/FavoriteFolder;ZI)V

    .line 63
    :cond_25
    return-void

    .line 56
    :cond_26
    const/4 v0, 0x0

    goto :goto_9
.end method
