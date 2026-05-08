.class public final Lcom/bilibili/tv/ui/setting/SettingActivity;
.super Lcom/bilibili/tv/ui/base/BaseUpViewActivity;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/setting/SettingActivity$a;,
        Lcom/bilibili/tv/ui/setting/SettingActivity$b;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bilibili/tv/ui/setting/SettingActivity$a;

.field private static final e:Ljava/lang/String; = "fromType"

.field private static final f:I = 0x1

.field private static final g:I = 0x2


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView;

.field private b:Lcom/bilibili/tv/ui/setting/SettingActivity$b;

.field private c:Ljava/lang/Integer;

.field private d:Lbl/afp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/bilibili/tv/ui/setting/SettingActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/setting/SettingActivity$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/setting/SettingActivity;->Companion:Lcom/bilibili/tv/ui/setting/SettingActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/bilibili/tv/ui/base/BaseUpViewActivity;-><init>()V

    .line 51
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/setting/SettingActivity;->c:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/setting/SettingActivity;)Lbl/afp;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bilibili/tv/ui/setting/SettingActivity;->d:Lbl/afp;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 65
    const v0, 0x7f0800eb

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/setting/SettingActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/setting/SettingActivity;->a:Landroid/support/v7/widget/RecyclerView;

    .line 66
    const v0, 0x7f080065

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/setting/SettingActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c0112

    invoke-static {v1}, Lbl/adl;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/setting/SettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_32

    const-string v1, "fromType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2f
    iput-object v0, p0, Lcom/bilibili/tv/ui/setting/SettingActivity;->c:Ljava/lang/Integer;

    .line 69
    return-void

    .line 68
    :cond_32
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method public a(Lbl/agd;)V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 160
    iget-object v1, p0, Lcom/bilibili/tv/ui/setting/SettingActivity;->b:Lcom/bilibili/tv/ui/setting/SettingActivity$b;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/bilibili/tv/ui/setting/SettingActivity;->d:Lbl/afp;

    if-nez v1, :cond_10

    .line 161
    :cond_b
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseUpViewActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    .line 235
    :cond_f
    :goto_f
    return v3

    .line 163
    :cond_10
    if-eqz p1, :cond_49

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 164
    :goto_1a
    if-eqz p1, :cond_24

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 165
    :cond_24
    if-eqz v1, :cond_bc

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_bc

    .line 166
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/setting/SettingActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    .line 167
    if-eqz v2, :cond_44

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v5, 0x13

    if-eq v1, v5, :cond_44

    .line 168
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v5, 0x14

    if-ne v1, v5, :cond_4b

    .line 169
    :cond_44
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseUpViewActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_f

    :cond_49
    move-object v1, v0

    .line 163
    goto :goto_1a

    .line 171
    :cond_4b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v5, 0x15

    if-ne v1, v5, :cond_c5

    .line 172
    iget-object v0, p0, Lcom/bilibili/tv/ui/setting/SettingActivity;->d:Lbl/afp;

    iget-object v1, p0, Lcom/bilibili/tv/ui/setting/SettingActivity;->b:Lcom/bilibili/tv/ui/setting/SettingActivity$b;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/setting/SettingActivity$b;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lbl/afp;->d(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 173
    instance-of v0, v1, Lbl/afn;

    if-eqz v0, :cond_6c

    move-object v0, v1

    check-cast v0, Lbl/afn;

    invoke-virtual {v0}, Lbl/afn;->b()Z

    move-result v0

    if-nez v0, :cond_f

    .line 176
    :cond_6c
    instance-of v0, v1, Lbl/afm3;

    if-eqz v0, :cond_79

    move-object v0, v1

    check-cast v0, Lbl/afm3;

    invoke-virtual {v0}, Lbl/afm3;->b()Z

    move-result v0

    if-nez v0, :cond_f

    .line 179
    :cond_79
    instance-of v0, v1, Lbl/afm4;

    if-eqz v0, :cond_86

    move-object v0, v1

    check-cast v0, Lbl/afm4;

    invoke-virtual {v0}, Lbl/afm4;->b()Z

    move-result v0

    if-nez v0, :cond_f

    .line 182
    :cond_86
    instance-of v0, v1, Lbl/afk;

    if-eqz v0, :cond_92

    check-cast v1, Lbl/afk;

    invoke-virtual {v1}, Lbl/afk;->b()Z

    move-result v0

    if-nez v0, :cond_f

    .line 185
    :cond_92
    instance-of v0, v2, Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_bc

    .line 186
    iget-object v0, p0, Lcom/bilibili/tv/ui/setting/SettingActivity;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 187
    if-ltz v1, :cond_b7

    move v0, v3

    .line 190
    :goto_a1
    iget-object v2, p0, Lcom/bilibili/tv/ui/setting/SettingActivity;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 191
    const-string v4, "childView"

    invoke-static {v2, v4}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_b5

    .line 193
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 195
    :cond_b5
    if-ne v0, v1, :cond_c2

    .line 201
    :cond_b7
    iget-object v0, p0, Lcom/bilibili/tv/ui/setting/SettingActivity;->b:Lcom/bilibili/tv/ui/setting/SettingActivity$b;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/setting/SettingActivity$b;->b(Z)V

    .line 235
    :cond_bc
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseUpViewActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_f

    .line 198
    :cond_c2
    add-int/lit8 v0, v0, 0x1

    .line 199
    goto :goto_a1

    .line 203
    :cond_c5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_bc

    .line 204
    iget-object v0, p0, Lcom/bilibili/tv/ui/setting/SettingActivity;->d:Lbl/afp;

    iget-object v1, p0, Lcom/bilibili/tv/ui/setting/SettingActivity;->b:Lcom/bilibili/tv/ui/setting/SettingActivity$b;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/setting/SettingActivity$b;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lbl/afp;->d(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 205
    if-nez v1, :cond_de

    move v3, v4

    .line 206
    goto/16 :goto_f

    .line 208
    :cond_de
    instance-of v0, v1, Lbl/adw;

    if-eqz v0, :cond_bc

    move-object v0, v1

    .line 209
    check-cast v0, Lbl/adw;

    invoke-virtual {v0}, Lbl/adw;->c()Z

    move-result v0

    if-nez v0, :cond_ee

    move v3, v4

    .line 210
    goto/16 :goto_f

    .line 212
    :cond_ee
    iget-object v0, p0, Lcom/bilibili/tv/ui/setting/SettingActivity;->b:Lcom/bilibili/tv/ui/setting/SettingActivity$b;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/ui/setting/SettingActivity$b;->b(Z)V

    .line 213
    instance-of v0, v2, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    if-eqz v0, :cond_fd

    move-object v0, v2

    .line 214
    check-cast v0, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->c()V

    .line 216
    :cond_fd
    instance-of v0, v1, Lbl/afq;

    if-eqz v0, :cond_109

    .line 217
    check-cast v1, Lbl/afq;

    invoke-virtual {v1}, Lbl/afq;->a()Z

    move-result v3

    goto/16 :goto_f

    .line 219
    :cond_109
    instance-of v0, v1, Lbl/afk;

    if-eqz v0, :cond_115

    .line 220
    check-cast v1, Lbl/afk;

    invoke-virtual {v1}, Lbl/afk;->a()Z

    move-result v3

    goto/16 :goto_f

    .line 222
    :cond_115
    instance-of v0, v1, Lbl/afn;

    if-eqz v0, :cond_121

    .line 223
    check-cast v1, Lbl/afn;

    invoke-virtual {v1}, Lbl/afn;->a()Z

    move-result v3

    goto/16 :goto_f

    .line 225
    :cond_121
    instance-of v0, v1, Lbl/afm3;

    if-eqz v0, :cond_12d

    .line 226
    check-cast v1, Lbl/afm3;

    invoke-virtual {v1}, Lbl/afm3;->a()Z

    move-result v3

    goto/16 :goto_f

    .line 228
    :cond_12d
    instance-of v0, v1, Lbl/afm4;

    if-eqz v0, :cond_139

    .line 229
    check-cast v1, Lbl/afm4;

    invoke-virtual {v1}, Lbl/afm4;->a()Z

    move-result v3

    goto/16 :goto_f

    :cond_139
    move v3, v4

    .line 231
    goto/16 :goto_f
.end method

.method public g()I
    .locals 1

    .prologue
    .line 60
    const v0, 0x7f0a0024

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    .line 147
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2c

    .line 148
    iget-object v0, p0, Lcom/bilibili/tv/ui/setting/SettingActivity;->d:Lbl/afp;

    iget-object v1, p0, Lcom/bilibili/tv/ui/setting/SettingActivity;->b:Lcom/bilibili/tv/ui/setting/SettingActivity$b;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/setting/SettingActivity$b;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lbl/afp;->d(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 149
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/setting/SettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 150
    instance-of v1, v0, Lbl/afm3;

    if-eqz v1, :cond_2c

    .line 151
    check-cast v0, Lbl/afm3;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbl/afm3;->updateFilterPath(Ljava/lang/String;)V

    .line 153
    :cond_2c
    invoke-super {p0, p1, p2, p3}, Lcom/bilibili/tv/ui/base/BaseUpViewActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 154
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseUpViewActivity;->onDestroy()V

    move-object v0, v1

    .line 141
    check-cast v0, Lcom/bilibili/tv/ui/setting/SettingActivity$b;

    iput-object v0, p0, Lcom/bilibili/tv/ui/setting/SettingActivity;->b:Lcom/bilibili/tv/ui/setting/SettingActivity$b;

    .line 142
    check-cast v1, Lbl/afp;

    iput-object v1, p0, Lcom/bilibili/tv/ui/setting/SettingActivity;->d:Lbl/afp;

    .line 143
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 74
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseUpViewActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/setting/SettingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 76
    const-string v2, "supportFragmentManager"

    invoke-static {v0, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    new-instance v2, Lbl/afp;

    const v3, 0x7f080091

    invoke-direct {v2, v0, v3}, Lbl/afp;-><init>(Landroid/support/v4/app/FragmentManager;I)V

    iput-object v2, p0, Lcom/bilibili/tv/ui/setting/SettingActivity;->d:Lbl/afp;

    .line 78
    iget-object v0, p0, Lcom/bilibili/tv/ui/setting/SettingActivity;->c:Ljava/lang/Integer;

    .line 80
    if-eqz v0, :cond_92

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v5, :cond_92

    .line 81
    const-string v0, "tv_setting_pageview"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "from"

    aput-object v3, v2, v1

    const-string v3, "\u9996\u9875"

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 88
    :cond_32
    :goto_32
    iget-object v0, p0, Lcom/bilibili/tv/ui/setting/SettingActivity;->d:Lbl/afp;

    .line 89
    if-nez v0, :cond_39

    .line 90
    invoke-static {}, Lbl/bbi;->a()V

    .line 92
    :cond_39
    invoke-virtual {v0}, Lbl/afp;->a()I

    move-result v0

    .line 93
    new-instance v2, Lbl/cj;

    invoke-direct {v2}, Lbl/cj;-><init>()V

    .line 94
    add-int/lit8 v3, v0, -0x1

    .line 95
    if-ltz v3, :cond_5b

    move v0, v1

    .line 98
    :goto_47
    iget-object v4, p0, Lcom/bilibili/tv/ui/setting/SettingActivity;->d:Lbl/afp;

    .line 99
    if-nez v4, :cond_4e

    .line 100
    invoke-static {}, Lbl/bbi;->a()V

    .line 102
    :cond_4e
    invoke-virtual {v4, v0}, Lbl/afp;->b(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lbl/cj;->b(ILjava/lang/Object;)V

    .line 103
    if-ne v0, v3, :cond_aa

    .line 110
    :cond_5b
    new-instance v0, Lcom/bilibili/tv/ui/setting/SettingActivity$b;

    invoke-direct {v0, p0, p0, v2}, Lcom/bilibili/tv/ui/setting/SettingActivity$b;-><init>(Lcom/bilibili/tv/ui/setting/SettingActivity;Lcom/bilibili/tv/ui/setting/SettingActivity;Lbl/cj;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/setting/SettingActivity;->b:Lcom/bilibili/tv/ui/setting/SettingActivity$b;

    .line 111
    new-instance v0, Lcom/bilibili/tv/ui/ranking/RankingLeftLinearLayoutManger;

    invoke-direct {v0, p0, v5, v1}, Lcom/bilibili/tv/ui/ranking/RankingLeftLinearLayoutManger;-><init>(Landroid/content/Context;IZ)V

    .line 112
    iget-object v2, p0, Lcom/bilibili/tv/ui/setting/SettingActivity;->a:Landroid/support/v7/widget/RecyclerView;

    .line 113
    if-nez v2, :cond_6e

    .line 114
    invoke-static {}, Lbl/bbi;->a()V

    .line 116
    :cond_6e
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 117
    iget-object v0, p0, Lcom/bilibili/tv/ui/setting/SettingActivity;->a:Landroid/support/v7/widget/RecyclerView;

    .line 118
    if-nez v0, :cond_78

    .line 119
    invoke-static {}, Lbl/bbi;->a()V

    .line 121
    :cond_78
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 122
    iget-object v0, p0, Lcom/bilibili/tv/ui/setting/SettingActivity;->a:Landroid/support/v7/widget/RecyclerView;

    .line 123
    if-nez v0, :cond_82

    .line 124
    invoke-static {}, Lbl/bbi;->a()V

    .line 126
    :cond_82
    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 127
    iget-object v0, p0, Lcom/bilibili/tv/ui/setting/SettingActivity;->a:Landroid/support/v7/widget/RecyclerView;

    .line 128
    if-nez v0, :cond_8c

    .line 129
    invoke-static {}, Lbl/bbi;->a()V

    .line 131
    :cond_8c
    iget-object v1, p0, Lcom/bilibili/tv/ui/setting/SettingActivity;->b:Lcom/bilibili/tv/ui/setting/SettingActivity$b;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 132
    return-void

    .line 84
    :cond_92
    if-eqz v0, :cond_32

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_32

    .line 85
    const-string v0, "tv_setting_pageview"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "from"

    aput-object v3, v2, v1

    const-string v3, "\u4e2a\u4eba\u4e2d\u5fc3"

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_32

    .line 106
    :cond_aa
    add-int/lit8 v0, v0, 0x1

    .line 108
    goto :goto_47
.end method
