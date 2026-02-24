.class Lcom/bilibili/tv/ui/main/content/MainPgcFragment$1;
.super Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;
.source "MainPgcFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/main/content/MainPgcFragment;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/main/content/MainPgcFragment;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/main/content/MainPgcFragment;Landroid/content/Context;IIZ)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/MainPgcFragment$1;->this$0:Lcom/bilibili/tv/ui/main/content/MainPgcFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;I)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/main/content/MainPgcFragment$1;->d(Landroid/view/View;)I

    move-result v0

    .line 119
    const/16 v1, 0x21

    if-ne p2, v1, :cond_29

    const/4 v1, 0x4

    if-ge v0, v1, :cond_29

    .line 120
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainPgcFragment$1;->this$0:Lcom/bilibili/tv/ui/main/content/MainPgcFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainPgcFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 121
    if-nez v0, :cond_1c

    .line 122
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.bilibili.tv.ui.main.MainActivity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_1c
    check-cast v0, Lcom/bilibili/tv/ui/main/MainActivity;

    .line 125
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/main/MainActivity;->a(Z)V

    .line 126
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/main/MainActivity;->b(Z)V

    .line 127
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/MainActivity;->j()Landroid/view/View;

    move-result-object v0

    .line 129
    :goto_28
    return-object v0

    :cond_29
    invoke-super {p0, p1, p2}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_28
.end method
