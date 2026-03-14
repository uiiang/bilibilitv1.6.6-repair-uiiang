.class public Lcom/bilibili/tv/ui/ranking/ElseActivity;
.super Lcom/bilibili/tv/ui/base/BaseSideActivity;
.source "ElseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/ranking/ElseActivity$a;
    }
.end annotation


# instance fields
.field private b:Lbl/aeg2;

.field private c:Lcom/bilibili/tv/ui/ranking/ElseActivity$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/bilibili/tv/ui/base/BaseSideActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bilibili/tv/ui/ranking/ElseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 46
    return-void
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/ranking/ElseActivity;)Lbl/aeg2;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/bilibili/tv/ui/ranking/ElseActivity;->b:Lbl/aeg2;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 50
    const-string v0, "ElseActivity"

    const-string v1, "initData: start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/ranking/ElseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_e

    .line 58
    :goto_d
    return-void

    .line 54
    :cond_e
    const v0, 0x7f0800eb

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/ranking/ElseActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/ranking/ElseActivity;->b(Landroid/support/v7/widget/RecyclerView;)V

    .line 55
    const v0, 0x7f080065

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/ranking/ElseActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u5176\u5b83"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    new-instance v0, Lbl/aeg2;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/ranking/ElseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f080091

    invoke-direct {v0, v1, v2}, Lbl/aeg2;-><init>(Landroid/support/v4/app/FragmentManager;I)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/ranking/ElseActivity;->b:Lbl/aeg2;

    .line 57
    const-string v0, "ElseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initData: aeg2 created, count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/ranking/ElseActivity;->b:Lbl/aeg2;

    invoke-virtual {v2}, Lbl/aeg2;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public a(Lbl/agd;)V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 94
    iget-object v0, p0, Lcom/bilibili/tv/ui/ranking/ElseActivity;->c:Lcom/bilibili/tv/ui/ranking/ElseActivity$a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bilibili/tv/ui/ranking/ElseActivity;->b:Lbl/aeg2;

    if-nez v0, :cond_e

    .line 95
    :cond_9
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 127
    :goto_d
    return v0

    .line 97
    :cond_e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 98
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 99
    if-nez v0, :cond_26

    .line 100
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/ranking/ElseActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 101
    if-nez v1, :cond_23

    .line 102
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_d

    .line 104
    :cond_23
    packed-switch v3, :pswitch_data_6c

    .line 127
    :cond_26
    :goto_26
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_d

    .line 106
    :pswitch_2b
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "right"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 107
    iget-object v0, p0, Lcom/bilibili/tv/ui/ranking/ElseActivity;->c:Lcom/bilibili/tv/ui/ranking/ElseActivity$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/ranking/ElseActivity$a;->b(Z)V

    goto :goto_26

    .line 112
    :pswitch_46
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/ranking/ElseActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 113
    if-nez v0, :cond_4e

    move v0, v2

    .line 114
    goto :goto_d

    .line 116
    :cond_4e
    instance-of v3, v0, Lbl/adw;

    if-eqz v3, :cond_5c

    check-cast v0, Lbl/adw;

    invoke-virtual {v0}, Lbl/adw;->c()Z

    move-result v0

    if-nez v0, :cond_5c

    move v0, v2

    .line 117
    goto :goto_d

    .line 119
    :cond_5c
    instance-of v0, v1, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    if-eqz v0, :cond_26

    move-object v0, v1

    .line 120
    check-cast v0, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->c()V

    .line 121
    iget-object v0, p0, Lcom/bilibili/tv/ui/ranking/ElseActivity;->c:Lcom/bilibili/tv/ui/ranking/ElseActivity$a;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/ranking/ElseActivity$a;->b(Z)V

    goto :goto_26

    .line 104
    :pswitch_data_6c
    .packed-switch 0x15
        :pswitch_2b
        :pswitch_46
    .end packed-switch
.end method

.method public g()I
    .locals 1

    .prologue
    .line 41
    const v0, 0x7f0a001d

    return v0
