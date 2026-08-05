.class public Lcom/bilibili/tv/ui/download/TaskGroupDetailActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "TaskGroupDetailActivity.java"


# static fields
.field public static final EXTRA_BVID:Ljava/lang/String; = "group_bvid"

.field public static final EXTRA_SHOW_COMPLETED:Ljava/lang/String; = "group_show_completed"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "group_title"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v0, 0x7f0a00b5

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/download/TaskGroupDetailActivity;->setContentView(I)V

    .line 24
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/TaskGroupDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "group_bvid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 25
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/TaskGroupDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "group_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/TaskGroupDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "group_show_completed"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 28
    const v0, 0x7f080260

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/download/TaskGroupDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 29
    if-eqz v1, :cond_62

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_62

    :goto_39
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    if-eqz v3, :cond_65

    new-instance v0, Lcom/bilibili/tv/ui/download/DownloadedFragment;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;-><init>()V

    .line 33
    :goto_43
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 34
    const-string v3, "group_bvid"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/TaskGroupDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 38
    const v2, 0x7f080091

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 39
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 40
    return-void

    .line 29
    :cond_62
    const-string v1, "\u5206P\u4efb\u52a1\u5217\u8868"

    goto :goto_39

    .line 32
    :cond_65
    new-instance v0, Lcom/bilibili/tv/ui/download/DownloadingFragment;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;-><init>()V

    goto :goto_43
.end method
