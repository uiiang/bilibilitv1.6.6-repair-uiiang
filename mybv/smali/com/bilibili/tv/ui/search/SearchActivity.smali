.class public final Lcom/bilibili/tv/ui/search/SearchActivity;
.super Lcom/bilibili/tv/ui/base/BaseActivity;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Lbl/wf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/search/SearchActivity$b;,
        Lcom/bilibili/tv/ui/search/SearchActivity$c;,
        Lcom/bilibili/tv/ui/search/SearchActivity$DismissListener;,
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
    .line 243
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

    .line 244
    new-instance v0, Landroid/provider/SearchRecentSuggestions;

    const-string v1, "uii.ang.bilitv.provider.TvSearchSuggestionProvider"

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/search/SearchActivity;->truncateSearchHistory(I)V

    .line 246
    const-string v0, "SearchActivity"

    const-string v1, "\u4fdd\u5b58\u641c\u7d22\u5386\u53f2\u6210\u529f"

    invoke-static {v0, v1}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method private final s()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    .line 314
    if-eqz v0, :cond_7

    .line 315
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchKeyboardView;->B()V

    .line 317
    :cond_7
    return-void
.end method

.method private truncateSearchHistory(I)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 250
    const-string v0, "content://uii.ang.bilitv.provider.TvSearchSuggestionProvider/suggestions"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 253
    :try_start_7
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_47
    .catchall {:try_start_7 .. :try_end_13} :catchall_6b

    move-result-object v2

    .line 254
    if-eqz v2, :cond_41

    .line 255
    :try_start_16
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 256
    if-le v0, p1, :cond_41

    .line 257
    sub-int v3, v0, p1

    .line 258
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 259
    const/4 v0, 0x0

    :goto_22
    if-ge v0, v3, :cond_41

    .line 260
    const-string v4, "_id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 261
    invoke-static {v1, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 262
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 263
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_3e} :catch_78
    .catchall {:try_start_16 .. :try_end_3e} :catchall_73

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 270
    :cond_41
    if-eqz v2, :cond_46

    .line 271
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 274
    :cond_46
    :goto_46
    return-void

    .line 267
    :catch_47
    move-exception v0

    move-object v1, v6

    .line 268
    :goto_49
    :try_start_49
    const-string v2, "SearchActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "truncateSearchHistory error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Ltv/danmaku/android/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_65
    .catchall {:try_start_49 .. :try_end_65} :catchall_75

    .line 270
    if-eqz v1, :cond_46

    .line 271
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_46

    .line 270
    :catchall_6b
    move-exception v0

    move-object v2, v6

    :goto_6d
    if-eqz v2, :cond_72

    .line 271
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 273
    :cond_72
    throw v0

    .line 270
    :catchall_73
    move-exception v0

    goto :goto_6d

    :catchall_75
    move-exception v0

    move-object v2, v1

    goto :goto_6d

    .line 267
    :catch_78
    move-exception v0

    move-object v1, v2

    goto :goto_49
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

    .line 321
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    if-nez v0, :cond_d

    .line 322
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 427
    :goto_c
    return v0

    .line 324
    :cond_d
    if-eqz p1, :cond_35

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v3, v0

    .line 325
    :goto_18
    if-eqz p1, :cond_37

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 326
    :goto_22
    if-eqz v3, :cond_145

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_145

    .line 327
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    .line 328
    if-nez v3, :cond_39

    .line 329
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_c

    :cond_35
    move-object v3, v1

    .line 324
    goto :goto_18

    :cond_37
    move-object v0, v1

    .line 325
    goto :goto_22

    .line 331
    :cond_39
    if-eqz v0, :cond_50

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x15

    if-ne v4, v5, :cond_50

    .line 332
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->a:Landroid/view/View;

    .line 333
    if-nez v0, :cond_4c

    .line 334
    const-string v1, "focusHolder"

    invoke-static {v1}, Lbl/bbi;->b(Ljava/lang/String;)V

    .line 336
    :cond_4c
    if-ne v3, v0, :cond_145

    move v0, v2

    .line 337
    goto :goto_c

    .line 339
    :cond_50
    if-eqz v0, :cond_c9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x16

    if-ne v4, v5, :cond_c9

    .line 340
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->a:Landroid/view/View;

    .line 341
    if-nez v0, :cond_63

    .line 342
    const-string v4, "focusHolder"

    invoke-static {v4}, Lbl/bbi;->b(Ljava/lang/String;)V

    .line 344
    :cond_63
    if-ne v3, v0, :cond_67

    move v0, v2

    .line 345
    goto :goto_c

    .line 347
    :cond_67
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 348
    instance-of v4, v0, Landroid/view/View;

    if-nez v4, :cond_70

    move-object v0, v1

    .line 351
    :cond_70
    check-cast v0, Landroid/view/View;

    .line 352
    iget-object v4, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    if-ne v0, v4, :cond_9e

    .line 353
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    .line 354
    if-nez v0, :cond_7d

    .line 355
    invoke-static {}, Lbl/bbi;->a()V

    .line 357
    :cond_7d
    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/search/SearchKeyboardView;->g(Landroid/view/View;)I

    move-result v0

    .line 358
    if-eqz v0, :cond_89

    rem-int/lit8 v1, v0, 0x6

    if-eqz v1, :cond_89

    if-ne v0, v6, :cond_145

    .line 359
    :cond_89
    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->h:I

    .line 360
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchActivity;->q()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 361
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->f:Lbl/afh;

    .line 362
    if-nez v0, :cond_98

    .line 363
    invoke-static {}, Lbl/bbi;->a()V

    .line 365
    :cond_98
    invoke-virtual {v0}, Lbl/afh;->a()V

    :cond_9b
    move v0, v2

    .line 367
    goto/16 :goto_c

    .line 370
    :cond_9e
    if-eqz v0, :cond_c5

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 371
    :goto_a4
    instance-of v3, v0, Ljava/lang/CharSequence;

    if-eqz v3, :cond_c7

    :goto_a8
    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "search_layout"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_145

    .line 372
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    .line 373
    if-nez v0, :cond_b9

    .line 374
    invoke-static {}, Lbl/bbi;->a()V

    .line 376
    :cond_b9
    invoke-virtual {v0, v6}, Lcom/bilibili/tv/ui/search/SearchKeyboardView;->k(I)Landroid/view/View;

    move-result-object v0

    .line 377
    if-eqz v0, :cond_145

    .line 378
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move v0, v2

    .line 379
    goto/16 :goto_c

    :cond_c5
    move-object v0, v1

    .line 370
    goto :goto_a4

    :cond_c7
    move-object v0, v1

    .line 371
    goto :goto_a8

    .line 383
    :cond_c9
    if-eqz v0, :cond_e1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v4, 0x13

    if-ne v1, v4, :cond_e1

    .line 384
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->a:Landroid/view/View;

    .line 385
    if-nez v0, :cond_dc

    .line 386
    const-string v1, "focusHolder"

    invoke-static {v1}, Lbl/bbi;->b(Ljava/lang/String;)V

    .line 388
    :cond_dc
    if-ne v3, v0, :cond_145

    move v0, v2

    .line 389
    goto/16 :goto_c

    .line 391
    :cond_e1
    if-eqz v0, :cond_113

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v4, 0x14

    if-ne v1, v4, :cond_113

    .line 392
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->a:Landroid/view/View;

    .line 393
    if-nez v0, :cond_f4

    .line 394
    const-string v1, "focusHolder"

    invoke-static {v1}, Lbl/bbi;->b(Ljava/lang/String;)V

    .line 396
    :cond_f4
    if-ne v3, v0, :cond_f9

    move v0, v2

    .line 397
    goto/16 :goto_c

    .line 399
    :cond_f9
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    .line 400
    if-nez v0, :cond_100

    .line 401
    invoke-static {}, Lbl/bbi;->a()V

    .line 403
    :cond_100
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchKeyboardView;->getSearchText()Landroid/widget/EditText;

    move-result-object v0

    if-ne v3, v0, :cond_145

    .line 404
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    .line 405
    if-nez v0, :cond_10d

    .line 406
    invoke-static {}, Lbl/bbi;->a()V

    .line 408
    :cond_10d
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/search/SearchKeyboardView;->j(I)Z

    move v0, v2

    .line 409
    goto/16 :goto_c

    .line 411
    :cond_113
    if-eqz v0, :cond_145

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_145

    .line 412
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    .line 413
    if-nez v0, :cond_123

    .line 414
    invoke-static {}, Lbl/bbi;->a()V

    .line 416
    :cond_123
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchKeyboardView;->getSearchText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_145

    .line 417
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchActivity;->s()V

    .line 418
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    .line 419
    if-nez v0, :cond_13f

    .line 420
    invoke-static {}, Lbl/bbi;->a()V

    .line 422
    :cond_13f
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/search/SearchKeyboardView;->j(I)Z

    move v0, v2

    .line 423
    goto/16 :goto_c

    .line 427
    :cond_145
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_c
.end method

