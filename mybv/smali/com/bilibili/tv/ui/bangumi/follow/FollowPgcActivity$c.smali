.class final Lcom/bilibili/tv/ui/bangumi/follow/FollowPgcActivity$c;
.super Lbl/adz;
.source "FollowPgcActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/bangumi/follow/FollowPgcActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/adz",
        "<",
        "Lbl/adv;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/bangumi/api/BiliBangumiSeason;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 337
    invoke-direct {p0}, Lbl/adz;-><init>()V

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/bangumi/follow/FollowPgcActivity$c;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/follow/FollowPgcActivity$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 337
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/bangumi/follow/FollowPgcActivity$c;->a(Landroid/view/ViewGroup;I)Lbl/adv;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lbl/adv;
    .locals 1

    .prologue
    .line 349
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    const/4 v0, 0x0

    check-cast v0, Lcom/bilibili/tv/ui/bangumi/follow/FollowPgcActivity$d;

    sget-object v0, Lcom/bilibili/tv/ui/bangumi/follow/FollowPgcActivity$d;->Companion:Lcom/bilibili/tv/ui/bangumi/follow/FollowPgcActivity$d$a;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/bangumi/follow/FollowPgcActivity$d$a;->a(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/bangumi/follow/FollowPgcActivity$d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    .prologue
    .line 337
    check-cast p1, Lbl/adv;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/bangumi/follow/FollowPgcActivity$c;->a(Lbl/adv;I)V

    return-void
.end method

.method public a(Lbl/adv;I)V
    .locals 4

    .prologue
    .line 356
    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    instance-of v0, p1, Lcom/bilibili/tv/ui/bangumi/follow/FollowPgcActivity$d;

    if-eqz v0, :cond_51

    .line 358
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/follow/FollowPgcActivity$c;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/bangumi/api/BiliBangumiSeason;

    .line 359
    iget-object v1, v0, Lcom/bilibili/bangumi/api/BiliBangumiSeason;->mCover:Ljava/lang/String;

    if-eqz v1, :cond_2d

    .line 360
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v2

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v1

    iget-object v3, v0, Lcom/bilibili/bangumi/api/BiliBangumiSeason;->mCover:Ljava/lang/String;

    invoke-static {v1, v3}, Lbl/abd;->get_thumb_url_b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    check-cast v1, Lcom/bilibili/tv/ui/bangumi/follow/FollowPgcActivity$d;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/bangumi/follow/FollowPgcActivity$d;->z()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 362
    :cond_2d
    iget-object v1, v0, Lcom/bilibili/bangumi/api/BiliBangumiSeason;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_3d

    move-object v1, p1

    .line 363
    check-cast v1, Lcom/bilibili/tv/ui/bangumi/follow/FollowPgcActivity$d;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/bangumi/follow/FollowPgcActivity$d;->A()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lcom/bilibili/bangumi/api/BiliBangumiSeason;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    :cond_3d
    iget-object v1, p1, Lbl/adv;->a:Landroid/view/View;

    .line 366
    const v2, 0x7f0800d8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 367
    const-string v2, "itemView"

    invoke-static {v1, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 370
    :cond_51
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/bilibili/bangumi/api/BiliBangumiSeason;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 378
    const-string v0, "biliBangumiSeasons"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/follow/FollowPgcActivity$c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 380
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/bangumi/follow/FollowPgcActivity$c;->d()V

    .line 381
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/bilibili/bangumi/api/BiliBangumiSeason;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 384
    const-string v0, "biliBangumiSeasons"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/follow/FollowPgcActivity$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 386
    iget-object v1, p0, Lcom/bilibili/tv/ui/bangumi/follow/FollowPgcActivity$c;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 387
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/bangumi/follow/FollowPgcActivity$c;->d(I)V

    .line 388
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x0

    return v0
.end method
