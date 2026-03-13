.class public final Lcom/bilibili/tv/ui/history/VideoHistoryActivity$l;
.super Landroid/support/v7/widget/RecyclerView$m;
.source "VideoHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/history/VideoHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "l"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;


# direct methods
.method public constructor <init>(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$l;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$m;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 4

    .prologue
    .line 169
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$m;->a(Landroid/support/v7/widget/RecyclerView;I)V

    .line 170
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$l;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    # getter for: Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->isLoading:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->access$000(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$l;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    # getter for: Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->hasMore:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->access$100(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$l;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    # getter for: Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->a:Lcom/bilibili/tv/ui/history/VideoHistoryActivity$g;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->access$200(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)Lcom/bilibili/tv/ui/history/VideoHistoryActivity$g;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 186
    :cond_1b
    :goto_1b
    return-void

    .line 173
    :cond_1c
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$l;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    # getter for: Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->b:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->access$300(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_1b

    .line 177
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->p()I

    move-result v1

    .line 178
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->x()I

    move-result v2

    if-lez v2, :cond_1b

    .line 179
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->H()I

    move-result v2

    .line 180
    add-int/lit8 v1, v1, 0x14

    add-int/lit8 v3, v2, -0x1

    if-lt v1, v3, :cond_1b

    .line 181
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->x()I

    move-result v0

    if-le v2, v0, :cond_1b

    .line 182
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$l;->this$0:Lcom/bilibili/tv/ui/history/VideoHistoryActivity;

    # invokes: Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->o()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->access$400(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)V

    goto :goto_1b
.end method
