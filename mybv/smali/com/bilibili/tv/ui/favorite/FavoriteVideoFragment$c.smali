.class final Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "FavoriteVideoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lbl/adv;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/video/BiliVideoDetail;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/alibaba/fastjson/JSONArray;

.field private cheeseInfo:Lcom/alibaba/fastjson/JSONObject;

.field private folderTitle:Ljava/lang/String;

.field private isCourseMode:Z

.field private isFavoriteVideoMode:Z


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 610
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 611
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->a:Ljava/util/List;

    .line 612
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    .line 613
    iput-object v2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->cheeseInfo:Lcom/alibaba/fastjson/JSONObject;

    .line 614
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isCourseMode:Z

    .line 615
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isFavoriteVideoMode:Z

    .line 616
    iput-object v2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->folderTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 704
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isCourseMode:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isFavoriteVideoMode:Z

    if-eqz v0, :cond_f

    :cond_8
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_e
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 610
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->a(Landroid/view/ViewGroup;I)Lbl/adv;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lbl/adv;
    .locals 1

    .prologue
    .line 621
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 622
    const/4 v0, 0x0

    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    sget-object v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->Companion:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d$a;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d$a;->a(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    .prologue
    .line 610
    check-cast p1, Lbl/adv;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->a(Lbl/adv;I)V

    return-void
.end method

.method public a(Lbl/adv;I)V
    .locals 11

    .prologue
    const/16 v10, 0xe10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 627
    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 628
    instance-of v0, p1, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    if-eqz v0, :cond_104

    .line 629
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isFavoriteVideoMode:Z

    if-eqz v0, :cond_141

    .line 630
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 631
    const-string v0, "cover"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 632
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v1

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    const-string v3, "cover"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->z()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 634
    :cond_3d
    const-string v0, "title"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    move-object v0, p1

    .line 635
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->A()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 637
    :cond_55
    const-string v0, "upper"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 638
    const/4 v0, 0x0

    .line 639
    if-eqz v1, :cond_105

    const-string v3, "name"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_105

    const-string v3, "name"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_105

    .line 640
    const-string v0, "name"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 647
    :goto_79
    if-eqz v1, :cond_85

    move-object v0, p1

    .line 648
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->B()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    :cond_85
    const-string v0, "cnt_info"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 651
    if-eqz v1, :cond_b5

    move-object v0, p1

    .line 652
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->C()Landroid/widget/TextView;

    move-result-object v0

    const-string v3, "play"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lbl/adh;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, p1

    .line 653
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->D()Landroid/widget/TextView;

    move-result-object v0

    const-string v3, "danmaku"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lbl/adh;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 655
    :cond_b5
    const-string v0, "duration"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    .line 656
    if-lt v1, v10, :cond_11e

    move-object v0, p1

    .line 657
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->E()Landroid/widget/TextView;

    move-result-object v0

    const-string v3, "%d:%02d:%02d"

    new-array v4, v9, [Ljava/lang/Object;

    div-int/lit16 v5, v1, 0xe10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    rem-int/lit16 v5, v1, 0xe10

    div-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    rem-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 661
    :goto_e9
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    .line 662
    const-string v1, "viewHolder.itemView"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 663
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 697
    :goto_f3
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    const v1, 0x7f0800d8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 698
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 700
    :cond_104
    return-void

    .line 642
    :cond_105
    const-string v1, "ogv"

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 643
    if-eqz v1, :cond_272

    const-string v3, "type_name"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_272

    .line 644
    const-string v0, "type_name"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_79

    :cond_11e
    move-object v0, p1

    .line 659
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->E()Landroid/widget/TextView;

    move-result-object v0

    const-string v3, "%02d:%02d"

    new-array v4, v8, [Ljava/lang/Object;

    div-int/lit8 v5, v1, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    rem-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e9

    .line 664
    :cond_141
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isCourseMode:Z

    if-eqz v0, :cond_1b7

    .line 665
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 666
    const-string v0, "cover"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16f

    .line 667
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v2

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    const-string v3, "cover"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->z()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 669
    :cond_16f
    const-string v0, "title"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_187

    move-object v0, p1

    .line 670
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->A()Landroid/widget/TextView;

    move-result-object v0

    const-string v2, "title"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_187
    move-object v0, p1

    .line 672
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->B()Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0c014d

    invoke-static {v3}, Lbl/adl;->e(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u8bfe\u7a0b"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 673
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    .line 674
    const-string v2, "viewHolder.itemView"

    invoke-static {v0, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 675
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_f3

    .line 677
    :cond_1b7
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 678
    iget-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    if-eqz v1, :cond_1db

    .line 679
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v2

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v1

    iget-object v3, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-static {v1, v3}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    check-cast v1, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->z()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 681
    :cond_1db
    iget-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_1eb

    move-object v1, p1

    .line 682
    check-cast v1, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->A()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 684
    :cond_1eb
    iget-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTypeName:Ljava/lang/String;

    if-eqz v1, :cond_213

    move-object v1, p1

    .line 685
    check-cast v1, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->B()Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0c014d

    invoke-static {v3}, Lbl/adl;->e(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTypeName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 687
    :cond_213
    iget v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    .line 688
    if-lt v2, v10, :cond_24f

    move-object v1, p1

    .line 689
    check-cast v1, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->E()Landroid/widget/TextView;

    move-result-object v1

    const-string v3, "%d:%02d:%02d"

    new-array v4, v9, [Ljava/lang/Object;

    div-int/lit16 v5, v2, 0xe10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    rem-int/lit16 v5, v2, 0xe10

    div-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    rem-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 693
    :goto_243
    iget-object v1, p1, Lbl/adv;->a:Landroid/view/View;

    .line 694
    const-string v2, "viewHolder.itemView"

    invoke-static {v1, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 695
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_f3

    :cond_24f
    move-object v1, p1

    .line 691
    check-cast v1, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->E()Landroid/widget/TextView;

    move-result-object v1

    const-string v3, "%02d:%02d"

    new-array v4, v8, [Ljava/lang/Object;

    div-int/lit8 v5, v2, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    rem-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_243

    :cond_272
    move-object v1, v0

    goto/16 :goto_79
.end method

.method public final a(Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1

    .prologue
    .line 725
    const-string v0, "list"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 726
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isCourseMode:Z

    .line 727
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isFavoriteVideoMode:Z

    .line 728
    iput-object p2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->cheeseInfo:Lcom/alibaba/fastjson/JSONObject;

    .line 729
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONArray;->addAll(Ljava/util/Collection;)Z

    .line 730
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->d()V

    .line 731
    return-void
.end method

.method public final a(Lcom/alibaba/fastjson/JSONArray;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 743
    const-string v0, "list"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 744
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isCourseMode:Z

    .line 745
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isFavoriteVideoMode:Z

    .line 746
    iput-object p2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->folderTitle:Ljava/lang/String;

    .line 747
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->clear()V

    .line 748
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONArray;->addAll(Ljava/util/Collection;)Z

    .line 749
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->d()V

    .line 750
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/video/BiliVideoDetail;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 708
    const-string v0, "list"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 709
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isCourseMode:Z

    .line 710
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isFavoriteVideoMode:Z

    .line 711
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 712
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->d()V

    .line 713
    return-void
.end method

.method public final b(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 2

    .prologue
    .line 734
    const-string v0, "list"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 735
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isCourseMode:Z

    .line 736
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isFavoriteVideoMode:Z

    .line 737
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    .line 738
    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/JSONArray;->addAll(Ljava/util/Collection;)Z

    .line 739
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->d(I)V

    .line 740
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/video/BiliVideoDetail;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 716
    const-string v0, "list"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 717
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isCourseMode:Z

    .line 718
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isFavoriteVideoMode:Z

    .line 719
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 720
    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 721
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->d(I)V

    .line 722
    return-void
.end method

.method public final c(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 2

    .prologue
    .line 753
    const-string v0, "list"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 754
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isCourseMode:Z

    .line 755
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isFavoriteVideoMode:Z

    .line 756
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    .line 757
    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/JSONArray;->addAll(Ljava/util/Collection;)Z

    .line 758
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->d(I)V

    .line 759
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    const v8, 0x7f0800d8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 763
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 764
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 765
    const-string v0, "v.context"

    invoke-static {v1, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 766
    invoke-static {v1}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v4

    .line 767
    if-eqz v4, :cond_5a

    .line 768
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 769
    instance-of v5, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v5, :cond_5b

    .line 770
    sget-object v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-wide v6, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    .line 771
    invoke-virtual {v1, v4, v6, v7}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 770
    invoke-virtual {v4, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 793
    :cond_2e
    :goto_2e
    invoke-virtual {p1, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 794
    const-string v1, "tv_myfavourite_video_click"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "row"

    aput-object v0, v4, v3

    .line 796
    invoke-virtual {p1, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v0, v6

    add-int/lit8 v0, v0, 0x1

    .line 795
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .line 794
    invoke-static {v1, v4}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 800
    :cond_5a
    return-void

    .line 772
    :cond_5b
    instance-of v5, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v5, :cond_2e

    .line 773
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 774
    iget-boolean v5, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isFavoriteVideoMode:Z

    if-eqz v5, :cond_a0

    .line 775
    const-string v1, "ogv"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 777
    if-eqz v5, :cond_ad

    .line 778
    const-string v1, "type_id"

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    .line 779
    if-lt v1, v2, :cond_78

    const/4 v6, 0x5

    if-le v1, v6, :cond_7b

    :cond_78
    const/4 v6, 0x7

    if-ne v1, v6, :cond_8e

    :cond_7b
    move v1, v2

    .line 781
    :goto_7c
    if-eqz v1, :cond_90

    .line 782
    const-string v0, "season_id"

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 783
    sget-object v1, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->Companion:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$a;

    invoke-virtual {v1, v4, v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2e

    :cond_8e
    move v1, v3

    .line 779
    goto :goto_7c

    .line 785
    :cond_90
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v0

    .line 786
    sget-object v5, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    invoke-virtual {v5, v4, v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2e

    .line 789
    :cond_a0
    iget-object v4, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->cheeseInfo:Lcom/alibaba/fastjson/JSONObject;

    invoke-static {v1, v4, v0}, Lbl/xg;->playCheese2(Landroid/content/Context;Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONObject;)V

    .line 790
    const-string v0, "tv_myfavourite_fold_video_click"

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {v0, v1}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2e

    :cond_ad
    move v1, v3

    goto :goto_7c
.end method
