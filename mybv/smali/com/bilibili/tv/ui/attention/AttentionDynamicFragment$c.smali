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
    .line 702
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 699
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a:Ljava/util/List;

    .line 703
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->uperName:Ljava/lang/String;

    .line 704
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 698
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a(Landroid/view/ViewGroup;I)Lbl/adv;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lbl/adv;
    .locals 1

    .prologue
    .line 709
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 710
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
    .line 698
    check-cast p1, Lbl/adv;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a(Lbl/adv;I)V

    return-void
.end method

.method public a(Lbl/adv;I)V
    .locals 6

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 715
    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 716
    instance-of v0, p1, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;

    if-eqz v0, :cond_d2

    move-object v0, p1

    .line 717
    check-cast v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;

    .line 718
    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    .line 719
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->A()Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 720
    iget-object v2, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->authorName:Ljava/lang/String;

    if-eqz v2, :cond_d3

    iget-object v2, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->authorName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d3

    .line 721
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->B()Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->authorName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 722
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->B()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 726
    :goto_3c
    iget-object v2, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->playStr:Ljava/lang/String;

    if-eqz v2, :cond_dc

    iget-object v2, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->playStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_dc

    .line 727
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->C()Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->playStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 731
    :goto_51
    iget-object v2, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmakuStr:Ljava/lang/String;

    if-eqz v2, :cond_e7

    iget-object v2, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmakuStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e7

    .line 732
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->F()Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmakuStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 733
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->F()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 737
    :goto_6d
    iget-object v2, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->pubTimeStr:Ljava/lang/String;

    if-eqz v2, :cond_f0

    iget-object v2, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->pubTimeStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f0

    .line 738
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->D()Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->pubTimeStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 739
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->D()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 743
    :goto_89
    iget-object v2, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->durationStr:Ljava/lang/String;

    if-eqz v2, :cond_9e

    iget-object v2, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->durationStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9e

    .line 744
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->E()Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->durationStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 746
    :cond_9e
    iget-object v2, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    if-eqz v2, :cond_b7

    .line 747
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

    .line 749
    :cond_b7
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->G()Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->badgeText:Ljava/lang/String;

    iget-object v3, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->badgeBgColor:Ljava/lang/String;

    invoke-static {v0, v2, v3, v5}, Lcom/bilibili/tv/ui/video/widget/VideoBadgeStyler;->apply(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 750
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    .line 751
    const-string v2, "viewHolder.itemView"

    invoke-static {v0, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 752
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 753
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 754
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 756
    :cond_d2
    return-void

    .line 724
    :cond_d3
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->B()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3c

    .line 729
    :cond_dc
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->C()Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_51

    .line 735
    :cond_e7
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->F()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6d

    .line 741
    :cond_f0
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->D()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_89
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
    .line 764
    const-string v0, "list"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 765
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 766
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 767
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->d(I)V

    .line 768
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
    .line 771
    const-string v0, "list"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 773
    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 774
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->d(I)V

    .line 775
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 779
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 780
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 781
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 782
    const-string v2, "v.context"

    invoke-static {v1, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 783
    invoke-static {v1}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 784
    if-nez v1, :cond_19

    .line 792
    :cond_18
    :goto_18
    return-void

    .line 787
    :cond_19
    instance-of v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    if-eqz v2, :cond_18

    .line 788
    check-cast v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    .line 789
    iget-wide v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->aid:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_35

    iget-wide v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->aid:J

    .line 790
    :goto_29
    sget-object v4, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    iget-object v0, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    invoke-virtual {v4, v1, v2, v3, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_18

    .line 789
    :cond_35
    iget-object v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->param:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_29
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 796
    instance-of v0, p1, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    if-eqz v0, :cond_9

    .line 797
    check-cast p1, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {p1, p2}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setUpEnabled(Z)V

    .line 799
    :cond_9
    return-void
.end method
