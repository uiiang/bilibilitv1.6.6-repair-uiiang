.class Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$3;
.super Ljava/lang/Object;
.source "MainMyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->buildAccountItem(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Context;Lcom/alibaba/fastjson/JSONObject;Ljava/util/List;ILcom/alibaba/fastjson/JSONObject;Ljava/lang/String;[Landroid/app/AlertDialog;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;

.field final synthetic val$accounts:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$dialogRef:[Landroid/app/AlertDialog;

.field final synthetic val$index:I

.field final synthetic val$mids:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;I[Landroid/app/AlertDialog;Landroid/app/Activity;Lcom/alibaba/fastjson/JSONObject;Ljava/util/List;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 741
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$3;->this$0:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;

    iput p2, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$3;->val$index:I

    iput-object p3, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$3;->val$dialogRef:[Landroid/app/AlertDialog;

    iput-object p4, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$3;->val$activity:Landroid/app/Activity;

    iput-object p5, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$3;->val$accounts:Lcom/alibaba/fastjson/JSONObject;

    iput-object p6, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$3;->val$mids:Ljava/util/List;

    iput-object p7, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$3;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 744
    iget v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$3;->val$index:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2b

    .line 746
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$3;->val$dialogRef:[Landroid/app/AlertDialog;

    aget-object v0, v0, v2

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$3;->val$dialogRef:[Landroid/app/AlertDialog;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 747
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$3;->val$dialogRef:[Landroid/app/AlertDialog;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 749
    :cond_1d
    sget-object v0, Lcom/bilibili/tv/ui/account/LoginActivity;->Companion:Lcom/bilibili/tv/ui/account/LoginActivity$a;

    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$3;->val$activity:Landroid/app/Activity;

    sget-object v2, Lcom/bilibili/tv/ui/main/MainActivity;->Companion:Lcom/bilibili/tv/ui/main/MainActivity$a;

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/main/MainActivity$a;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/bilibili/tv/ui/account/LoginActivity$a;->a(Landroid/app/Activity;I)V

    .line 768
    :goto_2a
    return-void

    .line 754
    :cond_2b
    :try_start_2b
    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$3;->val$accounts:Lcom/alibaba/fastjson/JSONObject;

    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$3;->val$mids:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$3;->val$index:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 755
    const-string v2, "MainMyAccount"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switch to account: mid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$3;->val$mids:Ljava/util/List;

    iget v4, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$3;->val$index:I

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

    .line 756
    new-instance v0, Ljava/io/FileWriter;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$3;->val$ctx:Landroid/content/Context;

    .line 757
    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "bili.account.storage"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 758
    const-string v2, "account_info"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 759
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 760
    new-instance v0, Ljava/io/FileWriter;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$3;->val$ctx:Landroid/content/Context;

    .line 761
    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "bili.passport.storage"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 762
    const-string v2, "passport_info"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 763
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 764
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_c5} :catch_c7

    goto/16 :goto_2a

    .line 765
    :catch_c7
    move-exception v0

    .line 766
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2a
.end method
