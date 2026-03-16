.class public final Lbl/aff$d$a;
.super Ljava/lang/Object;
.source "aff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/aff$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    return-void
.end method

.method public constructor <init>(Lbl/bbg;)V
    .locals 0

    .prologue
    .line 412
    invoke-direct {p0}, Lbl/aff$d$a;-><init>()V

    .line 413
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)Lbl/aff$d;
    .locals 3

    .prologue
    .line 416
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0080

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 418
    const-string v1, "view"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    new-instance v1, Lbl/aff$d;

    invoke-direct {v1, v0}, Lbl/aff$d;-><init>(Landroid/view/View;)V

    return-object v1
.end method
