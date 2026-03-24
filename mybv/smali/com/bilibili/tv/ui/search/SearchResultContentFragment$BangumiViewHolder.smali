.class Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiViewHolder;
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
    name = "BangumiViewHolder"
.end annotation


# instance fields
.field private bangumi:Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;

.field private imgView:Lcom/bilibili/tv/widget/ScalableImageView;

.field private indexView:Landroid/widget/TextView;

.field private itemViewRef:Landroid/view/View;

.field private titleView:Landroid/widget/TextView;

.field private typeView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 949
    invoke-direct {p0, p1}, Lbl/adv;-><init>(Landroid/view/View;)V

    .line 950
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiViewHolder;->itemViewRef:Landroid/view/View;

    .line 951
    const v0, 0x7f0800a1

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiViewHolder;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ScalableImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiViewHolder;->imgView:Lcom/bilibili/tv/widget/ScalableImageView;

    .line 952
    const v0, 0x7f080132

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiViewHolder;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiViewHolder;->titleView:Landroid/widget/TextView;

    .line 953
    const v0, 0x7f08007b

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiViewHolder;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiViewHolder;->indexView:Landroid/widget/TextView;

    .line 954
    const v0, 0x7f08013d

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiViewHolder;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiViewHolder;->typeView:Landroid/widget/TextView;

    move-object v0, p1

    .line 956
    check-cast v0, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    const v1, 0x7f0700e8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setUpDrawable(I)V

    .line 958
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 959
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 960
    return-void
.end method


# virtual methods
.method public bind(Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;)V
    .locals 3

    .prologue
    .line 963
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiViewHolder;->bangumi:Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;

    .line 964
    iget-object v0, p1, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;->title:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 965
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiViewHolder;->titleView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 967
    :cond_d
    iget-object v0, p1, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;->indexShow:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 968
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiViewHolder;->indexView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;->indexShow:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 970
    :cond_18
    iget-object v0, p1, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;->seasonTypeName:Ljava/lang/String;

    if-eqz v0, :cond_23

    .line 971
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiViewHolder;->typeView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;->seasonTypeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 973
    :cond_23
    iget-object v0, p1, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;->cover:Ljava/lang/String;

    if-eqz v0, :cond_55

    .line 974
    iget-object v0, p1, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;->cover:Ljava/lang/String;

    .line 975
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 976
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 978
    :cond_44
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v1

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v2

    invoke-static {v2, v0}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiViewHolder;->imgView:Lcom/bilibili/tv/widget/ScalableImageView;

    invoke-virtual {v1, v0, v2}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 980
    :cond_55
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiViewHolder;->itemViewRef:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 981
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 985
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiViewHolder;->bangumi:Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;

    if-nez v0, :cond_5

    .line 988
    :goto_4
    return-void

    .line 986
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 987
    sget-object v1, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->Companion:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$a;

    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiViewHolder;->bangumi:Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;

    iget-object v2, v2, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;->param:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_4
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 992
    instance-of v0, p1, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    if-eqz v0, :cond_9

    .line 993
    check-cast p1, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {p1, p2}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setUpEnabled(Z)V

    .line 995
    :cond_9
    return-void
.end method
