.class Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$1;
.super Landroid/support/v7/widget/RecyclerView$m;
.source "AttentionDynamicSideActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->onPostCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$1;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$m;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 3

    .prologue
    .line 88
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$m;->a(Landroid/support/v7/widget/RecyclerView;I)V

    .line 89
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$1;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->h:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->access$000(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$1;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->g:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->access$100(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$1;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->access$200(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 107
    :cond_1b
    :goto_1b
    return-void

    .line 92
    :cond_1c
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/live/LiveLeftLinearLayoutManger;

    .line 93
    if-eqz v0, :cond_1b

    .line 96
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/live/LiveLeftLinearLayoutManger;->p()I

    move-result v1

    .line 97
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/live/LiveLeftLinearLayoutManger;->x()I

    move-result v2

    if-lez v2, :cond_1b

    .line 98
    add-int/lit8 v1, v1, 0xa

    .line 99
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/live/LiveLeftLinearLayoutManger;->H()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_1b

    .line 100
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/live/LiveLeftLinearLayoutManger;->H()I

    move-result v1

    .line 101
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/live/LiveLeftLinearLayoutManger;->x()I

    move-result v0

    if-le v1, v0, :cond_1b

    .line 102
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$1;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    # operator++ for: Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->f:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->access$308(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)I

    .line 103
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$1;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    # invokes: Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->loadFollowings()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->access$400(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)V

    goto :goto_1b
.end method
