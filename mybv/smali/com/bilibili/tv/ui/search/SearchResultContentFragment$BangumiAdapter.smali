.class Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiAdapter;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "SearchResultContentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/search/SearchResultContentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BangumiAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private bangumis:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;",
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
            "Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 909
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 907
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiAdapter;->bangumis:Ljava/util/List;

    .line 910
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiAdapter;->bangumis:Ljava/util/List;

    .line 911
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiAdapter;->bangumis:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 906
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiAdapter;->a(Landroid/view/ViewGroup;I)Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiViewHolder;
    .locals 3

    .prologue
    .line 921
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 922
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0074

    const/4 v2, 0x0

    .line 923
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 924
    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiViewHolder;

    invoke-direct {v1, v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    .prologue
    .line 906
    check-cast p1, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiAdapter;->a(Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiViewHolder;I)V

    return-void
.end method

.method public a(Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiViewHolder;I)V
    .locals 1

    .prologue
    .line 929
    const-string v0, "holder"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 930
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiAdapter;->bangumis:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;

    .line 931
    invoke-virtual {p1, v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiViewHolder;->bind(Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;)V

    .line 932
    return-void
.end method

.method public addBangumis(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 914
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiAdapter;->bangumis:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 915
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiAdapter;->bangumis:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 916
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiAdapter;->d(I)V

    .line 917
    return-void
.end method
