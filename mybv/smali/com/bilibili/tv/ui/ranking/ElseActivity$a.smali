.class public Lcom/bilibili/tv/ui/ranking/ElseActivity$a;
.super Lbl/adz;
.source "ElseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/ranking/ElseActivity;
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
            "Lcom/bilibili/tv/ui/ranking/ElseActivity;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lbl/cj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbl/cj",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:J

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/bilibili/tv/ui/ranking/ElseActivity;Lbl/cj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bilibili/tv/ui/ranking/ElseActivity;",
            "Lbl/cj",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    invoke-direct {p0}, Lbl/adz;-><init>()V

    .line 144
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/ranking/ElseActivity$a;->a:Ljava/lang/ref/WeakReference;

    .line 145
    iput-object p2, p0, Lcom/bilibili/tv/ui/ranking/ElseActivity$a;->b:Lbl/cj;

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/ranking/ElseActivity$a;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/bilibili/tv/ui/ranking/ElseActivity$a;->a:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/ranking/ElseActivity$a;)Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/ranking/ElseActivity$a;->e:Z

    return v0
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/ranking/ElseActivity$a;)J
    .locals 2

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/bilibili/tv/ui/ranking/ElseActivity$a;->d:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/bilibili/tv/ui/ranking/ElseActivity$a;J)J
    .locals 1

    .prologue
    .line 131
    iput-wide p1, p0, Lcom/bilibili/tv/ui/ranking/ElseActivity$a;->d:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/ranking/ElseActivity$a;)I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/bilibili/tv/ui/ranking/ElseActivity$a;->c:I

    return v0
.end method

.method static synthetic access$402(Lcom/bilibili/tv/ui/ranking/ElseActivity$a;I)I
    .locals 0

    .prologue
    .line 131
    iput p1, p0, Lcom/bilibili/tv/ui/ranking/ElseActivity$a;->c:I

    return p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/bilibili/tv/ui/ranking/ElseActivity$a;->b:Lbl/cj;

    if-nez v0, :cond_6

    .line 201
    const/4 v0, 0x0

    .line 203
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/bilibili/tv/ui/ranking/ElseActivity$a;->b:Lbl/cj;

    invoke-virtual {v0}, Lbl/cj;->b()I

    move-result v0

    goto :goto_5
.end method

.method public a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 150
    invoke-static {p1}, Lbl/agf;->a(Landroid/view/ViewGroup;)Lbl/agf;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 2

    .prologue
    .line 155
    instance-of v0, p1, Lbl/agf;

    if-eqz v0, :cond_22

    .line 156
    iget-object v0, p0, Lcom/bilibili/tv/ui/ranking/ElseActivity$a;->b:Lbl/cj;

    if-eqz v0, :cond_18

    move-object v0, p1

    .line 157
    check-cast v0, Lbl/agf;

    iget-object v1, v0, Lbl/agf;->n:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bilibili/tv/ui/ranking/ElseActivity$a;->b:Lbl/cj;

    invoke-virtual {v0, p2}, Lbl/cj;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    :cond_18
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    new-instance v1, Lcom/bilibili/tv/ui/ranking/ElseActivity$a$1;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/ranking/ElseActivity$a$1;-><init>(Lcom/bilibili/tv/ui/ranking/ElseActivity$a;Landroid/support/v7/widget/RecyclerView$v;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 196
    :cond_22
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 207
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/ranking/ElseActivity$a;->e:Z

    .line 208
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/bilibili/tv/ui/ranking/ElseActivity$a;->c:I

    return v0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 217
    return-void
.end method
