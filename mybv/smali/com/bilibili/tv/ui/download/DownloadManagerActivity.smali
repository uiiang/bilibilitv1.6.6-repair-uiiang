.class public final Lcom/bilibili/tv/ui/download/DownloadManagerActivity;
.super Lcom/bilibili/tv/ui/base/BaseUpViewActivity;
.source "DownloadManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;,
        Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;,
        Lcom/bilibili/tv/ui/download/DownloadManagerActivity$a;
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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
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

    .line 28
    invoke-direct {p0}, Lcom/bilibili/tv/ui/base/BaseUpViewActivity;-><init>()V

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->c:Ljava/lang/Integer;

    .line 37
    iput v1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->currentFragmentIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;)Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->d:Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;I)I
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->currentFragmentIndex:I

    return p1
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    const v0, 0x7f0800eb

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;

    .line 51
    const v0, 0x7f080065

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c0193

    invoke-static {v1}, Lbl/adl;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 53
    if-eqz v1, :cond_3c

    const-string v0, "fromType"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2f
    iput-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->c:Ljava/lang/Integer;

    .line 56
    if-eqz p1, :cond_3e

    .line 57
    const-string v0, "fragment_index"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->currentFragmentIndex:I

    .line 61
    :cond_3b
    :goto_3b
    return-void

    .line 53
    :cond_3c
    const/4 v0, 0x0

    goto :goto_2f

    .line 58
    :cond_3e
    if-eqz v1, :cond_3b

    .line 59
    const-string v0, "fragment_index"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->currentFragmentIndex:I

    goto :goto_3b
.end method

.method public a(Lbl/agd;)V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 153
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->b:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->d:Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;

    if-nez v1, :cond_10

    .line 154
    :cond_b
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseUpViewActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 208
    :goto_f
    return v0

    .line 156
    :cond_10
    if-eqz p1, :cond_49

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 157
    :goto_1a
    if-eqz p1, :cond_24

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 158
    :cond_24
    if-eqz v1, :cond_95

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_95

    .line 159
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 160
    if-eqz v1, :cond_44

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x13

    if-eq v4, v5, :cond_44

    .line 161
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x14

    if-ne v4, v5, :cond_4b

    .line 162
    :cond_44
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseUpViewActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_f

    :cond_49
    move-object v1, v0

    .line 156
    goto :goto_1a

    .line 164
    :cond_4b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x15

    if-ne v4, v5, :cond_9e

    .line 167
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_95

    .line 168
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 169
    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "right"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 171
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 172
    if-ltz v1, :cond_90

    move v0, v2

    .line 175
    :goto_7a
    iget-object v3, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 176
    const-string v4, "childView"

    invoke-static {v3, v4}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v3}, Landroid/view/View;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 178
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 180
    :cond_8e
    if-ne v0, v1, :cond_9b

    .line 186
    :cond_90
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->b:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->b(Z)V

    .line 208
    :cond_95
    :goto_95
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseUpViewActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_f

    .line 183
    :cond_9b
    add-int/lit8 v0, v0, 0x1

    .line 184
    goto :goto_7a

    .line 189
    :cond_9e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x16

    if-ne v0, v2, :cond_95

    .line 192
    instance-of v0, v1, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    if-eqz v0, :cond_95

    .line 193
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->d:Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->b:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->f()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;->d(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 194
    if-nez v0, :cond_bb

    move v0, v3

    .line 195
    goto/16 :goto_f

    .line 198
    :cond_bb
    instance-of v2, v0, Lbl/adw;

    if-eqz v2, :cond_ca

    .line 199
    check-cast v0, Lbl/adw;

    invoke-virtual {v0}, Lbl/adw;->c()Z

    move-result v0

    if-nez v0, :cond_ca

    move v0, v3

    .line 200
    goto/16 :goto_f

    :cond_ca
    move-object v0, v1

    .line 203
    check-cast v0, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->c()V

    .line 204
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->b:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->b(Z)V

    goto :goto_95
.end method

.method public g()I
    .locals 1

    .prologue
    .line 45
    const v0, 0x7f0a00ae

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseUpViewActivity;->onDestroy()V

    move-object v0, v1

    .line 147
    check-cast v0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->b:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    .line 148
    check-cast v1, Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;

    iput-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->d:Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;

    .line 149
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 73
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseUpViewActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 75
    const-string v2, "supportFragmentManager"

    invoke-static {v0, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    new-instance v2, Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;

    const v3, 0x7f080091

    invoke-direct {v2, v0, v3}, Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;I)V

    iput-object v2, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->d:Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;

    .line 78
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->d:Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;

    .line 79
    if-nez v0, :cond_1f

    .line 80
    invoke-static {}, Lbl/bbi;->a()V

    .line 82
    :cond_1f
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;->a()I

    move-result v0

    .line 83
    new-instance v2, Lbl/cj;

    invoke-direct {v2}, Lbl/cj;-><init>()V

    .line 84
    add-int/lit8 v3, v0, -0x1

    .line 85
    if-ltz v3, :cond_41

    move v0, v1

    .line 88
    :goto_2d
    iget-object v4, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->d:Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;

    .line 89
    if-nez v4, :cond_34

    .line 90
    invoke-static {}, Lbl/bbi;->a()V

    .line 92
    :cond_34
    invoke-virtual {v4, v0}, Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;->b(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lbl/cj;->b(ILjava/lang/Object;)V

    .line 93
    if-ne v0, v3, :cond_96

    .line 100
    :cond_41
    new-instance v0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    invoke-direct {v0, p0, v2}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;-><init>(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;Lbl/cj;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->b:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    .line 101
    new-instance v0, Lcom/bilibili/tv/ui/ranking/RankingLeftLinearLayoutManger;

    invoke-direct {v0, p0, v5, v1}, Lcom/bilibili/tv/ui/ranking/RankingLeftLinearLayoutManger;-><init>(Landroid/content/Context;IZ)V

    .line 102
    iget-object v2, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;

    .line 103
    if-nez v2, :cond_54

    .line 104
    invoke-static {}, Lbl/bbi;->a()V

    .line 106
    :cond_54
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 107
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;

    .line 108
    if-nez v0, :cond_5e

    .line 109
    invoke-static {}, Lbl/bbi;->a()V

    .line 111
    :cond_5e
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 112
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;

    .line 113
    if-nez v0, :cond_68

    .line 114
    invoke-static {}, Lbl/bbi;->a()V

    .line 116
    :cond_68
    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 117
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;

    .line 118
    if-nez v0, :cond_72

    .line 119
    invoke-static {}, Lbl/bbi;->a()V

    .line 121
    :cond_72
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->b:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 124
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->d:Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;

    iget v1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->currentFragmentIndex:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;->c(I)V

    .line 127
    iget v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->currentFragmentIndex:I

    if-lez v0, :cond_95

    .line 128
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->b:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    iget v1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->currentFragmentIndex:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->e(I)V

    .line 130
    iget v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->currentFragmentIndex:I

    .line 131
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$1;-><init>(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 141
    :cond_95
    return-void

    .line 96
    :cond_96
    add-int/lit8 v0, v0, 0x1

    .line 98
    goto :goto_2d
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseUpViewActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 67
    const-string v0, "fragment_index"

    iget v1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->currentFragmentIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 68
    return-void
.end method
