.class public Lbl/xw;
.super Lbl/xh;
.source "xw.java"

# interfaces
.implements Lbl/bbb;
.implements Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/xh;",
        "Lbl/bbb",
        "<",
        "Landroid/os/Message;",
        "Ljava/lang/Boolean;",
        ">;",
        "Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;"
    }
.end annotation


# static fields
.field private static final DOUBLE_PRESS_INTERVAL:J = 0x7d0L

.field private static final REQUEST_CODE_STORAGE_PERMISSION:I = 0x3e9

.field private static final TAG_EBOOK:Ljava/lang/String; = "EbookReader"


# instance fields
.field private c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

.field private chapterListView:Landroid/widget/ListView;

.field private currentBook:Lcom/bilibili/tv/ebook/model/Book;

.field private currentChapterIndex:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private ebookPanel:Landroid/widget/FrameLayout;

.field private ebookWebView:Landroid/webkit/WebView;

.field private f:Z

.field private g:Ljava/lang/Runnable;

.field private isChapterListShown:Z

.field private isEbookPanelShown:Z

.field private isFileChooserShown:Z

.field private isLoadingEbook:Z

.field private lastBackPressTime:J

.field private loadingProgressBar:Landroid/widget/ProgressBar;

.field private loadingTextView:Landroid/widget/TextView;

.field private originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

.field private originalVideoParams:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Lbl/xh;-><init>()V

    .line 46
    iput-object v2, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    .line 47
    iput-boolean v3, p0, Lbl/xw;->isEbookPanelShown:Z

    .line 48
    iput-object v2, p0, Lbl/xw;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    .line 49
    iput-object v2, p0, Lbl/xw;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    .line 50
    iput-boolean v3, p0, Lbl/xw;->isFileChooserShown:Z

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbl/xw;->lastBackPressTime:J

    .line 53
    iput-boolean v3, p0, Lbl/xw;->isLoadingEbook:Z

    .line 54
    iput-object v2, p0, Lbl/xw;->loadingProgressBar:Landroid/widget/ProgressBar;

    .line 55
    iput-object v2, p0, Lbl/xw;->loadingTextView:Landroid/widget/TextView;

    .line 58
    iput-object v2, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    .line 59
    iput v3, p0, Lbl/xw;->currentChapterIndex:I

    .line 60
    iput-object v2, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    .line 61
    iput-object v2, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    .line 62
    iput-boolean v3, p0, Lbl/xw;->isChapterListShown:Z

    .line 63
    new-instance v0, Lbl/xw$1;

    invoke-direct {v0, p0}, Lbl/xw$1;-><init>(Lbl/xw;)V

    iput-object v0, p0, Lbl/xw;->g:Ljava/lang/Runnable;

    return-void
.end method

