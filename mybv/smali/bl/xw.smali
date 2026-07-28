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
.field private bookshelfItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ebook/model/BookshelfItem;",
            ">;"
        }
    .end annotation
.end field

.field private bookshelfListView:Landroid/widget/ListView;

.field private bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

.field private c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

.field private chapterListView:Landroid/widget/ListView;

.field private chapterNavigationStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ebook/model/Chapter;",
            ">;>;"
        }
    .end annotation
.end field

.field private controlTarget:Ljava/lang/String;

.field private currentBook:Lcom/bilibili/tv/ebook/model/Book;

.field private currentBookFilePath:Ljava/lang/String;

.field private currentChapterIndex:I

.field private currentChapterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ebook/model/Chapter;",
            ">;"
        }
    .end annotation
.end field

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

.field private ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

.field private ebookPanel:Landroid/widget/FrameLayout;

.field private ebookWebView:Landroid/webkit/WebView;

.field private f:Z

.field private g:Ljava/lang/Runnable;

.field private isChapterListShown:Z

.field private isEbookPanelShown:Z

.field private isFileChooserShown:Z

.field private isLoadingEbook:Z

.field private isReadingBook:Z

.field private lastBackPressTime:J

.field private loadingProgressBar:Landroid/widget/ProgressBar;

.field private loadingTextView:Landroid/widget/TextView;

.field private originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

.field private originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

.field private parentChapterTitle:Ljava/lang/String;


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

    .line 56
    iput-boolean v3, p0, Lbl/xw;->isReadingBook:Z

    .line 59
    iput-object v2, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    .line 60
    iput v3, p0, Lbl/xw;->currentChapterIndex:I

    .line 61
    iput-object v2, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    .line 62
    iput-object v2, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    .line 63
    iput-boolean v3, p0, Lbl/xw;->isChapterListShown:Z

    .line 64
    iput-object v2, p0, Lbl/xw;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    .line 65
    iput-object v2, p0, Lbl/xw;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    .line 66
    iput-object v2, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    .line 67
    iput-object v2, p0, Lbl/xw;->bookshelfItems:Ljava/util/List;

    .line 68
    iput-object v2, p0, Lbl/xw;->currentBookFilePath:Ljava/lang/String;

    .line 71
    iput-object v2, p0, Lbl/xw;->chapterNavigationStack:Ljava/util/Stack;

    .line 72
    iput-object v2, p0, Lbl/xw;->currentChapterList:Ljava/util/List;

    .line 73
    iput-object v2, p0, Lbl/xw;->parentChapterTitle:Ljava/lang/String;

    .line 76
    const-string v0, "video"

    iput-object v0, p0, Lbl/xw;->controlTarget:Ljava/lang/String;

    .line 77
    new-instance v0, Lbl/xw$1;

    invoke-direct {v0, p0}, Lbl/xw$1;-><init>(Lbl/xw;)V

    iput-object v0, p0, Lbl/xw;->g:Ljava/lang/Runnable;

    return-void
.end method

