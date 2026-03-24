.class public final Lcom/bilibili/tv/ui/search/SearchActivity;
.super Lcom/bilibili/tv/ui/base/BaseActivity;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Lbl/wf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/search/SearchActivity$DismissListener;,
        Lcom/bilibili/tv/ui/search/SearchActivity$c;,
        Lcom/bilibili/tv/ui/search/SearchActivity$b;,
        Lcom/bilibili/tv/ui/search/SearchActivity$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bilibili/tv/ui/search/SearchActivity$a;

.field private static final j:Ljava/lang/String; = "SearchActivity"

.field private static final k:Ljava/lang/String; = "com.bilibili.tv.ui.search.SearchActivity.EXTRA_TID"


# instance fields
.field public a:Landroid/view/View;

.field private b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

.field private c:Z

.field private d:Z

.field private e:I

.field private f:Lbl/afh;

.field private h:I

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/bilibili/tv/ui/search/SearchActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/search/SearchActivity$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/search/SearchActivity;->Companion:Lcom/bilibili/tv/ui/search/SearchActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/bilibili/tv/ui/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/search/SearchActivity;)Lbl/afh;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->f:Lbl/afh;

    return-object v0
.end method

.method static synthetic access$102(Lcom/bilibili/tv/ui/search/SearchActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->i:Ljava/lang/String;

    return-object p1
.end method

.method private final b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 222
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

    .line 223
    new-instance v0, Landroid/provider/SearchRecentSuggestions;

    const-string v1, "uii.ang.bilitv.provider.TvSearchSuggestionProvider"

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v0, "SearchActivity"

    const-string v1, "\u4fdd\u5b58\u641c\u7d22\u5386\u53f2\u6210\u529f"

    invoke-static {v0, v1}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method private final s()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    .line 265
    if-eqz v0, :cond_7

    .line 266
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchKeyboardView;->B()V

    .line 268
    :cond_7
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "ott-search.search.0.0.pv"

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 128
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 129
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.bilibili.tv.ui.search.SearchActivity.EXTRA_TID"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->e:I

    .line 130
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

    .line 132
    :cond_2d
    const v0, 0x7f0800aa

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/search/SearchActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    .line 133
    const v0, 0x7f08008f

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/search/SearchActivity;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->a:Landroid/view/View;

    .line 134
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    .line 135
    if-nez v0, :cond_48

    .line 136
    invoke-static {}, Lbl/bbi;->a()V

    .line 138
    :cond_48
    new-instance v1, Lcom/bilibili/tv/ui/search/SearchActivity$b;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/search/SearchActivity$b;-><init>(Lcom/bilibili/tv/ui/search/SearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/search/SearchKeyboardView;->setSearchCallback(Lcom/bilibili/tv/ui/search/SearchKeyboardView$f;)V

    .line 139
    const-string v0, "\u9996\u9875"

    .line 140
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->e:I

    invoke-static {v1, v2}, Lcom/bilibili/tv/api/category/CategoryManager;->getPrimaryCategoryBy(Landroid/content/Context;I)Lcom/bilibili/tv/api/category/CategoryMeta;

    move-result-object v1

    .line 141
    iget v2, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->e:I

    if-eqz v2, :cond_69

    if-eqz v1, :cond_69

    .line 142
    iget-object v0, v1, Lcom/bilibili/tv/api/category/CategoryMeta;->mTypeName:Ljava/lang/String;

    .line 143
    const-string v1, "categoryMeta.mTypeName"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    :cond_69
    const-string v1, "tv_search_pageview"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "from"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    .line 147
    if-nez v0, :cond_7f

    .line 148
    invoke-static {}, Lbl/bbi;->a()V

    .line 150
    :cond_7f
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchKeyboardView;->requestFocus()Z

    .line 151
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 209
    const-string v0, "SearchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a(String) called with: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const-string v0, "text"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    const-string v0, "SearchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "search "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 219
    :goto_3b
    return-void

    .line 216
    :cond_3c
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->i:Ljava/lang/String;

    .line 217
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/search/SearchActivity;->b(Ljava/lang/String;)V

    .line 218
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->e:I

    invoke-static {p0, p1, v0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_3b
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->c:Z

    .line 87
    return-void
.end method

.method public a_()Z
    .locals 1

    .prologue
    .line 55
    invoke-static {p0}, Lbl/wg;->a(Lbl/wf;)Z

    move-result v0

    return v0
.end method

.method public b()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->d:Z

    .line 95
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    const/16 v6, 0x27

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 272
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    if-nez v0, :cond_d

    .line 273
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 378
    :goto_c
    return v0

    .line 275
    :cond_d
    if-eqz p1, :cond_35

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v3, v0

    .line 276
    :goto_18
    if-eqz p1, :cond_37

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 277
    :goto_22
    if-eqz v3, :cond_147

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_147

    .line 278
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    .line 279
    if-nez v3, :cond_39

    .line 280
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_c

    :cond_35
    move-object v3, v1

    .line 275
    goto :goto_18

    :cond_37
    move-object v0, v1

    .line 276
    goto :goto_22

    .line 282
    :cond_39
    if-eqz v0, :cond_50

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x15

    if-ne v4, v5, :cond_50

    .line 283
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->a:Landroid/view/View;

    .line 284
    if-nez v0, :cond_4c

    .line 285
    const-string v1, "focusHolder"

    invoke-static {v1}, Lbl/bbi;->b(Ljava/lang/String;)V

    .line 287
    :cond_4c
    if-ne v3, v0, :cond_147

    move v0, v2

    .line 288
    goto :goto_c

    .line 290
    :cond_50
    if-eqz v0, :cond_cb

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x16

    if-ne v4, v5, :cond_cb

    .line 291
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->a:Landroid/view/View;

    .line 292
    if-nez v0, :cond_63

    .line 293
    const-string v4, "focusHolder"

    invoke-static {v4}, Lbl/bbi;->b(Ljava/lang/String;)V

    .line 295
    :cond_63
    if-ne v3, v0, :cond_67

    move v0, v2

    .line 296
    goto :goto_c

    .line 298
    :cond_67
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 299
    instance-of v4, v0, Landroid/view/View;

    if-nez v4, :cond_70

    move-object v0, v1

    .line 302
    :cond_70
    check-cast v0, Landroid/view/View;

    .line 303
    iget-object v4, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    if-ne v0, v4, :cond_9e

    .line 304
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    .line 305
    if-nez v0, :cond_7d

    .line 306
    invoke-static {}, Lbl/bbi;->a()V

    .line 308
    :cond_7d
    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/search/SearchKeyboardView;->g(Landroid/view/View;)I

    move-result v0

    .line 309
    if-eqz v0, :cond_89

    rem-int/lit8 v1, v0, 0x6

    if-eqz v1, :cond_89

    if-ne v0, v6, :cond_147

    .line 310
    :cond_89
    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->h:I

    .line 311
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchActivity;->q()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 312
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->f:Lbl/afh;

    .line 313
    if-nez v0, :cond_98

    .line 314
    invoke-static {}, Lbl/bbi;->a()V

    .line 316
    :cond_98
    invoke-virtual {v0}, Lbl/afh;->a()V

    :cond_9b
    move v0, v2

    .line 318
    goto/16 :goto_c

    .line 321
    :cond_9e
    if-eqz v0, :cond_c7

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 322
    :goto_a4
    instance-of v3, v0, Ljava/lang/CharSequence;

    if-eqz v3, :cond_c9

    :goto_a8
    check-cast v0, Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "search_layout"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_147

    .line 323
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    .line 324
    if-nez v0, :cond_bb

    .line 325
    invoke-static {}, Lbl/bbi;->a()V

    .line 327
    :cond_bb
    invoke-virtual {v0, v6}, Lcom/bilibili/tv/ui/search/SearchKeyboardView;->k(I)Landroid/view/View;

    move-result-object v0

    .line 328
    if-eqz v0, :cond_147

    .line 329
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move v0, v2

    .line 330
    goto/16 :goto_c

    :cond_c7
    move-object v0, v1

    .line 321
    goto :goto_a4

    :cond_c9
    move-object v0, v1

    .line 322
    goto :goto_a8

    .line 334
    :cond_cb
    if-eqz v0, :cond_e3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v4, 0x13

    if-ne v1, v4, :cond_e3

    .line 335
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->a:Landroid/view/View;

    .line 336
    if-nez v0, :cond_de

    .line 337
    const-string v1, "focusHolder"

    invoke-static {v1}, Lbl/bbi;->b(Ljava/lang/String;)V

    .line 339
    :cond_de
    if-ne v3, v0, :cond_147

    move v0, v2

    .line 340
    goto/16 :goto_c

    .line 342
    :cond_e3
    if-eqz v0, :cond_115

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v4, 0x14

    if-ne v1, v4, :cond_115

    .line 343
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->a:Landroid/view/View;

    .line 344
    if-nez v0, :cond_f6

    .line 345
    const-string v1, "focusHolder"

    invoke-static {v1}, Lbl/bbi;->b(Ljava/lang/String;)V

    .line 347
    :cond_f6
    if-ne v3, v0, :cond_fb

    move v0, v2

    .line 348
    goto/16 :goto_c

    .line 350
    :cond_fb
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    .line 351
    if-nez v0, :cond_102

    .line 352
    invoke-static {}, Lbl/bbi;->a()V

    .line 354
    :cond_102
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchKeyboardView;->getSearchText()Landroid/widget/EditText;

    move-result-object v0

    if-ne v3, v0, :cond_147

    .line 355
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    .line 356
    if-nez v0, :cond_10f

    .line 357
    invoke-static {}, Lbl/bbi;->a()V

    .line 359
    :cond_10f
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/search/SearchKeyboardView;->j(I)Z

    move v0, v2

    .line 360
    goto/16 :goto_c

    .line 362
    :cond_115
    if-eqz v0, :cond_147

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_147

    .line 363
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    .line 364
    if-nez v0, :cond_125

    .line 365
    invoke-static {}, Lbl/bbi;->a()V

    .line 367
    :cond_125
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchKeyboardView;->getSearchText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_147

    .line 368
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchActivity;->s()V

    .line 369
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    .line 370
    if-nez v0, :cond_141

    .line 371
    invoke-static {}, Lbl/bbi;->a()V

    .line 373
    :cond_141
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/search/SearchKeyboardView;->j(I)Z

    move v0, v2

    .line 374
    goto/16 :goto_c

    .line 378
    :cond_147
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_c
.end method

.method public g()I
    .locals 1

    .prologue
    .line 65
    const v0, 0x7f0a0023

    return v0
.end method

.method public final h()Lcom/bilibili/tv/ui/search/SearchKeyboardView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    return-object v0
.end method

.method public final i()Landroid/view/View;
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->a:Landroid/view/View;

    .line 74
    if-nez v0, :cond_9

    .line 75
    const-string v1, "focusHolder"

    invoke-static {v1}, Lbl/bbi;->b(Ljava/lang/String;)V

    .line 77
    :cond_9
    return-object v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->c:Z

    return v0
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->d:Z

    return v0
.end method

.method public final l()Landroid/view/View;
    .locals 3

    .prologue
    .line 241
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    .line 242
    if-nez v0, :cond_7

    .line 243
    invoke-static {}, Lbl/bbi;->a()V

    .line 245
    :cond_7
    iget v1, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->h:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/search/SearchKeyboardView;->k(I)Landroid/view/View;

    move-result-object v0

    .line 246
    if-nez v0, :cond_1c

    .line 247
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    .line 248
    if-nez v0, :cond_16

    .line 249
    invoke-static {}, Lbl/bbi;->a()V

    .line 251
    :cond_16
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/search/SearchKeyboardView;->k(I)Landroid/view/View;

    move-result-object v0

    .line 260
    :cond_1b
    :goto_1b
    return-object v0

    .line 253
    :cond_1c
    iget v1, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->h:I

    if-nez v1, :cond_1b

    .line 254
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    .line 255
    if-nez v1, :cond_27

    .line 256
    invoke-static {}, Lbl/bbi;->a()V

    .line 258
    :cond_27
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/search/SearchKeyboardView;->getSearchText()Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    goto :goto_1b
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 405
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchActivity;->q()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 407
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->f:Lbl/afh;

    .line 408
    if-nez v0, :cond_13

    .line 409
    invoke-static {}, Lbl/bbi;->a()V

    .line 411
    :cond_13
    invoke-virtual {v0}, Lbl/afh;->c()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 412
    new-instance v0, Lbl/agb$a;

    invoke-direct {v0, p0}, Lbl/agb$a;-><init>(Landroid/app/Activity;)V

    .line 413
    invoke-virtual {v0, v4}, Lbl/agb$a;->a(I)Lbl/agb$a;

    move-result-object v1

    const-string v2, "\u786e\u8ba4\u6e05\u9664\u641c\u7d22\u5386\u53f2?"

    invoke-virtual {v1, v2}, Lbl/agb$a;->a(Ljava/lang/String;)Lbl/agb$a;

    move-result-object v1

    const v2, 0x7f0c0079

    invoke-virtual {p0, v2}, Lcom/bilibili/tv/ui/search/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bilibili/tv/ui/search/SearchActivity$c;

    invoke-direct {v3, p0}, Lcom/bilibili/tv/ui/search/SearchActivity$c;-><init>(Lcom/bilibili/tv/ui/search/SearchActivity;)V

    invoke-virtual {v1, v2, v3}, Lbl/agb$a;->a(Ljava/lang/String;Lbl/agb$b;)Lbl/agb$a;

    move-result-object v1

    const v2, 0x7f0c0076

    invoke-virtual {p0, v2}, Lcom/bilibili/tv/ui/search/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/bilibili/tv/ui/search/SearchActivity$DismissListener;->INSTANCE:Lcom/bilibili/tv/ui/search/SearchActivity$DismissListener;

    invoke-virtual {v1, v2, v3}, Lbl/agb$a;->b(Ljava/lang/String;Lbl/agb$b;)Lbl/agb$a;

    .line 414
    invoke-virtual {v0}, Lbl/agb$a;->a()Lbl/agb;

    move-result-object v0

    invoke-virtual {v0}, Lbl/agb;->show()V

    .line 418
    :cond_4b
    return v4
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 204
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 205
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchActivity;->t()V

    .line 206
    return-void
.end method

.method public final q()Z
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->f:Lbl/afh;

    if-eqz v0, :cond_13

    .line 229
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->f:Lbl/afh;

    .line 230
    if-nez v0, :cond_b

    .line 231
    invoke-static {}, Lbl/bbi;->a()V

    .line 233
    :cond_b
    invoke-virtual {v0}, Lbl/afh;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 234
    const/4 v0, 0x1

    .line 237
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public final setFocusHolder(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 81
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->a:Landroid/view/View;

    .line 83
    return-void
.end method

.method public final t()V
    .locals 4

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 383
    sget-object v0, Lbl/afh;->Companion:Lbl/afh$a;

    invoke-virtual {v0}, Lbl/afh$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 384
    instance-of v2, v0, Lbl/afh;

    if-nez v2, :cond_13

    .line 385
    const/4 v0, 0x0

    .line 387
    :cond_13
    check-cast v0, Lbl/afh;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->f:Lbl/afh;

    .line 388
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->f:Lbl/afh;

    if-nez v0, :cond_23

    .line 389
    sget-object v0, Lbl/afh;->Companion:Lbl/afh$a;

    invoke-virtual {v0}, Lbl/afh$a;->b()Lbl/afh;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->f:Lbl/afh;

    .line 391
    :cond_23
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->f:Lbl/afh;

    .line 392
    if-nez v0, :cond_2a

    .line 393
    invoke-static {}, Lbl/bbi;->a()V

    .line 395
    :cond_2a
    invoke-virtual {v0}, Lbl/afh;->isAdded()Z

    move-result v0

    if-nez v0, :cond_47

    .line 396
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

    .line 401
    :goto_46
    return-void

    .line 399
    :cond_47
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->f:Lbl/afh;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 400
    sget-object v2, Lbl/adl;->a:Lbl/adl;

    invoke-virtual {v2, v1, v0}, Lbl/adl;->a(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/FragmentTransaction;)V

    goto :goto_46
.end method
