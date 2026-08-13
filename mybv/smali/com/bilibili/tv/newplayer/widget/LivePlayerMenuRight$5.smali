.class Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$5;
.super Ljava/lang/Object;
.source "LivePlayerMenuRight.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;)V
    .locals 0

    .prologue
    .line 713
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$5;->this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$5;->this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->e()V

    .line 726
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 716
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 720
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$5;->this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->setVisibility(I)V

    .line 721
    return-void
.end method
