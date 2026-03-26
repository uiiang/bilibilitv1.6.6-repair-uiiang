.class public final Lbl/adq$j;
.super Lbl/adc;
.source "adq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/adq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbl/adq$j$a;,
        Lbl/adq$j$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/adc",
        "<",
        "Lbl/adc$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lbl/adq$j$a;

.field private static final c:I = 0x1

.field private static final d:I = 0x2

.field private static final e:I = 0x3


# instance fields
.field private a:Lbl/adq$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 612
    new-instance v0, Lbl/adq$j$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbl/adq$j$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lbl/adq$j;->Companion:Lbl/adq$j$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 611
    invoke-direct {p0}, Lbl/adc;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 611
    invoke-virtual {p0, p1, p2}, Lbl/adq$j;->a(Landroid/view/ViewGroup;I)Lbl/adc$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lbl/adc$a;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 622
    const-string v1, "parent"

    invoke-static {p1, v1}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 624
    const/4 v1, 0x1

    if-ne p2, v1, :cond_12

    check-cast v0, Lbl/adq$h;

    sget-object v0, Lbl/adq$h;->Companion:Lbl/adq$h$a;

    invoke-virtual {v0, p1}, Lbl/adq$h$a;->a(Landroid/view/ViewGroup;)Lbl/adq$h;

    move-result-object v0

    :goto_11
    return-object v0

    :cond_12
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1e

    check-cast v0, Lbl/adq$h;

    sget-object v0, Lbl/adq$h;->Companion:Lbl/adq$h$a;

    invoke-virtual {v0, p1}, Lbl/adq$h$a;->a(Landroid/view/ViewGroup;)Lbl/adq$h;

    move-result-object v0

    goto :goto_11

    :cond_1e
    const/4 v0, 0x3

    if-ne p2, v0, :cond_28

    sget-object v0, Lbl/aeb;->Companion:Lbl/aeb$b;

    invoke-virtual {v0, p1}, Lbl/aeb$b;->a(Landroid/view/ViewGroup;)Lbl/aeb;

    move-result-object v0

    goto :goto_11

    :cond_28
    new-instance v0, Lbl/adq$j$b;

    new-instance v1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lbl/adq$j$b;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_11
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/area/BiliVideoV2;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 658
    const-string v0, "title"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 659
    const-string v0, "otherList"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 660
    const-string v0, "\u5206\u533a\u89c6\u9891"

    invoke-static {p2, v0}, Lmybl/BiliFilter;->filterBiliVideoV2(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 673
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_17

    .line 686
    :goto_16
    return-void

    .line 676
    :cond_17
    iget-object v1, p0, Lbl/adq$j;->a:Lbl/adq$d;

    if-nez v1, :cond_2f

    .line 677
    new-instance v1, Lbl/adq$d;

    invoke-direct {v1, p1, v0}, Lbl/adq$d;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object v1, p0, Lbl/adq$j;->a:Lbl/adq$d;

    .line 678
    invoke-super {p0}, Lbl/adc;->g()V

    .line 679
    iget-object v0, p0, Lbl/adq$j;->a:Lbl/adq$d;

    invoke-virtual {p0, v0}, Lbl/adq$j;->a(Lbl/ade;)V

    .line 680
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbl/adq$j;->b(Z)V

    goto :goto_16

    .line 683
    :cond_2f
    iget-object v1, p0, Lbl/adq$j;->a:Lbl/adq$d;

    invoke-virtual {v1}, Lbl/adq$d;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 684
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbl/adq$j;->b(Z)V

    goto :goto_16
.end method

.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/area/BiliVideoV2;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 644
    const-string v0, "hotList"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 645
    const-string v0, "\u5206\u533a\u89c6\u9891"

    invoke-static {p1, v0}, Lmybl/BiliFilter;->filterBiliVideoV2(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 646
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_12

    .line 655
    :goto_11
    return-void

    .line 649
    :cond_12
    iget-object v1, p0, Lbl/adq$j;->a:Lbl/adq$d;

    if-nez v1, :cond_24

    .line 650
    new-instance v1, Lbl/adq$d;

    const v2, 0x7f0c009e

    invoke-static {v2}, Lbl/adl;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lbl/adq$d;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object v1, p0, Lbl/adq$j;->a:Lbl/adq$d;

    .line 652
    :cond_24
    invoke-super {p0}, Lbl/adc;->g()V

    .line 653
    iget-object v0, p0, Lbl/adq$j;->a:Lbl/adq$d;

    invoke-virtual {p0, v0}, Lbl/adq$j;->a(Lbl/ade;)V

    .line 654
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbl/adq$j;->b(Z)V

    goto :goto_11
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 689
    invoke-super {p0}, Lbl/adc;->g()V

    .line 690
    const/4 v0, 0x0

    check-cast v0, Lbl/adq$d;

    iput-object v0, p0, Lbl/adq$j;->a:Lbl/adq$d;

    .line 692
    return-void
.end method
