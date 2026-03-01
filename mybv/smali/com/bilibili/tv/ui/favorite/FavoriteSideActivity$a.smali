.class public Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;
.super Lbl/adz;
.source "FavoriteSideActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/adz",
        "<",
        "Landroid/support/v7/widget/RecyclerView$v;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:J

.field private e:Z

.field private folders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbl/FavoriteFolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;",
            "Ljava/util/List",
            "<",
            "Lbl/FavoriteFolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 335
    invoke-direct {p0}, Lbl/adz;-><init>()V

    .line 336
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->a:Ljava/lang/ref/WeakReference;

    .line 337
    iput-object p2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->folders:Ljava/util/List;

    .line 338
    return-void
.end method

.method static synthetic access$1002(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;I)I
    .locals 0

    .prologue
    .line 323
    iput p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->c:I

    return p1
.end method

.method static synthetic access$700(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->a:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;)Z
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->e:Z

    return v0
.end method

.method static synthetic access$900(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;)J
    .locals 2

    .prologue
    .line 323
    iget-wide v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->d:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;J)J
    .locals 1

    .prologue
    .line 323
    iput-wide p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->d:J

    return-wide p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 342
    invoke-static {p1}, Lbl/agf;->a(Landroid/view/ViewGroup;)Lbl/agf;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 5

    .prologue
    .line 347
    instance-of v0, p1, Lbl/agf;

    if-eqz v0, :cond_3f

    .line 348
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->folders:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/FavoriteFolder;

    move-object v1, p1

    .line 350
    check-cast v1, Lbl/agf;

    .line 351
    invoke-interface {v0}, Lbl/FavoriteFolder;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 352
    iget-object v2, v1, Lbl/agf;->n:Landroid/widget/TextView;

    invoke-interface {v0}, Lbl/FavoriteFolder;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    :cond_1e
    iget-object v2, v1, Lbl/agf;->n:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 357
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    const v3, 0x7f0800d8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 358
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 360
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    new-instance v2, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a$1;

    invoke-direct {v2, p0, p1, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a$1;-><init>(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;Landroid/support/v7/widget/RecyclerView$v;Lbl/agf;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 395
    :cond_3f
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 403
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->e:Z

    .line 404
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x0

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 407
    iget v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->c:I

    return v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 412
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;

    .line 413
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 419
    :cond_10
    :goto_10
    return-void

    .line 416
    :cond_11
    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->folders:Ljava/util/List;

    if-eqz v1, :cond_10

    iget v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->c:I

    iget-object v2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->folders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_10

    .line 417
    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->folders:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->c:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbl/FavoriteFolder;

    # invokes: Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->showVideoList(Lbl/FavoriteFolder;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->access$1100(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;Lbl/FavoriteFolder;)V

    goto :goto_10
.end method
