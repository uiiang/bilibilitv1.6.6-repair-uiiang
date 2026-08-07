.class Lbl/afm5$1;
.super Ljava/lang/Object;
.source "afm5.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/afm5;->showFolderPicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/afm5;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lbl/afm5;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lbl/afm5$1;->this$0:Lbl/afm5;

    iput-object p2, p0, Lbl/afm5$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 480
    iget-object v0, p0, Lbl/afm5$1;->this$0:Lbl/afm5;

    # getter for: Lbl/afm5;->safAvailable:Z
    invoke-static {v0}, Lbl/afm5;->access$000(Lbl/afm5;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 481
    const-string v0, "afm5"

    const-string v1, "\u7cfb\u7edf\u6587\u4ef6\u7ba1\u7406\u5668\u4e0d\u53ef\u7528\uff0c\u65e0\u6cd5\u6253\u5f00"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_22

    .line 483
    iget-object v0, p0, Lbl/afm5$1;->val$activity:Landroid/app/Activity;

    const-string v1, "\u6b64\u8bbe\u5907\u6ca1\u6709\u7cfb\u7edf\u6587\u4ef6\u7ba1\u7406\u5668\uff0c\u8bf7\u5728\u5217\u8868\u4e2d\u786e\u8ba4\u5916\u63a5U\u76d8\u53ef\u5199\u540e\u518d\u70b9\u786e\u5b9a"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 496
    :goto_21
    return-void

    .line 485
    :cond_22
    iget-object v0, p0, Lbl/afm5$1;->val$activity:Landroid/app/Activity;

    const-string v1, "\u6b64\u8bbe\u5907\u4e0d\u652f\u6301\u7cfb\u7edf\u6587\u4ef6\u9009\u62e9\u5668\uff0c\u53ef\u76f4\u63a5\u5728\u5217\u8868\u4e2d\u9009\u62e9\u5916\u63a5U\u76d8\u6587\u4ef6\u5939"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_21

    .line 490
    :cond_2e
    :try_start_2e
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 491
    iget-object v1, p0, Lbl/afm5$1;->this$0:Lbl/afm5;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v0, v2}, Lbl/afm5;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_3c} :catch_3d

    goto :goto_21

    .line 492
    :catch_3d
    move-exception v0

    .line 493
    const-string v1, "afm5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6253\u5f00\u7cfb\u7edf\u6587\u4ef6\u9009\u62e9\u5668\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v0, p0, Lbl/afm5$1;->val$activity:Landroid/app/Activity;

    const-string v1, "\u65e0\u6cd5\u6253\u5f00\u7cfb\u7edf\u6587\u4ef6\u9009\u62e9\u5668\uff0c\u8bf7\u5728\u5217\u8868\u4e2d\u9009\u62e9\u5916\u63a5U\u76d8\u6587\u4ef6\u5939"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_21
.end method
