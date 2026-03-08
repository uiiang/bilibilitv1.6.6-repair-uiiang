.class Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$4$1;
.super Ljava/lang/Object;
.source "AuthSpaceVideoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$4;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$4;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$4$1;->this$1:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 166
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$4$1;->this$1:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$4;

    iget-object v0, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$4;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # invokes: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->initHeaderViews()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$200(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V

    .line 167
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$4$1;->this$1:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$4;

    iget-object v0, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$4;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$000(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 168
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$4$1;->this$1:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$4;

    iget-object v0, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$4;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$000(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 169
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$4$1;->this$1:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$4;

    iget-object v0, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$4;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$000(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 170
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$4$1;->this$1:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$4;

    iget-object v0, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$4;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$000(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 171
    const-string v0, "AuthSpaceVideoFragment"

    const-string v1, "requested focus on attentionButton"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_3a
    return-void
.end method
