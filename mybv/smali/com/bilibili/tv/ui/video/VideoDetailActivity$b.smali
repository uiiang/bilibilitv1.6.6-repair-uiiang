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
    .line 3489
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$b;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {p0}, Lbl/adz;-><init>()V

    .line 3490
    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$b;->b:Ljava/util/List;

    .line 3491
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 3528
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$b;->b:Ljava/util/List;

    .line 3529
    if-eqz v0, :cond_9

    .line 3530
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3532
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 3495
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3496
    sget-object v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$c$a;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$c$a;->a(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 3501
    const-string v0, "holder"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3502
    instance-of v0, p1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;

    if-nez v0, :cond_48

    move-object v0, v1

    .line 3505
    :goto_c
    check-cast v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;

    .line 3506
    if-eqz v0, :cond_3d

    .line 3507
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$b;->b:Ljava/util/List;

    .line 3508
    if-eqz v2, :cond_18

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    :cond_18
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;->b(Ljava/lang/Object;)V

    .line 3509
    iget-object v1, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;->a:Landroid/view/View;

    .line 3510
    if-eqz v1, :cond_3d

    .line 3511
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$b;->b:Ljava/util/List;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3512
    :goto_29
    if-nez p2, :cond_40

    .line 3513
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 3517
    :goto_32
    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_44

    .line 3518
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 3524
    :cond_3d
    :goto_3d
    return-void

    .line 3511
    :cond_3e
    const/4 v0, 0x0

    goto :goto_29

    .line 3515
    :cond_40
    invoke-virtual {v1, v3}, Landroid/view/View;->setNextFocusLeftId(I)V

    goto :goto_32

    .line 3520
    :cond_44
    invoke-virtual {v1, v3}, Landroid/view/View;->setNextFocusRightId(I)V

    goto :goto_3d

    :cond_48
    move-object v0, p1

    goto :goto_c
.end method

.method public e()I
    .locals 1

    .prologue
    .line 3481
    const/4 v0, 0x0

    return v0
.end method
