.class public Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;
.super Lbl/adz;
.source "AreaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/area/AreaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Adapter"
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
.field private final activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bilibili/tv/ui/area/AreaActivity;",
            ">;"
        }
    .end annotation
.end field

.field private currentPosition:I

.field private isFocused:Z

.field private final items:Lbl/cj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbl/cj",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastFocusTime:J

.field private final subareaId:I


# direct methods
.method public constructor <init>(Lcom/bilibili/tv/ui/area/AreaActivity;Lbl/cj;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bilibili/tv/ui/area/AreaActivity;",
            "Lbl/cj",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 385
    invoke-direct {p0}, Lbl/adz;-><init>()V

    .line 386
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;->activityRef:Ljava/lang/ref/WeakReference;

    .line 387
    iput-object p2, p0, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;->items:Lbl/cj;

    .line 388
    iput p3, p0, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;->subareaId:I

    .line 389
    return-void
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;->activityRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;)Z
    .locals 1

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;->isFocused:Z

    return v0
.end method

.method static synthetic access$402(Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;Z)Z
    .locals 0

    .prologue
    .line 372
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;->isFocused:Z

    return p1
.end method

.method static synthetic access$600(Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;)J
    .locals 2

    .prologue
    .line 372
    iget-wide v0, p0, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;->lastFocusTime:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;J)J
    .locals 1

    .prologue
    .line 372
    iput-wide p1, p0, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;->lastFocusTime:J

    return-wide p1
.end method

.method static synthetic access$702(Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;I)I
    .locals 0

    .prologue
    .line 372
    iput p1, p0, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;->currentPosition:I

    return p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;->items:Lbl/cj;

    if-nez v0, :cond_6

    .line 444
    const/4 v0, 0x0

    .line 446
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;->items:Lbl/cj;

    invoke-virtual {v0}, Lbl/cj;->b()I

    move-result v0

    goto :goto_5
.end method

.method public a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 393
    invoke-static {p1}, Lbl/agf;->a(Landroid/view/ViewGroup;)Lbl/agf;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 2

    .prologue
    .line 398
    instance-of v0, p1, Lbl/agf;

    if-eqz v0, :cond_22

    .line 399
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;->items:Lbl/cj;

    if-eqz v0, :cond_18

    move-object v0, p1

    .line 400
    check-cast v0, Lbl/agf;

    iget-object v1, v0, Lbl/agf;->n:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;->items:Lbl/cj;

    invoke-virtual {v0, p2}, Lbl/cj;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    :cond_18
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    new-instance v1, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter$1;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter$1;-><init>(Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;Landroid/support/v7/widget/RecyclerView$v;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 439
    :cond_22
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 450
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;->isFocused:Z

    .line 451
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x0

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 454
    iget v0, p0, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;->currentPosition:I

    return v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/area/AreaActivity;

    .line 460
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/area/AreaActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_16

    # getter for: Lcom/bilibili/tv/ui/area/AreaActivity;->d:Lbl/adr;
    invoke-static {v0}, Lcom/bilibili/tv/ui/area/AreaActivity;->access$500(Lcom/bilibili/tv/ui/area/AreaActivity;)Lbl/adr;

    move-result-object v1

    if-nez v1, :cond_17

    .line 464
    :cond_16
    :goto_16
    return-void

    .line 463
    :cond_17
    # getter for: Lcom/bilibili/tv/ui/area/AreaActivity;->d:Lbl/adr;
    invoke-static {v0}, Lcom/bilibili/tv/ui/area/AreaActivity;->access$500(Lcom/bilibili/tv/ui/area/AreaActivity;)Lbl/adr;

    move-result-object v0

    iget v1, p0, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;->currentPosition:I

    invoke-virtual {v0, v1}, Lbl/adr;->c(I)V

    goto :goto_16
.end method
