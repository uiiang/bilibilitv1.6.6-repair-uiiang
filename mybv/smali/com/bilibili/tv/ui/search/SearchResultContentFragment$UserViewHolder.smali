.class Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserViewHolder;
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
    name = "UserViewHolder"
.end annotation


# instance fields
.field private imgView:Lcom/bilibili/tv/widget/ScalableImageView;

.field private itemViewRef:Landroid/view/View;

.field private nameView:Landroid/widget/TextView;

.field private signView:Landroid/widget/TextView;

.field private user:Lcom/bilibili/tv/api/search/BiliSearchResultUper;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1040
    invoke-direct {p0, p1}, Lbl/adv;-><init>(Landroid/view/View;)V

    .line 1041
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserViewHolder;->itemViewRef:Landroid/view/View;

    .line 1042
    const v0, 0x7f0800a1

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserViewHolder;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ScalableImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserViewHolder;->imgView:Lcom/bilibili/tv/widget/ScalableImageView;

    .line 1043
    const v0, 0x7f080132

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserViewHolder;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserViewHolder;->nameView:Landroid/widget/TextView;

    .line 1044
    const v0, 0x7f080071

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserViewHolder;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserViewHolder;->signView:Landroid/widget/TextView;

    move-object v0, p1

    .line 1046
    check-cast v0, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    const v1, 0x7f0700e8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setUpDrawable(I)V

    .line 1048
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1049
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1050
    return-void
.end method


# virtual methods
.method public bind(Lcom/bilibili/tv/api/search/BiliSearchResultUper;)V
    .locals 3

    .prologue
    .line 1053
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserViewHolder;->user:Lcom/bilibili/tv/api/search/BiliSearchResultUper;

    .line 1054
    iget-object v0, p1, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->uname:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 1055
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserViewHolder;->nameView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->uname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1057
    :cond_d
    iget-object v0, p1, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->usign:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 1058
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserViewHolder;->signView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->usign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1060
    :cond_18
    iget-object v0, p1, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->upic:Ljava/lang/String;

    if-eqz v0, :cond_4a

    .line 1061
    iget-object v0, p1, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->upic:Ljava/lang/String;

    .line 1062
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 1063
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1065
    :cond_39
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v1

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v2

    invoke-static {v2, v0}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserViewHolder;->imgView:Lcom/bilibili/tv/widget/ScalableImageView;

    invoke-virtual {v1, v0, v2}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 1067
    :cond_4a
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserViewHolder;->itemViewRef:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1068
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserViewHolder;->user:Lcom/bilibili/tv/api/search/BiliSearchResultUper;

    if-nez v0, :cond_5

    .line 1075
    :goto_4
    return-void

    .line 1073
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1074
    sget-object v1, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->Companion:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a;

    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserViewHolder;->user:Lcom/bilibili/tv/api/search/BiliSearchResultUper;

    iget-object v2, v2, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->uname:Ljava/lang/String;

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserViewHolder;->user:Lcom/bilibili/tv/api/search/BiliSearchResultUper;

    iget-wide v4, v3, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->mid:J

    invoke-virtual {v1, v0, v2, v4, v5}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a;->a(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_4
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 1079
    instance-of v0, p1, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    if-eqz v0, :cond_9

    .line 1080
    check-cast p1, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {p1, p2}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setUpEnabled(Z)V

    .line 1082
    :cond_9
    return-void
.end method
