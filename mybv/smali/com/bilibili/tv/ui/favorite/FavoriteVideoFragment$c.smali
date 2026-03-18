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

    .line 612
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 613
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->a:Ljava/util/List;

    .line 614
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    .line 615
    iput-object v2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->cheeseInfo:Lcom/alibaba/fastjson/JSONObject;

    .line 616
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isCourseMode:Z

    .line 617
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isFavoriteVideoMode:Z

    .line 618
    iput-object v2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->folderTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 721
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
    .line 612
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->a(Landroid/view/ViewGroup;I)Lbl/adv;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lbl/adv;
    .locals 1

    .prologue
    .line 623
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 624
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
    .line 612
    check-cast p1, Lbl/adv;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->a(Lbl/adv;I)V

    return-void
.end method

.method public a(Lbl/adv;I)V
    .locals 12

    .prologue
    const/16 v4, 0x8

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 629
    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 630
    instance-of v0, p1, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    if-eqz v0, :cond_13f

    .line 631
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isFavoriteVideoMode:Z

    if-eqz v0, :cond_194

    .line 632
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 633
    const-string v0, "cover"

    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 634
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v1

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    const-string v2, "cover"

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->z()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 636
    :cond_3d
    const-string v0, "title"

    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    move-object v0, p1

    .line 637
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->A()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v6, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 639
    :cond_55
    const-string v0, "upper"

    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 640
    const/4 v0, 0x0

    .line 641
    if-eqz v1, :cond_140

    const-string v2, "name"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_140

    const-string v2, "name"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_140

    .line 642
    const-string v0, "name"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 649
    :goto_79
    if-eqz v1, :cond_85

    move-object v0, p1

    .line 650
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->B()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 652
    :cond_85
    const-string v0, "cnt_info"

    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 653
    if-eqz v1, :cond_c1

    move-object v0, p1

    .line 654
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->C()Landroid/widget/TextView;

    move-result-object v0

    const-string v2, "play"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lbl/adh;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 655
    const-string v0, "danmaku"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    .line 656
    if-lez v1, :cond_159

    move-object v0, p1

    .line 657
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->danmakuInImage:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->access$500(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v1}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, p1

    .line 658
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->danmakuInImage:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->access$500(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 663
    :cond_c1
    :goto_c1
    const-string v0, "fav_time"

    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    .line 664
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_165

    move-object v0, p1

    .line 665
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->D()Landroid/widget/TextView;

    move-result-object v7

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, v2

    .line 667
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    .line 665
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, p1

    .line 668
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->D()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 672
    :goto_ee
    const-string v0, "duration"

    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    .line 673
    const/16 v0, 0xe10

    if-lt v1, v0, :cond_171

    move-object v0, p1

    .line 674
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->E()Landroid/widget/TextView;

    move-result-object v0

    const-string v2, "%d:%02d:%02d"

    new-array v3, v11, [Ljava/lang/Object;

    div-int/lit16 v4, v1, 0xe10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    rem-int/lit16 v4, v1, 0xe10

    div-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    rem-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v10

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 678
    :goto_124
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    .line 679
    const-string v1, "viewHolder.itemView"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 680
    invoke-virtual {v0, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 714
    :goto_12e
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    const v1, 0x7f0800d8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 715
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 717
    :cond_13f
    return-void

    .line 644
    :cond_140
    const-string v1, "ogv"

    invoke-virtual {v6, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 645
    if-eqz v1, :cond_2c7

    const-string v2, "type_name"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c7

    .line 646
    const-string v0, "type_name"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_79

    :cond_159
    move-object v0, p1

    .line 660
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->danmakuInImage:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->access$500(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_c1

    :cond_165
    move-object v0, p1

    .line 670
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->D()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_ee

    :cond_171
    move-object v0, p1

    .line 676
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->E()Landroid/widget/TextView;

    move-result-object v0

    const-string v2, "%02d:%02d"

    new-array v3, v10, [Ljava/lang/Object;

    div-int/lit8 v4, v1, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    rem-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_124

    .line 681
    :cond_194
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isCourseMode:Z

    if-eqz v0, :cond_20a

    .line 682
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 683
    const-string v0, "cover"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c2

    .line 684
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

    .line 686
    :cond_1c2
    const-string v0, "title"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1da

    move-object v0, p1

    .line 687
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->A()Landroid/widget/TextView;

    move-result-object v0

    const-string v2, "title"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1da
    move-object v0, p1

    .line 689
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

    .line 690
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    .line 691
    const-string v2, "viewHolder.itemView"

    invoke-static {v0, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 692
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_12e

    .line 694
    :cond_20a
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 695
    iget-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    if-eqz v1, :cond_22e

    .line 696
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

    .line 698
    :cond_22e
    iget-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_23e

    move-object v1, p1

    .line 699
    check-cast v1, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->A()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 701
    :cond_23e
    iget-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTypeName:Ljava/lang/String;

    if-eqz v1, :cond_266

    move-object v1, p1

    .line 702
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

    .line 704
    :cond_266
    iget v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    .line 705
    const/16 v1, 0xe10

    if-lt v2, v1, :cond_2a4

    move-object v1, p1

    .line 706
    check-cast v1, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->E()Landroid/widget/TextView;

    move-result-object v1

    const-string v3, "%d:%02d:%02d"

    new-array v4, v11, [Ljava/lang/Object;

    div-int/lit16 v5, v2, 0xe10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    rem-int/lit16 v5, v2, 0xe10

    div-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    rem-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v10

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 710
    :goto_298
    iget-object v1, p1, Lbl/adv;->a:Landroid/view/View;

    .line 711
    const-string v2, "viewHolder.itemView"

    invoke-static {v1, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 712
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_12e

    :cond_2a4
    move-object v1, p1

    .line 708
    check-cast v1, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->E()Landroid/widget/TextView;

    move-result-object v1

    const-string v3, "%02d:%02d"

    new-array v4, v10, [Ljava/lang/Object;

    div-int/lit8 v5, v2, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    rem-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_298

    :cond_2c7
    move-object v1, v0

    goto/16 :goto_79
.end method

.method public final a(Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1

    .prologue
    .line 742
    const-string v0, "list"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 743
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isCourseMode:Z

    .line 744
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isFavoriteVideoMode:Z

    .line 745
    iput-object p2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->cheeseInfo:Lcom/alibaba/fastjson/JSONObject;

    .line 746
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONArray;->addAll(Ljava/util/Collection;)Z

    .line 747
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->d()V

    .line 748
    return-void
.end method

.method public final a(Lcom/alibaba/fastjson/JSONArray;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 760
    const-string v0, "list"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 761
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isCourseMode:Z

    .line 762
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isFavoriteVideoMode:Z

    .line 763
    iput-object p2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->folderTitle:Ljava/lang/String;

    .line 764
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->clear()V

    .line 765
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONArray;->addAll(Ljava/util/Collection;)Z

    .line 766
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->d()V

    .line 767
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

    .line 725
    const-string v0, "list"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 726
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isCourseMode:Z

    .line 727
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isFavoriteVideoMode:Z

    .line 728
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 729
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->d()V

    .line 730
    return-void
.end method

.method public final b(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 2

    .prologue
    .line 751
    const-string v0, "list"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 752
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isCourseMode:Z

    .line 753
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isFavoriteVideoMode:Z

    .line 754
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    .line 755
    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/JSONArray;->addAll(Ljava/util/Collection;)Z

    .line 756
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->d(I)V

    .line 757
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

    .line 733
    const-string v0, "list"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 734
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isCourseMode:Z

    .line 735
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isFavoriteVideoMode:Z

    .line 736
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 737
    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 738
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->d(I)V

    .line 739
    return-void
.end method

.method public final c(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 2

    .prologue
    .line 770
    const-string v0, "list"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 771
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isCourseMode:Z

    .line 772
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isFavoriteVideoMode:Z

    .line 773
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    .line 774
    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/JSONArray;->addAll(Ljava/util/Collection;)Z

    .line 775
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->d(I)V

    .line 776
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    const v8, 0x7f0800d8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 780
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 781
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 782
    const-string v0, "v.context"

    invoke-static {v1, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 783
    invoke-static {v1}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v4

    .line 784
    if-eqz v4, :cond_5a

    .line 785
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 786
    instance-of v5, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v5, :cond_5b

    .line 787
    sget-object v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-wide v6, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    .line 788
    invoke-virtual {v1, v4, v6, v7}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 787
    invoke-virtual {v4, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 810
    :cond_2e
    :goto_2e
    invoke-virtual {p1, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 811
    const-string v1, "tv_myfavourite_video_click"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "row"

    aput-object v0, v4, v3

    .line 813
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

    .line 812
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .line 811
    invoke-static {v1, v4}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 817
    :cond_5a
    return-void

    .line 789
    :cond_5b
    instance-of v5, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v5, :cond_2e

    .line 790
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 791
    iget-boolean v5, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isFavoriteVideoMode:Z

    if-eqz v5, :cond_a0

    .line 792
    const-string v1, "ogv"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 794
    if-eqz v5, :cond_ad

    .line 795
    const-string v1, "type_id"

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    .line 796
    if-lt v1, v2, :cond_78

    const/4 v6, 0x5

    if-le v1, v6, :cond_7b

    :cond_78
    const/4 v6, 0x7

    if-ne v1, v6, :cond_8e

    :cond_7b
    move v1, v2

    .line 798
    :goto_7c
    if-eqz v1, :cond_90

    .line 799
    const-string v0, "season_id"

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 800
    sget-object v1, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->Companion:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$a;

    invoke-virtual {v1, v4, v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2e

    :cond_8e
    move v1, v3

    .line 796
    goto :goto_7c

    .line 802
    :cond_90
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v0

    .line 803
    sget-object v5, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    invoke-virtual {v5, v4, v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2e

    .line 806
    :cond_a0
    iget-object v4, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->cheeseInfo:Lcom/alibaba/fastjson/JSONObject;

    invoke-static {v1, v4, v0}, Lbl/xg;->playCheese2(Landroid/content/Context;Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONObject;)V

    .line 807
    const-string v0, "tv_myfavourite_fold_video_click"

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {v0, v1}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2e

    :cond_ad
    move v1, v3

    goto :goto_7c
.end method
