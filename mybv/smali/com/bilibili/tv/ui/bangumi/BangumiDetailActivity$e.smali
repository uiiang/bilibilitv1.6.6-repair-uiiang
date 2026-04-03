.class public final Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;
.super Lbl/vm;
.source "BangumiDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/vm",
        "<",
        "Lcom/bilibili/bangumi/api/BangumiApiResponse",
        "<",
        "Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;


# direct methods
.method public constructor <init>(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)V
    .locals 0

    .prologue
    .line 612
    iput-object p1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    invoke-direct {p0}, Lbl/vm;-><init>()V

    .line 613
    return-void
.end method

.method private final a()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 742
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->g:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$900(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 743
    if-nez v0, :cond_d

    .line 744
    invoke-static {}, Lbl/bbi;->a()V

    .line 746
    :cond_d
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 747
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->f:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$1000(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 748
    if-nez v0, :cond_1b

    .line 749
    invoke-static {}, Lbl/bbi;->a()V

    .line 751
    :cond_1b
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 752
    return-void
.end method

.method private final a(Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 759
    if-eqz p1, :cond_7

    iget-object v0, p1, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->episodes:Ljava/util/List;

    if-nez v0, :cond_b

    :cond_7
    move v0, v1

    :goto_8
    if-nez v0, :cond_10

    .line 781
    :cond_a
    :goto_a
    return-void

    .line 759
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_8

    .line 762
    :cond_10
    if-eqz p1, :cond_1e

    iget-object v0, p1, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->episodes:Ljava/util/List;

    if-eqz v0, :cond_1e

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;

    if-nez v0, :cond_5c

    :cond_1e
    const/4 v0, 0x0

    move-object v2, v0

    .line 763
    :goto_20
    if-eqz p1, :cond_26

    iget-object v0, p1, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->userStatus:Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus;

    if-nez v0, :cond_64

    :cond_26
    move v0, v1

    .line 764
    :goto_27
    if-eqz v2, :cond_30

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_3a

    :cond_30
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_a

    .line 765
    :cond_3a
    if-eqz v0, :cond_67

    .line 766
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->H:Lcom/bilibili/tv/widget/DrawTextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$1100(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/tv/widget/DrawTextView;

    move-result-object v0

    .line 767
    if-eqz v0, :cond_50

    .line 768
    iget-object v2, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    const v3, 0x7f0c005b

    invoke-virtual {v2, v3}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawTextView;->setText(Ljava/lang/CharSequence;)V

    .line 776
    :cond_50
    :goto_50
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->H:Lcom/bilibili/tv/widget/DrawTextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$1100(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/tv/widget/DrawTextView;

    move-result-object v0

    .line 777
    if-eqz v0, :cond_a

    .line 778
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setVisibility(I)V

    goto :goto_a

    .line 762
    :cond_5c
    iget v0, v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->status:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v2, v0

    goto :goto_20

    .line 763
    :cond_64
    iget-boolean v0, v0, Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus;->isPaid:Z

    goto :goto_27

    .line 771
    :cond_67
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->H:Lcom/bilibili/tv/widget/DrawTextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$1100(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/tv/widget/DrawTextView;

    move-result-object v0

    .line 772
    if-eqz v0, :cond_50

    .line 773
    iget-object v2, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    const v3, 0x7f0c005a

    invoke-virtual {v2, v3}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_50
.end method

.method private final b(Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;)V
    .locals 11

    .prologue
    const v4, 0x7f080031

    const/4 v3, 0x0

    .line 785
    invoke-static {p1}, Lbl/ads;->b(Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 786
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->l:Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$1200(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Landroid/view/View;

    move-result-object v0

    .line 787
    if-nez v0, :cond_15

    .line 788
    invoke-static {}, Lbl/bbi;->a()V

    .line 790
    :cond_15
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 791
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->C:Lcom/bilibili/tv/widget/DrawTextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$1300(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/tv/widget/DrawTextView;

    move-result-object v0

    .line 792
    if-nez v0, :cond_25

    .line 793
    invoke-static {}, Lbl/bbi;->a()V

    .line 795
    :cond_25
    const v1, 0x7f0c0055

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setText(I)V

    .line 796
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->C:Lcom/bilibili/tv/widget/DrawTextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$1300(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/tv/widget/DrawTextView;

    move-result-object v0

    .line 797
    if-nez v0, :cond_36

    .line 798
    invoke-static {}, Lbl/bbi;->a()V

    .line 800
    :cond_36
    iget-object v1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setTextColor(I)V

    .line 801
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->m:Lcom/bilibili/tv/widget/DrawTextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$1400(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/tv/widget/DrawTextView;

    move-result-object v0

    .line 802
    if-nez v0, :cond_51

    .line 803
    invoke-static {}, Lbl/bbi;->a()V

    .line 805
    :cond_51
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawTextView;->requestFocus()Z

    .line 806
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->G:Lcom/bilibili/tv/widget/DrawTextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$1500(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/tv/widget/DrawTextView;

    move-result-object v0

    .line 807
    if-nez v0, :cond_5f

    .line 808
    invoke-static {}, Lbl/bbi;->a()V

    .line 810
    :cond_5f
    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawTextView;->setNextFocusUpId(I)V

    .line 811
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->G:Lcom/bilibili/tv/widget/DrawTextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$1500(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/tv/widget/DrawTextView;

    move-result-object v0

    .line 812
    if-nez v0, :cond_6d

    .line 813
    invoke-static {}, Lbl/bbi;->a()V

    .line 815
    :cond_6d
    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawTextView;->setNextFocusRightId(I)V

    .line 816
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->G:Lcom/bilibili/tv/widget/DrawTextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$1500(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/tv/widget/DrawTextView;

    move-result-object v0

    .line 817
    if-nez v0, :cond_7b

    .line 818
    invoke-static {}, Lbl/bbi;->a()V

    .line 820
    :cond_7b
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setNextFocusDownId(I)V

    .line 821
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->m:Lcom/bilibili/tv/widget/DrawTextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$1400(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/tv/widget/DrawTextView;

    move-result-object v0

    .line 822
    if-nez v0, :cond_8a

    .line 823
    invoke-static {}, Lbl/bbi;->a()V

    .line 825
    :cond_8a
    const v1, 0x7f080026

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setNextFocusRightId(I)V

    .line 888
    :goto_90
    return-void

    .line 828
    :cond_91
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->l:Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$1200(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Landroid/view/View;

    move-result-object v0

    .line 829
    if-nez v0, :cond_9c

    .line 830
    invoke-static {}, Lbl/bbi;->a()V

    .line 832
    :cond_9c
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 833
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    .line 834
    if-nez p1, :cond_a6

    .line 835
    invoke-static {}, Lbl/bbi;->a()V

    .line 837
    :cond_a6
    iget-object v1, p1, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->episodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    # setter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->x:I
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$1602(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;I)I

    .line 838
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->x:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$1600(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)I

    move-result v0

    invoke-static {v0}, Lbl/abx;->b(I)Lbl/abx$b;

    move-result-object v8

    .line 839
    iget v9, v8, Lbl/abx$b;->c:I

    .line 840
    :goto_bb
    if-ge v3, v9, :cond_f9

    .line 841
    iget v0, v8, Lbl/abx$b;->b:I

    mul-int v5, v3, v0

    .line 842
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->p:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$1700(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Ljava/util/List;

    move-result-object v10

    .line 843
    if-nez v10, :cond_cc

    .line 844
    invoke-static {}, Lbl/bbi;->a()V

    .line 846
    :cond_cc
    sget-object v0, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;->Companion:Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$a;

    .line 847
    iget-object v1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->a:Ljava/lang/String;
    invoke-static {v1}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$1800(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Ljava/lang/String;

    move-result-object v2

    .line 848
    if-nez v2, :cond_d9

    .line 849
    invoke-static {}, Lbl/bbi;->a()V

    .line 851
    :cond_d9
    iget-object v1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->A:Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;
    invoke-static {v1}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$100(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;

    move-result-object v4

    .line 852
    if-nez v4, :cond_e4

    .line 853
    invoke-static {}, Lbl/bbi;->a()V

    .line 855
    :cond_e4
    iget-object v1, p1, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->episodes:Ljava/util/List;

    iget v4, v4, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->seasonType:I

    iget v6, v8, Lbl/abx$b;->b:I

    add-int/2addr v6, v5

    iget-object v7, p1, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->userStatus:Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus;

    iget-boolean v7, v7, Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus;->isPaid:Z

    invoke-virtual/range {v0 .. v7}, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$a;->a(Ljava/util/List;Ljava/lang/String;IIIIZ)Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 840
    add-int/lit8 v3, v3, 0x1

    goto :goto_bb

    .line 857
    :cond_f9
    iget v0, v8, Lbl/abx$b;->c:I

    iget v1, v8, Lbl/abx$b;->b:I

    mul-int v5, v0, v1

    .line 858
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->x:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$1600(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)I

    move-result v0

    if-ge v5, v0, :cond_141

    .line 859
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->p:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$1700(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Ljava/util/List;

    move-result-object v9

    .line 860
    if-nez v9, :cond_112

    .line 861
    invoke-static {}, Lbl/bbi;->a()V

    .line 863
    :cond_112
    sget-object v0, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;->Companion:Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$a;

    .line 864
    iget-object v1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->a:Ljava/lang/String;
    invoke-static {v1}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$1800(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Ljava/lang/String;

    move-result-object v2

    .line 865
    if-nez v2, :cond_11f

    .line 866
    invoke-static {}, Lbl/bbi;->a()V

    .line 868
    :cond_11f
    iget v3, v8, Lbl/abx$b;->c:I

    .line 869
    iget-object v1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->A:Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;
    invoke-static {v1}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$100(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;

    move-result-object v4

    .line 870
    if-nez v4, :cond_12c

    .line 871
    invoke-static {}, Lbl/bbi;->a()V

    .line 873
    :cond_12c
    iget-object v1, p1, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->episodes:Ljava/util/List;

    iget v4, v4, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->seasonType:I

    iget-object v6, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->x:I
    invoke-static {v6}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$1600(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)I

    move-result v6

    iget-object v7, p1, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->userStatus:Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus;

    iget-boolean v7, v7, Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus;->isPaid:Z

    invoke-virtual/range {v0 .. v7}, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$a;->a(Ljava/util/List;Ljava/lang/String;IIIIZ)Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 875
    :cond_141
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->o:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$b;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$1900(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$b;

    move-result-object v0

    .line 876
    if-nez v0, :cond_14c

    .line 877
    invoke-static {}, Lbl/bbi;->a()V

    .line 879
    :cond_14c
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$b;->notifyDataSetChanged()V

    .line 880
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->t:Lcom/bilibili/tv/widget/PagerSlidingTabStrip;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$2000(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/tv/widget/PagerSlidingTabStrip;

    move-result-object v0

    .line 881
    if-nez v0, :cond_15a

    .line 882
    invoke-static {}, Lbl/bbi;->a()V

    .line 884
    :cond_15a
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/PagerSlidingTabStrip;->a()V

    .line 885
    iget-object v1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    .line 886
    iget-object v0, p1, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->userStatus:Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus;

    .line 887
    if-eqz v0, :cond_167

    iget-object v0, v0, Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus;->watchProgress:Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus$WatchProgress;

    if-nez v0, :cond_16d

    :cond_167
    const/4 v0, 0x0

    :goto_168
    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_90

    :cond_16d
    iget-object v0, v0, Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus$WatchProgress;->lastEpIndex:Ljava/lang/String;

    goto :goto_168
.end method


# virtual methods
.method public isCancel()Z
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->isFinishing()Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 732
    const-string v0, "t"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 733
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    invoke-virtual {v0, p1, v1}, Lbl/adl;->a(Ljava/lang/Throwable;Landroid/app/Activity;)V

    .line 734
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->n:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$000(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    .line 735
    if-nez v0, :cond_17

    .line 736
    invoke-static {}, Lbl/bbi;->a()V

    .line 738
    :cond_17
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/base/LoadingImageView;->setRefreshError(Z)V

    .line 739
    return-void
.end method

.method public onSuccess(Lcom/bilibili/bangumi/api/BangumiApiResponse;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bilibili/bangumi/api/BangumiApiResponse",
            "<",
            "Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    .line 623
    const-string v1, "BangumiDetailApi"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_11b

    iget v0, p1, Lcom/bilibili/bangumi/api/BangumiApiResponse;->code:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const-string v1, "BangumiDetailApi"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response message: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_11f

    iget-object v0, p1, Lcom/bilibili/bangumi/api/BangumiApiResponse;->message:Ljava/lang/String;

    :goto_33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    if-eqz p1, :cond_104

    iget-object v0, p1, Lcom/bilibili/bangumi/api/BangumiApiResponse;->result:Ljava/lang/Object;

    if-eqz v0, :cond_104

    .line 627
    iget-object v0, p1, Lcom/bilibili/bangumi/api/BangumiApiResponse;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;

    .line 628
    const-string v1, "BangumiDetailApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "season title: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const-string v1, "BangumiDetailApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "seasonId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->seasonId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v1, v0, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->userStatus:Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus;

    if-eqz v1, :cond_e2

    .line 632
    const-string v1, "BangumiDetailApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "userStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->userStatus:Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object v1, v0, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->userStatus:Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus;

    iget-object v1, v1, Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus;->watchProgress:Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus$WatchProgress;

    if-eqz v1, :cond_e2

    .line 634
    const-string v1, "BangumiDetailApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "watchProgress: last_ep_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->userStatus:Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus;

    iget-object v3, v3, Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus;->watchProgress:Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus$WatchProgress;

    iget-wide v4, v3, Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus$WatchProgress;->lastEpId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", last_time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->userStatus:Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus;

    iget-object v3, v3, Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus;->watchProgress:Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus$WatchProgress;

    iget-wide v4, v3, Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus$WatchProgress;->lastEpProgress:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", last_ep_index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->userStatus:Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus;

    iget-object v3, v3, Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus;->watchProgress:Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus$WatchProgress;

    iget-object v3, v3, Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus$WatchProgress;->lastEpIndex:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_e2
    iget-object v1, v0, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->episodes:Ljava/util/List;

    if-eqz v1, :cond_104

    .line 641
    const-string v1, "BangumiDetailApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "episodes count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_104
    if-eqz p1, :cond_123

    iget-object v0, p1, Lcom/bilibili/bangumi/api/BangumiApiResponse;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;

    :goto_10a
    if-nez v0, :cond_125

    .line 646
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->n:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$000(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    .line 647
    if-nez v0, :cond_117

    .line 648
    invoke-static {}, Lbl/bbi;->a()V

    .line 650
    :cond_117
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->c()V

    .line 728
    :cond_11a
    :goto_11a
    return-void

    .line 623
    :cond_11b
    const-string v0, "null"

    goto/16 :goto_17

    .line 624
    :cond_11f
    const-string v0, "null"

    goto/16 :goto_33

    .line 645
    :cond_123
    const/4 v0, 0x0

    goto :goto_10a

    .line 653
    :cond_125
    iget-object v1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    iget-object v0, p1, Lcom/bilibili/bangumi/api/BangumiApiResponse;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;

    # setter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->A:Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;
    invoke-static {v1, v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$102(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;)Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;

    .line 654
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->n:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$000(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    .line 655
    if-nez v0, :cond_139

    .line 656
    invoke-static {}, Lbl/bbi;->a()V

    .line 658
    :cond_139
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    .line 659
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->k:Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$200(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Landroid/view/View;

    move-result-object v0

    .line 660
    if-nez v0, :cond_147

    .line 661
    invoke-static {}, Lbl/bbi;->a()V

    .line 664
    :cond_147
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 665
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->b:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$300(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 666
    if-nez v0, :cond_156

    .line 667
    invoke-static {}, Lbl/bbi;->a()V

    .line 669
    :cond_156
    iget-object v1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->A:Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;
    invoke-static {v1}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$100(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;

    move-result-object v1

    .line 670
    if-nez v1, :cond_161

    .line 671
    invoke-static {}, Lbl/bbi;->a()V

    .line 673
    :cond_161
    iget-object v1, v1, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 674
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->c:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$400(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 675
    if-nez v0, :cond_171

    .line 676
    invoke-static {}, Lbl/bbi;->a()V

    .line 678
    :cond_171
    iget-object v1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->A:Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;
    invoke-static {v1}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$100(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;

    move-result-object v1

    .line 679
    if-nez v1, :cond_17c

    .line 680
    invoke-static {}, Lbl/bbi;->a()V

    .line 682
    :cond_17c
    invoke-static {v1}, Lbl/ads;->c(Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 683
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    .line 684
    iget-object v1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->A:Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;
    invoke-static {v1}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$100(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;

    move-result-object v1

    .line 685
    if-nez v1, :cond_190

    .line 686
    invoke-static {}, Lbl/bbi;->a()V

    .line 688
    :cond_190
    iget-object v1, v1, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->cover:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->a(Ljava/lang/String;)V

    .line 689
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->i:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$500(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 690
    if-nez v0, :cond_1a0

    .line 691
    invoke-static {}, Lbl/bbi;->a()V

    .line 693
    :cond_1a0
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 694
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->h:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$600(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 695
    if-nez v0, :cond_1ae

    .line 696
    invoke-static {}, Lbl/bbi;->a()V

    .line 698
    :cond_1ae
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 699
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->e:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$700(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 700
    if-nez v0, :cond_1bc

    .line 701
    invoke-static {}, Lbl/bbi;->a()V

    .line 703
    :cond_1bc
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 704
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->e:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$700(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 705
    if-nez v0, :cond_1cb

    .line 706
    invoke-static {}, Lbl/bbi;->a()V

    .line 708
    :cond_1cb
    iget-object v1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->A:Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;
    invoke-static {v1}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$100(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;

    move-result-object v1

    .line 709
    if-nez v1, :cond_1d6

    .line 710
    invoke-static {}, Lbl/bbi;->a()V

    .line 712
    :cond_1d6
    iget-object v1, v1, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->evaluate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 713
    invoke-direct {p0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->a()V

    .line 714
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->A:Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$100(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;

    move-result-object v0

    iget-object v0, v0, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->userStatus:Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus;

    if-eqz v0, :cond_1f7

    .line 715
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->A:Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;
    invoke-static {v1}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$100(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;

    move-result-object v1

    iget-object v1, v1, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->userStatus:Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus;

    iget-boolean v1, v1, Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus;->isFollowed:Z

    # setter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->v:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$802(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;Z)Z

    .line 717
    :cond_1f7
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->o()V

    .line 718
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->A:Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$100(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->b(Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;)V

    .line 719
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 720
    const-string v1, "BiliAccount.get(this@BangumiDetailActivity)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->A:Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$100(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->a(Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;)V

    .line 725
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->A:Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$100(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;

    move-result-object v0

    iget-object v0, v0, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->userStatus:Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus;

    if-eqz v0, :cond_11a

    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->A:Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$100(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;

    move-result-object v0

    iget-object v0, v0, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->userStatus:Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus;

    iget-object v0, v0, Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus;->watchProgress:Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus$WatchProgress;

    if-eqz v0, :cond_11a

    .line 726
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->A:Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;
    invoke-static {v1}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$100(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;

    move-result-object v1

    iget-object v1, v1, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->userStatus:Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus;

    iget-object v1, v1, Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus;->watchProgress:Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus$WatchProgress;

    iget-wide v2, v1, Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus$WatchProgress;->lastEpId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_11a
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 611
    check-cast p1, Lcom/bilibili/bangumi/api/BangumiApiResponse;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->onSuccess(Lcom/bilibili/bangumi/api/BangumiApiResponse;)V

    return-void
.end method
