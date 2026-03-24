.class Lbl/afi$1;
.super Lcom/bilibili/tv/widget/FixLinearLayoutManager;
.source "afi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/afi;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/afi;


# direct methods
.method constructor <init>(Lbl/afi;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lbl/afi$1;->this$0:Lbl/afi;

    invoke-direct {p0, p2}, Lcom/bilibili/tv/widget/FixLinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;I)Landroid/view/View;
    .locals 2

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Lbl/afi$1;->d(Landroid/view/View;)I

    move-result v0

    .line 160
    const/16 v1, 0x11

    if-ne p2, v1, :cond_1f

    .line 161
    iget-object v0, p0, Lbl/afi$1;->this$0:Lbl/afi;

    invoke-virtual {v0}, Lbl/afi;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 162
    if-nez v0, :cond_18

    .line 163
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.bilibili.tv.ui.search.SearchActivity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_18
    check-cast v0, Lcom/bilibili/tv/ui/search/SearchActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchActivity;->l()Landroid/view/View;

    move-result-object p1

    .line 178
    :cond_1e
    :goto_1e
    return-object p1

    .line 167
    :cond_1f
    const/16 v1, 0x21

    if-eq p2, v1, :cond_42

    .line 168
    const/16 v1, 0x42

    if-ne p2, v1, :cond_31

    .line 169
    iget-object v0, p0, Lbl/afi$1;->this$0:Lbl/afi;

    invoke-virtual {v0}, Lbl/afi;->m()Landroid/view/View;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_1e

    move-object p1, v0

    goto :goto_1e

    .line 172
    :cond_31
    const/16 v1, 0x82

    if-ne p2, v1, :cond_3d

    invoke-virtual {p0}, Lbl/afi$1;->H()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1e

    .line 178
    :cond_3d
    invoke-super {p0, p1, p2}, Lcom/bilibili/tv/widget/FixLinearLayoutManager;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    goto :goto_1e

    .line 175
    :cond_42
    if-gtz v0, :cond_3d

    goto :goto_1e
.end method
