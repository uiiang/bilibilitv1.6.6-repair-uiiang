.class Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2$1;
.super Ljava/lang/Object;
.source "AuthSpaceSideActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2$1;->this$1:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2$1;->this$1:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;

    iget-object v0, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->rightMenu:Lcom/bilibili/tv/player/widget/PlayerMenuRight;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$500(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2$1;->this$1:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;

    iget-object v0, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->rightMenu:Lcom/bilibili/tv/player/widget/PlayerMenuRight;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$500(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->isShown()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 200
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2$1;->this$1:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;

    iget-object v0, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->rightMenu:Lcom/bilibili/tv/player/widget/PlayerMenuRight;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$500(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->requestFocus()Z

    .line 202
    :cond_23
    return-void
.end method
