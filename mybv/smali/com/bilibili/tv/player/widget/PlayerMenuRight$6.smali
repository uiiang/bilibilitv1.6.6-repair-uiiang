.class Lcom/bilibili/tv/player/widget/PlayerMenuRight$6;
.super Ljava/lang/Object;
.source "PlayerMenuRight.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/player/widget/PlayerMenuRight;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/player/widget/PlayerMenuRight;)V
    .locals 0

    .prologue
    .line 1172
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight$6;->this$0:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight$6;->this$0:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a()V

    .line 1184
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight$6;->this$0:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->setVisibility(I)V

    .line 1185
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight$6;->this$0:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/player/widget/PlayerMenuRight;->c:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->access$102(Lcom/bilibili/tv/player/widget/PlayerMenuRight;Z)Z

    .line 1188
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight$6;->this$0:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    # getter for: Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;
    invoke-static {v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->access$000(Lcom/bilibili/tv/player/widget/PlayerMenuRight;)Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 1189
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight$6;->this$0:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    # getter for: Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;
    invoke-static {v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->access$000(Lcom/bilibili/tv/player/widget/PlayerMenuRight;)Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->onMenuClosed()V

    .line 1191
    :cond_22
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 1175
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 1179
    return-void
.end method
