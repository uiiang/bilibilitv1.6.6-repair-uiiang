.class Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;
.super Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;
.source "MainRecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;Landroid/content/Context;IIZ)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;I)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 97
    if-nez p1, :cond_6

    .line 98
    invoke-static {}, Lbl/bbi;->a()V

    .line 101
    :cond_6
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    # getter for: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->isLoadingMore:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$000(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 119
    :goto_e
    return-object p1

    .line 105
    :cond_f
    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;->d(Landroid/view/View;)I

    move-result v0

    .line 106
    div-int/lit8 v0, v0, 0x4

    .line 108
    const/16 v1, 0x21

    if-ne p2, v1, :cond_38

    if-nez v0, :cond_38

    .line 109
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 110
    if-nez v0, :cond_2b

    .line 111
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.bilibili.tv.ui.main.MainActivity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_2b
    check-cast v0, Lcom/bilibili/tv/ui/main/MainActivity;

    .line 114
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/main/MainActivity;->a(Z)V

    .line 115
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/main/MainActivity;->b(Z)V

    .line 116
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/MainActivity;->j()Landroid/view/View;

    move-result-object p1

    goto :goto_e

    .line 119
    :cond_38
    invoke-super {p0, p1, p2}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    goto :goto_e
.end method
