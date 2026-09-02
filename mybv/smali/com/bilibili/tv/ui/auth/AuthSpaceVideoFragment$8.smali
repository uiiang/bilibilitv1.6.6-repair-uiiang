.class Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$8;
.super Ljava/lang/Object;
.source "AuthSpaceVideoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->scrollToLocate(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private retry:I

.field final synthetic this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

.field final synthetic val$idx:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 553
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$8;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    iput p2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$8;->val$idx:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 554
    const/4 v0, 0x0

    iput v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$8;->retry:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 558
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$8;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    iget v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$8;->val$idx:I

    # invokes: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->findChildByPosition(I)Landroid/view/View;
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$600(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;I)Landroid/view/View;

    move-result-object v0

    .line 559
    if-eqz v0, :cond_e

    .line 560
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 564
    :cond_d
    :goto_d
    return-void

    .line 561
    :cond_e
    iget v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$8;->retry:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$8;->retry:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_d

    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$8;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    iget-object v0, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$8;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 562
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$8;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    iget-object v0, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, p0, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_d
.end method
