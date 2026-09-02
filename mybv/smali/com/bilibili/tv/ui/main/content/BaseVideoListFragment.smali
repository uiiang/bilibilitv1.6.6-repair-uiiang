.class public abstract Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;
.super Lbl/adu;
.source "BaseVideoListFragment.java"

# interfaces
.implements Lbl/aez;
.implements Lbl/wf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;,
        Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SpanSizeLookupImpl;,
        Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$ItemDecorationImpl;,
        Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$ScrollListener;,
        Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$BigCardViewHolder;,
        Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;
    }
.end annotation


# instance fields
.field protected adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

.field protected currentPosition:I

.field protected hasMoreData:Z

.field protected isLoadingMore:Z

.field protected layoutManager:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

.field protected ogvList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/main/MainRecommendEx$Content;",
            ">;"
        }
    .end annotation
.end field

.field protected pendingPrefetchGen:I

.field protected prefetchGeneration:I

.field protected prefetchedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/main/MainRecommendEx$Content;",
            ">;"
        }
    .end annotation
.end field

.field protected prefetching:Z

.field protected recycledViewPool:Landroid/support/v7/widget/RecyclerView$n;

.field protected ugcList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/main/MainRecommendEx$Content;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Lbl/adu;-><init>()V

    .line 41
    iput v1, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->currentPosition:I

    .line 42
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->isLoadingMore:Z

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->hasMoreData:Z

    .line 49
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->prefetching:Z

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->prefetchedList:Ljava/util/List;

    .line 51
    iput v1, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->prefetchGeneration:I

    .line 52
    iput v1, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->pendingPrefetchGen:I

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->ugcList:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->ogvList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->d()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "ott-platform.home.0.0.pv"

    return-object v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 120
    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-super {p0, p1, p2}, Lbl/adu;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 122
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->getPageViewEvent()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    invoke-static {v0, v1}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 124
    const v0, 0x7f060299

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v7

    .line 125
    const v0, 0x7f06022b

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v0

    .line 126
    const v1, 0x7f060154

    invoke-static {v1}, Lbl/adl;->b(I)I

    move-result v1

    .line 127
    invoke-virtual {p1, v0, v7, v0, v1}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 129
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->getColumnCount()I

    move-result v3

    .line 130
    new-instance v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$1;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object v1, p0

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$1;-><init>(Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;Landroid/content/Context;IIZI)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->layoutManager:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    .line 166
    new-instance v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;-><init>(Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    .line 167
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->layoutManager:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 168
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->layoutManager:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    new-instance v1, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SpanSizeLookupImpl;

    invoke-direct {v1}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SpanSizeLookupImpl;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->a(Landroid/support/v7/widget/GridLayoutManager$c;)V

    .line 169
    new-instance v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$ItemDecorationImpl;

    invoke-direct {v0, v7, v3}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$ItemDecorationImpl;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 170
    invoke-virtual {p1, v5}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 174
    const/4 v0, 0x0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$e;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$e;)V

    .line 176
    invoke-virtual {p1, v4}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 178
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 180
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->recycledViewPool:Landroid/support/v7/widget/RecyclerView$n;

    if-nez v0, :cond_76

    .line 181
    new-instance v0, Landroid/support/v7/widget/RecyclerView$n;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$n;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->recycledViewPool:Landroid/support/v7/widget/RecyclerView$n;

    .line 183
    :cond_76
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->recycledViewPool:Landroid/support/v7/widget/RecyclerView$n;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setRecycledViewPool(Landroid/support/v7/widget/RecyclerView$n;)V

    .line 186
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 188
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->ugcList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 189
    invoke-virtual {p0, v5}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->fetchData(Z)V

    .line 192
    :cond_8b
    new-instance v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$ScrollListener;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$ScrollListener;-><init>(Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 204
    return-void
.end method

.method public a_()Z
    .locals 1

    .prologue
    .line 64
    invoke-static {p0}, Lbl/wg;->a(Lbl/wf;)Z

    move-result v0

    return v0
.end method

.method public b()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method protected consumePrefetchedData()Z
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->prefetchedList:Ljava/util/List;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->prefetchedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    if-nez v0, :cond_12

    .line 286
    :cond_10
    const/4 v0, 0x0

    .line 292
    :goto_11
    return v0

    .line 288
    :cond_12
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->prefetchedList:Ljava/util/List;

    .line 289
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->prefetchedList:Ljava/util/List;

    .line 290
    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->appendData(Ljava/util/List;)V

    .line 291
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->prefetchNextPage()V

    .line 292
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public e_()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 297
    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    if-eqz v1, :cond_d

    .line 298
    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->a()I

    move-result v1

    if-nez v1, :cond_e

    .line 312
    :cond_d
    :goto_d
    return-object v0

    .line 301
    :cond_e
    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->layoutManager:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    if-nez v1, :cond_16

    .line 302
    invoke-static {}, Lbl/bbi;->a()V

    goto :goto_d

    .line 305
    :cond_16
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->layoutManager:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    iget v1, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->currentPosition:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    .line 306
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v1

    if-nez v1, :cond_d

    .line 307
    const/4 v0, 0x1

    iput v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->currentPosition:I

    .line 308
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->layoutManager:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    iget v1, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->currentPosition:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    goto :goto_d
.end method

.method protected abstract fetchData(Z)V
.end method

.method protected fetchDataForPrefetch()V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method protected abstract getClickEventName()Ljava/lang/String;
.end method

.method protected abstract getColumnCount()I
.end method

.method protected getCoverUrl(I)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    if-ltz p1, :cond_1c

    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->ugcList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1c

    .line 96
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->ugcList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    .line 97
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getCover()Ljava/lang/String;

    move-result-object v0

    .line 99
    :goto_19
    return-object v0

    :cond_1a
    move-object v0, v1

    .line 97
    goto :goto_19

    :cond_1c
    move-object v0, v1

    .line 99
    goto :goto_19
.end method

.method protected abstract getLogTag()Ljava/lang/String;
.end method

.method protected abstract getPageViewEvent()Ljava/lang/String;
.end method

.method protected hideBottomInfo()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->isLoadingMore:Z

    return v0
.end method

.method protected onBigCardClick(Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 208
    invoke-super {p0}, Lbl/adu;->onDestroyView()V

    .line 209
    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    .line 211
    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->recycledViewPool:Landroid/support/v7/widget/RecyclerView$n;

    .line 212
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2

    .prologue
    .line 317
    invoke-super {p0, p1}, Lbl/adu;->onHiddenChanged(Z)V

    .line 318
    invoke-static {}, Lbl/wh;->a()Lbl/wh;

    move-result-object v1

    if-nez p1, :cond_e

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {v1, p0, v0}, Lbl/wh;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 319
    return-void

    .line 318
    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected onPrefetchError()V
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->prefetching:Z

    .line 278
    return-void
.end method

.method protected onPrefetchSuccess(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/main/MainRecommendEx$Content;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->prefetching:Z

    .line 267
    iget v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->pendingPrefetchGen:I

    iget v1, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->prefetchGeneration:I

    if-eq v0, v1, :cond_a

    .line 273
    :cond_9
    :goto_9
    return-void

    .line 270
    :cond_a
    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 271
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->prefetchedList:Ljava/util/List;

    goto :goto_9
.end method

.method protected onSmallCardClick(Landroid/view/View;Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 85
    const-string v0, "bilibili_yst://video"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "bilibili://video"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 86
    :cond_10
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    .line 88
    if-eqz v2, :cond_2f

    .line 89
    sget-object v3, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    invoke-virtual {p0, p3}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->getCoverUrl(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v0, v1, v4}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 92
    :cond_2f
    return-void
.end method

.method protected prefetchNextPage()V
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->prefetching:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->prefetchedList:Ljava/util/List;

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->hasMoreData:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    if-nez v0, :cond_11

    .line 255
    :cond_10
    :goto_10
    return-void

    .line 252
    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->prefetching:Z

    .line 253
    iget v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->prefetchGeneration:I

    iput v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->pendingPrefetchGen:I

    .line 254
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->fetchDataForPrefetch()V

    goto :goto_10
.end method

.method public setUserVisibleHint(Z)V
    .locals 3

    .prologue
    .line 216
    invoke-super {p0, p1}, Lbl/adu;->setUserVisibleHint(Z)V

    .line 217
    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_c

    .line 238
    :cond_b
    :goto_b
    return-void

    .line 220
    :cond_c
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_b

    .line 224
    check-cast v0, Lcom/bilibili/tv/ui/main/MainActivity;

    .line 225
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->d()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    .line 226
    if-eqz v1, :cond_1f

    .line 227
    iget v2, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->currentPosition:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    .line 229
    :cond_1f
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->d()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    .line 230
    if-nez v1, :cond_28

    .line 231
    invoke-static {}, Lbl/bbi;->a()V

    .line 233
    :cond_28
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v1

    iget v2, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->currentPosition:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$h;->c(I)Landroid/view/View;

    move-result-object v1

    .line 234
    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/MainActivity;->h()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 237
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_b
.end method
