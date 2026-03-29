.class public Lbl/add;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "add.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Landroid/support/v7/widget/RecyclerView$v;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/widget/RecyclerView$a",
            "<",
            "Landroid/support/v7/widget/RecyclerView$v;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lbl/add$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lbl/add$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$a",
            "<",
            "Landroid/support/v7/widget/RecyclerView$v;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbl/add;->b:Ljava/util/ArrayList;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbl/add;->c:Ljava/util/ArrayList;

    .line 15
    iput-object p1, p0, Lbl/add;->a:Landroid/support/v7/widget/RecyclerView$a;

    .line 16
    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$a;->b()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 17
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/support/v7/widget/RecyclerView$a;->a(Z)V

    .line 19
    :cond_1f
    return-void
.end method

.method private e(I)Lbl/add$a;
    .locals 3

    .prologue
    const/high16 v1, 0x20000000

    const/high16 v0, 0x10000000

    .line 25
    if-lt p1, v1, :cond_15

    .line 26
    sub-int v0, p1, v1

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 27
    iget-object v1, p0, Lbl/add;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/add$a;

    .line 31
    :goto_14
    return-object v0

    .line 29
    :cond_15
    if-lt p1, v0, :cond_26

    .line 30
    sub-int v0, p1, v0

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 31
    iget-object v1, p0, Lbl/add;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/add$a;

    goto :goto_14

    .line 33
    :cond_26
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wtf! viewtype="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lbl/add;->e()I

    move-result v0

    invoke-virtual {p0}, Lbl/add;->f()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lbl/add;->a:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lbl/add;->a:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->a()I

    move-result v0

    :goto_13
    add-int/2addr v0, v1

    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public a(I)I
    .locals 3

    .prologue
    .line 43
    invoke-virtual {p0}, Lbl/add;->e()I

    move-result v1

    .line 44
    iget-object v0, p0, Lbl/add;->a:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lbl/add;->a:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->a()I

    move-result v0

    .line 46
    :goto_e
    if-lt p1, v1, :cond_1f

    add-int v2, v1, v0

    if-ge p1, v2, :cond_1f

    .line 47
    iget-object v0, p0, Lbl/add;->a:Landroid/support/v7/widget/RecyclerView$a;

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$a;->a(I)I

    move-result v0

    .line 52
    :goto_1c
    return v0

    .line 44
    :cond_1d
    const/4 v0, 0x0

    goto :goto_e

    .line 49
    :cond_1f
    if-ge p1, v1, :cond_27

    .line 50
    shl-int/lit8 v0, p1, 0x18

    const/high16 v1, 0x10000000

    add-int/2addr v0, v1

    goto :goto_1c

    .line 52
    :cond_27
    sub-int v1, p1, v1

    sub-int v0, v1, v0

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, 0x20000000

    add-int/2addr v0, v1

    goto :goto_1c
.end method

.method public a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 57
    const/high16 v0, 0x10000000

    if-lt p2, v0, :cond_9

    .line 58
    invoke-direct {p0, p2}, Lbl/add;->e(I)Lbl/add$a;

    move-result-object v0

    .line 60
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lbl/add;->a:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$a;->a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;

    move-result-object v0

    goto :goto_8
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$c;)V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$a;->a(Landroid/support/v7/widget/RecyclerView$c;)V

    .line 66
    iget-object v0, p0, Lbl/add;->a:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v0, :cond_c

    .line 67
    iget-object v0, p0, Lbl/add;->a:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$a;->a(Landroid/support/v7/widget/RecyclerView$c;)V

    .line 69
    :cond_c
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$v;)V
    .locals 1

    .prologue
    .line 73
    instance-of v0, p1, Lbl/add$a;

    if-nez v0, :cond_9

    .line 74
    iget-object v0, p0, Lbl/add;->a:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$a;->a(Landroid/support/v7/widget/RecyclerView$v;)V

    .line 76
    :cond_9
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 2

    .prologue
    .line 80
    instance-of v0, p1, Lbl/add$a;

    if-eqz v0, :cond_5

    .line 85
    :goto_4
    return-void

    .line 83
    :cond_5
    invoke-virtual {p0}, Lbl/add;->e()I

    move-result v0

    .line 84
    iget-object v1, p0, Lbl/add;->a:Landroid/support/v7/widget/RecyclerView$a;

    sub-int v0, p2, v0

    invoke-virtual {v1, p1, v0}, Landroid/support/v7/widget/RecyclerView$a;->a(Landroid/support/v7/widget/RecyclerView$v;I)V

    goto :goto_4
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lbl/add;->a:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v0, :cond_9

    .line 90
    iget-object v0, p0, Lbl/add;->a:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$a;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 92
    :cond_9
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lbl/add;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 96
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lbl/add;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_12

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Footers count cannot be larger than 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_12
    iget-object v0, p0, Lbl/add;->c:Ljava/util/ArrayList;

    new-instance v1, Lbl/add$a;

    invoke-direct {v1, p1, p2}, Lbl/add$a;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$a;->a(Z)V

    .line 108
    iget-object v0, p0, Lbl/add;->a:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v0, :cond_c

    .line 109
    iget-object v0, p0, Lbl/add;->a:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$a;->a(Z)V

    .line 111
    :cond_c
    return-void
