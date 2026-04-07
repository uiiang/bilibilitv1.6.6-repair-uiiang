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
    .line 1009
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 1010
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->videos:Ljava/util/List;

    .line 1011
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->bangumis:Ljava/util/List;

    .line 1012
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->users:Ljava/util/List;

    .line 1013
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->liveRooms:Ljava/util/List;

    .line 1014
    const/4 v0, 0x0

    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->itemType:I

    return-void
.end method

.method private bindBangumiHolder(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;I)V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 1155
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->bangumis:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;

    .line 1157
    iget-object v1, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->cover:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 1158
    iget-object v1, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->cover:Ljava/lang/String;

    .line 1159
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 1160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1162
    :cond_30
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v2

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v3

    invoke-static {v3, v1}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;->img:Lcom/bilibili/tv/widget/ScalableImageView;

    invoke-virtual {v2, v1, v3}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 1165
    :cond_41
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;->title:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1166
    iget-object v1, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->area:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_aa

    .line 1167
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;->type:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->area:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1168
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;->type:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1172
    :goto_5c
    iget-object v1, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->style:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b0

    .line 1173
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;->count:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->style:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1174
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;->count:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1178
    :goto_70
    iget-wide v2, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->rating:D

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_b6

    .line 1179
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

    .line 1180
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;->num:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1185
    :goto_93
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;->root:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 1186
    iget-object v0, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;->root:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    const v1, 0x7f0800d8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 1187
    iget-object v0, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;->root:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1188
    return-void

    .line 1170
    :cond_aa
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;->type:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5c

    .line 1176
    :cond_b0
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;->count:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_70

    .line 1182
    :cond_b6
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;->num:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_93
.end method

.method private bindLiveRoomHolder(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;I)V
    .locals 6

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->liveRooms:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/BiliLiveContent;

    .line 1213
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;->title:Landroid/widget/TextView;

    iget-object v2, v0, Lmybl/BiliLiveContent;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1214
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;->up:Landroid/widget/TextView;

    iget-object v2, v0, Lmybl/BiliLiveContent;->mUname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1215
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

    .line 1217
    iget-object v1, v0, Lmybl/BiliLiveContent;->mCover:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 1218
    iget-object v1, v0, Lmybl/BiliLiveContent;->mCover:Ljava/lang/String;

    .line 1219
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_59

    .line 1220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1222
    :cond_59
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v2

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v3

    invoke-static {v3, v1}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;->img:Lcom/bilibili/tv/widget/ScalableImageView;

    invoke-virtual {v2, v1, v3}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 1225
    :cond_6a
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;->root:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 1226
    iget-object v0, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;->root:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    const v1, 0x7f0800d8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 1227
    iget-object v0, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;->root:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1228
    return-void
.end method

.method private bindUserHolder(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;I)V
    .locals 4

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->users:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/search/BiliSearchResultUper;

    .line 1193
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;->title:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->uname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1194
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

    .line 1195
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

    .line 1197
    iget-object v1, v0, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->upic:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7d

    .line 1198
    iget-object v1, v0, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->upic:Ljava/lang/String;

    .line 1199
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6c

    .line 1200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1202
    :cond_6c
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v2

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v3

    invoke-static {v3, v1}, Lbl/abd;->get_thumb_url_b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;->img:Lcom/bilibili/tv/widget/ScalableImageView;

    invoke-virtual {v2, v1, v3}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 1205
    :cond_7d
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;->root:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 1206
    iget-object v0, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;->root:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    const v1, 0x7f0800d8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 1207
    iget-object v0, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;->root:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1208
    return-void
.end method

