.class final Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "AuthSpaceVideoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;
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
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnFocusChangeListener;"
    }
.end annotation


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 646
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 647
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->data:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 646
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->a(Landroid/view/ViewGroup;I)Lbl/adv;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lbl/adv;
    .locals 1

    .prologue
    .line 651
    sget-object v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->Companion:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d$a;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d$a;->a(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    .prologue
    .line 646
    check-cast p1, Lbl/adv;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->a(Lbl/adv;I)V

    return-void
.end method

.method public a(Lbl/adv;I)V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 656
    instance-of v0, p1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;

    if-eqz v0, :cond_16f

    .line 657
    check-cast p1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;

    .line 658
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->data:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 659
    instance-of v1, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_1bf

    .line 660
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 662
    const-string v1, "module_dynamic"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2fc

    .line 663
    const-string v1, "module_dynamic"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string v2, "major"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string v2, "archive"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 665
    :goto_32
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->A()Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->B()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 667
    const-string v2, "pubdate"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v6

    .line 668
    const-string v2, "stat"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_170

    const-string v2, "stat"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    const-string v3, "view"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 670
    :goto_60
    const-string v3, "stat"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_178

    const-string v3, "stat"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    const-string v5, "danmaku"

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 672
    :goto_74
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->C()Landroid/widget/TextView;

    move-result-object v5

    invoke-static {v2}, Lbl/adh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 675
    :try_start_7f
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_82} :catch_180

    move-result v2

    .line 677
    :goto_83
    if-lez v2, :cond_184

    .line 678
    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->danmakuInImage:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->access$800(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v2}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 679
    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->danmakuInImage:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->access$800(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 683
    :goto_97
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-lez v2, :cond_18d

    .line 684
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->D()Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v6, v7}, Lcom/bilibili/tv/util/DateHelper;->formatDate(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 685
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->D()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 689
    :goto_af
    const-string v2, "duration"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    .line 690
    const/16 v3, 0xe10

    if-lt v2, v3, :cond_196

    .line 691
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->E()Landroid/widget/TextView;

    move-result-object v3

    const-string v5, "%d:%02d:%02d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    div-int/lit16 v7, v2, 0xe10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    rem-int/lit16 v7, v2, 0xe10

    div-int/lit8 v7, v7, 0x3c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    rem-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 695
    :goto_e3
    const v2, 0x7f060120

    invoke-static {v2}, Lbl/adl;->b(I)I

    move-result v2

    .line 696
    sget-object v3, Lbl/adl;->a:Lbl/adl;

    const v5, 0x7f0700b1

    invoke-virtual {v3, v5}, Lbl/adl;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 697
    sget-object v5, Lbl/adl;->a:Lbl/adl;

    const v6, 0x7f0700b0

    invoke-virtual {v5, v6}, Lbl/adl;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 698
    if-eqz v3, :cond_10d

    .line 699
    invoke-virtual {v3, v4, v4, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 700
    const v6, 0x7f0500a1

    invoke-static {v6}, Lbl/adl;->d(I)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 702
    :cond_10d
    if-eqz v5, :cond_11e

    .line 703
    invoke-virtual {v5, v4, v4, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 704
    const v2, 0x7f0500a1

    invoke-static {v2}, Lbl/adl;->d(I)I

    move-result v2

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 706
    :cond_11e
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->C()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 707
    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->danmakuInImage:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->access$800(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 708
    const-string v2, "pic"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1b7

    const-string v2, "pic"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 709
    :goto_13a
    if-eqz v1, :cond_14f

    .line 710
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v2

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v3

    invoke-static {v3, v1}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->z()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 711
    :cond_14f
    iget-object v1, p1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 762
    :cond_154
    :goto_154
    iget-object v0, p1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 763
    iget-object v0, p1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 764
    iget-object v0, p1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 765
    instance-of v1, v0, Landroid/view/View$OnLongClickListener;

    if-eqz v1, :cond_16f

    .line 766
    iget-object v1, p1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->a:Landroid/view/View;

    check-cast v0, Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 769
    :cond_16f
    return-void

    .line 668
    :cond_170
    const-string v2, "play"

    .line 669
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_60

    .line 670
    :cond_178
    const-string v3, "danmaku"

    .line 671
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_74

    .line 676
    :catch_180
    move-exception v2

    move v2, v4

    goto/16 :goto_83

    .line 681
    :cond_184
    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->danmakuInImage:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->access$800(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_97

    .line 687
    :cond_18d
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->D()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_af

    .line 693
    :cond_196
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->E()Landroid/widget/TextView;

    move-result-object v3

    const-string v5, "%02d:%02d"

    new-array v6, v11, [Ljava/lang/Object;

    div-int/lit8 v7, v2, 0x3c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    rem-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e3

    .line 708
    :cond_1b7
    const-string v2, "cover"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13a

    .line 712
    :cond_1bf
    instance-of v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    if-eqz v1, :cond_154

    .line 713
    check-cast v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    .line 714
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->A()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 715
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->B()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 717
    iget v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->play:I

    if-nez v1, :cond_2bd

    const-string v1, "0"

    .line 718
    :goto_1db
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->C()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 722
    :try_start_1e2
    iget-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmaku:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1e7
    .catch Ljava/lang/Exception; {:try_start_1e2 .. :try_end_1e7} :catch_2c5

    move-result v1

    .line 724
    :goto_1e8
    if-lez v1, :cond_2c9

    .line 725
    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->danmakuInImage:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->access$800(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v1}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 726
    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->danmakuInImage:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->access$800(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 730
    :goto_1fc
    iget-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->ctime:Ljava/lang/Long;

    if-eqz v1, :cond_2d2

    iget-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->ctime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-lez v1, :cond_2d2

    .line 731
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->D()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->ctime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/bilibili/tv/util/DateHelper;->formatDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 732
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->D()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 737
    :goto_224
    iget v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->duration:I

    .line 738
    const/16 v2, 0xe10

    if-lt v1, v2, :cond_2db

    .line 739
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->E()Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "%d:%02d:%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    div-int/lit16 v6, v1, 0xe10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    rem-int/lit16 v6, v1, 0xe10

    div-int/lit8 v6, v6, 0x3c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    rem-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v11

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 744
    :goto_254
    const v1, 0x7f060120

    invoke-static {v1}, Lbl/adl;->b(I)I

    move-result v1

    .line 745
    sget-object v2, Lbl/adl;->a:Lbl/adl;

    const v3, 0x7f0700b1

    invoke-virtual {v2, v3}, Lbl/adl;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 746
    sget-object v3, Lbl/adl;->a:Lbl/adl;

    const v5, 0x7f0700b0

    invoke-virtual {v3, v5}, Lbl/adl;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 747
    if-eqz v2, :cond_27e

    .line 748
    invoke-virtual {v2, v4, v4, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 749
    const v5, 0x7f0500a1

    invoke-static {v5}, Lbl/adl;->d(I)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 751
    :cond_27e
    if-eqz v3, :cond_28f

    .line 752
    invoke-virtual {v3, v4, v4, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 753
    const v1, 0x7f0500a1

    invoke-static {v1}, Lbl/adl;->d(I)I

    move-result v1

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 755
    :cond_28f
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->C()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 756
    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->danmakuInImage:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->access$800(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 758
    iget-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    if-eqz v1, :cond_2b6

    .line 759
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v1

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v2

    iget-object v3, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    invoke-static {v2, v3}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->z()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 760
    :cond_2b6
    iget-object v1, p1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_154

    .line 717
    :cond_2bd
    iget v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->play:I

    invoke-static {v1}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1db

    .line 723
    :catch_2c5
    move-exception v1

    move v1, v4

    goto/16 :goto_1e8

    .line 728
    :cond_2c9
    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->danmakuInImage:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->access$800(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1fc

    .line 734
    :cond_2d2
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->D()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_224

    .line 741
    :cond_2db
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->E()Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "%02d:%02d"

    new-array v5, v11, [Ljava/lang/Object;

    div-int/lit8 v6, v1, 0x3c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    rem-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v10

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_254

    :cond_2fc
    move-object v1, v0

    goto/16 :goto_32
.end method

.method public addJsonItems(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 795
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 796
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->data:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 797
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->d(I)V

    .line 798
    return-void
.end method

.method public addVideos(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/bilibili/tv/api/auth/BiliSpaceVideo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 789
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 790
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->data:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 791
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->d(I)V

    .line 792
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 802
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 803
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v4

    .line 804
    if-nez v4, :cond_f

    .line 822
    :cond_e
    :goto_e
    return-void

    .line 806
    :cond_f
    instance-of v1, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_3f

    .line 807
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 809
    const-string v1, "module_dynamic"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 810
    const-string v1, "module_dynamic"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v1, "major"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v1, "archive"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 811
    :cond_2f
    const-string v1, "aid"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v0

    .line 812
    sget-object v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    invoke-virtual {v2, v4, v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_e

    .line 813
    :cond_3f
    instance-of v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    if-eqz v1, :cond_e

    .line 814
    check-cast v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    .line 815
    const-wide/16 v2, 0x0

    .line 817
    :try_start_47
    iget-object v0, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->param:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4c} :catch_57

    move-result-wide v0

    .line 820
    :goto_4d
    sget-object v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    invoke-virtual {v2, v4, v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_e

    .line 818
    :catch_57
    move-exception v0

    move-wide v0, v2

    goto :goto_4d
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 826
    instance-of v0, p1, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    if-eqz v0, :cond_9

    .line 827
    check-cast p1, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {p1, p2}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setUpEnabled(Z)V

    .line 828
    :cond_9
    return-void
.end method

.method public setJsonItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 783
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 784
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 785
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->d()V

    .line 786
    return-void
.end method

.method public setVideos(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/bilibili/tv/api/auth/BiliSpaceVideo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 777
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 778
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 779
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->d()V

    .line 780
    return-void
.end method
