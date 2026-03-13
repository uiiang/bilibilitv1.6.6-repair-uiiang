.class public final Lcom/bilibili/tv/ui/history/HistoryVideoFragment$g;
.super Landroid/support/v7/widget/RecyclerView$m;
.source "HistoryVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/history/HistoryVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "g"
.end annotation


# instance fields
.field final b:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

.field final synthetic this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$g;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$m;-><init>()V

    .line 178
    iput-object p2, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$g;->b:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    .line 179
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 2

    .prologue
    .line 183
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$m;->a(Landroid/support/v7/widget/RecyclerView;I)V

    .line 184
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$g;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->isLoading:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$000(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$g;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->hasMore:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$100(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$g;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$200(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 192
    :cond_1b
    :goto_1b
    return-void

    .line 187
    :cond_1c
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$g;->b:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->p()I

    move-result v0

    .line 188
    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$g;->b:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->x()I

    move-result v1

    if-lez v1, :cond_1b

    add-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$g;->b:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->H()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_1b

    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$g;->b:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->H()I

    move-result v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$g;->b:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->x()I

    move-result v1

    if-le v0, v1, :cond_1b

    .line 191
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$g;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # invokes: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->b()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$300(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)V

    goto :goto_1b
.end method
