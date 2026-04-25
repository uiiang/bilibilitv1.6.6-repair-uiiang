.class final Lcom/bilibili/tv/ui/video/VideoDetailActivity$b;
.super Lbl/adz;
.source "VideoDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/adz",
        "<",
        "Landroid/support/v7/widget/RecyclerView$v;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;


# direct methods
.method public constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3893
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$b;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {p0}, Lbl/adz;-><init>()V

    .line 3894
    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$b;->b:Ljava/util/List;

    .line 3895
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 3938
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$b;->b:Ljava/util/List;

    .line 3939
    if-eqz v0, :cond_9

    .line 3940
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3942
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 3899
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3900
    sget-object v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$c$a;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$c$a;->a(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 3905
    const-string v0, "holder"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3906
    instance-of v0, p1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;

    if-nez v0, :cond_5b

    move-object v0, v1

    .line 3909
    :goto_d
    check-cast v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;

    .line 3910
    if-eqz v0, :cond_50

    .line 3911
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$b;->b:Ljava/util/List;

    .line 3912
    if-eqz v3, :cond_19

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    :cond_19
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;->b(Ljava/lang/Object;)V

    .line 3914
    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;->indexBadge:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;->access$4900(Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;)Landroid/widget/TextView;

    move-result-object v1

    .line 3915
    if-eqz v1, :cond_2e

    .line 3916
    add-int/lit8 v3, p2, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3917
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3919
    :cond_2e
    iget-object v1, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;->a:Landroid/view/View;

    .line 3920
    if-eqz v1, :cond_50

    .line 3921
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$b;->b:Ljava/util/List;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3922
    :goto_3c
    if-nez p2, :cond_53

    .line 3923
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 3927
    :goto_45
    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_57

    .line 3928
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 3934
    :cond_50
    :goto_50
    return-void

    :cond_51
    move v0, v2

    .line 3921
    goto :goto_3c

    .line 3925
    :cond_53
    invoke-virtual {v1, v4}, Landroid/view/View;->setNextFocusLeftId(I)V

    goto :goto_45

    .line 3930
    :cond_57
    invoke-virtual {v1, v4}, Landroid/view/View;->setNextFocusRightId(I)V

    goto :goto_50

    :cond_5b
    move-object v0, p1

    goto :goto_d
.end method

.method public e()I
    .locals 1

    .prologue
    .line 3885
    const/4 v0, 0x0

    return v0
.end method
