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

    .line 618
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 619
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->a:Ljava/util/List;

    .line 620
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    .line 621
    iput-object v2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->cheeseInfo:Lcom/alibaba/fastjson/JSONObject;

    .line 622
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isCourseMode:Z

    .line 623
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isFavoriteVideoMode:Z

    .line 624
    iput-object v2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->folderTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 725
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
    .line 618
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->a(Landroid/view/ViewGroup;I)Lbl/adv;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lbl/adv;
    .locals 1

    .prologue
    .line 629
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 630
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
    .line 618
    check-cast p1, Lbl/adv;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->a(Lbl/adv;I)V

    return-void
.end method

.method public a(Lbl/adv;I)V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 635
    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 636
    instance-of v0, p1, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    if-eqz v0, :cond_136

    .line 637
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isFavoriteVideoMode:Z

    if-eqz v0, :cond_18b

    .line 638
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 639
    const-string v0, "cover"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 640
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

    .line 642
    :cond_3d
    const-string v0, "title"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    move-object v0, p1

    .line 643
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->A()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    :cond_55
    const-string v0, "upper"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 646
    const/4 v0, 0x0

    .line 647
    if-eqz v1, :cond_137

    const-string v3, "name"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_137

    const-string v3, "name"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_137

    .line 648
    const-string v0, "name"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 655
    :goto_79
    if-eqz v1, :cond_85

    move-object v0, p1

    .line 656
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->B()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 658
    :cond_85
    const-string v0, "cnt_info"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 659
    if-eqz v1, :cond_c1

    move-object v0, p1

    .line 660
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->C()Landroid/widget/TextView;

    move-result-object v0

    const-string v3, "play"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lbl/adh;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 661
    const-string v0, "danmaku"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    .line 662
    if-lez v1, :cond_150

    move-object v0, p1

    .line 663
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->danmakuInImage:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->access$500(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v1}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, p1

    .line 664
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->danmakuInImage:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->access$500(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 669
    :cond_c1
    :goto_c1
    const-string v0, "fav_time"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    .line 670
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-lez v0, :cond_15c

    move-object v0, p1

    .line 671
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->D()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v4, v5}, Lcom/bilibili/tv/util/DateHelper;->formatDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, p1

    .line 672
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->D()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 676
    :goto_e5
    const-string v0, "duration"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    .line 677
    const/16 v0, 0xe10

    if-lt v1, v0, :cond_168

    move-object v0, p1

    .line 678
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

    .line 682
    :goto_11b
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    .line 683
    const-string v1, "viewHolder.itemView"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 684
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 718
    :goto_125
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    const v1, 0x7f0800d8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 719
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 721
    :cond_136
    return-void

    .line 650
    :cond_137
    const-string v1, "ogv"

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 651
    if-eqz v1, :cond_2be

    const-string v3, "type_name"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2be

    .line 652
    const-string v0, "type_name"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_79

    :cond_150
    move-object v0, p1

    .line 666
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->danmakuInImage:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->access$500(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_c1

    :cond_15c
    move-object v0, p1

    .line 674
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->D()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_e5

    :cond_168
    move-object v0, p1

    .line 680
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

    goto :goto_11b

    .line 685
    :cond_18b
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isCourseMode:Z

    if-eqz v0, :cond_201

    .line 686
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 687
    const-string v0, "cover"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b9

    .line 688
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

    .line 690
    :cond_1b9
    const-string v0, "title"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d1

    move-object v0, p1

    .line 691
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->A()Landroid/widget/TextView;

    move-result-object v0

    const-string v2, "title"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1d1
    move-object v0, p1

    .line 693
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

    .line 694
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    .line 695
    const-string v2, "viewHolder.itemView"

    invoke-static {v0, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 696
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_125

    .line 698
    :cond_201
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 699
    iget-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    if-eqz v1, :cond_225

    .line 700
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

    .line 702
    :cond_225
    iget-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_235

    move-object v1, p1

    .line 703
    check-cast v1, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->A()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 705
    :cond_235
    iget-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTypeName:Ljava/lang/String;

    if-eqz v1, :cond_25d

    move-object v1, p1

    .line 706
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

    .line 708
    :cond_25d
    iget v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    .line 709
    const/16 v1, 0xe10

    if-lt v2, v1, :cond_29b

    move-object v1, p1

    .line 710
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

    .line 714
    :goto_28f
    iget-object v1, p1, Lbl/adv;->a:Landroid/view/View;

    .line 715
    const-string v2, "viewHolder.itemView"

    invoke-static {v1, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 716
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_125

    :cond_29b
    move-object v1, p1

    .line 712
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

    goto :goto_28f

    :cond_2be
    move-object v1, v0

    goto/16 :goto_79
.end method

.method public final a(Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1

    .prologue
    .line 746
    const-string v0, "list"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 747
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isCourseMode:Z

    .line 748
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isFavoriteVideoMode:Z

    .line 749
    iput-object p2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->cheeseInfo:Lcom/alibaba/fastjson/JSONObject;

    .line 750
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONArray;->addAll(Ljava/util/Collection;)Z

    .line 751
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->d()V

    .line 752
    return-void
.end method

.method public final a(Lcom/alibaba/fastjson/JSONArray;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 764
    const-string v0, "list"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 765
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isCourseMode:Z

    .line 766
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isFavoriteVideoMode:Z

    .line 767
    iput-object p2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->folderTitle:Ljava/lang/String;

    .line 768
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->clear()V

    .line 769
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONArray;->addAll(Ljava/util/Collection;)Z

    .line 770
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->d()V

    .line 771
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

    .line 729
    const-string v0, "list"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 730
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isCourseMode:Z

    .line 731
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isFavoriteVideoMode:Z

    .line 732
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 733
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->d()V

    .line 734
    return-void
.end method

.method public final b(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 2

    .prologue
    .line 755
    const-string v0, "list"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 756
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isCourseMode:Z

    .line 757
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isFavoriteVideoMode:Z

    .line 758
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    .line 759
    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/JSONArray;->addAll(Ljava/util/Collection;)Z

    .line 760
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->d(I)V

    .line 761
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

    .line 737
    const-string v0, "list"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 738
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isCourseMode:Z

    .line 739
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isFavoriteVideoMode:Z

    .line 740
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 741
    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 742
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->d(I)V

    .line 743
    return-void
.end method

.method public final c(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 2

    .prologue
    .line 774
    const-string v0, "list"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 775
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isCourseMode:Z

    .line 776
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isFavoriteVideoMode:Z

    .line 777
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    .line 778
    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/JSONArray;->addAll(Ljava/util/Collection;)Z

    .line 779
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->d(I)V

    .line 780
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12

    .prologue
    const v11, 0x7f0800d8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 784
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 785
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 786
    const-string v0, "v.context"

    invoke-static {v3, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 787
    invoke-static {v3}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v4

    .line 788
    if-eqz v4, :cond_5a

    .line 789
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 790
    instance-of v5, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v5, :cond_5b

    .line 791
    sget-object v3, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-wide v6, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    .line 792
    invoke-virtual {v3, v4, v6, v7}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 791
    invoke-virtual {v4, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 826
    :cond_2e
    :goto_2e
    invoke-virtual {p1, v11}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 827
    const-string v3, "tv_myfavourite_video_click"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "row"

    aput-object v0, v4, v2

    .line 829
    invoke-virtual {p1, v11}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

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

    .line 828
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 827
    invoke-static {v3, v4}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 833
    :cond_5a
    return-void

    .line 793
    :cond_5b
    instance-of v5, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v5, :cond_2e

    .line 794
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 795
    iget-boolean v5, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->isFavoriteVideoMode:Z

    if-eqz v5, :cond_17a

    .line 796
    const-string v3, "type"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v3

    .line 797
    const-string v5, "ogv"

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 798
    const-string v6, "id"

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v6

    .line 799
    const-string v8, "title"

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 800
    const-string v8, "FavoriteClick"

    const-string v9, "=== Favorite Item Click ==="

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    const-string v8, "FavoriteClick"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", type="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", title="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const-string v8, "FavoriteClick"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ogv="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v5, :cond_14d

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    :goto_c3
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const/16 v0, 0x18

    if-ne v3, v0, :cond_151

    move v0, v1

    .line 805
    :goto_d3
    if-nez v0, :cond_108

    if-eqz v5, :cond_108

    .line 806
    const-string v0, "type_id"

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v3

    .line 807
    if-lt v3, v1, :cond_e2

    const/4 v0, 0x5

    if-le v3, v0, :cond_e5

    :cond_e2
    const/4 v0, 0x7

    if-ne v3, v0, :cond_153

    :cond_e5
    move v0, v1

    .line 808
    :goto_e6
    const-string v8, "FavoriteClick"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ogv.type_id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, ", isPgc="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_108
    const-string v3, "FavoriteClick"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "final isPgc="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    if-eqz v0, :cond_157

    .line 814
    if-eqz v5, :cond_155

    const-string v0, "season_id"

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 815
    :goto_12a
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

    .line 816
    sget-object v3, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    invoke-virtual {v3, v4, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2e

    .line 802
    :cond_14d
    const-string v0, "null"

    goto/16 :goto_c3

    :cond_151
    move v0, v2

    .line 804
    goto :goto_d3

    :cond_153
    move v0, v2

    .line 807
    goto :goto_e6

    .line 814
    :cond_155
    const/4 v0, 0x0

    goto :goto_12a

    .line 818
    :cond_157
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

    .line 819
    sget-object v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    invoke-virtual {v0, v4, v6, v7}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2e

    .line 822
    :cond_17a
    iget-object v4, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->cheeseInfo:Lcom/alibaba/fastjson/JSONObject;

    invoke-static {v3, v4, v0}, Lbl/xg;->playCheese2(Landroid/content/Context;Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONObject;)V

    .line 823
    const-string v0, "tv_myfavourite_fold_video_click"

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v0, v3}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_2e
.end method
