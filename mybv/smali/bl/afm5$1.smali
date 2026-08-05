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


# direct methods
.method constructor <init>(Lbl/afm5;)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Lbl/afm5$1;->this$0:Lbl/afm5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 453
    iget-object v0, p0, Lbl/afm5$1;->this$0:Lbl/afm5;

    # getter for: Lbl/afm5;->folderPickerCurrentDir:Ljava/io/File;
    invoke-static {v0}, Lbl/afm5;->access$000(Lbl/afm5;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_9

    .line 461
    :goto_8
    return-void

    .line 456
    :cond_9
    iget-object v0, p0, Lbl/afm5$1;->this$0:Lbl/afm5;

    iget-object v1, p0, Lbl/afm5$1;->this$0:Lbl/afm5;

    # getter for: Lbl/afm5;->folderPickerCurrentDir:Ljava/io/File;
    invoke-static {v1}, Lbl/afm5;->access$000(Lbl/afm5;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    # setter for: Lbl/afm5;->downloadPath:Ljava/lang/String;
    invoke-static {v0, v1}, Lbl/afm5;->access$102(Lbl/afm5;Ljava/lang/String;)Ljava/lang/String;

    .line 457
    const-string v0, "afm5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u786e\u8ba4\u9009\u62e9\u4e0b\u8f7d\u6587\u4ef6\u5939: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/afm5$1;->this$0:Lbl/afm5;

    # getter for: Lbl/afm5;->downloadPath:Ljava/lang/String;
    invoke-static {v2}, Lbl/afm5;->access$100(Lbl/afm5;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v0, p0, Lbl/afm5$1;->this$0:Lbl/afm5;

    # invokes: Lbl/afm5;->updateUI()V
    invoke-static {v0}, Lbl/afm5;->access$200(Lbl/afm5;)V

    .line 459
    iget-object v0, p0, Lbl/afm5$1;->this$0:Lbl/afm5;

    # invokes: Lbl/afm5;->saveSettings()V
    invoke-static {v0}, Lbl/afm5;->access$300(Lbl/afm5;)V

    .line 460
    iget-object v0, p0, Lbl/afm5$1;->this$0:Lbl/afm5;

    # invokes: Lbl/afm5;->hideFolderPicker()V
    invoke-static {v0}, Lbl/afm5;->access$400(Lbl/afm5;)V

    goto :goto_8
.end method
