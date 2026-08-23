.class Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$1$1;
.super Ljava/lang/Object;
.source "MainMyFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$1;

.field final synthetic val$refreshed:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$1;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 570
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$1$1;->this$1:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$1;

    iput-object p2, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$1$1;->val$refreshed:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 573
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$1$1;->val$refreshed:Ljava/lang/String;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$1$1;->val$refreshed:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5e

    .line 575
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$1$1;->this$1:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$1;->val$fPassportFile:Ljava/io/File;

    # invokes: Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->readFirstLine(Ljava/io/File;)Ljava/lang/String;
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->access$300(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    .line 576
    const-string v1, "MainMyAccount"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refresh success, account len="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$1$1;->val$refreshed:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", passport len="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v6, :cond_59

    const/4 v0, -0x1

    :goto_34
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$1$1;->this$1:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$1;->this$0:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;

    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$1$1;->this$1:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$1;

    iget-object v1, v1, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$1;->val$ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$1$1;->this$1:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$1;

    iget-object v2, v2, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$1;->val$act:Landroid/app/Activity;

    iget-object v3, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$1$1;->this$1:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$1;

    iget-object v3, v3, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$1;->val$fMid:Ljava/lang/String;

    iget-object v4, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$1$1;->this$1:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$1;

    iget-object v4, v4, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$1;->val$fUsername:Ljava/lang/String;

    iget-object v5, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$1$1;->val$refreshed:Ljava/lang/String;

    # invokes: Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->saveAccountAndShowDialog(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v6}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->access$400(Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    :goto_58
    return-void

    .line 576
    :cond_59
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_34

    .line 580
    :cond_5e
    const-string v0, "MainMyAccount"

    const-string v1, "refresh failed, skip saving current account"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$1$1;->this$1:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$1;->val$ctx:Landroid/content/Context;

    const-string v1, "\u5237\u65b0\u8d26\u53f7\u51ed\u8bc1\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_58
.end method
