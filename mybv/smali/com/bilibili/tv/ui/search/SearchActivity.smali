.class public final Lcom/bilibili/tv/ui/search/SearchActivity;
.super Lcom/bilibili/tv/ui/base/BaseActivity;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Lbl/wf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/search/SearchActivity$f;,
        Lcom/bilibili/tv/ui/search/SearchActivity$ee;,
        Lcom/bilibili/tv/ui/search/SearchActivity$e;,
        Lcom/bilibili/tv/ui/search/SearchActivity$d;,
        Lcom/bilibili/tv/ui/search/SearchActivity$c;,
        Lcom/bilibili/tv/ui/search/SearchActivity$b;,
        Lcom/bilibili/tv/ui/search/SearchActivity$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bilibili/tv/ui/search/SearchActivity$a;

.field private static final j:Ljava/lang/String; = "SearchActivity"

.field private static final k:Ljava/lang/String; = "com.bilibili.tv.ui.search.SearchActivity.EXTRA_TID"

.field private static final l:[Ljava/lang/String;

.field public static final live_orders:[Ljava/lang/String;

.field private static final m:[Ljava/lang/String;


# instance fields
.field public a:Landroid/view/View;

.field private b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

.field private c:Z

.field private d:Z

.field private e:I

.field private f:Lbl/afh;

.field private g:Lbl/afi;

.field private h:I

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/bilibili/tv/ui/search/SearchActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/search/SearchActivity$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/search/SearchActivity;->Companion:Lcom/bilibili/tv/ui/search/SearchActivity$a;

    .line 54
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "totalrank"

    aput-object v1, v0, v2

    const-string v1, "click"

    aput-object v1, v0, v3

    const-string v1, "pubdate"

    aput-object v1, v0, v4

    const-string v1, "dm"

    aput-object v1, v0, v5

    sput-object v0, Lcom/bilibili/tv/ui/search/SearchActivity;->l:[Ljava/lang/String;

    .line 55
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "totalrank"

    aput-object v1, v0, v2

    const-string v1, "fans"

    aput-object v1, v0, v3

    const-string v1, "fansasc"

    aput-object v1, v0, v4

    const-string v1, "lv"

    aput-object v1, v0, v5

    const-string v1, "lvasc"

    aput-object v1, v0, v6

    sput-object v0, Lcom/bilibili/tv/ui/search/SearchActivity;->m:[Ljava/lang/String;

    .line 56
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "online"

    aput-object v1, v0, v2

    const-string v1, "live_time"

    aput-object v1, v0, v3

    sput-object v0, Lcom/bilibili/tv/ui/search/SearchActivity;->live_orders:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/bilibili/tv/ui/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/bilibili/tv/ui/search/SearchActivity;->l:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/bilibili/tv/ui/search/SearchActivity;->m:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/search/SearchActivity;)Lbl/afh;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->f:Lbl/afh;

    return-object v0
.end method

.method static synthetic access$302(Lcom/bilibili/tv/ui/search/SearchActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/search/SearchActivity;)Lbl/afi;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->g:Lbl/afi;

    return-object v0
.end method

.method private final b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 314
    const-string v0, "SearchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4fdd\u5b58\u641c\u7d22\u5386\u53f2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    new-instance v0, Landroid/provider/SearchRecentSuggestions;

    const-string v1, "uii.ang.bilitv.provider.TvSearchSuggestionProvider"

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v0, "SearchActivity"

    const-string v1, "\u4fdd\u5b58\u641c\u7d22\u5386\u53f2\u6210\u529f"

    invoke-static {v0, v1}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method private final r()Z
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->g:Lbl/afi;

    if-eqz v0, :cond_13

    .line 335
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->g:Lbl/afi;

    .line 336
    if-nez v0, :cond_b

    .line 337
    invoke-static {}, Lbl/bbi;->a()V

    .line 339
    :cond_b
    invoke-virtual {v0}, Lbl/afi;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 340
    const/4 v0, 0x1

    .line 343
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private final s()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    .line 371
    if-eqz v0, :cond_7

    .line 372
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchKeyboardView;->B()V

    .line 374
    :cond_7
    return-void
.end method

.method private final u()V
    .locals 5

    .prologue
    .line 520
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 521
    sget-object v0, Lbl/afi;->Companion:Lbl/afi$e;

    invoke-virtual {v0}, Lbl/afi$e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 522
    instance-of v2, v0, Lbl/afi;

    if-nez v2, :cond_13

    .line 523
    const/4 v0, 0x0

    .line 525
    :cond_13
    check-cast v0, Lbl/afi;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->g:Lbl/afi;

    .line 526
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->g:Lbl/afi;

    if-nez v0, :cond_25

    .line 527
    sget-object v0, Lbl/afi;->Companion:Lbl/afi$e;

    iget v2, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->e:I

    invoke-virtual {v0, v2}, Lbl/afi$e;->a(I)Lbl/afi;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->g:Lbl/afi;

    .line 529
    :cond_25
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->g:Lbl/afi;

    .line 530
    if-nez v0, :cond_2c

    .line 531
    invoke-static {}, Lbl/bbi;->a()V

    .line 533
    :cond_2c
    invoke-virtual {v0}, Lbl/afi;->isAdded()Z

    move-result v0

    if-nez v0, :cond_54

    .line 534
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v2, 0x7f080091

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->g:Lbl/afi;

    sget-object v4, Lbl/afi;->Companion:Lbl/afi$e;

    invoke-virtual {v4}, Lbl/afi$e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 535
    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->f:Lbl/afh;

    if-eqz v2, :cond_4e

    .line 536
    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->f:Lbl/afh;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 538
    :cond_4e
    sget-object v2, Lbl/adl;->a:Lbl/adl;

    invoke-virtual {v2, v1, v0}, Lbl/adl;->a(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/FragmentTransaction;)V

    .line 546
    :goto_53
    return-void

    .line 541
    :cond_54
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->g:Lbl/afi;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 542
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchActivity;->q()Z

    move-result v2

    if-eqz v2, :cond_69

    .line 543
    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->f:Lbl/afh;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 545
    :cond_69
    sget-object v2, Lbl/adl;->a:Lbl/adl;

    invoke-virtual {v2, v1, v0}, Lbl/adl;->a(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/FragmentTransaction;)V

    goto :goto_53
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "ott-search.search.0.0.pv"

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 148
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 149
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.bilibili.tv.ui.search.SearchActivity.EXTRA_TID"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->e:I

    .line 150
    const-string v0, "SearchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "search tid is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_2d
    const v0, 0x7f0800aa

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/search/SearchActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    .line 153
    const v0, 0x7f08008f

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/search/SearchActivity;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->a:Landroid/view/View;

    .line 154
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    .line 155
    if-nez v0, :cond_48

    .line 156
    invoke-static {}, Lbl/bbi;->a()V

    .line 158
    :cond_48
    new-instance v1, Lcom/bilibili/tv/ui/search/SearchActivity$b;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/search/SearchActivity$b;-><init>(Lcom/bilibili/tv/ui/search/SearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/search/SearchKeyboardView;->setSearchCallback(Lcom/bilibili/tv/ui/search/SearchKeyboardView$f;)V

    .line 159
    const-string v0, "\u9996\u9875"

    .line 160
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->e:I

    invoke-static {v1, v2}, Lcom/bilibili/tv/api/category/CategoryManager;->getPrimaryCategoryBy(Landroid/content/Context;I)Lcom/bilibili/tv/api/category/CategoryMeta;

    move-result-object v1

    .line 161
    iget v2, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->e:I

    if-eqz v2, :cond_69

    if-eqz v1, :cond_69

    .line 162
    iget-object v0, v1, Lcom/bilibili/tv/api/category/CategoryMeta;->mTypeName:Ljava/lang/String;

    .line 163
    const-string v1, "categoryMeta.mTypeName"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    :cond_69
    const-string v1, "tv_search_pageview"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "from"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    .line 167
    if-nez v0, :cond_7f

    .line 168
    invoke-static {}, Lbl/bbi;->a()V

    .line 170
    :cond_7f
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchKeyboardView;->requestFocus()Z

    .line 171
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 233
    const-string v0, "text"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    const-string v0, "SearchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "search "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 311
    :cond_27
    :goto_27
    return-void

    .line 239
    :cond_28
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->i:Ljava/lang/String;

    .line 240
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->a:Landroid/view/View;

    .line 241
    if-nez v0, :cond_33

    .line 242
    const-string v1, "focusHolder"

    invoke-static {v1}, Lbl/bbi;->b(Ljava/lang/String;)V

    .line 244
    :cond_33
    invoke-virtual {v0, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 245
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->a:Landroid/view/View;

    .line 246
    if-nez v0, :cond_3f

    .line 247
    const-string v1, "focusHolder"

    invoke-static {v1}, Lbl/bbi;->b(Ljava/lang/String;)V

    .line 249
    :cond_3f
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 250
    iput-boolean v6, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->c:Z

    .line 251
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    .line 252
    if-nez v0, :cond_4b

    .line 253
    invoke-static {}, Lbl/bbi;->a()V

    .line 255
    :cond_4b
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchKeyboardView;->getSearchText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 256
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    .line 257
    if-nez v0, :cond_59

    .line 258
    invoke-static {}, Lbl/bbi;->a()V

    .line 260
    :cond_59
    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/search/SearchKeyboardView;->setSearchText(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 262
    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_6a

    .line 263
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 264
    invoke-static {p0}, Lbl/lk;->a(Landroid/app/Activity;)V

    .line 266
    :cond_6a
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchActivity;->u()V

    .line 267
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->g:Lbl/afi;

    .line 268
    if-nez v0, :cond_74

    .line 269
    invoke-static {}, Lbl/bbi;->a()V

    .line 271
    :cond_74
    invoke-virtual {v0, p1}, Lbl/afi;->a(Ljava/lang/String;)V

    .line 272
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/search/SearchActivity;->b(Ljava/lang/String;)V

    .line 273
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "AVAV"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v5}, Lkotlin/text/Regex;->a(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v1

    .line 274
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ae

    .line 275
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    .line 276
    :cond_93
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 277
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_93

    .line 278
    invoke-interface {v4}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Lbl/baf;->b(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 283
    :cond_ae
    invoke-static {}, Lbl/baf;->a()Ljava/util/List;

    move-result-object v0

    .line 285
    if-nez v0, :cond_bc

    .line 286
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_bc
    new-array v1, v5, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 289
    if-nez v0, :cond_cc

    .line 290
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_cc
    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    .line 293
    array-length v1, v0

    if-le v1, v6, :cond_27

    .line 294
    aget-object v1, v0, v5

    .line 295
    aget-object v0, v0, v6

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 297
    :try_start_dd
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 298
    if-nez v0, :cond_e6

    .line 299
    invoke-static {}, Lbl/bbi;->a()V

    .line 301
    :cond_e6
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_e9
    .catch Ljava/lang/NumberFormatException; {:try_start_dd .. :try_end_e9} :catch_f9

    move-result-wide v0

    .line 305
    :goto_ea
    cmp-long v2, v0, v2

    if-eqz v2, :cond_27

    .line 308
    sget-object v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    invoke-virtual {v2, p0, v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/search/SearchActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_27

    .line 302
    :catch_f9
    move-exception v0

    move-wide v0, v2

    .line 303
    goto :goto_ea
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->c:Z

    .line 97
    return-void
.end method

.method public a_()Z
    .locals 1

    .prologue
    .line 65
    invoke-static {p0}, Lbl/wg;->a(Lbl/wf;)Z

    move-result v0

    return v0
.end method

.method public b()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->d:Z

    .line 105
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    const/16 v6, 0x27

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 378
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    if-nez v0, :cond_d

    .line 379
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 490
    :goto_c
    return v0

    .line 381
    :cond_d
    if-eqz p1, :cond_35

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v3, v0

    .line 382
    :goto_18
    if-eqz p1, :cond_37

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 383
    :goto_22
    if-eqz v3, :cond_158

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_158

    .line 384
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    .line 385
    if-nez v3, :cond_39

    .line 386
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_c

    :cond_35
    move-object v3, v1

    .line 381
    goto :goto_18

    :cond_37
    move-object v0, v1

    .line 382
    goto :goto_22

    .line 388
    :cond_39
    if-eqz v0, :cond_50

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x15

    if-ne v4, v5, :cond_50

    .line 389
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->a:Landroid/view/View;

    .line 390
    if-nez v0, :cond_4c

    .line 391
    const-string v1, "focusHolder"

    invoke-static {v1}, Lbl/bbi;->b(Ljava/lang/String;)V

    .line 393
    :cond_4c
    if-ne v3, v0, :cond_158

    move v0, v2

    .line 394
    goto :goto_c

    .line 396
    :cond_50
    if-eqz v0, :cond_dc

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x16

    if-ne v4, v5, :cond_dc

    .line 397
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->a:Landroid/view/View;

    .line 398
    if-nez v0, :cond_63

    .line 399
    const-string v4, "focusHolder"

    invoke-static {v4}, Lbl/bbi;->b(Ljava/lang/String;)V

    .line 401
    :cond_63
    if-ne v3, v0, :cond_67

    move v0, v2

    .line 402
    goto :goto_c

    .line 404
    :cond_67
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 405
    instance-of v4, v0, Landroid/view/View;

    if-nez v4, :cond_70

    move-object v0, v1

    .line 408
    :cond_70
    check-cast v0, Landroid/view/View;

    .line 409
    iget-object v4, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    if-ne v0, v4, :cond_af

    .line 410
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    .line 411
    if-nez v0, :cond_7d

    .line 412
    invoke-static {}, Lbl/bbi;->a()V

    .line 414
    :cond_7d
    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/search/SearchKeyboardView;->g(Landroid/view/View;)I

    move-result v0

    .line 415
    if-eqz v0, :cond_89

    rem-int/lit8 v1, v0, 0x6

    if-eqz v1, :cond_89

    if-ne v0, v6, :cond_158

    .line 416
    :cond_89
    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->h:I

    .line 417
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchActivity;->q()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 418
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->f:Lbl/afh;

    .line 419
    if-nez v0, :cond_98

    .line 420
    invoke-static {}, Lbl/bbi;->a()V

    .line 422
    :cond_98
    invoke-virtual {v0}, Lbl/afh;->a()V

    :cond_9b
    :goto_9b
    move v0, v2

    .line 430
    goto/16 :goto_c

    .line 423
    :cond_9e
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchActivity;->r()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 424
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->g:Lbl/afi;

    .line 425
    if-nez v0, :cond_ab

    .line 426
    invoke-static {}, Lbl/bbi;->a()V

    .line 428
    :cond_ab
    invoke-virtual {v0}, Lbl/afi;->d()V

    goto :goto_9b

    .line 433
    :cond_af
    if-eqz v0, :cond_d8

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 434
    :goto_b5
    instance-of v3, v0, Ljava/lang/CharSequence;

    if-eqz v3, :cond_da

    :goto_b9
    check-cast v0, Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "search_layout"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_158

    .line 435
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    .line 436
    if-nez v0, :cond_cc

    .line 437
    invoke-static {}, Lbl/bbi;->a()V

    .line 439
    :cond_cc
    invoke-virtual {v0, v6}, Lcom/bilibili/tv/ui/search/SearchKeyboardView;->k(I)Landroid/view/View;

    move-result-object v0

    .line 440
    if-eqz v0, :cond_158

    .line 441
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move v0, v2

    .line 442
    goto/16 :goto_c

    :cond_d8
    move-object v0, v1

    .line 433
    goto :goto_b5

    :cond_da
    move-object v0, v1

    .line 434
    goto :goto_b9

    .line 446
    :cond_dc
    if-eqz v0, :cond_f4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v4, 0x13

    if-ne v1, v4, :cond_f4

    .line 447
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->a:Landroid/view/View;

    .line 448
    if-nez v0, :cond_ef

    .line 449
    const-string v1, "focusHolder"

    invoke-static {v1}, Lbl/bbi;->b(Ljava/lang/String;)V

    .line 451
    :cond_ef
    if-ne v3, v0, :cond_158

    move v0, v2

    .line 452
    goto/16 :goto_c

    .line 454
    :cond_f4
    if-eqz v0, :cond_126

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v4, 0x14

    if-ne v1, v4, :cond_126

    .line 455
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->a:Landroid/view/View;

    .line 456
    if-nez v0, :cond_107

    .line 457
    const-string v1, "focusHolder"

    invoke-static {v1}, Lbl/bbi;->b(Ljava/lang/String;)V

    .line 459
    :cond_107
    if-ne v3, v0, :cond_10c

    move v0, v2

    .line 460
    goto/16 :goto_c

    .line 462
    :cond_10c
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    .line 463
    if-nez v0, :cond_113

    .line 464
    invoke-static {}, Lbl/bbi;->a()V

    .line 466
    :cond_113
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchKeyboardView;->getSearchText()Landroid/widget/EditText;

    move-result-object v0

    if-ne v3, v0, :cond_158

    .line 467
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    .line 468
    if-nez v0, :cond_120

    .line 469
    invoke-static {}, Lbl/bbi;->a()V

    .line 471
    :cond_120
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/search/SearchKeyboardView;->j(I)Z

    move v0, v2

    .line 472
    goto/16 :goto_c

    .line 474
    :cond_126
    if-eqz v0, :cond_158

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_158

    .line 475
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    .line 476
    if-nez v0, :cond_136

    .line 477
    invoke-static {}, Lbl/bbi;->a()V

    .line 479
    :cond_136
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchKeyboardView;->getSearchText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_158

    .line 480
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchActivity;->s()V

    .line 481
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    .line 482
    if-nez v0, :cond_152

    .line 483
    invoke-static {}, Lbl/bbi;->a()V

    .line 485
    :cond_152
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/search/SearchKeyboardView;->j(I)Z

    move v0, v2

    .line 486
    goto/16 :goto_c

    .line 490
    :cond_158
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_c
.end method

.method public g()I
    .locals 1

    .prologue
    .line 75
    const v0, 0x7f0a0023

    return v0
.end method

.method public final h()Lcom/bilibili/tv/ui/search/SearchKeyboardView;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    return-object v0
.end method

.method public final i()Landroid/view/View;
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->a:Landroid/view/View;

    .line 84
    if-nez v0, :cond_9

    .line 85
    const-string v1, "focusHolder"

    invoke-static {v1}, Lbl/bbi;->b(Ljava/lang/String;)V

    .line 87
    :cond_9
    return-object v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->c:Z

    return v0
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->d:Z

    return v0
.end method

.method public final l()Landroid/view/View;
    .locals 3

    .prologue
    .line 347
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    .line 348
    if-nez v0, :cond_7

    .line 349
    invoke-static {}, Lbl/bbi;->a()V

    .line 351
    :cond_7
    iget v1, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->h:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/search/SearchKeyboardView;->k(I)Landroid/view/View;

    move-result-object v0

    .line 352
    if-nez v0, :cond_1c

    .line 353
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    .line 354
    if-nez v0, :cond_16

    .line 355
    invoke-static {}, Lbl/bbi;->a()V

    .line 357
    :cond_16
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/search/SearchKeyboardView;->k(I)Landroid/view/View;

    move-result-object v0

    .line 366
    :cond_1b
    :goto_1b
    return-object v0

    .line 359
    :cond_1c
    iget v1, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->h:I

    if-nez v1, :cond_1b

    .line 360
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    .line 361
    if-nez v1, :cond_27

    .line 362
    invoke-static {}, Lbl/bbi;->a()V

    .line 364
    :cond_27
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/search/SearchKeyboardView;->getSearchText()Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    goto :goto_1b
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 8

    .prologue
    const/4 v7, 0x3

    const v6, 0x7f0c014a

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 550
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 551
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchActivity;->q()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 552
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->f:Lbl/afh;

    .line 553
    if-nez v0, :cond_19

    .line 554
    invoke-static {}, Lbl/bbi;->a()V

    .line 556
    :cond_19
    invoke-virtual {v0}, Lbl/afh;->c()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 557
    new-instance v1, Lbl/agb$a;

    invoke-direct {v1, p0}, Lbl/agb$a;-><init>(Landroid/app/Activity;)V

    .line 558
    invoke-virtual {v1, v4}, Lbl/agb$a;->a(I)Lbl/agb$a;

    move-result-object v0

    const-string v2, "\u786e\u8ba4\u6e05\u9664\u641c\u7d22\u5386\u53f2?"

    invoke-virtual {v0, v2}, Lbl/agb$a;->a(Ljava/lang/String;)Lbl/agb$a;

    move-result-object v0

    const v2, 0x7f0c0079

    invoke-virtual {p0, v2}, Lcom/bilibili/tv/ui/search/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bilibili/tv/ui/search/SearchActivity$c;

    invoke-direct {v3, p0}, Lcom/bilibili/tv/ui/search/SearchActivity$c;-><init>(Lcom/bilibili/tv/ui/search/SearchActivity;)V

    invoke-virtual {v0, v2, v3}, Lbl/agb$a;->b(Ljava/lang/String;Lbl/agb$b;)Lbl/agb$a;

    move-result-object v2

    const v0, 0x7f0c0076

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/search/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    check-cast v0, Lcom/bilibili/tv/ui/search/SearchActivity$d;

    sget-object v0, Lcom/bilibili/tv/ui/search/SearchActivity$d;->a:Lcom/bilibili/tv/ui/search/SearchActivity$d;

    invoke-virtual {v2, v3, v0}, Lbl/agb$a;->a(Ljava/lang/String;Lbl/agb$b;)Lbl/agb$a;

    .line 559
    invoke-virtual {v1}, Lbl/agb$a;->a()Lbl/agb;

    move-result-object v0

    invoke-virtual {v0}, Lbl/agb;->show()V

    .line 596
    :cond_54
    :goto_54
    return v4

    .line 563
    :cond_55
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchActivity;->r()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 564
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->g:Lbl/afi;

    invoke-virtual {v0}, Lbl/afi;->j()Z

    move-result v0

    if-nez v0, :cond_54

    .line 567
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 568
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->g:Lbl/afi;

    invoke-virtual {v1}, Lbl/afi;->i()Z

    move-result v1

    if-eqz v1, :cond_e3

    .line 569
    const v1, 0x7f0c0107

    invoke-static {v1}, Lbl/adl;->e(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/bilibili/tv/ui/search/SearchActivity;->m:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    const v1, 0x7f0c0108

    invoke-static {v1}, Lbl/adl;->e(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/bilibili/tv/ui/search/SearchActivity;->m:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    const v1, 0x7f0c0109

    invoke-static {v1}, Lbl/adl;->e(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/bilibili/tv/ui/search/SearchActivity;->m:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    const v1, 0x7f0c010a

    invoke-static {v1}, Lbl/adl;->e(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/bilibili/tv/ui/search/SearchActivity;->m:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    const v1, 0x7f0c010b

    invoke-static {v1}, Lbl/adl;->e(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/bilibili/tv/ui/search/SearchActivity;->m:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    new-instance v1, Lbl/agb$a;

    invoke-direct {v1, p0}, Lbl/agb$a;-><init>(Landroid/app/Activity;)V

    .line 575
    invoke-virtual {v1, v5}, Lbl/agb$a;->a(I)Lbl/agb$a;

    move-result-object v2

    invoke-static {v6}, Lbl/adl;->e(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbl/agb$a;->a(Ljava/lang/String;)Lbl/agb$a;

    move-result-object v2

    new-instance v3, Lcom/bilibili/tv/ui/search/SearchActivity$e;

    invoke-direct {v3, p0, v0}, Lcom/bilibili/tv/ui/search/SearchActivity$e;-><init>(Lcom/bilibili/tv/ui/search/SearchActivity;Ljava/util/LinkedHashMap;)V

    invoke-virtual {v2, v0, v3}, Lbl/agb$a;->a(Ljava/util/LinkedHashMap;Lbl/agb$c;)Lbl/agb$a;

    move-result-object v0

    .line 576
    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->g:Lbl/afi;

    invoke-virtual {v2}, Lbl/afi;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbl/agb$a;->a(Ljava/lang/Object;)Lbl/agb$a;

    .line 577
    invoke-virtual {v1}, Lbl/agb$a;->a()Lbl/agb;

    move-result-object v0

    invoke-virtual {v0}, Lbl/agb;->show()V

    goto/16 :goto_54

    .line 578
    :cond_e3
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->g:Lbl/afi;

    invoke-virtual {v1}, Lbl/afi;->is_live()Z

    move-result v1

    if-eqz v1, :cond_127

    .line 579
    const-string v1, "\u5728\u7ebf\u4eba\u6570"

    sget-object v2, Lcom/bilibili/tv/ui/search/SearchActivity;->live_orders:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    const-string v1, "\u5f00\u64ad\u65f6\u957f"

    sget-object v2, Lcom/bilibili/tv/ui/search/SearchActivity;->live_orders:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    new-instance v1, Lbl/agb$a;

    invoke-direct {v1, p0}, Lbl/agb$a;-><init>(Landroid/app/Activity;)V

    .line 582
    invoke-virtual {v1, v5}, Lbl/agb$a;->a(I)Lbl/agb$a;

    move-result-object v2

    invoke-static {v6}, Lbl/adl;->e(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbl/agb$a;->a(Ljava/lang/String;)Lbl/agb$a;

    move-result-object v2

    new-instance v3, Lcom/bilibili/tv/ui/search/SearchActivity$ee;

    invoke-direct {v3, p0, v0}, Lcom/bilibili/tv/ui/search/SearchActivity$ee;-><init>(Lcom/bilibili/tv/ui/search/SearchActivity;Ljava/util/LinkedHashMap;)V

    invoke-virtual {v2, v0, v3}, Lbl/agb$a;->a(Ljava/util/LinkedHashMap;Lbl/agb$c;)Lbl/agb$a;

    move-result-object v0

    .line 583
    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->g:Lbl/afi;

    iget-object v2, v2, Lbl/afi;->live_order:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lbl/agb$a;->a(Ljava/lang/Object;)Lbl/agb$a;

    .line 584
    invoke-virtual {v1}, Lbl/agb$a;->a()Lbl/agb;

    move-result-object v0

    invoke-virtual {v0}, Lbl/agb;->show()V

    goto/16 :goto_54

    .line 586
    :cond_127
    const v1, 0x7f0c0107

    invoke-static {v1}, Lbl/adl;->e(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/bilibili/tv/ui/search/SearchActivity;->l:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    const v1, 0x7f0c0104

    invoke-static {v1}, Lbl/adl;->e(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/bilibili/tv/ui/search/SearchActivity;->l:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    const v1, 0x7f0c0106

    invoke-static {v1}, Lbl/adl;->e(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/bilibili/tv/ui/search/SearchActivity;->l:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    const v1, 0x7f0c0105

    invoke-static {v1}, Lbl/adl;->e(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/bilibili/tv/ui/search/SearchActivity;->l:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    new-instance v1, Lbl/agb$a;

    invoke-direct {v1, p0}, Lbl/agb$a;-><init>(Landroid/app/Activity;)V

    .line 591
    invoke-virtual {v1, v5}, Lbl/agb$a;->a(I)Lbl/agb$a;

    move-result-object v2

    invoke-static {v6}, Lbl/adl;->e(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbl/agb$a;->a(Ljava/lang/String;)Lbl/agb$a;

    move-result-object v2

    new-instance v3, Lcom/bilibili/tv/ui/search/SearchActivity$f;

    invoke-direct {v3, p0, v0}, Lcom/bilibili/tv/ui/search/SearchActivity$f;-><init>(Lcom/bilibili/tv/ui/search/SearchActivity;Ljava/util/LinkedHashMap;)V

    invoke-virtual {v2, v0, v3}, Lbl/agb$a;->a(Ljava/util/LinkedHashMap;Lbl/agb$c;)Lbl/agb$a;

    move-result-object v0

    .line 592
    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->g:Lbl/afi;

    invoke-virtual {v2}, Lbl/afi;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbl/agb$a;->a(Ljava/lang/Object;)Lbl/agb$a;

    .line 593
    invoke-virtual {v1}, Lbl/agb$a;->a()Lbl/agb;

    move-result-object v0

    invoke-virtual {v0}, Lbl/agb;->show()V

    goto/16 :goto_54
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 226
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 227
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchActivity;->t()V

    .line 228
    return-void
.end method

.method public final q()Z
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->f:Lbl/afh;

    if-eqz v0, :cond_13

    .line 322
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->f:Lbl/afh;

    .line 323
    if-nez v0, :cond_b

    .line 324
    invoke-static {}, Lbl/bbi;->a()V

    .line 326
    :cond_b
    invoke-virtual {v0}, Lbl/afh;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 327
    const/4 v0, 0x1

    .line 330
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public final setFocusHolder(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 91
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->a:Landroid/view/View;

    .line 93
    return-void
.end method

.method public final t()V
    .locals 4

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 496
    sget-object v0, Lbl/afh;->Companion:Lbl/afh$a;

    invoke-virtual {v0}, Lbl/afh$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 497
    instance-of v2, v0, Lbl/afh;

    if-nez v2, :cond_13

    .line 498
    const/4 v0, 0x0

    .line 500
    :cond_13
    check-cast v0, Lbl/afh;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->f:Lbl/afh;

    .line 501
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->f:Lbl/afh;

    if-nez v0, :cond_23

    .line 502
    sget-object v0, Lbl/afh;->Companion:Lbl/afh$a;

    invoke-virtual {v0}, Lbl/afh$a;->b()Lbl/afh;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->f:Lbl/afh;

    .line 504
    :cond_23
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->f:Lbl/afh;

    .line 505
    if-nez v0, :cond_2a

    .line 506
    invoke-static {}, Lbl/bbi;->a()V

    .line 508
    :cond_2a
    invoke-virtual {v0}, Lbl/afh;->isAdded()Z

    move-result v0

    if-nez v0, :cond_47

    .line 509
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f080091

    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->f:Lbl/afh;

    sget-object v3, Lbl/afh;->Companion:Lbl/afh$a;

    invoke-virtual {v3}, Lbl/afh$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 517
    :goto_46
    return-void

    .line 512
    :cond_47
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->f:Lbl/afh;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 513
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchActivity;->r()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 514
    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->g:Lbl/afi;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 516
    :cond_5c
    sget-object v2, Lbl/adl;->a:Lbl/adl;

    invoke-virtual {v2, v1, v0}, Lbl/adl;->a(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/FragmentTransaction;)V

    goto :goto_46
.end method
