.class public final Lcom/bilibili/tv/ui/main/content/MainHotFragment$g;
.super Landroid/support/v7/widget/RecyclerView$m;
.source "MainHotFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/main/content/MainHotFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "g"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/main/content/MainHotFragment;


# direct methods
.method public constructor <init>(Lcom/bilibili/tv/ui/main/content/MainHotFragment;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$g;->this$0:Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$m;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 3

    .prologue
    .line 137
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$m;->a(Landroid/support/v7/widget/RecyclerView;I)V

    .line 138
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$g;->this$0:Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    # getter for: Lcom/bilibili/tv/ui/main/content/MainHotFragment;->isLoadingMore:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->access$000(Lcom/bilibili/tv/ui/main/content/MainHotFragment;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$g;->this$0:Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    # getter for: Lcom/bilibili/tv/ui/main/content/MainHotFragment;->hasMoreData:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->access$100(Lcom/bilibili/tv/ui/main/content/MainHotFragment;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$g;->this$0:Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    # getter for: Lcom/bilibili/tv/ui/main/content/MainHotFragment;->a:Lcom/bilibili/tv/ui/main/content/MainHotFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->access$200(Lcom/bilibili/tv/ui/main/content/MainHotFragment;)Lcom/bilibili/tv/ui/main/content/MainHotFragment$c;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 155
    :cond_1b
    :goto_1b
    return-void

    .line 141
    :cond_1c
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$g;->this$0:Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    # getter for: Lcom/bilibili/tv/ui/main/content/MainHotFragment;->b:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->access$300(Lcom/bilibili/tv/ui/main/content/MainHotFragment;)Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_1b

    .line 145
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->p()I

    move-result v1

    .line 146
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->x()I

    move-result v2

    if-lez v2, :cond_1b

    .line 147
    add-int/lit8 v1, v1, 0x14

    .line 148
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->H()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_1b

    .line 149
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->H()I

    move-result v1

    .line 150
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->x()I

    move-result v0

    if-le v1, v0, :cond_1b

    .line 151
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$g;->this$0:Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->loadMoreData()V

    goto :goto_1b
.end method
