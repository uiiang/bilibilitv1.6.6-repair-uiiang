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
    .line 613
    iput-object p1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    invoke-direct {p0}, Lbl/vm;-><init>()V

    .line 614
    return-void
.end method

.method private final a()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 743
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->g:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$900(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 744
    if-nez v0, :cond_d

    .line 745
    invoke-static {}, Lbl/bbi;->a()V

    .line 747
    :cond_d
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 748
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->f:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$1000(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 749
    if-nez v0, :cond_1b

    .line 750
    invoke-static {}, Lbl/bbi;->a()V

    .line 752
    :cond_1b
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 753
    return-void
.end method

.method private final a(Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 760
    if-eqz p1, :cond_7

    iget-object v0, p1, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->episodes:Ljava/util/List;

    if-nez v0, :cond_b

    :cond_7
    move v0, v1

    :goto_8
    if-nez v0, :cond_10

    .line 782
    :cond_a
    :goto_a
    return-void

    .line 760
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_8

    .line 763
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

    .line 764
    :goto_20
    if-eqz p1, :cond_26

    iget-object v0, p1, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->userStatus:Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus;

    if-nez v0, :cond_64

    :cond_26
    move v0, v1

    .line 765
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

    .line 766
    :cond_3a
    if-eqz v0, :cond_67

    .line 767
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->H:Lcom/bilibili/tv/widget/DrawTextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$1100(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/tv/widget/DrawTextView;

    move-result-object v0

    .line 768
    if-eqz v0, :cond_50

    .line 769
    iget-object v2, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    const v3, 0x7f0c005b

    invoke-virtual {v2, v3}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawTextView;->setText(Ljava/lang/CharSequence;)V

    .line 777
    :cond_50
    :goto_50
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->H:Lcom/bilibili/tv/widget/DrawTextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$1100(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/tv/widget/DrawTextView;

    move-result-object v0

    .line 778
    if-eqz v0, :cond_a

    .line 779
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setVisibility(I)V

    goto :goto_a

    .line 763
    :cond_5c
    iget v0, v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->status:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v2, v0

    goto :goto_20

    .line 764
    :cond_64
    iget-boolean v0, v0, Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus;->isPaid:Z

    goto :goto_27

    .line 772
    :cond_67
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->H:Lcom/bilibili/tv/widget/DrawTextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$1100(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/tv/widget/DrawTextView;

    move-result-object v0

    .line 773
    if-eqz v0, :cond_50

    .line 774
    iget-object v2, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    const v3, 0x7f0c005a

    invoke-virtual {v2, v3}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_50
.end method

.method private final b(Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;)V
    .locals 12

    .prologue
    const v3, 0x7f080031

    const/4 v4, 0x0

    .line 786
    invoke-static {p1}, Lbl/ads;->b(Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 787
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->l:Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$1200(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Landroid/view/View;

    move-result-object v0

    .line 788
    if-nez v0, :cond_15

    .line 789
    invoke-static {}, Lbl/bbi;->a()V

    .line 791
    :cond_15
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 792
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->C:Lcom/bilibili/tv/widget/DrawTextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$1300(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/tv/widget/DrawTextView;

    move-result-object v0

    .line 793
    if-nez v0, :cond_25

    .line 794
    invoke-static {}, Lbl/bbi;->a()V

    .line 796
    :cond_25
    const v1, 0x7f0c0055

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setText(I)V

    .line 797
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->C:Lcom/bilibili/tv/widget/DrawTextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$1300(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/tv/widget/DrawTextView;

    move-result-object v0

    .line 798
    if-nez v0, :cond_36

    .line 799
    invoke-static {}, Lbl/bbi;->a()V

    .line 801
    :cond_36
    iget-object v1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setTextColor(I)V

    .line 802
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->m:Lcom/bilibili/tv/widget/DrawTextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$1400(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/tv/widget/DrawTextView;

    move-result-object v0

    .line 803
    if-nez v0, :cond_51

    .line 804
    invoke-static {}, Lbl/bbi;->a()V

    .line 806
    :cond_51
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawTextView;->requestFocus()Z

    .line 807
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->G:Lcom/bilibili/tv/widget/DrawTextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$1500(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/tv/widget/DrawTextView;

    move-result-object v0

    .line 808
    if-nez v0, :cond_5f

    .line 809
    invoke-static {}, Lbl/bbi;->a()V

    .line 811
    :cond_5f
    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawTextView;->setNextFocusUpId(I)V

    .line 812
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->G:Lcom/bilibili/tv/widget/DrawTextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$1500(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/tv/widget/DrawTextView;

    move-result-object v0

    .line 813
    if-nez v0, :cond_6d

    .line 814
    invoke-static {}, Lbl/bbi;->a()V

    .line 816
    :cond_6d
    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawTextView;->setNextFocusRightId(I)V

    .line 817
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->G:Lcom/bilibili/tv/widget/DrawTextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$1500(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/tv/widget/DrawTextView;

    move-result-object v0

    .line 818
    if-nez v0, :cond_7b

    .line 819
    invoke-static {}, Lbl/bbi;->a()V

    .line 821
    :cond_7b
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setNextFocusDownId(I)V

    .line 822
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->m:Lcom/bilibili/tv/widget/DrawTextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$1400(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/tv/widget/DrawTextView;

    move-result-object v0

    .line 823
    if-nez v0, :cond_8a

    .line 824
    invoke-static {}, Lbl/bbi;->a()V

    .line 826
    :cond_8a
    const v1, 0x7f080026

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setNextFocusRightId(I)V

    .line 891
    :goto_90
    return-void

    .line 829
    :cond_91
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->l:Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$1200(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Landroid/view/View;

    move-result-object v0

    .line 830
    if-nez v0, :cond_9c

    .line 831
    invoke-static {}, Lbl/bbi;->a()V

    .line 833
    :cond_9c
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 834
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    .line 835
    if-nez p1, :cond_a6

    .line 836
    invoke-static {}, Lbl/bbi;->a()V

    .line 838
    :cond_a6
    iget-object v1, p1, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->episodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    # setter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->x:I
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$1602(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;I)I

    .line 839
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->x:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$1600(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)I

    move-result v0

    invoke-static {v0}, Lbl/abx;->b(I)Lbl/abx$b;

    move-result-object v9

    .line 840
    iget v10, v9, Lbl/abx$b;->c:I

    .line 841
    :goto_bb
    if-ge v4, v10, :cond_fb

    .line 842
    iget v0, v9, Lbl/abx$b;->b:I

    mul-int v6, v4, v0

    .line 843
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->p:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$1700(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Ljava/util/List;

    move-result-object v11

    .line 844
    if-nez v11, :cond_cc

    .line 845
    invoke-static {}, Lbl/bbi;->a()V

    .line 847
    :cond_cc
    sget-object v0, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;->Companion:Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$a;

    .line 848
    iget-object v1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->a:Ljava/lang/String;
    invoke-static {v1}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$1800(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Ljava/lang/String;

    move-result-object v3

    .line 849
    if-nez v3, :cond_d9

    .line 850
    invoke-static {}, Lbl/bbi;->a()V

    .line 852
    :cond_d9
    iget-object v1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->A:Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;
    invoke-static {v1}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$100(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;

    move-result-object v5

    .line 853
    if-nez v5, :cond_e4

    .line 854
    invoke-static {}, Lbl/bbi;->a()V

    .line 856
    :cond_e4
    iget-object v2, v5, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->title:Ljava/lang/String;

    .line 857
    iget-object v1, p1, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->episodes:Ljava/util/List;

    iget v5, v5, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->seasonType:I

    iget v7, v9, Lbl/abx$b;->b:I

    add-int/2addr v7, v6

    iget-object v8, p1, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->userStatus:Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus;

    iget-boolean v8, v8, Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus;->isPaid:Z

    invoke-virtual/range {v0 .. v8}, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$a;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IIIIZ)Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 841
    add-int/lit8 v4, v4, 0x1

    goto :goto_bb

    .line 859
    :cond_fb
    iget v0, v9, Lbl/abx$b;->c:I

    iget v1, v9, Lbl/abx$b;->b:I

    mul-int v6, v0, v1

    .line 860
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->x:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$1600(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)I

    move-result v0

    if-ge v6, v0, :cond_145

    .line 861
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->p:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$1700(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Ljava/util/List;

    move-result-object v10

    .line 862
    if-nez v10, :cond_114

    .line 863
    invoke-static {}, Lbl/bbi;->a()V

    .line 865
    :cond_114
    sget-object v0, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;->Companion:Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$a;

    .line 866
    iget-object v1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->a:Ljava/lang/String;
    invoke-static {v1}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$1800(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Ljava/lang/String;

    move-result-object v3

    .line 867
    if-nez v3, :cond_121

    .line 868
    invoke-static {}, Lbl/bbi;->a()V

    .line 870
    :cond_121
    iget v4, v9, Lbl/abx$b;->c:I

    .line 871
    iget-object v1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->A:Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;
    invoke-static {v1}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$100(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;

    move-result-object v5

    .line 872
    if-nez v5, :cond_12e

    .line 873
    invoke-static {}, Lbl/bbi;->a()V

    .line 875
    :cond_12e
    iget-object v2, v5, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->title:Ljava/lang/String;

    .line 876
    iget-object v1, p1, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->episodes:Ljava/util/List;

    iget v5, v5, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->seasonType:I

    iget-object v7, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->x:I
    invoke-static {v7}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$1600(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)I

    move-result v7

    iget-object v8, p1, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->userStatus:Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus;

    iget-boolean v8, v8, Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus;->isPaid:Z

    invoke-virtual/range {v0 .. v8}, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$a;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IIIIZ)Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 878
    :cond_145
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->o:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$b;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$1900(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$b;

    move-result-object v0

    .line 879
    if-nez v0, :cond_150

    .line 880
    invoke-static {}, Lbl/bbi;->a()V

    .line 882
    :cond_150
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$b;->notifyDataSetChanged()V

    .line 883
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->t:Lcom/bilibili/tv/widget/PagerSlidingTabStrip;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$2000(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/tv/widget/PagerSlidingTabStrip;

    move-result-object v0

    .line 884
    if-nez v0, :cond_15e

    .line 885
    invoke-static {}, Lbl/bbi;->a()V

    .line 887
    :cond_15e
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/PagerSlidingTabStrip;->a()V

    .line 888
    iget-object v1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    .line 889
    iget-object v0, p1, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->userStatus:Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus;

    .line 890
    if-eqz v0, :cond_16b

    iget-object v0, v0, Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus;->watchProgress:Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus$WatchProgress;

    if-nez v0, :cond_171

    :cond_16b
    const/4 v0, 0x0

    :goto_16c
    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_90

    :cond_171
    iget-object v0, v0, Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus$WatchProgress;->lastEpIndex:Ljava/lang/String;

    goto :goto_16c
.end method


# virtual methods
.method public isCancel()Z
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->isFinishing()Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 733
    const-string v0, "t"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 734
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    invoke-virtual {v0, p1, v1}, Lbl/adl;->a(Ljava/lang/Throwable;Landroid/app/Activity;)V

    .line 735
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->n:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$000(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    .line 736
    if-nez v0, :cond_17

    .line 737
    invoke-static {}, Lbl/bbi;->a()V

    .line 739
    :cond_17
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/base/LoadingImageView;->setRefreshError(Z)V

    .line 740
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

    .line 624
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

    .line 625
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

    .line 627
    if-eqz p1, :cond_104

    iget-object v0, p1, Lcom/bilibili/bangumi/api/BangumiApiResponse;->result:Ljava/lang/Object;

    if-eqz v0, :cond_104

    .line 628
    iget-object v0, p1, Lcom/bilibili/bangumi/api/BangumiApiResponse;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;

    .line 629
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

    .line 630
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

    .line 632
    iget-object v1, v0, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->userStatus:Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus;

    if-eqz v1, :cond_e2

    .line 633
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

    .line 634
    iget-object v1, v0, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->userStatus:Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus;

    iget-object v1, v1, Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus;->watchProgress:Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus$WatchProgress;

    if-eqz v1, :cond_e2

    .line 635
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

    .line 641
    :cond_e2
    iget-object v1, v0, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->episodes:Ljava/util/List;

    if-eqz v1, :cond_104

    .line 642
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

    .line 646
    :cond_104
    if-eqz p1, :cond_123

    iget-object v0, p1, Lcom/bilibili/bangumi/api/BangumiApiResponse;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;

    :goto_10a
    if-nez v0, :cond_125

    .line 647
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->n:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$000(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    .line 648
    if-nez v0, :cond_117

    .line 649
    invoke-static {}, Lbl/bbi;->a()V

    .line 651
    :cond_117
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->c()V

    .line 729
    :cond_11a
    :goto_11a
    return-void

    .line 624
    :cond_11b
    const-string v0, "null"

    goto/16 :goto_17

    .line 625
    :cond_11f
    const-string v0, "null"

    goto/16 :goto_33

    .line 646
    :cond_123
    const/4 v0, 0x0

    goto :goto_10a

    .line 654
    :cond_125
    iget-object v1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    iget-object v0, p1, Lcom/bilibili/bangumi/api/BangumiApiResponse;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;

    # setter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->A:Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;
    invoke-static {v1, v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$102(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;)Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;

    .line 655
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->n:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$000(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    .line 656
    if-nez v0, :cond_139

    .line 657
    invoke-static {}, Lbl/bbi;->a()V

    .line 659
    :cond_139
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    .line 660
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->k:Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$200(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Landroid/view/View;

    move-result-object v0

    .line 661
    if-nez v0, :cond_147

    .line 662
    invoke-static {}, Lbl/bbi;->a()V

    .line 665
    :cond_147
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 666
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->b:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$300(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 667
    if-nez v0, :cond_156

    .line 668
    invoke-static {}, Lbl/bbi;->a()V

    .line 670
    :cond_156
    iget-object v1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->A:Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;
    invoke-static {v1}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$100(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;

    move-result-object v1

    .line 671
    if-nez v1, :cond_161

    .line 672
    invoke-static {}, Lbl/bbi;->a()V

    .line 674
    :cond_161
    iget-object v1, v1, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 675
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->c:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$400(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 676
    if-nez v0, :cond_171

    .line 677
    invoke-static {}, Lbl/bbi;->a()V

    .line 679
    :cond_171
    iget-object v1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->A:Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;
    invoke-static {v1}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$100(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;

    move-result-object v1

    .line 680
    if-nez v1, :cond_17c

    .line 681
    invoke-static {}, Lbl/bbi;->a()V

    .line 683
    :cond_17c
    invoke-static {v1}, Lbl/ads;->c(Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 684
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    .line 685
    iget-object v1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->A:Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;
    invoke-static {v1}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$100(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;

    move-result-object v1

    .line 686
    if-nez v1, :cond_190

    .line 687
    invoke-static {}, Lbl/bbi;->a()V

    .line 689
    :cond_190
    iget-object v1, v1, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->cover:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->a(Ljava/lang/String;)V

    .line 690
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->i:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$500(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 691
    if-nez v0, :cond_1a0

    .line 692
    invoke-static {}, Lbl/bbi;->a()V

    .line 694
    :cond_1a0
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 695
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->h:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$600(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 696
    if-nez v0, :cond_1ae

    .line 697
    invoke-static {}, Lbl/bbi;->a()V

    .line 699
    :cond_1ae
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 700
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->e:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$700(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 701
    if-nez v0, :cond_1bc

    .line 702
    invoke-static {}, Lbl/bbi;->a()V

    .line 704
    :cond_1bc
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 705
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->e:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$700(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 706
    if-nez v0, :cond_1cb

    .line 707
    invoke-static {}, Lbl/bbi;->a()V

    .line 709
    :cond_1cb
    iget-object v1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->A:Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;
    invoke-static {v1}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$100(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;

    move-result-object v1

    .line 710
    if-nez v1, :cond_1d6

    .line 711
    invoke-static {}, Lbl/bbi;->a()V

    .line 713
    :cond_1d6
    iget-object v1, v1, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->evaluate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 714
    invoke-direct {p0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->a()V

    .line 715
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->A:Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$100(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;

    move-result-object v0

    iget-object v0, v0, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->userStatus:Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus;

    if-eqz v0, :cond_1f7

    .line 716
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->A:Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;
    invoke-static {v1}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$100(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;

    move-result-object v1

    iget-object v1, v1, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->userStatus:Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus;

    iget-boolean v1, v1, Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus;->isFollowed:Z

    # setter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->v:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$802(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;Z)Z

    .line 718
    :cond_1f7
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->o()V

    .line 719
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->A:Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$100(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->b(Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;)V

    .line 720
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 721
    const-string v1, "BiliAccount.get(this@BangumiDetailActivity)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 725
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->A:Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$100(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->a(Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;)V

    .line 726
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

    .line 727
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
    .line 612
    check-cast p1, Lcom/bilibili/bangumi/api/BangumiApiResponse;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$e;->onSuccess(Lcom/bilibili/bangumi/api/BangumiApiResponse;)V

    return-void
.end method
