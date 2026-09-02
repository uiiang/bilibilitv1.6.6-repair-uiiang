.class Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$9$1;
.super Ljava/lang/Object;
.source "AuthSpaceVideoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$9;->a(Lcom/alibaba/fastjson/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$9;

.field final synthetic val$focusPos:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$9;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 610
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$9$1;->this$1:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$9;

    iput p2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$9$1;->val$focusPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 613
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$9$1;->this$1:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$9;

    iget-object v0, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$9;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$9$1;->this$1:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$9;

    iget-object v0, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$9;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    iget-object v0, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_13

    .line 616
    :cond_12
    :goto_12
    return-void

    .line 614
    :cond_13
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$9$1;->this$1:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$9;

    iget-object v0, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$9;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    iget v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$9$1;->val$focusPos:I

    # invokes: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->findChildByPosition(I)Landroid/view/View;
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$400(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;I)Landroid/view/View;

    move-result-object v0

    .line 615
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_12
.end method
