.class Lbl/afm5$2;
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
    .line 520
    iput-object p1, p0, Lbl/afm5$2;->this$0:Lbl/afm5;

    iput-object p2, p0, Lbl/afm5$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 523
    iget-object v0, p0, Lbl/afm5$2;->this$0:Lbl/afm5;

    # getter for: Lbl/afm5;->folderPickerCurrentDir:Ljava/io/File;
    invoke-static {v0}, Lbl/afm5;->access$000(Lbl/afm5;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_a

    .line 549
    :goto_9
    return-void

    .line 526
    :cond_a
    iget-object v0, p0, Lbl/afm5$2;->this$0:Lbl/afm5;

    iget-object v1, p0, Lbl/afm5$2;->this$0:Lbl/afm5;

    # getter for: Lbl/afm5;->folderPickerCurrentDir:Ljava/io/File;
    invoke-static {v1}, Lbl/afm5;->access$000(Lbl/afm5;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    # setter for: Lbl/afm5;->downloadPath:Ljava/lang/String;
    invoke-static {v0, v1}, Lbl/afm5;->access$102(Lbl/afm5;Ljava/lang/String;)Ljava/lang/String;

    .line 531
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b2

    iget-object v0, p0, Lbl/afm5$2;->this$0:Lbl/afm5;

    # getter for: Lbl/afm5;->downloadPath:Ljava/lang/String;
    invoke-static {v0}, Lbl/afm5;->access$100(Lbl/afm5;)Ljava/lang/String;

    move-result-object v0

    # invokes: Lbl/afm5;->isExternalVolume(Ljava/lang/String;)Z
    invoke-static {v0}, Lbl/afm5;->access$200(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 532
    iget-object v0, p0, Lbl/afm5$2;->this$0:Lbl/afm5;

    # getter for: Lbl/afm5;->safAvailable:Z
    invoke-static {v0}, Lbl/afm5;->access$300(Lbl/afm5;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 533
    const-string v0, "afm5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9009\u62e9\u7684\u662f\u5916\u63a5\u5b58\u50a8\u5377\uff0c\u5f15\u5bfc\u4f7f\u7528\u7cfb\u7edf\u6587\u4ef6\u9009\u62e9\u5668\u6388\u6743: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/afm5$2;->this$0:Lbl/afm5;

    # getter for: Lbl/afm5;->downloadPath:Ljava/lang/String;
    invoke-static {v2}, Lbl/afm5;->access$100(Lbl/afm5;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v0, p0, Lbl/afm5$2;->val$activity:Landroid/app/Activity;

    const-string v1, "\u5916\u63a5U\u76d8/\u79fb\u52a8\u786c\u76d8\u8bf7\u70b9\u51fb\u4e0b\u65b9\u300c\u4f7f\u7528\u7cfb\u7edf\u6587\u4ef6\u9009\u62e9\u5668\u300d\u6388\u6743"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_9

    .line 538
    :cond_5d
    iget-object v0, p0, Lbl/afm5$2;->this$0:Lbl/afm5;

    # getter for: Lbl/afm5;->downloadPath:Ljava/lang/String;
    invoke-static {v0}, Lbl/afm5;->access$100(Lbl/afm5;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ui/download/StorageManagerHelper;->isStorageWritable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_94

    .line 539
    const-string v0, "afm5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SAF\u4e0d\u53ef\u7528\u4e14\u5916\u63a5\u5377\u4e0d\u53ef\u5199: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/afm5$2;->this$0:Lbl/afm5;

    # getter for: Lbl/afm5;->downloadPath:Ljava/lang/String;
    invoke-static {v2}, Lbl/afm5;->access$100(Lbl/afm5;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v0, p0, Lbl/afm5$2;->val$activity:Landroid/app/Activity;

    const-string v1, "U\u76d8\u4e3a\u53ea\u8bfb\u6302\u8f7d\uff0c\u65e0\u6cd5\u5199\u5165\uff08\u5e38\u89c1\u539f\u56e0\uff1aNTFS\u683c\u5f0f\u6216\u7535\u89c6\u53ea\u8bfb\u7b56\u7565\uff09\u3002\u8bf7\u6539\u7528FAT32/exFAT\u683c\u5f0f\u7684U\u76d8"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_9

    .line 543
    :cond_94
    const-string v0, "afm5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SAF\u4e0d\u53ef\u7528\u4f46\u8def\u5f84\u53ef\u5199\uff0c\u4f7f\u7528\u6587\u4ef6\u8def\u5f84\u6a21\u5f0f: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/afm5$2;->this$0:Lbl/afm5;

    # getter for: Lbl/afm5;->downloadPath:Ljava/lang/String;
    invoke-static {v2}, Lbl/afm5;->access$100(Lbl/afm5;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_b2
    const-string v0, "afm5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u786e\u8ba4\u9009\u62e9\u4e0b\u8f7d\u6587\u4ef6\u5939: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/afm5$2;->this$0:Lbl/afm5;

    # getter for: Lbl/afm5;->downloadPath:Ljava/lang/String;
    invoke-static {v2}, Lbl/afm5;->access$100(Lbl/afm5;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v0, p0, Lbl/afm5$2;->this$0:Lbl/afm5;

    # invokes: Lbl/afm5;->updateUI()V
    invoke-static {v0}, Lbl/afm5;->access$400(Lbl/afm5;)V

    .line 547
    iget-object v0, p0, Lbl/afm5$2;->this$0:Lbl/afm5;

    # invokes: Lbl/afm5;->saveSettings()V
    invoke-static {v0}, Lbl/afm5;->access$500(Lbl/afm5;)V

    .line 548
    iget-object v0, p0, Lbl/afm5$2;->this$0:Lbl/afm5;

    # invokes: Lbl/afm5;->hideFolderPicker()V
    invoke-static {v0}, Lbl/afm5;->access$600(Lbl/afm5;)V

    goto/16 :goto_9
.end method
