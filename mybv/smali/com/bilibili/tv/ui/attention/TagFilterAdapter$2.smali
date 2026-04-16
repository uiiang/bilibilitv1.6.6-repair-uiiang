.class Lcom/bilibili/tv/ui/attention/TagFilterAdapter$2;
.super Ljava/lang/Object;
.source "TagFilterAdapter.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 60
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/TagFilterAdapter$2;->this$0:Lcom/bilibili/tv/ui/attention/TagFilterAdapter;

    iput p2, p0, Lcom/bilibili/tv/ui/attention/TagFilterAdapter$2;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 63
    if-nez p2, :cond_14

    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/TagFilterAdapter$2;->this$0:Lcom/bilibili/tv/ui/attention/TagFilterAdapter;

    # getter for: Lcom/bilibili/tv/ui/attention/TagFilterAdapter;->items:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/TagFilterAdapter;->access$100(Lcom/bilibili/tv/ui/attention/TagFilterAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/bilibili/tv/ui/attention/TagFilterAdapter$2;->val$pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$TagItem;

    iget-boolean v0, v0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$TagItem;->isSelected:Z

    if-eqz v0, :cond_19

    :cond_14
    const/4 v0, 0x1

    :goto_15
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 64
    return-void

    .line 63
    :cond_19
    const/4 v0, 0x0

    goto :goto_15
.end method