.end method

.method public h()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/bilibili/tv/ui/ranking/ElseActivity;->b:Lbl/aeg2;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/bilibili/tv/ui/ranking/ElseActivity;->c:Lcom/bilibili/tv/ui/ranking/ElseActivity$a;

    if-nez v0, :cond_a

    .line 133
    :cond_8
    const/4 v0, 0x0

    .line 135
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/bilibili/tv/ui/ranking/ElseActivity;->b:Lbl/aeg2;

    iget-object v1, p0, Lcom/bilibili/tv/ui/ranking/ElseActivity;->c:Lcom/bilibili/tv/ui/ranking/ElseActivity$a;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/ranking/ElseActivity$a;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lbl/aeg2;->d(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_9
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    iget-object v0, p0, Lcom/bilibili/tv/ui/ranking/ElseActivity;->b:Lbl/aeg2;

    if-eqz v0, :cond_c

    .line 85
    iget-object v0, p0, Lcom/bilibili/tv/ui/ranking/ElseActivity;->b:Lbl/aeg2;

    invoke-virtual {v0}, Lbl/aeg2;->b()V

    .line 86
    iput-object v1, p0, Lcom/bilibili/tv/ui/ranking/ElseActivity;->b:Lbl/aeg2;

    .line 88
    :cond_c
    iput-object v1, p0, Lcom/bilibili/tv/ui/ranking/ElseActivity;->c:Lcom/bilibili/tv/ui/ranking/ElseActivity$a;

    .line 89
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->onDestroy()V

    .line 90
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 63
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 64
    const-string v0, "ElseActivity"

    const-string v2, "onPostCreate: start"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/ranking/ElseActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v2, Lcom/bilibili/tv/ui/live/LiveLeftLinearLayoutManger;

    invoke-direct {v2, p0, v7, v1}, Lcom/bilibili/tv/ui/live/LiveLeftLinearLayoutManger;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 66
    iget-object v0, p0, Lcom/bilibili/tv/ui/ranking/ElseActivity;->b:Lbl/aeg2;

    invoke-virtual {v0}, Lbl/aeg2;->a()I

    move-result v2

    .line 67
    const-string v0, "ElseActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPostCreate: tabCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v3, Lbl/cj;

    invoke-direct {v3}, Lbl/cj;-><init>()V

    move v0, v1

    .line 69
    :goto_3c
    if-ge v0, v2, :cond_76

    .line 70
    iget-object v4, p0, Lcom/bilibili/tv/ui/ranking/ElseActivity;->b:Lbl/aeg2;

    invoke-virtual {v4, v0}, Lbl/aeg2;->b(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lbl/cj;->b(ILjava/lang/Object;)V

    .line 71
    const-string v4, "ElseActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPostCreate: tab["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/bilibili/tv/ui/ranking/ElseActivity;->b:Lbl/aeg2;

    invoke-virtual {v6, v0}, Lbl/aeg2;->b(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 73
    :cond_76
    new-instance v0, Lcom/bilibili/tv/ui/ranking/ElseActivity$a;

    invoke-direct {v0, p0, v3}, Lcom/bilibili/tv/ui/ranking/ElseActivity$a;-><init>(Lcom/bilibili/tv/ui/ranking/ElseActivity;Lbl/cj;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/ranking/ElseActivity;->c:Lcom/bilibili/tv/ui/ranking/ElseActivity$a;

    .line 74
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/ranking/ElseActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v2, p0, Lcom/bilibili/tv/ui/ranking/ElseActivity;->c:Lcom/bilibili/tv/ui/ranking/ElseActivity$a;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 75
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/ranking/ElseActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/ranking/ElseActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 77
    const-string v0, "ElseActivity"

    const-string v2, "onPostCreate: selecting first tab"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/bilibili/tv/ui/ranking/ElseActivity;->b:Lbl/aeg2;

    invoke-virtual {v0, v1}, Lbl/aeg2;->c(I)V

    .line 79
    return-void
.end method
