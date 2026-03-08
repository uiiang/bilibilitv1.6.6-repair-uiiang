.class final Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$b;
.super Lbl/vn;
.source "AttentionDynamicFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/vn",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;


# direct methods
.method public constructor <init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$b;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    .line 246
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 267
    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$b;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$b;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$200(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    move-result-object v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 255
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$b;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lbl/adl;->a(Ljava/lang/Throwable;Landroid/app/Activity;)V

    .line 256
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$b;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$200(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    move-result-object v0

    if-nez v0, :cond_14

    .line 263
    :cond_13
    :goto_13
    return-void

    .line 259
    :cond_14
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$b;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->h:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$102(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z

    .line 260
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$b;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->f:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$300(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 261
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$b;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->k()V

    goto :goto_13
.end method
