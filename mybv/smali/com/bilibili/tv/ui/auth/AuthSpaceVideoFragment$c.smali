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
            "Lcom/bilibili/tv/api/auth/BiliSpaceVideo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 857
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 858
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->data:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 945
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 857
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->a(Landroid/view/ViewGroup;I)Lbl/adv;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lbl/adv;
    .locals 1

    .prologue
    .line 862
    sget-object v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->Companion:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d$a;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d$a;->a(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    .prologue
    .line 857
    check-cast p1, Lbl/adv;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->a(Lbl/adv;I)V

    return-void
.end method

.method public a(Lbl/adv;I)V
    .locals 11

    .prologue
    const v10, 0x7f0500a1

    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 867
    instance-of v0, p1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;

    if-eqz v0, :cond_149

    .line 868
    check-cast p1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;

    .line 869
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->data:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    .line 870
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->A()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 871
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->B()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 873
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->C()Landroid/widget/TextView;

    move-result-object v2

    iget-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->playStr:Ljava/lang/String;

    if-eqz v1, :cond_14a

    iget-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->playStr:Ljava/lang/String;

    :goto_30
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 875
    iget-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmakuStr:Ljava/lang/String;

    if-eqz v1, :cond_14e

    const-string v1, "0"

    iget-object v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmakuStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14e

    iget-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmakuStr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14e

    .line 876
    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->danmakuInImage:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->access$900(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmakuStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 877
    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->danmakuInImage:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->access$900(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 882
    :goto_59
    iget-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->ctime:Ljava/lang/Long;

    if-eqz v1, :cond_157

    iget-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->ctime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_157

    .line 883
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->D()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->ctime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/bilibili/tv/util/DateHelper;->formatDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 884
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->D()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 889
    :goto_81
    iget-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->durationStr:Ljava/lang/String;

    if-eqz v1, :cond_160

    iget-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->durationStr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_160

    .line 890
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->E()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->durationStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 895
    :cond_96
    :goto_96
    const v1, 0x7f060120

    invoke-static {v1}, Lbl/adl;->b(I)I

    move-result v1

    .line 896
    sget-object v2, Lbl/adl;->a:Lbl/adl;

    const v3, 0x7f0700b1

    invoke-virtual {v2, v3}, Lbl/adl;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 897
    sget-object v3, Lbl/adl;->a:Lbl/adl;

    const v4, 0x7f0700b0

    invoke-virtual {v3, v4}, Lbl/adl;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 898
    if-eqz v2, :cond_bd

    .line 899
    invoke-virtual {v2, v6, v6, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 900
    invoke-static {v10}, Lbl/adl;->d(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 902
    :cond_bd
    if-eqz v3, :cond_cb

    .line 903
    invoke-virtual {v3, v6, v6, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 904
    invoke-static {v10}, Lbl/adl;->d(I)I

    move-result v1

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 906
    :cond_cb
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->C()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 907
    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->danmakuInImage:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->access$900(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 909
    iget-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    if-eqz v1, :cond_f2

    .line 910
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

    .line 912
    :cond_f2
    iget-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->badgeText:Ljava/lang/String;

    if-eqz v1, :cond_173

    const-string v1, "\u6295\u7a3f\u89c6\u9891"

    iget-object v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->badgeText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_173

    .line 913
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->F()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->badgeText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 914
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->F()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 915
    iget-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->badgeBgColor:Ljava/lang/String;

    if-eqz v1, :cond_129

    iget-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->badgeBgColor:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_129

    .line 917
    :try_start_11c
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->F()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->badgeBgColor:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_129} :catch_1c4

    .line 933
    :cond_129
    :goto_129
    iget-object v1, p1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 934
    iget-object v0, p1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 935
    iget-object v0, p1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 936
    iget-object v0, p1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 937
    instance-of v1, v0, Landroid/view/View$OnLongClickListener;

    if-eqz v1, :cond_149

    .line 938
    iget-object v1, p1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->a:Landroid/view/View;

    check-cast v0, Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 941
    :cond_149
    return-void

    .line 873
    :cond_14a
    const-string v1, "0"

    goto/16 :goto_30

    .line 879
    :cond_14e
    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->danmakuInImage:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->access$900(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_59

    .line 886
    :cond_157
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->D()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_81

    .line 891
    :cond_160
    iget v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->duration:I

    if-lez v1, :cond_96

    .line 892
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->E()Landroid/widget/TextView;

    move-result-object v1

    iget v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->duration:I

    invoke-static {v2}, Lcom/bilibili/tv/util/DateHelper;->formatDuration(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_96

    .line 920
    :cond_173
    iget v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->elecArcType:I

    if-ne v1, v9, :cond_190

    iget-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->elecArcBadge:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_190

    .line 921
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->F()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->elecArcBadge:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 922
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->F()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_129

    .line 923
    :cond_190
    iget v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->isUnionVideo:I

    if-ne v1, v9, :cond_1a5

    .line 924
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->F()Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "\u5408\u4f5c"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 925
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->F()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_129

    .line 926
    :cond_1a5
    iget v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->isLivePlayback:I

    if-ne v1, v9, :cond_1bb

    .line 927
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->F()Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "\u76f4\u64ad\u56de\u653e"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 928
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->F()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_129

    .line 930
    :cond_1bb
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->F()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_129

    .line 918
    :catch_1c4
    move-exception v1

    goto/16 :goto_129
.end method

.method public addVideos(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/auth/BiliSpaceVideo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 955
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 956
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->data:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 957
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->d(I)V

    .line 958
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 962
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 963
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 964
    if-nez v1, :cond_f

    .line 970
    :cond_e
    :goto_e
    return-void

    .line 966
    :cond_f
    instance-of v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    if-eqz v2, :cond_e

    .line 967
    check-cast v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    .line 968
    sget-object v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    iget-wide v4, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->aid:J

    iget-object v0, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    invoke-virtual {v2, v1, v4, v5, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_e
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 974
    instance-of v0, p1, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    if-eqz v0, :cond_9

    .line 975
    check-cast p1, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {p1, p2}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setUpEnabled(Z)V

    .line 976
    :cond_9
    return-void
.end method

.method public setVideos(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/auth/BiliSpaceVideo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 949
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 950
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 951
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->d()V

    .line 952
    return-void
.end method
