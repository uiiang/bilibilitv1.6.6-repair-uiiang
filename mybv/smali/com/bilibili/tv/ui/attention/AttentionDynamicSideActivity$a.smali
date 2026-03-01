.class public Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;
.super Lbl/adz;
.source "AttentionDynamicSideActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;
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
            "Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:J

.field private e:Z

.field private uperItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 320
    invoke-direct {p0}, Lbl/adz;-><init>()V

    .line 321
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->a:Ljava/lang/ref/WeakReference;

    .line 322
    iput-object p2, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->uperItems:Ljava/util/List;

    .line 323
    return-void
.end method

.method static synthetic access$1002(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;I)I
    .locals 0

    .prologue
    .line 308
    iput p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->c:I

    return p1
.end method

.method static synthetic access$700(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->a:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;)Z
    .locals 1

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->e:Z

    return v0
.end method

.method static synthetic access$900(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;)J
    .locals 2

    .prologue
    .line 308
    iget-wide v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->d:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;J)J
    .locals 1

    .prologue
    .line 308
    iput-wide p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->d:J

    return-wide p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->uperItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 327
    invoke-static {p1}, Lbl/agf;->a(Landroid/view/ViewGroup;)Lbl/agf;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 5

    .prologue
    .line 332
    instance-of v0, p1, Lbl/agf;

    if-eqz v0, :cond_3f

    .line 333
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->uperItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;

    move-object v1, p1

    .line 335
    check-cast v1, Lbl/agf;

    .line 336
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 337
    iget-object v2, v1, Lbl/agf;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
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

    new-instance v2, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a$1;

    invoke-direct {v2, p0, p1, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a$1;-><init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;Landroid/support/v7/widget/RecyclerView$v;Lbl/agf;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 395
    :cond_3f
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 403
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->e:Z

    .line 404
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 407
    iget v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->c:I

    return v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 412
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    .line 413
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 419
    :cond_10
    :goto_10
    return-void

    .line 416
    :cond_11
    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->uperItems:Ljava/util/List;

    if-eqz v1, :cond_10

    iget v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->c:I

    iget-object v2, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->uperItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_10

    .line 417
    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->uperItems:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->c:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;

    # invokes: Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->showVideoList(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->access$1100(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;)V

    goto :goto_10
.end method
