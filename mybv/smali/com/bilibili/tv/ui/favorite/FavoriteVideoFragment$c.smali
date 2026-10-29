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

    .line 607
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 608
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->a:Ljava/util/List;

    .line 609
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    .line 610
    iput-object v2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->cheeseInfo:Lcom/alibaba/fastjson/JSONObject;

    .line 611
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isCourseMode:Z

    .line 612
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isFavoriteVideoMode:Z

    .line 613
    iput-object v2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->folderTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 698
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
    .line 607
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->a(Landroid/view/ViewGroup;I)Lbl/adv;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lbl/adv;
    .locals 1

    .prologue
    .line 618
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 619
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
    .line 607
    check-cast p1, Lbl/adv;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->a(Lbl/adv;I)V

    return-void
.end method

.method public a(Lbl/adv;I)V
    .locals 8

    .prologue
    const v3, 0x7f0c014d

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 624
    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 625
    instance-of v0, p1, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    if-eqz v0, :cond_f0

    .line 626
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isFavoriteVideoMode:Z

    if-eqz v0, :cond_10a

    .line 627
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 628
    const-string v0, "cover"

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    move-object v0, p1

    .line 629
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->z()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v0

    const-string v1, "cover"

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoCardCoverLoader;->load(Landroid/content/Context;Lcom/bilibili/tv/widget/ScalableImageView;Ljava/lang/String;)V

    .line 631
    :cond_31
    const-string v0, "title"

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    move-object v0, p1

    .line 632
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->A()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    :cond_49
    const-string v0, "upper"

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 636
    if-eqz v0, :cond_f1

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f1

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f1

    .line 637
    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 644
    :goto_6c
    if-eqz v1, :cond_78

    move-object v0, p1

    .line 645
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->B()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    :cond_78
    const-string v0, "cnt_info"

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 648
    if-eqz v1, :cond_a8

    move-object v0, p1

    .line 649
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->C()Landroid/widget/TextView;

    move-result-object v0

    const-string v2, "play"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lbl/adh;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, p1

    .line 650
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->danmakuInImage:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->access$900(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;)Landroid/widget/TextView;

    move-result-object v0

    const-string v2, "danmaku"

    .line 651
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 650
    invoke-static {v0, v1, v7}, Lcom/bilibili/tv/ui/video/widget/VideoCardTexts;->bindDanmaku(Landroid/widget/TextView;Ljava/lang/String;Z)V

    .line 654
    :cond_a8
    const-string v0, "pubtime"

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v0

    .line 655
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1d6

    .line 656
    const-string v0, "fav_time"

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v0

    move-wide v2, v0

    :goto_bb
    move-object v0, p1

    .line 658
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->D()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, v2, v3, v4, v7}, Lcom/bilibili/tv/ui/video/widget/VideoCardTexts;->bindPubDate(Landroid/widget/TextView;JLjava/lang/String;Z)V

    move-object v0, p1

    .line 659
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->E()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "duration"

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v6}, Lcom/bilibili/tv/ui/video/widget/VideoCardTexts;->bindDuration(Landroid/widget/TextView;IZ)V

    .line 660
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    .line 661
    const-string v1, "viewHolder.itemView"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 662
    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 691
    :goto_df
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    const v1, 0x7f0800d8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 692
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 694
    :cond_f0
    return-void

    .line 639
    :cond_f1
    const-string v0, "ogv"

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 640
    if-eqz v0, :cond_1d9

    const-string v1, "type_name"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d9

    .line 641
    const-string v1, "type_name"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_6c

    .line 663
    :cond_10a
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isCourseMode:Z

    if-eqz v0, :cond_171

    .line 664
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 665
    const-string v0, "cover"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12c

    move-object v0, p1

    .line 666
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->z()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v0

    const-string v2, "cover"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/bilibili/tv/ui/video/widget/VideoCardCoverLoader;->load(Landroid/content/Context;Lcom/bilibili/tv/widget/ScalableImageView;Ljava/lang/String;)V

    .line 668
    :cond_12c
    const-string v0, "title"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_144

    move-object v0, p1

    .line 669
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->A()Landroid/widget/TextView;

    move-result-object v0

    const-string v2, "title"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_144
    move-object v0, p1

    .line 671
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->B()Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

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

    .line 672
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    .line 673
    const-string v2, "viewHolder.itemView"

    invoke-static {v0, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 674
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_df

    .line 676
    :cond_171
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 677
    iget-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    if-eqz v1, :cond_189

    move-object v1, p1

    .line 678
    check-cast v1, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->z()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v1

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-static {v4, v1, v2}, Lcom/bilibili/tv/ui/video/widget/VideoCardCoverLoader;->load(Landroid/content/Context;Lcom/bilibili/tv/widget/ScalableImageView;Ljava/lang/String;)V

    .line 680
    :cond_189
    iget-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_199

    move-object v1, p1

    .line 681
    check-cast v1, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->A()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 683
    :cond_199
    iget-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTypeName:Ljava/lang/String;

    if-eqz v1, :cond_1be

    move-object v1, p1

    .line 684
    check-cast v1, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->B()Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

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

    :cond_1be
    move-object v1, p1

    .line 686
    check-cast v1, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->E()Landroid/widget/TextView;

    move-result-object v1

    iget v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    invoke-static {v1, v2, v6}, Lcom/bilibili/tv/ui/video/widget/VideoCardTexts;->bindDuration(Landroid/widget/TextView;IZ)V

    .line 687
    iget-object v1, p1, Lbl/adv;->a:Landroid/view/View;

    .line 688
    const-string v2, "viewHolder.itemView"

    invoke-static {v1, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 689
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_df

    :cond_1d6
    move-wide v2, v0

    goto/16 :goto_bb

    :cond_1d9
    move-object v1, v4

    goto/16 :goto_6c
.end method

.method public final a(Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1

    .prologue
    .line 719
    const-string v0, "list"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 720
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isCourseMode:Z

    .line 721
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isFavoriteVideoMode:Z

    .line 722
    iput-object p2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->cheeseInfo:Lcom/alibaba/fastjson/JSONObject;

    .line 723
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONArray;->addAll(Ljava/util/Collection;)Z

    .line 724
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->d()V

    .line 725
    return-void
.end method

.method public final a(Lcom/alibaba/fastjson/JSONArray;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 737
    const-string v0, "list"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 738
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isCourseMode:Z

    .line 739
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isFavoriteVideoMode:Z

    .line 740
    iput-object p2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->folderTitle:Ljava/lang/String;

    .line 741
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->clear()V

    .line 742
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONArray;->addAll(Ljava/util/Collection;)Z

    .line 743
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->d()V

    .line 744
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

    .line 702
    const-string v0, "list"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 703
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isCourseMode:Z

    .line 704
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isFavoriteVideoMode:Z

    .line 705
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 706
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->d()V

    .line 707
    return-void
.end method

.method public final b(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 2

    .prologue
    .line 728
    const-string v0, "list"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 729
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isCourseMode:Z

    .line 730
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isFavoriteVideoMode:Z

    .line 731
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    .line 732
    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/JSONArray;->addAll(Ljava/util/Collection;)Z

    .line 733
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->d(I)V

    .line 734
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

    .line 710
    const-string v0, "list"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 711
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isCourseMode:Z

    .line 712
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isFavoriteVideoMode:Z

    .line 713
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 714
    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 715
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->d(I)V

    .line 716
    return-void
.end method

.method public final c(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 2

    .prologue
    .line 747
    const-string v0, "list"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 748
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isCourseMode:Z

    .line 749
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isFavoriteVideoMode:Z

    .line 750
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    .line 751
    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/JSONArray;->addAll(Ljava/util/Collection;)Z

    .line 752
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->d(I)V

    .line 753
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13

    .prologue
    const v12, 0x7f0800d8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 757
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 758
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 759
    const-string v0, "v.context"

    invoke-static {v3, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 760
    invoke-static {v3}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v4

    .line 761
    if-eqz v4, :cond_5c

    .line 762
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 763
    instance-of v5, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v5, :cond_5d

    .line 764
    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 765
    sget-object v3, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    iget-wide v6, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    .line 766
    invoke-virtual {v3, v4, v6, v7, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 765
    invoke-virtual {v4, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 801
    :cond_30
    :goto_30
    invoke-virtual {p1, v12}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 802
    const-string v3, "tv_myfavourite_video_click"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "row"

    aput-object v0, v4, v2

    .line 804
    invoke-virtual {p1, v12}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

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

    .line 803
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 802
    invoke-static {v3, v4}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 808
    :cond_5c
    return-void

    .line 767
    :cond_5d
    instance-of v5, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v5, :cond_30

    .line 768
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 769
    iget-boolean v5, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isFavoriteVideoMode:Z

    if-eqz v5, :cond_182

    .line 770
    const-string v3, "type"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v3

    .line 771
    const-string v5, "ogv"

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 772
    const-string v6, "id"

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v6

    .line 773
    const-string v8, "title"

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 774
    const-string v9, "cover"

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 775
    const-string v0, "FavoriteClick"

    const-string v10, "=== Favorite Item Click ==="

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    const-string v0, "FavoriteClick"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", type="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", title="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    const-string v8, "FavoriteClick"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ogv="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v5, :cond_155

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    :goto_cb
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    const/16 v0, 0x18

    if-ne v3, v0, :cond_159

    move v0, v1

    .line 780
    :goto_db
    if-nez v0, :cond_110

    if-eqz v5, :cond_110

    .line 781
    const-string v0, "type_id"

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v3

    .line 782
    if-lt v3, v1, :cond_ea

    const/4 v0, 0x5

    if-le v3, v0, :cond_ed

    :cond_ea
    const/4 v0, 0x7

    if-ne v3, v0, :cond_15b

    :cond_ed
    move v0, v1

    .line 783
    :goto_ee
    const-string v8, "FavoriteClick"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ogv.type_id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, ", isPgc="

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_110
    const-string v3, "FavoriteClick"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "final isPgc="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    if-eqz v0, :cond_15f

    .line 789
    if-eqz v5, :cond_15d

    const-string v0, "season_id"

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 790
    :goto_132
    const-string v3, "FavoriteClick"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting PGC with seasonId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    sget-object v3, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    invoke-virtual {v3, v4, v0, v9}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_30

    .line 777
    :cond_155
    const-string v0, "null"

    goto/16 :goto_cb

    :cond_159
    move v0, v2

    .line 779
    goto :goto_db

    :cond_15b
    move v0, v2

    .line 782
    goto :goto_ee

    .line 789
    :cond_15d
    const/4 v0, 0x0

    goto :goto_132

    .line 793
    :cond_15f
    const-string v0, "FavoriteClick"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting UGC with avid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    sget-object v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    invoke-virtual {v0, v4, v6, v7, v9}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_30

    .line 797
    :cond_182
    iget-object v4, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->cheeseInfo:Lcom/alibaba/fastjson/JSONObject;

    invoke-static {v3, v4, v0}, Lbl/xg;->playCheese2(Landroid/content/Context;Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONObject;)V

    .line 798
    const-string v0, "tv_myfavourite_fold_video_click"

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v0, v3}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_30
.end method
