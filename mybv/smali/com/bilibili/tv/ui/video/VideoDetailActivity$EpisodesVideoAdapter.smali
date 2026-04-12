.class final Lcom/bilibili/tv/ui/video/VideoDetailActivity$EpisodesVideoAdapter;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "VideoDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EpisodesVideoAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Landroid/support/v7/widget/RecyclerView$v;",
        ">;"
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

.field final synthetic this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;


# direct methods
.method public constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V
    .locals 1

    .prologue
    .line 3707
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EpisodesVideoAdapter;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 3705
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EpisodesVideoAdapter;->data:Ljava/util/List;

    .line 3708
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 3751
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EpisodesVideoAdapter;->data:Ljava/util/List;

    .line 3752
    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3753
    :cond_a
    const/4 v0, 0x0

    .line 3755
    :goto_b
    return v0

    :cond_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_b
.end method

.method public a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 3712
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3713
    sget-object v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$f$a;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f$a;->a(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 3718
    const-string v0, "holder"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3719
    instance-of v0, p1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;

    if-nez v0, :cond_5b

    move-object v0, v1

    .line 3722
    :goto_d
    check-cast v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;

    .line 3723
    if-eqz v0, :cond_50

    .line 3724
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EpisodesVideoAdapter;->data:Ljava/util/List;

    .line 3725
    if-eqz v3, :cond_19

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    :cond_19
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->b(Ljava/lang/Object;)V

    .line 3727
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getIndexBadgeView()Landroid/widget/TextView;

    move-result-object v1

    .line 3728
    if-eqz v1, :cond_2e

    .line 3729
    add-int/lit8 v3, p2, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3730
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3732
    :cond_2e
    iget-object v1, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->a:Landroid/view/View;

    .line 3733
    if-eqz v1, :cond_50

    .line 3734
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EpisodesVideoAdapter;->data:Ljava/util/List;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EpisodesVideoAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3735
    :goto_3c
    if-nez p2, :cond_53

    .line 3736
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 3740
    :goto_45
    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_57

    .line 3741
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 3747
    :cond_50
    :goto_50
    return-void

    :cond_51
    move v0, v2

    .line 3734
    goto :goto_3c

    .line 3738
    :cond_53
    invoke-virtual {v1, v4}, Landroid/view/View;->setNextFocusLeftId(I)V

    goto :goto_45

    .line 3743
    :cond_57
    invoke-virtual {v1, v4}, Landroid/view/View;->setNextFocusRightId(I)V

    goto :goto_50

    :cond_5b
    move-object v0, p1

    goto :goto_d
.end method

.method public final setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3759
    const-string v0, "list"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3760
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EpisodesVideoAdapter;->data:Ljava/util/List;

    .line 3761
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EpisodesVideoAdapter;->d()V

    .line 3762
    return-void
.end method
