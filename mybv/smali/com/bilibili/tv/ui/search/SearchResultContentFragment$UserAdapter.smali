.class Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserAdapter;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "SearchResultContentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/search/SearchResultContentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/search/BiliSearchResultUper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/search/BiliSearchResultUper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1001
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 999
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserAdapter;->users:Ljava/util/List;

    .line 1002
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserAdapter;->users:Ljava/util/List;

    .line 1003
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserAdapter;->users:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 998
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserAdapter;->a(Landroid/view/ViewGroup;I)Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserViewHolder;
    .locals 3

    .prologue
    .line 1013
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1014
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0077

    const/4 v2, 0x0

    .line 1015
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1016
    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserViewHolder;

    invoke-direct {v1, v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    .prologue
    .line 998
    check-cast p1, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserAdapter;->a(Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserViewHolder;I)V

    return-void
.end method

.method public a(Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserViewHolder;I)V
    .locals 1

    .prologue
    .line 1021
    const-string v0, "holder"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1022
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserAdapter;->users:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/search/BiliSearchResultUper;

    .line 1023
    invoke-virtual {p1, v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserViewHolder;->bind(Lcom/bilibili/tv/api/search/BiliSearchResultUper;)V

    .line 1024
    return-void
.end method

.method public addUsers(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/search/BiliSearchResultUper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserAdapter;->users:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1007
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserAdapter;->users:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1008
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserAdapter;->d(I)V

    .line 1009
    return-void
.end method
