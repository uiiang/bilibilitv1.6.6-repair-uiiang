.class Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveViewHolder;
.super Lbl/adv;
.source "SearchResultContentFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/search/SearchResultContentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LiveViewHolder"
.end annotation


# instance fields
.field private imgView:Lcom/bilibili/tv/widget/ScalableImageView;

.field private itemViewRef:Landroid/view/View;

.field private live:Lmybl/BiliLiveContent;

.field private playView:Landroid/widget/TextView;

.field private titleView:Landroid/widget/TextView;

.field private upView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1128
    invoke-direct {p0, p1}, Lbl/adv;-><init>(Landroid/view/View;)V

    .line 1129
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveViewHolder;->itemViewRef:Landroid/view/View;

    .line 1130
    const v0, 0x7f0800a1

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveViewHolder;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ScalableImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveViewHolder;->imgView:Lcom/bilibili/tv/widget/ScalableImageView;

    .line 1131
    const v0, 0x7f080132

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveViewHolder;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveViewHolder;->titleView:Landroid/widget/TextView;

    .line 1132
    const v0, 0x7f08013f

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveViewHolder;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveViewHolder;->upView:Landroid/widget/TextView;

    .line 1133
    const v0, 0x7f0800d4

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveViewHolder;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveViewHolder;->playView:Landroid/widget/TextView;

    move-object v0, p1

    .line 1135
    check-cast v0, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    const v1, 0x7f0700e8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setUpDrawable(I)V

    .line 1137
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    const v1, 0x7f0700b2

    invoke-virtual {v0, v1}, Lbl/adl;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1138
    sget-object v1, Lbl/adl;->a:Lbl/adl;

    const v2, 0x7f0700b1

    invoke-virtual {v1, v2}, Lbl/adl;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1139
    const v2, 0x7f060179

    invoke-static {v2}, Lbl/adl;->b(I)I

    move-result v2

    .line 1140
    invoke-virtual {v0, v3, v3, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1141
    invoke-virtual {v1, v3, v3, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1142
    const v2, 0x7f0500a7

    invoke-static {v2}, Lbl/adl;->d(I)I

    move-result v2

    .line 1143
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1144
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1145
    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveViewHolder;->upView:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1146
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveViewHolder;->playView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1148
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1149
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1150
    return-void
.end method


# virtual methods
.method public bind(Lmybl/BiliLiveContent;)V
    .locals 4

    .prologue
    .line 1153
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveViewHolder;->live:Lmybl/BiliLiveContent;

    .line 1154
    iget-object v0, p1, Lmybl/BiliLiveContent;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 1155
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveViewHolder;->titleView:Landroid/widget/TextView;

    iget-object v1, p1, Lmybl/BiliLiveContent;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1157
    :cond_d
    iget-object v0, p1, Lmybl/BiliLiveContent;->mUname:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 1158
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveViewHolder;->upView:Landroid/widget/TextView;

    iget-object v1, p1, Lmybl/BiliLiveContent;->mUname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1160
    :cond_18
    iget-wide v0, p1, Lmybl/BiliLiveContent;->mOnline:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2b

    .line 1161
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveViewHolder;->playView:Landroid/widget/TextView;

    iget-wide v2, p1, Lmybl/BiliLiveContent;->mOnline:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1163
    :cond_2b
    iget-object v0, p1, Lmybl/BiliLiveContent;->mCover:Ljava/lang/String;

    if-eqz v0, :cond_5d

    .line 1164
    iget-object v0, p1, Lmybl/BiliLiveContent;->mCover:Ljava/lang/String;

    .line 1165
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 1166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1168
    :cond_4c
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v1

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v2

    invoke-static {v2, v0}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveViewHolder;->imgView:Lcom/bilibili/tv/widget/ScalableImageView;

    invoke-virtual {v1, v0, v2}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 1170
    :cond_5d
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveViewHolder;->itemViewRef:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1171
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveViewHolder;->live:Lmybl/BiliLiveContent;

    if-nez v0, :cond_5

    .line 1180
    :goto_4
    return-void

    .line 1176
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1177
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->lives:Ljava/util/List;

    .line 1178
    sget-object v1, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->lives:Ljava/util/List;

    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveViewHolder;->live:Lmybl/BiliLiveContent;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1179
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveViewHolder;->live:Lmybl/BiliLiveContent;

    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a(Landroid/content/Context;Lmybl/BiliLiveContent;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_4
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 1184
    instance-of v0, p1, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    if-eqz v0, :cond_9

    .line 1185
    check-cast p1, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {p1, p2}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setUpEnabled(Z)V

    .line 1187
    :cond_9
    return-void
.end method
