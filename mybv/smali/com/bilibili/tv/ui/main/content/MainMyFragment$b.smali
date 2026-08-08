.class final Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "MainMyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/main/content/MainMyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$bb;,
        Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lbl/adv;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnLongClickListener;"
    }
.end annotation


# instance fields
.field private final colors:[I

.field private d:Lcom/bilibili/lib/account/model/AccountInfo;

.field private e:Z

.field private f:I

.field private final logos:[I

.field private final titles:[I


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/16 v1, 0x8

    .line 295
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 288
    new-array v0, v1, [I

    fill-array-data v0, :array_62

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->titles:[I

    .line 289
    new-array v0, v1, [I

    fill-array-data v0, :array_76

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->colors:[I

    .line 290
    new-array v0, v1, [I

    fill-array-data v0, :array_8a

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->logos:[I

    .line 296
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 297
    if-eqz v0, :cond_30

    .line 298
    invoke-virtual {v0}, Lbl/mg;->c()Lcom/bilibili/lib/account/model/AccountInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->d:Lcom/bilibili/lib/account/model/AccountInfo;

    .line 299
    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->e:Z

    .line 301
    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "adapter init: loggedIn="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", MyMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 302
    sget-object v2, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    array-length v3, v2

    const/4 v0, 0x0

    :goto_47
    if-ge v0, v3, :cond_57

    aget v4, v2, v0

    .line 303
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 305
    :cond_57
    const-string v0, "MainMyAccount"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-void

    .line 288
    nop

    :array_62
    .array-data 4
        0x7f0c00b6
        0x7f0c00d1
        0x7f0c017b
        0x7f0c00d2
        0x7f0c00d3
        0x7f0c005f
        0x7f0c017d
        0x7f0c0193
    .end array-data

    .line 289
    :array_76
    .array-data 4
        0x7f050038
        0x7f050039
        0x7f05003a
        0x7f05003c
        0x7f05003d
        0x7f05003b
        0x7f05003e
        0x7f05003f
    .end array-data

    .line 290
    :array_8a
    .array-data 4
        0x7f0700a9
        0x7f070104
        0x7f070105
        0x7f0700ac
        0x7f0700ab
        0x7f070062
        0x7f070062
        0x7f07010f
    .end array-data
.end method

.method static synthetic access$300(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    invoke-static {p0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->readFirstLine(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 287
    invoke-direct/range {p0 .. p6}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->saveAccountAndShowDialog(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private effectiveIndex(I)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 385
    move v0, v1

    move v2, v1

    .line 386
    :goto_3
    sget-object v1, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    array-length v1, v1

    if-ge v0, v1, :cond_20

    .line 387
    invoke-direct {p0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->isDownloadHidden()Z

    move-result v1

    if-eqz v1, :cond_1a

    sget-object v1, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    aget v1, v1, v0

    const/4 v3, 0x7

    if-ne v1, v3, :cond_1a

    move v1, v2

    .line 386
    :goto_16
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_3

    .line 390
    :cond_1a
    if-ne v2, p1, :cond_1d

    .line 395
    :goto_1c
    return v0

    .line 393
    :cond_1d
    add-int/lit8 v1, v2, 0x1

    goto :goto_16

    :cond_20
    move v0, p1

    .line 395
    goto :goto_1c
.end method

.method private static extractDedeUserId(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 661
    if-eqz p0, :cond_9

    :try_start_3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 682
    :cond_9
    :goto_9
    return-object v0

    .line 664
    :cond_a
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 665
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 666
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 667
    if-eqz v1, :cond_9

    .line 670
    const-string v2, "cookies"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 671
    if-eqz v2, :cond_9

    .line 674
    const/4 v1, 0x0

    :goto_25
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_9

    .line 675
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 676
    if-eqz v3, :cond_46

    const-string v4, "DedeUserID"

    const-string v5, "name"

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 677
    const-string v1, "value"

    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_44} :catch_49

    move-result-object v0

    goto :goto_9

    .line 674
    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 681
    :catch_49
    move-exception v1

    goto :goto_9
.end method

.method private isDownloadHidden()Z
    .locals 1

    .prologue
    .line 380
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static readFirstLine(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 646
    if-eqz p0, :cond_9

    :try_start_3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_9
    move-object v0, v1

    .line 654
    :goto_a
    return-object v0

    .line 649
    :cond_b
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 650
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 651
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1c} :catch_1d

    goto :goto_a

    .line 653
    :catch_1d
    move-exception v0

    move-object v0, v1

    .line 654
    goto :goto_a
.end method

.method private saveAccountAndShowDialog(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 595
    :try_start_0
    invoke-static {p1, p3, p4, p5, p6}, Lbl/abd;->add_account(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 598
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 599
    invoke-static {p1}, Lbl/abd;->get_accounts(Landroid/content/Context;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 600
    const-string v1, "+"

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 602
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    const-string v6, "username"

    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_41

    goto :goto_1e

    .line 637
    :catch_41
    move-exception v1

    .line 638
    const-string v2, "MainMyAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveAccountAndShowDialog error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 641
    :goto_61
    return-void

    .line 607
    :cond_62
    :try_start_62
    const-string v1, "MainMyAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "show dialog, items="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 609
    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Ljava/lang/CharSequence;

    move-object v7, v0

    new-instance v1, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$2;

    move-object v2, p0

    move-object v3, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$2;-><init>(Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;Landroid/app/Activity;Lcom/alibaba/fastjson/JSONObject;Ljava/util/List;Landroid/content/Context;)V

    invoke-virtual {v8, v7, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 635
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 636
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_a1} :catch_41

    goto :goto_61
.end method


# virtual methods
.method public a()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 366
    invoke-direct {p0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->isDownloadHidden()Z

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v1

    move v2, v1

    .line 368
    :goto_9
    sget-object v1, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1e

    .line 369
    sget-object v1, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    aget v1, v1, v0

    const/4 v3, 0x7

    if-eq v1, v3, :cond_1f

    .line 370
    add-int/lit8 v1, v2, 0x1

    .line 368
    :goto_17
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_9

    .line 375
    :cond_1b
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->titles:[I

    array-length v2, v0

    :cond_1e
    return v2

    :cond_1f
    move v1, v2

    goto :goto_17
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->a(Landroid/view/ViewGroup;I)Lbl/adv;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lbl/adv;
    .locals 1

    .prologue
    .line 318
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    const/4 v0, 0x0

    check-cast v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$c;

    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$c;->Companion:Lcom/bilibili/tv/ui/main/content/MainMyFragment$c$a;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$c$a;->a(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/main/content/MainMyFragment$c;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/app/Activity;Z)V
    .locals 4

    .prologue
    .line 399
    const-string v0, "activity"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    if-nez p2, :cond_b

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->e:Z

    if-nez v0, :cond_76

    .line 401
    :cond_b
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 402
    const-string v1, "BiliAccount.get(MainApplication.getInstance())"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 403
    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v0

    .line 404
    const-string v1, "MainMyAccount"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refresh login state: old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->e:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", new="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", force="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-boolean v1, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->e:Z

    if-eq v1, v0, :cond_76

    .line 406
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->e:Z

    .line 407
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 408
    if-eqz v0, :cond_60

    .line 409
    invoke-virtual {v0}, Lbl/mg;->c()Lcom/bilibili/lib/account/model/AccountInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->d:Lcom/bilibili/lib/account/model/AccountInfo;

    .line 411
    :cond_60
    instance-of v0, p1, Lcom/bilibili/tv/ui/main/MainActivity;

    if-eqz v0, :cond_73

    .line 412
    check-cast p1, Lcom/bilibili/tv/ui/main/MainActivity;

    .line 413
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bilibili/tv/ui/main/MainActivity;->a(Z)V

    .line 414
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/main/MainActivity;->j()Landroid/view/View;

    move-result-object v0

    .line 415
    if-eqz v0, :cond_73

    .line 416
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 419
    :cond_73
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->d()V

    .line 422
    :cond_76
    return-void
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    .prologue
    .line 287
    check-cast p1, Lbl/adv;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->a(Lbl/adv;I)V

    return-void
.end method

.method public a(Lbl/adv;I)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/16 v6, 0x8

    .line 325
    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    instance-of v0, p1, Lcom/bilibili/tv/ui/main/content/MainMyFragment$c;

    if-eqz v0, :cond_ff

    move-object v0, p1

    .line 327
    check-cast v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$c;

    .line 328
    invoke-direct {p0, p2}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->effectiveIndex(I)I

    move-result v3

    .line 329
    const-string v4, "MainMyAccount"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bind: pos="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", realIndex="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", myMap="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    aget v5, v5, v3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", setLongClick="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v1, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    aget v1, v1, v3

    if-nez v1, :cond_100

    const/4 v1, 0x1

    :goto_49
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$c;->z()Landroid/widget/TextView;

    move-result-object v1

    iget-object v4, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->titles:[I

    sget-object v5, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    aget v5, v5, v3

    aget v4, v4, v5

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 331
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v1

    iget-object v4, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->logos:[I

    sget-object v5, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    aget v5, v5, v3

    aget v4, v4, v5

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$c;->A()Lcom/bilibili/tv/widget/CircleImageView;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lbl/nv;->a(ILandroid/widget/ImageView;)V

    .line 332
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$c;->A()Lcom/bilibili/tv/widget/CircleImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/widget/CircleImageView;->setVisibility(I)V

    .line 333
    sget-object v1, Lbl/adl;->a:Lbl/adl;

    const v2, 0x7f070054

    invoke-virtual {v1, v2}, Lbl/adl;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 334
    iget-object v2, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->colors:[I

    aget v2, v2, p2

    invoke-static {v2}, Lbl/adl;->d(I)I

    move-result v2

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 335
    iget-object v2, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 336
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$c;->E()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 337
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$c;->F()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 338
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$c;->C()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 339
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$c;->D()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 340
    iget-object v1, p1, Lbl/adv;->a:Landroid/view/View;

    const v2, 0x7f0800d8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 341
    iget-object v1, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    sget-object v1, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    aget v1, v1, v3

    if-nez v1, :cond_d0

    .line 344
    iget-object v1, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 346
    :cond_d0
    sget-object v1, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    aget v1, v1, v3

    if-nez v1, :cond_ff

    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->d:Lcom/bilibili/lib/account/model/AccountInfo;

    if-eqz v1, :cond_ff

    .line 347
    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->d:Lcom/bilibili/lib/account/model/AccountInfo;

    .line 348
    if-nez v1, :cond_e1

    .line 349
    invoke-static {}, Lbl/bbi;->a()V

    .line 351
    :cond_e1
    iget-object v2, v1, Lcom/bilibili/lib/account/model/AccountInfo;->mAvatar:Ljava/lang/String;

    if-eqz v2, :cond_f2

    .line 352
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v2

    .line 353
    iget-object v3, v1, Lcom/bilibili/lib/account/model/AccountInfo;->mAvatar:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$c;->A()Lcom/bilibili/tv/widget/CircleImageView;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 355
    :cond_f2
    iget-object v2, v1, Lcom/bilibili/lib/account/model/AccountInfo;->mUserName:Ljava/lang/String;

    if-eqz v2, :cond_ff

    .line 356
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$c;->z()Landroid/widget/TextView;

    move-result-object v0

    .line 357
    iget-object v1, v1, Lcom/bilibili/lib/account/model/AccountInfo;->mUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    :cond_ff
    return-void

    :cond_100
    move v1, v2

    .line 329
    goto/16 :goto_49
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->f:I

    return v0
.end method

.method public final e(I)V
    .locals 0

    .prologue
    .line 313
    iput p1, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->f:I

    .line 314
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 426
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 428
    const-string v2, "v.context"

    invoke-static {v0, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    invoke-static {v0}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    .line 430
    if-eqz v2, :cond_67

    .line 431
    const v0, 0x7f0800d8

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 432
    if-eqz v0, :cond_68

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 433
    :goto_26
    const-string v3, "MainMyAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick: pos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", myMap="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->effectiveIndex(I)I

    move-result v6

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", loggedIn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->e:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    sget-object v3, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->effectiveIndex(I)I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1a4

    .line 509
    :cond_67
    :goto_67
    return-void

    :cond_68
    move v0, v1

    .line 432
    goto :goto_26

    .line 436
    :pswitch_6a
    iget-boolean v1, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->e:Z

    if-nez v1, :cond_7c

    .line 437
    sget-object v1, Lcom/bilibili/tv/ui/account/LoginActivity;->Companion:Lcom/bilibili/tv/ui/account/LoginActivity$a;

    sget-object v3, Lcom/bilibili/tv/ui/main/MainActivity;->Companion:Lcom/bilibili/tv/ui/main/MainActivity$a;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/main/MainActivity$a;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ui/account/LoginActivity$a;->a(Landroid/app/Activity;I)V

    .line 438
    iput v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->f:I

    goto :goto_67

    .line 441
    :cond_7c
    instance-of v0, v2, Lcom/bilibili/tv/ui/main/MainActivity;

    if-eqz v0, :cond_67

    .line 442
    new-instance v0, Lbl/agb$a;

    invoke-direct {v0, v2}, Lbl/agb$a;-><init>(Landroid/app/Activity;)V

    .line 443
    invoke-virtual {v0, v7}, Lbl/agb$a;->a(I)Lbl/agb$a;

    move-result-object v1

    const v3, 0x7f0c00a7

    invoke-static {v3}, Lbl/adl;->e(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lbl/agb$a;->a(Ljava/lang/String;)Lbl/agb$a;

    move-result-object v1

    const v3, 0x7f0c00c3

    invoke-static {v3}, Lbl/adl;->e(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$a;

    invoke-direct {v4, p0, v2}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$a;-><init>(Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;Landroid/app/Activity;)V

    invoke-virtual {v1, v3, v4}, Lbl/agb$a;->a(Ljava/lang/String;Lbl/agb$b;)Lbl/agb$a;

    move-result-object v1

    const v2, 0x7f0c00c4

    invoke-static {v2}, Lbl/adl;->e(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$bb;->a:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$bb;

    invoke-virtual {v1, v2, v3}, Lbl/agb$a;->b(Ljava/lang/String;Lbl/agb$b;)Lbl/agb$a;

    .line 444
    invoke-virtual {v0}, Lbl/agb$a;->a()Lbl/agb;

    move-result-object v0

    invoke-virtual {v0}, Lbl/agb;->show()V

    goto :goto_67

    .line 448
    :pswitch_b8
    iget-boolean v3, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->e:Z

    if-nez v3, :cond_ca

    .line 449
    sget-object v1, Lcom/bilibili/tv/ui/account/LoginActivity;->Companion:Lcom/bilibili/tv/ui/account/LoginActivity$a;

    sget-object v3, Lcom/bilibili/tv/ui/main/MainActivity;->Companion:Lcom/bilibili/tv/ui/main/MainActivity$a;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/main/MainActivity$a;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ui/account/LoginActivity$a;->a(Landroid/app/Activity;I)V

    .line 450
    iput v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->f:I

    goto :goto_67

    .line 454
    :cond_ca
    invoke-static {v2}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->a(Landroid/content/Context;)V

    .line 455
    const-string v0, "tv_my_mybangumi_click"

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "action"

    aput-object v3, v2, v1

    const-string v1, "1"

    aput-object v1, v2, v7

    invoke-static {v0, v2}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_67

    .line 458
    :pswitch_dd
    iget-boolean v1, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->e:Z

    if-nez v1, :cond_f0

    .line 459
    sget-object v1, Lcom/bilibili/tv/ui/account/LoginActivity;->Companion:Lcom/bilibili/tv/ui/account/LoginActivity$a;

    sget-object v3, Lcom/bilibili/tv/ui/main/MainActivity;->Companion:Lcom/bilibili/tv/ui/main/MainActivity$a;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/main/MainActivity$a;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ui/account/LoginActivity$a;->a(Landroid/app/Activity;I)V

    .line 460
    iput v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->f:I

    goto/16 :goto_67

    .line 463
    :cond_f0
    sget-object v0, Lcom/bilibili/tv/ui/history/VideoToviewActivity;->Companion:Lcom/bilibili/tv/ui/history/VideoToviewActivity$b;

    sget-object v1, Lcom/bilibili/tv/ui/history/VideoToviewActivity;->Companion:Lcom/bilibili/tv/ui/history/VideoToviewActivity$b;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/history/VideoToviewActivity$b;->b()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/bilibili/tv/ui/history/VideoToviewActivity$b;->a(Landroid/content/Context;I)V

    goto/16 :goto_67

    .line 466
    :pswitch_fd
    iget-boolean v3, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->e:Z

    if-nez v3, :cond_110

    .line 467
    sget-object v1, Lcom/bilibili/tv/ui/account/LoginActivity;->Companion:Lcom/bilibili/tv/ui/account/LoginActivity$a;

    sget-object v3, Lcom/bilibili/tv/ui/main/MainActivity;->Companion:Lcom/bilibili/tv/ui/main/MainActivity$a;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/main/MainActivity$a;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ui/account/LoginActivity$a;->a(Landroid/app/Activity;I)V

    .line 468
    iput v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->f:I

    goto/16 :goto_67

    .line 471
    :cond_110
    invoke-static {v2}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->a(Landroid/content/Context;)V

    .line 472
    const-string v0, "tv_my_favourite_click"

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "action"

    aput-object v3, v2, v1

    const-string v1, "1"

    aput-object v1, v2, v7

    invoke-static {v0, v2}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_67

    .line 475
    :pswitch_124
    iget-boolean v3, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->e:Z

    if-nez v3, :cond_137

    .line 476
    sget-object v1, Lcom/bilibili/tv/ui/account/LoginActivity;->Companion:Lcom/bilibili/tv/ui/account/LoginActivity$a;

    sget-object v3, Lcom/bilibili/tv/ui/main/MainActivity;->Companion:Lcom/bilibili/tv/ui/main/MainActivity$a;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/main/MainActivity$a;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ui/account/LoginActivity$a;->a(Landroid/app/Activity;I)V

    .line 477
    iput v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->f:I

    goto/16 :goto_67

    .line 480
    :cond_137
    invoke-static {v2}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->a(Landroid/content/Context;)V

    .line 481
    const-string v0, "tv_my_history_click"

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "action"

    aput-object v3, v2, v1

    const-string v1, "1"

    aput-object v1, v2, v7

    invoke-static {v0, v2}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_67

    .line 484
    :pswitch_14b
    iget-boolean v3, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->e:Z

    if-nez v3, :cond_15e

    .line 485
    sget-object v1, Lcom/bilibili/tv/ui/account/LoginActivity;->Companion:Lcom/bilibili/tv/ui/account/LoginActivity$a;

    sget-object v3, Lcom/bilibili/tv/ui/main/MainActivity;->Companion:Lcom/bilibili/tv/ui/main/MainActivity$a;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/main/MainActivity$a;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ui/account/LoginActivity$a;->a(Landroid/app/Activity;I)V

    .line 486
    iput v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->f:I

    goto/16 :goto_67

    .line 489
    :cond_15e
    sget-object v0, Lcom/bilibili/tv/ui/bangumi/follow/FollowBangumiActivity;->Companion:Lcom/bilibili/tv/ui/bangumi/follow/FollowBangumiActivity$a;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/bangumi/follow/FollowBangumiActivity$a;->a(Landroid/content/Context;)V

    .line 490
    const-string v0, "tv_my_bangumi_follow_click"

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "action"

    aput-object v3, v2, v1

    const-string v1, "1"

    aput-object v1, v2, v7

    invoke-static {v0, v2}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_67

    .line 493
    :pswitch_174
    iget-boolean v3, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->e:Z

    if-nez v3, :cond_187

    .line 494
    sget-object v1, Lcom/bilibili/tv/ui/account/LoginActivity;->Companion:Lcom/bilibili/tv/ui/account/LoginActivity$a;

    sget-object v3, Lcom/bilibili/tv/ui/main/MainActivity;->Companion:Lcom/bilibili/tv/ui/main/MainActivity$a;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/main/MainActivity$a;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ui/account/LoginActivity$a;->a(Landroid/app/Activity;I)V

    .line 495
    iput v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->f:I

    goto/16 :goto_67

    .line 498
    :cond_187
    sget-object v0, Lcom/bilibili/tv/ui/bangumi/follow/FollowPgcActivity;->Companion:Lcom/bilibili/tv/ui/bangumi/follow/FollowPgcActivity$a;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/bangumi/follow/FollowPgcActivity$a;->a(Landroid/content/Context;)V

    .line 499
    const-string v0, "tv_my_pgc_follow_click"

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "action"

    aput-object v3, v2, v1

    const-string v1, "1"

    aput-object v1, v2, v7

    invoke-static {v0, v2}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_67

    .line 503
    :pswitch_19d
    sget-object v0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->Companion:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$a;

    invoke-virtual {v0, v2, v7}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$a;->a(Landroid/content/Context;I)V

    goto/16 :goto_67

    .line 434
    :pswitch_data_1a4
    .packed-switch 0x0
        :pswitch_6a
        :pswitch_b8
        :pswitch_dd
        :pswitch_fd
        :pswitch_124
        :pswitch_14b
        :pswitch_174
        :pswitch_19d
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 14

    .prologue
    .line 513
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 514
    invoke-static {v2}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v3

    .line 515
    const v0, 0x7f0800d8

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 516
    if-eqz v0, :cond_60

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    .line 517
    :goto_18
    const/4 v0, -0x1

    .line 518
    if-ltz v1, :cond_2a

    .line 519
    invoke-direct {p0, v1}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->effectiveIndex(I)I

    move-result v4

    .line 520
    if-ltz v4, :cond_2a

    sget-object v5, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    array-length v5, v5

    if-ge v4, v5, :cond_2a

    .line 521
    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    aget v0, v0, v4

    .line 524
    :cond_2a
    const-string v4, "MainMyAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onLongClick: position="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", myMapValue="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", loggedIn="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v5, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->e:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    if-nez v0, :cond_5e

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->e:Z

    if-nez v0, :cond_63

    .line 527
    :cond_5e
    const/4 v0, 0x0

    .line 588
    :goto_5f
    return v0

    .line 516
    :cond_60
    const/4 v0, -0x1

    move v1, v0

    goto :goto_18

    .line 530
    :cond_63
    :try_start_63
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v1

    .line 531
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "bili.account.storage"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 532
    new-instance v4, Ljava/io/File;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "bili.passport.storage"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 533
    const-string v5, "MainMyAccount"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "files exists: account="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", passport="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->readFirstLine(Ljava/io/File;)Ljava/lang/String;

    move-result-object v12

    .line 536
    invoke-static {v4}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->readFirstLine(Ljava/io/File;)Ljava/lang/String;

    move-result-object v13

    .line 537
    const-string v5, "MainMyAccount"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read storage len: account="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v12, :cond_e4

    const/4 v0, -0x1

    :goto_c3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", passport="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v13, :cond_e9

    const/4 v0, -0x1

    :goto_d0
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-virtual {v1}, Lbl/mg;->c()Lcom/bilibili/lib/account/model/AccountInfo;

    move-result-object v0

    .line 539
    if-nez v0, :cond_ee

    .line 540
    const/4 v0, 0x0

    goto/16 :goto_5f

    .line 537
    :cond_e4
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_c3

    :cond_e9
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_d0

    .line 542
    :cond_ee
    iget-wide v6, v0, Lcom/bilibili/lib/account/model/AccountInfo;->mMid:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 543
    iget-object v6, v0, Lcom/bilibili/lib/account/model/AccountInfo;->mUserName:Ljava/lang/String;

    .line 544
    const-string v0, "MainMyAccount"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "save current account: mid="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ", username="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-static {v12}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->extractDedeUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 548
    const-string v1, "MainMyAccount"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "verify cookie: fileDedeUserId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", currentMid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    if-eqz v0, :cond_146

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_168

    .line 551
    :cond_146
    const-string v0, "MainMyAccount"

    const-string v1, "cookie DedeUserID mismatch, refresh cookies in background"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const-string v0, "\u6b63\u5728\u5237\u65b0\u8d26\u53f7\u51ed\u8bc1..."

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 558
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$1;-><init>(Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;Landroid/content/Context;Landroid/app/Activity;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 578
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 579
    const/4 v0, 0x1

    goto/16 :goto_5f

    :cond_168
    move-object v7, p0

    move-object v8, v2

    move-object v9, v3

    move-object v10, v5

    move-object v11, v6

    .line 582
    invoke-direct/range {v7 .. v13}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->saveAccountAndShowDialog(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_170
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_170} :catch_173

    .line 588
    const/4 v0, 0x1

    goto/16 :goto_5f

    .line 583
    :catch_173
    move-exception v0

    .line 584
    const-string v1, "MainMyAccount"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLongClick error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 586
    const/4 v0, 0x0

    goto/16 :goto_5f
.end method
