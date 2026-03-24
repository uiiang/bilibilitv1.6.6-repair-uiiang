.class Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveAdapter;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "SearchResultContentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/search/SearchResultContentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LiveAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private lives:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmybl/BiliLiveContent;",
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
            "Lmybl/BiliLiveContent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1088
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 1086
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveAdapter;->lives:Ljava/util/List;

    .line 1089
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveAdapter;->lives:Ljava/util/List;

    .line 1090
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveAdapter;->lives:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 1085
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveAdapter;->a(Landroid/view/ViewGroup;I)Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveViewHolder;
    .locals 3

    .prologue
    .line 1100
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1101
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0080

    const/4 v2, 0x0

    .line 1102
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1103
    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveViewHolder;

    invoke-direct {v1, v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    .prologue
    .line 1085
    check-cast p1, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveAdapter;->a(Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveViewHolder;I)V

    return-void
.end method

.method public a(Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveViewHolder;I)V
    .locals 1

    .prologue
    .line 1108
    const-string v0, "holder"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1109
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveAdapter;->lives:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/BiliLiveContent;

    .line 1110
    invoke-virtual {p1, v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveViewHolder;->bind(Lmybl/BiliLiveContent;)V

    .line 1111
    return-void
.end method

.method public addLives(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmybl/BiliLiveContent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveAdapter;->lives:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1094
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveAdapter;->lives:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1095
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveAdapter;->d(I)V

    .line 1096
    return-void
.end method
