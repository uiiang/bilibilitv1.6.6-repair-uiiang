.class final Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "SearchResultVideoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "VideoAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Landroid/support/v7/widget/RecyclerView$v;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private bangumis:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;",
            ">;"
        }
    .end annotation
.end field

.field private itemType:I

.field private liveRooms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmybl/BiliLiveContent;",
            ">;"
        }
    .end annotation
.end field

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

.field private videos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 864
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 865
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->videos:Ljava/util/List;

    .line 866
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->bangumis:Ljava/util/List;

    .line 867
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->users:Ljava/util/List;

    .line 868
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->liveRooms:Ljava/util/List;

    .line 869
    const/4 v0, 0x0

    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->itemType:I

    return-void
.end method

.method private bindBangumiHolder(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;I)V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 1010
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->bangumis:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;

    .line 1012
    iget-object v1, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->cover:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 1013
    iget-object v1, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->cover:Ljava/lang/String;

    .line 1014
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 1015
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1017
    :cond_30
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v2

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v3

    invoke-static {v3, v1}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;->img:Lcom/bilibili/tv/widget/ScalableImageView;

    invoke-virtual {v2, v1, v3}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 1020
    :cond_41
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;->title:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1021
    iget-object v1, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->area:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_aa

    .line 1022
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;->type:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->area:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1023
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;->type:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1027
    :goto_5c
    iget-object v1, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->style:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b0

    .line 1028
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;->count:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->style:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1029
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;->count:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1033
    :goto_70
    iget-wide v2, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->rating:D

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_b6

    .line 1034
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;->num:Landroid/widget/TextView;

    const-string v2, "%.1f\u5206"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->rating:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1035
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;->num:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1040
    :goto_93
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;->root:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 1041
    iget-object v0, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;->root:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    const v1, 0x7f0800d8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 1042
    iget-object v0, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;->root:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1043
    return-void

    .line 1025
    :cond_aa
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;->type:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5c

    .line 1031
    :cond_b0
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;->count:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_70

    .line 1037
    :cond_b6
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;->num:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_93
.end method

.method private bindLiveRoomHolder(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;I)V
    .locals 6

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->liveRooms:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/BiliLiveContent;

    .line 1068
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;->title:Landroid/widget/TextView;

    iget-object v2, v0, Lmybl/BiliLiveContent;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1069
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;->up:Landroid/widget/TextView;

    iget-object v2, v0, Lmybl/BiliLiveContent;->mUname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1070
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;->online:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5728\u7ebf\u4eba\u6570 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lmybl/BiliLiveContent;->mOnline:J

    invoke-static {v4, v5}, Lbl/adh;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1072
    iget-object v1, v0, Lmybl/BiliLiveContent;->mCover:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 1073
    iget-object v1, v0, Lmybl/BiliLiveContent;->mCover:Ljava/lang/String;

    .line 1074
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_59

    .line 1075
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1077
    :cond_59
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v2

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v3

    invoke-static {v3, v1}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;->img:Lcom/bilibili/tv/widget/ScalableImageView;

    invoke-virtual {v2, v1, v3}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 1080
    :cond_6a
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;->root:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 1081
    iget-object v0, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;->root:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    const v1, 0x7f0800d8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 1082
    iget-object v0, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;->root:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1083
    return-void
.end method

.method private bindUserHolder(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;I)V
    .locals 4

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->users:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/search/BiliSearchResultUper;

    .line 1048
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;->title:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->uname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1049
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;->fans:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->fans:I

    invoke-static {v3}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u7c89\u4e1d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1050
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;->archives:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->videos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u4e2a\u89c6\u9891"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1052
    iget-object v1, v0, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->upic:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7d

    .line 1053
    iget-object v1, v0, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->upic:Ljava/lang/String;

    .line 1054
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6c

    .line 1055
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1057
    :cond_6c
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v2

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v3

    invoke-static {v3, v1}, Lbl/abd;->get_thumb_url_b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;->img:Lcom/bilibili/tv/widget/ScalableImageView;

    invoke-virtual {v2, v1, v3}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 1060
    :cond_7d
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;->root:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 1061
    iget-object v0, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;->root:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    const v1, 0x7f0800d8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 1062
    iget-object v0, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;->root:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1063
    return-void
.end method

.method private bindVideoHolder(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;I)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 977
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->videos:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;

    .line 979
    iget-object v1, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->cover:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 980
    iget-object v1, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->cover:Ljava/lang/String;

    .line 981
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 982
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 984
    :cond_30
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v2

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v3

    invoke-static {v3, v1}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->img:Lcom/bilibili/tv/widget/ScalableImageView;

    invoke-virtual {v2, v1, v3}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 987
    :cond_41
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->title:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 988
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->up:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->author:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 989
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->play:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->play:Ljava/lang/String;

    invoke-static {v2}, Lbl/adh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 990
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->danmaku:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->danmaku:Ljava/lang/String;

    invoke-static {v2}, Lbl/adh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 991
    iget-object v1, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->pubdate:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a4

    .line 992
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->pubdate:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->pubdate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 993
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->pubdate:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 997
    :goto_79
    iget-object v1, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->duration:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_aa

    .line 998
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->duration:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->duration:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 999
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->duration:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1004
    :goto_8d
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->root:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 1005
    iget-object v0, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->root:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    const v1, 0x7f0800d8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 1006
    iget-object v0, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->root:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1007
    return-void

    .line 995
    :cond_a4
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->pubdate:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_79

    .line 1001
    :cond_aa
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->duration:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8d
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1087
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->itemType:I

    packed-switch v0, :pswitch_data_24

    .line 1092
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 1088
    :pswitch_7
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_6

    .line 1089
    :pswitch_e
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->bangumis:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_6

    .line 1090
    :pswitch_15
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->users:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_6

    .line 1091
    :pswitch_1c
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->liveRooms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_6

    .line 1087
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_7
        :pswitch_e
        :pswitch_15
        :pswitch_1c
    .end packed-switch