.method private R()Z
    .locals 1

    .prologue
    .line 505
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
    const/4 v0, 0x0

    .line 600
    invoke-virtual {p0}, Lbl/xw;->Q()V

    .line 601
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 604
    iget-boolean v1, p0, Lbl/xw;->isEbookPanelShown:Z

    if-eqz v1, :cond_115

    iget-object v1, p0, Lbl/xw;->controlTarget:Ljava/lang/String;

    const-string v3, "ebook"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_115

    invoke-static {}, Lcom/bilibili/tv/FeatureConfig;->isEbookReaderEnabled()Z

    move-result v1

    if-eqz v1, :cond_115

    .line 606
    iget-boolean v1, p0, Lbl/xw;->isFileChooserShown:Z

    if-eqz v1, :cond_2c

    .line 607
    const-string v0, "EbookReader"

    const-string v1, "\u6587\u4ef6\u5217\u8868\u9875\uff0c\u4e0d\u663e\u793a\u53f3\u4fa7\u83dc\u5355"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :cond_2b
    :goto_2b
    return-void

    .line 611
    :cond_2c
    iget-boolean v1, p0, Lbl/xw;->isChapterListShown:Z

    if-eqz v1, :cond_38

    .line 612
    const-string v0, "EbookReader"

    const-string v1, "\u7ae0\u8282\u5217\u8868\u9875\uff0c\u4e0d\u663e\u793a\u53f3\u4fa7\u83dc\u5355"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 617
    :cond_38
    const-string v1, "EbookReader"

    const-string v2, "\u7535\u5b50\u4e66\u6a21\u5f0f:\u8bbe\u7f6e\u4e13\u7528\u83dc\u5355"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 622
    iget-boolean v2, p0, Lbl/xw;->isReadingBook:Z

    if-nez v2, :cond_fb

    .line 624
    const-string v2, "\u63a7\u5236\u89c6\u9891"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    const-string v2, "\u9009\u62e9\u6587\u4ef6"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    const-string v2, "\u6e05\u7a7a\u4e66\u67b6"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    const-string v2, "\u9000\u51fa\u9605\u8bfb"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    :goto_5c
    iget-object v2, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v2, v1, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->b(Ljava/util/List;I)V

    .line 637
    iget-object v1, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->setMenuIndexMap(Ljava/util/List;)V

    .line 640
    iget-boolean v1, p0, Lbl/xw;->isReadingBook:Z

    if-eqz v1, :cond_2b

    .line 641
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 642
    const-string v1, "20"

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 643
    const-string v1, "22"

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 644
    const-string v1, "24"

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    const-string v1, "26"

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 646
    const-string v1, "28"

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    const-string v1, "30"

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 648
    const-string v1, "32"

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 649
    const-string v1, "34"

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 650
    const-string v1, "36"

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 651
    const-string v1, "38"

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ebook_settings"

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 655
    const-string v2, "font_size"

    const/high16 v4, 0x41e00000    # 28.0f

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    .line 656
    const/4 v2, 0x4

    move v1, v0

    .line 657
    :goto_ba
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_35f

    .line 658
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_111

    .line 664
    :goto_d2
    const-string v0, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u521d\u59cb\u5316\u5b57\u4f53\u5927\u5c0f\u5217\u8868\uff0c\u5f53\u524d\u7d22\u5f15: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", \u5b57\u4f53\u5927\u5c0f: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v0, v3, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_size(Ljava/util/List;I)V

    goto/16 :goto_2b

    .line 630
    :cond_fb
    const-string v2, "\u63a7\u5236\u89c6\u9891"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    const-string v2, "\u7ae0\u8282\u5217\u8868"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    const-string v2, "\u5b57\u4f53\u5927\u5c0f"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    const-string v2, "\u5173\u95ed\u4e66\u7c4d"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5c

    .line 657
    :cond_111
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_ba

    .line 673
    :cond_115
    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lbl/abd;->get_player_menu_config(Landroid/content/Context;)I

    move-result v3

    .line 674
    const v1, 0x7f020002

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 675
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 676
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 678
    const/16 v1, 0xd

    new-array v7, v1, [I

    fill-array-data v7, :array_362

    .line 685
    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lbl/abd;->is_exo_player_selected(Landroid/content/Context;)Z

    move-result v8

    move v1, v0

    .line 687
    :goto_13e
    array-length v9, v4

    if-ge v1, v9, :cond_161

    array-length v9, v7

    if-ge v1, v9, :cond_161

    .line 689
    aget v9, v7, v1

    const/16 v10, 0x800

    if-ne v9, v10, :cond_14f

    if-nez v8, :cond_14f

    .line 687
    :cond_14c
    :goto_14c
    add-int/lit8 v1, v1, 0x1

    goto :goto_13e

    .line 692
    :cond_14f
    aget v9, v7, v1

    and-int/2addr v9, v3

    if-eqz v9, :cond_14c

    .line 693
    aget-object v9, v4, v1

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 694
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14c

    .line 699
    :cond_161
    invoke-static {}, Lcom/bilibili/tv/FeatureConfig;->isEbookReaderEnabled()Z

    move-result v1

    if-eqz v1, :cond_196

    .line 700
    iget-boolean v1, p0, Lbl/xw;->isEbookPanelShown:Z

    if-eqz v1, :cond_1f7

    .line 702
    const-string v1, "\u63a7\u5236\u7535\u5b50\u4e66"

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 707
    :goto_170
    array-length v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 708
    const-string v3, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u89c6\u9891\u53f3\u4fa7\u83dc\u5355\u9879\u5df2\u6dfb\u52a0: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v1, p0, Lbl/xw;->isEbookPanelShown:Z

    if-eqz v1, :cond_1fe

    const-string v1, "\u63a7\u5236\u7535\u5b50\u4e66"

    :goto_18b
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_196
    iget-object v1, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v1, v5, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->b(Ljava/util/List;I)V

    .line 712
    iget-object v1, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v1, v6}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->setMenuIndexMap(Ljava/util/List;)V

    .line 714
    iget-object v1, p0, Lbl/xw;->d:Ljava/util/List;

    if-nez v1, :cond_1b9

    .line 715
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lbl/xw;->d:Ljava/util/List;

    .line 716
    iget-object v1, p0, Lbl/xw;->d:Ljava/util/List;

    const v3, 0x7f0c00f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 717
    iput v0, p0, Lbl/xw;->e:I

    .line 719
    :cond_1b9
    iget-object v1, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    iget-object v3, p0, Lbl/xw;->d:Ljava/util/List;

    iget v4, p0, Lbl/xw;->e:I

    invoke-virtual {v1, v3, v4}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_quality(Ljava/util/List;I)V

    .line 720
    iget-object v1, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

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

    invoke-virtual {v1, v3, v4}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_danmaku(Ljava/util/List;I)V

    .line 721
    new-instance v3, Ljava/util/ArrayList;

    sget-object v1, Lbl/abd;->a:[F

    array-length v1, v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 722
    sget-object v4, Lbl/abd;->a:[F

    array-length v5, v4

    move v1, v0

    :goto_1e9
    if-ge v1, v5, :cond_201

    aget v6, v4, v1

    .line 723
    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e9

    .line 705
    :cond_1f7
    const-string v1, "\u7535\u5b50\u4e66"

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_170

    .line 708
    :cond_1fe
    const-string v1, "\u7535\u5b50\u4e66"

    goto :goto_18b

    .line 725
    :cond_201
    iget-object v1, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lbl/abd;->f(Landroid/content/Context;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_size(Ljava/util/List;I)V

    .line 726
    new-instance v3, Ljava/util/ArrayList;

    sget-object v1, Lbl/abd;->b:[F

    array-length v1, v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 727
    sget-object v4, Lbl/abd;->b:[F

    array-length v5, v4

    move v1, v0

    :goto_222
    if-ge v1, v5, :cond_243

    aget v6, v4, v1

    .line 728
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

    .line 727
    add-int/lit8 v1, v1, 0x1

    goto :goto_222

    .line 730
    :cond_243
    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lbl/abd;->g(Landroid/content/Context;)F

    move-result v1

    .line 731
    iget-object v4, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "f"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v4, v3, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_alpha(Ljava/util/List;I)V

    .line 732
    iget-object v1, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    const v3, 0x7f020004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_ratio(Ljava/util/List;I)V

    .line 733
    new-instance v3, Ljava/util/ArrayList;

    sget-object v1, Lbl/abd;->speeds:[F

    array-length v1, v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 734
    sget-object v4, Lbl/abd;->speeds:[F

    array-length v5, v4

    move v1, v0

    :goto_288
    if-ge v1, v5, :cond_2a9

    aget v6, v4, v1

    .line 735
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

    .line 734
    add-int/lit8 v1, v1, 0x1

    goto :goto_288

    .line 737
    :cond_2a9
    iget-object v1, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lbl/abd;->get_speed_id(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_speed(Ljava/util/List;I)V

    .line 738
    iget-object v1, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    const v3, 0x7f020005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lbl/abd;->get_mode_id(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_mode(Ljava/util/List;I)V

    .line 740
    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v1

    iget-object v1, v1, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v1}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v1

    .line 741
    iget-object v3, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v3, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->setResolveParams(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V

    .line 742
    iget-object v3, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->subtitle_info:Lorg/json/JSONObject;

    invoke-virtual {v3, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_subtitle(Lorg/json/JSONObject;)V

    .line 744
    new-instance v3, Ljava/util/ArrayList;

    sget-object v1, Lbl/abd;->a:[F

    array-length v1, v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 745
    sget-object v4, Lbl/abd;->a:[F

    array-length v5, v4

    move v1, v0

    :goto_2f2
    if-ge v1, v5, :cond_300

    aget v6, v4, v1

    .line 746
    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f2

    .line 748
    :cond_300
    iget-object v1, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lbl/abd;->get_subtitle_size(Landroid/content/Context;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_subtitle_size(Ljava/util/List;I)V

    .line 751
    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v1

    iget-object v1, v1, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v1}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v1

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->view_points:Lorg/json/JSONArray;

    .line 752
    iget-object v3, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v3, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_chapter(Lorg/json/JSONArray;)V

    .line 755
    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lbl/abd;->is_exo_player_selected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 756
    const v1, 0x7f020007

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 757
    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lbl/abd;->get_audio_balance_level(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 759
    const-string v3, "standard"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_355

    .line 760
    const/4 v0, 0x1

    .line 764
    :cond_34a
    :goto_34a
    iget-object v2, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_audio_balance(Ljava/util/List;I)V

    goto/16 :goto_2b

    .line 761
    :cond_355
    const-string v3, "high_dynamic"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34a

    .line 762
    const/4 v0, 0x2

    goto :goto_34a

    :cond_35f
    move v1, v2

    goto/16 :goto_d2

    .line 678
    :array_362
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

    .line 796
    invoke-virtual {p0}, Lbl/xw;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v0

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    .line 797
    if-eqz v0, :cond_f

    iget-object v1, v0, Lcom/bilibili/lib/media/resource/MediaResource;->a:Lcom/bilibili/lib/media/resource/VodIndex;

    if-nez v1, :cond_11

    :cond_f
    move v1, v2

    .line 810
    :cond_10
    :goto_10
    return v1

    .line 800
    :cond_11
    iget-object v1, v0, Lcom/bilibili/lib/media/resource/MediaResource;->a:Lcom/bilibili/lib/media/resource/VodIndex;

    iget-object v3, v1, Lcom/bilibili/lib/media/resource/VodIndex;->a:Ljava/util/ArrayList;

    .line 801
    invoke-virtual {v0}, Lcom/bilibili/lib/media/resource/MediaResource;->d()Lcom/bilibili/lib/media/resource/PlayIndex;

    move-result-object v4

    .line 802
    if-eqz v3, :cond_23

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_23

    if-nez v4, :cond_25

    :cond_23
    move v1, v2

    .line 803
    goto :goto_10

    .line 805
    :cond_25
    const/4 v0, 0x0

    move v1, v0

    :goto_27
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_49

    .line 806
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

    .line 805
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_27

    :cond_49
    move v1, v2

    .line 810
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

.method static synthetic access$1000(Lbl/xw;Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lbl/xw;->loadFileList(Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$1100(Lbl/xw;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lbl/xw;->loadingProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1102(Lbl/xw;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lbl/xw;->loadingProgressBar:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic access$1200(Lbl/xw;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lbl/xw;->loadingTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1202(Lbl/xw;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lbl/xw;->loadingTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1300(Lbl/xw;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lbl/xw;->hideLoadingIndicator()V

    return-void
.end method

.method static synthetic access$1400(Lbl/xw;Lcom/bilibili/tv/ebook/model/Book;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lbl/xw;->restoreReadingProgress(Lcom/bilibili/tv/ebook/model/Book;)V

    return-void
.end method

.method static synthetic access$1500(Lbl/xw;F)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lbl/xw;->applyFontSizeToWebView(F)V

    return-void
.end method

.method static synthetic access$1600(Lbl/xw;)Ljava/util/List;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lbl/xw;->currentChapterList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1602(Lbl/xw;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lbl/xw;->currentChapterList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1700(Lbl/xw;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lbl/xw;->createChapterListView(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1800(Lbl/xw;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1900(Lbl/xw;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lbl/xw;->parentChapterTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1902(Lbl/xw;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lbl/xw;->parentChapterTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lbl/xw;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2000(Lbl/xw;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2002(Lbl/xw;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$2100(Lbl/xw;Lcom/bilibili/tv/ebook/model/Chapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lbl/xw;->getChildChapters(Lcom/bilibili/tv/ebook/model/Chapter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lbl/xw;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lbl/xw;->currentChapterIndex:I

    return v0
.end method

.method static synthetic access$2300(Lbl/xw;)Ljava/util/Stack;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lbl/xw;->chapterNavigationStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$2400(Lbl/xw;)Lcom/bilibili/tv/ebook/model/Book;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    return-object v0
.end method

.method static synthetic access$2500(Lbl/xw;Lcom/bilibili/tv/ebook/model/Book;I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lbl/xw;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;I)V

    return-void
.end method

.method static synthetic access$2600(Lbl/xw;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lbl/xw;->hideChapterList()V

    return-void
.end method

.method static synthetic access$2700(Lbl/xw;)Lcom/bilibili/tv/ebook/util/BookshelfManager;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lbl/xw;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    return-object v0
.end method

.method static synthetic access$2800(Lbl/xw;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lbl/xw;->showBookshelfOrFileChooser()V

    return-void
.end method

.method static synthetic access$300(Lbl/xw;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lbl/xw;->showEbookPanel()V

    return-void
.end method

.method static synthetic access$400(Lbl/xw;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lbl/xw;->showFileChooserInPanel()V

    return-void
.end method

.method static synthetic access$500(Lbl/xw;)Ljava/util/List;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lbl/xw;->bookshelfItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lbl/xw;J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lbl/xw;->formatLastReadTime(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lbl/xw;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lbl/xw;->parseAndDisplayEbook(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lbl/xw;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lbl/xw;->isEbookPanelShown:Z

    return v0
.end method

.method static synthetic access$900(Lbl/xw;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private addToBookshelf(Lcom/bilibili/tv/ebook/model/Book;Lcom/bilibili/tv/ebook/model/ReadingProgress;)V
    .locals 2

    .prologue
    .line 3054
    if-eqz p1, :cond_6

    iget-object v0, p0, Lbl/xw;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    if-nez v0, :cond_7

    .line 3060
    :cond_6
    :goto_6
    return-void

    .line 3059
    :cond_7
    iget-object v0, p0, Lbl/xw;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    iget-object v1, p0, Lbl/xw;->currentBookFilePath:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Lcom/bilibili/tv/ebook/util/BookshelfManager;->addToBookshelf(Lcom/bilibili/tv/ebook/model/Book;Lcom/bilibili/tv/ebook/model/ReadingProgress;Ljava/lang/String;)V

    goto :goto_6
.end method

.method private applyFontSizeToWebView(F)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 884
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_8

    .line 902
    :goto_7
    return-void

    .line 888
    :cond_8
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5e94\u7528\u5b57\u4f53\u5927\u5c0f\u5230WebView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    const-string v0, "document.body.style.fontSize=\'%dpx\';"

    new-array v1, v4, [Ljava/lang/Object;

    float-to-int v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 892
    iget-object v1, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0, v5}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 895
    const-string v0, "var elements = document.querySelectorAll(\'p, div, span\');for (var i = 0; i < elements.length; i++) {  elements[i].style.fontSize = \'%dpx\';}"

    new-array v1, v4, [Ljava/lang/Object;

    float-to-int v2, p1

    .line 899
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 895
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 901
    iget-object v1, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0, v5}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_7
.end method

.method private closeEbookPanel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2600
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    .line 2601
    if-nez v0, :cond_10

    .line 2602
    const-string v0, "EbookReader"

    const-string v1, "Activity is null, cannot close ebook panel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2637
    :goto_f
    return-void

    .line 2606
    :cond_10
    const-string v1, "EbookReader"

    const-string v2, "\u5f00\u59cb\u5173\u95ed\u7535\u5b50\u4e66\u9762\u677f"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2609
    invoke-direct {p0}, Lbl/xw;->saveReadingProgress()V

    .line 2612
    iget-object v1, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2c

    .line 2613
    iget-object v1, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2614
    const-string v1, "EbookReader"

    const-string v2, "\u7070\u8272\u80cc\u666f\u9762\u677f\u5df2\u9690\u85cf"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2618
    :cond_2c
    invoke-direct {p0, v0}, Lbl/xw;->restoreVideoView(Landroid/app/Activity;)V

    .line 2621
    iput-boolean v3, p0, Lbl/xw;->isEbookPanelShown:Z

    .line 2622
    iput-boolean v3, p0, Lbl/xw;->isChapterListShown:Z

    .line 2623
    iput-boolean v3, p0, Lbl/xw;->isFileChooserShown:Z

    .line 2624
    iput-boolean v3, p0, Lbl/xw;->isLoadingEbook:Z

    .line 2625
    iput-boolean v3, p0, Lbl/xw;->isReadingBook:Z

    .line 2626
    iput-object v4, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    .line 2627
    iput v3, p0, Lbl/xw;->currentChapterIndex:I

    .line 2628
    iput-object v4, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    .line 2629
    iput-object v4, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    .line 2630
    iput-object v4, p0, Lbl/xw;->loadingProgressBar:Landroid/widget/ProgressBar;

    .line 2631
    iput-object v4, p0, Lbl/xw;->loadingTextView:Landroid/widget/TextView;

    .line 2632
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbl/xw;->lastBackPressTime:J

    .line 2633
    iput-object v4, p0, Lbl/xw;->currentBookFilePath:Ljava/lang/String;

    .line 2634
    const-string v0, "video"

    iput-object v0, p0, Lbl/xw;->controlTarget:Ljava/lang/String;

    .line 2636
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u9762\u677f\u5df2\u5173\u95ed\uff0c\u6240\u6709\u72b6\u6001\u5df2\u6e05\u9664\uff0ccontrolTarget\u91cd\u7f6e\u4e3avideo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method private createChapterListView(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ebook/model/Chapter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2005
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lbl/xw$23;

    invoke-direct {v1, p0, p1}, Lbl/xw$23;-><init>(Lbl/xw;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2222
    return-void
.end method

.method private displayBookContent(Lcom/bilibili/tv/ebook/model/Book;)V
    .locals 1

    .prologue
    .line 1764
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbl/xw;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;I)V

    .line 1765
    return-void
.end method

.method private displayBookContent(Lcom/bilibili/tv/ebook/model/Book;I)V
    .locals 2

    .prologue
    .line 1771
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lbl/xw;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;IZI)V

    .line 1772
    return-void
.end method

.method private displayBookContent(Lcom/bilibili/tv/ebook/model/Book;IZ)V
    .locals 1

    .prologue
    .line 1781
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lbl/xw;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;IZI)V

    .line 1782
    return-void
.end method

.method private displayBookContent(Lcom/bilibili/tv/ebook/model/Book;IZI)V
    .locals 8

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 1792
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1793
    :cond_16
    const-string v0, "EbookReader"

    const-string v1, "\u4e66\u7c4d\u65e0\u7ae0\u8282\u5185\u5bb9"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u4e66\u7c4d\u5185\u5bb9\u4e3a\u7a7a"

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1796
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1919
    :goto_2a
    return-void

    .line 1801
    :cond_2b
    iput-boolean v7, p0, Lbl/xw;->isFileChooserShown:Z

    .line 1802
    iput-boolean v7, p0, Lbl/xw;->isChapterListShown:Z

    .line 1803
    const-string v0, "EbookReader"

    const-string v2, "\u91cd\u7f6e\u72b6\u6001\u6807\u5fd7: isFileChooserShown=false, isChapterListShown=false"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    iput-object p1, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    .line 1807
    iput p2, p0, Lbl/xw;->currentChapterIndex:I

    .line 1808
    iput-boolean v4, p0, Lbl/xw;->isReadingBook:Z

    .line 1810
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

    .line 1811
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

    .line 1810
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_90

    .line 1816
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1817
    const-string v0, "EbookReader"

    const-string v2, "\u5df2\u6e05\u7a7a\u7535\u5b50\u4e66\u9762\u677f"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    :cond_90
    iput-object v1, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    .line 1824
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_d7

    .line 1825
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    .line 1826
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1830
    iget-object v2, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1833
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 1834
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1835
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 1836
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 1837
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 1838
    sget-object v2, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 1841
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 1842
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 1845
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_d7

    .line 1846
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1851
    :cond_d7
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/bilibili/tv/ebook/model/Chapter;

    .line 1852
    invoke-virtual {v6}, Lcom/bilibili/tv/ebook/model/Chapter;->getHtmlContent()Ljava/lang/String;

    move-result-object v0

    .line 1854
    if-eqz v0, :cond_ee

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10b

    .line 1855
    :cond_ee
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

    .line 1859
    :cond_10b
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "ebook_settings"

    invoke-virtual {v2, v3, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1860
    const-string v3, "font_size"

    const/high16 v4, 0x41e00000    # 28.0f

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    .line 1861
    const-string v2, "EbookReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8bfb\u53d6\u4fdd\u5b58\u7684\u5b57\u4f53\u5927\u5c0f: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<html><head><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"><style>body { font-size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    float-to-int v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "px; line-height: 1.6; padding: 20px; }</style></head><body>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</body></html>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1870
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    new-instance v4, Lbl/xw$21;

    invoke-direct {v4, p0, v3, p3, p4}, Lbl/xw$21;-><init>(Lbl/xw;FZI)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1911
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 1916
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 1918
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

.method private formatLastReadTime(J)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1273
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1274
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1275
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1277
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM-dd HH:mm"

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1278
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1280
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_32

    .line 1282
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1285
    :goto_31
    return-object v0

    :cond_32
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_31
.end method

.method private g(I)V
    .locals 3

    .prologue
    .line 443
    invoke-virtual {p0}, Lbl/xw;->k()Lbl/xh;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lbl/xh;->a(ILandroid/view/KeyEvent;)Z

    .line 444
    invoke-virtual {p0}, Lbl/xw;->k()Lbl/xh;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lbl/xh;->b(ILandroid/view/KeyEvent;)Z

    .line 445
    return-void
.end method

.method private getChildChapters(Lcom/bilibili/tv/ebook/model/Chapter;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bilibili/tv/ebook/model/Chapter;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ebook/model/Chapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1975
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1976
    iget-object v0, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v3

    .line 1978
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Chapter;->getChapterIndex()I

    move-result v0

    .line 1979
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Chapter;->getDepth()I

    move-result v4

    .line 1982
    add-int/lit8 v0, v0, 0x1

    move v1, v0

    :goto_16
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_33

    .line 1983
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ebook/model/Chapter;

    .line 1984
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getDepth()I

    move-result v5

    .line 1987
    add-int/lit8 v6, v4, 0x1

    if-ne v5, v6, :cond_31

    .line 1988
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1982
    :cond_2d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_16

    .line 1991
    :cond_31
    if-gt v5, v4, :cond_2d

    .line 1996
    :cond_33
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7ae0\u8282 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Chapter;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " \u7684\u5b50\u7ae0\u8282\u6570\u91cf: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    return-object v2
.end method

.method private getEffectiveSkips(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)Lorg/json/JSONArray;
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2928
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 2929
    const/4 v0, 0x0

    .line 2931
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

    .line 2933
    iget-object v2, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8b

    .line 2934
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

    .line 2935
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

    .line 2937
    :cond_8b
    if-eqz v0, :cond_99

    aget-wide v2, v0, v8

    cmp-long v2, v2, v10

    if-nez v2, :cond_dd

    aget-wide v2, v0, v9

    cmp-long v2, v2, v10

    if-nez v2, :cond_dd

    .line 2938
    :cond_99
    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v0

    iget-wide v2, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    invoke-static {v2, v3}, Lbl/abd;->getVideoSkipKey(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lbl/abd;->getSkipTime(Landroid/content/Context;Ljava/lang/String;)[J

    move-result-object v2

    .line 2939
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

    .line 2942
    :cond_dd
    if-eqz v0, :cond_eb

    aget-wide v2, v0, v8

    cmp-long v2, v2, v10

    if-nez v2, :cond_f4

    aget-wide v2, v0, v9

    cmp-long v2, v2, v10

    if-nez v2, :cond_f4

    .line 2943
    :cond_eb
    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->skips:Lorg/json/JSONArray;

    .line 2964
    :goto_ed
    return-object v0

    .line 2935
    :cond_ee
    const-string v0, "null"

    goto :goto_7f

    .line 2939
    :cond_f1
    const-string v0, "null"

    goto :goto_d1

    .line 2947
    :cond_f4
    const/4 v2, 0x0

    :try_start_f5
    aget-wide v2, v0, v2

    cmp-long v2, v2, v10

    if-lez v2, :cond_118

    .line 2948
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2949
    const-string v3, "type"

    const-string v4, "\u7247\u5934"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2950
    const-string v3, "start"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2951
    const-string v3, "end"

    const/4 v4, 0x0

    aget-wide v4, v0, v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2952
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2954
    :cond_118
    const/4 v2, 0x1

    aget-wide v2, v0, v2

    cmp-long v2, v2, v10

    if-lez v2, :cond_147

    iget v2, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDuration:I

    if-lez v2, :cond_147

    .line 2955
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2956
    iget v3, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDuration:I

    int-to-long v4, v3

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    .line 2957
    const-string v3, "type"

    const-string v6, "\u7247\u5c3e"

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2958
    const-string v3, "start"

    const/4 v6, 0x1

    aget-wide v6, v0, v6

    sub-long v6, v4, v6

    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2959
    const-string v0, "end"

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2960
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_147} :catch_149

    :cond_147
    :goto_147
    move-object v0, v1

    .line 2964
    goto :goto_ed

    .line 2962
    :catch_149
    move-exception v0

    goto :goto_147
.end method

.method private getRootChapters()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ebook/model/Chapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1958
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1959
    iget-object v0, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v0

    .line 1961
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ebook/model/Chapter;

    .line 1962
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getDepth()I

    move-result v3

    if-nez v3, :cond_f

    .line 1963
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 1967
    :cond_25
    const-string v0, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e00\u7ea7\u76ee\u5f55\u6570\u91cf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    return-object v1
.end method

.method private getSkipHelper()Lbl/xj;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2914
    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v0

    .line 2915
    if-nez v0, :cond_9

    move-object v0, v1

    .line 2924
    :goto_8
    return-object v0

    :cond_9
    move-object v0, p0

    .line 2918
    :goto_a
    if-eqz v0, :cond_18

    .line 2919
    instance-of v2, v0, Lbl/xj;

    if-eqz v2, :cond_13

    .line 2920
    check-cast v0, Lbl/xj;

    goto :goto_8

    .line 2922
    :cond_13
    invoke-virtual {v0}, Lbl/xh;->next()Lbl/xh;

    move-result-object v0

    goto :goto_a

    :cond_18
    move-object v0, v1

    .line 2924
    goto :goto_8
.end method

.method private hideChapterList()V
    .locals 2

    .prologue
    .line 2228
    const-string v0, "EbookReader"

    const-string v1, "\u9690\u85cf\u7ae0\u8282\u5217\u8868"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/xw;->isChapterListShown:Z

    .line 2231
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lbl/xw$24;

    invoke-direct {v1, p0}, Lbl/xw$24;-><init>(Lbl/xw;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2252
    return-void
.end method

.method private hideFileChooser()V
    .locals 2

    .prologue
    .line 1395
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    .line 1396
    if-eqz v0, :cond_a

    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    if-nez v0, :cond_12

    .line 1397
    :cond_a
    const-string v0, "EbookReader"

    const-string v1, "\u65e0\u6cd5\u9690\u85cf\u6587\u4ef6\u9009\u62e9\u5668\uff1aactivity\u6216panel\u4e3anull"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    :goto_11
    return-void

    .line 1401
    :cond_12
    const-string v0, "EbookReader"

    const-string v1, "\u5f00\u59cb\u9690\u85cf\u6587\u4ef6\u9009\u62e9\u5668"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1405
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/xw;->isFileChooserShown:Z

    .line 1407
    const-string v0, "EbookReader"

    const-string v1, "\u6587\u4ef6\u9009\u62e9\u5668\u5df2\u9690\u85cf\uff0c\u56de\u5230\u7535\u5b50\u4e66\u9996\u9875"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    invoke-direct {p0}, Lbl/xw;->showBookshelfOrFileChooser()V

    goto :goto_11
.end method

.method private hideLoadingIndicator()V
    .locals 2

    .prologue
    .line 1668
    const-string v0, "EbookReader"

    const-string v1, "\u9690\u85cf\u52a0\u8f7d\u8fdb\u5ea6\u63d0\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/xw;->isLoadingEbook:Z

    .line 1671
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lbl/xw$19;

    invoke-direct {v1, p0}, Lbl/xw$19;-><init>(Lbl/xw;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1683
    return-void
.end method

.method private isEbookFile(Ljava/io/File;)Z
    .locals 2

    .prologue
    .line 1572
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1573
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

    .line 1417
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v1

    .line 1418
    if-nez v1, :cond_8

    .line 1566
    :goto_7
    return-void

    .line 1420
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

    .line 1423
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1426
    invoke-virtual {p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 1427
    if-nez v2, :cond_42

    .line 1428
    const-string v2, "EbookReader"

    const-string v3, "listFiles()\u8fd4\u56denull\uff0c\u53ef\u80fd\u6ca1\u6709\u6743\u9650\u6216\u76ee\u5f55\u4e0d\u5b58\u5728"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    const-string v2, "\u65e0\u6cd5\u8bbf\u95ee\u76ee\u5f55"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 1433
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

    .line 1436
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1437
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1439
    array-length v5, v2

    :goto_6c
    if-ge v0, v5, :cond_be

    aget-object v6, v2, v0

    .line 1440
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_98

    .line 1441
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1442
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

    .line 1439
    :cond_95
    :goto_95
    add-int/lit8 v0, v0, 0x1

    goto :goto_6c

    .line 1443
    :cond_98
    invoke-direct {p0, v6}, Lbl/xw;->isEbookFile(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_95

    .line 1444
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1445
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

    .line 1449
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

    .line 1452
    new-instance v0, Lbl/xw$12;

    invoke-direct {v0, p0}, Lbl/xw$12;-><init>(Lbl/xw;)V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1458
    new-instance v0, Lbl/xw$13;

    invoke-direct {v0, p0}, Lbl/xw$13;-><init>(Lbl/xw;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1466
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1467
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1470
    invoke-virtual {p3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_117

    .line 1471
    const-string v0, "\u2191 \u4e0a\u7ea7"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1472
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1476
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

    .line 1477
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

    .line 1478
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11b

    .line 1482
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

    .line 1483
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

    .line 1484
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_149

    .line 1487
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

    .line 1490
    new-instance v0, Lbl/xw$14;

    const v3, 0x1090003

    invoke-direct {v0, p0, v1, v3, v5}, Lbl/xw$14;-><init>(Lbl/xw;Landroid/content/Context;ILjava/util/List;)V

    .line 1520
    new-instance v1, Lbl/xw$15;

    invoke-direct {v1, p0}, Lbl/xw$15;-><init>(Lbl/xw;)V

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1537
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1540
    new-instance v0, Lbl/xw$16;

    invoke-direct {v0, p0, p1}, Lbl/xw$16;-><init>(Lbl/xw;Landroid/widget/ListView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1549
    new-instance v0, Lbl/xw$17;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lbl/xw$17;-><init>(Lbl/xw;Ljava/util/List;Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_7
.end method

.method private parseAndDisplayEbook(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1689
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

    .line 1692
    iput-object p1, p0, Lbl/xw;->currentBookFilePath:Ljava/lang/String;

    .line 1695
    invoke-direct {p0}, Lbl/xw;->showLoadingIndicator()V

    .line 1698
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbl/xw$20;

    invoke-direct {v1, p0, p1}, Lbl/xw$20;-><init>(Lbl/xw;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1757
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1758
    return-void
.end method

.method private restoreDanmakuView(Landroid/app/Activity;)V
    .locals 8

    .prologue
    const/16 v7, 0x11

    const/16 v6, 0xd

    const/4 v5, -0x1

    .line 2798
    if-nez p1, :cond_f

    .line 2799
    const-string v0, "EbookReader"

    const-string v1, "Activity is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2884
    :goto_e
    return-void

    .line 2804
    :cond_f
    const v0, 0x7f08006e

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2805
    if-nez v1, :cond_20

    .line 2806
    const-string v0, "EbookReader"

    const-string v1, "\u5f39\u5e55\u89c6\u56fe\u672a\u627e\u5230"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 2810
    :cond_20
    const-string v0, "EbookReader"

    const-string v2, "\u5f00\u59cb\u6062\u590d\u5f39\u5e55\u89c6\u56fe\u5e03\u5c40"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2813
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2814
    if-nez v0, :cond_37

    .line 2815
    const-string v0, "EbookReader"

    const-string v1, "Danmaku view parent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 2819
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

    .line 2824
    iget-object v2, p0, Lbl/xw;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v2, :cond_b4

    .line 2826
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_83

    .line 2827
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lbl/xw;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lbl/xw;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2831
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2833
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528FrameLayout.LayoutParams\u6062\u590d\u5f39\u5e55\u5168\u5c4f"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2850
    :goto_75
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2851
    const-string v0, "EbookReader"

    const-string v1, "\u5f39\u5e55\u5df2\u6062\u590d\u539f\u59cb\u5e03\u5c40"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2883
    :goto_7f
    const/4 v0, 0x0

    iput-object v0, p0, Lbl/xw;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_e

    .line 2834
    :cond_83
    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_9f

    .line 2835
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lbl/xw;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lbl/xw;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2839
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2841
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528RelativeLayout.LayoutParams\u6062\u590d\u5f39\u5e55\u5168\u5c4f"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    .line 2843
    :cond_9f
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget-object v2, p0, Lbl/xw;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lbl/xw;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2847
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528ViewGroup.LayoutParams\u6062\u590d\u5f39\u5e55\u5168\u5c4f"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    .line 2854
    :cond_b4
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_d1

    .line 2855
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2859
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2861
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528FrameLayout.LayoutParams\u6062\u590d\u5f39\u5e55\u5168\u5c4f(\u9ed8\u8ba4)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2878
    :goto_c6
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2879
    const-string v0, "EbookReader"

    const-string v1, "\u5f39\u5e55\u5df2\u6062\u590d\u5168\u5c4f\u663e\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    .line 2862
    :cond_d1
    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_e5

    .line 2863
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2867
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2869
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528RelativeLayout.LayoutParams\u6062\u590d\u5f39\u5e55\u5168\u5c4f(\u9ed8\u8ba4)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c6

    .line 2871
    :cond_e5
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2875
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528ViewGroup.LayoutParams\u6062\u590d\u5f39\u5e55\u5168\u5c4f(\u9ed8\u8ba4)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c6
.end method

.method private restoreReadingProgress(Lcom/bilibili/tv/ebook/model/Book;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3012
    if-eqz p1, :cond_7

    iget-object v0, p0, Lbl/xw;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    if-nez v0, :cond_8

    .line 3048
    :cond_7
    :goto_7
    return-void

    .line 3017
    :cond_8
    :try_start_8
    iget-object v0, p0, Lbl/xw;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    .line 3018
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ebook/util/EbookCacheManager;->getReadingProgress(Ljava/lang/String;)Lcom/bilibili/tv/ebook/model/ReadingProgress;

    move-result-object v0

    .line 3020
    if-eqz v0, :cond_96

    .line 3021
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->getCurrentChapterIndex()I

    move-result v1

    .line 3022
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->getCurrentPage()I

    move-result v2

    .line 3025
    if-ltz v1, :cond_79

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_79

    .line 3026
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_79

    .line 3027
    const-string v3, "EbookReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6062\u590d\u9605\u8bfb\u8fdb\u5ea6: \u7ae0\u8282="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \u9875\u7801="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3029
    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v3, v2}, Lbl/xw;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;IZI)V

    .line 3036
    :goto_54
    invoke-direct {p0, p1, v0}, Lbl/xw;->addToBookshelf(Lcom/bilibili/tv/ebook/model/Book;Lcom/bilibili/tv/ebook/model/ReadingProgress;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_57} :catch_58

    goto :goto_7

    .line 3044
    :catch_58
    move-exception v0

    .line 3045
    const-string v1, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6062\u590d\u9605\u8bfb\u8fdb\u5ea6\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3046
    invoke-direct {p0, p1, v6}, Lbl/xw;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;I)V

    goto :goto_7

    .line 3031
    :cond_79
    :try_start_79
    const-string v2, "EbookReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4fdd\u5b58\u7684\u7ae0\u8282\u7d22\u5f15\u65e0\u6548: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3032
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lbl/xw;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;I)V

    goto :goto_54

    .line 3038
    :cond_96
    const-string v0, "EbookReader"

    const-string v1, "\u65e0\u4fdd\u5b58\u7684\u9605\u8bfb\u8fdb\u5ea6\uff0c\u4ece\u7b2c\u4e00\u7ae0\u5f00\u59cb"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3039
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbl/xw;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;I)V

    .line 3042
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbl/xw;->addToBookshelf(Lcom/bilibili/tv/ebook/model/Book;Lcom/bilibili/tv/ebook/model/ReadingProgress;)V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_a5} :catch_58

    goto/16 :goto_7
.end method

.method private restoreVideoView(Landroid/app/Activity;)V
    .locals 8

    .prologue
    const/16 v7, 0x11

    const/16 v6, 0xd

    const/4 v5, -0x1

    .line 2692
    sget v0, Lmybl/BiliFilter;->prefer_videoview:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_12

    .line 2693
    const-string v0, "EbookReader"

    const-string v1, "\u5f53\u524d\u672a\u4f7f\u7528TextureView\u6a21\u5f0f,\u65e0\u9700\u6062\u590d"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2792
    :goto_11
    return-void

    .line 2698
    :cond_12
    invoke-virtual {p0}, Lbl/xw;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    .line 2699
    if-nez v0, :cond_20

    .line 2700
    const-string v0, "EbookReader"

    const-string v1, "\u64ad\u653e\u5668\u4e0a\u4e0b\u6587\u4e3a\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 2705
    :cond_20
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->getIVideoView()Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    move-result-object v0

    .line 2706
    if-nez v0, :cond_2e

    .line 2707
    const-string v0, "EbookReader"

    const-string v1, "\u89c6\u9891\u89c6\u56fe\u63a5\u53e3\u4e3a\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 2711
    :cond_2e
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getView()Landroid/view/View;

    move-result-object v1

    .line 2712
    if-nez v1, :cond_3c

    .line 2713
    const-string v0, "EbookReader"

    const-string v1, "\u89c6\u9891\u89c6\u56fe\u4e3a\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 2718
    :cond_3c
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2719
    if-nez v0, :cond_4c

    .line 2720
    const-string v0, "EbookReader"

    const-string v1, "Video view parent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 2724
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

    .line 2729
    iget-object v2, p0, Lbl/xw;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v2, :cond_cd

    .line 2731
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_9c

    .line 2732
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lbl/xw;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lbl/xw;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2736
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2738
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528FrameLayout.LayoutParams\u6062\u590d\u5168\u5c4f"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2755
    :goto_8a
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2756
    const-string v0, "EbookReader"

    const-string v1, "\u89c6\u9891\u5df2\u6062\u590d\u539f\u59cb\u5e03\u5c40"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2788
    :goto_94
    const/4 v0, 0x0

    iput-object v0, p0, Lbl/xw;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    .line 2791
    invoke-direct {p0, p1}, Lbl/xw;->restoreDanmakuView(Landroid/app/Activity;)V

    goto/16 :goto_11

    .line 2739
    :cond_9c
    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_b8

    .line 2740
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lbl/xw;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lbl/xw;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2744
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2746
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528RelativeLayout.LayoutParams\u6062\u590d\u5168\u5c4f"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a

    .line 2748
    :cond_b8
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget-object v2, p0, Lbl/xw;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lbl/xw;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2752
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528ViewGroup.LayoutParams\u6062\u590d\u5168\u5c4f"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a

    .line 2759
    :cond_cd
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_ea

    .line 2760
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2764
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2766
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528FrameLayout.LayoutParams\u6062\u590d\u5168\u5c4f(\u9ed8\u8ba4)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2783
    :goto_df
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2784
    const-string v0, "EbookReader"

    const-string v1, "\u89c6\u9891\u5df2\u6062\u590d\u5168\u5c4f\u663e\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_94

    .line 2767
    :cond_ea
    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_fe

    .line 2768
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2772
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2774
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528RelativeLayout.LayoutParams\u6062\u590d\u5168\u5c4f(\u9ed8\u8ba4)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_df

    .line 2776
    :cond_fe
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2780
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528ViewGroup.LayoutParams\u6062\u590d\u5168\u5c4f(\u9ed8\u8ba4)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_df
.end method

.method private saveReadingProgress()V
    .locals 5

    .prologue
    .line 2971
    iget-object v0, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lbl/xw;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_d

    .line 3006
    :cond_c
    :goto_c
    return-void

    .line 2977
    :cond_d
    :try_start_d
    new-instance v0, Lcom/bilibili/tv/ebook/model/ReadingProgress;

    iget-object v1, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    .line 2978
    invoke-virtual {v1}, Lcom/bilibili/tv/ebook/model/Book;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ebook/model/ReadingProgress;-><init>(Ljava/lang/String;)V

    .line 2980
    iget v1, p0, Lbl/xw;->currentChapterIndex:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->setCurrentChapterIndex(I)V

    .line 2981
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->setLastReadTimestamp(J)V

    .line 2984
    iget-object v1, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    invoke-virtual {v1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    invoke-virtual {v1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4d

    .line 2985
    iget v1, p0, Lbl/xw;->currentChapterIndex:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    iget-object v2, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    invoke-virtual {v2}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 2986
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->setProgressPercentage(F)V

    .line 2990
    :cond_4d
    iget-object v1, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v1

    .line 2991
    iget-object v2, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getHeight()I

    move-result v2

    .line 2992
    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/2addr v1, v2

    .line 2993
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->setCurrentPage(I)V

    .line 2996
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->setFontSize(I)V

    .line 2999
    iget-object v2, p0, Lbl/xw;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/ebook/util/EbookCacheManager;->saveReadingProgress(Lcom/bilibili/tv/ebook/model/ReadingProgress;)V

    .line 3001
    const-string v2, "EbookReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u9605\u8bfb\u8fdb\u5ea6\u5df2\u4fdd\u5b58: \u7ae0\u8282="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lbl/xw;->currentChapterIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", \u9875\u7801="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", \u8fdb\u5ea6="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3002
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->getProgressPercentage()F

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3001
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_a4} :catch_a6

    goto/16 :goto_c

    .line 3003
    :catch_a6
    move-exception v0

    .line 3004
    const-string v1, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4fdd\u5b58\u9605\u8bfb\u8fdb\u5ea6\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c
.end method

.method private showBookshelfInPanel()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v10, -0x2

    const/16 v9, 0x11

    const/16 v8, 0x18

    const/4 v7, -0x1

    .line 978
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v2

    .line 979
    if-eqz v2, :cond_11

    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    if-nez v0, :cond_19

    .line 980
    :cond_11
    const-string v0, "EbookReader"

    const-string v1, "Activity or ebookPanel is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    :goto_18
    return-void

    .line 984
    :cond_19
    const-string v0, "EbookReader"

    const-string v1, "\u5728\u7535\u5b50\u4e66\u9762\u677f\u4e2d\u663e\u793a\u4e66\u67b6\u5217\u8868"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_34

    .line 988
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u9762\u677f\u672a\u663e\u793a\uff0c\u8bbe\u7f6e\u4e3aVISIBLE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 993
    :cond_34
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 996
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 997
    const-string v1, "\u6211\u7684\u4e66\u67b6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 998
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 999
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1000
    const/16 v1, 0x14

    const/16 v3, 0x14

    invoke-virtual {v0, v8, v1, v8, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1001
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 1002
    iget-object v1, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v7, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1008
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    .line 1009
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1010
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 1013
    new-instance v0, Lbl/xw$7;

    const v3, 0x1090003

    const v4, 0x1020014

    iget-object v5, p0, Lbl/xw;->bookshelfItems:Ljava/util/List;

    move-object v1, p0

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lbl/xw$7;-><init>(Lbl/xw;Landroid/content/Context;IILjava/util/List;Landroid/app/Activity;)V

    .line 1185
    iget-object v1, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1188
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    new-instance v1, Lbl/xw$8;

    invoke-direct {v1, p0}, Lbl/xw$8;-><init>(Lbl/xw;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1206
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    new-instance v1, Lbl/xw$9;

    invoke-direct {v1, p0, v2}, Lbl/xw$9;-><init>(Lbl/xw;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1225
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1229
    const/16 v1, 0x46

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1230
    iget-object v1, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1233
    iget-object v0, p0, Lbl/xw;->bookshelfItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 1234
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1235
    const-string v1, "\u4e66\u67b6\u4e3a\u7a7a\uff0c\u8bf7\u9009\u62e9\u6587\u4ef6\u6dfb\u52a0\u4e66\u7c4d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1236
    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1237
    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1238
    const/16 v1, 0xa

    const/16 v2, 0xa

    invoke-virtual {v0, v8, v1, v8, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1239
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 1240
    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 1241
    iget-object v1, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v7, v10, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1249
    :cond_e0
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    new-instance v1, Lbl/xw$10;

    invoke-direct {v1, p0}, Lbl/xw$10;-><init>(Lbl/xw;)V

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1260
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    new-instance v1, Lbl/xw$11;

    invoke-direct {v1, p0}, Lbl/xw$11;-><init>(Lbl/xw;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_18
.end method

.method private showBookshelfOrFileChooser()V
    .locals 3

    .prologue
    .line 963
    iget-object v0, p0, Lbl/xw;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    if-nez v0, :cond_f

    .line 964
    new-instance v0, Lcom/bilibili/tv/ebook/util/BookshelfManager;

    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ebook/util/BookshelfManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbl/xw;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    .line 967
    :cond_f
    iget-object v0, p0, Lbl/xw;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/util/BookshelfManager;->getBookshelfItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbl/xw;->bookshelfItems:Ljava/util/List;

    .line 970
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u663e\u793a\u4e66\u67b6\u5217\u8868\uff0c\u5171 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/xw;->bookshelfItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u672c\u4e66"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    invoke-direct {p0}, Lbl/xw;->showBookshelfInPanel()V

    .line 972
    return-void
.end method

.method private showEbookPanel()V
    .locals 6

    .prologue
    .line 2261
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    .line 2262
    if-nez v0, :cond_e

    .line 2263
    const-string v0, "EbookReader"

    const-string v1, "Activity is null, cannot show ebook panel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    :goto_d
    return-void

    .line 2267
    :cond_e
    const-string v1, "EbookReader"

    const-string v2, "\u5f00\u59cb\u663e\u793a\u7535\u5b50\u4e66\u9762\u677f"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2271
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2272
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2273
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2275
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

    .line 2278
    invoke-direct {p0, v0, v2, v1}, Lbl/xw;->shrinkVideoView(Landroid/app/Activity;II)V

    .line 2281
    invoke-direct {p0, v0, v2, v1}, Lbl/xw;->shrinkDanmakuView(Landroid/app/Activity;II)V

    .line 2284
    invoke-direct {p0, v0, v2, v1}, Lbl/xw;->showGrayBackgroundPanel(Landroid/app/Activity;II)V

    .line 2287
    iget-object v1, p0, Lbl/xw;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    if-nez v1, :cond_5f

    .line 2288
    new-instance v1, Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    invoke-direct {v1, v0}, Lcom/bilibili/tv/ebook/util/EbookCacheManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lbl/xw;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    .line 2290
    :cond_5f
    iget-object v1, p0, Lbl/xw;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    if-nez v1, :cond_6a

    .line 2291
    new-instance v1, Lcom/bilibili/tv/ebook/util/BookshelfManager;

    invoke-direct {v1, v0}, Lcom/bilibili/tv/ebook/util/BookshelfManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lbl/xw;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    .line 2294
    :cond_6a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xw;->isEbookPanelShown:Z

    .line 2295
    const-string v0, "ebook"

    iput-object v0, p0, Lbl/xw;->controlTarget:Ljava/lang/String;

    .line 2296
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u9762\u677f\u5df2\u663e\u793a\uff0ccontrolTarget\u8bbe\u7f6e\u4e3aebook"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    invoke-direct {p0}, Lbl/xw;->showBookshelfOrFileChooser()V

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

    .line 1293
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v1

    .line 1294
    if-nez v1, :cond_15

    .line 1295
    const-string v0, "EbookReader"

    const-string v1, "Activity is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    :goto_14
    return-void

    .line 1299
    :cond_15
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    if-nez v0, :cond_21

    .line 1300
    const-string v0, "EbookReader"

    const-string v1, "ebookPanel is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 1304
    :cond_21
    const-string v0, "EbookReader"

    const-string v2, "\u5728\u7535\u5b50\u4e66\u9762\u677f\u4e2d\u663e\u793a\u6587\u4ef6\u9009\u62e9\u5668"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
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

    .line 1306
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

    .line 1309
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_95

    .line 1310
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v1, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_95

    .line 1312
    const-string v0, "EbookReader"

    const-string v2, "\u6ca1\u6709\u5b58\u50a8\u6743\u9650\uff0c\u8bf7\u6c42\u6743\u9650"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    new-array v0, v5, [Ljava/lang/String;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v7

    const/16 v2, 0x3e9

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 1317
    const-string v0, "\u8bf7\u6388\u4e88\u5b58\u50a8\u6743\u9650\u540e\u518d\u8bd5"

    invoke-static {v1, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1319
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_14

    .line 1305
    :cond_92
    const-string v0, "\u672a\u663e\u793a"

    goto :goto_3f

    .line 1325
    :cond_95
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_a9

    .line 1326
    const-string v0, "EbookReader"

    const-string v2, "\u7535\u5b50\u4e66\u9762\u677f\u672a\u663e\u793a\uff0c\u8bbe\u7f6e\u4e3aVISIBLE"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1331
    :cond_a9
    const-string v0, "EbookReader"

    const-string v2, "\u6e05\u7a7a\u7535\u5b50\u4e66\u9762\u677f\u4e2d\u7684\u5185\u5bb9"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1335
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1336
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1337
    const-string v2, "#333333"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1338
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1344
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1345
    const-string v3, "\u9009\u62e9\u7535\u5b50\u4e66\u6587\u4ef6"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1346
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1347
    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1348
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1349
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1350
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1353
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1354
    const v3, -0x333334

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1355
    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1356
    invoke-virtual {v2, v4, v8, v4, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1357
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1360
    new-instance v3, Landroid/widget/ListView;

    invoke-direct {v3, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 1361
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1365
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1366
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v4, -0xbbbbbc

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1367
    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 1368
    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 1369
    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 1370
    const/high16 v1, 0x20000

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    .line 1371
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1373
    const-string v1, "EbookReader"

    const-string v4, "\u6587\u4ef6\u9009\u62e9\u5668\u5e03\u5c40\u521b\u5efa\u5b8c\u6210\uff0c\u51c6\u5907\u6dfb\u52a0\u5230\u7535\u5b50\u4e66\u9762\u677f"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    iget-object v1, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1375
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

    .line 1378
    iput-boolean v5, p0, Lbl/xw;->isFileChooserShown:Z

    .line 1379
    const-string v0, "EbookReader"

    const-string v1, "\u6587\u4ef6\u9009\u62e9\u5668\u5df2\u663e\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v4, "Download"

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1383
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_172

    .line 1384
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 1388
    :cond_172
    invoke-direct {p0, v3, v2, v0}, Lbl/xw;->loadFileList(Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V

    goto/16 :goto_14
.end method

.method private showGrayBackgroundPanel(Landroid/app/Activity;II)V
    .locals 4

    .prologue
    .line 2395
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2396
    if-nez v0, :cond_15

    .line 2397
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2401
    :cond_15
    iget-object v1, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    if-nez v1, :cond_43

    .line 2402
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    .line 2403
    iget-object v1, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    const-string v2, "#333333"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2406
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    div-int/lit8 v2, p2, 0x3

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2410
    const/4 v2, 0x5

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2413
    iget-object v2, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2415
    const-string v0, "EbookReader"

    const-string v1, "\u7070\u8272\u80cc\u666f\u9762\u677f\u5df2\u521b\u5efa\u5e76\u6dfb\u52a0\u5230\u5e03\u5c40"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    :goto_42
    return-void

    .line 2417
    :cond_43
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2418
    const-string v0, "EbookReader"

    const-string v1, "\u7070\u8272\u80cc\u666f\u9762\u677f\u5df2\u663e\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42
.end method

.method private showLoadingIndicator()V
    .locals 2

    .prologue
    .line 1607
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xw;->isLoadingEbook:Z

    .line 1608
    const-string v0, "EbookReader"

    const-string v1, "\u663e\u793a\u52a0\u8f7d\u8fdb\u5ea6\u63d0\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lbl/xw$18;

    invoke-direct {v1, p0}, Lbl/xw$18;-><init>(Lbl/xw;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1662
    return-void
.end method

.method private shrinkDanmakuView(Landroid/app/Activity;II)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 2644
    const v0, 0x7f08006e

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2645
    if-nez v1, :cond_12

    .line 2646
    const-string v0, "EbookReader"

    const-string v1, "\u5f39\u5e55\u89c6\u56fe\u672a\u627e\u5230"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2685
    :goto_11
    return-void

    .line 2650
    :cond_12
    const-string v0, "EbookReader"

    const-string v2, "\u5f00\u59cb\u7f29\u5c0f\u5f39\u5e55\u89c6\u56fe"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2653
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2654
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lbl/xw;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    .line 2655
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

    .line 2658
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2659
    if-nez v0, :cond_60

    .line 2660
    const-string v0, "EbookReader"

    const-string v1, "Danmaku view parent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 2664
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

    .line 2667
    mul-int/lit8 v2, p2, 0x2

    div-int/lit8 v2, v2, 0x3

    .line 2671
    instance-of v3, v0, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_bd

    .line 2672
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2673
    const/4 v3, 0x3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2683
    :goto_90
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2684
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

    .line 2675
    :cond_bd
    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_cc

    .line 2676
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2677
    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_90

    .line 2680
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

    .line 2307
    sget v0, Lmybl/BiliFilter;->prefer_videoview:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2b

    .line 2308
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

    .line 2309
    const-string v0, "\u7535\u5b50\u4e66\u529f\u80fd\u9700\u8981TextureView\u6a21\u5f0f\n\u8bf7\u5148\u5728\u4e2a\u6027\u5316\u8bbe\u7f6e\u4e2d\u5207\u6362"

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2311
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2388
    :goto_2a
    return-void

    .line 2316
    :cond_2b
    invoke-virtual {p0}, Lbl/xw;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    .line 2317
    if-nez v0, :cond_39

    .line 2318
    const-string v0, "EbookReader"

    const-string v1, "\u64ad\u653e\u5668\u4e0a\u4e0b\u6587\u4e3a\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 2323
    :cond_39
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->getIVideoView()Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    move-result-object v0

    .line 2324
    if-nez v0, :cond_47

    .line 2325
    const-string v0, "EbookReader"

    const-string v1, "\u89c6\u9891\u89c6\u56fe\u63a5\u53e3\u4e3a\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 2329
    :cond_47
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getView()Landroid/view/View;

    move-result-object v1

    .line 2330
    if-nez v1, :cond_55

    .line 2331
    const-string v0, "EbookReader"

    const-string v1, "\u89c6\u9891\u89c6\u56fe\u4e3a\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 2336
    :cond_55
    instance-of v0, v1, Landroid/view/TextureView;

    if-nez v0, :cond_a2

    .line 2337
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

    .line 2338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524d\u4f7f\u7528\u7684\u662f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2339
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

    .line 2338
    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2340
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2a

    .line 2344
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

    .line 2347
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2348
    if-nez v0, :cond_d3

    .line 2349
    const-string v0, "EbookReader"

    const-string v1, "\u89c6\u9891\u89c6\u56fe\u7684\u7236\u5bb9\u5668\u4e3a\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    .line 2352
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

    .line 2355
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 2356
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v3, v4, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lbl/xw;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    .line 2357
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

    .line 2360
    mul-int/lit8 v2, p2, 0x2

    div-int/lit8 v2, v2, 0x3

    .line 2363
    instance-of v3, v0, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_169

    .line 2364
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2368
    const/4 v3, 0x3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2385
    :goto_13c
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2387
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

    .line 2370
    :cond_169
    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_178

    .line 2371
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2375
    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_13c

    .line 2379
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

    .line 438
    invoke-direct {p0, v0}, Lbl/xw;->g(I)V

    .line 439
    invoke-direct {p0, v0}, Lbl/xw;->g(I)V

    .line 440
    return-void
.end method

.method public Q()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 577
    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v1

    .line 578
    if-eqz v1, :cond_13

    iget-object v1, v1, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    if-eqz v1, :cond_13

    iget-object v2, v1, Lcom/bilibili/lib/media/resource/MediaResource;->a:Lcom/bilibili/lib/media/resource/VodIndex;

    if-nez v2, :cond_14

    .line 596
    :cond_13
    :goto_13
    return-void

    .line 581
    :cond_14
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 582
    iget-object v2, v1, Lcom/bilibili/lib/media/resource/MediaResource;->a:Lcom/bilibili/lib/media/resource/VodIndex;

    iget-object v4, v2, Lcom/bilibili/lib/media/resource/VodIndex;->a:Ljava/util/ArrayList;

    .line 583
    invoke-virtual {v1}, Lcom/bilibili/lib/media/resource/MediaResource;->d()Lcom/bilibili/lib/media/resource/PlayIndex;

    move-result-object v5

    .line 584
    if-eqz v4, :cond_13

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_13

    if-eqz v5, :cond_13

    move v1, v0

    move v2, v0

    .line 588
    :goto_2d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_53

    .line 589
    iget-object v6, v5, Lcom/bilibili/lib/media/resource/PlayIndex;->c:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/lib/media/resource/PlayIndex;

    iget-object v0, v0, Lcom/bilibili/lib/media/resource/PlayIndex;->c:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    move v2, v1

    .line 592
    :cond_44
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/lib/media/resource/PlayIndex;

    iget-object v0, v0, Lcom/bilibili/lib/media/resource/PlayIndex;->c:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2d

    .line 594
    :cond_53
    iput-object v3, p0, Lbl/xw;->d:Ljava/util/List;

    .line 595
    iput v2, p0, Lbl/xw;->e:I

    goto :goto_13
.end method

.method public a(Landroid/os/Message;)Ljava/lang/Boolean;
    .locals 6

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x0

    .line 118
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_25

    .line 119
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_28

    move v0, v1

    .line 120
    :goto_11
    iget-object v2, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    if-eqz v2, :cond_25

    .line 121
    iget-object v2, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(IIJ)V

    .line 122
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 123
    invoke-virtual {p0, v1}, Lbl/xw;->d(Z)V

    .line 127
    :cond_25
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 119
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
    .line 486
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->DANMAKU_SIZE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lbl/xw;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 487
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lbl/abd;->a(Landroid/content/Context;F)V

    .line 488
    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 144
    invoke-super {p0, p1, p2, p3}, Lbl/xh;->a(IILandroid/content/Intent;)V

    .line 145
    return-void
.end method

.method public a(Landroid/app/Activity;Lbl/xf;)V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0, p1, p2}, Lbl/xh;->a(Landroid/app/Activity;Lbl/xf;)V

    .line 113
    const/4 v0, 0x3

    invoke-virtual {p2, v0, p0}, Lbl/xf;->a(ILbl/bbb;)V

    .line 114
    return-void
.end method

.method public adjust_screen(I)V
    .locals 4

    .prologue
    .line 92
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SCREEN_ADJUST:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lbl/xw;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 93
    return-void
.end method

.method public b(F)V
    .locals 4

    .prologue
    .line 492
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->DANMAKU_ALPHA:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lbl/xw;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 493
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lbl/abd;->b(Landroid/content/Context;F)V

    .line 494
    return-void
.end method

.method public varargs b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 133
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->QUALITY_SWITCH_SUCCESS:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    if-ne p1, v0, :cond_20

    invoke-direct {p0}, Lbl/xw;->T()I

    move-result v0

    if-lez v0, :cond_20

    iget-object v1, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    if-eqz v1, :cond_20

    .line 134
    iget-object v1, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    const/4 v2, 0x2

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v5}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(IIJ)V

    .line 135
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 136
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbl/xw;->d(Z)V

    .line 139
    :cond_20
    invoke-super {p0, p1, p2}, Lbl/xh;->b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 140
    return-void
.end method

.method public c(Z)V
    .locals 3

    .prologue
    .line 449
    iget-object v0, p0, Lbl/xw;->a:Lbl/xf;

    const/4 v1, 0x5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbl/xf;->a(ILjava/lang/Object;)V

    .line 450
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lbl/abd;->c(Landroid/content/Context;Z)V

    .line 451
    return-void
.end method

.method public clearBookshelf()V
    .locals 5

    .prologue
    .line 2556
    const-string v0, "EbookReader"

    const-string v1, "\u6e05\u7a7a\u4e66\u67b6\u83dc\u5355\u9879\u88ab\u70b9\u51fb"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2558
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    .line 2559
    if-nez v0, :cond_15

    .line 2560
    const-string v0, "EbookReader"

    const-string v1, "Activity is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2597
    :goto_14
    return-void

    .line 2565
    :cond_15
    new-instance v1, Lbl/agb$a;

    invoke-direct {v1, v0}, Lbl/agb$a;-><init>(Landroid/app/Activity;)V

    .line 2566
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lbl/agb$a;->a(I)Lbl/agb$a;

    move-result-object v2

    const-string v3, "\u786e\u8ba4\u6e05\u7a7a\u4e66\u67b6\uff1f"

    invoke-virtual {v2, v3}, Lbl/agb$a;->a(Ljava/lang/String;)Lbl/agb$a;

    move-result-object v2

    const v3, 0x7f0c0079

    .line 2567
    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lbl/xw$26;

    invoke-direct {v4, p0, v0}, Lbl/xw$26;-><init>(Lbl/xw;Landroid/app/Activity;)V

    invoke-virtual {v2, v3, v4}, Lbl/agb$a;->a(Ljava/lang/String;Lbl/agb$b;)Lbl/agb$a;

    move-result-object v2

    const v3, 0x7f0c0076

    .line 2590
    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lbl/xw$25;

    invoke-direct {v3, p0}, Lbl/xw$25;-><init>(Lbl/xw;)V

    invoke-virtual {v2, v0, v3}, Lbl/agb$a;->b(Ljava/lang/String;Lbl/agb$b;)Lbl/agb$a;

    .line 2596
    invoke-virtual {v1}, Lbl/agb$a;->a()Lbl/agb;

    move-result-object v0

    invoke-virtual {v0}, Lbl/agb;->show()V

    goto :goto_14
.end method

.method public closeCurrentBook()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2433
    const-string v0, "EbookReader"

    const-string v1, "\u5f00\u59cb\u5173\u95ed\u5f53\u524d\u4e66\u7c4d\uff0c\u56de\u5230\u7535\u5b50\u4e66\u9996\u9875"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2436
    invoke-direct {p0}, Lbl/xw;->saveReadingProgress()V

    .line 2439
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1c

    .line 2440
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2441
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u9762\u677f\u5df2\u6e05\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2445
    :cond_1c
    iput-object v2, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    .line 2446
    iput v3, p0, Lbl/xw;->currentChapterIndex:I

    .line 2447
    iput-object v2, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    .line 2448
    iput-object v2, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    .line 2449
    iput-boolean v3, p0, Lbl/xw;->isReadingBook:Z

    .line 2450
    iput-object v2, p0, Lbl/xw;->currentBookFilePath:Ljava/lang/String;

    .line 2452
    const-string v0, "EbookReader"

    const-string v1, "\u5f53\u524d\u4e66\u7c4d\u5df2\u5173\u95ed\uff0c\u56de\u5230\u7535\u5b50\u4e66\u9996\u9875"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2455
    invoke-direct {p0}, Lbl/xw;->showBookshelfOrFileChooser()V

    .line 2456
    return-void
.end method

.method public d(Z)V
    .locals 3

    .prologue
    .line 540
    invoke-virtual {p0}, Lbl/xw;->v()V

    .line 543
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    if-nez v0, :cond_4b

    .line 544
    const v0, 0x7f0800ef

    invoke-virtual {p0, v0}, Lbl/xw;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    iput-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    .line 545
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->setListener(Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;)V

    .line 546
    invoke-direct {p0}, Lbl/xw;->S()V

    .line 547
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 565
    :cond_26
    :goto_26
    if-eqz p1, :cond_3d

    iget-boolean v0, p0, Lbl/xw;->isEbookPanelShown:Z

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3d

    .line 566
    const-string v0, "EbookReader"

    const-string v1, "\u83dc\u5355\u6253\u5f00\uff0c\u4e34\u65f6\u9690\u85cf\u7535\u5b50\u4e66\u9762\u677f"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 570
    :cond_3d
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->isShown()Z

    move-result v0

    if-eq v0, p1, :cond_4a

    .line 571
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 573
    :cond_4a
    return-void

    .line 550
    :cond_4b
    invoke-direct {p0}, Lbl/xw;->S()V

    .line 552
    if-eqz p1, :cond_26

    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 553
    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v0

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->view_points:Lorg/json/JSONArray;

    .line 554
    iget-object v1, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_chapter(Lorg/json/JSONArray;)V

    .line 555
    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v0

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->subtitle_info:Lorg/json/JSONObject;

    .line 556
    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v1

    iget-object v1, v1, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v1}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v1

    .line 557
    iget-object v2, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v2, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->setResolveParams(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V

    .line 558
    iget-object v1, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_subtitle(Lorg/json/JSONObject;)V

    goto :goto_26
.end method

.method public e(I)V
    .locals 4

    .prologue
    .line 461
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_QUALITY:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lbl/xw;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 462
    return-void
.end method

.method protected e(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v0

    return v0
.end method

.method public f(I)V
    .locals 3

    .prologue
    .line 467
    packed-switch p1, :pswitch_data_16

    .line 478
    sget-object v0, Ltv/danmaku/videoplayer/core/videoview/AspectRatio;->RATIO_ADJUST_CONTENT:Ltv/danmaku/videoplayer/core/videoview/AspectRatio;

    .line 481
    :goto_5
    iget-object v1, p0, Lbl/xw;->a:Lbl/xf;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lbl/xf;->a(ILjava/lang/Object;)V

    .line 482
    return-void

    .line 469
    :pswitch_c
    sget-object v0, Ltv/danmaku/videoplayer/core/videoview/AspectRatio;->RATIO_16_9_INSIDE:Ltv/danmaku/videoplayer/core/videoview/AspectRatio;

    goto :goto_5

    .line 472
    :pswitch_f
    sget-object v0, Ltv/danmaku/videoplayer/core/videoview/AspectRatio;->RATIO_4_3_INSIDE:Ltv/danmaku/videoplayer/core/videoview/AspectRatio;

    goto :goto_5

    .line 475
    :pswitch_12
    sget-object v0, Ltv/danmaku/videoplayer/core/videoview/AspectRatio;->RATIO_ADJUST_SCREEN:Ltv/danmaku/videoplayer/core/videoview/AspectRatio;

    goto :goto_5

    .line 467
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

    .line 149
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

    const-string v4, ", controlTarget="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lbl/xw;->controlTarget:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 152
    iget-object v1, p0, Lbl/xw;->controlTarget:Ljava/lang/String;

    const-string v3, "ebook"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_56

    .line 153
    const-string v0, "EbookReader"

    const-string v1, "xw.f: \u63a7\u5236\u76ee\u6807\u4e0d\u662f\u7535\u5b50\u4e66\uff0c\u4e0d\u5904\u7406\u6309\u952e"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v0

    .line 254
    :goto_55
    return v0

    .line 158
    :cond_56
    invoke-virtual {p0}, Lbl/xw;->isEbookReadingContent()Z

    move-result v1

    if-eqz v1, :cond_1e1

    .line 159
    const-string v1, "EbookReader"

    const-string v3, "xw.f: \u5728\u7535\u5b50\u4e66\u9605\u8bfb\u5185\u5bb9\u9875\u9762"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v1, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_a5

    .line 163
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

    .line 164
    invoke-virtual {v4}, Landroid/webkit/WebView;->getScrollY()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", contentHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    .line 165
    invoke-virtual {v4}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 163
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_a5
    const/16 v1, 0x13

    if-ne p1, v1, :cond_b8

    .line 170
    const-string v1, "EbookReader"

    const-string v3, "xw.f: \u7535\u5b50\u4e66\u9605\u8bfb\u9875\u9762\uff1a\u5411\u4e0a\u6eda\u52a8"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v1, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    const/16 v3, -0xc8

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->scrollBy(II)V

    goto :goto_55

    .line 175
    :cond_b8
    const/16 v1, 0x14

    if-ne p1, v1, :cond_cb

    .line 176
    const-string v1, "EbookReader"

    const-string v3, "xw.f: \u7535\u5b50\u4e66\u9605\u8bfb\u9875\u9762\uff1a\u5411\u4e0b\u6eda\u52a8"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v1, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    const/16 v3, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->scrollBy(II)V

    goto :goto_55

    .line 182
    :cond_cb
    const/16 v1, 0x15

    if-ne p1, v1, :cond_13c

    .line 183
    iget-object v1, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    .line 184
    iget-object v3, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScrollY()I

    move-result v3

    .line 185
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

    .line 188
    if-nez v3, :cond_122

    .line 190
    iget-object v1, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    if-eqz v1, :cond_119

    iget v1, p0, Lbl/xw;->currentChapterIndex:I

    if-lez v1, :cond_119

    .line 191
    const-string v1, "EbookReader"

    const-string v2, "xw.f: \u5230\u8fbe\u7ae0\u8282\u9876\u90e8\uff0c\u8df3\u8f6c\u5230\u4e0a\u4e00\u7ae0\u8282\u7684\u5e95\u90e8"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v1, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    iget v2, p0, Lbl/xw;->currentChapterIndex:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v1, v2, v0}, Lbl/xw;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;IZ)V

    goto/16 :goto_55

    .line 196
    :cond_119
    const-string v1, "EbookReader"

    const-string v2, "xw.f: \u5df2\u7ecf\u5728\u7b2c\u4e00\u7ae0\uff0c\u65e0\u6cd5\u5411\u524d\u7ffb\u9875"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_55

    .line 202
    :cond_122
    if-lez v1, :cond_12c

    .line 203
    iget-object v3, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    neg-int v1, v1

    invoke-virtual {v3, v2, v1}, Landroid/webkit/WebView;->scrollBy(II)V

    goto/16 :goto_55

    .line 206
    :cond_12c
    const-string v1, "EbookReader"

    const-string v3, "xw.f: WebView height\u4e3a0\uff0c\u4f7f\u7528\u9ed8\u8ba4\u503c800"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v1, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    const/16 v3, -0x320

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->scrollBy(II)V

    goto/16 :goto_55

    .line 212
    :cond_13c
    const/16 v1, 0x16

    if-ne p1, v1, :cond_1e1

    .line 213
    iget-object v1, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHeight()I

    move-result v3

    .line 214
    iget-object v1, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v1

    .line 215
    iget-object v4, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v4

    .line 216
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

    .line 220
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 221
    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 222
    add-int/2addr v1, v3

    add-int/lit8 v4, v4, -0xa

    if-lt v1, v4, :cond_1bd

    move v1, v0

    .line 224
    :goto_195
    if-eqz v1, :cond_1c8

    .line 226
    iget-object v1, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    if-eqz v1, :cond_1bf

    iget v1, p0, Lbl/xw;->currentChapterIndex:I

    iget-object v3, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    invoke-virtual {v3}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1bf

    .line 227
    const-string v1, "EbookReader"

    const-string v3, "xw.f: \u5230\u8fbe\u7ae0\u8282\u5e95\u90e8\uff0c\u8df3\u8f6c\u5230\u4e0b\u4e00\u7ae0\u8282\u7684\u9876\u90e8"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v1, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    iget v3, p0, Lbl/xw;->currentChapterIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v1, v3, v2}, Lbl/xw;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;IZ)V

    goto/16 :goto_55

    :cond_1bd
    move v1, v2

    .line 222
    goto :goto_195

    .line 232
    :cond_1bf
    const-string v1, "EbookReader"

    const-string v2, "xw.f: \u5df2\u7ecf\u5728\u6700\u540e\u4e00\u7ae0\uff0c\u65e0\u6cd5\u5411\u540e\u7ffb\u9875"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_55

    .line 238
    :cond_1c8
    if-lez v3, :cond_1d1

    .line 239
    iget-object v1, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->scrollBy(II)V

    goto/16 :goto_55

    .line 242
    :cond_1d1
    const-string v1, "EbookReader"

    const-string v3, "xw.f: WebView height\u4e3a0\uff0c\u4f7f\u7528\u9ed8\u8ba4\u503c800"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v1, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    const/16 v3, 0x320

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->scrollBy(II)V

    goto/16 :goto_55

    .line 249
    :cond_1e1
    const/16 v1, 0x17

    if-eq p1, v1, :cond_1ed

    const/16 v1, 0x42

    if-eq p1, v1, :cond_1ed

    const/16 v1, 0xa0

    if-ne p1, v1, :cond_202

    :cond_1ed
    iget-boolean v1, p0, Lbl/xw;->f:Z

    if-nez v1, :cond_202

    .line 250
    iput-boolean v0, p0, Lbl/xw;->f:Z

    .line 251
    iget-object v0, p0, Lbl/xw;->g:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/xw;->a(Ljava/lang/Runnable;)V

    .line 252
    iget-object v0, p0, Lbl/xw;->g:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lbl/xw;->a(Ljava/lang/Runnable;J)V

    .line 254
    :cond_202
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v0

    goto/16 :goto_55
.end method

.method public g(ILandroid/view/KeyEvent;)Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/16 v8, 0x14

    const/16 v7, 0x13

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 259
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xw.g: \u6536\u5230\u6309\u952e "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", isEbookPanelShown="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lbl/xw;->isEbookPanelShown:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", controlTarget="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lbl/xw;->controlTarget:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", R()="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-boolean v0, p0, Lbl/xw;->isEbookPanelShown:Z

    if-eqz v0, :cond_284

    iget-object v0, p0, Lbl/xw;->controlTarget:Ljava/lang/String;

    const-string v1, "ebook"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_284

    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v0

    if-nez v0, :cond_284

    .line 263
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xw.g: \u7535\u5b50\u4e66\u6a21\u5f0f\u62e6\u622a\u6309\u952e: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v0, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    if-eqz v0, :cond_9e

    iget-object v0, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 267
    const-string v0, "EbookReader"

    const-string v1, "xw.g: \u7ae0\u8282\u5217\u8868\u663e\u793a\u4e2d"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/16 v0, 0x17

    if-eq p1, v0, :cond_95

    const/16 v0, 0x42

    if-eq p1, v0, :cond_95

    const/16 v0, 0xa0

    if-eq p1, v0, :cond_95

    if-eq p1, v7, :cond_95

    if-ne p1, v8, :cond_9e

    .line 273
    :cond_95
    const-string v0, "EbookReader"

    const-string v1, "xw.g: \u7ae0\u8282\u5217\u8868\u663e\u793a\uff0c\u4e0d\u62e6\u622a\u65b9\u5411\u952e\u548c\u786e\u8ba4\u952e"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 432
    :cond_9d
    :goto_9d
    return v2

    .line 280
    :cond_9e
    iget-object v0, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    if-eqz v0, :cond_aa

    iget-object v0, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isShown()Z

    move-result v0

    if-nez v0, :cond_12c

    :cond_aa
    iget-boolean v0, p0, Lbl/xw;->isFileChooserShown:Z

    if-nez v0, :cond_12c

    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_12c

    move v0, v2

    .line 284
    :goto_b3
    const-string v4, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xw.g: isReadingContent="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", chapterListView="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    if-eqz v1, :cond_12e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not null, shown="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    .line 285
    invoke-virtual {v6}, Landroid/widget/ListView;->isShown()Z

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_e7
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", isFileChooserShown="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v5, p0, Lbl/xw;->isFileChooserShown:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", ebookWebView="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_131

    const-string v1, "not null"

    :goto_103
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 284
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    if-eqz v0, :cond_134

    .line 290
    const-string v0, "EbookReader"

    const-string v1, "xw.g: \u5728\u9605\u8bfb\u5185\u5bb9\u9875\u9762"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    if-eq p1, v7, :cond_123

    if-eq p1, v8, :cond_123

    const/16 v0, 0x15

    if-eq p1, v0, :cond_123

    const/16 v0, 0x16

    if-ne p1, v0, :cond_134

    .line 298
    :cond_123
    const-string v0, "EbookReader"

    const-string v1, "xw.g: \u65b9\u5411\u952e\u5df2\u7531xw.f()\u5904\u7406\uff0c\u76f4\u63a5\u8fd4\u56detrue"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9d

    :cond_12c
    move v0, v3

    .line 280
    goto :goto_b3

    .line 285
    :cond_12e
    const-string v1, "null"

    goto :goto_e7

    :cond_131
    const-string v1, "null"

    goto :goto_103

    .line 304
    :cond_134
    const/16 v0, 0x52

    if-ne p1, v0, :cond_15e

    .line 306
    iget-boolean v0, p0, Lbl/xw;->isChapterListShown:Z

    if-eqz v0, :cond_145

    .line 307
    const-string v0, "EbookReader"

    const-string v1, "\u7ae0\u8282\u5217\u8868\u663e\u793a\u4e2d\uff0c\u4e0d\u54cd\u5e94\u83dc\u5355\u952e"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9d

    .line 311
    :cond_145
    iget-boolean v0, p0, Lbl/xw;->isFileChooserShown:Z

    if-eqz v0, :cond_152

    .line 312
    const-string v0, "EbookReader"

    const-string v1, "\u6587\u4ef6\u9009\u62e9\u5217\u8868\u663e\u793a\u4e2d\uff0c\u4e0d\u54cd\u5e94\u83dc\u5355\u952e"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9d

    .line 316
    :cond_152
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u6a21\u5f0f\u4e0b\u6253\u5f00\u53f3\u4fa7\u83dc\u5355"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-virtual {p0, v2}, Lbl/xw;->d(Z)V

    goto/16 :goto_9d

    .line 322
    :cond_15e
    const/4 v0, 0x4

    if-ne p1, v0, :cond_9d

    .line 323
    iget-boolean v0, p0, Lbl/xw;->isChapterListShown:Z

    if-eqz v0, :cond_208

    .line 325
    iget-object v0, p0, Lbl/xw;->chapterNavigationStack:Ljava/util/Stack;

    if-eqz v0, :cond_1fc

    iget-object v0, p0, Lbl/xw;->chapterNavigationStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1fc

    .line 327
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8fd4\u56de\u4e0a\u4e00\u7ea7\u7ae0\u8282\u5217\u8868\uff0c\u6808\u5927\u5c0f: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lbl/xw;->chapterNavigationStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Lbl/xw;->chapterNavigationStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lbl/xw;->currentChapterList:Ljava/util/List;

    .line 331
    iget-object v0, p0, Lbl/xw;->chapterNavigationStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1ab

    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, Lbl/xw;->parentChapterTitle:Ljava/lang/String;

    .line 354
    :cond_1a4
    :goto_1a4
    iget-object v0, p0, Lbl/xw;->currentChapterList:Ljava/util/List;

    invoke-direct {p0, v0}, Lbl/xw;->createChapterListView(Ljava/util/List;)V

    goto/16 :goto_9d

    .line 337
    :cond_1ab
    iget-object v0, p0, Lbl/xw;->chapterNavigationStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 338
    if-eqz v0, :cond_1a4

    iget-object v1, p0, Lbl/xw;->currentChapterList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1a4

    .line 340
    iget-object v1, p0, Lbl/xw;->currentChapterList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/ebook/model/Chapter;

    invoke-virtual {v1}, Lcom/bilibili/tv/ebook/model/Chapter;->getChapterIndex()I

    move-result v4

    .line 341
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1cd
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ebook/model/Chapter;

    .line 342
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getChapterIndex()I

    move-result v1

    if-ge v1, v4, :cond_1cd

    .line 344
    invoke-direct {p0, v0}, Lbl/xw;->getChildChapters(Lcom/bilibili/tv/ebook/model/Chapter;)Ljava/util/List;

    move-result-object v1

    .line 345
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1cd

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/ebook/model/Chapter;

    invoke-virtual {v1}, Lcom/bilibili/tv/ebook/model/Chapter;->getChapterIndex()I

    move-result v1

    if-ne v1, v4, :cond_1cd

    .line 346
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbl/xw;->parentChapterTitle:Ljava/lang/String;

    goto :goto_1a4

    .line 357
    :cond_1fc
    const-string v0, "EbookReader"

    const-string v1, "\u5173\u95ed\u7ae0\u8282\u5217\u8868"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-direct {p0}, Lbl/xw;->hideChapterList()V

    goto/16 :goto_9d

    .line 361
    :cond_208
    iget-boolean v0, p0, Lbl/xw;->isFileChooserShown:Z

    if-eqz v0, :cond_218

    .line 363
    const-string v0, "EbookReader"

    const-string v1, "\u5173\u95ed\u6587\u4ef6\u9009\u62e9\u5668\uff0c\u56de\u5230\u7535\u5b50\u4e66\u9ed8\u8ba4\u754c\u9762"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-direct {p0}, Lbl/xw;->hideFileChooser()V

    goto/16 :goto_9d

    .line 366
    :cond_218
    iget-boolean v0, p0, Lbl/xw;->isReadingBook:Z

    if-eqz v0, :cond_250

    .line 368
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 369
    iget-wide v4, p0, Lbl/xw;->lastBackPressTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x7d0

    cmp-long v4, v4, v6

    if-gez v4, :cond_238

    .line 371
    const-string v0, "EbookReader"

    const-string v1, "\u9605\u8bfb\u9875\u9762\u53cc\u51fb\u8fd4\u56de\uff0c\u5173\u95ed\u5f53\u524d\u4e66\u7c4d\uff0c\u56de\u5230\u7535\u5b50\u4e66\u9996\u9875"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iput-wide v10, p0, Lbl/xw;->lastBackPressTime:J

    .line 373
    invoke-virtual {p0}, Lbl/xw;->closeCurrentBook()V

    goto/16 :goto_9d

    .line 377
    :cond_238
    iput-wide v0, p0, Lbl/xw;->lastBackPressTime:J

    .line 378
    const-string v0, "EbookReader"

    const-string v1, "\u9605\u8bfb\u9875\u9762\u7b2c\u4e00\u6b21\u6309\u8fd4\u56de\u952e\uff0c\u663e\u793a\u63d0\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u518d\u6309\u4e00\u6b21\u5173\u95ed\u5f53\u524d\u4e66\u7c4d"

    .line 379
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 383
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_9d

    .line 388
    :cond_250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 389
    iget-wide v4, p0, Lbl/xw;->lastBackPressTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x7d0

    cmp-long v4, v4, v6

    if-gez v4, :cond_26c

    .line 391
    const-string v0, "EbookReader"

    const-string v1, "\u9996\u9875\u53cc\u51fb\u8fd4\u56de\uff0c\u9000\u51fa\u7535\u5b50\u4e66\u6a21\u5f0f"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iput-wide v10, p0, Lbl/xw;->lastBackPressTime:J

    .line 393
    invoke-virtual {p0}, Lbl/xw;->openEbookReader()V

    goto/16 :goto_9d

    .line 397
    :cond_26c
    iput-wide v0, p0, Lbl/xw;->lastBackPressTime:J

    .line 398
    const-string v0, "EbookReader"

    const-string v1, "\u9996\u9875\u7b2c\u4e00\u6b21\u6309\u8fd4\u56de\u952e\uff0c\u663e\u793a\u63d0\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u518d\u6309\u4e00\u6b21\u9000\u51fa\u7535\u5b50\u4e66\u6a21\u5f0f"

    .line 399
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 403
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_9d

    .line 414
    :cond_284
    sparse-switch p1, :sswitch_data_2b8

    .line 428
    iget-boolean v0, p0, Lbl/xw;->f:Z

    if-eqz v0, :cond_290

    .line 429
    iget-object v0, p0, Lbl/xw;->g:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/xw;->a(Ljava/lang/Runnable;)V

    .line 431
    :cond_290
    iput-boolean v3, p0, Lbl/xw;->f:Z

    .line 432
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v2

    goto/16 :goto_9d

    .line 416
    :sswitch_298
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v0

    if-eqz v0, :cond_2a3

    .line 417
    invoke-virtual {p0, v3}, Lbl/xw;->d(Z)V

    goto/16 :goto_9d

    :cond_2a3
    move v2, v3

    .line 420
    goto/16 :goto_9d

    .line 422
    :sswitch_2a6
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v0

    if-nez v0, :cond_2ad

    move v3, v2

    :cond_2ad
    invoke-virtual {p0, v3}, Lbl/xw;->d(Z)V

    goto/16 :goto_9d

    .line 426
    :sswitch_2b2
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v2

    goto/16 :goto_9d

    .line 414
    :sswitch_data_2b8
    .sparse-switch
        0x4 -> :sswitch_298
        0x13 -> :sswitch_2b2
        0x14 -> :sswitch_2b2
        0x52 -> :sswitch_2a6
    .end sparse-switch
.end method

.method public isControlEbook()Z
    .locals 2

    .prologue
    .line 535
    iget-boolean v0, p0, Lbl/xw;->isEbookPanelShown:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lbl/xw;->controlTarget:Ljava/lang/String;

    const-string v1, "ebook"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isEbookMode()Z
    .locals 1

    .prologue
    .line 512
    iget-boolean v0, p0, Lbl/xw;->isEbookPanelShown:Z

    return v0
.end method

.method public isEbookReadingContent()Z
    .locals 1

    .prologue
    .line 526
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
    .line 519
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v0

    return v0
.end method

.method public jumpToChapter(I)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 771
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

    .line 793
    :cond_18
    :goto_18
    return-void

    .line 775
    :cond_19
    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v0

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->view_points:Lorg/json/JSONArray;

    .line 778
    if-ltz p1, :cond_18

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge p1, v3, :cond_18

    .line 782
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 783
    if-eqz v0, :cond_18

    .line 784
    const-string v3, "from"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 785
    mul-int/lit16 v3, v0, 0x3e8

    .line 786
    invoke-virtual {p0}, Lbl/xw;->x()I

    move-result v4

    .line 790
    if-le v3, v4, :cond_62

    move v0, v1

    .line 791
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

    .line 790
    goto :goto_44
.end method

.method public onEbookFileSelected(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1580
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

    .line 1582
    if-eqz p1, :cond_20

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1583
    :cond_20
    const-string v0, "EbookReader"

    const-string v1, "\u6587\u4ef6\u8def\u5f84\u4e3a\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    :goto_27
    return-void

    .line 1588
    :cond_28
    iget-boolean v0, p0, Lbl/xw;->isLoadingEbook:Z

    if-eqz v0, :cond_42

    .line 1589
    const-string v0, "EbookReader"

    const-string v1, "\u6b63\u5728\u52a0\u8f7d\u7535\u5b50\u4e66\uff0c\u8bf7\u7a0d\u5019..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u52a0\u8f7d\uff0c\u8bf7\u7a0d\u5019..."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1592
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_27

    .line 1597
    :cond_42
    invoke-direct {p0}, Lbl/xw;->showLoadingIndicator()V

    .line 1600
    invoke-direct {p0, p1}, Lbl/xw;->parseAndDisplayEbook(Ljava/lang/String;)V

    goto :goto_27
.end method

.method public onInfo2(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIJ)Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuClosed()V
    .locals 2

    .prologue
    .line 848
    iget-boolean v0, p0, Lbl/xw;->isEbookPanelShown:Z

    if-eqz v0, :cond_33

    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_33

    .line 849
    const-string v0, "EbookReader"

    const-string v1, "onMenuClosed: \u6062\u590d\u663e\u793a\u7535\u5b50\u4e66\u9762\u677f"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 853
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 854
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    new-instance v1, Lbl/xw$4;

    invoke-direct {v1, p0}, Lbl/xw$4;-><init>(Lbl/xw;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 863
    :cond_33
    return-void
.end method

.method public openEbookFileChooser()V
    .locals 4

    .prologue
    .line 933
    const-string v0, "EbookReader"

    const-string v1, "openEbookFileChooser() called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    .line 936
    if-nez v0, :cond_15

    .line 937
    const-string v0, "EbookReader"

    const-string v1, "Activity is null, cannot open file chooser"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    :goto_14
    return-void

    .line 943
    :cond_15
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 944
    const-string v0, "EbookReader"

    const-string v1, "\u53f3\u4fa7\u83dc\u5355\u6b63\u5728\u663e\u793a\uff0c\u5148\u5173\u95ed\u83dc\u5355"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbl/xw;->d(Z)V

    .line 947
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lbl/xw$6;

    invoke-direct {v1, p0}, Lbl/xw$6;-><init>(Lbl/xw;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_14

    .line 955
    :cond_36
    invoke-direct {p0}, Lbl/xw;->showFileChooserInPanel()V

    goto :goto_14
.end method

.method public openEbookReader()V
    .locals 4

    .prologue
    .line 906
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

    .line 908
    iget-boolean v0, p0, Lbl/xw;->isEbookPanelShown:Z

    if-eqz v0, :cond_22

    .line 910
    invoke-direct {p0}, Lbl/xw;->closeEbookPanel()V

    .line 929
    :goto_21
    return-void

    .line 914
    :cond_22
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 915
    const-string v0, "EbookReader"

    const-string v1, "\u53f3\u4fa7\u83dc\u5355\u6b63\u5728\u663e\u793a\uff0c\u5148\u5173\u95ed\u83dc\u5355"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbl/xw;->d(Z)V

    .line 918
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lbl/xw$5;

    invoke-direct {v1, p0}, Lbl/xw$5;-><init>(Lbl/xw;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_21

    .line 926
    :cond_43
    invoke-direct {p0}, Lbl/xw;->showEbookPanel()V

    goto :goto_21
.end method

.method public refresh_subtitle()V
    .locals 2

    .prologue
    .line 102
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_EPISODE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lbl/xw;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 103
    return-void
.end method

.method public set_audio_balance_level(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2888
    const-string v1, "off"

    .line 2889
    sget-object v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->OFF:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    .line 2890
    packed-switch p1, :pswitch_data_62

    .line 2904
    :goto_8
    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lbl/abd;->set_audio_balance_level(Landroid/content/Context;Ljava/lang/String;)V

    .line 2906
    invoke-virtual {p0}, Lbl/xw;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 2907
    invoke-virtual {p0}, Lbl/xw;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v1

    const-string v2, "SetAudioBalanceLevel"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->act(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2910
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

    .line 2911
    return-void

    .line 2892
    :pswitch_53
    const-string v1, "off"

    .line 2893
    sget-object v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->OFF:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    goto :goto_8

    .line 2896
    :pswitch_58
    const-string v1, "standard"

    .line 2897
    sget-object v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->STANDARD:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    goto :goto_8

    .line 2900
    :pswitch_5d
    const-string v1, "high_dynamic"

    .line 2901
    sget-object v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->HIGH_DYNAMIC:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    goto :goto_8

    .line 2890
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
    .line 455
    iget-object v1, p0, Lbl/xw;->a:Lbl/xf;

    const/4 v2, 0x5

    if-lez p1, :cond_19

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lbl/xf;->a(ILjava/lang/Object;)V

    .line 456
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lbl/abd;->set_danmaku_type(Landroid/content/Context;I)V

    .line 457
    return-void

    .line 455
    :cond_19
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public set_ebook_font_size(F)V
    .locals 3

    .prologue
    .line 867
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set_ebook_font_size: fontSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebook_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 871
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "font_size"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 872
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5b57\u4f53\u5927\u5c0f\u5df2\u4fdd\u5b58: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_53

    iget-boolean v0, p0, Lbl/xw;->isReadingBook:Z

    if-eqz v0, :cond_53

    .line 876
    invoke-direct {p0, p1}, Lbl/xw;->applyFontSizeToWebView(F)V

    .line 878
    :cond_53
    return-void
.end method

.method public set_subtitle_size(F)V
    .locals 1

    .prologue
    .line 498
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lbl/abd;->set_subtitle_size(Landroid/content/Context;F)V

    .line 499
    invoke-virtual {p0}, Lbl/xw;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 500
    invoke-virtual {p0}, Lbl/xw;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->refreshSubtitle()V

    .line 502
    :cond_18
    return-void
.end method

.method public showChapterList()V
    .locals 4

    .prologue
    .line 1926
    iget-object v0, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_22

    .line 1927
    :cond_c
    const-string v0, "EbookReader"

    const-string v1, "\u65e0\u4e66\u7c4d\u6570\u636e\uff0c\u65e0\u6cd5\u663e\u793a\u7ae0\u8282\u5217\u8868"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u65e0\u7ae0\u8282\u4fe1\u606f"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1930
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1952
    :goto_21
    return-void

    .line 1934
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

    .line 1935
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xw;->isChapterListShown:Z

    .line 1938
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lbl/xw;->chapterNavigationStack:Ljava/util/Stack;

    .line 1939
    const/4 v0, 0x0

    iput-object v0, p0, Lbl/xw;->parentChapterTitle:Ljava/lang/String;

    .line 1942
    invoke-direct {p0}, Lbl/xw;->getRootChapters()Ljava/util/List;

    move-result-object v0

    .line 1943
    iput-object v0, p0, Lbl/xw;->currentChapterList:Ljava/util/List;

    .line 1946
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lbl/xw$22;

    invoke-direct {v1, p0}, Lbl/xw$22;-><init>(Lbl/xw;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_21
.end method

.method public showSkipSettingDialog()V
    .locals 6

    .prologue
    .line 815
    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v0

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    if-nez v0, :cond_11

    .line 843
    :cond_10
    :goto_10
    return-void

    .line 818
    :cond_11
    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v0

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    .line 819
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

    .line 820
    new-instance v1, Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lbl/xw;->x()I

    move-result v3

    int-to-long v4, v3

    invoke-direct {v1, v2, v0, v4, v5}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;-><init>(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;J)V

    .line 822
    new-instance v2, Lbl/xw$2;

    invoke-direct {v2, p0}, Lbl/xw$2;-><init>(Lbl/xw;)V

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->setOnPositionProvider(Lcom/bilibili/tv/player/widget/SkipSettingDialog$OnPositionProvider;)V

    .line 829
    new-instance v2, Lbl/xw$3;

    invoke-direct {v2, p0, v0}, Lbl/xw$3;-><init>(Lbl/xw;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->setOnSaveListener(Lcom/bilibili/tv/player/widget/SkipSettingDialog$OnSaveListener;)V

    .line 842
    invoke-virtual {v1}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->show()V

    goto :goto_10
.end method

.method public switchControlTarget(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2464
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5207\u6362\u63a7\u5236\u76ee\u6807: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2466
    iget-boolean v0, p0, Lbl/xw;->isEbookPanelShown:Z

    if-nez v0, :cond_26

    .line 2467
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u9762\u677f\u672a\u663e\u793a\uff0c\u65e0\u6cd5\u5207\u6362\u63a7\u5236\u76ee\u6807"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2549
    :goto_25
    return-void

    .line 2471
    :cond_26
    iput-object p1, p0, Lbl/xw;->controlTarget:Ljava/lang/String;

    .line 2474
    const-string v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 2476
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    if-eqz v0, :cond_54

    .line 2477
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 2478
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 2479
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setClickable(Z)V

    .line 2480
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 2481
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearFocus()V

    .line 2482
    const-string v0, "EbookReader"

    const-string v1, "\u7981\u7528\u4e66\u67b6\u5217\u8868\u6240\u6709\u4ea4\u4e92"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2484
    :cond_54
    iget-object v0, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    if-eqz v0, :cond_78

    .line 2485
    iget-object v0, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 2486
    iget-object v0, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 2487
    iget-object v0, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setClickable(Z)V

    .line 2488
    iget-object v0, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 2489
    iget-object v0, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearFocus()V

    .line 2490
    const-string v0, "EbookReader"

    const-string v1, "\u7981\u7528\u7ae0\u8282\u5217\u8868\u6240\u6709\u4ea4\u4e92"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2492
    :cond_78
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_92

    .line 2493
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 2494
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 2495
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setEnabled(Z)V

    .line 2496
    const-string v0, "EbookReader"

    const-string v1, "\u7981\u7528WebView\u6240\u6709\u4ea4\u4e92"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2498
    :cond_92
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_b1

    .line 2499
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 2500
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 2501
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 2502
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 2503
    const-string v0, "EbookReader"

    const-string v1, "\u7981\u7528\u7535\u5b50\u4e66\u9762\u677f\u6240\u6709\u4ea4\u4e92"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2539
    :cond_b1
    :goto_b1
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    .line 2540
    if-eqz v0, :cond_c8

    .line 2541
    const-string v1, "video"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    .line 2542
    const-string v1, "\u9065\u63a7\u5668\u64cd\u4f5c\u5df2\u5207\u6362\u5230\u89c6\u9891"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2548
    :cond_c8
    :goto_c8
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u63a7\u5236\u76ee\u6807\u5df2\u5207\u6362\u4e3a: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    .line 2507
    :cond_e2
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_101

    .line 2508
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 2509
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 2510
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 2511
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 2512
    const-string v0, "EbookReader"

    const-string v1, "\u542f\u7528\u7535\u5b50\u4e66\u9762\u677f\u6240\u6709\u4ea4\u4e92"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2514
    :cond_101
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    if-eqz v0, :cond_125

    .line 2515
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 2516
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 2517
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setClickable(Z)V

    .line 2518
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 2519
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 2520
    const-string v0, "EbookReader"

    const-string v1, "\u542f\u7528\u4e66\u67b6\u5217\u8868\u6240\u6709\u4ea4\u4e92"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2522
    :cond_125
    iget-object v0, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    if-eqz v0, :cond_149

    .line 2523
    iget-object v0, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 2524
    iget-object v0, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 2525
    iget-object v0, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setClickable(Z)V

    .line 2526
    iget-object v0, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 2527
    iget-object v0, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 2528
    const-string v0, "EbookReader"

    const-string v1, "\u542f\u7528\u7ae0\u8282\u5217\u8868\u6240\u6709\u4ea4\u4e92"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2530
    :cond_149
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_b1

    .line 2531
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 2532
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 2533
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setEnabled(Z)V

    .line 2534
    const-string v0, "EbookReader"

    const-string v1, "\u542f\u7528WebView\u6240\u6709\u4ea4\u4e92"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b1

    .line 2544
    :cond_165
    const-string v1, "\u9065\u63a7\u5668\u64cd\u4f5c\u5df2\u5207\u6362\u5230\u7535\u5b50\u4e66"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_c8
.end method

.method public switch_speed(F)V
    .locals 4

    .prologue
    .line 97
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_SPEED:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lbl/xw;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 98
    return-void
.end method
