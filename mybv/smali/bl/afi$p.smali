.class final Lbl/afi$p;
.super Ljava/lang/Object;
.source "afi.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/afi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "p"
.end annotation


# instance fields
.field final synthetic this$0:Lbl/afi;


# direct methods
.method constructor <init>(Lbl/afi;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lbl/afi$p;->this$0:Lbl/afi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    return-void
.end method


# virtual methods
.method public final onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 255
    iget-object v0, p0, Lbl/afi$p;->this$0:Lbl/afi;

    invoke-virtual {v0}, Lbl/afi;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 256
    if-nez p2, :cond_19

    .line 257
    if-nez v0, :cond_13

    .line 258
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.bilibili.tv.ui.search.SearchActivity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_13
    check-cast v0, Lcom/bilibili/tv/ui/search/SearchActivity;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/search/SearchActivity;->b(Z)V

    .line 271
    :cond_18
    :goto_18
    return-void

    .line 261
    :cond_19
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lbl/afi$p;->this$0:Lbl/afi;

    # getter for: Lbl/afi;->c:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v2}, Lbl/afi;->access$700(Lbl/afi;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    if-ne v1, v2, :cond_30

    .line 262
    instance-of v1, v0, Lcom/bilibili/tv/ui/search/SearchActivity;

    if-eqz v1, :cond_18

    .line 263
    check-cast v0, Lcom/bilibili/tv/ui/search/SearchActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/search/SearchActivity;->b(Z)V

    goto :goto_18

    .line 266
    :cond_30
    if-nez v0, :cond_3a

    .line 267
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.bilibili.tv.ui.search.SearchActivity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_3a
    check-cast v0, Lcom/bilibili/tv/ui/search/SearchActivity;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/search/SearchActivity;->b(Z)V

    goto :goto_18
.end method