.end method

.method public b(I)J
    .locals 3

    .prologue
    .line 115
    invoke-virtual {p0}, Lbl/add;->e()I

    move-result v1

    .line 116
    iget-object v0, p0, Lbl/add;->a:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lbl/add;->a:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->a()I

    move-result v0

    .line 118
    :goto_e
    if-lt p1, v1, :cond_1f

    add-int v2, v1, v0

    if-ge p1, v2, :cond_1f

    .line 119
    iget-object v0, p0, Lbl/add;->a:Landroid/support/v7/widget/RecyclerView$a;

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$a;->b(I)J

    move-result-wide v0

    .line 128
    :goto_1c
    return-wide v0

    .line 116
    :cond_1d
    const/4 v0, 0x0

    goto :goto_e

    .line 121
    :cond_1f
    if-ge p1, v1, :cond_28

    .line 122
    shl-int/lit8 v0, p1, 0x18

    const/high16 v1, 0x10000000

    add-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_1c

    .line 124
    :cond_28
    sub-int v1, p1, v1

    sub-int v0, v1, v0

    .line 125
    if-ltz v0, :cond_3b

    invoke-virtual {p0}, Lbl/add;->f()I

    move-result v1

    if-ge v0, v1, :cond_3b

    .line 126
    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, 0x20000000

    add-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_1c

    .line 128
    :cond_3b
    const-wide/16 v0, -0x1

    goto :goto_1c
.end method

.method public b(Landroid/support/v7/widget/RecyclerView$c;)V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$a;->b(Landroid/support/v7/widget/RecyclerView$c;)V

    .line 134
    iget-object v0, p0, Lbl/add;->a:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v0, :cond_c

    .line 135
    iget-object v0, p0, Lbl/add;->a:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$a;->b(Landroid/support/v7/widget/RecyclerView$c;)V

    .line 137
    :cond_c
    return-void
.end method

.method public b(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lbl/add;->a:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v0, :cond_9

    .line 142
    iget-object v0, p0, Lbl/add;->a:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$a;->b(Landroid/support/v7/widget/RecyclerView;)V

    .line 144
    :cond_9
    return-void
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$v;)V
    .locals 1

    .prologue
    .line 148
    instance-of v0, p1, Lbl/add$a;

    if-nez v0, :cond_9

    .line 149
    iget-object v0, p0, Lbl/add;->a:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$a;->c(Landroid/support/v7/widget/RecyclerView$v;)V

    .line 151
    :cond_9
    return-void
.end method

.method public clearFooters()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lbl/add;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 170
    return-void
.end method

.method public clearHeaders()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lbl/add;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 174
    return-void
.end method

.method public d(Landroid/support/v7/widget/RecyclerView$v;)V
    .locals 1

    .prologue
    .line 155
    instance-of v0, p1, Lbl/add$a;

    if-nez v0, :cond_9

    .line 156
    iget-object v0, p0, Lbl/add;->a:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$a;->d(Landroid/support/v7/widget/RecyclerView$v;)V

    .line 158
    :cond_9
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lbl/add;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lbl/add;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
