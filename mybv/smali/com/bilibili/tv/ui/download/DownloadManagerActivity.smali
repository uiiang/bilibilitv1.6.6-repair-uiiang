.class public final Lcom/bilibili/tv/ui/download/DownloadManagerActivity;
.super Lcom/bilibili/tv/ui/base/BaseUpViewActivity;
.source "DownloadManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;,
        Lcom/bilibili/tv/ui/download/DownloadManagerActivity$a;,
        Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$a;

.field private static final EXTRA_FRAGMENT_INDEX:Ljava/lang/String; = "fragment_index"

.field private static final e:Ljava/lang/String; = "fromType"


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView;

.field private b:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

.field private c:Ljava/lang/Integer;

.field private currentFragmentIndex:I

.field private d:Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;

.field private leftFocusBlocked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->Companion:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Lcom/bilibili/tv/ui/base/BaseUpViewActivity;-><init>()V

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->c:Ljava/lang/Integer;

    .line 39
    iput v1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->currentFragmentIndex:I

    .line 41
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->leftFocusBlocked:Z

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->setLeftSelected(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->showDeleteAllConfirmDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->currentFragmentIndex:I

    return v0
.end method

.method static synthetic access$302(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;I)I
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->currentFragmentIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;)Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->d:Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;

    return-object v0
.end method

.method private isDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 384
    if-eqz p1, :cond_5

    if-nez p2, :cond_7

    :cond_5
    move v0, v1

    .line 394
    :goto_6
    return v0

    .line 387
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 388
    :goto_b
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_18

    .line 389
    if-ne v0, p1, :cond_13

    .line 390
    const/4 v0, 0x1

    goto :goto_6

    .line 392
    :cond_13
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_b

    :cond_18
    move v0, v1

    .line 394
    goto :goto_6
.end method

.method private setLeftSelected(I)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 404
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_6

    .line 425
    :cond_5
    return-void

    .line 407
    :cond_6
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    move v1, v2

    .line 408
    :goto_d
    if-ge v1, v3, :cond_5

    .line 409
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 410
    if-nez v0, :cond_1b

    .line 408
    :cond_17
    :goto_17
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    .line 413
    :cond_1b
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 415
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    goto :goto_17

    .line 416
    :cond_26
    if-ne v1, p1, :cond_32

    .line 418
    instance-of v4, v0, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    if-eqz v4, :cond_17

    .line 419
    check-cast v0, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->c()V

    goto :goto_17

    .line 422
    :cond_32
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_17
.end method

.method private showDeleteAllConfirmDialog()V
    .locals 3

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 378
    :goto_6
    return-void

    .line 361
    :cond_7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u5220\u9664\u5168\u90e8\u4e0b\u8f7d\u4efb\u52a1"

    .line 362
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a\u8981\u5220\u9664\u6240\u6709\u4e0b\u8f7d\u4e2d\u4efb\u52a1\uff0c\u5e76\u6e05\u9664\u672c\u5730\u6587\u4ef6\u5417\uff1f"

    .line 363
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u5220\u9664"

    new-instance v2, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$4;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$4;-><init>(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;)V

    .line 364
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    .line 376
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 377
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_6
.end method

