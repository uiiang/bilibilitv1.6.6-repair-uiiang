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
    .line 104
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$1;->this$0:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;

    iput p6, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$1;->val$columnCount:I

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;I)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 107
    if-nez p1, :cond_6

    .line 108
    invoke-static {}, Lbl/bbi;->a()V

    .line 111
    :cond_6
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$1;->this$0:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;

    iget-boolean v0, v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->isLoadingMore:Z

    if-eqz v0, :cond_d

    .line 129
    :goto_c
    return-object p1

    .line 115
    :cond_d
    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$1;->d(Landroid/view/View;)I

    move-result v0

    .line 116
    iget v1, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$1;->val$columnCount:I

    div-int/2addr v0, v1

    .line 118
    const/16 v1, 0x21

    if-ne p2, v1, :cond_37

    if-nez v0, :cond_37

    .line 119
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$1;->this$0:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 120
    if-nez v0, :cond_2a

    .line 121
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.bilibili.tv.ui.main.MainActivity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_2a
    check-cast v0, Lcom/bilibili/tv/ui/main/MainActivity;

    .line 124
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/main/MainActivity;->a(Z)V

    .line 125
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/main/MainActivity;->b(Z)V

    .line 126
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/MainActivity;->j()Landroid/view/View;

    move-result-object p1

    goto :goto_c

    .line 129
    :cond_37
    invoke-super {p0, p1, p2}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    goto :goto_c
.end method
