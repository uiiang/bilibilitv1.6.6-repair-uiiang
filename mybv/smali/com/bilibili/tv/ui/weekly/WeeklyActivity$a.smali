.class public Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;
.super Lbl/adz;
.source "WeeklyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/weekly/WeeklyActivity;
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
            "Lcom/bilibili/tv/ui/weekly/WeeklyActivity;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:J

.field private e:Z

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/weekly/WeeklyActivity$WeeklyItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bilibili/tv/ui/weekly/WeeklyActivity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bilibili/tv/ui/weekly/WeeklyActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/weekly/WeeklyActivity$WeeklyItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    invoke-direct {p0}, Lbl/adz;-><init>()V

    .line 229
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;->a:Ljava/lang/ref/WeakReference;

    .line 230
    iput-object p2, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;->items:Ljava/util/List;

    .line 231
    return-void
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;->a:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;)Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;->e:Z

    return v0
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;)J
    .locals 2

    .prologue
    .line 216
    iget-wide v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;->d:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;J)J
    .locals 1

    .prologue
    .line 216
    iput-wide p1, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;->d:J

    return-wide p1
.end method

.method static synthetic access$602(Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;I)I
    .locals 0

    .prologue
    .line 216
    iput p1, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;->c:I

    return p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 235
    invoke-static {p1}, Lbl/agf;->a(Landroid/view/ViewGroup;)Lbl/agf;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 5

    .prologue
    .line 240
    instance-of v0, p1, Lbl/agf;

    if-eqz v0, :cond_49

    .line 241
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$WeeklyItem;

    move-object v1, p1

    .line 243
    check-cast v1, Lbl/agf;

    .line 244
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$WeeklyItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 245
    iget-object v2, v1, Lbl/agf;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$WeeklyItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    :cond_1e
    iget-object v2, v1, Lbl/agf;->n:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 249
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    const v3, 0x7f0800d8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 250
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 252
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    new-instance v2, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a$1;

    invoke-direct {v2, p0, p1, v1}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a$1;-><init>(Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;Landroid/support/v7/widget/RecyclerView$v;Lbl/agf;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 284
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    new-instance v1, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a$2;-><init>(Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    :cond_49
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 312
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;->e:Z

    .line 313
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 299
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;

    .line 300
    if-nez v0, :cond_b

    .line 309
    :cond_a
    :goto_a
    return-void

    .line 303
    :cond_b
    iget v1, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;->c:I

    .line 304
    if-ltz v1, :cond_a

    iget-object v2, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    .line 307
    iget-object v2, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;->items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$WeeklyItem;

    .line 308
    # invokes: Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->showVideoList(Lcom/bilibili/tv/ui/weekly/WeeklyActivity$WeeklyItem;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->access$200(Lcom/bilibili/tv/ui/weekly/WeeklyActivity;Lcom/bilibili/tv/ui/weekly/WeeklyActivity$WeeklyItem;)V

    goto :goto_a
.end method
