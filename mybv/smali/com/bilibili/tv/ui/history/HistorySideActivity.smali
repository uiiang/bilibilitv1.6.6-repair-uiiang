.class public Lcom/bilibili/tv/ui/history/HistorySideActivity;
.super Lcom/bilibili/tv/ui/base/BaseSideActivity;
.source "HistorySideActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/history/HistorySideActivity$a;,
        Lcom/bilibili/tv/ui/history/HistorySideActivity$DeleteConfirmClickListener;,
        Lcom/bilibili/tv/ui/history/HistorySideActivity$ClearConfirmClickListener;
    }
.end annotation


# instance fields
.field private c:Lcom/bilibili/tv/ui/history/HistorySideActivity$a;

.field private folders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbl/HistoryFolder;",
            ">;"
        }
    .end annotation
.end field

.field private selectedFolder:Lbl/HistoryFolder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/bilibili/tv/ui/base/BaseSideActivity;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity;->folders:Ljava/util/List;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bilibili/tv/ui/history/HistorySideActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 55
    return-void
.end method

.method static synthetic access$600(Lcom/bilibili/tv/ui/history/HistorySideActivity;Lbl/HistoryFolder;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->showHistoryList(Lbl/HistoryFolder;)V

    return-void
.end method

.method static synthetic access$700(Lcom/bilibili/tv/ui/history/HistorySideActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method private isDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 165
    if-eqz p1, :cond_5

    if-nez p2, :cond_7

    :cond_5
    move v0, v1

    .line 175
    :goto_6
    return v0

    .line 168
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 169
    :goto_b
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_18

    .line 170
    if-ne v0, p1, :cond_13

    .line 171
    const/4 v0, 0x1

    goto :goto_6

    .line 173
    :cond_13
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_b

    :cond_18
    move v0, v1

    .line 175
    goto :goto_6
.end method

.method private loadFolders()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 233
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 234
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity;->folders:Ljava/util/List;

    new-instance v1, Lbl/HistoryFolder;

    const-string v2, "\u89c6\u9891"

    const-string v3, "archive"

    invoke-direct {v1, v2, v3, v4}, Lbl/HistoryFolder;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity;->folders:Ljava/util/List;

    new-instance v1, Lbl/HistoryFolder;

    const-string v2, "\u76f4\u64ad"

    const-string v3, "live"

    invoke-direct {v1, v2, v3, v4}, Lbl/HistoryFolder;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_35

    .line 238
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity;->folders:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/HistoryFolder;

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->showHistoryList(Lbl/HistoryFolder;)V

    .line 240
    :cond_35
    return-void
.end method

.method private showClearConfirmDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 203
    new-instance v0, Lbl/agb$a;

    invoke-direct {v0, p0}, Lbl/agb$a;-><init>(Landroid/app/Activity;)V

    .line 204
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbl/agb$a;->a(I)Lbl/agb$a;

    move-result-object v1

    const-string v2, "\u786e\u8ba4\u6e05\u7a7a\u6240\u6709\u5386\u53f2\u8bb0\u5f55\uff1f"

    invoke-virtual {v1, v2}, Lbl/agb$a;->a(Ljava/lang/String;)Lbl/agb$a;

    move-result-object v1

    const v2, 0x7f0c0079

    .line 205
    invoke-virtual {p0, v2}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bilibili/tv/ui/history/HistorySideActivity$ClearConfirmClickListener;

    invoke-direct {v3, p0, v4}, Lcom/bilibili/tv/ui/history/HistorySideActivity$ClearConfirmClickListener;-><init>(Lcom/bilibili/tv/ui/history/HistorySideActivity;Lcom/bilibili/tv/ui/history/HistorySideActivity$1;)V

    invoke-virtual {v1, v2, v3}, Lbl/agb$a;->b(Ljava/lang/String;Lbl/agb$b;)Lbl/agb$a;

    move-result-object v1

    const v2, 0x7f0c0076

    .line 206
    invoke-virtual {p0, v2}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lbl/agb$a;->a(Ljava/lang/String;Lbl/agb$b;)Lbl/agb$a;

    .line 207
    invoke-virtual {v0}, Lbl/agb$a;->a()Lbl/agb;

    move-result-object v0

    invoke-virtual {v0}, Lbl/agb;->show()V

    .line 208
    return-void
.end method

.method private showDeleteConfirmDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 195
    new-instance v0, Lbl/agb$a;

    invoke-direct {v0, p0}, Lbl/agb$a;-><init>(Landroid/app/Activity;)V

    .line 196
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbl/agb$a;->a(I)Lbl/agb$a;

    move-result-object v1

    const-string v2, "\u786e\u8ba4\u5220\u9664\u8be5\u6761\u5386\u53f2\u8bb0\u5f55\uff1f"

    invoke-virtual {v1, v2}, Lbl/agb$a;->a(Ljava/lang/String;)Lbl/agb$a;

    move-result-object v1

    const v2, 0x7f0c0079

    .line 197
    invoke-virtual {p0, v2}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bilibili/tv/ui/history/HistorySideActivity$DeleteConfirmClickListener;

    invoke-direct {v3, p0, v4}, Lcom/bilibili/tv/ui/history/HistorySideActivity$DeleteConfirmClickListener;-><init>(Lcom/bilibili/tv/ui/history/HistorySideActivity;Lcom/bilibili/tv/ui/history/HistorySideActivity$1;)V

    invoke-virtual {v1, v2, v3}, Lbl/agb$a;->b(Ljava/lang/String;Lbl/agb$b;)Lbl/agb$a;

    move-result-object v1

    const v2, 0x7f0c0076

    .line 198
    invoke-virtual {p0, v2}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lbl/agb$a;->a(Ljava/lang/String;Lbl/agb$b;)Lbl/agb$a;

    .line 199
    invoke-virtual {v0}, Lbl/agb$a;->a()Lbl/agb;

    move-result-object v0

    invoke-virtual {v0}, Lbl/agb;->show()V

    .line 200
    return-void
.end method

.method private showHistoryList(Lbl/HistoryFolder;)V
    .locals 3

    .prologue
    .line 243
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity;->selectedFolder:Lbl/HistoryFolder;

    if-ne v0, p1, :cond_5

    .line 256
    :goto_4
    return-void

    .line 247
    :cond_5
    iput-object p1, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity;->selectedFolder:Lbl/HistoryFolder;

    .line 250
    invoke-virtual {p1}, Lbl/HistoryFolder;->getHistoryType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->newInstance(Ljava/lang/String;)Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    move-result-object v0

    .line 252
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 253
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f080091

    .line 254
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_4
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 59
    const v0, 0x7f0800eb

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->b(Landroid/support/v7/widget/RecyclerView;)V

    .line 60
    const v0, 0x7f080065

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u5386\u53f2\u8bb0\u5f55"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-direct {p0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->loadFolders()V

    .line 62
    return-void
.end method

.method public a(Lbl/agd;)V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9

    .prologue
    const/16 v5, 0x14

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 82
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity;->c:Lcom/bilibili/tv/ui/history/HistorySideActivity$a;

    if-nez v0, :cond_d

    .line 83
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 153
    :goto_c
    return v0

    .line 85
    :cond_d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 86
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 87
    if-nez v0, :cond_67

    .line 88
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 89
    if-nez v1, :cond_22

    .line 90
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_c

    .line 93
    :cond_22
    if-eq v4, v5, :cond_28

    const/16 v0, 0x13

    if-ne v4, v0, :cond_64

    .line 95
    :cond_28
    if-ne v4, v5, :cond_58

    const/16 v0, 0x82

    :goto_2c
    :try_start_2c
    invoke-virtual {v1, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v5

    .line 96
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v6

    .line 97
    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v7

    .line 99
    if-eqz v7, :cond_45

    invoke-virtual {v7}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_45

    .line 100
    invoke-virtual {v7}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 103
    :cond_45
    invoke-direct {p0, v6, v5}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->isDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    .line 104
    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->isDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_4c} :catch_63

    move-result v7

    .line 105
    if-ne v5, v1, :cond_5b

    move v0, v2

    .line 107
    :goto_50
    if-eqz v5, :cond_5d

    if-eqz v6, :cond_5d

    if-eqz v7, :cond_5d

    move v0, v2

    .line 108
    goto :goto_c

    .line 95
    :cond_58
    const/16 v0, 0x21

    goto :goto_2c

    :cond_5b
    move v0, v3

    .line 105
    goto :goto_50

    .line 111
    :cond_5d
    if-eqz v0, :cond_64

    if-eqz v7, :cond_64

    move v0, v2

    .line 112
    goto :goto_c

    .line 114
    :catch_63
    move-exception v0

    .line 117
    :cond_64
    sparse-switch v4, :sswitch_data_d4

    .line 153
    :cond_67
    :goto_67
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_c

    .line 119
    :sswitch_6c
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "right"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 120
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity;->c:Lcom/bilibili/tv/ui/history/HistorySideActivity$a;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/history/HistorySideActivity$a;->b(Z)V

    goto :goto_67

    .line 125
    :sswitch_86
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 126
    if-nez v0, :cond_8f

    move v0, v2

    .line 127
    goto/16 :goto_c

    .line 129
    :cond_8f
    instance-of v3, v0, Lbl/adw;

    if-eqz v3, :cond_9e

    check-cast v0, Lbl/adw;

    invoke-virtual {v0}, Lbl/adw;->c()Z

    move-result v0

    if-nez v0, :cond_9e

    move v0, v2

    .line 130
    goto/16 :goto_c

    .line 132
    :cond_9e
    instance-of v0, v1, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    if-eqz v0, :cond_67

    move-object v0, v1

    .line 133
    check-cast v0, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->c()V

    .line 134
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity;->c:Lcom/bilibili/tv/ui/history/HistorySideActivity$a;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/history/HistorySideActivity$a;->b(Z)V

    goto :goto_67

    .line 139
    :sswitch_ae
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 140
    instance-of v3, v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    if-eqz v3, :cond_67

    .line 141
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_67

    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->isDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 143
    sget-wide v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->currentAvid:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_67

    sget v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->currentPos:I

    if-ltz v0, :cond_67

    .line 144
    invoke-direct {p0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->showDeleteConfirmDialog()V

    move v0, v2

    .line 145
    goto/16 :goto_c

    .line 117
    :sswitch_data_d4
    .sparse-switch
        0x15 -> :sswitch_6c
        0x16 -> :sswitch_86
        0x52 -> :sswitch_ae
    .end sparse-switch
.end method

.method public g()I
    .locals 1

    .prologue
    .line 50
    const v0, 0x7f0a0091

    return v0
.end method

.method public h()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_8

    .line 159
    const/4 v0, 0x0

    .line 161
    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f080091

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_7
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity;->c:Lcom/bilibili/tv/ui/history/HistorySideActivity$a;

    .line 77
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->onDestroy()V

    .line 78
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 180
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 181
    instance-of v2, v1, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    if-nez v2, :cond_a

    .line 191
    :goto_9
    return v0

    .line 185
    :cond_a
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    .line 186
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 187
    if-eqz v1, :cond_1e

    invoke-direct {p0, v1, v2}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->isDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 188
    invoke-direct {p0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->showClearConfirmDialog()V

    goto :goto_9

    .line 191
    :cond_1e
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/live/LiveLeftLinearLayoutManger;

    invoke-direct {v1, p0, v3, v2}, Lcom/bilibili/tv/ui/live/LiveLeftLinearLayoutManger;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 68
    new-instance v0, Lcom/bilibili/tv/ui/history/HistorySideActivity$a;

    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity;->folders:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/bilibili/tv/ui/history/HistorySideActivity$a;-><init>(Lcom/bilibili/tv/ui/history/HistorySideActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity;->c:Lcom/bilibili/tv/ui/history/HistorySideActivity$a;

    .line 69
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity;->c:Lcom/bilibili/tv/ui/history/HistorySideActivity$a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 70
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 72
    return-void
.end method