.method private showDownloadingMenu()V
    .locals 3

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 352
    :cond_6
    :goto_6
    return-void

    .line 312
    :cond_7
    invoke-static {p0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ui/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getDownloadingCount()I

    move-result v0

    if-eqz v0, :cond_6

    .line 315
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->d:Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;

    iget v1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->currentFragmentIndex:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;->d(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 316
    instance-of v1, v0, Lcom/bilibili/tv/ui/download/DownloadingFragment;

    if-eqz v1, :cond_6

    .line 319
    check-cast v0, Lcom/bilibili/tv/ui/download/DownloadingFragment;

    .line 322
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->hasActiveDownloadingTasks()Z

    move-result v0

    .line 324
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 325
    if-eqz v0, :cond_48

    .line 326
    const-string v2, "\u5168\u90e8\u6682\u505c"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    :goto_2f
    const-string v2, "\u5168\u90e8\u5220\u9664"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    new-instance v2, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;-><init>(Landroid/app/Activity;)V

    .line 333
    invoke-virtual {v2, v1}, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;->setItems(Ljava/util/List;)V

    .line 334
    new-instance v1, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$3;

    invoke-direct {v1, p0, v0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$3;-><init>(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;Z)V

    invoke-virtual {v2, v1}, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;->setOnMenuItemClickListener(Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$OnMenuItemClickListener;)V

    .line 351
    invoke-virtual {v2}, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;->show()V

    goto :goto_6

    .line 328
    :cond_48
    const-string v2, "\u5168\u90e8\u5f00\u59cb"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    const v0, 0x7f0800eb

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;

    .line 55
    const v0, 0x7f080065

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c0193

    invoke-static {v1}, Lbl/adl;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 57
    if-eqz v1, :cond_3c

    const-string v0, "fromType"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2f
    iput-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->c:Ljava/lang/Integer;

    .line 60
    if-eqz p1, :cond_3e

    .line 61
    const-string v0, "fragment_index"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->currentFragmentIndex:I

    .line 65
    :cond_3b
    :goto_3b
    return-void

    .line 57
    :cond_3c
    const/4 v0, 0x0

    goto :goto_2f

    .line 62
    :cond_3e
    if-eqz v1, :cond_3b

    .line 63
    const-string v0, "fragment_index"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->currentFragmentIndex:I

    goto :goto_3b
.end method

.method public a(Lbl/agd;)V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8

    .prologue
    const/16 v7, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 207
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->b:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->d:Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;

    if-nez v0, :cond_12

    .line 208
    :cond_d
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseUpViewActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 301
    :goto_11
    return v0

    .line 210
    :cond_12
    if-eqz p1, :cond_3d

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v0

    .line 211
    :goto_1d
    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v5, v0

    .line 212
    :goto_28
    if-eqz v1, :cond_122

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_122

    .line 213
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 214
    if-eqz v1, :cond_38

    if-nez v5, :cond_41

    .line 215
    :cond_38
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseUpViewActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_11

    :cond_3d
    move-object v1, v4

    .line 210
    goto :goto_1d

    :cond_3f
    move-object v5, v4

    .line 211
    goto :goto_28

    .line 217
    :cond_41
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v6, 0x52

    if-ne v0, v6, :cond_6a

    .line 219
    iget v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->currentFragmentIndex:I

    if-nez v0, :cond_6a

    .line 220
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->d:Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;

    iget v6, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->currentFragmentIndex:I

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;->d(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_68

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 222
    :goto_5b
    if-eqz v0, :cond_6a

    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->isDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 223
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->showDownloadingMenu()V

    move v0, v2

    .line 224
    goto :goto_11

    :cond_68
    move-object v0, v4

    .line 221
    goto :goto_5b

    .line 228
    :cond_6a
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v6, 0x13

    if-eq v0, v6, :cond_78

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v7, :cond_cb

    .line 231
    :cond_78
    :try_start_78
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v7, :cond_ba

    .line 232
    const/16 v0, 0x82

    .line 231
    :goto_80
    invoke-virtual {v1, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 233
    iget-object v5, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;

    .line 235
    iget-object v6, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->d:Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;

    if-eqz v6, :cond_a6

    iget-object v6, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->b:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    if-eqz v6, :cond_a6

    .line 236
    iget-object v6, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->d:Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;

    iget-object v7, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->b:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    invoke-virtual {v7}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->f()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;->d(I)Landroid/support/v4/app/Fragment;

    move-result-object v6

    .line 237
    if-eqz v6, :cond_a6

    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_a6

    .line 238
    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v4

    .line 241
    :cond_a6
    invoke-direct {p0, v5, v0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->isDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    .line 242
    invoke-direct {p0, v4, v1}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->isDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_ad} :catch_c4

    move-result v4

    .line 243
    if-ne v0, v1, :cond_b1

    move v3, v2

    .line 244
    :cond_b1
    if-eqz v0, :cond_bd

    if-eqz v5, :cond_bd

    if-eqz v4, :cond_bd

    move v0, v2

    .line 245
    goto/16 :goto_11

    .line 232
    :cond_ba
    const/16 v0, 0x21

    goto :goto_80

    .line 247
    :cond_bd
    if-eqz v3, :cond_c5

    if-eqz v4, :cond_c5

    move v0, v2

    .line 248
    goto/16 :goto_11

    .line 250
    :catch_c4
    move-exception v0

    .line 252
    :cond_c5
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseUpViewActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_11

    .line 254
    :cond_cb
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v6, 0x15

    if-ne v0, v6, :cond_12c

    .line 257
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_122

    .line 258
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 259
    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "right"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_122

    .line 262
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v5

    .line 263
    iget v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->currentFragmentIndex:I

    if-ltz v0, :cond_166

    iget v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->currentFragmentIndex:I

    if-ge v0, v5, :cond_166

    .line 264
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;

    iget v1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->currentFragmentIndex:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 266
    :goto_105
    if-nez v1, :cond_164

    move v2, v3

    .line 268
    :goto_108
    if-ge v2, v5, :cond_164

    .line 269
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 270
    if-eqz v0, :cond_128

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_128

    .line 276
    :goto_118
    if-eqz v0, :cond_11d

    .line 277
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 279
    :cond_11d
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->b:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->b(Z)V

    .line 301
    :cond_122
    :goto_122
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseUpViewActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_11

    .line 268
    :cond_128
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_108

    .line 282
    :cond_12c
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0x16

    if-ne v0, v3, :cond_122

    .line 285
    instance-of v0, v1, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    if-eqz v0, :cond_122

    .line 286
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->d:Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;

    iget-object v3, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->b:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->f()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;->d(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 287
    if-nez v0, :cond_149

    move v0, v2

    .line 288
    goto/16 :goto_11

    .line 291
    :cond_149
    instance-of v3, v0, Lbl/adw;

    if-eqz v3, :cond_158

    .line 292
    check-cast v0, Lbl/adw;

    invoke-virtual {v0}, Lbl/adw;->c()Z

    move-result v0

    if-nez v0, :cond_158

    move v0, v2

    .line 293
    goto/16 :goto_11

    :cond_158
    move-object v0, v1

    .line 296
    check-cast v0, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->c()V

    .line 297
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->b:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->b(Z)V

    goto :goto_122

    :cond_164
    move-object v0, v1

    goto :goto_118

    :cond_166
    move-object v1, v4

    goto :goto_105
.end method

.method public g()I
    .locals 1

    .prologue
    .line 49
    const v0, 0x7f0a00ae

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 156
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseUpViewActivity;->onDestroy()V

    move-object v0, v1

    .line 157
    check-cast v0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->b:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    .line 158
    check-cast v1, Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;

    iput-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->d:Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;

    .line 159
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 163
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseUpViewActivity;->onPause()V

    .line 167
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_22

    .line 168
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    move v0, v1

    .line 169
    :goto_f
    if-ge v0, v2, :cond_1f

    .line 170
    iget-object v3, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 171
    if-eqz v3, :cond_1c

    .line 172
    invoke-virtual {v3, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 169
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 175
    :cond_1f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->leftFocusBlocked:Z

    .line 177
    :cond_22
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 77
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseUpViewActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 79
    const-string v2, "supportFragmentManager"

    invoke-static {v0, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance v2, Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;

    const v3, 0x7f080091

    invoke-direct {v2, v0, v3}, Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;I)V

    iput-object v2, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->d:Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;

    .line 82
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->d:Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;

    .line 83
    if-nez v0, :cond_1f

    .line 84
    invoke-static {}, Lbl/bbi;->a()V

    .line 86
    :cond_1f
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;->a()I

    move-result v0

    .line 87
    new-instance v2, Lbl/cj;

    invoke-direct {v2}, Lbl/cj;-><init>()V

    .line 88
    add-int/lit8 v3, v0, -0x1

    .line 89
    if-ltz v3, :cond_41

    move v0, v1

    .line 92
    :goto_2d
    iget-object v4, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->d:Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;

    .line 93
    if-nez v4, :cond_34

    .line 94
    invoke-static {}, Lbl/bbi;->a()V

    .line 96
    :cond_34
    invoke-virtual {v4, v0}, Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;->b(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lbl/cj;->b(ILjava/lang/Object;)V

    .line 97
    if-ne v0, v3, :cond_92

    .line 104
    :cond_41
    new-instance v0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    invoke-direct {v0, p0, v2}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;-><init>(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;Lbl/cj;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->b:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    .line 105
    new-instance v0, Lcom/bilibili/tv/ui/ranking/RankingLeftLinearLayoutManger;

    invoke-direct {v0, p0, v5, v1}, Lcom/bilibili/tv/ui/ranking/RankingLeftLinearLayoutManger;-><init>(Landroid/content/Context;IZ)V

    .line 106
    iget-object v2, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;

    .line 107
    if-nez v2, :cond_54

    .line 108
    invoke-static {}, Lbl/bbi;->a()V

    .line 110
    :cond_54
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 111
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;

    .line 112
    if-nez v0, :cond_5e

    .line 113
    invoke-static {}, Lbl/bbi;->a()V

    .line 115
    :cond_5e
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 116
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;

    .line 117
    if-nez v0, :cond_68

    .line 118
    invoke-static {}, Lbl/bbi;->a()V

    .line 120
    :cond_68
    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 121
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;

    .line 122
    if-nez v0, :cond_72

    .line 123
    invoke-static {}, Lbl/bbi;->a()V

    .line 125
    :cond_72
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->b:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 128
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->d:Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;

    iget v1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->currentFragmentIndex:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;->c(I)V

    .line 131
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->b:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    iget v1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->currentFragmentIndex:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->e(I)V

    .line 132
    iget v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->currentFragmentIndex:I

    .line 135
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$1;-><init>(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 151
    return-void

    .line 100
    :cond_92
    add-int/lit8 v0, v0, 0x1

    .line 102
    goto :goto_2d
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 181
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseUpViewActivity;->onResume()V

    .line 184
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->leftFocusBlocked:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1a

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->leftFocusBlocked:Z

    .line 186
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;

    .line 187
    new-instance v1, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$2;-><init>(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 203
    :cond_1a
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseUpViewActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 71
    const-string v0, "fragment_index"

    iget v1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->currentFragmentIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    return-void
.end method
