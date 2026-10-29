.class public final Lcom/bilibili/tv/ui/video/VideoDetailActivity$h$a;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5501
    return-void
.end method

.method public constructor <init>(Lbl/bbg;)V
    .locals 0

    .prologue
    .line 5504
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$h$a;-><init>()V

    .line 5505
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/video/VideoDetailActivity$h;
    .locals 3

    .prologue
    .line 5508
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5509
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0083

    const/4 v2, 0x0

    .line 5510
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 5511
    const-string v1, "view"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5512
    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$h;

    invoke-direct {v1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$h;-><init>(Landroid/view/View;)V

    return-object v1
.end method
