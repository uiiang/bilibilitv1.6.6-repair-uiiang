.class public final Lcom/bilibili/tv/ui/main/MainActivity;
.super Lcom/bilibili/tv/ui/base/BaseActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/main/MainActivity$b;,
        Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;,
        Lcom/bilibili/tv/ui/main/MainActivity$m;,
        Lcom/bilibili/tv/ui/main/MainActivity$l;,
        Lcom/bilibili/tv/ui/main/MainActivity$c;,
        Lcom/bilibili/tv/ui/main/MainActivity$e;,
        Lcom/bilibili/tv/ui/main/MainActivity$d;,
        Lcom/bilibili/tv/ui/main/MainActivity$j;,
        Lcom/bilibili/tv/ui/main/MainActivity$k;,
        Lcom/bilibili/tv/ui/main/MainActivity$i;,
        Lcom/bilibili/tv/ui/main/MainActivity$h;,
        Lcom/bilibili/tv/ui/main/MainActivity$g;,
        Lcom/bilibili/tv/ui/main/MainActivity$f;,
        Lcom/bilibili/tv/ui/main/MainActivity$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bilibili/tv/ui/main/MainActivity$a;

.field private static final j:I = 0x65

.field private static final k:I = 0x7d0


# instance fields
.field private a:Z

.field private b:Z

.field private c:Landroid/support/v7/widget/RecyclerView;

.field private d:Lcom/bilibili/tv/ui/main/MainActivity$d;

.field private e:Lbl/aey;

.field private f:Lcom/bilibili/tv/widget/FixedViewPager;

.field private final g:Ljava/text/SimpleDateFormat;

.field private h:Ljava/lang/Runnable;

.field private i:Lcom/bilibili/tv/ui/main/MainActivity$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lcom/bilibili/tv/ui/main/MainActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/main/MainActivity$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/main/MainActivity;->Companion:Lcom/bilibili/tv/ui/main/MainActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/bilibili/tv/ui/base/BaseActivity;-><init>()V

    .line 87
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity;->g:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static final a(Lcom/bilibili/tv/ui/main/MainActivity;)Lbl/aey;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity;->e:Lbl/aey;

    return-object v0
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/main/MainActivity;)Lcom/bilibili/tv/ui/main/MainActivity$d;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity;->d:Lcom/bilibili/tv/ui/main/MainActivity$d;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/main/MainActivity;)Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity;->g:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/main/MainActivity;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/bilibili/tv/ui/main/MainActivity;->exitApp()V

    return-void
.end method

.method private final exitApp()V
    .locals 1

    .prologue
    .line 856
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/MainActivity;->finishAffinity()V

    .line 857
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 858
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 859
    return-void
.end method

