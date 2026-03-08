.class public Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;
.super Lbl/adz;
.source "AuthSpaceSideActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuAdapter"
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
.field private activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;",
            ">;"
        }
    .end annotation
.end field

.field private disabled:Z

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private selectedPos:I


# direct methods
.method public constructor <init>(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 259
    invoke-direct {p0}, Lbl/adz;-><init>()V

    .line 260
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;->activityRef:Ljava/lang/ref/WeakReference;

    .line 261
    iput-object p2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;->items:Ljava/util/List;

    .line 262
    return-void
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;->activityRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;)Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;->disabled:Z

    return v0
.end method

.method static synthetic access$502(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;Z)Z
    .locals 0

    .prologue
    .line 253
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;->disabled:Z

    return p1
.end method

.method static synthetic access$602(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;I)I
    .locals 0

    .prologue
    .line 253
    iput p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;->selectedPos:I

    return p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 271
    invoke-static {p1}, Lbl/agf;->a(Landroid/view/ViewGroup;)Lbl/agf;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 5

    .prologue
    .line 276
    instance-of v0, p1, Lbl/agf;

    if-eqz v0, :cond_3b

    .line 277
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;

    move-object v1, p1

    .line 278
    check-cast v1, Lbl/agf;

    .line 279
    iget-object v2, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;->name:Ljava/lang/String;

    if-eqz v2, :cond_1a

    .line 280
    iget-object v2, v1, Lbl/agf;->n:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    :cond_1a
    iget-object v2, v1, Lbl/agf;->n:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 282
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 283
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    const v3, 0x7f0800d8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 284
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    new-instance v3, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter$1;

    invoke-direct {v3, p0, v1, p1, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter$1;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;Lbl/agf;Landroid/support/v7/widget/RecyclerView$v;Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 318
    :cond_3b
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 326
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;->disabled:Z

    .line 327
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .locals 7

    .prologue
    .line 331
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    .line 332
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 361
    :cond_10
    :goto_10
    return-void

    .line 334
    :cond_11
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;->items:Ljava/util/List;

    if-eqz v1, :cond_10

    iget v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;->selectedPos:I

    iget-object v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_10

    .line 337
    :try_start_1f
    iget-boolean v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;->disabled:Z

    if-nez v1, :cond_10

    .line 339
    # invokes: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->j()Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$800(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v4

    .line 340
    const/4 v2, 0x0

    .line 341
    if-eqz v4, :cond_70

    .line 342
    const/4 v1, 0x0

    move v3, v1

    :goto_2c
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v3, v1, :cond_70

    .line 343
    invoke-virtual {v4, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 344
    invoke-virtual {v4, v1}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)I

    move-result v5

    iget v6, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;->selectedPos:I

    if-ne v5, v6, :cond_6c

    .line 350
    :goto_3e
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 352
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 353
    instance-of v2, v1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    if-eqz v2, :cond_5c

    .line 354
    check-cast v1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    .line 355
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->isLoading()Z

    move-result v1

    if-nez v1, :cond_10

    .line 358
    :cond_5c
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;->items:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;->selectedPos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;

    # invokes: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->showVideoList(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$700(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_69} :catch_6a

    goto :goto_10

    .line 359
    :catch_6a
    move-exception v0

    goto :goto_10

    .line 342
    :cond_6c
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2c

    :cond_70
    move-object v1, v2

    goto :goto_3e
.end method
