.class Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c$1;
.super Ljava/lang/Object;
.source "AuthSpaceVideoFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->a(Lbl/adv;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

.field final synthetic val$itemPos:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;I)V
    .locals 0

    .prologue
    .line 602
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c$1;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    iput p2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c$1;->val$itemPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 605
    if-eqz p2, :cond_1c

    .line 606
    const-string v0, "AuthSpaceVideoFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "item focus: pos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c$1;->val$itemPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_1c
    if-nez p2, :cond_1f

    .line 614
    :cond_1e
    :goto_1e
    return-void

    .line 611
    :cond_1f
    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->instance:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;
    invoke-static {}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$800()Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 612
    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->instance:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;
    invoke-static {}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$800()Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    move-result-object v0

    iget v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c$1;->val$itemPos:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->navigateToHeaderWithPos(I)V

    goto :goto_1e
.end method