.method private isDescendantOfView(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 520
    if-eqz p1, :cond_5

    if-nez p2, :cond_a

    :cond_5
    move v0, v1

    .line 528
    :goto_6
    return v0

    .line 526
    :cond_7
    check-cast v0, Landroid/view/View;

    move-object p1, v0

    .line 522
    :cond_a
    if-eqz p1, :cond_18

    .line 523
    if-ne p1, p2, :cond_10

    const/4 v0, 0x1

    goto :goto_6

    .line 524
    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 525
    instance-of v2, v0, Landroid/view/View;

    if-nez v2, :cond_7

    :cond_18
    move v0, v1

    .line 528
    goto :goto_6
.end method

.method private final p()V
    .locals 4

    .prologue
    .line 862
    sget-boolean v0, Lmybl/BiliFilter;->fastquit_on:Z

    if-eqz v0, :cond_8

    .line 863
    invoke-direct {p0}, Lcom/bilibili/tv/ui/main/MainActivity;->exitApp()V

    .line 869
    :goto_7
    return-void

    .line 866
    :cond_8
    new-instance v0, Lbl/agb$a;

    invoke-direct {v0, p0}, Lbl/agb$a;-><init>(Landroid/app/Activity;)V

    .line 867
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbl/agb$a;->a(I)Lbl/agb$a;

    move-result-object v1

    const v2, 0x7f0c00a6

    invoke-virtual {p0, v2}, Lcom/bilibili/tv/ui/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbl/agb$a;->a(Ljava/lang/String;)Lbl/agb$a;

    move-result-object v1

    const v2, 0x7f0c0079

    invoke-virtual {p0, v2}, Lcom/bilibili/tv/ui/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bilibili/tv/ui/main/MainActivity$l;

    invoke-direct {v3, p0}, Lcom/bilibili/tv/ui/main/MainActivity$l;-><init>(Lcom/bilibili/tv/ui/main/MainActivity;)V

    invoke-virtual {v1, v2, v3}, Lbl/agb$a;->b(Ljava/lang/String;Lbl/agb$b;)Lbl/agb$a;

    move-result-object v1

    const v2, 0x7f0c0076

    invoke-virtual {p0, v2}, Lcom/bilibili/tv/ui/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/bilibili/tv/ui/main/MainActivity$m;->a:Lcom/bilibili/tv/ui/main/MainActivity$m;

    invoke-virtual {v1, v2, v3}, Lbl/agb$a;->a(Ljava/lang/String;Lbl/agb$b;)Lbl/agb$a;

    .line 868
    invoke-virtual {v0}, Lbl/agb$a;->a()Lbl/agb;

    move-result-object v0

    invoke-virtual {v0}, Lbl/agb;->show()V

    goto :goto_7
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const v5, 0x7f06006e

    const/4 v9, 0x0

    .line 145
    const v0, 0x7f080160

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/main/MainActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/FixedViewPager;

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity;->f:Lcom/bilibili/tv/widget/FixedViewPager;

    .line 146
    const v0, 0x7f080134

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/main/MainActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity;->c:Landroid/support/v7/widget/RecyclerView;

    .line 147
    const v0, 0x7f08012c

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 148
    const-string v1, "findViewById(R.id.time)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v0

    .line 149
    check-cast v6, Landroid/widget/TextView;

    .line 150
    new-instance v0, Lcom/bilibili/tv/ui/main/MainActivity$d;

    iget-object v1, p0, Lcom/bilibili/tv/ui/main/MainActivity;->f:Lcom/bilibili/tv/widget/FixedViewPager;

    invoke-direct {v0, v1, p0}, Lcom/bilibili/tv/ui/main/MainActivity$d;-><init>(Landroid/support/v4/view/ViewPager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity;->d:Lcom/bilibili/tv/ui/main/MainActivity$d;

    .line 151
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity;->c:Landroid/support/v7/widget/RecyclerView;

    .line 152
    if-eqz v0, :cond_3c

    .line 153
    iget-object v1, p0, Lcom/bilibili/tv/ui/main/MainActivity;->d:Lcom/bilibili/tv/ui/main/MainActivity$d;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 156
    :cond_3c
    new-instance v7, Lcom/bilibili/tv/ui/main/MainActivity$1;

    invoke-direct {v7, p0, p0, v9, v9}, Lcom/bilibili/tv/ui/main/MainActivity$1;-><init>(Lcom/bilibili/tv/ui/main/MainActivity;Landroid/content/Context;IZ)V

    .line 190
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity;->c:Landroid/support/v7/widget/RecyclerView;

    .line 191
    if-eqz v0, :cond_48

    .line 192
    invoke-virtual {v0, v7}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 194
    :cond_48
    invoke-static {v5}, Lbl/adl;->b(I)I

    move-result v2

    .line 195
    invoke-static {v5}, Lbl/adl;->b(I)I

    move-result v3

    .line 196
    invoke-static {v5}, Lbl/adl;->b(I)I

    move-result v4

    .line 197
    invoke-static {v5}, Lbl/adl;->b(I)I

    move-result v5

    .line 198
    iget-object v8, p0, Lcom/bilibili/tv/ui/main/MainActivity;->c:Landroid/support/v7/widget/RecyclerView;

    .line 199
    if-eqz v8, :cond_65

    .line 200
    new-instance v0, Lcom/bilibili/tv/ui/main/MainActivity$f;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/bilibili/tv/ui/main/MainActivity$f;-><init>(Lcom/bilibili/tv/ui/main/MainActivity;IIII)V

    invoke-virtual {v8, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 202
    :cond_65
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 203
    const-string v1, "supportFragmentManager"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    new-instance v1, Lbl/aey;

    invoke-direct {v1, v0, p0}, Lbl/aey;-><init>(Landroid/support/v4/app/FragmentManager;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bilibili/tv/ui/main/MainActivity;->e:Lbl/aey;

    .line 205
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity;->f:Lcom/bilibili/tv/widget/FixedViewPager;

    .line 206
    if-eqz v0, :cond_7e

    .line 207
    iget-object v1, p0, Lcom/bilibili/tv/ui/main/MainActivity;->e:Lbl/aey;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/FixedViewPager;->setAdapter(Lbl/cy;)V

    .line 209
    :cond_7e
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity;->f:Lcom/bilibili/tv/widget/FixedViewPager;

    .line 210
    if-eqz v0, :cond_86

    .line 211
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/FixedViewPager;->setOffscreenPageLimit(I)V

    .line 213
    :cond_86
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity;->f:Lcom/bilibili/tv/widget/FixedViewPager;

    .line 214
    if-eqz v0, :cond_92

    .line 215
    new-instance v1, Lcom/bilibili/tv/ui/main/MainActivity$g;

    invoke-direct {v1, p0, v7}, Lcom/bilibili/tv/ui/main/MainActivity$g;-><init>(Lcom/bilibili/tv/ui/main/MainActivity;Landroid/support/v7/widget/LinearLayoutManager;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/FixedViewPager;->a(Landroid/support/v4/view/ViewPager$f;)V

    .line 217
    :cond_92
    new-instance v0, Lcom/bilibili/tv/ui/main/MainActivity$h;

    invoke-direct {v0, p0, v6}, Lcom/bilibili/tv/ui/main/MainActivity$h;-><init>(Lcom/bilibili/tv/ui/main/MainActivity;Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity;->h:Ljava/lang/Runnable;

    .line 218
    invoke-static {v9}, Lbl/lv;->a(I)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/main/MainActivity;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 219
    invoke-static {p0}, Lbl/adm;->a(Landroid/app/Activity;)V

    .line 220
    invoke-static {}, Lbl/kn;->a()Lbl/kn;

    move-result-object v0

    .line 221
    const-string v1, "ConnectivityMonitor.getInstance()"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0}, Lbl/kn;->c()Z

    move-result v0

    if-nez v0, :cond_be

    .line 223
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    const v1, 0x7f0c00d6

    invoke-static {v0, v1}, Lbl/lr;->a(Landroid/content/Context;I)V

    .line 225
    :cond_be
    invoke-static {v9}, Lbl/lv;->a(I)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/main/MainActivity$i;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/main/MainActivity$i;-><init>(Lcom/bilibili/tv/ui/main/MainActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 226
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 227
    new-instance v1, Lcom/bilibili/tv/ui/main/MainActivity$k;

    invoke-direct {v1, p0, v0}, Lcom/bilibili/tv/ui/main/MainActivity$k;-><init>(Lcom/bilibili/tv/ui/main/MainActivity;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 228
    sget-object v0, Lbl/ace;->a:Lbl/ace;

    invoke-virtual {v0, p0}, Lbl/ace;->a(Landroid/content/Context;)V

    .line 229
    sget-object v0, Lbl/azo;->a:Lbl/azo$a;

    invoke-virtual {v0}, Lbl/azo$a;->a()Lbl/azo;

    move-result-object v0

    invoke-virtual {v0}, Lbl/azo;->i()V

    .line 230
    sget-object v0, Lbl/azo;->a:Lbl/azo$a;

    invoke-virtual {v0}, Lbl/azo$a;->a()Lbl/azo;

    move-result-object v0

    invoke-virtual {v0}, Lbl/azo;->c()V

    .line 231
    new-instance v0, Lcom/bilibili/tv/ui/main/MainActivity$b;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/main/MainActivity$b;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity;->i:Lcom/bilibili/tv/ui/main/MainActivity$b;

    .line 232
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/main/MainActivity;->i:Lcom/bilibili/tv/ui/main/MainActivity$b;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/bilibili/lib/account/subscribe/Topic;

    sget-object v3, Lcom/bilibili/lib/account/subscribe/Topic;->SIGN_IN:Lcom/bilibili/lib/account/subscribe/Topic;

    aput-object v3, v2, v9

    const/4 v3, 0x1

    sget-object v4, Lcom/bilibili/lib/account/subscribe/Topic;->SIGN_OUT:Lcom/bilibili/lib/account/subscribe/Topic;

    aput-object v4, v2, v3

    sget-object v3, Lcom/bilibili/lib/account/subscribe/Topic;->TOKEN_INVALID:Lcom/bilibili/lib/account/subscribe/Topic;

    aput-object v3, v2, v10

    invoke-virtual {v0, v1, v2}, Lbl/mg;->a(Lbl/mn;[Lcom/bilibili/lib/account/subscribe/Topic;)V

    .line 233
    new-instance v0, Lcom/bilibili/tv/ui/main/MainActivity$j;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/main/MainActivity$j;-><init>(Lcom/bilibili/tv/ui/main/MainActivity;)V

    invoke-static {v10, v0}, Lbl/lv;->a(ILjava/lang/Runnable;)V

    .line 234
    invoke-static {}, Lbl/wh;->a()Lbl/wh;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/main/MainActivity;->f:Lcom/bilibili/tv/widget/FixedViewPager;

    invoke-virtual {v0, v1}, Lbl/wh;->a(Landroid/support/v4/view/ViewPager;)V

    .line 235
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/main/MainActivity;->a:Z

    .line 102
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/main/MainActivity;->b:Z

    .line 110
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 478
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 479
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 480
    if-nez v0, :cond_6d

    .line 481
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/MainActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v4

    .line 482
    if-nez v4, :cond_17

    .line 483
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 516
    :goto_16
    return v0

    .line 487
    :cond_17
    const/16 v0, 0x14

    if-ne v3, v0, :cond_47

    const/16 v0, 0x82

    .line 491
    :goto_1d
    if-eq v0, v2, :cond_6d

    .line 493
    :try_start_1f
    invoke-virtual {v4, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 494
    if-eqz v0, :cond_6d

    .line 495
    iget-object v2, p0, Lcom/bilibili/tv/ui/main/MainActivity;->c:Landroid/support/v7/widget/RecyclerView;

    .line 496
    if-eqz v2, :cond_6d

    invoke-direct {p0, v0, v2}, Lcom/bilibili/tv/ui/main/MainActivity;->isDescendantOfView(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 497
    invoke-static {p0}, Lcom/bilibili/tv/ui/main/MainActivity;->a(Lcom/bilibili/tv/ui/main/MainActivity;)Lbl/aey;

    move-result-object v0

    .line 498
    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Lbl/aey;->a()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 499
    :goto_39
    instance-of v2, v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    if-eqz v2, :cond_5e

    .line 500
    check-cast v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    .line 501
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_6d

    move v0, v1

    .line 502
    goto :goto_16

    .line 488
    :cond_47
    const/16 v0, 0x13

    if-ne v3, v0, :cond_4e

    const/16 v0, 0x21

    goto :goto_1d

    .line 489
    :cond_4e
    const/16 v0, 0x15

    if-ne v3, v0, :cond_55

    const/16 v0, 0x11

    goto :goto_1d

    .line 490
    :cond_55
    const/16 v0, 0x16

    if-ne v3, v0, :cond_72

    const/16 v0, 0x42

    goto :goto_1d

    .line 498
    :cond_5c
    const/4 v0, 0x0

    goto :goto_39

    .line 504
    :cond_5e
    instance-of v2, v0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    if-eqz v2, :cond_6d

    .line 505
    check-cast v0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    .line 506
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->isLoading()Z
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_67} :catch_6c

    move-result v0

    if-eqz v0, :cond_6d

    move v0, v1

    .line 507
    goto :goto_16

    .line 512
    :catch_6c
    move-exception v0

    .line 516
    :cond_6d
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_16

    :cond_72
    move v0, v2

    goto :goto_1d
.end method

.method public g()I
    .locals 1

    .prologue
    .line 93
    const v0, 0x7f0a0020

    return v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/MainActivity;->a:Z

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/MainActivity;->b:Z

    return v0
.end method

.method public final j()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 448
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity;->c:Landroid/support/v7/widget/RecyclerView;

    .line 449
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    :goto_a
    move v4, v1

    .line 452
    :goto_b
    if-ge v4, v0, :cond_27

    .line 453
    iget-object v2, p0, Lcom/bilibili/tv/ui/main/MainActivity;->c:Landroid/support/v7/widget/RecyclerView;

    .line 454
    if-eqz v2, :cond_21

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 455
    :goto_15
    if-eqz v2, :cond_23

    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_23

    move-object v0, v2

    .line 464
    :goto_1e
    return-object v0

    :cond_1f
    move v0, v1

    .line 449
    goto :goto_a

    :cond_21
    move-object v2, v3

    .line 454
    goto :goto_15

    .line 458
    :cond_23
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    .line 459
    goto :goto_b

    .line 460
    :cond_27
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity;->c:Landroid/support/v7/widget/RecyclerView;

    .line 461
    if-eqz v0, :cond_30

    .line 462
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1e

    :cond_30
    move-object v0, v3

    .line 464
    goto :goto_1e
.end method

.method public final k()V
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity;->d:Lcom/bilibili/tv/ui/main/MainActivity$d;

    .line 471
    if-eqz v0, :cond_8

    .line 472
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/main/MainActivity$d;->b(Z)V

    .line 474
    :cond_8
    return-void
.end method

.method public final l()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 899
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity;->e:Lbl/aey;

    .line 900
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lbl/aey;->a()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 901
    :goto_9
    instance-of v2, v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;

    if-nez v2, :cond_e

    move-object v0, v1

    .line 904
    :cond_e
    check-cast v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;

    .line 905
    if-eqz v0, :cond_15

    .line 906
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->e()V

    .line 908
    :cond_15
    return-void

    :cond_16
    move-object v0, v1

    .line 900
    goto :goto_9
.end method

.method public final m()V
    .locals 1

    .prologue
    .line 911
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    invoke-virtual {v0, p0}, Lbl/adl;->a(Landroid/app/Activity;)V

    .line 912
    return-void
.end method

.method public final o()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 411
    invoke-static {}, Lbl/abc;->b()Lbl/abc;

    move-result-object v0

    .line 412
    invoke-static {}, Lbl/ok;->a()Lbl/ok;

    move-result-object v1

    .line 413
    const-string v2, "env"

    invoke-static {v0, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    const-string v2, "app_main"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "reportenable"

    aput-object v4, v3, v9

    const-string v4, "1"

    aput-object v4, v3, v8

    const/4 v4, 0x2

    const-string v5, "lastruninterval"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {v0}, Lbl/abc;->g()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v8, v2, v3}, Lbl/ok;->a(ZLjava/lang/String;[Ljava/lang/String;)V

    .line 415
    invoke-static {}, Lbl/ok;->a()Lbl/ok;

    move-result-object v1

    const-string v2, "000586"

    new-array v3, v8, [Ljava/lang/String;

    invoke-virtual {v0}, Lbl/abc;->g()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {v1, v8, v2, v3}, Lbl/ok;->b(ZLjava/lang/String;[Ljava/lang/String;)V

    .line 416
    sget-object v1, Lbl/abl;->a:Lbl/abl;

    .line 417
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 418
    const-string v3, "applicationContext"

    invoke-static {v2, v3}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    invoke-virtual {v0}, Lbl/abc;->g()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v8, v3}, Lbl/abl;->a(Landroid/content/Context;ZLjava/lang/String;)V

    .line 420
    invoke-virtual {v0}, Lbl/abc;->h()V

    .line 421
    const-string v0, "tv_home_pageview"

    new-array v1, v9, [Ljava/lang/String;

    invoke-static {v0, v1}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 422
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 426
    invoke-super {p0, p1, p2, p3}, Lcom/bilibili/tv/ui/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 427
    const/4 v0, -0x1

    if-ne p2, v0, :cond_d

    const/16 v0, 0x65

    if-ne p1, v0, :cond_d

    .line 428
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/MainActivity;->l()V

    .line 430
    :cond_d
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 434
    invoke-static {v4}, Lbl/lv;->a(I)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/main/MainActivity;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 435
    sget-object v0, Lbl/ace;->a:Lbl/ace;

    invoke-virtual {v0}, Lbl/ace;->c()V

    .line 436
    sget-object v0, Lbl/azo;->a:Lbl/azo$a;

    invoke-virtual {v0}, Lbl/azo$a;->a()Lbl/azo;

    move-result-object v0

    invoke-virtual {v0}, Lbl/azo;->i()V

    .line 437
    sget-object v0, Lbl/azo;->a:Lbl/azo$a;

    invoke-virtual {v0}, Lbl/azo$a;->a()Lbl/azo;

    move-result-object v0

    invoke-virtual {v0}, Lbl/azo;->d()V

    .line 438
    sget-object v0, Lbl/afr;->Companion:Lbl/afr$a;

    invoke-virtual {v0}, Lbl/afr$a;->a()Lbl/afr;

    move-result-object v0

    invoke-virtual {v0}, Lbl/afr;->b()V

    .line 440
    invoke-static {p0}, Lbl/aby;->a(Landroid/content/Context;)V

    .line 441
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/main/MainActivity;->i:Lcom/bilibili/tv/ui/main/MainActivity$b;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/bilibili/lib/account/subscribe/Topic;

    sget-object v3, Lcom/bilibili/lib/account/subscribe/Topic;->SIGN_IN:Lcom/bilibili/lib/account/subscribe/Topic;

    aput-object v3, v2, v4

    const/4 v3, 0x1

    sget-object v4, Lcom/bilibili/lib/account/subscribe/Topic;->SIGN_OUT:Lcom/bilibili/lib/account/subscribe/Topic;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/bilibili/lib/account/subscribe/Topic;->TOKEN_INVALID:Lcom/bilibili/lib/account/subscribe/Topic;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lbl/mg;->b(Lbl/mn;[Lcom/bilibili/lib/account/subscribe/Topic;)V

    .line 442
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity;->i:Lcom/bilibili/tv/ui/main/MainActivity$b;

    .line 443
    invoke-static {}, Lbl/abq;->a()Lbl/abq;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abq;->d()V

    .line 444
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseActivity;->onDestroy()V

    .line 445
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const v3, 0x7f0800bd

    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 533
    const-string v1, "event"

    invoke-static {p2, v1}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 534
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/MainActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 535
    const/4 v2, 0x4

    if-eq p1, v2, :cond_15

    const/16 v2, 0x8

    if-ne p1, v2, :cond_37

    .line 536
    :cond_15
    if-eqz v1, :cond_23

    .line 537
    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 538
    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_23

    .line 539
    invoke-direct {p0}, Lcom/bilibili/tv/ui/main/MainActivity;->p()V

    .line 564
    :cond_22
    :goto_22
    return v0

    .line 543
    :cond_23
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/MainActivity;->j()Landroid/view/View;

    move-result-object v1

    .line 544
    if-eqz v1, :cond_33

    .line 545
    invoke-virtual {p0, v4}, Lcom/bilibili/tv/ui/main/MainActivity;->a(Z)V

    .line 546
    invoke-virtual {p0, v4}, Lcom/bilibili/tv/ui/main/MainActivity;->b(Z)V

    .line 547
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_22

    .line 550
    :cond_33
    invoke-direct {p0}, Lcom/bilibili/tv/ui/main/MainActivity;->p()V

    goto :goto_22

    .line 553
    :cond_37
    packed-switch p1, :pswitch_data_68

    .line 564
    :cond_3a
    invoke-super {p0, p1, p2}, Lcom/bilibili/tv/ui/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_22

    .line 555
    :pswitch_3f
    iget-object v2, p0, Lcom/bilibili/tv/ui/main/MainActivity;->d:Lcom/bilibili/tv/ui/main/MainActivity$d;

    .line 556
    if-eqz v2, :cond_3a

    if-eqz v1, :cond_3a

    .line 557
    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 558
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_3a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/main/MainActivity$d;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    goto :goto_22

    .line 553
    :pswitch_data_68
    .packed-switch 0x14
        :pswitch_3f
    .end packed-switch
.end method
