.class public final Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a$aa;
.super Ljava/lang/Object;
.source "MainRecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "aa"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 661
    return-void
.end method

.method public constructor <init>(Lbl/bbg;)V
    .locals 0

    .prologue
    .line 664
    invoke-direct {p0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a$aa;-><init>()V

    .line 665
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Ljava/lang/ref/WeakReference;)Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;",
            ">;)",
            "Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a;"
        }
    .end annotation

    .prologue
    .line 668
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 669
    const-string v0, "weakReference"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 670
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a006f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 671
    const-string v1, "view"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 672
    new-instance v1, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a;

    invoke-direct {v1, v0, p2}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a;-><init>(Landroid/view/View;Ljava/lang/ref/WeakReference;)V

    return-object v1
.end method
