.class Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a$1$1;
.super Ljava/lang/Object;
.source "AttentionDynamicSideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a$1;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a$1;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a$1;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a$1$1;->this$1:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a$1$1;->this$1:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a$1;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->a:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->access$700(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    .line 446
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 448
    :cond_16
    :goto_16
    return-void

    .line 447
    :cond_17
    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a$1$1;->this$1:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a$1;

    iget-object v1, v1, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a$1;->val$item:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;

    # invokes: Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->showVideoList(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->access$1100(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;)V

    goto :goto_16
.end method
