.class public final Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d$a;
.super Ljava/lang/Object;
.source "AuthSpaceVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 847
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;
    .locals 3

    .prologue
    .line 850
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0080

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 852
    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;

    invoke-direct {v1, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;-><init>(Landroid/view/View;)V

    return-object v1
.end method
