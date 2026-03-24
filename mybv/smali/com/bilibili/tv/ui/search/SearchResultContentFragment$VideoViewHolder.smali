.class Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoViewHolder;
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
    name = "VideoViewHolder"
.end annotation


# instance fields
.field private danmakuView:Landroid/widget/TextView;

.field private durationView:Landroid/widget/TextView;

.field private imgView:Lcom/bilibili/tv/widget/ScalableImageView;

.field private itemViewRef:Landroid/view/View;

.field private playView:Landroid/widget/TextView;

.field private pubdateView:Landroid/widget/TextView;

.field private titleView:Landroid/widget/TextView;

.field private upView:Landroid/widget/TextView;

.field private video:Lcom/bilibili/tv/api/search/BiliSearchResultNew$Video;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 827
    invoke-direct {p0, p1}, Lbl/adv;-><init>(Landroid/view/View;)V

    .line 828
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoViewHolder;->itemViewRef:Landroid/view/View;

    .line 829
    const v0, 0x7f0800a1

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoViewHolder;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ScalableImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoViewHolder;->imgView:Lcom/bilibili/tv/widget/ScalableImageView;

    .line 830
    const v0, 0x7f080132

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoViewHolder;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoViewHolder;->titleView:Landroid/widget/TextView;

    .line 831
    const v0, 0x7f08013f

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoViewHolder;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoViewHolder;->upView:Landroid/widget/TextView;

    .line 832
    const v0, 0x7f0800d4

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoViewHolder;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoViewHolder;->playView:Landroid/widget/TextView;

    .line 833
    const v0, 0x7f08006c

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoViewHolder;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoViewHolder;->danmakuView:Landroid/widget/TextView;

    .line 834
    const v0, 0x7f0801a1

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoViewHolder;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoViewHolder;->durationView:Landroid/widget/TextView;

    .line 835
    const v0, 0x7f0801aa

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoViewHolder;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoViewHolder;->pubdateView:Landroid/widget/TextView;

    move-object v0, p1

    .line 837
    check-cast v0, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    const v1, 0x7f0700e8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setUpDrawable(I)V

    .line 839
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    const v1, 0x7f0700b2

    invoke-virtual {v0, v1}, Lbl/adl;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 840
    sget-object v1, Lbl/adl;->a:Lbl/adl;

    const v2, 0x7f0700b1

    invoke-virtual {v1, v2}, Lbl/adl;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 841
    sget-object v2, Lbl/adl;->a:Lbl/adl;

    const v3, 0x7f0700b0

    invoke-virtual {v2, v3}, Lbl/adl;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 842
    const v3, 0x7f060179

    invoke-static {v3}, Lbl/adl;->b(I)I

    move-result v3

    .line 843
    invoke-virtual {v0, v4, v4, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 844
    invoke-virtual {v1, v4, v4, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 845
    invoke-virtual {v2, v4, v4, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 846
    const v3, 0x7f0500a7

    invoke-static {v3}, Lbl/adl;->d(I)I

    move-result v3

    .line 847
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 848
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 849
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 850
    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoViewHolder;->upView:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 851
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoViewHolder;->playView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 852
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoViewHolder;->danmakuView:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 854
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 855
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 856
    return-void
.end method


# virtual methods
.method public bind(Lcom/bilibili/tv/api/search/BiliSearchResultNew$Video;)V
    .locals 3

    .prologue
    .line 859
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoViewHolder;->video:Lcom/bilibili/tv/api/search/BiliSearchResultNew$Video;

    .line 860
    iget-object v0, p1, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Video;->title:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 861
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoViewHolder;->titleView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Video;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 863
    :cond_d
    iget-object v0, p1, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Video;->author:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 864
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoViewHolder;->upView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Video;->author:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 866
    :cond_18
    iget-object v0, p1, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Video;->play:Ljava/lang/String;

    if-eqz v0, :cond_27

    .line 867
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoViewHolder;->playView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Video;->play:Ljava/lang/String;

    invoke-static {v1}, Lbl/adh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 869
    :cond_27
    iget-object v0, p1, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Video;->danmaku:Ljava/lang/String;

    if-eqz v0, :cond_36

    .line 870
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoViewHolder;->danmakuView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Video;->danmaku:Ljava/lang/String;

    invoke-static {v1}, Lbl/adh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 872
    :cond_36
    iget-object v0, p1, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Video;->duration:Ljava/lang/String;

    if-eqz v0, :cond_41

    .line 873
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoViewHolder;->durationView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Video;->duration:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 875
    :cond_41
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoViewHolder;->pubdateView:Landroid/widget/TextView;

    if-eqz v0, :cond_8e

    iget-object v0, p1, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Video;->pubdateFormatted:Ljava/lang/String;

    if-eqz v0, :cond_8e

    .line 876
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoViewHolder;->pubdateView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Video;->pubdateFormatted:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 877
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoViewHolder;->pubdateView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 881
    :cond_56
    :goto_56
    iget-object v0, p1, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Video;->cover:Ljava/lang/String;

    if-eqz v0, :cond_88

    .line 882
    iget-object v0, p1, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Video;->cover:Ljava/lang/String;

    .line 883
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_77

    .line 884
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 886
    :cond_77
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v1

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v2

    invoke-static {v2, v0}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoViewHolder;->imgView:Lcom/bilibili/tv/widget/ScalableImageView;

    invoke-virtual {v1, v0, v2}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 888
    :cond_88
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoViewHolder;->itemViewRef:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 889
    return-void

    .line 878
    :cond_8e
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoViewHolder;->pubdateView:Landroid/widget/TextView;

    if-eqz v0, :cond_56

    .line 879
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoViewHolder;->pubdateView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_56
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 893
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoViewHolder;->video:Lcom/bilibili/tv/api/search/BiliSearchResultNew$Video;

    if-nez v0, :cond_5

    .line 896
    :goto_4
    return-void

    .line 894
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 895
    sget-object v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoViewHolder;->video:Lcom/bilibili/tv/api/search/BiliSearchResultNew$Video;

    iget-object v2, v2, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Video;->param:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_4
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 900
    instance-of v0, p1, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    if-eqz v0, :cond_9

    .line 901
    check-cast p1, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {p1, p2}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setUpEnabled(Z)V

    .line 903
    :cond_9
    return-void
.end method
