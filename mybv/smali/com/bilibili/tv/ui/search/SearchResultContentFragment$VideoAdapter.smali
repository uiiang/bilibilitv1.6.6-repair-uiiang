.class Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoAdapter;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "SearchResultContentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/search/SearchResultContentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private videos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/search/BiliSearchResultNew$Video;",
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
            "Lcom/bilibili/tv/api/search/BiliSearchResultNew$Video;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 784
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 782
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoAdapter;->videos:Ljava/util/List;

    .line 785
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoAdapter;->videos:Ljava/util/List;

    .line 786
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoAdapter;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 781
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoAdapter;->a(Landroid/view/ViewGroup;I)Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoViewHolder;
    .locals 3

    .prologue
    .line 796
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 797
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0080

    const/4 v2, 0x0

    .line 798
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 799
    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoViewHolder;

    invoke-direct {v1, v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    .prologue
    .line 781
    check-cast p1, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoAdapter;->a(Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoViewHolder;I)V

    return-void
.end method

.method public a(Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoViewHolder;I)V
    .locals 1

    .prologue
    .line 804
    const-string v0, "holder"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 805
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoAdapter;->videos:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Video;

    .line 806
    invoke-virtual {p1, v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoViewHolder;->bind(Lcom/bilibili/tv/api/search/BiliSearchResultNew$Video;)V

    .line 807
    return-void
.end method

.method public addVideos(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/search/BiliSearchResultNew$Video;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 789
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoAdapter;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 790
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoAdapter;->videos:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 791
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoAdapter;->d(I)V

    .line 792
    return-void
.end method