.method private bindVideoHolder(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;I)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1122
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->videos:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;

    .line 1124
    iget-object v1, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->cover:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 1125
    iget-object v1, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->cover:Ljava/lang/String;

    .line 1126
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 1127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1129
    :cond_30
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v2

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v3

    invoke-static {v3, v1}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->img:Lcom/bilibili/tv/widget/ScalableImageView;

    invoke-virtual {v2, v1, v3}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 1132
    :cond_41
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->title:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1133
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->up:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->author:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1134
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->play:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->play:Ljava/lang/String;

    invoke-static {v2}, Lbl/adh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1135
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->danmaku:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->danmaku:Ljava/lang/String;

    invoke-static {v2}, Lbl/adh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1136
    iget-object v1, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->pubdate:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a4

    .line 1137
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->pubdate:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->pubdate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1138
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->pubdate:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1142
    :goto_79
    iget-object v1, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->duration:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_aa

    .line 1143
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->duration:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->duration:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1144
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->duration:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1149
    :goto_8d
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->root:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 1150
    iget-object v0, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->root:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    const v1, 0x7f0800d8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 1151
    iget-object v0, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->root:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1152
    return-void

    .line 1140
    :cond_a4
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->pubdate:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_79

    .line 1146
    :cond_aa
    iget-object v1, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->duration:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8d
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1232
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->itemType:I

    packed-switch v0, :pswitch_data_24

    .line 1237
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 1233
    :pswitch_7
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_6

    .line 1234
    :pswitch_e
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->bangumis:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_6

    .line 1235
    :pswitch_15
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->users:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_6

    .line 1236
    :pswitch_1c
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->liveRooms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_6

    .line 1232
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
    .line 1078
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1079
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->itemType:I

    packed-switch v0, :pswitch_data_24

    .line 1089
    invoke-static {p1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->create(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;

    move-result-object v0

    :goto_e
    return-object v0

    .line 1081
    :pswitch_f
    invoke-static {p1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->create(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;

    move-result-object v0

    goto :goto_e

    .line 1083
    :pswitch_14
    invoke-static {p1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;->create(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;

    move-result-object v0

    goto :goto_e

    .line 1085
    :pswitch_19
    invoke-static {p1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;->create(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;

    move-result-object v0

    goto :goto_e

    .line 1087
    :pswitch_1e
    invoke-static {p1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;->create(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;

    move-result-object v0

    goto :goto_e

    .line 1079
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
    .line 1095
    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1097
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->itemType:I

    packed-switch v0, :pswitch_data_34

    .line 1119
    :cond_a
    :goto_a
    return-void

    .line 1099
    :pswitch_b
    instance-of v0, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;

    if-eqz v0, :cond_a

    .line 1100
    check-cast p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;

    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->bindVideoHolder(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;I)V

    goto :goto_a

    .line 1104
    :pswitch_15
    instance-of v0, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;

    if-eqz v0, :cond_a

    .line 1105
    check-cast p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;

    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->bindBangumiHolder(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;I)V

    goto :goto_a

    .line 1109
    :pswitch_1f
    instance-of v0, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;

    if-eqz v0, :cond_a

    .line 1110
    check-cast p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;

    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->bindUserHolder(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;I)V

    goto :goto_a

    .line 1114
    :pswitch_29
    instance-of v0, p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;

    if-eqz v0, :cond_a

    .line 1115
    check-cast p1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;

    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->bindLiveRoomHolder(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;I)V

    goto :goto_a

    .line 1097
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
    .line 1037
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->bangumis:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1038
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->bangumis:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1039
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->d(I)V

    .line 1040
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
    .line 1063
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->liveRooms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1064
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->liveRooms:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1065
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->d(I)V

    .line 1066
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
    .line 1050
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->users:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1051
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->users:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1052
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->d(I)V

    .line 1053
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
    .line 1024
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1025
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->videos:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1026
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->d(I)V

    .line 1027
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1070
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->bangumis:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1071
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->users:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1072
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->liveRooms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1073
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->d()V

    .line 1074
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 1243
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 1244
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1245
    invoke-static {v1}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    .line 1246
    if-nez v2, :cond_f

    .line 1275
    :cond_e
    :goto_e
    return-void

    .line 1248
    :cond_f
    instance-of v1, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;

    if-eqz v1, :cond_4a

    .line 1249
    check-cast v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;

    .line 1251
    :try_start_15
    iget-object v1, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->param:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1252
    iget-object v0, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->cover:Ljava/lang/String;

    .line 1253
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3e

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 1254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1256
    :cond_3e
    sget-object v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    invoke-virtual {v1, v2, v4, v5, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_47
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_47} :catch_48

    goto :goto_e

    .line 1257
    :catch_48
    move-exception v0

    goto :goto_e

    .line 1258
    :cond_4a
    instance-of v1, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;

    if-eqz v1, :cond_7f

    .line 1259
    check-cast v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;

    .line 1260
    iget-object v1, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->cover:Ljava/lang/String;

    .line 1261
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_73

    const-string v3, "http"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_73

    .line 1262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1264
    :cond_73
    sget-object v3, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    iget-object v0, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->param:Ljava/lang/String;

    invoke-virtual {v3, v2, v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_e

    .line 1265
    :cond_7f
    instance-of v1, v0, Lcom/bilibili/tv/api/search/BiliSearchResultUper;

    if-eqz v1, :cond_8d

    .line 1266
    check-cast v0, Lcom/bilibili/tv/api/search/BiliSearchResultUper;

    .line 1267
    iget-wide v4, v0, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->mid:J

    iget-object v0, v0, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->uname:Ljava/lang/String;

    invoke-static {v2, v4, v5, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->start(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_e

    .line 1268
    :cond_8d
    instance-of v1, v0, Lmybl/BiliLiveContent;

    if-eqz v1, :cond_e

    .line 1269
    check-cast v0, Lmybl/BiliLiveContent;

    .line 1270
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->lives:Ljava/util/List;

    .line 1271
    sget-object v1, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->lives:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1272
    const/4 v1, 0x0

    sput v1, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->live_index:I

    .line 1273
    invoke-static {v2, v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a(Landroid/content/Context;Lmybl/BiliLiveContent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_e
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
    .line 1030
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->bangumis:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1031
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->bangumis:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1032
    const/4 v0, 0x1

    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->itemType:I

    .line 1033
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->d()V

    .line 1034
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
    .line 1056
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->liveRooms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1057
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->liveRooms:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1058
    const/4 v0, 0x3

    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->itemType:I

    .line 1059
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->d()V

    .line 1060
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
    .line 1043
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->users:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1044
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->users:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1045
    const/4 v0, 0x2

    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->itemType:I

    .line 1046
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->d()V

    .line 1047
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
    .line 1017
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1018
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->videos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1019
    const/4 v0, 0x0

    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->itemType:I

    .line 1020
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->d()V

    .line 1021
    return-void
.end method
