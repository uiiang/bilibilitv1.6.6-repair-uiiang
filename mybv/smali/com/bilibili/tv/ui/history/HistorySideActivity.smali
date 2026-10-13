.class public Lcom/bilibili/tv/ui/history/HistorySideActivity;
.super Lcom/bilibili/tv/ui/base/BaseSideActivity;
.source "HistorySideActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/history/HistorySideActivity$a;,
        Lcom/bilibili/tv/ui/history/HistorySideActivity$DeleteConfirmClickListener;,
        Lcom/bilibili/tv/ui/history/HistorySideActivity$DismissListener;
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

.field private moreActionKeyHandler:Lbl/MoreActionKeyHandler;

.field private selectedFolder:Lbl/HistoryFolder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/bilibili/tv/ui/base/BaseSideActivity;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity;->folders:Ljava/util/List;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bilibili/tv/ui/history/HistorySideActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/history/HistorySideActivity;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->showDeleteConfirmDialog()V

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

    .line 192
    if-eqz p1, :cond_5

    if-nez p2, :cond_7

    :cond_5
    move v0, v1

    .line 202
    :goto_6
    return v0

    .line 195
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 196
    :goto_b
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_18

    .line 197
    if-ne v0, p1, :cond_13

    .line 198
    const/4 v0, 0x1

    goto :goto_6

    .line 200
    :cond_13
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_b

    :cond_18
    move v0, v1

    .line 202
    goto :goto_6
.end method

.method private loadFolders()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 234
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 235
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity;->folders:Ljava/util/List;

    new-instance v1, Lbl/HistoryFolder;

    const-string v2, "\u89c6\u9891"

    const-string v3, "archive"

    invoke-direct {v1, v2, v3, v4}, Lbl/HistoryFolder;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity;->folders:Ljava/util/List;

    new-instance v1, Lbl/HistoryFolder;

    const-string v2, "\u76f4\u64ad"

    const-string v3, "live"

    invoke-direct {v1, v2, v3, v4}, Lbl/HistoryFolder;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_35

    .line 239
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity;->folders:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/HistoryFolder;

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->showHistoryList(Lbl/HistoryFolder;)V

    .line 241
    :cond_35
    return-void
.end method

.method private showDeleteConfirmDialog()V
    .locals 5

    .prologue
    .line 206
    new-instance v0, Lbl/agb$a;

    invoke-direct {v0, p0}, Lbl/agb$a;-><init>(Landroid/app/Activity;)V

    .line 207
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbl/agb$a;->a(I)Lbl/agb$a;

    move-result-object v1

    const-string v2, "\u786e\u8ba4\u5220\u9664\u8be5\u6761\u5386\u53f2\u8bb0\u5f55\uff1f"

    invoke-virtual {v1, v2}, Lbl/agb$a;->a(Ljava/lang/String;)Lbl/agb$a;

    move-result-object v1

    const v2, 0x7f0c0079

    .line 208
    invoke-virtual {p0, v2}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bilibili/tv/ui/history/HistorySideActivity$DeleteConfirmClickListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/bilibili/tv/ui/history/HistorySideActivity$DeleteConfirmClickListener;-><init>(Lcom/bilibili/tv/ui/history/HistorySideActivity;Lcom/bilibili/tv/ui/history/HistorySideActivity$1;)V

    invoke-virtual {v1, v2, v3}, Lbl/agb$a;->a(Ljava/lang/String;Lbl/agb$b;)Lbl/agb$a;

    move-result-object v1

    const v2, 0x7f0c0076

    .line 209
    invoke-virtual {p0, v2}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/bilibili/tv/ui/history/HistorySideActivity$DismissListener;->INSTANCE:Lcom/bilibili/tv/ui/history/HistorySideActivity$DismissListener;

    invoke-virtual {v1, v2, v3}, Lbl/agb$a;->b(Ljava/lang/String;Lbl/agb$b;)Lbl/agb$a;

    .line 210
    invoke-virtual {v0}, Lbl/agb$a;->a()Lbl/agb;

    move-result-object v0

    invoke-virtual {v0}, Lbl/agb;->show()V

    .line 211
    return-void
