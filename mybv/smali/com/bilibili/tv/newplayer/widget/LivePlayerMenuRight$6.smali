.class Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$6;
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
    .line 808
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$6;->this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 819
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$6;->this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a()V

    .line 820
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$6;->this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->setVisibility(I)V

    .line 821
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$6;->this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->c:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->access$002(Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;Z)Z

    .line 822
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$6;->this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    # getter for: Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;
    invoke-static {v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->access$100(Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;)Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 823
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$6;->this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    # getter for: Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;
    invoke-static {v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->access$100(Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;)Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;->onMenuClosed()V

    .line 825
    :cond_22
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 811
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 815
    return-void
.end method