.method private R()Z
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->isShown()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private S()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 513
    invoke-virtual {p0}, Lbl/xw;->Q()V

    .line 514
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 517
    iget-boolean v0, p0, Lbl/xw;->isEbookPanelShown:Z

    if-eqz v0, :cond_46

    invoke-static {}, Lcom/bilibili/tv/FeatureConfig;->isEbookReaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 519
    const-string v0, "EbookReader"

    const-string v2, "\u7535\u5b50\u4e66\u6a21\u5f0f:\u8bbe\u7f6e\u4e13\u7528\u83dc\u5355"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 522
    const-string v2, "\u7ae0\u8282\u5217\u8868"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    const-string v2, "\u5b57\u4f53\u5927\u5c0f"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    const-string v2, "\u9009\u62e9\u6587\u4ef6"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    const-string v2, "\u5173\u95ed\u7535\u5b50\u4e66"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    iget-object v2, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v2, v0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->b(Ljava/util/List;I)V

    .line 528
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->setMenuIndexMap(Ljava/util/List;)V

    .line 622
    :cond_45
    :goto_45
    return-void

    .line 535
    :cond_46
    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_player_menu_config(Landroid/content/Context;)I

    move-result v3

    .line 536
    const v0, 0x7f020002

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 537
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 538
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 540
    const/16 v0, 0xd

    new-array v7, v0, [I

    fill-array-data v7, :array_26c

    .line 547
    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->is_exo_player_selected(Landroid/content/Context;)Z

    move-result v8

    move v0, v1

    .line 549
    :goto_6f
    array-length v9, v4

    if-ge v0, v9, :cond_92

    array-length v9, v7

    if-ge v0, v9, :cond_92

    .line 551
    aget v9, v7, v0

    const/16 v10, 0x800

    if-ne v9, v10, :cond_80

    if-nez v8, :cond_80

    .line 549
    :cond_7d
    :goto_7d
    add-int/lit8 v0, v0, 0x1

    goto :goto_6f

    .line 554
    :cond_80
    aget v9, v7, v0

    and-int/2addr v9, v3

    if-eqz v9, :cond_7d

    .line 555
    aget-object v9, v4, v0

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7d

    .line 561
    :cond_92
    invoke-static {}, Lcom/bilibili/tv/FeatureConfig;->isEbookReaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 562
    const-string v0, "\u7535\u5b50\u4e66"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    array-length v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    const-string v0, "EbookReader"

    const-string v3, "\u7535\u5b50\u4e66\u83dc\u5355\u9879\u5df2\u6dfb\u52a0"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_ac
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v0, v5, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->b(Ljava/util/List;I)V

    .line 568
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->setMenuIndexMap(Ljava/util/List;)V

    .line 570
    iget-object v0, p0, Lbl/xw;->d:Ljava/util/List;

    if-nez v0, :cond_cf

    .line 571
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbl/xw;->d:Ljava/util/List;

    .line 572
    iget-object v0, p0, Lbl/xw;->d:Ljava/util/List;

    const v3, 0x7f0c00f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    iput v1, p0, Lbl/xw;->e:I

    .line 575
    :cond_cf
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    iget-object v3, p0, Lbl/xw;->d:Ljava/util/List;

    iget v4, p0, Lbl/xw;->e:I

    invoke-virtual {v0, v3, v4}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_quality(Ljava/util/List;I)V

    .line 576
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    const/high16 v3, 0x7f020000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lbl/abd;->get_danmaku_type(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_danmaku(Ljava/util/List;I)V

    .line 577
    new-instance v3, Ljava/util/ArrayList;

    sget-object v0, Lbl/abd;->a:[F

    array-length v0, v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 578
    sget-object v4, Lbl/abd;->a:[F

    array-length v5, v4

    move v0, v1

    :goto_ff
    if-ge v0, v5, :cond_10d

    aget v6, v4, v0

    .line 579
    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    add-int/lit8 v0, v0, 0x1

    goto :goto_ff

    .line 581
    :cond_10d
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lbl/abd;->f(Landroid/content/Context;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_size(Ljava/util/List;I)V

    .line 582
    new-instance v3, Ljava/util/ArrayList;

    sget-object v0, Lbl/abd;->b:[F

    array-length v0, v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 583
    sget-object v4, Lbl/abd;->b:[F

    array-length v5, v4

    move v0, v1

    :goto_12e
    if-ge v0, v5, :cond_14f

    aget v6, v4, v0

    .line 584
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "f"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    add-int/lit8 v0, v0, 0x1

    goto :goto_12e

    .line 586
    :cond_14f
    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->g(Landroid/content/Context;)F

    move-result v0

    .line 587
    iget-object v4, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "f"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v4, v3, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_alpha(Ljava/util/List;I)V

    .line 588
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    const v3, 0x7f020004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_ratio(Ljava/util/List;I)V

    .line 589
    new-instance v3, Ljava/util/ArrayList;

    sget-object v0, Lbl/abd;->speeds:[F

    array-length v0, v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 590
    sget-object v4, Lbl/abd;->speeds:[F

    array-length v5, v4

    move v0, v1

    :goto_194
    if-ge v0, v5, :cond_1b5

    aget v6, v4, v0

    .line 591
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    add-int/lit8 v0, v0, 0x1

    goto :goto_194

    .line 593
    :cond_1b5
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lbl/abd;->get_speed_id(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_speed(Ljava/util/List;I)V

    .line 594
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    const v3, 0x7f020005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lbl/abd;->get_mode_id(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_mode(Ljava/util/List;I)V

    .line 596
    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v0

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    .line 597
    iget-object v3, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v3, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->setResolveParams(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V

    .line 598
    iget-object v3, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->subtitle_info:Lorg/json/JSONObject;

    invoke-virtual {v3, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_subtitle(Lorg/json/JSONObject;)V

    .line 600
    new-instance v3, Ljava/util/ArrayList;

    sget-object v0, Lbl/abd;->a:[F

    array-length v0, v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 601
    sget-object v4, Lbl/abd;->a:[F

    array-length v5, v4

    move v0, v1

    :goto_1fe
    if-ge v0, v5, :cond_20c

    aget v6, v4, v0

    .line 602
    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    add-int/lit8 v0, v0, 0x1

    goto :goto_1fe

    .line 604
    :cond_20c
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lbl/abd;->get_subtitle_size(Landroid/content/Context;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_subtitle_size(Ljava/util/List;I)V

    .line 607
    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v0

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->view_points:Lorg/json/JSONArray;

    .line 608
    iget-object v3, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v3, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_chapter(Lorg/json/JSONArray;)V

    .line 611
    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->is_exo_player_selected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 612
    const v0, 0x7f020007

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 613
    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lbl/abd;->get_audio_balance_level(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 615
    const-string v3, "standard"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_261

    .line 616
    const/4 v1, 0x1

    .line 620
    :cond_256
    :goto_256
    iget-object v2, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_audio_balance(Ljava/util/List;I)V

    goto/16 :goto_45

    .line 617
    :cond_261
    const-string v3, "high_dynamic"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_256

    .line 618
    const/4 v1, 0x2

    goto :goto_256

    .line 540
    nop

    :array_26c
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x800
        0x1000
    .end array-data
.end method

.method private T()I
    .locals 7

    .prologue
    const/4 v2, -0x1

    .line 652
    invoke-virtual {p0}, Lbl/xw;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v0

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    .line 653
    if-eqz v0, :cond_f

    iget-object v1, v0, Lcom/bilibili/lib/media/resource/MediaResource;->a:Lcom/bilibili/lib/media/resource/VodIndex;

    if-nez v1, :cond_11

    :cond_f
    move v1, v2

    .line 666
    :cond_10
    :goto_10
    return v1

    .line 656
    :cond_11
    iget-object v1, v0, Lcom/bilibili/lib/media/resource/MediaResource;->a:Lcom/bilibili/lib/media/resource/VodIndex;

    iget-object v3, v1, Lcom/bilibili/lib/media/resource/VodIndex;->a:Ljava/util/ArrayList;

    .line 657
    invoke-virtual {v0}, Lcom/bilibili/lib/media/resource/MediaResource;->d()Lcom/bilibili/lib/media/resource/PlayIndex;

    move-result-object v4

    .line 658
    if-eqz v3, :cond_23

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_23

    if-nez v4, :cond_25

    :cond_23
    move v1, v2

    .line 659
    goto :goto_10

    .line 661
    :cond_25
    const/4 v0, 0x0

    move v1, v0

    :goto_27
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_49

    .line 662
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v5, v4, Lcom/bilibili/lib/media/resource/PlayIndex;->b:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lbl/adl;->a(Ljava/lang/String;)I

    move-result v5

    sget-object v6, Lbl/adl;->a:Lbl/adl;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/lib/media/resource/PlayIndex;

    iget-object v0, v0, Lcom/bilibili/lib/media/resource/PlayIndex;->b:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lbl/adl;->a(Ljava/lang/String;)I

    move-result v0

    if-eq v5, v0, :cond_10

    .line 661
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_27

    :cond_49
    move v1, v2

    .line 666
    goto :goto_10
.end method

.method static synthetic access$000(Lbl/xw;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lbl/xw;->getEffectiveSkips(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lbl/xw;)Lbl/xj;
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lbl/xw;->getSkipHelper()Lbl/xj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lbl/xw;)Lcom/bilibili/tv/ebook/model/Book;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    return-object v0
.end method

.method static synthetic access$1100(Lbl/xw;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1102(Lbl/xw;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$1200(Lbl/xw;Lcom/bilibili/tv/ebook/model/Book;I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lbl/xw;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;I)V

    return-void
.end method

.method static synthetic access$1300(Lbl/xw;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lbl/xw;->hideChapterList()V

    return-void
.end method

.method static synthetic access$1400(Lbl/xw;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lbl/xw;->currentChapterIndex:I

    return v0
.end method

.method static synthetic access$200(Lbl/xw;Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lbl/xw;->loadFileList(Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$300(Lbl/xw;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$400(Lbl/xw;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lbl/xw;->loadingProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$402(Lbl/xw;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lbl/xw;->loadingProgressBar:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic access$500(Lbl/xw;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lbl/xw;->loadingTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$502(Lbl/xw;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lbl/xw;->loadingTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$600(Lbl/xw;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lbl/xw;->hideLoadingIndicator()V

    return-void
.end method

.method static synthetic access$700(Lbl/xw;Lcom/bilibili/tv/ebook/model/Book;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lbl/xw;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;)V

    return-void
.end method

.method static synthetic access$800(Lbl/xw;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lbl/xw;->createChapterListView()V

    return-void
.end method

.method static synthetic access$900(Lbl/xw;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private closeEbookPanel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1701
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    .line 1702
    if-nez v0, :cond_10

    .line 1703
    const-string v0, "EbookReader"

    const-string v1, "Activity is null, cannot close ebook panel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    :goto_f
    return-void

    .line 1707
    :cond_10
    const-string v1, "EbookReader"

    const-string v2, "\u5f00\u59cb\u5173\u95ed\u7535\u5b50\u4e66\u9762\u677f"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    iget-object v1, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_29

    .line 1711
    iget-object v1, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1712
    const-string v1, "EbookReader"

    const-string v2, "\u7070\u8272\u80cc\u666f\u9762\u677f\u5df2\u9690\u85cf"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    :cond_29
    invoke-direct {p0, v0}, Lbl/xw;->restoreVideoView(Landroid/app/Activity;)V

    .line 1719
    iput-boolean v3, p0, Lbl/xw;->isEbookPanelShown:Z

    .line 1720
    iput-boolean v3, p0, Lbl/xw;->isChapterListShown:Z

    .line 1721
    iput-boolean v3, p0, Lbl/xw;->isFileChooserShown:Z

    .line 1722
    iput-boolean v3, p0, Lbl/xw;->isLoadingEbook:Z

    .line 1723
    iput-object v4, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    .line 1724
    iput v3, p0, Lbl/xw;->currentChapterIndex:I

    .line 1725
    iput-object v4, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    .line 1726
    iput-object v4, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    .line 1727
    iput-object v4, p0, Lbl/xw;->loadingProgressBar:Landroid/widget/ProgressBar;

    .line 1728
    iput-object v4, p0, Lbl/xw;->loadingTextView:Landroid/widget/TextView;

    .line 1729
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbl/xw;->lastBackPressTime:J

    .line 1731
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u9762\u677f\u5df2\u5173\u95ed\uff0c\u6240\u6709\u72b6\u6001\u5df2\u6e05\u9664"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method private createChapterListView()V
    .locals 2

    .prologue
    .line 1353
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lbl/xw$15;

    invoke-direct {v1, p0}, Lbl/xw$15;-><init>(Lbl/xw;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1497
    return-void
.end method

.method private displayBookContent(Lcom/bilibili/tv/ebook/model/Book;)V
    .locals 1

    .prologue
    .line 1197
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbl/xw;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;I)V

    .line 1198
    return-void
.end method

.method private displayBookContent(Lcom/bilibili/tv/ebook/model/Book;I)V
    .locals 1

    .prologue
    .line 1204
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lbl/xw;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;IZ)V

    .line 1205
    return-void
.end method

.method private displayBookContent(Lcom/bilibili/tv/ebook/model/Book;IZ)V
    .locals 8

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 1214
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1215
    :cond_16
    const-string v0, "EbookReader"

    const-string v1, "\u4e66\u7c4d\u65e0\u7ae0\u8282\u5185\u5bb9"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u4e66\u7c4d\u5185\u5bb9\u4e3a\u7a7a"

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1218
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1320
    :goto_2a
    return-void

    .line 1223
    :cond_2b
    iput-boolean v7, p0, Lbl/xw;->isFileChooserShown:Z

    .line 1224
    iput-boolean v7, p0, Lbl/xw;->isChapterListShown:Z

    .line 1225
    const-string v0, "EbookReader"

    const-string v2, "\u91cd\u7f6e\u72b6\u6001\u6807\u5fd7: isFileChooserShown=false, isChapterListShown=false"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    iput-object p1, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    .line 1229
    iput p2, p0, Lbl/xw;->currentChapterIndex:I

    .line 1231
    const-string v0, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f00\u59cb\u663e\u793a\u4e66\u7c4d\u5185\u5bb9: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \u7ae0\u8282: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1232
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", scrollToBottom="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1231
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_8e

    .line 1237
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1238
    const-string v0, "EbookReader"

    const-string v2, "\u5df2\u6e05\u7a7a\u7535\u5b50\u4e66\u9762\u677f"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    :cond_8e
    iput-object v1, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    .line 1245
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_d5

    .line 1246
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    .line 1247
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1251
    iget-object v2, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1254
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 1255
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1256
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 1257
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 1258
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 1259
    sget-object v2, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 1262
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 1263
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 1266
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_d5

    .line 1267
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1272
    :cond_d5
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/bilibili/tv/ebook/model/Chapter;

    .line 1273
    invoke-virtual {v6}, Lcom/bilibili/tv/ebook/model/Chapter;->getHtmlContent()Ljava/lang/String;

    move-result-object v0

    .line 1275
    if-eqz v0, :cond_ec

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_109

    .line 1276
    :cond_ec
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<html><body><h1>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/bilibili/tv/ebook/model/Chapter;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</h1><p>\u7ae0\u8282\u5185\u5bb9\u4e3a\u7a7a</p></body></html>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1280
    :cond_109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<html><head><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"><style>body { font-size: 18px; line-height: 1.6; padding: 20px; }</style></head><body>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</body></html>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1286
    if-eqz p3, :cond_12e

    .line 1287
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    new-instance v3, Lbl/xw$13;

    invoke-direct {v3, p0}, Lbl/xw$13;-><init>(Lbl/xw;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1312
    :cond_12e
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 1317
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 1319
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebView\u5df2\u663e\u793a\u7ae0\u8282: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/bilibili/tv/ebook/model/Chapter;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \u8bbe\u7f6e\u4e3a\u4e0d\u53ef\u805a\u7126\u907f\u514d\u62e6\u622a\u65b9\u5411\u952e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a
.end method

.method private g(I)V
    .locals 3

    .prologue
    .line 359
    invoke-virtual {p0}, Lbl/xw;->k()Lbl/xh;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lbl/xh;->a(ILandroid/view/KeyEvent;)Z

    .line 360
    invoke-virtual {p0}, Lbl/xw;->k()Lbl/xh;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lbl/xh;->b(ILandroid/view/KeyEvent;)Z

    .line 361
    return-void
.end method

.method private getEffectiveSkips(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)Lorg/json/JSONArray;
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2023
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 2024
    const/4 v0, 0x0

    .line 2026
    const-string v2, "SkipSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEffectiveSkips: mAvid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mListKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    iget-object v2, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8b

    .line 2029
    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "skip_list_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lbl/abd;->getSkipTime(Landroid/content/Context;Ljava/lang/String;)[J

    move-result-object v2

    .line 2030
    const-string v3, "SkipSetting"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "list skip: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v2, :cond_ee

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v6, v2, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v6, v2, v9

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 2032
    :cond_8b
    if-eqz v0, :cond_99

    aget-wide v2, v0, v8

    cmp-long v2, v2, v10

    if-nez v2, :cond_dd

    aget-wide v2, v0, v9

    cmp-long v2, v2, v10

    if-nez v2, :cond_dd

    .line 2033
    :cond_99
    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v0

    iget-wide v2, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    invoke-static {v2, v3}, Lbl/abd;->getVideoSkipKey(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lbl/abd;->getSkipTime(Landroid/content/Context;Ljava/lang/String;)[J

    move-result-object v2

    .line 2034
    const-string v3, "SkipSetting"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video skip: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v2, :cond_f1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v6, v2, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v6, v2, v9

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_d1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 2037
    :cond_dd
    if-eqz v0, :cond_eb

    aget-wide v2, v0, v8

    cmp-long v2, v2, v10

    if-nez v2, :cond_f4

    aget-wide v2, v0, v9

    cmp-long v2, v2, v10

    if-nez v2, :cond_f4

    .line 2038
    :cond_eb
    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->skips:Lorg/json/JSONArray;

    .line 2059
    :goto_ed
    return-object v0

    .line 2030
    :cond_ee
    const-string v0, "null"

    goto :goto_7f

    .line 2034
    :cond_f1
    const-string v0, "null"

    goto :goto_d1

    .line 2042
    :cond_f4
    const/4 v2, 0x0

    :try_start_f5
    aget-wide v2, v0, v2

    cmp-long v2, v2, v10

    if-lez v2, :cond_118

    .line 2043
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2044
    const-string v3, "type"

    const-string v4, "\u7247\u5934"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2045
    const-string v3, "start"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2046
    const-string v3, "end"

    const/4 v4, 0x0

    aget-wide v4, v0, v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2047
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2049
    :cond_118
    const/4 v2, 0x1

    aget-wide v2, v0, v2

    cmp-long v2, v2, v10

    if-lez v2, :cond_147

    iget v2, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDuration:I

    if-lez v2, :cond_147

    .line 2050
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2051
    iget v3, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDuration:I

    int-to-long v4, v3

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    .line 2052
    const-string v3, "type"

    const-string v6, "\u7247\u5c3e"

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2053
    const-string v3, "start"

    const/4 v6, 0x1

    aget-wide v6, v0, v6

    sub-long v6, v4, v6

    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2054
    const-string v0, "end"

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2055
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_147} :catch_149

    :cond_147
    :goto_147
    move-object v0, v1

    .line 2059
    goto :goto_ed

    .line 2057
    :catch_149
    move-exception v0

    goto :goto_147
.end method

.method private getSkipHelper()Lbl/xj;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2009
    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v0

    .line 2010
    if-nez v0, :cond_9

    move-object v0, v1

    .line 2019
    :goto_8
    return-object v0

    :cond_9
    move-object v0, p0

    .line 2013
    :goto_a
    if-eqz v0, :cond_18

    .line 2014
    instance-of v2, v0, Lbl/xj;

    if-eqz v2, :cond_13

    .line 2015
    check-cast v0, Lbl/xj;

    goto :goto_8

    .line 2017
    :cond_13
    invoke-virtual {v0}, Lbl/xh;->next()Lbl/xh;

    move-result-object v0

    goto :goto_a

    :cond_18
    move-object v0, v1

    .line 2019
    goto :goto_8
.end method

.method private hideChapterList()V
    .locals 2

    .prologue
    .line 1503
    const-string v0, "EbookReader"

    const-string v1, "\u9690\u85cf\u7ae0\u8282\u5217\u8868"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/xw;->isChapterListShown:Z

    .line 1506
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lbl/xw$16;

    invoke-direct {v1, p0}, Lbl/xw$16;-><init>(Lbl/xw;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1539
    return-void
.end method

.method private hideFileChooser()V
    .locals 2

    .prologue
    .line 834
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    .line 835
    if-eqz v0, :cond_a

    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    if-nez v0, :cond_12

    .line 836
    :cond_a
    const-string v0, "EbookReader"

    const-string v1, "\u65e0\u6cd5\u9690\u85cf\u6587\u4ef6\u9009\u62e9\u5668\uff1aactivity\u6216panel\u4e3anull"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :goto_11
    return-void

    .line 840
    :cond_12
    const-string v0, "EbookReader"

    const-string v1, "\u5f00\u59cb\u9690\u85cf\u6587\u4ef6\u9009\u62e9\u5668"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 844
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/xw;->isFileChooserShown:Z

    .line 846
    const-string v0, "EbookReader"

    const-string v1, "\u6587\u4ef6\u9009\u62e9\u5668\u5df2\u9690\u85cf\uff0c\u56de\u5230\u7535\u5b50\u4e66\u9ed8\u8ba4\u754c\u9762"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method private hideLoadingIndicator()V
    .locals 2

    .prologue
    .line 1107
    const-string v0, "EbookReader"

    const-string v1, "\u9690\u85cf\u52a0\u8f7d\u8fdb\u5ea6\u63d0\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/xw;->isLoadingEbook:Z

    .line 1110
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lbl/xw$11;

    invoke-direct {v1, p0}, Lbl/xw$11;-><init>(Lbl/xw;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1122
    return-void
.end method

.method private isEbookFile(Ljava/io/File;)Z
    .locals 2

    .prologue
    .line 1011
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1012
    const-string v1, ".mobi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, ".azw3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, ".epub"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private loadFileList(Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 856
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v1

    .line 857
    if-nez v1, :cond_8

    .line 1005
    :goto_7
    return-void

    .line 859
    :cond_8
    const-string v2, "EbookReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u52a0\u8f7d\u76ee\u5f55: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 865
    invoke-virtual {p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 866
    if-nez v2, :cond_42

    .line 867
    const-string v2, "EbookReader"

    const-string v3, "listFiles()\u8fd4\u56denull\uff0c\u53ef\u80fd\u6ca1\u6709\u6743\u9650\u6216\u76ee\u5f55\u4e0d\u5b58\u5728"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    const-string v2, "\u65e0\u6cd5\u8bbf\u95ee\u76ee\u5f55"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 872
    :cond_42
    const-string v3, "EbookReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u627e\u5230 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u4e2a\u6587\u4ef6/\u6587\u4ef6\u5939"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 876
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 878
    array-length v5, v2

    :goto_6c
    if-ge v0, v5, :cond_be

    aget-object v6, v2, v0

    .line 879
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_98

    .line 880
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 881
    const-string v7, "EbookReader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u6587\u4ef6\u5939: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    :cond_95
    :goto_95
    add-int/lit8 v0, v0, 0x1

    goto :goto_6c

    .line 882
    :cond_98
    invoke-direct {p0, v6}, Lbl/xw;->isEbookFile(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_95

    .line 883
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 884
    const-string v7, "EbookReader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u7535\u5b50\u4e66\u6587\u4ef6: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95

    .line 888
    :cond_be
    const-string v0, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8fc7\u6ee4\u540e: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " \u4e2a\u6587\u4ef6\u5939, "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " \u4e2a\u7535\u5b50\u4e66\u6587\u4ef6"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    new-instance v0, Lbl/xw$4;

    invoke-direct {v0, p0}, Lbl/xw$4;-><init>(Lbl/xw;)V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 897
    new-instance v0, Lbl/xw$5;

    invoke-direct {v0, p0}, Lbl/xw$5;-><init>(Lbl/xw;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 905
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 906
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 909
    invoke-virtual {p3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_117

    .line 910
    const-string v0, "\u2191 \u4e0a\u7ea7"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 911
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 915
    :cond_117
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_11b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_145

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 916
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\ud83d\udcc1 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 917
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11b

    .line 921
    :cond_145
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_149
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_173

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 922
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\ud83d\udcd6 "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 923
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_149

    .line 926
    :cond_173
    const-string v0, "EbookReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5171 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u4e2a\u9879\u76ee\u663e\u793a\u5728\u5217\u8868\u4e2d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    new-instance v0, Lbl/xw$6;

    const v3, 0x1090003

    invoke-direct {v0, p0, v1, v3, v5}, Lbl/xw$6;-><init>(Lbl/xw;Landroid/content/Context;ILjava/util/List;)V

    .line 959
    new-instance v1, Lbl/xw$7;

    invoke-direct {v1, p0}, Lbl/xw$7;-><init>(Lbl/xw;)V

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 976
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 979
    new-instance v0, Lbl/xw$8;

    invoke-direct {v0, p0, p1}, Lbl/xw$8;-><init>(Lbl/xw;Landroid/widget/ListView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 988
    new-instance v0, Lbl/xw$9;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lbl/xw$9;-><init>(Lbl/xw;Ljava/util/List;Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_7
.end method

.method private parseAndDisplayEbook(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1128
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f00\u59cb\u89e3\u6790\u7535\u5b50\u4e66: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbl/xw$12;

    invoke-direct {v1, p0, p1}, Lbl/xw$12;-><init>(Lbl/xw;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1190
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1191
    return-void
.end method

.method private restoreDanmakuView(Landroid/app/Activity;)V
    .locals 8

    .prologue
    const/16 v7, 0x11

    const/16 v6, 0xd

    const/4 v5, -0x1

    .line 1893
    if-nez p1, :cond_f

    .line 1894
    const-string v0, "EbookReader"

    const-string v1, "Activity is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    :goto_e
    return-void

    .line 1899
    :cond_f
    const v0, 0x7f08006e

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1900
    if-nez v1, :cond_20

    .line 1901
    const-string v0, "EbookReader"

    const-string v1, "\u5f39\u5e55\u89c6\u56fe\u672a\u627e\u5230"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 1905
    :cond_20
    const-string v0, "EbookReader"

    const-string v2, "\u5f00\u59cb\u6062\u590d\u5f39\u5e55\u89c6\u56fe\u5e03\u5c40"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1909
    if-nez v0, :cond_37

    .line 1910
    const-string v0, "EbookReader"

    const-string v1, "Danmaku view parent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 1914
    :cond_37
    const-string v2, "EbookReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5f39\u5e55\u89c6\u56fe\u7236\u5bb9\u5668: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    iget-object v2, p0, Lbl/xw;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v2, :cond_b4

    .line 1921
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_83

    .line 1922
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lbl/xw;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lbl/xw;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1926
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1928
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528FrameLayout.LayoutParams\u6062\u590d\u5f39\u5e55\u5168\u5c4f"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    :goto_75
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1946
    const-string v0, "EbookReader"

    const-string v1, "\u5f39\u5e55\u5df2\u6062\u590d\u539f\u59cb\u5e03\u5c40"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    :goto_7f
    const/4 v0, 0x0

    iput-object v0, p0, Lbl/xw;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_e

    .line 1929
    :cond_83
    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_9f

    .line 1930
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lbl/xw;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lbl/xw;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1934
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1936
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528RelativeLayout.LayoutParams\u6062\u590d\u5f39\u5e55\u5168\u5c4f"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    .line 1938
    :cond_9f
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget-object v2, p0, Lbl/xw;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lbl/xw;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1942
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528ViewGroup.LayoutParams\u6062\u590d\u5f39\u5e55\u5168\u5c4f"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    .line 1949
    :cond_b4
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_d1

    .line 1950
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1954
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1956
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528FrameLayout.LayoutParams\u6062\u590d\u5f39\u5e55\u5168\u5c4f(\u9ed8\u8ba4)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    :goto_c6
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1974
    const-string v0, "EbookReader"

    const-string v1, "\u5f39\u5e55\u5df2\u6062\u590d\u5168\u5c4f\u663e\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    .line 1957
    :cond_d1
    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_e5

    .line 1958
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1962
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1964
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528RelativeLayout.LayoutParams\u6062\u590d\u5f39\u5e55\u5168\u5c4f(\u9ed8\u8ba4)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c6

    .line 1966
    :cond_e5
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1970
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528ViewGroup.LayoutParams\u6062\u590d\u5f39\u5e55\u5168\u5c4f(\u9ed8\u8ba4)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c6
.end method

.method private restoreVideoView(Landroid/app/Activity;)V
    .locals 8

    .prologue
    const/16 v7, 0x11

    const/16 v6, 0xd

    const/4 v5, -0x1

    .line 1787
    sget v0, Lmybl/BiliFilter;->prefer_videoview:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_12

    .line 1788
    const-string v0, "EbookReader"

    const-string v1, "\u5f53\u524d\u672a\u4f7f\u7528TextureView\u6a21\u5f0f,\u65e0\u9700\u6062\u590d"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    :goto_11
    return-void

    .line 1793
    :cond_12
    invoke-virtual {p0}, Lbl/xw;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    .line 1794
    if-nez v0, :cond_20

    .line 1795
    const-string v0, "EbookReader"

    const-string v1, "\u64ad\u653e\u5668\u4e0a\u4e0b\u6587\u4e3a\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 1800
    :cond_20
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->getIVideoView()Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    move-result-object v0

    .line 1801
    if-nez v0, :cond_2e

    .line 1802
    const-string v0, "EbookReader"

    const-string v1, "\u89c6\u9891\u89c6\u56fe\u63a5\u53e3\u4e3a\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 1806
    :cond_2e
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getView()Landroid/view/View;

    move-result-object v1

    .line 1807
    if-nez v1, :cond_3c

    .line 1808
    const-string v0, "EbookReader"

    const-string v1, "\u89c6\u9891\u89c6\u56fe\u4e3a\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 1813
    :cond_3c
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1814
    if-nez v0, :cond_4c

    .line 1815
    const-string v0, "EbookReader"

    const-string v1, "Video view parent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 1819
    :cond_4c
    const-string v2, "EbookReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u89c6\u9891\u89c6\u56fe\u7236\u5bb9\u5668: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    iget-object v2, p0, Lbl/xw;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v2, :cond_cd

    .line 1826
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_9c

    .line 1827
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lbl/xw;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lbl/xw;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1831
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1833
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528FrameLayout.LayoutParams\u6062\u590d\u5168\u5c4f"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    :goto_8a
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1851
    const-string v0, "EbookReader"

    const-string v1, "\u89c6\u9891\u5df2\u6062\u590d\u539f\u59cb\u5e03\u5c40"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    :goto_94
    const/4 v0, 0x0

    iput-object v0, p0, Lbl/xw;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    .line 1886
    invoke-direct {p0, p1}, Lbl/xw;->restoreDanmakuView(Landroid/app/Activity;)V

    goto/16 :goto_11

    .line 1834
    :cond_9c
    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_b8

    .line 1835
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lbl/xw;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lbl/xw;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1839
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1841
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528RelativeLayout.LayoutParams\u6062\u590d\u5168\u5c4f"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a

    .line 1843
    :cond_b8
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget-object v2, p0, Lbl/xw;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lbl/xw;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1847
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528ViewGroup.LayoutParams\u6062\u590d\u5168\u5c4f"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a

    .line 1854
    :cond_cd
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_ea

    .line 1855
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1859
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1861
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528FrameLayout.LayoutParams\u6062\u590d\u5168\u5c4f(\u9ed8\u8ba4)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    :goto_df
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1879
    const-string v0, "EbookReader"

    const-string v1, "\u89c6\u9891\u5df2\u6062\u590d\u5168\u5c4f\u663e\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_94

    .line 1862
    :cond_ea
    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_fe

    .line 1863
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1867
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1869
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528RelativeLayout.LayoutParams\u6062\u590d\u5168\u5c4f(\u9ed8\u8ba4)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_df

    .line 1871
    :cond_fe
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1875
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528ViewGroup.LayoutParams\u6062\u590d\u5168\u5c4f(\u9ed8\u8ba4)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_df
.end method

.method private showEbookPanel()V
    .locals 6

    .prologue
    .line 1548
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    .line 1549
    if-nez v0, :cond_e

    .line 1550
    const-string v0, "EbookReader"

    const-string v1, "Activity is null, cannot show ebook panel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    :goto_d
    return-void

    .line 1554
    :cond_e
    const-string v1, "EbookReader"

    const-string v2, "\u5f00\u59cb\u663e\u793a\u7535\u5b50\u4e66\u9762\u677f"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1558
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1559
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1560
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1562
    const-string v3, "EbookReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5c4f\u5e55\u5c3a\u5bf8: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    invoke-direct {p0, v0, v2, v1}, Lbl/xw;->shrinkVideoView(Landroid/app/Activity;II)V

    .line 1568
    invoke-direct {p0, v0, v2, v1}, Lbl/xw;->shrinkDanmakuView(Landroid/app/Activity;II)V

    .line 1571
    invoke-direct {p0, v0, v2, v1}, Lbl/xw;->showGrayBackgroundPanel(Landroid/app/Activity;II)V

    .line 1573
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xw;->isEbookPanelShown:Z

    .line 1574
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u9762\u677f\u5df2\u663e\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method private showFileChooserInPanel()V
    .locals 9

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/16 v4, 0x14

    const/4 v5, 0x1

    .line 732
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v1

    .line 733
    if-nez v1, :cond_15

    .line 734
    const-string v0, "EbookReader"

    const-string v1, "Activity is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    :goto_14
    return-void

    .line 738
    :cond_15
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    if-nez v0, :cond_21

    .line 739
    const-string v0, "EbookReader"

    const-string v1, "ebookPanel is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 743
    :cond_21
    const-string v0, "EbookReader"

    const-string v2, "\u5728\u7535\u5b50\u4e66\u9762\u677f\u4e2d\u663e\u793a\u6587\u4ef6\u9009\u62e9\u5668"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    const-string v2, "EbookReader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ebookPanel\u53ef\u89c1\u6027: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_92

    const-string v0, "\u5df2\u663e\u793a"

    :goto_3f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    const-string v0, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ebookPanel\u5b50\u89c6\u56fe\u6570: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_95

    .line 749
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v1, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_95

    .line 751
    const-string v0, "EbookReader"

    const-string v2, "\u6ca1\u6709\u5b58\u50a8\u6743\u9650\uff0c\u8bf7\u6c42\u6743\u9650"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    new-array v0, v5, [Ljava/lang/String;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v7

    const/16 v2, 0x3e9

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 756
    const-string v0, "\u8bf7\u6388\u4e88\u5b58\u50a8\u6743\u9650\u540e\u518d\u8bd5"

    invoke-static {v1, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 758
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_14

    .line 744
    :cond_92
    const-string v0, "\u672a\u663e\u793a"

    goto :goto_3f

    .line 764
    :cond_95
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_a9

    .line 765
    const-string v0, "EbookReader"

    const-string v2, "\u7535\u5b50\u4e66\u9762\u677f\u672a\u663e\u793a\uff0c\u8bbe\u7f6e\u4e3aVISIBLE"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 770
    :cond_a9
    const-string v0, "EbookReader"

    const-string v2, "\u6e05\u7a7a\u7535\u5b50\u4e66\u9762\u677f\u4e2d\u7684\u5185\u5bb9"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 774
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 775
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 776
    const-string v2, "#333333"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 777
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 783
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 784
    const-string v3, "\u9009\u62e9\u7535\u5b50\u4e66\u6587\u4ef6"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 785
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 786
    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 787
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 788
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 789
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 792
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 793
    const v3, -0x333334

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 794
    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 795
    invoke-virtual {v2, v4, v8, v4, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 796
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 799
    new-instance v3, Landroid/widget/ListView;

    invoke-direct {v3, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 800
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 804
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 805
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v4, -0xbbbbbc

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 806
    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 807
    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 808
    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 809
    const/high16 v1, 0x20000

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    .line 810
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 812
    const-string v1, "EbookReader"

    const-string v4, "\u6587\u4ef6\u9009\u62e9\u5668\u5e03\u5c40\u521b\u5efa\u5b8c\u6210\uff0c\u51c6\u5907\u6dfb\u52a0\u5230\u7535\u5b50\u4e66\u9762\u677f"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    iget-object v1, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 814
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6587\u4ef6\u9009\u62e9\u5668\u5e03\u5c40\u5df2\u6dfb\u52a0\u5230\u7535\u5b50\u4e66\u9762\u677f\uff0c\u5f53\u524d\u5b50\u89c6\u56fe\u6570: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iput-boolean v5, p0, Lbl/xw;->isFileChooserShown:Z

    .line 818
    const-string v0, "EbookReader"

    const-string v1, "\u6587\u4ef6\u9009\u62e9\u5668\u5df2\u663e\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v4, "Download"

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 822
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_172

    .line 823
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 827
    :cond_172
    invoke-direct {p0, v3, v2, v0}, Lbl/xw;->loadFileList(Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V

    goto/16 :goto_14
.end method

.method private showGrayBackgroundPanel(Landroid/app/Activity;II)V
    .locals 4

    .prologue
    .line 1670
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1671
    if-nez v0, :cond_15

    .line 1672
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1676
    :cond_15
    iget-object v1, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    if-nez v1, :cond_43

    .line 1677
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    .line 1678
    iget-object v1, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    const-string v2, "#333333"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1681
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    div-int/lit8 v2, p2, 0x3

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1685
    const/4 v2, 0x5

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1688
    iget-object v2, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1690
    const-string v0, "EbookReader"

    const-string v1, "\u7070\u8272\u80cc\u666f\u9762\u677f\u5df2\u521b\u5efa\u5e76\u6dfb\u52a0\u5230\u5e03\u5c40"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    :goto_42
    return-void

    .line 1692
    :cond_43
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1693
    const-string v0, "EbookReader"

    const-string v1, "\u7070\u8272\u80cc\u666f\u9762\u677f\u5df2\u663e\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42
.end method

.method private showLoadingIndicator()V
    .locals 2

    .prologue
    .line 1046
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xw;->isLoadingEbook:Z

    .line 1047
    const-string v0, "EbookReader"

    const-string v1, "\u663e\u793a\u52a0\u8f7d\u8fdb\u5ea6\u63d0\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lbl/xw$10;

    invoke-direct {v1, p0}, Lbl/xw$10;-><init>(Lbl/xw;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1101
    return-void
.end method

.method private shrinkDanmakuView(Landroid/app/Activity;II)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 1739
    const v0, 0x7f08006e

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1740
    if-nez v1, :cond_12

    .line 1741
    const-string v0, "EbookReader"

    const-string v1, "\u5f39\u5e55\u89c6\u56fe\u672a\u627e\u5230"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    :goto_11
    return-void

    .line 1745
    :cond_12
    const-string v0, "EbookReader"

    const-string v2, "\u5f00\u59cb\u7f29\u5c0f\u5f39\u5e55\u89c6\u56fe"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1749
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lbl/xw;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    .line 1750
    const-string v2, "EbookReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u539f\u59cb\u5f39\u5e55\u5e03\u5c40\u53c2\u6570\u5df2\u4fdd\u5b58: width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1754
    if-nez v0, :cond_60

    .line 1755
    const-string v0, "EbookReader"

    const-string v1, "Danmaku view parent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 1759
    :cond_60
    const-string v2, "EbookReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5f39\u5e55\u89c6\u56fe\u7236\u5bb9\u5668: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    mul-int/lit8 v2, p2, 0x2

    div-int/lit8 v2, v2, 0x3

    .line 1766
    instance-of v3, v0, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_bd

    .line 1767
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1768
    const/4 v3, 0x3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1778
    :goto_90
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1779
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f39\u5e55\u5df2\u7f29\u5c0f: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \u5de6\u5bf9\u9f50"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1770
    :cond_bd
    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_cc

    .line 1771
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1772
    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_90

    .line 1775
    :cond_cc
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_90
.end method

.method private shrinkVideoView(Landroid/app/Activity;II)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, -0x1

    .line 1582
    sget v0, Lmybl/BiliFilter;->prefer_videoview:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2b

    .line 1583
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524d\u672a\u4f7f\u7528TextureView\u6a21\u5f0f, prefer_videoview="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lmybl/BiliFilter;->prefer_videoview:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    const-string v0, "\u7535\u5b50\u4e66\u529f\u80fd\u9700\u8981TextureView\u6a21\u5f0f\n\u8bf7\u5148\u5728\u4e2a\u6027\u5316\u8bbe\u7f6e\u4e2d\u5207\u6362"

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1586
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1663
    :goto_2a
    return-void

    .line 1591
    :cond_2b
    invoke-virtual {p0}, Lbl/xw;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    .line 1592
    if-nez v0, :cond_39

    .line 1593
    const-string v0, "EbookReader"

    const-string v1, "\u64ad\u653e\u5668\u4e0a\u4e0b\u6587\u4e3a\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 1598
    :cond_39
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->getIVideoView()Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    move-result-object v0

    .line 1599
    if-nez v0, :cond_47

    .line 1600
    const-string v0, "EbookReader"

    const-string v1, "\u89c6\u9891\u89c6\u56fe\u63a5\u53e3\u4e3a\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 1604
    :cond_47
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getView()Landroid/view/View;

    move-result-object v1

    .line 1605
    if-nez v1, :cond_55

    .line 1606
    const-string v0, "EbookReader"

    const-string v1, "\u89c6\u9891\u89c6\u56fe\u4e3a\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 1611
    :cond_55
    instance-of v0, v1, Landroid/view/TextureView;

    if-nez v0, :cond_a2

    .line 1612
    const-string v0, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u89c6\u9891\u89c6\u56fe\u4e0d\u662fTextureView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524d\u4f7f\u7528\u7684\u662f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1614
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\u8bf7\u5207\u6362\u5230TextureView\u6a21\u5f0f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1613
    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1615
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2a

    .line 1619
    :cond_a2
    const-string v0, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u627e\u5230\u89c6\u9891\u89c6\u56fe: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1623
    if-nez v0, :cond_d3

    .line 1624
    const-string v0, "EbookReader"

    const-string v1, "\u89c6\u9891\u89c6\u56fe\u7684\u7236\u5bb9\u5668\u4e3a\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    .line 1627
    :cond_d3
    const-string v2, "EbookReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u89c6\u9891\u89c6\u56fe\u7236\u5bb9\u5668: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1631
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v3, v4, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lbl/xw;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    .line 1632
    const-string v2, "EbookReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u539f\u59cb\u89c6\u9891\u5e03\u5c40\u53c2\u6570\u5df2\u4fdd\u5b58: width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lbl/xw;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lbl/xw;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    mul-int/lit8 v2, p2, 0x2

    div-int/lit8 v2, v2, 0x3

    .line 1638
    instance-of v3, v0, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_169

    .line 1639
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1643
    const/4 v3, 0x3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1660
    :goto_13c
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1662
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u89c6\u9891\u5df2\u7f29\u5c0f: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \u5de6\u5bf9\u9f50"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    .line 1645
    :cond_169
    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_178

    .line 1646
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1650
    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_13c

    .line 1654
    :cond_178
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_13c
.end method


# virtual methods
.method public P()V
    .locals 1

    .prologue
    const/16 v0, 0x17

    .line 354
    invoke-direct {p0, v0}, Lbl/xw;->g(I)V

    .line 355
    invoke-direct {p0, v0}, Lbl/xw;->g(I)V

    .line 356
    return-void
.end method

.method public Q()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 490
    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v1

    .line 491
    if-eqz v1, :cond_13

    iget-object v1, v1, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    if-eqz v1, :cond_13

    iget-object v2, v1, Lcom/bilibili/lib/media/resource/MediaResource;->a:Lcom/bilibili/lib/media/resource/VodIndex;

    if-nez v2, :cond_14

    .line 509
    :cond_13
    :goto_13
    return-void

    .line 494
    :cond_14
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 495
    iget-object v2, v1, Lcom/bilibili/lib/media/resource/MediaResource;->a:Lcom/bilibili/lib/media/resource/VodIndex;

    iget-object v4, v2, Lcom/bilibili/lib/media/resource/VodIndex;->a:Ljava/util/ArrayList;

    .line 496
    invoke-virtual {v1}, Lcom/bilibili/lib/media/resource/MediaResource;->d()Lcom/bilibili/lib/media/resource/PlayIndex;

    move-result-object v5

    .line 497
    if-eqz v4, :cond_13

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_13

    if-eqz v5, :cond_13

    move v1, v0

    move v2, v0

    .line 501
    :goto_2d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_53

    .line 502
    iget-object v6, v5, Lcom/bilibili/lib/media/resource/PlayIndex;->c:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/lib/media/resource/PlayIndex;

    iget-object v0, v0, Lcom/bilibili/lib/media/resource/PlayIndex;->c:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    move v2, v1

    .line 505
    :cond_44
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/lib/media/resource/PlayIndex;

    iget-object v0, v0, Lcom/bilibili/lib/media/resource/PlayIndex;->c:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2d

    .line 507
    :cond_53
    iput-object v3, p0, Lbl/xw;->d:Ljava/util/List;

    .line 508
    iput v2, p0, Lbl/xw;->e:I

    goto :goto_13
.end method

.method public a(Landroid/os/Message;)Ljava/lang/Boolean;
    .locals 6

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x0

    .line 104
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_25

    .line 105
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_28

    move v0, v1

    .line 106
    :goto_11
    iget-object v2, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    if-eqz v2, :cond_25

    .line 107
    iget-object v2, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(IIJ)V

    .line 108
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 109
    invoke-virtual {p0, v1}, Lbl/xw;->d(Z)V

    .line 113
    :cond_25
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 105
    :cond_28
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    check-cast p1, Landroid/os/Message;

    invoke-virtual {p0, p1}, Lbl/xw;->a(Landroid/os/Message;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public a(F)V
    .locals 4

    .prologue
    .line 402
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->DANMAKU_SIZE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lbl/xw;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 403
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lbl/abd;->a(Landroid/content/Context;F)V

    .line 404
    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 130
    invoke-super {p0, p1, p2, p3}, Lbl/xh;->a(IILandroid/content/Intent;)V

    .line 131
    return-void
.end method

.method public a(Landroid/app/Activity;Lbl/xf;)V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0, p1, p2}, Lbl/xh;->a(Landroid/app/Activity;Lbl/xf;)V

    .line 99
    const/4 v0, 0x3

    invoke-virtual {p2, v0, p0}, Lbl/xf;->a(ILbl/bbb;)V

    .line 100
    return-void
.end method

.method public adjust_screen(I)V
    .locals 4

    .prologue
    .line 78
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SCREEN_ADJUST:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lbl/xw;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public b(F)V
    .locals 4

    .prologue
    .line 408
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->DANMAKU_ALPHA:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lbl/xw;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 409
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lbl/abd;->b(Landroid/content/Context;F)V

    .line 410
    return-void
.end method

.method public varargs b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 119
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->QUALITY_SWITCH_SUCCESS:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    if-ne p1, v0, :cond_20

    invoke-direct {p0}, Lbl/xw;->T()I

    move-result v0

    if-lez v0, :cond_20

    iget-object v1, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    if-eqz v1, :cond_20

    .line 120
    iget-object v1, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    const/4 v2, 0x2

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v5}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(IIJ)V

    .line 121
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbl/xw;->d(Z)V

    .line 125
    :cond_20
    invoke-super {p0, p1, p2}, Lbl/xh;->b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method public c(Z)V
    .locals 3

    .prologue
    .line 365
    iget-object v0, p0, Lbl/xw;->a:Lbl/xf;

    const/4 v1, 0x5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbl/xf;->a(ILjava/lang/Object;)V

    .line 366
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lbl/abd;->c(Landroid/content/Context;Z)V

    .line 367
    return-void
.end method

.method public d(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 449
    invoke-virtual {p0}, Lbl/xw;->v()V

    .line 452
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    if-nez v0, :cond_61

    .line 453
    const v0, 0x7f0800ef

    invoke-virtual {p0, v0}, Lbl/xw;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    iput-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    .line 454
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->setListener(Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;)V

    .line 455
    invoke-direct {p0}, Lbl/xw;->S()V

    .line 456
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 472
    :cond_26
    :goto_26
    if-eqz p1, :cond_3d

    iget-boolean v0, p0, Lbl/xw;->isEbookPanelShown:Z

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3d

    .line 473
    const-string v0, "EbookReader"

    const-string v1, "\u83dc\u5355\u6253\u5f00,\u4e34\u65f6\u9690\u85cf\u7535\u5b50\u4e66\u9762\u677f"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 477
    :cond_3d
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->isShown()Z

    move-result v0

    if-eq v0, p1, :cond_4a

    .line 478
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 482
    :cond_4a
    if-nez p1, :cond_60

    iget-boolean v0, p0, Lbl/xw;->isEbookPanelShown:Z

    if-eqz v0, :cond_60

    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_60

    .line 483
    const-string v0, "EbookReader"

    const-string v1, "\u83dc\u5355\u5173\u95ed,\u6062\u590d\u663e\u793a\u7535\u5b50\u4e66\u9762\u677f"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 486
    :cond_60
    return-void

    .line 459
    :cond_61
    invoke-direct {p0}, Lbl/xw;->S()V

    .line 461
    if-eqz p1, :cond_26

    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 462
    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v0

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->view_points:Lorg/json/JSONArray;

    .line 463
    iget-object v1, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_chapter(Lorg/json/JSONArray;)V

    .line 464
    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v0

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->subtitle_info:Lorg/json/JSONObject;

    .line 465
    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v1

    iget-object v1, v1, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v1}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v1

    .line 466
    iget-object v2, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v2, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->setResolveParams(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V

    .line 467
    iget-object v1, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_subtitle(Lorg/json/JSONObject;)V

    goto :goto_26
.end method

.method public e(I)V
    .locals 4

    .prologue
    .line 377
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_QUALITY:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lbl/xw;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 378
    return-void
.end method

.method protected e(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v0

    return v0
.end method

.method public f(I)V
    .locals 3

    .prologue
    .line 383
    packed-switch p1, :pswitch_data_16

    .line 394
    sget-object v0, Ltv/danmaku/videoplayer/core/videoview/AspectRatio;->RATIO_ADJUST_CONTENT:Ltv/danmaku/videoplayer/core/videoview/AspectRatio;

    .line 397
    :goto_5
    iget-object v1, p0, Lbl/xw;->a:Lbl/xf;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lbl/xf;->a(ILjava/lang/Object;)V

    .line 398
    return-void

    .line 385
    :pswitch_c
    sget-object v0, Ltv/danmaku/videoplayer/core/videoview/AspectRatio;->RATIO_16_9_INSIDE:Ltv/danmaku/videoplayer/core/videoview/AspectRatio;

    goto :goto_5

    .line 388
    :pswitch_f
    sget-object v0, Ltv/danmaku/videoplayer/core/videoview/AspectRatio;->RATIO_4_3_INSIDE:Ltv/danmaku/videoplayer/core/videoview/AspectRatio;

    goto :goto_5

    .line 391
    :pswitch_12
    sget-object v0, Ltv/danmaku/videoplayer/core/videoview/AspectRatio;->RATIO_ADJUST_SCREEN:Ltv/danmaku/videoplayer/core/videoview/AspectRatio;

    goto :goto_5

    .line 383
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_c
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method

.method public f(ILandroid/view/KeyEvent;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 135
    const-string v1, "EbookReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xw.f: \u6536\u5230\u6309\u952e "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isEbookPanelShown="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lbl/xw;->isEbookPanelShown:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", R()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {p0}, Lbl/xw;->isEbookReadingContent()Z

    move-result v1

    if-eqz v1, :cond_1bb

    .line 139
    const-string v1, "EbookReader"

    const-string v3, "xw.f: \u5728\u7535\u5b50\u4e66\u9605\u8bfb\u5185\u5bb9\u9875\u9762"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v1, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_83

    .line 143
    const-string v1, "EbookReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xw.f: WebView height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", scrollY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    .line 144
    invoke-virtual {v4}, Landroid/webkit/WebView;->getScrollY()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", contentHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    .line 145
    invoke-virtual {v4}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 143
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_83
    const/16 v1, 0x13

    if-ne p1, v1, :cond_96

    .line 150
    const-string v1, "EbookReader"

    const-string v3, "xw.f: \u7535\u5b50\u4e66\u9605\u8bfb\u9875\u9762\uff1a\u5411\u4e0a\u6eda\u52a8"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v1, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    const/16 v3, -0xc8

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->scrollBy(II)V

    .line 234
    :goto_95
    return v0

    .line 155
    :cond_96
    const/16 v1, 0x14

    if-ne p1, v1, :cond_a9

    .line 156
    const-string v1, "EbookReader"

    const-string v3, "xw.f: \u7535\u5b50\u4e66\u9605\u8bfb\u9875\u9762\uff1a\u5411\u4e0b\u6eda\u52a8"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v1, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    const/16 v3, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->scrollBy(II)V

    goto :goto_95

    .line 162
    :cond_a9
    const/16 v1, 0x15

    if-ne p1, v1, :cond_116

    .line 163
    iget-object v1, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    .line 164
    iget-object v3, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScrollY()I

    move-result v3

    .line 165
    const-string v4, "EbookReader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "xw.f: \u7535\u5b50\u4e66\u9605\u8bfb\u9875\u9762\uff1a\u5411\u4e0a\u7ffb\u9875, height="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", scrollY="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    if-nez v3, :cond_fe

    .line 170
    iget-object v1, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    if-eqz v1, :cond_f6

    iget v1, p0, Lbl/xw;->currentChapterIndex:I

    if-lez v1, :cond_f6

    .line 171
    const-string v1, "EbookReader"

    const-string v2, "xw.f: \u5230\u8fbe\u7ae0\u8282\u9876\u90e8\uff0c\u8df3\u8f6c\u5230\u4e0a\u4e00\u7ae0\u8282\u7684\u5e95\u90e8"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v1, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    iget v2, p0, Lbl/xw;->currentChapterIndex:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v1, v2, v0}, Lbl/xw;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;IZ)V

    goto :goto_95

    .line 176
    :cond_f6
    const-string v1, "EbookReader"

    const-string v2, "xw.f: \u5df2\u7ecf\u5728\u7b2c\u4e00\u7ae0\uff0c\u65e0\u6cd5\u5411\u524d\u7ffb\u9875"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95

    .line 182
    :cond_fe
    if-lez v1, :cond_107

    .line 183
    iget-object v3, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    neg-int v1, v1

    invoke-virtual {v3, v2, v1}, Landroid/webkit/WebView;->scrollBy(II)V

    goto :goto_95

    .line 186
    :cond_107
    const-string v1, "EbookReader"

    const-string v3, "xw.f: WebView height\u4e3a0\uff0c\u4f7f\u7528\u9ed8\u8ba4\u503c800"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v1, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    const/16 v3, -0x320

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->scrollBy(II)V

    goto :goto_95

    .line 192
    :cond_116
    const/16 v1, 0x16

    if-ne p1, v1, :cond_1bb

    .line 193
    iget-object v1, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHeight()I

    move-result v3

    .line 194
    iget-object v1, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v1

    .line 195
    iget-object v4, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v4

    .line 196
    const-string v5, "EbookReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "xw.f: \u7535\u5b50\u4e66\u9605\u8bfb\u9875\u9762\uff1a\u5411\u4e0b\u7ffb\u9875, height="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", scrollY="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", contentHeight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 201
    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 202
    add-int/2addr v1, v3

    add-int/lit8 v4, v4, -0xa

    if-lt v1, v4, :cond_197

    move v1, v0

    .line 204
    :goto_16f
    if-eqz v1, :cond_1a2

    .line 206
    iget-object v1, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    if-eqz v1, :cond_199

    iget v1, p0, Lbl/xw;->currentChapterIndex:I

    iget-object v3, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    invoke-virtual {v3}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_199

    .line 207
    const-string v1, "EbookReader"

    const-string v3, "xw.f: \u5230\u8fbe\u7ae0\u8282\u5e95\u90e8\uff0c\u8df3\u8f6c\u5230\u4e0b\u4e00\u7ae0\u8282\u7684\u9876\u90e8"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v1, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    iget v3, p0, Lbl/xw;->currentChapterIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v1, v3, v2}, Lbl/xw;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;IZ)V

    goto/16 :goto_95

    :cond_197
    move v1, v2

    .line 202
    goto :goto_16f

    .line 212
    :cond_199
    const-string v1, "EbookReader"

    const-string v2, "xw.f: \u5df2\u7ecf\u5728\u6700\u540e\u4e00\u7ae0\uff0c\u65e0\u6cd5\u5411\u540e\u7ffb\u9875"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_95

    .line 218
    :cond_1a2
    if-lez v3, :cond_1ab

    .line 219
    iget-object v1, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->scrollBy(II)V

    goto/16 :goto_95

    .line 222
    :cond_1ab
    const-string v1, "EbookReader"

    const-string v3, "xw.f: WebView height\u4e3a0\uff0c\u4f7f\u7528\u9ed8\u8ba4\u503c800"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v1, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    const/16 v3, 0x320

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->scrollBy(II)V

    goto/16 :goto_95

    .line 229
    :cond_1bb
    const/16 v1, 0x17

    if-eq p1, v1, :cond_1c7

    const/16 v1, 0x42

    if-eq p1, v1, :cond_1c7

    const/16 v1, 0xa0

    if-ne p1, v1, :cond_1dc

    :cond_1c7
    iget-boolean v1, p0, Lbl/xw;->f:Z

    if-nez v1, :cond_1dc

    .line 230
    iput-boolean v0, p0, Lbl/xw;->f:Z

    .line 231
    iget-object v0, p0, Lbl/xw;->g:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/xw;->a(Ljava/lang/Runnable;)V

    .line 232
    iget-object v0, p0, Lbl/xw;->g:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lbl/xw;->a(Ljava/lang/Runnable;J)V

    .line 234
    :cond_1dc
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v0

    goto/16 :goto_95
.end method

.method public g(ILandroid/view/KeyEvent;)Z
    .locals 10

    .prologue
    const/16 v8, 0x14

    const/16 v7, 0x13

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 239
    const-string v0, "EbookReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xw.g: \u6536\u5230\u6309\u952e "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isEbookPanelShown="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lbl/xw;->isEbookPanelShown:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", R()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-boolean v0, p0, Lbl/xw;->isEbookPanelShown:Z

    if-eqz v0, :cond_185

    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v0

    if-nez v0, :cond_185

    .line 243
    const-string v0, "EbookReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xw.g: \u7535\u5b50\u4e66\u6a21\u5f0f\u62e6\u622a\u6309\u952e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    if-eqz v0, :cond_86

    iget-object v0, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 247
    const-string v0, "EbookReader"

    const-string v3, "xw.g: \u7ae0\u8282\u5217\u8868\u663e\u793a\u4e2d"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/16 v0, 0x17

    if-eq p1, v0, :cond_7d

    const/16 v0, 0x42

    if-eq p1, v0, :cond_7d

    const/16 v0, 0xa0

    if-eq p1, v0, :cond_7d

    if-eq p1, v7, :cond_7d

    if-ne p1, v8, :cond_86

    .line 253
    :cond_7d
    const-string v0, "EbookReader"

    const-string v1, "xw.g: \u7ae0\u8282\u5217\u8868\u663e\u793a\uff0c\u4e0d\u62e6\u622a\u65b9\u5411\u952e\u548c\u786e\u8ba4\u952e"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 348
    :cond_85
    :goto_85
    return v1

    .line 260
    :cond_86
    iget-object v0, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    if-eqz v0, :cond_92

    iget-object v0, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isShown()Z

    move-result v0

    if-nez v0, :cond_114

    :cond_92
    iget-boolean v0, p0, Lbl/xw;->isFileChooserShown:Z

    if-nez v0, :cond_114

    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_114

    move v0, v1

    .line 264
    :goto_9b
    const-string v4, "EbookReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xw.g: isReadingContent="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", chapterListView="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    if-eqz v3, :cond_116

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not null, shown="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    .line 265
    invoke-virtual {v6}, Landroid/widget/ListView;->isShown()Z

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_cf
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", isFileChooserShown="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lbl/xw;->isFileChooserShown:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", ebookWebView="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v3, :cond_119

    const-string v3, "not null"

    :goto_eb
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 264
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    if-eqz v0, :cond_11c

    .line 270
    const-string v0, "EbookReader"

    const-string v3, "xw.g: \u5728\u9605\u8bfb\u5185\u5bb9\u9875\u9762"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    if-eq p1, v7, :cond_10b

    if-eq p1, v8, :cond_10b

    const/16 v0, 0x15

    if-eq p1, v0, :cond_10b

    const/16 v0, 0x16

    if-ne p1, v0, :cond_11c

    .line 278
    :cond_10b
    const-string v0, "EbookReader"

    const-string v2, "xw.g: \u65b9\u5411\u952e\u5df2\u7531xw.f()\u5904\u7406\uff0c\u76f4\u63a5\u8fd4\u56detrue"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_85

    :cond_114
    move v0, v2

    .line 260
    goto :goto_9b

    .line 265
    :cond_116
    const-string v3, "null"

    goto :goto_cf

    :cond_119
    const-string v3, "null"

    goto :goto_eb

    .line 284
    :cond_11c
    const/16 v0, 0x52

    if-ne p1, v0, :cond_12c

    .line 285
    const-string v0, "EbookReader"

    const-string v2, "\u7535\u5b50\u4e66\u6a21\u5f0f\u4e0b\u6253\u5f00\u53f3\u4fa7\u83dc\u5355"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-virtual {p0, v1}, Lbl/xw;->d(Z)V

    goto/16 :goto_85

    .line 291
    :cond_12c
    const/4 v0, 0x4

    if-ne p1, v0, :cond_85

    .line 292
    iget-boolean v0, p0, Lbl/xw;->isChapterListShown:Z

    if-eqz v0, :cond_13f

    .line 294
    const-string v0, "EbookReader"

    const-string v2, "\u5173\u95ed\u7ae0\u8282\u5217\u8868"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-direct {p0}, Lbl/xw;->hideChapterList()V

    goto/16 :goto_85

    .line 297
    :cond_13f
    iget-boolean v0, p0, Lbl/xw;->isFileChooserShown:Z

    if-eqz v0, :cond_14f

    .line 299
    const-string v0, "EbookReader"

    const-string v2, "\u5173\u95ed\u6587\u4ef6\u9009\u62e9\u5668\uff0c\u56de\u5230\u7535\u5b50\u4e66\u9ed8\u8ba4\u754c\u9762"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-direct {p0}, Lbl/xw;->hideFileChooser()V

    goto/16 :goto_85

    .line 304
    :cond_14f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 305
    iget-wide v6, p0, Lbl/xw;->lastBackPressTime:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x7d0

    cmp-long v0, v6, v8

    if-gez v0, :cond_16d

    .line 307
    const-string v0, "EbookReader"

    const-string v2, "\u7535\u5b50\u4e66\u6a21\u5f0f\u4e0b\u5173\u95ed\u7535\u5b50\u4e66"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lbl/xw;->lastBackPressTime:J

    .line 309
    invoke-virtual {p0}, Lbl/xw;->openEbookReader()V

    goto/16 :goto_85

    .line 313
    :cond_16d
    iput-wide v4, p0, Lbl/xw;->lastBackPressTime:J

    .line 314
    const-string v0, "EbookReader"

    const-string v3, "\u7b2c\u4e00\u6b21\u6309\u8fd4\u56de\u952e\uff0c\u663e\u793a\u63d0\u793a"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "\u518d\u6309\u4e00\u6b21\u9000\u51fa\u7535\u5b50\u4e66\u6a21\u5f0f"

    .line 315
    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 319
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_85

    .line 330
    :cond_185
    sparse-switch p1, :sswitch_data_1ba

    .line 344
    iget-boolean v0, p0, Lbl/xw;->f:Z

    if-eqz v0, :cond_191

    .line 345
    iget-object v0, p0, Lbl/xw;->g:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/xw;->a(Ljava/lang/Runnable;)V

    .line 347
    :cond_191
    iput-boolean v2, p0, Lbl/xw;->f:Z

    .line 348
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v1

    goto/16 :goto_85

    .line 332
    :sswitch_199
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v0

    if-eqz v0, :cond_1a4

    .line 333
    invoke-virtual {p0, v2}, Lbl/xw;->d(Z)V

    goto/16 :goto_85

    :cond_1a4
    move v1, v2

    .line 336
    goto/16 :goto_85

    .line 338
    :sswitch_1a7
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v0

    if-nez v0, :cond_1ae

    move v2, v1

    :cond_1ae
    invoke-virtual {p0, v2}, Lbl/xw;->d(Z)V

    goto/16 :goto_85

    .line 342
    :sswitch_1b3
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v1

    goto/16 :goto_85

    .line 330
    nop

    :sswitch_data_1ba
    .sparse-switch
        0x4 -> :sswitch_199
        0x13 -> :sswitch_1b3
        0x14 -> :sswitch_1b3
        0x52 -> :sswitch_1a7
    .end sparse-switch
.end method

.method public isEbookMode()Z
    .locals 1

    .prologue
    .line 428
    iget-boolean v0, p0, Lbl/xw;->isEbookPanelShown:Z

    return v0
.end method

.method public isEbookReadingContent()Z
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isShown()Z

    move-result v0

    if-nez v0, :cond_16

    :cond_c
    iget-boolean v0, p0, Lbl/xw;->isFileChooserShown:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public isMenuShown()Z
    .locals 1

    .prologue
    .line 435
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v0

    return v0
.end method

.method public jumpToChapter(I)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 627
    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v0

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->view_points:Lorg/json/JSONArray;

    if-nez v0, :cond_19

    .line 649
    :cond_18
    :goto_18
    return-void

    .line 631
    :cond_19
    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v0

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->view_points:Lorg/json/JSONArray;

    .line 634
    if-ltz p1, :cond_18

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge p1, v3, :cond_18

    .line 638
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 639
    if-eqz v0, :cond_18

    .line 640
    const-string v3, "from"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 641
    mul-int/lit16 v3, v0, 0x3e8

    .line 642
    invoke-virtual {p0}, Lbl/xw;->x()I

    move-result v4

    .line 646
    if-le v3, v4, :cond_62

    move v0, v1

    .line 647
    :goto_44
    sget-object v5, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SEEK:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v2

    int-to-long v8, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v1

    const/4 v0, 0x2

    int-to-long v2, v3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-virtual {p0, v5, v6}, Lbl/xw;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    goto :goto_18

    :cond_62
    move v0, v2

    .line 646
    goto :goto_44
.end method

.method public onEbookFileSelected(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1019
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9009\u4e2d\u7684\u7535\u5b50\u4e66\u6587\u4ef6: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    if-eqz p1, :cond_20

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1022
    :cond_20
    const-string v0, "EbookReader"

    const-string v1, "\u6587\u4ef6\u8def\u5f84\u4e3a\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :goto_27
    return-void

    .line 1027
    :cond_28
    iget-boolean v0, p0, Lbl/xw;->isLoadingEbook:Z

    if-eqz v0, :cond_42

    .line 1028
    const-string v0, "EbookReader"

    const-string v1, "\u6b63\u5728\u52a0\u8f7d\u7535\u5b50\u4e66\uff0c\u8bf7\u7a0d\u5019..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u52a0\u8f7d\uff0c\u8bf7\u7a0d\u5019..."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1031
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_27

    .line 1036
    :cond_42
    invoke-direct {p0}, Lbl/xw;->showLoadingIndicator()V

    .line 1039
    invoke-direct {p0, p1}, Lbl/xw;->parseAndDisplayEbook(Ljava/lang/String;)V

    goto :goto_27
.end method

.method public onInfo2(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIJ)Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public openEbookFileChooser()V
    .locals 2

    .prologue
    .line 716
    const-string v0, "EbookReader"

    const-string v1, "openEbookFileChooser() called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    .line 719
    if-nez v0, :cond_15

    .line 720
    const-string v0, "EbookReader"

    const-string v1, "Activity is null, cannot open file chooser"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :goto_14
    return-void

    .line 725
    :cond_15
    invoke-direct {p0}, Lbl/xw;->showFileChooserInPanel()V

    goto :goto_14
.end method

.method public openEbookReader()V
    .locals 3

    .prologue
    .line 703
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openEbookReader() called, isEbookPanelShown="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lbl/xw;->isEbookPanelShown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-boolean v0, p0, Lbl/xw;->isEbookPanelShown:Z

    if-eqz v0, :cond_22

    .line 707
    invoke-direct {p0}, Lbl/xw;->closeEbookPanel()V

    .line 712
    :goto_21
    return-void

    .line 710
    :cond_22
    invoke-direct {p0}, Lbl/xw;->showEbookPanel()V

    goto :goto_21
.end method

.method public refresh_subtitle()V
    .locals 2

    .prologue
    .line 88
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_EPISODE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lbl/xw;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method public set_audio_balance_level(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1983
    const-string v1, "off"

    .line 1984
    sget-object v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->OFF:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    .line 1985
    packed-switch p1, :pswitch_data_62

    .line 1999
    :goto_8
    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lbl/abd;->set_audio_balance_level(Landroid/content/Context;Ljava/lang/String;)V

    .line 2001
    invoke-virtual {p0}, Lbl/xw;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 2002
    invoke-virtual {p0}, Lbl/xw;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v1

    const-string v2, "SetAudioBalanceLevel"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->act(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2005
    :cond_23
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u97f3\u9891\u5e73\u8861: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2006
    return-void

    .line 1987
    :pswitch_53
    const-string v1, "off"

    .line 1988
    sget-object v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->OFF:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    goto :goto_8

    .line 1991
    :pswitch_58
    const-string v1, "standard"

    .line 1992
    sget-object v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->STANDARD:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    goto :goto_8

    .line 1995
    :pswitch_5d
    const-string v1, "high_dynamic"

    .line 1996
    sget-object v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->HIGH_DYNAMIC:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    goto :goto_8

    .line 1985
    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_53
        :pswitch_58
        :pswitch_5d
    .end packed-switch
.end method

.method public set_danmaku_type(I)V
    .locals 3

    .prologue
    .line 371
    iget-object v1, p0, Lbl/xw;->a:Lbl/xf;

    const/4 v2, 0x5

    if-lez p1, :cond_19

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lbl/xf;->a(ILjava/lang/Object;)V

    .line 372
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lbl/abd;->set_danmaku_type(Landroid/content/Context;I)V

    .line 373
    return-void

    .line 371
    :cond_19
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public set_subtitle_size(F)V
    .locals 1

    .prologue
    .line 414
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lbl/abd;->set_subtitle_size(Landroid/content/Context;F)V

    .line 415
    invoke-virtual {p0}, Lbl/xw;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 416
    invoke-virtual {p0}, Lbl/xw;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->refreshSubtitle()V

    .line 418
    :cond_18
    return-void
.end method

.method public showChapterList()V
    .locals 4

    .prologue
    .line 1327
    iget-object v0, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_22

    .line 1328
    :cond_c
    const-string v0, "EbookReader"

    const-string v1, "\u65e0\u4e66\u7c4d\u6570\u636e\uff0c\u65e0\u6cd5\u663e\u793a\u7ae0\u8282\u5217\u8868"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u65e0\u7ae0\u8282\u4fe1\u606f"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1331
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1345
    :goto_21
    return-void

    .line 1335
    :cond_22
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u663e\u793a\u7ae0\u8282\u5217\u8868\uff0c\u603b\u6570: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    invoke-virtual {v2}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xw;->isChapterListShown:Z

    .line 1339
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lbl/xw$14;

    invoke-direct {v1, p0}, Lbl/xw$14;-><init>(Lbl/xw;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_21
.end method

.method public showSkipSettingDialog()V
    .locals 6

    .prologue
    .line 671
    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v0

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    if-nez v0, :cond_11

    .line 699
    :cond_10
    :goto_10
    return-void

    .line 674
    :cond_11
    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v0

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    .line 675
    const-string v1, "SkipSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showSkipSettingDialog: mAuthor="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAuthor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mMid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mMid:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    new-instance v1, Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lbl/xw;->x()I

    move-result v3

    int-to-long v4, v3

    invoke-direct {v1, v2, v0, v4, v5}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;-><init>(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;J)V

    .line 678
    new-instance v2, Lbl/xw$2;

    invoke-direct {v2, p0}, Lbl/xw$2;-><init>(Lbl/xw;)V

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->setOnPositionProvider(Lcom/bilibili/tv/player/widget/SkipSettingDialog$OnPositionProvider;)V

    .line 685
    new-instance v2, Lbl/xw$3;

    invoke-direct {v2, p0, v0}, Lbl/xw$3;-><init>(Lbl/xw;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->setOnSaveListener(Lcom/bilibili/tv/player/widget/SkipSettingDialog$OnSaveListener;)V

    .line 698
    invoke-virtual {v1}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->show()V

    goto :goto_10
.end method

.method public switch_speed(F)V
    .locals 4

    .prologue
    .line 83
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_SPEED:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lbl/xw;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 84
    return-void
.end method
