.class Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$1;
.super Landroid/support/v7/widget/RecyclerView$m;
.source "AuthSpaceSideActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->onPostCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$1;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

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
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$1;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->h:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$000(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$1;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->g:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$100(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$1;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->c:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$200(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;

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
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$1;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # operator++ for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->f:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$308(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)I

    .line 103
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$1;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$1;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->f:I
    invoke-static {v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$300(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)I

    move-result v1

    # invokes: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->loadMenuPage(I)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$400(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;I)V

    goto :goto_1b
.end method
