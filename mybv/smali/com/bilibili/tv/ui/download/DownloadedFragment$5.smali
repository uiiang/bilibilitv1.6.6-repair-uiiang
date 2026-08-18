.class Lcom/bilibili/tv/ui/download/DownloadedFragment$5;
.super Ljava/lang/Object;
.source "DownloadedFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/download/DownloadedFragment;->showRenameDialog(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/download/DownloadedFragment;

.field final synthetic val$fileExtension:Ljava/lang/String;

.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$task:Lcom/bilibili/tv/ui/download/model/DownloadTask;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/download/DownloadedFragment;Landroid/widget/EditText;Lcom/bilibili/tv/ui/download/model/DownloadTask;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 248
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment$5;->this$0:Lcom/bilibili/tv/ui/download/DownloadedFragment;

    iput-object p2, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment$5;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment$5;->val$task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    iput-object p4, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment$5;->val$fileExtension:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 251
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment$5;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 253
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment$5;->this$0:Lcom/bilibili/tv/ui/download/DownloadedFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6587\u4ef6\u540d\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 269
    :goto_24
    return-void

    .line 258
    :cond_25
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6d

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6d

    const-string v1, ":"

    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6d

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6d

    const-string v1, "?"

    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6d

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6d

    const-string v1, "<"

    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6d

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6d

    const-string v1, "|"

    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 263
    :cond_6d
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment$5;->this$0:Lcom/bilibili/tv/ui/download/DownloadedFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6587\u4ef6\u540d\u5305\u542b\u975e\u6cd5\u5b57\u7b26"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_24

    .line 268
    :cond_7d
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment$5;->this$0:Lcom/bilibili/tv/ui/download/DownloadedFragment;

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment$5;->val$task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment$5;->val$fileExtension:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/bilibili/tv/ui/download/DownloadedFragment;->renameLocalFile(Lcom/bilibili/tv/ui/download/model/DownloadTask;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->access$700(Lcom/bilibili/tv/ui/download/DownloadedFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;Ljava/lang/String;)V

    goto :goto_24
.end method
