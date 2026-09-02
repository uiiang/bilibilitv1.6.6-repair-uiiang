.class Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$10;
.super Ljava/lang/Object;
.source "AuthSpaceVideoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->scrollToAnchor(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private retry:I

.field final synthetic this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

.field final synthetic val$focusPos:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 674
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$10;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    iput p2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$10;->val$focusPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 675
    const/4 v0, 0x0

    iput v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$10;->retry:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 678
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$10;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    iget-object v0, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$10;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_f

    .line 685
    :cond_e
    :goto_e
    return-void

    .line 679
    :cond_f
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$10;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    iget v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$10;->val$focusPos:I

    # invokes: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->findChildByPosition(I)Landroid/view/View;
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$600(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;I)Landroid/view/View;

    move-result-object v0

    .line 680
    if-eqz v0, :cond_1d

    .line 681
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_e

    .line 682
    :cond_1d
    iget v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$10;->retry:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$10;->retry:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_e

    .line 683
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$10;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    iget-object v0, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, p0, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_e
.end method
