.class Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$3$1;
.super Lbl/vn;
.source "AuthSpaceVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/vn",
        "<",
        "Lcom/alibaba/fastjson/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$3;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$3;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$3$1;->this$1:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$3;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$3$1;->this$1:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$3;

    iget-object v0, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$000(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$3$1;->this$1:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$3;

    iget-object v0, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$000(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "\u5df2\u5173\u6ce8"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    const/4 v0, 0x1

    move v1, v0

    .line 132
    :goto_24
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$3$1;->this$1:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$3;

    iget-object v0, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$000(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v1, :cond_4c

    const-string v2, "\uff0b\u5173\u6ce8"

    :goto_32
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$3$1;->this$1:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$3;

    iget-object v0, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v1, :cond_4f

    const-string v0, "\u53d6\u6d88\u5173\u6ce8\u6210\u529f"

    :goto_45
    invoke-static {v2, v0}, Lbl/lr;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 134
    return-void

    .line 131
    :cond_49
    const/4 v0, 0x0

    move v1, v0

    goto :goto_24

    .line 132
    :cond_4c
    const-string v2, "\u5df2\u5173\u6ce8"

    goto :goto_32

    .line 133
    :cond_4f
    const-string v0, "\u5173\u6ce8\u6210\u529f"

    goto :goto_45
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 128
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$3$1;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$3$1;->this$1:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$3;

    iget-object v0, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$3$1;->this$1:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$3;

    iget-object v0, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$3$1;->this$1:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$3;

    iget-object v0, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$000(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$3$1;->this$1:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$3;

    iget-object v0, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$000(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "\u5df2\u5173\u6ce8"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x1

    .line 139
    :goto_23
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$3$1;->this$1:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$3;

    iget-object v1, v1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$3;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v0, :cond_39

    const-string v0, "\u53d6\u6d88\u5173\u6ce8\u5931\u8d25"

    :goto_33
    invoke-static {v1, v0}, Lbl/lr;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 140
    return-void

    .line 138
    :cond_37
    const/4 v0, 0x0

    goto :goto_23

    .line 139
    :cond_39
    const-string v0, "\u5173\u6ce8\u5931\u8d25"

    goto :goto_33
.end method
