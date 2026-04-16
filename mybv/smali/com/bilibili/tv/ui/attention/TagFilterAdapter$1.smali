.class Lcom/bilibili/tv/ui/attention/TagFilterAdapter$1;
.super Ljava/lang/Object;
.source "TagFilterAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/attention/TagFilterAdapter;->a(Landroid/support/v7/widget/RecyclerView$v;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/attention/TagFilterAdapter;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/attention/TagFilterAdapter;I)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/TagFilterAdapter$1;->this$0:Lcom/bilibili/tv/ui/attention/TagFilterAdapter;

    iput p2, p0, Lcom/bilibili/tv/ui/attention/TagFilterAdapter$1;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/TagFilterAdapter$1;->this$0:Lcom/bilibili/tv/ui/attention/TagFilterAdapter;

    # getter for: Lcom/bilibili/tv/ui/attention/TagFilterAdapter;->listener:Lcom/bilibili/tv/ui/attention/TagFilterAdapter$OnItemClickListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/TagFilterAdapter;->access$000(Lcom/bilibili/tv/ui/attention/TagFilterAdapter;)Lcom/bilibili/tv/ui/attention/TagFilterAdapter$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 55
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/TagFilterAdapter$1;->this$0:Lcom/bilibili/tv/ui/attention/TagFilterAdapter;

    # getter for: Lcom/bilibili/tv/ui/attention/TagFilterAdapter;->listener:Lcom/bilibili/tv/ui/attention/TagFilterAdapter$OnItemClickListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/TagFilterAdapter;->access$000(Lcom/bilibili/tv/ui/attention/TagFilterAdapter;)Lcom/bilibili/tv/ui/attention/TagFilterAdapter$OnItemClickListener;

    move-result-object v1

    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/TagFilterAdapter$1;->this$0:Lcom/bilibili/tv/ui/attention/TagFilterAdapter;

    # getter for: Lcom/bilibili/tv/ui/attention/TagFilterAdapter;->items:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/TagFilterAdapter;->access$100(Lcom/bilibili/tv/ui/attention/TagFilterAdapter;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/bilibili/tv/ui/attention/TagFilterAdapter$1;->val$pos:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$TagItem;

    iget v2, p0, Lcom/bilibili/tv/ui/attention/TagFilterAdapter$1;->val$pos:I

    invoke-interface {v1, v0, v2}, Lcom/bilibili/tv/ui/attention/TagFilterAdapter$OnItemClickListener;->onItemClick(Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$TagItem;I)V

    .line 57
    :cond_21
    return-void
.end method
