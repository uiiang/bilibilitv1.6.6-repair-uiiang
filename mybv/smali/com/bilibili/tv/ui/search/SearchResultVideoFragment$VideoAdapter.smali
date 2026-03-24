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
    .line 964
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 965
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->videos:Ljava/util/List;

    .line 966
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->bangumis:Ljava/util/List;

    .line 967
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->users:Ljava/util/List;

    .line 968
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->liveRooms:Ljava/util/List;

    .line 969
    const/4 v0, 0x0

    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->itemType:I

    return-void
.end method

.method private bindBangumiHolder(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;I)V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 1110
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->bangumis:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;

    .line 1112
    iget-object v1, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->cover:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 1113
    iget-object v1, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->cover:Ljava/lang/String;

    .line 1114
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 1115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1117
    :cond_30
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v2

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v3

    invoke-static {v3, v1}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;->img:Lcom/bilibili/tv/widget/ScalableImageView;

    invoke-virtual {v2, v1, v3}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 1120
    :cond_41
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;->title:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1121
    iget-object v1, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->area:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_aa

    .line 1122
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;->type:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->area:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1123
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;->type:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1127
    :goto_5c
    iget-object v1, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->style:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b0

    .line 1128
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;->count:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->style:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1129
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;->count:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1133
    :goto_70
    iget-wide v2, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->rating:D

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_b6

    .line 1134
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

    .line 1135
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;->num:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1140
    :goto_93
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;->root:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 1141
    iget-object v0, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;->root:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    const v1, 0x7f0800d8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 1142
    iget-object v0, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;->root:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1143
    return-void

    .line 1125
    :cond_aa
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;->type:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5c

    .line 1131
    :cond_b0
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;->count:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_70

    .line 1137
    :cond_b6
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;->num:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_93
.end method

.method private bindLiveRoomHolder(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;I)V
    .locals 6

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->liveRooms:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/BiliLiveContent;

    .line 1168
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;->title:Landroid/widget/TextView;

    iget-object v2, v0, Lmybl/BiliLiveContent;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1169
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;->up:Landroid/widget/TextView;

    iget-object v2, v0, Lmybl/BiliLiveContent;->mUname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1170
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

    .line 1172
    iget-object v1, v0, Lmybl/BiliLiveContent;->mCover:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 1173
    iget-object v1, v0, Lmybl/BiliLiveContent;->mCover:Ljava/lang/String;

    .line 1174
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_59

    .line 1175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1177
    :cond_59
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v2

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v3

    invoke-static {v3, v1}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;->img:Lcom/bilibili/tv/widget/ScalableImageView;

    invoke-virtual {v2, v1, v3}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 1180
    :cond_6a
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;->root:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 1181
    iget-object v0, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;->root:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    const v1, 0x7f0800d8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 1182
    iget-object v0, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;->root:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1183
    return-void
.end method

.method private bindUserHolder(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;I)V
    .locals 4

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->users:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/search/BiliSearchResultUper;

    .line 1148
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;->title:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->uname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1149
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

    .line 1150
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

    .line 1152
    iget-object v1, v0, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->upic:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7d

    .line 1153
    iget-object v1, v0, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->upic:Ljava/lang/String;

    .line 1154
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6c

    .line 1155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1157
    :cond_6c
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v2

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v3

    invoke-static {v3, v1}, Lbl/abd;->get_thumb_url_b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;->img:Lcom/bilibili/tv/widget/ScalableImageView;

    invoke-virtual {v2, v1, v3}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 1160
    :cond_7d
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;->root:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 1161
    iget-object v0, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;->root:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    const v1, 0x7f0800d8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 1162
    iget-object v0, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;->root:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1163
    return-void
.end method