.end method

.method public a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 933
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 934
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->itemType:I

    packed-switch v0, :pswitch_data_24

    .line 944
    invoke-static {p1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->create(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;

    move-result-object v0

    :goto_e
    return-object v0

    .line 936
    :pswitch_f
    invoke-static {p1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->create(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;

    move-result-object v0

    goto :goto_e

    .line 938
    :pswitch_14
    invoke-static {p1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;->create(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;

    move-result-object v0

    goto :goto_e

    .line 940
    :pswitch_19
    invoke-static {p1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;->create(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;

    move-result-object v0

    goto :goto_e

    .line 942
    :pswitch_1e
    invoke-static {p1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;->create(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;

    move-result-object v0

    goto :goto_e

    .line 934
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_f
        :pswitch_14
        :pswitch_19
        :pswitch_1e
    .end packed-switch
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 1

    .prologue
    .line 950
    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 952
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->itemType:I

    packed-switch v0, :pswitch_data_34

    .line 974
    :cond_a
    :goto_a
    return-void

    .line 954
    :pswitch_b
    instance-of v0, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;

    if-eqz v0, :cond_a

    .line 955
    check-cast p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;

    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->bindVideoHolder(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;I)V

    goto :goto_a

    .line 959
    :pswitch_15
    instance-of v0, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;

    if-eqz v0, :cond_a

    .line 960
    check-cast p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;

    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->bindBangumiHolder(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;I)V

    goto :goto_a

    .line 964
    :pswitch_1f
    instance-of v0, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;

    if-eqz v0, :cond_a

    .line 965
    check-cast p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;

    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->bindUserHolder(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;I)V

    goto :goto_a

    .line 969
    :pswitch_29
    instance-of v0, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;

    if-eqz v0, :cond_a

    .line 970
    check-cast p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;

    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->bindLiveRoomHolder(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;I)V

    goto :goto_a

    .line 952
    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_b
        :pswitch_15
        :pswitch_1f
        :pswitch_29
    .end packed-switch
.end method

.method public addBangumis(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 892
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->bangumis:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 893
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->bangumis:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 894
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->d(I)V

    .line 895
    return-void
.end method

.method public addLiveRooms(Ljava/util/List;)V
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
    .line 918
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->liveRooms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 919
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->liveRooms:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 920
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->d(I)V

    .line 921
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
    .line 905
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->users:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 906
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->users:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 907
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->d(I)V

    .line 908
    return-void
.end method

.method public addVideos(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 879
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 880
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->videos:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 881
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->d(I)V

    .line 882
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 925
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->bangumis:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 926
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->users:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 927
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->liveRooms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 928
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->d()V

    .line 929
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1098
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 1099
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1100
    invoke-static {v1}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 1101
    if-nez v1, :cond_f

    .line 1122
    :cond_e
    :goto_e
    return-void

    .line 1103
    :cond_f
    instance-of v2, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;

    if-eqz v2, :cond_27

    .line 1104
    check-cast v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;

    .line 1106
    :try_start_15
    iget-object v0, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->param:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1107
    sget-object v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    invoke-virtual {v0, v1, v2, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_24} :catch_25

    goto :goto_e

    .line 1108
    :catch_25
    move-exception v0

    goto :goto_e

    .line 1109
    :cond_27
    instance-of v2, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;

    if-eqz v2, :cond_39

    .line 1110
    check-cast v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;

    .line 1111
    sget-object v2, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->Companion:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$a;

    iget-object v0, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->param:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_e

    .line 1112
    :cond_39
    instance-of v2, v0, Lcom/bilibili/tv/api/search/BiliSearchResultUper;

    if-eqz v2, :cond_47

    .line 1113
    check-cast v0, Lcom/bilibili/tv/api/search/BiliSearchResultUper;

    .line 1114
    iget-wide v2, v0, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->mid:J

    iget-object v0, v0, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->uname:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->start(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_e

    .line 1115
    :cond_47
    instance-of v2, v0, Lmybl/BiliLiveContent;

    if-eqz v2, :cond_e

    .line 1116
    check-cast v0, Lmybl/BiliLiveContent;

    .line 1117
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->lives:Ljava/util/List;

    .line 1118
    sget-object v2, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->lives:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1119
    const/4 v2, 0x0

    sput v2, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->live_index:I

    .line 1120
    invoke-static {v1, v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a(Landroid/content/Context;Lmybl/BiliLiveContent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_e
.end method

.method public setBangumis(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 885
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->bangumis:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 886
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->bangumis:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 887
    const/4 v0, 0x1

    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->itemType:I

    .line 888
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->d()V

    .line 889
    return-void
.end method

.method public setLiveRooms(Ljava/util/List;)V
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
    .line 911
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->liveRooms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 912
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->liveRooms:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 913
    const/4 v0, 0x3

    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->itemType:I

    .line 914
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->d()V

    .line 915
    return-void
.end method

.method public setUsers(Ljava/util/List;)V
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
    .line 898
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->users:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 899
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->users:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 900
    const/4 v0, 0x2

    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->itemType:I

    .line 901
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->d()V

    .line 902
    return-void
.end method

.method public setVideos(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 872
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 873
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->videos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 874
    const/4 v0, 0x0

    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->itemType:I

    .line 875
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->d()V

    .line 876
    return-void
.end method
