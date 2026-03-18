.class public final Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$g;
.super Landroid/support/v7/widget/RecyclerView$m;
.source "AttentionDynamicFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "g"
.end annotation


# instance fields
.field final b:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

.field final synthetic this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$g;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$m;-><init>()V

    .line 197
    iput-object p2, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$g;->b:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    .line 198
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 2

    .prologue
    .line 202
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$m;->a(Landroid/support/v7/widget/RecyclerView;I)V

    .line 203
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$g;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->h:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$100(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$g;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$200(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    move-result-object v0

    if-nez v0, :cond_14

    .line 211
    :cond_13
    :goto_13
    return-void

    .line 206
    :cond_14
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$g;->b:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->p()I

    move-result v0

    .line 207
    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$g;->b:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->x()I

    move-result v1

    if-lez v1, :cond_13

    add-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$g;->b:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->H()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_13

    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$g;->b:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->H()I

    move-result v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$g;->b:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->x()I

    move-result v1

    if-le v0, v1, :cond_13

    .line 210
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$g;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->b()V

    goto :goto_13
.end method