.method public final fillSearchText(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 227
    const-string v0, "SearchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fillSearchText called with: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const-string v0, "text"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 240
    :goto_23
    return-void

    .line 233
    :cond_24
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    .line 234
    if-nez v0, :cond_2b

    .line 235
    invoke-static {}, Lbl/bbi;->a()V

    .line 237
    :cond_2b
    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/search/SearchKeyboardView;->setSearchText(Ljava/lang/String;)V

    goto :goto_23
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
    .line 290
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    .line 291
    if-nez v0, :cond_7

    .line 292
    invoke-static {}, Lbl/bbi;->a()V

    .line 294
    :cond_7
    iget v1, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->h:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/search/SearchKeyboardView;->k(I)Landroid/view/View;

    move-result-object v0

    .line 295
    if-nez v0, :cond_1c

    .line 296
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    .line 297
    if-nez v0, :cond_16

    .line 298
    invoke-static {}, Lbl/bbi;->a()V

    .line 300
    :cond_16
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/search/SearchKeyboardView;->k(I)Landroid/view/View;

    move-result-object v0

    .line 309
    :cond_1b
    :goto_1b
    return-object v0

    .line 302
    :cond_1c
    iget v1, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->h:I

    if-nez v1, :cond_1b

    .line 303
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->b:Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    .line 304
    if-nez v1, :cond_27

    .line 305
    invoke-static {}, Lbl/bbi;->a()V

    .line 307
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

    .line 454
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 455
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchActivity;->q()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 456
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->f:Lbl/afh;

    .line 457
    if-nez v0, :cond_13

    .line 458
    invoke-static {}, Lbl/bbi;->a()V

    .line 460
    :cond_13
    invoke-virtual {v0}, Lbl/afh;->c()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 461
    new-instance v0, Lbl/agb$a;

    invoke-direct {v0, p0}, Lbl/agb$a;-><init>(Landroid/app/Activity;)V

    .line 462
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

    .line 463
    invoke-virtual {v0}, Lbl/agb$a;->a()Lbl/agb;

    move-result-object v0

    invoke-virtual {v0}, Lbl/agb;->show()V

    .line 467
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
    .line 277
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->f:Lbl/afh;

    if-eqz v0, :cond_13

    .line 278
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->f:Lbl/afh;

    .line 279
    if-nez v0, :cond_b

    .line 280
    invoke-static {}, Lbl/bbi;->a()V

    .line 282
    :cond_b
    invoke-virtual {v0}, Lbl/afh;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 283
    const/4 v0, 0x1

    .line 286
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
    .line 431
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 432
    sget-object v0, Lbl/afh;->Companion:Lbl/afh$a;

    invoke-virtual {v0}, Lbl/afh$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 433
    instance-of v2, v0, Lbl/afh;

    if-nez v2, :cond_13

    .line 434
    const/4 v0, 0x0

    .line 436
    :cond_13
    check-cast v0, Lbl/afh;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->f:Lbl/afh;

    .line 437
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->f:Lbl/afh;

    if-nez v0, :cond_23

    .line 438
    sget-object v0, Lbl/afh;->Companion:Lbl/afh$a;

    invoke-virtual {v0}, Lbl/afh$a;->b()Lbl/afh;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->f:Lbl/afh;

    .line 440
    :cond_23
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->f:Lbl/afh;

    .line 441
    if-nez v0, :cond_2a

    .line 442
    invoke-static {}, Lbl/bbi;->a()V

    .line 444
    :cond_2a
    invoke-virtual {v0}, Lbl/afh;->isAdded()Z

    move-result v0

    if-nez v0, :cond_47

    .line 445
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

    .line 450
    :goto_46
    return-void

    .line 448
    :cond_47
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchActivity;->f:Lbl/afh;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 449
    sget-object v2, Lbl/adl;->a:Lbl/adl;

    invoke-virtual {v2, v1, v0}, Lbl/adl;->a(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/FragmentTransaction;)V

    goto :goto_46
.end method
