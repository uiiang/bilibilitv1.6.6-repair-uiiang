.class final Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "AttentionDynamicFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;
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
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/auth/BiliSpaceVideo;",
            ">;"
        }
    .end annotation
.end field

.field private uperName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 773
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 770
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a:Ljava/util/List;

    .line 774
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->uperName:Ljava/lang/String;

    .line 775
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 769
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a(Landroid/view/ViewGroup;I)Lbl/adv;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lbl/adv;
    .locals 1

    .prologue
    .line 780
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 781
    const/4 v0, 0x0

    check-cast v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;

    sget-object v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->Companion:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d$a;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d$a;->a(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    .prologue
    .line 769
    check-cast p1, Lbl/adv;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a(Lbl/adv;I)V

    return-void
.end method

.method public a(Lbl/adv;I)V
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 786
    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 787
    instance-of v0, p1, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;

    if-eqz v0, :cond_101

    move-object v0, p1

    .line 788
    check-cast v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;

    .line 789
    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    .line 790
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->A()Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 791
    iget-object v2, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->authorName:Ljava/lang/String;

    if-eqz v2, :cond_102

    iget-object v2, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->authorName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_102

    .line 792
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->B()Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->authorName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 793
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->B()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 797
    :goto_3f
    iget-object v2, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->playStr:Ljava/lang/String;

    if-eqz v2, :cond_10b

    iget-object v2, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->playStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10b

    .line 798
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->C()Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->playStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 802
    :goto_54
    iget-object v2, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmakuStr:Ljava/lang/String;

    if-eqz v2, :cond_11a

    iget-object v2, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmakuStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11a

    .line 803
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->F()Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmakuStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 804
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->F()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 817
    :goto_70
    iget-object v2, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->pubTimeStr:Ljava/lang/String;

    if-eqz v2, :cond_142

    iget-object v2, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->pubTimeStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_142

    .line 818
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->D()Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->pubTimeStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 819
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->D()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 829
    :goto_8c
    iget-object v2, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->durationStr:Ljava/lang/String;

    if-eqz v2, :cond_16f

    iget-object v2, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->durationStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16f

    .line 830
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->E()Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->durationStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 834
    :cond_a1
    :goto_a1
    iget-object v2, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    if-eqz v2, :cond_ba

    .line 835
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v2

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v3

    iget-object v4, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    invoke-static {v3, v4}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->z()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 837
    :cond_ba
    iget-object v2, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->badgeText:Ljava/lang/String;

    if-eqz v2, :cond_182

    const-string v2, "\u6295\u7a3f\u89c6\u9891"

    iget-object v3, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->badgeText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_182

    .line 838
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->G()Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->badgeText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 839
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->G()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 840
    iget-object v2, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->badgeBgColor:Ljava/lang/String;

    if-eqz v2, :cond_f1

    iget-object v2, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->badgeBgColor:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f1

    .line 842
    :try_start_e4
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->G()Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->badgeBgColor:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_f1} :catch_1d5

    .line 857
    :cond_f1
    :goto_f1
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    .line 858
    const-string v2, "viewHolder.itemView"

    invoke-static {v0, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 859
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 860
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 861
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 863
    :cond_101
    return-void

    .line 795
    :cond_102
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->B()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3f

    .line 800
    :cond_10b
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->C()Landroid/widget/TextView;

    move-result-object v2

    iget v3, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->play:I

    invoke-static {v3}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_54

    .line 808
    :cond_11a
    :try_start_11a
    iget-object v2, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmaku:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_11f} :catch_136

    move-result v2

    .line 810
    :goto_120
    if-lez v2, :cond_139

    .line 811
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->F()Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v2}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 812
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->F()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_70

    .line 809
    :catch_136
    move-exception v2

    move v2, v6

    goto :goto_120

    .line 814
    :cond_139
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->F()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_70

    .line 821
    :cond_142
    iget-object v2, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->ctime:Ljava/lang/Long;

    if-eqz v2, :cond_164

    iget-object v2, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->ctime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 822
    :goto_14c
    cmp-long v4, v2, v4

    if-lez v4, :cond_166

    .line 823
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->D()Landroid/widget/TextView;

    move-result-object v4

    invoke-static {v2, v3}, Lcom/bilibili/tv/util/DateHelper;->formatDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 824
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->D()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8c

    :cond_164
    move-wide v2, v4

    .line 821
    goto :goto_14c

    .line 826
    :cond_166
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->D()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8c

    .line 831
    :cond_16f
    iget v2, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->duration:I

    if-lez v2, :cond_a1

    .line 832
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->E()Landroid/widget/TextView;

    move-result-object v2

    iget v3, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->duration:I

    invoke-static {v3}, Lcom/bilibili/tv/util/DateHelper;->formatDuration(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a1

    .line 845
    :cond_182
    iget v2, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->elecArcType:I

    if-ne v2, v8, :cond_1a0

    iget-object v2, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->elecArcBadge:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a0

    .line 846
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->G()Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->elecArcBadge:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 847
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->G()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_f1

    .line 848
    :cond_1a0
    iget v2, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->isUnionVideo:I

    if-ne v2, v8, :cond_1b6

    .line 849
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->G()Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "\u5408\u4f5c"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 850
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->G()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_f1

    .line 851
    :cond_1b6
    iget v2, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->isLivePlayback:I

    if-ne v2, v8, :cond_1cc

    .line 852
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->G()Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "\u76f4\u64ad\u56de\u653e"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 853
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->G()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_f1

    .line 855
    :cond_1cc
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->G()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_f1

    .line 843
    :catch_1d5
    move-exception v0

    goto/16 :goto_f1
.end method

.method public final a(Ljava/util/List;)V
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
    .line 871
    const-string v0, "list"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 872
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 873
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 874
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->d(I)V

    .line 875
    return-void
.end method

.method public final b(Ljava/util/List;)V
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
    .line 878
    const-string v0, "list"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 879
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 880
    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 881
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->d(I)V

    .line 882
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 886
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 887
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 888
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 889
    const-string v2, "v.context"

    invoke-static {v1, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 890
    invoke-static {v1}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 891
    if-nez v1, :cond_19

    .line 899
    :cond_18
    :goto_18
    return-void

    .line 894
    :cond_19
    instance-of v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    if-eqz v2, :cond_18

    .line 895
    check-cast v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    .line 896
    iget-wide v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->aid:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_35

    iget-wide v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->aid:J

    .line 897
    :goto_29
    sget-object v4, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    iget-object v0, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    invoke-virtual {v4, v1, v2, v3, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_18

    .line 896
    :cond_35
    iget-object v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->param:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_29
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 903
    instance-of v0, p1, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    if-eqz v0, :cond_9

    .line 904
    check-cast p1, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {p1, p2}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setUpEnabled(Z)V

    .line 906
    :cond_9
    return-void
.end method