.method private bindVideoHolder(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;I)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1077
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->videos:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;

    .line 1079
    iget-object v1, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->cover:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 1080
    iget-object v1, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->cover:Ljava/lang/String;

    .line 1081
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 1082
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1084
    :cond_30
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v2

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v3

    invoke-static {v3, v1}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->img:Lcom/bilibili/tv/widget/ScalableImageView;

    invoke-virtual {v2, v1, v3}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 1087
    :cond_41
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->title:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1088
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->up:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->author:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1089
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->play:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->play:Ljava/lang/String;

    invoke-static {v2}, Lbl/adh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1090
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->danmaku:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->danmaku:Ljava/lang/String;

    invoke-static {v2}, Lbl/adh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1091
    iget-object v1, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->pubdate:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a4

    .line 1092
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->pubdate:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->pubdate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1093
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->pubdate:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1097
    :goto_79
    iget-object v1, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->duration:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_aa

    .line 1098
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->duration:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->duration:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1099
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->duration:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1104
    :goto_8d
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->root:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 1105
    iget-object v0, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->root:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    const v1, 0x7f0800d8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 1106
    iget-object v0, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->root:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1107
    return-void

    .line 1095
    :cond_a4
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->pubdate:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_79

    .line 1101
    :cond_aa
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->duration:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8d
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1187
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->itemType:I

    packed-switch v0, :pswitch_data_24

    .line 1192
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 1188
    :pswitch_7
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_6

    .line 1189
    :pswitch_e
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->bangumis:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_6

    .line 1190
    :pswitch_15
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->users:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_6

    .line 1191
    :pswitch_1c
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->liveRooms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_6

    .line 1187
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
    .line 1033
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1034
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->itemType:I

    packed-switch v0, :pswitch_data_24

    .line 1044
    invoke-static {p1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->create(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;

    move-result-object v0

    :goto_e
    return-object v0

    .line 1036
    :pswitch_f
    invoke-static {p1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->create(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;

    move-result-object v0

    goto :goto_e

    .line 1038
    :pswitch_14
    invoke-static {p1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;->create(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;

    move-result-object v0

    goto :goto_e

    .line 1040
    :pswitch_19
    invoke-static {p1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;->create(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;

    move-result-object v0

    goto :goto_e

    .line 1042
    :pswitch_1e
    invoke-static {p1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;->create(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;

    move-result-object v0

    goto :goto_e

    .line 1034
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
    .line 1050
    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1052
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->itemType:I

    packed-switch v0, :pswitch_data_34

    .line 1074
    :cond_a
    :goto_a
    return-void

    .line 1054
    :pswitch_b
    instance-of v0, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;

    if-eqz v0, :cond_a

    .line 1055
    check-cast p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;

    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->bindVideoHolder(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;I)V

    goto :goto_a

    .line 1059
    :pswitch_15
    instance-of v0, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;

    if-eqz v0, :cond_a

    .line 1060
    check-cast p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;

    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->bindBangumiHolder(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;I)V

    goto :goto_a

    .line 1064
    :pswitch_1f
    instance-of v0, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;

    if-eqz v0, :cond_a

    .line 1065
    check-cast p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;

    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->bindUserHolder(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;I)V

    goto :goto_a

    .line 1069
    :pswitch_29
    instance-of v0, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;

    if-eqz v0, :cond_a

    .line 1070
    check-cast p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;

    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->bindLiveRoomHolder(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;I)V

    goto :goto_a

    .line 1052
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
    .line 992
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->bangumis:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 993
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->bangumis:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 994
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->d(I)V

    .line 995
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
    .line 1018
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->liveRooms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1019
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->liveRooms:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1020
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->d(I)V

    .line 1021
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
    .line 1005
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->users:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1006
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->users:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1007
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->d(I)V

    .line 1008
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
    .line 979
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 980
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->videos:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 981
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->d(I)V

    .line 982
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1025
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->bangumis:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1026
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->users:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1027
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->liveRooms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1028
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->d()V

    .line 1029
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1198
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 1199
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1200
    invoke-static {v1}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 1201
    if-nez v1, :cond_f

    .line 1222
    :cond_e
    :goto_e
    return-void

    .line 1203
    :cond_f
    instance-of v2, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;

    if-eqz v2, :cond_27

    .line 1204
    check-cast v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;

    .line 1206
    :try_start_15
    iget-object v0, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->param:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1207
    sget-object v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    invoke-virtual {v0, v1, v2, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_24} :catch_25

    goto :goto_e

    .line 1208
    :catch_25
    move-exception v0

    goto :goto_e

    .line 1209
    :cond_27
    instance-of v2, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;

    if-eqz v2, :cond_39

    .line 1210
    check-cast v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;

    .line 1211
    sget-object v2, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->Companion:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$a;

    iget-object v0, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->param:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_e

    .line 1212
    :cond_39
    instance-of v2, v0, Lcom/bilibili/tv/api/search/BiliSearchResultUper;

    if-eqz v2, :cond_47

    .line 1213
    check-cast v0, Lcom/bilibili/tv/api/search/BiliSearchResultUper;

    .line 1214
    iget-wide v2, v0, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->mid:J

    iget-object v0, v0, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->uname:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->start(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_e

    .line 1215
    :cond_47
    instance-of v2, v0, Lmybl/BiliLiveContent;

    if-eqz v2, :cond_e

    .line 1216
    check-cast v0, Lmybl/BiliLiveContent;

    .line 1217
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->lives:Ljava/util/List;

    .line 1218
    sget-object v2, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->lives:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1219
    const/4 v2, 0x0

    sput v2, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->live_index:I

    .line 1220
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
    .line 985
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->bangumis:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 986
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->bangumis:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 987
    const/4 v0, 0x1

    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->itemType:I

    .line 988
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->d()V

    .line 989
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
    .line 1011
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->liveRooms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1012
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->liveRooms:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1013
    const/4 v0, 0x3

    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->itemType:I

    .line 1014
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->d()V

    .line 1015
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
    .line 998
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->users:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 999
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->users:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1000
    const/4 v0, 0x2

    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->itemType:I

    .line 1001
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->d()V

    .line 1002
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
    .line 972
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 973
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->videos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 974
    const/4 v0, 0x0

    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->itemType:I

    .line 975
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->d()V

    .line 976
    return-void
.end method
