.class Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight$FocusHandler;
.super Ljava/lang/Object;
.source "AuthSpaceMenuRight.java"

# interfaces
.implements Lbl/aax$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FocusHandler"
.end annotation


# instance fields
.field private final menu:Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight$FocusHandler;->menu:Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;

    .line 120
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/View;IILandroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    .line 124
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight$FocusHandler;->menu:Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;

    const/4 v1, 0x0

    check-cast v1, Lbl/aax;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->a(Lbl/aax;Landroid/view/View;Landroid/view/View;IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
