.class public abstract Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;
.super Lbl/adu;
.source "BaseVideoListFragment.java"

# interfaces
.implements Lbl/aez;
.implements Lbl/wf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$BigCardViewHolder;,
        Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;,
        Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;,
        Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$ScrollListener;,
        Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$ItemDecorationImpl;,
        Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SpanSizeLookupImpl;
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
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Lbl/adu;-><init>()V

    .line 40
    iput v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->currentPosition:I

    .line 41
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->isLoadingMore:Z

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->hasMoreData:Z

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->ugcList:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->ogvList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->d()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "ott-platform.home.0.0.pv"

    return-object v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 94
    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-super {p0, p1, p2}, Lbl/adu;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->getPageViewEvent()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    invoke-static {v0, v1}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 98
    const v0, 0x7f060299

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v7

    .line 99
    const v0, 0x7f06022b

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v0

    .line 100
    const v1, 0x7f060154

    invoke-static {v1}, Lbl/adl;->b(I)I

    move-result v1

    .line 101
    invoke-virtual {p1, v0, v7, v0, v1}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 103
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->getColumnCount()I

    move-result v3

    .line 104
    new-instance v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$1;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v4, 0x1

    move-object v1, p0

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$1;-><init>(Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;Landroid/content/Context;IIZI)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->layoutManager:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    .line 133
    new-instance v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;-><init>(Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    .line 134
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->layoutManager:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 135
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->layoutManager:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    new-instance v1, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SpanSizeLookupImpl;

    invoke-direct {v1}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SpanSizeLookupImpl;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->a(Landroid/support/v7/widget/GridLayoutManager$c;)V

    .line 136
    new-instance v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$ItemDecorationImpl;

    invoke-direct {v0, v7, v3}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$ItemDecorationImpl;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 137
    invoke-virtual {p1, v5}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 138
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 140
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->ugcList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 141
    invoke-virtual {p0, v5}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->fetchData(Z)V

    .line 144
    :cond_6d
    new-instance v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$ScrollListener;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$ScrollListener;-><init>(Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 145
    return-void
.end method

.method public a_()Z
    .locals 1

    .prologue
    .line 54
    invoke-static {p0}, Lbl/wg;->a(Lbl/wf;)Z

    move-result v0

    return v0
.end method

.method public b()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public e_()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 185
    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    if-eqz v1, :cond_d

    .line 186
    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->a()I

    move-result v1

    if-nez v1, :cond_e

    .line 200
    :cond_d
    :goto_d
    return-object v0

    .line 189
    :cond_e
    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->layoutManager:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    if-nez v1, :cond_16

    .line 190
    invoke-static {}, Lbl/bbi;->a()V

    goto :goto_d

    .line 193
    :cond_16
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->layoutManager:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    iget v1, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->currentPosition:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v1

    if-nez v1, :cond_d

    .line 195
    const/4 v0, 0x1

    iput v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->currentPosition:I

    .line 196
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->layoutManager:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    iget v1, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->currentPosition:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    goto :goto_d
.end method

.method protected abstract fetchData(Z)V
.end method

.method protected abstract getClickEventName()Ljava/lang/String;
.end method

.method protected abstract getColumnCount()I
.end method

.method protected getCoverUrl(I)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    if-ltz p1, :cond_1c

    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->ugcList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1c

    .line 86
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->ugcList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    .line 87
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getCover()Ljava/lang/String;

    move-result-object v0

    .line 89
    :goto_19
    return-object v0

    :cond_1a
    move-object v0, v1

    .line 87
    goto :goto_19

    :cond_1c
    move-object v0, v1

    .line 89
    goto :goto_19
.end method

.method protected abstract getLogTag()Ljava/lang/String;
.end method

.method protected abstract getPageViewEvent()Ljava/lang/String;
.end method

.method protected hideBottomInfo()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->isLoadingMore:Z

    return v0
.end method

.method protected onBigCardClick(Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 149
    invoke-super {p0}, Lbl/adu;->onDestroyView()V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    .line 151
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2

    .prologue
    .line 205
    invoke-super {p0, p1}, Lbl/adu;->onHiddenChanged(Z)V

    .line 206
    invoke-static {}, Lbl/wh;->a()Lbl/wh;

    move-result-object v1

    if-nez p1, :cond_e

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {v1, p0, v0}, Lbl/wh;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 207
    return-void

    .line 206
    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected onSmallCardClick(Landroid/view/View;Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 75
    const-string v0, "bilibili_yst://video"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "bilibili://video"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 76
    :cond_10
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    .line 78
    if-eqz v2, :cond_2f

    .line 79
    sget-object v3, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    invoke-virtual {p0, p3}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->getCoverUrl(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v0, v1, v4}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 82
    :cond_2f
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 3

    .prologue
    .line 155
    invoke-super {p0, p1}, Lbl/adu;->setUserVisibleHint(Z)V

    .line 156
    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_c

    .line 177
    :cond_b
    :goto_b
    return-void

    .line 159
    :cond_c
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_b

    .line 163
    check-cast v0, Lcom/bilibili/tv/ui/main/MainActivity;

    .line 164
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->d()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    .line 165
    if-eqz v1, :cond_1f

    .line 166
    iget v2, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->currentPosition:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    .line 168
    :cond_1f
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->d()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    .line 169
    if-nez v1, :cond_28

    .line 170
    invoke-static {}, Lbl/bbi;->a()V

    .line 172
    :cond_28
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v1

    iget v2, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->currentPosition:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$h;->c(I)Landroid/view/View;

    move-result-object v1

    .line 173
    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/MainActivity;->h()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 176
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_b
.end method
