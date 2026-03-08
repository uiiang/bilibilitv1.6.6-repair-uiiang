.class Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight$3;
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
    .line 277
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight$3;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight$3;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;

    # invokes: Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->e()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->access$000(Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;)V

    .line 290
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 280
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight$3;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->setVisibility(I)V

    .line 285
    return-void
.end method