.end method

.method private showHistoryList(Lbl/HistoryFolder;)V
    .locals 3

    .prologue
    .line 244
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity;->selectedFolder:Lbl/HistoryFolder;

    if-ne v0, p1, :cond_5

    .line 257
    :goto_4
    return-void

    .line 248
    :cond_5
    iput-object p1, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity;->selectedFolder:Lbl/HistoryFolder;

    .line 251
    invoke-virtual {p1}, Lbl/HistoryFolder;->getHistoryType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->newInstance(Ljava/lang/String;)Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    move-result-object v0

    .line 253
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 254
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f080091

    .line 255
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_4
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 60
    const v0, 0x7f0800eb

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->b(Landroid/support/v7/widget/RecyclerView;)V

    .line 61
    const v0, 0x7f080065

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u5386\u53f2\u8bb0\u5f55"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-direct {p0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->loadFolders()V

    .line 63
    return-void
.end method

.method public a(Lbl/agd;)V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9

    .prologue
    const/16 v8, 0x14

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 83
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity;->c:Lcom/bilibili/tv/ui/history/HistorySideActivity$a;

    if-nez v0, :cond_d

    .line 84
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 180
    :goto_c
    return v0

    .line 86
    :cond_d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 87
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 90
    invoke-static {p0}, Lbl/abd;->get_more_action_key(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v2, :cond_5b

    const/16 v1, 0x17

    if-eq v4, v1, :cond_23

    const/16 v1, 0x42

    if-ne v4, v1, :cond_5b

    .line 92
    :cond_23
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 93
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v5

    .line 94
    if-eqz v1, :cond_5b

    if-eqz v5, :cond_5b

    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_5b

    .line 95
    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->isDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 96
    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity;->moreActionKeyHandler:Lbl/MoreActionKeyHandler;

    if-nez v1, :cond_4c

    .line 97
    new-instance v1, Lbl/MoreActionKeyHandler;

    const-wide/16 v6, 0x1f4

    invoke-direct {v1, v6, v7}, Lbl/MoreActionKeyHandler;-><init>(J)V

    iput-object v1, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity;->moreActionKeyHandler:Lbl/MoreActionKeyHandler;

    .line 99
    :cond_4c
    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity;->moreActionKeyHandler:Lbl/MoreActionKeyHandler;

    new-instance v5, Lcom/bilibili/tv/ui/history/HistorySideActivity$1;

    invoke-direct {v5, p0}, Lcom/bilibili/tv/ui/history/HistorySideActivity$1;-><init>(Lcom/bilibili/tv/ui/history/HistorySideActivity;)V

    invoke-virtual {v1, p1, v5}, Lbl/MoreActionKeyHandler;->handle(Landroid/view/KeyEvent;Lbl/MoreActionKeyHandler$Trigger;)Z

    move-result v1

    if-eqz v1, :cond_5b

    move v0, v2

    .line 107
    goto :goto_c

    .line 112
    :cond_5b
    if-nez v0, :cond_af

    .line 113
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 114
    if-nez v1, :cond_68

    .line 115
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_c

    .line 118
    :cond_68
    if-eq v4, v8, :cond_6e

    const/16 v0, 0x13

    if-ne v4, v0, :cond_ac

    .line 120
    :cond_6e
    if-ne v4, v8, :cond_9f

    const/16 v0, 0x82

    :goto_72
    :try_start_72
    invoke-virtual {v1, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v5

    .line 121
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v6

    .line 122
    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v7

    .line 124
    if-eqz v7, :cond_8b

    invoke-virtual {v7}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_8b

    .line 125
    invoke-virtual {v7}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 128
    :cond_8b
    invoke-direct {p0, v6, v5}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->isDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    .line 129
    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->isDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_92} :catch_ab

    move-result v7

    .line 130
    if-ne v5, v1, :cond_a2

    move v0, v2

    .line 132
    :goto_96
    if-eqz v5, :cond_a4

    if-eqz v6, :cond_a4

    if-eqz v7, :cond_a4

    move v0, v2

    .line 133
    goto/16 :goto_c

    .line 120
    :cond_9f
    const/16 v0, 0x21

    goto :goto_72

    :cond_a2
    move v0, v3

    .line 130
    goto :goto_96

    .line 136
    :cond_a4
    if-eqz v0, :cond_ac

    if-eqz v7, :cond_ac

    move v0, v2

    .line 137
    goto/16 :goto_c

    .line 139
    :catch_ab
    move-exception v0

    .line 142
    :cond_ac
    sparse-switch v4, :sswitch_data_124

    .line 180
    :cond_af
    :goto_af
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_c

    .line 144
    :sswitch_b5
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "right"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_af

    .line 145
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity;->c:Lcom/bilibili/tv/ui/history/HistorySideActivity$a;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/history/HistorySideActivity$a;->b(Z)V

    goto :goto_af

    .line 150
    :sswitch_cf
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 151
    if-nez v0, :cond_d8

    move v0, v2

    .line 152
    goto/16 :goto_c

    .line 154
    :cond_d8
    instance-of v3, v0, Lbl/adw;

    if-eqz v3, :cond_e7

    check-cast v0, Lbl/adw;

    invoke-virtual {v0}, Lbl/adw;->c()Z

    move-result v0

    if-nez v0, :cond_e7

    move v0, v2

    .line 155
    goto/16 :goto_c

    .line 157
    :cond_e7
    instance-of v0, v1, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    if-eqz v0, :cond_af

    move-object v0, v1

    .line 158
    check-cast v0, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->c()V

    .line 159
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity;->c:Lcom/bilibili/tv/ui/history/HistorySideActivity$a;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/history/HistorySideActivity$a;->b(Z)V

    goto :goto_af

    .line 164
    :sswitch_f7
    invoke-static {p0}, Lbl/abd;->get_more_action_key(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v2, :cond_af

    .line 165
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 166
    instance-of v3, v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    if-eqz v3, :cond_af

    .line 167
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_af

    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->isDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_af

    .line 169
    sget-wide v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->currentAvid:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_af

    sget v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->currentPos:I

    if-ltz v0, :cond_af

    .line 170
    invoke-direct {p0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->showDeleteConfirmDialog()V

    move v0, v2

    .line 171
    goto/16 :goto_c

    .line 142
    nop

    :sswitch_data_124
    .sparse-switch
        0x15 -> :sswitch_b5
        0x16 -> :sswitch_cf
        0x52 -> :sswitch_f7
    .end sparse-switch
.end method

.method public g()I
    .locals 1

    .prologue
    .line 51
    const v0, 0x7f0a0091

    return v0
.end method

.method public h()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_8

    .line 186
    const/4 v0, 0x0

    .line 188
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
    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity;->c:Lcom/bilibili/tv/ui/history/HistorySideActivity$a;

    .line 78
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->onDestroy()V

    .line 79
    return-void
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

    .line 67
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/live/LiveLeftLinearLayoutManger;

    invoke-direct {v1, p0, v3, v2}, Lcom/bilibili/tv/ui/live/LiveLeftLinearLayoutManger;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 69
    new-instance v0, Lcom/bilibili/tv/ui/history/HistorySideActivity$a;

    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity;->folders:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/bilibili/tv/ui/history/HistorySideActivity$a;-><init>(Lcom/bilibili/tv/ui/history/HistorySideActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity;->c:Lcom/bilibili/tv/ui/history/HistorySideActivity$a;

    .line 70
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity;->c:Lcom/bilibili/tv/ui/history/HistorySideActivity$a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 71
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 73
    return-void
.end method
