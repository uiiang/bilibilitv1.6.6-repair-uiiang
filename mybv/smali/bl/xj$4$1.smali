.class Lbl/xj$4$1;
.super Ljava/lang/Object;
.source "xj.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xj$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbl/xj$4;


# direct methods
.method constructor <init>(Lbl/xj$4;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lbl/xj$4$1;->this$1:Lbl/xj$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lbl/xj$4$1;->this$1:Lbl/xj$4;

    iget-object v0, v0, Lbl/xj$4;->this$0:Lbl/xj;

    const/4 v1, 0x0

    # setter for: Lbl/xj;->l:Z
    invoke-static {v0, v1}, Lbl/xj;->access$202(Lbl/xj;Z)Z

    .line 432
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 423
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 427
    return-void
.end method
