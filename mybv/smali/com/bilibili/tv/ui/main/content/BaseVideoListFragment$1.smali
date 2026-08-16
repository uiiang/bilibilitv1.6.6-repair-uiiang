.class Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$1;
.super Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;
.source "BaseVideoListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;

.field final synthetic val$columnCount:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;Landroid/content/Context;IIZI)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$1;->this$0:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;

    iput p6, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$1;->val$columnCount:I

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;I)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 131
    if-nez p1, :cond_7

    .line 132
    invoke-static {}, Lbl/bbi;->a()V

    .line 135
    :cond_7
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$1;->this$0:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;

    iget-boolean v0, v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->isLoadingMore:Z

    if-eqz v0, :cond_e

    .line 160
    :goto_d
    return-object p1

    .line 139
    :cond_e
    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$1;->d(Landroid/view/View;)I

    move-result v0

    .line 140
    iget v2, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$1;->val$columnCount:I

    div-int/2addr v0, v2

    .line 142
    const/16 v2, 0x21

    if-ne p2, v2, :cond_38

    if-nez v0, :cond_38

    .line 143
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$1;->this$0:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 144
    if-nez v0, :cond_25

    move-object p1, v1

    .line 145
    goto :goto_d

    .line 149
    :cond_25
    instance-of v2, v0, Lcom/bilibili/tv/ui/main/MainActivity;

    if-eqz v2, :cond_36

    .line 150
    check-cast v0, Lcom/bilibili/tv/ui/main/MainActivity;

    .line 151
    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/main/MainActivity;->a(Z)V

    .line 152
    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/main/MainActivity;->b(Z)V

    .line 153
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/MainActivity;->j()Landroid/view/View;

    move-result-object p1

    goto :goto_d

    :cond_36
    move-object p1, v1

    .line 156
    goto :goto_d

    .line 160
    :cond_38
    invoke-super {p0, p1, p2}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    goto :goto_d
.end method
