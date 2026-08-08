.class Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$2;
.super Ljava/lang/Object;
.source "MainMyFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->saveAccountAndShowDialog(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;

.field final synthetic val$accounts:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic val$activityFinal:Landroid/app/Activity;

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$mids:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;Landroid/app/Activity;Lcom/alibaba/fastjson/JSONObject;Ljava/util/List;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 609
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$2;->this$0:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;

    iput-object p2, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$2;->val$activityFinal:Landroid/app/Activity;

    iput-object p3, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$2;->val$accounts:Lcom/alibaba/fastjson/JSONObject;

    iput-object p4, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$2;->val$mids:Ljava/util/List;

    iput-object p5, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$2;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 612
    if-nez p2, :cond_10

    .line 614
    sget-object v0, Lcom/bilibili/tv/ui/account/LoginActivity;->Companion:Lcom/bilibili/tv/ui/account/LoginActivity$a;

    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$2;->val$activityFinal:Landroid/app/Activity;

    sget-object v2, Lcom/bilibili/tv/ui/main/MainActivity;->Companion:Lcom/bilibili/tv/ui/main/MainActivity$a;

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/main/MainActivity$a;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/bilibili/tv/ui/account/LoginActivity$a;->a(Landroid/app/Activity;I)V

    .line 633
    :goto_f
    return-void

    .line 619
    :cond_10
    :try_start_10
    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$2;->val$accounts:Lcom/alibaba/fastjson/JSONObject;

    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$2;->val$mids:Ljava/util/List;

    add-int/lit8 v2, p2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 620
    const-string v2, "MainMyAccount"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switch to account: mid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$2;->val$mids:Ljava/util/List;

    add-int/lit8 v4, p2, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", account_info_len="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "account_info"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", passport_info_len="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "passport_info"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    new-instance v0, Ljava/io/FileWriter;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$2;->val$ctx:Landroid/content/Context;

    .line 622
    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "bili.account.storage"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 623
    const-string v2, "account_info"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 624
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 625
    new-instance v0, Ljava/io/FileWriter;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$2;->val$ctx:Landroid/content/Context;

    .line 626
    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "bili.passport.storage"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 627
    const-string v2, "passport_info"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 628
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 629
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_aa} :catch_ac

    goto/16 :goto_f

    .line 630
    :catch_ac
    move-exception v0

    .line 631
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_f
.end method
