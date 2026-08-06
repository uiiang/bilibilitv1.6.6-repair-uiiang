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

.method static synthetic access$400(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->currentFragmentIndex:I

    return v0
.end method

.method static synthetic access$402(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;I)I
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->currentFragmentIndex:I

    return p1
.end method

.method static synthetic access$600(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;)Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;
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

    .line 297
    if-eqz p1, :cond_5

    if-nez p2, :cond_7

    :cond_5
    move v0, v1

    .line 307
    :goto_6
    return v0

    .line 300
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 301
    :goto_b
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_18

    .line 302
    if-ne v0, p1, :cond_13

    .line 303
    const/4 v0, 0x1

    goto :goto_6

    .line 305
    :cond_13
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_b

    :cond_18
    move v0, v1

    .line 307
    goto :goto_6
.end method

.method private setLeftSelected(I)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 317
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_6

    .line 338
    :cond_5
    return-void

    .line 320
    :cond_6
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    move v1, v2

    .line 321
    :goto_d
    if-ge v1, v3, :cond_5

    .line 322
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 323
    if-nez v0, :cond_1b

    .line 321
    :cond_17
    :goto_17
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    .line 326
    :cond_1b
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 328
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    goto :goto_17

    .line 329
    :cond_26
    if-ne v1, p1, :cond_32

    .line 331
    instance-of v4, v0, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    if-eqz v4, :cond_17

    .line 332
    check-cast v0, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->c()V

    goto :goto_17

    .line 335
    :cond_32
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_17
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

    .line 290
    :goto_11
    return v0

    .line 210
    :cond_12
    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v0

    .line 211
    :goto_1d
    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 212
    :goto_27
    if-eqz v1, :cond_f7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_f7

    .line 213
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 214
    if-eqz v1, :cond_37

    if-nez v0, :cond_40

    .line 215
    :cond_37
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseUpViewActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_11

    :cond_3c
    move-object v1, v4

    .line 210
    goto :goto_1d

    :cond_3e
    move-object v0, v4

    .line 211
    goto :goto_27

    .line 217
    :cond_40
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x13

    if-eq v5, v6, :cond_4e

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v7, :cond_a0

    .line 220
    :cond_4e
    :try_start_4e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v7, :cond_8f

    const/16 v0, 0x82

    :goto_56
    invoke-virtual {v1, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 222
    iget-object v5, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;

    .line 224
    iget-object v6, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->d:Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;

    if-eqz v6, :cond_7c

    iget-object v6, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->b:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    if-eqz v6, :cond_7c

    .line 225
    iget-object v6, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->d:Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;

    iget-object v7, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->b:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    invoke-virtual {v7}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->f()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;->d(I)Landroid/support/v4/app/Fragment;

    move-result-object v6

    .line 226
    if-eqz v6, :cond_7c

    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_7c

    .line 227
    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v4

    .line 230
    :cond_7c
    invoke-direct {p0, v5, v0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->isDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    .line 231
    invoke-direct {p0, v4, v1}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->isDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_83} :catch_99

    move-result v4

    .line 232
    if-ne v0, v1, :cond_87

    move v3, v2

    .line 233
    :cond_87
    if-eqz v0, :cond_92

    if-eqz v5, :cond_92

    if-eqz v4, :cond_92

    move v0, v2

    .line 234
    goto :goto_11

    .line 220
    :cond_8f
    const/16 v0, 0x21

    goto :goto_56

    .line 236
    :cond_92
    if-eqz v3, :cond_9a

    if-eqz v4, :cond_9a

    move v0, v2

    .line 237
    goto/16 :goto_11

    .line 239
    :catch_99
    move-exception v0

    .line 241
    :cond_9a
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseUpViewActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_11

    .line 243
    :cond_a0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x15

    if-ne v5, v6, :cond_101

    .line 246
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_f7

    .line 247
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 248
    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "right"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f7

    .line 251
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v5

    .line 252
    iget v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->currentFragmentIndex:I

    if-ltz v0, :cond_13b

    iget v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->currentFragmentIndex:I

    if-ge v0, v5, :cond_13b

    .line 253
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;

    iget v1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->currentFragmentIndex:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 255
    :goto_da
    if-nez v1, :cond_139

    move v2, v3

    .line 257
    :goto_dd
    if-ge v2, v5, :cond_139

    .line 258
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 259
    if-eqz v0, :cond_fd

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_fd

    .line 265
    :goto_ed
    if-eqz v0, :cond_f2

    .line 266
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 268
    :cond_f2
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->b:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->b(Z)V

    .line 290
    :cond_f7
    :goto_f7
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseUpViewActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_11

    .line 257
    :cond_fd
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_dd

    .line 271
    :cond_101
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0x16

    if-ne v0, v3, :cond_f7

    .line 274
    instance-of v0, v1, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    if-eqz v0, :cond_f7

    .line 275
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->d:Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;

    iget-object v3, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->b:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->f()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;->d(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 276
    if-nez v0, :cond_11e

    move v0, v2

    .line 277
    goto/16 :goto_11

    .line 280
    :cond_11e
    instance-of v3, v0, Lbl/adw;

    if-eqz v3, :cond_12d

    .line 281
    check-cast v0, Lbl/adw;

    invoke-virtual {v0}, Lbl/adw;->c()Z

    move-result v0

    if-nez v0, :cond_12d

    move v0, v2

    .line 282
    goto/16 :goto_11

    :cond_12d
    move-object v0, v1

    .line 285
    check-cast v0, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->c()V

    .line 286
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->b:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->b(Z)V

    goto :goto_f7

    :cond_139
    move-object v0, v1

    goto :goto_ed

    :cond_13b
    move-object v1, v4

    goto :goto_da
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
