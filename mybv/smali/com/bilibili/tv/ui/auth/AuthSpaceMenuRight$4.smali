.class Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight$4;
.super Ljava/lang/Object;
.source "AuthSpaceMenuRight.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight$4;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight$4;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->a()V

    .line 313
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight$4;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight$4;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->c:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->access$102(Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;Z)Z

    .line 315
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 304
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 308
    return-void
.end method
