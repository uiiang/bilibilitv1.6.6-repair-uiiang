.class Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$9;
.super Lbl/vn;
.source "RelationTagMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->submitTagsChange()V
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
.field final synthetic this$0:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;

.field final synthetic val$selectedTagIds:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$9;->this$0:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;

    iput-object p2, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$9;->val$selectedTagIds:Ljava/util/List;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 2

    .prologue
    .line 368
    const-string v0, "RelationTagMenuDialog"

    const-string v1, "Set tags success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$9;->this$0:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->listener:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$OnTagsChangedListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->access$900(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;)Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$OnTagsChangedListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 370
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$9;->this$0:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->access$500(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$9$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$9$1;-><init>(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$9;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 377
    :cond_1d
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 365
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$9;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$9;->this$0:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->access$500(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$9;->this$0:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->access$500(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 386
    const-string v0, "RelationTagMenuDialog"

    const-string v1, "Set tags failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 387
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$9;->this$0:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->access$500(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$9$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$9$2;-><init>(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$9;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 393
    return-void
.end method
