.class Lcom/bilibili/tv/ui/main/content/MainHotFragment$1;
.super Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;
.source "MainHotFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/main/content/MainHotFragment;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/main/content/MainHotFragment;

.field final synthetic val$columnCount:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/main/content/MainHotFragment;Landroid/content/Context;IIZI)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$1;->this$0:Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    iput p6, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$1;->val$columnCount:I

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;I)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 94
    if-nez p1, :cond_6

    .line 95
    invoke-static {}, Lbl/bbi;->a()V

    .line 98
    :cond_6
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$1;->this$0:Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    # getter for: Lcom/bilibili/tv/ui/main/content/MainHotFragment;->isLoadingMore:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->access$000(Lcom/bilibili/tv/ui/main/content/MainHotFragment;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 116
    :goto_e
    return-object p1

    .line 102
    :cond_f
    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/main/content/MainHotFragment$1;->d(Landroid/view/View;)I

    move-result v0

    .line 103
    iget v1, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$1;->val$columnCount:I

    div-int/2addr v0, v1

    .line 105
    const/16 v1, 0x21

    if-ne p2, v1, :cond_39

    if-nez v0, :cond_39

    .line 106
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$1;->this$0:Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 107
    if-nez v0, :cond_2c

    .line 108
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.bilibili.tv.ui.main.MainActivity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_2c
    check-cast v0, Lcom/bilibili/tv/ui/main/MainActivity;

    .line 111
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/main/MainActivity;->a(Z)V

    .line 112
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/main/MainActivity;->b(Z)V

    .line 113
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/MainActivity;->j()Landroid/view/View;

    move-result-object p1

    goto :goto_e

    .line 116
    :cond_39
    invoke-super {p0, p1, p2}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    goto :goto_e
.end method
