.class public Lbl/xw;
.super Lbl/xh;
.source "xw.java"

# interfaces
.implements Lbl/bbb;
.implements Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbl/xw$SaveProgressHandler;
    }
.end annotation

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

.field private static final MAX_CACHED_CHAPTERS:I = 0x5

.field private static final REQUEST_CODE_STORAGE_PERMISSION:I = 0x3e9

.field private static final SAVE_PROGRESS_DELAY_MS:I = 0x12c

.field private static final TAG_EBOOK:Ljava/lang/String; = "EbookReader"

.field private static final TRIPLE_CLICK_INTERVAL:I = 0x320

.field private static final VIDEO_POSITION_BOTTOM_LEFT:I = 0x1

.field private static final VIDEO_POSITION_BOTTOM_RIGHT:I = 0x3

.field private static final VIDEO_POSITION_TOP_LEFT:I = 0x0

.field private static final VIDEO_POSITION_TOP_RIGHT:I = 0x2


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

.field private cachedChapters:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/bilibili/tv/ebook/model/Chapter;",
            ">;"
        }
    .end annotation
.end field

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

.field private confirmKeyClickCount:I

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

.field private ebookPanelPercent:I

.field private ebookWebView:Landroid/webkit/WebView;

.field private f:Z

.field private g:Ljava/lang/Runnable;

.field private isChapterListShown:Z

.field private isEbookPanelShown:Z

.field private isFileChooserShown:Z

.field private isLoadingEbook:Z

.field private volatile isParsingCancelled:Z

.field private isReadingBook:Z

.field private lastBackPressTime:J

.field private lastConfirmKeyPressTime:J

.field private loadingProgressBar:Landroid/widget/ProgressBar;

.field private loadingTextView:Landroid/widget/TextView;

.field private originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

.field private originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

.field private parentChapterTitle:Ljava/lang/String;

.field private parsingThread:Ljava/lang/Thread;

.field private saveProgressHandler:Lbl/xw$SaveProgressHandler;

.field private saveProgressRunnable:Ljava/lang/Runnable;

.field private videoPosition:I

.field private videoPositionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lbl/xh;-><init>()V

    .line 46
    iput-object v1, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    .line 47
    iput-boolean v2, p0, Lbl/xw;->isEbookPanelShown:Z

    .line 48
    iput-object v1, p0, Lbl/xw;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    .line 49
    iput-object v1, p0, Lbl/xw;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    .line 50
    iput-boolean v2, p0, Lbl/xw;->isFileChooserShown:Z

    .line 51
    iput-wide v4, p0, Lbl/xw;->lastBackPressTime:J

    .line 53
    iput-boolean v2, p0, Lbl/xw;->isLoadingEbook:Z

    .line 54
    iput-object v1, p0, Lbl/xw;->loadingProgressBar:Landroid/widget/ProgressBar;

    .line 55
    iput-object v1, p0, Lbl/xw;->loadingTextView:Landroid/widget/TextView;

    .line 56
    iput-boolean v2, p0, Lbl/xw;->isReadingBook:Z

    .line 59
    iput-object v1, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    .line 60
    iput v2, p0, Lbl/xw;->currentChapterIndex:I

    .line 61
    iput-object v1, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    .line 62
    iput-object v1, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    .line 63
    iput-boolean v2, p0, Lbl/xw;->isChapterListShown:Z

    .line 64
    iput-object v1, p0, Lbl/xw;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    .line 65
    iput-object v1, p0, Lbl/xw;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    .line 66
    iput-object v1, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    .line 67
    iput-object v1, p0, Lbl/xw;->bookshelfItems:Ljava/util/List;

    .line 68
    iput-object v1, p0, Lbl/xw;->currentBookFilePath:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lbl/xw;->cachedChapters:Ljava/util/LinkedList;

    .line 92
    iput-object v1, p0, Lbl/xw;->chapterNavigationStack:Ljava/util/Stack;

    .line 93
    iput-object v1, p0, Lbl/xw;->currentChapterList:Ljava/util/List;

    .line 94
    iput-object v1, p0, Lbl/xw;->parentChapterTitle:Ljava/lang/String;

    .line 97
    const-string v0, "video"

    iput-object v0, p0, Lbl/xw;->controlTarget:Ljava/lang/String;

    .line 98
    const/16 v0, 0x1e

    iput v0, p0, Lbl/xw;->ebookPanelPercent:I

    .line 105
    iput v2, p0, Lbl/xw;->videoPosition:I

    .line 106
    iput-object v1, p0, Lbl/xw;->videoPositionList:Ljava/util/List;

    .line 109
    iput-object v1, p0, Lbl/xw;->saveProgressRunnable:Ljava/lang/Runnable;

    .line 110
    iput-object v1, p0, Lbl/xw;->saveProgressHandler:Lbl/xw$SaveProgressHandler;

    .line 114
    iput-boolean v2, p0, Lbl/xw;->isParsingCancelled:Z

    .line 115
    iput-object v1, p0, Lbl/xw;->parsingThread:Ljava/lang/Thread;

    .line 118
    iput v2, p0, Lbl/xw;->confirmKeyClickCount:I

    .line 119
    iput-wide v4, p0, Lbl/xw;->lastConfirmKeyPressTime:J

    .line 122
    new-instance v0, Lbl/xw$1;

    invoke-direct {v0, p0}, Lbl/xw$1;-><init>(Lbl/xw;)V

    iput-object v0, p0, Lbl/xw;->g:Ljava/lang/Runnable;

    return-void
.end method

.method private R()Z
    .locals 1

    .prologue
    .line 567
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
    .locals 12

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 658
    invoke-virtual {p0}, Lbl/xw;->Q()V

    .line 659
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 662
    iget-boolean v0, p0, Lbl/xw;->isEbookPanelShown:Z

    if-eqz v0, :cond_24d

    iget-object v0, p0, Lbl/xw;->controlTarget:Ljava/lang/String;

    const-string v4, "ebook"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24d

    .line 664
    iget-boolean v0, p0, Lbl/xw;->isFileChooserShown:Z

    if-eqz v0, :cond_28

    .line 665
    const-string v0, "EbookReader"

    const-string v1, "\u6587\u4ef6\u5217\u8868\u9875\uff0c\u4e0d\u663e\u793a\u53f3\u4fa7\u83dc\u5355"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_27
    :goto_27
    return-void

    .line 669
    :cond_28
    iget-boolean v0, p0, Lbl/xw;->isChapterListShown:Z

    if-eqz v0, :cond_34

    .line 670
    const-string v0, "EbookReader"

    const-string v1, "\u7ae0\u8282\u5217\u8868\u9875\uff0c\u4e0d\u663e\u793a\u53f3\u4fa7\u83dc\u5355"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 675
    :cond_34
    const-string v0, "EbookReader"

    const-string v3, "\u7535\u5b50\u4e66\u6a21\u5f0f:\u8bbe\u7f6e\u4e13\u7528\u83dc\u5355"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 680
    iget-boolean v3, p0, Lbl/xw;->isReadingBook:Z

    if-nez v3, :cond_228

    .line 682
    const-string v3, "\u63a7\u5236\u89c6\u9891"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    const-string v3, "\u9009\u62e9\u6587\u4ef6"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 684
    const-string v3, "\u6e05\u7a7a\u4e66\u67b6"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    const-string v3, "\u5c4f\u5e55\u5360\u6bd4"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    const-string v3, "\u89c6\u9891\u4f4d\u7f6e"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 687
    const-string v3, "\u9000\u51fa\u9605\u8bfb"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 698
    :goto_62
    iget-object v3, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v3, v0, v2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->b(Ljava/util/List;I)V

    .line 699
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->setMenuIndexMap(Ljava/util/List;)V

    .line 702
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "ebook_settings"

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 705
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 706
    const-string v0, "25%"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 707
    const-string v0, "30%"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 708
    const-string v0, "35%"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    const-string v0, "40%"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 710
    const-string v0, "45%"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 711
    const-string v0, "50%"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 714
    const-string v0, "screen_percent"

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 715
    if-ltz v0, :cond_ac

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lt v0, v5, :cond_ad

    :cond_ac
    move v0, v1

    .line 720
    :cond_ad
    sput v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_percent_id:I

    .line 721
    mul-int/lit8 v1, v0, 0x5

    add-int/lit8 v1, v1, 0x19

    iput v1, p0, Lbl/xw;->ebookPanelPercent:I

    .line 723
    const-string v1, "EbookReader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u521d\u59cb\u5316\u5c4f\u5e55\u5360\u6bd4\u5217\u8868\uff0c\u5f53\u524d\u7d22\u5f15: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", \u5360\u6bd4: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    mul-int/lit8 v6, v0, 0x5

    add-int/lit8 v6, v6, 0x19

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    iget-object v1, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v1, v3, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_percent(Ljava/util/List;I)V

    .line 727
    iget-boolean v0, p0, Lbl/xw;->isReadingBook:Z

    if-nez v0, :cond_151

    .line 728
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbl/xw;->videoPositionList:Ljava/util/List;

    .line 729
    iget-object v0, p0, Lbl/xw;->videoPositionList:Ljava/util/List;

    const-string v1, "\u5de6\u4e0a"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 730
    iget-object v0, p0, Lbl/xw;->videoPositionList:Ljava/util/List;

    const-string v1, "\u5de6\u4e0b"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 731
    iget-object v0, p0, Lbl/xw;->videoPositionList:Ljava/util/List;

    const-string v1, "\u53f3\u4e0a"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 732
    iget-object v0, p0, Lbl/xw;->videoPositionList:Ljava/util/List;

    const-string v1, "\u53f3\u4e0b"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 735
    const-string v0, "video_position"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 736
    if-ltz v0, :cond_11d

    iget-object v1, p0, Lbl/xw;->videoPositionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_4ae

    :cond_11d
    move v1, v2

    .line 739
    :goto_11e
    iput v1, p0, Lbl/xw;->videoPosition:I

    .line 741
    const-string v3, "EbookReader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u521d\u59cb\u5316\u89c6\u9891\u4f4d\u7f6e\u5217\u8868\uff0c\u5f53\u524d\u7d22\u5f15: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", \u4f4d\u7f6e: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lbl/xw;->videoPositionList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    iget-object v3, p0, Lbl/xw;->videoPositionList:Ljava/util/List;

    invoke-virtual {v0, v3, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_video_position(Ljava/util/List;I)V

    .line 746
    :cond_151
    iget-boolean v0, p0, Lbl/xw;->isReadingBook:Z

    if-nez v0, :cond_15a

    .line 747
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->clearEbookReadingPageLists()V

    .line 751
    :cond_15a
    iget-boolean v0, p0, Lbl/xw;->isReadingBook:Z

    if-eqz v0, :cond_27

    .line 752
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 753
    const-string v0, "20"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 754
    const-string v0, "22"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 755
    const-string v0, "24"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    const-string v0, "26"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 757
    const-string v0, "28"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 758
    const-string v0, "30"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 759
    const-string v0, "32"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 760
    const-string v0, "34"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 761
    const-string v0, "36"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 762
    const-string v0, "38"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 765
    const-string v0, "font_size"

    const/high16 v1, 0x41e00000    # 28.0f

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v6

    .line 766
    const/4 v3, 0x4

    move v1, v2

    .line 767
    :goto_19f
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4ab

    .line 768
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v6

    if-nez v0, :cond_248

    .line 775
    :goto_1b7
    sput v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_id:I

    .line 777
    const-string v0, "EbookReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u521d\u59cb\u5316\u5b57\u4f53\u5927\u5c0f\u5217\u8868\uff0c\u5f53\u524d\u7d22\u5f15: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", \u5b57\u4f53\u5927\u5c0f: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    iput-object v5, v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    .line 782
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 783
    const-string v1, "System"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 784
    const-string v1, "Light"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 785
    const-string v1, "Dark"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 786
    const-string v1, "Sepia"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 787
    const-string v1, "Slate"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 788
    const-string v1, "OLED"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 791
    const-string v1, "color_theme_index"

    invoke-interface {v4, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 793
    sput v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_id:I

    .line 795
    const-string v2, "EbookReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u521d\u59cb\u5316\u914d\u8272\u65b9\u6848\u5217\u8868\uff0c\u5f53\u524d\u7d22\u5f15: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v1, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    iput-object v0, v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    goto/16 :goto_27

    .line 690
    :cond_228
    const-string v3, "\u63a7\u5236\u89c6\u9891"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 691
    const-string v3, "\u7ae0\u8282\u5217\u8868"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 692
    const-string v3, "\u5b57\u4f53\u5927\u5c0f"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    const-string v3, "\u914d\u8272\u65b9\u6848"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 694
    const-string v3, "\u5c4f\u5e55\u5360\u6bd4"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 695
    const-string v3, "\u5173\u95ed\u4e66\u7c4d"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_62

    .line 767
    :cond_248
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_19f

    .line 806
    :cond_24d
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    if-eqz v0, :cond_25e

    .line 807
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->clearEbookReadingPageLists()V

    .line 809
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    iput-object v5, v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    .line 810
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    iput-object v5, v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->video_position_list:Ljava/util/List;

    .line 813
    :cond_25e
    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_player_menu_config(Landroid/content/Context;)I

    move-result v4

    .line 814
    const v0, 0x7f020002

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 815
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 816
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 818
    const/16 v0, 0xd

    new-array v8, v0, [I

    fill-array-data v8, :array_4b2

    .line 825
    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->is_exo_player_selected(Landroid/content/Context;)Z

    move-result v9

    move v0, v2

    .line 827
    :goto_287
    array-length v10, v5

    if-ge v0, v10, :cond_2ae

    array-length v10, v8

    if-ge v0, v10, :cond_2ae

    .line 829
    aget v10, v8, v0

    const/16 v11, 0x800

    if-ne v10, v11, :cond_29c

    .line 830
    if-eqz v9, :cond_299

    and-int/lit16 v10, v4, 0x800

    if-nez v10, :cond_29c

    .line 827
    :cond_299
    :goto_299
    add-int/lit8 v0, v0, 0x1

    goto :goto_287

    .line 834
    :cond_29c
    aget v10, v8, v0

    and-int/2addr v10, v4

    if-eqz v10, :cond_299

    .line 835
    aget-object v10, v5, v0

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 836
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_299

    .line 842
    :cond_2ae
    and-int/lit16 v0, v4, 0x2000

    if-eqz v0, :cond_2e1

    .line 843
    iget-boolean v0, p0, Lbl/xw;->isEbookPanelShown:Z

    if-eqz v0, :cond_342

    .line 845
    const-string v0, "\u63a7\u5236\u7535\u5b50\u4e66"

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 850
    :goto_2bb
    array-length v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 851
    const-string v4, "EbookReader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u89c6\u9891\u53f3\u4fa7\u83dc\u5355\u9879\u5df2\u6dfb\u52a0: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v0, p0, Lbl/xw;->isEbookPanelShown:Z

    if-eqz v0, :cond_349

    const-string v0, "\u63a7\u5236\u7535\u5b50\u4e66"

    :goto_2d6
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    :cond_2e1
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v0, v6, v2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->b(Ljava/util/List;I)V

    .line 855
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->setMenuIndexMap(Ljava/util/List;)V

    .line 857
    iget-object v0, p0, Lbl/xw;->d:Ljava/util/List;

    if-nez v0, :cond_304

    .line 858
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbl/xw;->d:Ljava/util/List;

    .line 859
    iget-object v0, p0, Lbl/xw;->d:Ljava/util/List;

    const v4, 0x7f0c00f3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 860
    iput v2, p0, Lbl/xw;->e:I

    .line 862
    :cond_304
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    iget-object v4, p0, Lbl/xw;->d:Ljava/util/List;

    iget v5, p0, Lbl/xw;->e:I

    invoke-virtual {v0, v4, v5}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_quality(Ljava/util/List;I)V

    .line 863
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    const/high16 v4, 0x7f020000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lbl/abd;->get_danmaku_type(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_danmaku(Ljava/util/List;I)V

    .line 864
    new-instance v4, Ljava/util/ArrayList;

    sget-object v0, Lbl/abd;->a:[F

    array-length v0, v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 865
    sget-object v5, Lbl/abd;->a:[F

    array-length v6, v5

    move v0, v2

    :goto_334
    if-ge v0, v6, :cond_34c

    aget v7, v5, v0

    .line 866
    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 865
    add-int/lit8 v0, v0, 0x1

    goto :goto_334

    .line 848
    :cond_342
    const-string v0, "\u7535\u5b50\u4e66"

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2bb

    .line 851
    :cond_349
    const-string v0, "\u7535\u5b50\u4e66"

    goto :goto_2d6

    .line 868
    :cond_34c
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lbl/abd;->f(Landroid/content/Context;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_size(Ljava/util/List;I)V

    .line 869
    new-instance v4, Ljava/util/ArrayList;

    sget-object v0, Lbl/abd;->b:[F

    array-length v0, v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 870
    sget-object v5, Lbl/abd;->b:[F

    array-length v6, v5

    move v0, v2

    :goto_36d
    if-ge v0, v6, :cond_38e

    aget v7, v5, v0

    .line 871
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "f"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 870
    add-int/lit8 v0, v0, 0x1

    goto :goto_36d

    .line 873
    :cond_38e
    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->g(Landroid/content/Context;)F

    move-result v0

    .line 874
    iget-object v5, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "f"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v5, v4, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_alpha(Ljava/util/List;I)V

    .line 875
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    const v4, 0x7f020004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v0, v4, v5}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_ratio(Ljava/util/List;I)V

    .line 876
    new-instance v4, Ljava/util/ArrayList;

    sget-object v0, Lbl/abd;->speeds:[F

    array-length v0, v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 877
    sget-object v5, Lbl/abd;->speeds:[F

    array-length v6, v5

    move v0, v2

    :goto_3d3
    if-ge v0, v6, :cond_3f4

    aget v7, v5, v0

    .line 878
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 877
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d3

    .line 880
    :cond_3f4
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lbl/abd;->get_speed_id(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_speed(Ljava/util/List;I)V

    .line 881
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    const v4, 0x7f020005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lbl/abd;->get_mode_id(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_mode(Ljava/util/List;I)V

    .line 883
    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v0

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    .line 884
    iget-object v4, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v4, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->setResolveParams(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V

    .line 885
    iget-object v4, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->subtitle_info:Lorg/json/JSONObject;

    invoke-virtual {v4, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_subtitle(Lorg/json/JSONObject;)V

    .line 887
    new-instance v4, Ljava/util/ArrayList;

    sget-object v0, Lbl/abd;->a:[F

    array-length v0, v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 888
    sget-object v5, Lbl/abd;->a:[F

    array-length v6, v5

    move v0, v2

    :goto_43d
    if-ge v0, v6, :cond_44b

    aget v7, v5, v0

    .line 889
    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 888
    add-int/lit8 v0, v0, 0x1

    goto :goto_43d

    .line 891
    :cond_44b
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lbl/abd;->get_subtitle_size(Landroid/content/Context;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_subtitle_size(Ljava/util/List;I)V

    .line 894
    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v0

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->view_points:Lorg/json/JSONArray;

    .line 895
    iget-object v4, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v4, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_chapter(Lorg/json/JSONArray;)V

    .line 898
    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->is_exo_player_selected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 899
    const v0, 0x7f020007

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 900
    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lbl/abd;->get_audio_balance_level(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 902
    const-string v4, "standard"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49f

    .line 907
    :goto_494
    iget-object v2, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_audio_balance(Ljava/util/List;I)V

    goto/16 :goto_27

    .line 904
    :cond_49f
    const-string v1, "high_dynamic"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a9

    .line 905
    const/4 v1, 0x2

    goto :goto_494

    :cond_4a9
    move v1, v2

    goto :goto_494

    :cond_4ab
    move v1, v3

    goto/16 :goto_1b7

    :cond_4ae
    move v1, v0

    goto/16 :goto_11e

    .line 818
    nop

    :array_4b2
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

    .line 939
    invoke-virtual {p0}, Lbl/xw;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v0

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    .line 940
    if-eqz v0, :cond_f

    iget-object v1, v0, Lcom/bilibili/lib/media/resource/MediaResource;->a:Lcom/bilibili/lib/media/resource/VodIndex;

    if-nez v1, :cond_11

    :cond_f
    move v1, v2

    .line 953
    :cond_10
    :goto_10
    return v1

    .line 943
    :cond_11
    iget-object v1, v0, Lcom/bilibili/lib/media/resource/MediaResource;->a:Lcom/bilibili/lib/media/resource/VodIndex;

    iget-object v3, v1, Lcom/bilibili/lib/media/resource/VodIndex;->a:Ljava/util/ArrayList;

    .line 944
    invoke-virtual {v0}, Lcom/bilibili/lib/media/resource/MediaResource;->d()Lcom/bilibili/lib/media/resource/PlayIndex;

    move-result-object v4

    .line 945
    if-eqz v3, :cond_23

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_23

    if-nez v4, :cond_25

    :cond_23
    move v1, v2

    .line 946
    goto :goto_10

    .line 948
    :cond_25
    const/4 v0, 0x0

    move v1, v0

    :goto_27
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_49

    .line 949
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

    .line 948
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_27

    :cond_49
    move v1, v2

    .line 953
    goto :goto_10
.end method

.method static synthetic access$000(Lbl/xw;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lbl/xw;->saveReadingProgress()V

    return-void
.end method

.method static synthetic access$100(Lbl/xw;Landroid/app/Activity;II)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lbl/xw;->shrinkVideoView(Landroid/app/Activity;II)V

    return-void
.end method

.method static synthetic access$1000(Lbl/xw;)Ljava/util/List;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lbl/xw;->bookshelfItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lbl/xw;J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lbl/xw;->formatLastReadTime(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lbl/xw;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lbl/xw;->parseAndDisplayEbook(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lbl/xw;Lcom/bilibili/tv/ebook/model/BookshelfItem;I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lbl/xw;->showRemoveBookDialog(Lcom/bilibili/tv/ebook/model/BookshelfItem;I)V

    return-void
.end method

.method static synthetic access$1400(Lbl/xw;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lbl/xw;->isEbookPanelShown:Z

    return v0
.end method

.method static synthetic access$1500(Lbl/xw;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1600(Lbl/xw;Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lbl/xw;->loadFileList(Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$1700(Lbl/xw;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lbl/xw;->loadingProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1702(Lbl/xw;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lbl/xw;->loadingProgressBar:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic access$1800(Lbl/xw;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lbl/xw;->loadingTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1802(Lbl/xw;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lbl/xw;->loadingTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1900(Lbl/xw;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lbl/xw;->isParsingCancelled:Z

    return v0
.end method

.method static synthetic access$200(Lbl/xw;Landroid/app/Activity;II)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lbl/xw;->shrinkDanmakuView(Landroid/app/Activity;II)V

    return-void
.end method

.method static synthetic access$2000(Lbl/xw;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lbl/xw;->hideLoadingIndicator()V

    return-void
.end method

.method static synthetic access$2100(Lbl/xw;Lcom/bilibili/tv/ebook/model/Book;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lbl/xw;->restoreReadingProgress(Lcom/bilibili/tv/ebook/model/Book;)V

    return-void
.end method

.method static synthetic access$2202(Lbl/xw;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lbl/xw;->parsingThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$2300(Lbl/xw;Z)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lbl/xw;->handlePageTurn(Z)V

    return-void
.end method

.method static synthetic access$2400(Lbl/xw;F)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lbl/xw;->applyFontSizeToWebView(F)V

    return-void
.end method

.method static synthetic access$2500(Lbl/xw;I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lbl/xw;->applyColorThemeToWebView(I)V

    return-void
.end method

.method static synthetic access$2600(Lbl/xw;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lbl/xw;->scheduleSaveReadingProgress()V

    return-void
.end method

.method static synthetic access$2700(Lbl/xw;)Ljava/util/List;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lbl/xw;->currentChapterList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2702(Lbl/xw;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lbl/xw;->currentChapterList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2800(Lbl/xw;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lbl/xw;->createChapterListView(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$2900(Lbl/xw;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$300(Lbl/xw;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lbl/xw;->getEffectiveSkips(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lbl/xw;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lbl/xw;->parentChapterTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3002(Lbl/xw;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lbl/xw;->parentChapterTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3100(Lbl/xw;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$3102(Lbl/xw;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$3200(Lbl/xw;Lcom/bilibili/tv/ebook/model/Chapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lbl/xw;->getChildChapters(Lcom/bilibili/tv/ebook/model/Chapter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lbl/xw;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lbl/xw;->currentChapterIndex:I

    return v0
.end method

.method static synthetic access$3400(Lbl/xw;)Ljava/util/Stack;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lbl/xw;->chapterNavigationStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$3500(Lbl/xw;)Lcom/bilibili/tv/ebook/model/Book;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    return-object v0
.end method

.method static synthetic access$3600(Lbl/xw;Lcom/bilibili/tv/ebook/model/Book;I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lbl/xw;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;I)V

    return-void
.end method

.method static synthetic access$3700(Lbl/xw;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lbl/xw;->hideChapterList()V

    return-void
.end method

.method static synthetic access$3800(Lbl/xw;)Lcom/bilibili/tv/ebook/util/EbookCacheManager;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lbl/xw;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    return-object v0
.end method

.method static synthetic access$3900(Lbl/xw;)Lcom/bilibili/tv/ebook/util/BookshelfManager;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lbl/xw;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    return-object v0
.end method

.method static synthetic access$400(Lbl/xw;)Lbl/xj;
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lbl/xw;->getSkipHelper()Lbl/xj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Lbl/xw;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lbl/xw;->showBookshelfOrFileChooser()V

    return-void
.end method

.method static synthetic access$4100(Lbl/xw;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lbl/xw;->deleteBookCacheFiles(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4202(Lbl/xw;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lbl/xw;->saveProgressRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$500(Lbl/xw;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lbl/xw;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lbl/xw;->applyEbookPanelPercent()V

    return-void
.end method

.method static synthetic access$700(Lbl/xw;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lbl/xw;->applyVideoPosition()V

    return-void
.end method

.method static synthetic access$800(Lbl/xw;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lbl/xw;->showEbookPanel()V

    return-void
.end method

.method static synthetic access$900(Lbl/xw;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lbl/xw;->showFileChooserInPanel()V

    return-void
.end method

.method private addToBookshelf(Lcom/bilibili/tv/ebook/model/Book;Lcom/bilibili/tv/ebook/model/ReadingProgress;)V
    .locals 2

    .prologue
    .line 4722
    if-eqz p1, :cond_6

    iget-object v0, p0, Lbl/xw;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    if-nez v0, :cond_7

    .line 4728
    :cond_6
    :goto_6
    return-void

    .line 4727
    :cond_7
    iget-object v0, p0, Lbl/xw;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    iget-object v1, p0, Lbl/xw;->currentBookFilePath:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Lcom/bilibili/tv/ebook/util/BookshelfManager;->addToBookshelf(Lcom/bilibili/tv/ebook/model/Book;Lcom/bilibili/tv/ebook/model/ReadingProgress;Ljava/lang/String;)V

    goto :goto_6
.end method

.method private applyColorThemeToWebView(I)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const v7, 0xffffff

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1056
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_c

    .line 1088
    :goto_b
    return-void

    .line 1061
    :cond_c
    invoke-static {}, Lcom/bilibili/tv/ebook/model/ReaderTheme;->getBuiltInThemes()[Lcom/bilibili/tv/ebook/model/ReaderTheme;

    move-result-object v0

    aget-object v0, v0, p1

    .line 1062
    const-string v1, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5e94\u7528\u914d\u8272\u65b9\u6848\u5230WebView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/ReaderTheme;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \u80cc\u666f\u8272: #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1063
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/ReaderTheme;->getBackgroundColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \u6587\u5b57\u8272: #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1064
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/ReaderTheme;->getTextColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1062
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    const-string v1, "#%06X"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/ReaderTheme;->getBackgroundColor()I

    move-result v3

    and-int/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1068
    const-string v2, "#%06X"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/ReaderTheme;->getTextColor()I

    move-result v0

    and-int/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1071
    const-string v2, "document.body.style.backgroundColor=\'%s\';document.body.style.color=\'%s\';"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1076
    iget-object v3, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v2, v8}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 1079
    const-string v2, "var elements = document.querySelectorAll(\'*\');for (var i = 0; i < elements.length; i++) {  elements[i].style.backgroundColor=\'%s\';  elements[i].style.color=\'%s\';}"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1087
    iget-object v1, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0, v8}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto/16 :goto_b
.end method

.method private applyEbookPanelPercent()V
    .locals 5

    .prologue
    .line 1219
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    .line 1220
    if-eqz v0, :cond_a

    iget-boolean v1, p0, Lbl/xw;->isEbookPanelShown:Z

    if-nez v1, :cond_b

    .line 1247
    :cond_a
    :goto_a
    return-void

    .line 1224
    :cond_b
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1225
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1226
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1227
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1230
    iget v1, p0, Lbl/xw;->ebookPanelPercent:I

    mul-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x64

    .line 1231
    sub-int/2addr v0, v1

    .line 1233
    const-string v2, "EbookReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyEbookPanelPercent: percent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lbl/xw;->ebookPanelPercent:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%, ebookWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", videoWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    invoke-direct {p0, v0}, Lbl/xw;->updateVideoViewWidth(I)V

    .line 1240
    invoke-direct {p0, v0}, Lbl/xw;->updateDanmakuViewWidth(I)V

    .line 1243
    invoke-direct {p0, v0}, Lbl/xw;->updateSubtitleViewWidth(I)V

    .line 1246
    invoke-direct {p0, v1}, Lbl/xw;->updateEbookPanelWidth(I)V

    goto :goto_a
.end method

.method private applyFontSizeToWebView(F)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1032
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_8

    .line 1050
    :goto_7
    return-void

    .line 1036
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

    .line 1039
    const-string v0, "document.body.style.fontSize=\'%dpx\';"

    new-array v1, v4, [Ljava/lang/Object;

    float-to-int v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1040
    iget-object v1, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0, v5}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 1043
    const-string v0, "var elements = document.querySelectorAll(\'p, div, span\');for (var i = 0; i < elements.length; i++) {  elements[i].style.fontSize = \'%dpx\';}"

    new-array v1, v4, [Ljava/lang/Object;

    float-to-int v2, p1

    .line 1047
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 1043
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1049
    iget-object v1, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0, v5}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_7
.end method

.method private applyVideoPosition()V
    .locals 6

    .prologue
    .line 1184
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    .line 1185
    if-eqz v0, :cond_a

    iget-boolean v1, p0, Lbl/xw;->isEbookPanelShown:Z

    if-nez v1, :cond_b

    .line 1213
    :cond_a
    :goto_a
    return-void

    .line 1189
    :cond_b
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1190
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1191
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1192
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1194
    iget v1, p0, Lbl/xw;->ebookPanelPercent:I

    mul-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x64

    .line 1195
    sub-int v2, v0, v1

    .line 1197
    iget-object v0, p0, Lbl/xw;->videoPositionList:Ljava/util/List;

    if-eqz v0, :cond_7b

    iget v0, p0, Lbl/xw;->videoPosition:I

    if-ltz v0, :cond_7b

    iget v0, p0, Lbl/xw;->videoPosition:I

    iget-object v3, p0, Lbl/xw;->videoPositionList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7b

    iget-object v0, p0, Lbl/xw;->videoPositionList:Ljava/util/List;

    iget v3, p0, Lbl/xw;->videoPosition:I

    .line 1198
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1199
    :goto_42
    const-string v3, "EbookReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyVideoPosition: \u4f4d\u7f6e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", ebookWidth="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", videoWidth="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    invoke-direct {p0, v2}, Lbl/xw;->updateVideoViewWidth(I)V

    .line 1206
    invoke-direct {p0, v2}, Lbl/xw;->updateDanmakuViewWidth(I)V

    .line 1209
    invoke-direct {p0, v2}, Lbl/xw;->updateSubtitleViewWidth(I)V

    .line 1212
    invoke-direct {p0, v1}, Lbl/xw;->updateEbookPanelWidth(I)V

    goto :goto_a

    .line 1198
    :cond_7b
    const-string v0, "\u5de6\u4e0a"

    goto :goto_42
.end method

.method private cancelParsingTask()V
    .locals 1

    .prologue
    .line 2473
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xw;->isParsingCancelled:Z

    .line 2474
    iget-object v0, p0, Lbl/xw;->parsingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_f

    .line 2475
    iget-object v0, p0, Lbl/xw;->parsingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 2476
    const/4 v0, 0x0

    iput-object v0, p0, Lbl/xw;->parsingThread:Ljava/lang/Thread;

    .line 2478
    :cond_f
    return-void
.end method

.method private clearChapterCache()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4532
    iget-object v0, p0, Lbl/xw;->cachedChapters:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ebook/model/Chapter;

    .line 4533
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ebook/model/Chapter;->setHtmlContent(Ljava/lang/String;)V

    .line 4534
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ebook/model/Chapter;->setPlainTextContent(Ljava/lang/String;)V

    goto :goto_7

    .line 4536
    :cond_1a
    iget-object v0, p0, Lbl/xw;->cachedChapters:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 4537
    const-string v0, "EbookReader"

    const-string v1, "\u6240\u6709\u7ae0\u8282\u7f13\u5b58\u5df2\u6e05\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4538
    return-void
.end method

.method private closeEbookPanel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3818
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    .line 3819
    if-nez v0, :cond_10

    .line 3820
    const-string v0, "EbookReader"

    const-string v1, "Activity is null, cannot close ebook panel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3902
    :goto_f
    return-void

    .line 3824
    :cond_10
    const-string v1, "EbookReader"

    const-string v2, "\u5f00\u59cb\u5173\u95ed\u7535\u5b50\u4e66\u9762\u677f"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3827
    invoke-direct {p0}, Lbl/xw;->cancelParsingTask()V

    .line 3830
    invoke-direct {p0}, Lbl/xw;->saveReadingProgressImmediately()V

    .line 3833
    iget-object v1, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2f

    .line 3834
    iget-object v1, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3835
    const-string v1, "EbookReader"

    const-string v2, "\u7070\u8272\u80cc\u666f\u9762\u677f\u5df2\u9690\u85cf"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3839
    :cond_2f
    invoke-direct {p0, v0}, Lbl/xw;->restoreVideoView(Landroid/app/Activity;)V

    .line 3842
    invoke-direct {p0}, Lbl/xw;->destroyEbookWebView()V

    .line 3846
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_51

    .line 3847
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3848
    if-eqz v0, :cond_4f

    .line 3849
    iget-object v1, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3850
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u9762\u677f\u5df2\u4ece\u7236\u5bb9\u5668\u79fb\u9664"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3852
    :cond_4f
    iput-object v3, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    .line 3856
    :cond_51
    invoke-direct {p0}, Lbl/xw;->clearChapterCache()V

    .line 3859
    iget-object v0, p0, Lbl/xw;->saveProgressHandler:Lbl/xw$SaveProgressHandler;

    if-eqz v0, :cond_5f

    .line 3860
    iget-object v0, p0, Lbl/xw;->saveProgressHandler:Lbl/xw$SaveProgressHandler;

    invoke-virtual {v0, v3}, Lbl/xw$SaveProgressHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3861
    iput-object v3, p0, Lbl/xw;->saveProgressHandler:Lbl/xw$SaveProgressHandler;

    .line 3863
    :cond_5f
    iget-object v0, p0, Lbl/xw;->saveProgressRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_65

    .line 3864
    iput-object v3, p0, Lbl/xw;->saveProgressRunnable:Ljava/lang/Runnable;

    .line 3868
    :cond_65
    iput-boolean v4, p0, Lbl/xw;->isEbookPanelShown:Z

    .line 3869
    iput-boolean v4, p0, Lbl/xw;->isChapterListShown:Z

    .line 3870
    iput-boolean v4, p0, Lbl/xw;->isFileChooserShown:Z

    .line 3871
    iput-boolean v4, p0, Lbl/xw;->isLoadingEbook:Z

    .line 3872
    iput-boolean v4, p0, Lbl/xw;->isReadingBook:Z

    .line 3873
    iput-object v3, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    .line 3874
    iput v4, p0, Lbl/xw;->currentChapterIndex:I

    .line 3875
    iput-object v3, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    .line 3878
    iget-object v0, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    if-eqz v0, :cond_85

    .line 3879
    iget-object v0, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 3880
    iget-object v0, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3881
    iput-object v3, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    .line 3883
    :cond_85
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    if-eqz v0, :cond_95

    .line 3884
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 3885
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3886
    iput-object v3, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    .line 3889
    :cond_95
    iput-object v3, p0, Lbl/xw;->loadingProgressBar:Landroid/widget/ProgressBar;

    .line 3890
    iput-object v3, p0, Lbl/xw;->loadingTextView:Landroid/widget/TextView;

    .line 3891
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbl/xw;->lastBackPressTime:J

    .line 3892
    iput-object v3, p0, Lbl/xw;->currentBookFilePath:Ljava/lang/String;

    .line 3893
    const-string v0, "video"

    iput-object v0, p0, Lbl/xw;->controlTarget:Ljava/lang/String;

    .line 3897
    iput-object v3, p0, Lbl/xw;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    .line 3898
    iput-object v3, p0, Lbl/xw;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    .line 3899
    iput-object v3, p0, Lbl/xw;->bookshelfItems:Ljava/util/List;

    .line 3901
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u9762\u677f\u5df2\u5173\u95ed\uff0c\u6240\u6709\u72b6\u6001\u5df2\u6e05\u9664\uff0ccontrolTarget\u91cd\u7f6e\u4e3avideo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f
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
    .line 2796
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lbl/xw$28;

    invoke-direct {v1, p0, p1}, Lbl/xw$28;-><init>(Lbl/xw;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3013
    return-void
.end method

.method private deleteBookCacheFiles(Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 3607
    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_10

    .line 3608
    :cond_8
    const-string v0, "EbookReader"

    const-string v1, "bookId\u6216Activity\u4e3a\u7a7a\uff0c\u65e0\u6cd5\u5220\u9664\u7f13\u5b58"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3668
    :goto_f
    return-void

    .line 3613
    :cond_10
    :try_start_10
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v3

    .line 3614
    const/4 v2, 0x0

    .line 3615
    const-wide/16 v0, 0x0

    .line 3618
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "epub_cache/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3619
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 3620
    invoke-direct {p0, v4}, Lbl/xw;->getDirectorySize(Ljava/io/File;)J

    move-result-wide v6

    .line 3621
    invoke-direct {p0, v4}, Lbl/xw;->deleteDirectory(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 3622
    const/4 v2, 0x1

    .line 3623
    add-long/2addr v0, v6

    .line 3624
    const-string v5, "EbookReader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u5df2\u5220\u9664EPUB\u7f13\u5b58\u76ee\u5f55: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", \u5927\u5c0f: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3625
    invoke-direct {p0, v6, v7}, Lbl/xw;->formatFileSize(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3624
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3630
    :cond_6f
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mobi_resources/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3631
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_c4

    .line 3632
    invoke-direct {p0, v4}, Lbl/xw;->getDirectorySize(Ljava/io/File;)J

    move-result-wide v6

    .line 3633
    invoke-direct {p0, v4}, Lbl/xw;->deleteDirectory(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_c4

    .line 3634
    add-int/lit8 v2, v2, 0x1

    .line 3635
    add-long/2addr v0, v6

    .line 3636
    const-string v5, "EbookReader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u5df2\u5220\u9664MOBI\u7f13\u5b58\u76ee\u5f55: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", \u5927\u5c0f: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3637
    invoke-direct {p0, v6, v7}, Lbl/xw;->formatFileSize(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3636
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3642
    :cond_c4
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "epub_cache/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/metadata.json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3643
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_111

    .line 3644
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 3645
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_111

    .line 3646
    add-int/lit8 v2, v2, 0x1

    .line 3647
    add-long/2addr v0, v6

    .line 3648
    const-string v5, "EbookReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5df2\u5220\u9664EPUB\u5143\u6570\u636e\u7f13\u5b58: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3653
    :cond_111
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mobi_resources/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/metadata.json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3654
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_15e

    .line 3655
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 3656
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_15e

    .line 3657
    add-int/lit8 v2, v2, 0x1

    .line 3658
    add-long/2addr v0, v6

    .line 3659
    const-string v3, "EbookReader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5df2\u5220\u9664MOBI\u5143\u6570\u636e\u7f13\u5b58: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3663
    :cond_15e
    const-string v3, "EbookReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u7f13\u5b58\u6587\u4ef6\u5220\u9664\u5b8c\u6210: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " \u4e2a\u76ee\u5f55/\u6587\u4ef6, \u5171 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v0, v1}, Lbl/xw;->formatFileSize(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_184
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_184} :catch_186

    goto/16 :goto_f

    .line 3665
    :catch_186
    move-exception v0

    .line 3666
    const-string v1, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5220\u9664\u7f13\u5b58\u6587\u4ef6\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f
.end method

.method private deleteDirectory(Ljava/io/File;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 3674
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_a

    .line 3687
    :cond_9
    :goto_9
    return v0

    .line 3678
    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 3679
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 3680
    if-eqz v1, :cond_21

    .line 3681
    array-length v2, v1

    :goto_17
    if-ge v0, v2, :cond_21

    aget-object v3, v1, v0

    .line 3682
    invoke-direct {p0, v3}, Lbl/xw;->deleteDirectory(Ljava/io/File;)Z

    .line 3681
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 3687
    :cond_21
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_9
.end method

.method private destroyEbookWebView()V
    .locals 4

    .prologue
    .line 3909
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_56

    .line 3910
    const-string v0, "EbookReader"

    const-string v1, "\u5f00\u59cb\u9500\u6bc1WebView\uff0c\u91ca\u653e\u5185\u5b58"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3913
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1d

    .line 3914
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 3915
    const-string v0, "EbookReader"

    const-string v1, "WebView\u5df2\u4ece\u7236\u5bb9\u5668\u79fb\u9664"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3920
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 3921
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 3922
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 3923
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 3924
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 3925
    const-string v0, "EbookReader"

    const-string v1, "WebView\u7f13\u5b58\u548c\u5386\u53f2\u5df2\u6e05\u9664"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_40} :catch_57

    .line 3932
    :goto_40
    :try_start_40
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 3933
    const-string v0, "EbookReader"

    const-string v1, "WebView\u5df2\u9500\u6bc1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4c} :catch_75

    .line 3938
    :goto_4c
    const/4 v0, 0x0

    iput-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    .line 3939
    const-string v0, "EbookReader"

    const-string v1, "WebView\u5f15\u7528\u5df2\u6e05\u9664"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3941
    :cond_56
    return-void

    .line 3926
    :catch_57
    move-exception v0

    .line 3927
    const-string v1, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6e05\u7406WebView\u65f6\u53d1\u751f\u5f02\u5e38: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    .line 3934
    :catch_75
    move-exception v0

    .line 3935
    const-string v1, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u9500\u6bc1WebView\u65f6\u53d1\u751f\u5f02\u5e38: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c
.end method

.method private displayBookContent(Lcom/bilibili/tv/ebook/model/Book;)V
    .locals 1

    .prologue
    .line 2484
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbl/xw;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;I)V

    .line 2485
    return-void
.end method

.method private displayBookContent(Lcom/bilibili/tv/ebook/model/Book;I)V
    .locals 2

    .prologue
    .line 2491
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lbl/xw;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;IZI)V

    .line 2492
    return-void
.end method

.method private displayBookContent(Lcom/bilibili/tv/ebook/model/Book;IZ)V
    .locals 1

    .prologue
    .line 2501
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lbl/xw;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;IZI)V

    .line 2502
    return-void
.end method

.method private displayBookContent(Lcom/bilibili/tv/ebook/model/Book;IZI)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 2512
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2513
    :cond_16
    const-string v0, "EbookReader"

    const-string v1, "\u4e66\u7c4d\u65e0\u7ae0\u8282\u5185\u5bb9"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2514
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u4e66\u7c4d\u5185\u5bb9\u4e3a\u7a7a"

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2516
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2710
    :goto_2a
    return-void

    .line 2521
    :cond_2b
    iput-boolean v7, p0, Lbl/xw;->isFileChooserShown:Z

    .line 2522
    iput-boolean v7, p0, Lbl/xw;->isChapterListShown:Z

    .line 2523
    const-string v0, "EbookReader"

    const-string v1, "\u91cd\u7f6e\u72b6\u6001\u6807\u5fd7: isFileChooserShown=false, isChapterListShown=false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    iput-object p1, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    .line 2527
    iput p2, p0, Lbl/xw;->currentChapterIndex:I

    .line 2528
    iput-boolean v3, p0, Lbl/xw;->isReadingBook:Z

    .line 2530
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f00\u59cb\u663e\u793a\u4e66\u7c4d\u5185\u5bb9: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \u7ae0\u8282: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2531
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", scrollToBottom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2530
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2535
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_90

    .line 2536
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2537
    const-string v0, "EbookReader"

    const-string v1, "\u5df2\u6e05\u7a7a\u7535\u5b50\u4e66\u9762\u677f"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2542
    :cond_90
    invoke-direct {p0}, Lbl/xw;->destroyEbookWebView()V

    .line 2545
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    .line 2546
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2550
    iget-object v1, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2553
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 2554
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 2555
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 2556
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 2557
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 2560
    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 2561
    sget-object v1, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 2564
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 2565
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 2569
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    new-instance v1, Lbl/xw$25;

    invoke-direct {v1, p0}, Lbl/xw$25;-><init>(Lbl/xw;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2610
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_e1

    .line 2611
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2615
    :cond_e1
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/bilibili/tv/ebook/model/Chapter;

    .line 2616
    invoke-virtual {v6}, Lcom/bilibili/tv/ebook/model/Chapter;->getHtmlContent()Ljava/lang/String;

    move-result-object v0

    .line 2620
    if-eqz v0, :cond_f8

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11c

    .line 2621
    :cond_f8
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7ae0\u8282\u5185\u5bb9\u4e3a\u7a7a\uff0c\u4eceHTML\u6587\u4ef6\u5ef6\u8fdf\u52a0\u8f7d: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/bilibili/tv/ebook/model/Chapter;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2622
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getExtractionPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lbl/xw;->loadChapterContentFromFile(Lcom/bilibili/tv/ebook/model/Chapter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2625
    :cond_11c
    if-eqz v0, :cond_124

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_141

    .line 2626
    :cond_124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<html><body><h1>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/bilibili/tv/ebook/model/Chapter;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</h1><p>\u7ae0\u8282\u5185\u5bb9\u4e3a\u7a7a</p></body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2630
    :cond_141
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ebook_settings"

    invoke-virtual {v1, v2, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2631
    const-string v2, "font_size"

    const/high16 v3, 0x41e00000    # 28.0f

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 2632
    const-string v2, "EbookReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8bfb\u53d6\u4fdd\u5b58\u7684\u5b57\u4f53\u5927\u5c0f: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2635
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<html><head><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"><style>body { font-size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "px; line-height: 1.6; padding: 20px; }</style></head><body>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2641
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    new-instance v1, Lbl/xw$26;

    invoke-direct {v1, p0, p3, p4}, Lbl/xw$26;-><init>(Lbl/xw;ZI)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 2693
    invoke-virtual {v6}, Lcom/bilibili/tv/ebook/model/Chapter;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    .line 2694
    if-eqz v1, :cond_1a5

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e4

    .line 2697
    :cond_1a5
    const-string v0, "EbookReader"

    const-string v1, "\u7ae0\u8282\u6ca1\u6709baseUrl\uff0c\u4f7f\u7528null\u4f5c\u4e3abaseUrl"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v5

    .line 2702
    :goto_1ad
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2706
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 2707
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 2709
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

    .line 2699
    :cond_1e4
    const-string v0, "EbookReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4f7f\u7528baseUrl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ad
.end method

.method private dumpViewHierarchy(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 3385
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3386
    if-nez v0, :cond_15

    .line 3387
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3389
    :cond_15
    const-string v1, "EbookReader"

    const-string v2, "===== View\u5c42\u7ea7\u7ed3\u6784 ====="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3390
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lbl/xw;->dumpViewHierarchyRecursive(Landroid/view/ViewGroup;I)V

    .line 3391
    const-string v0, "EbookReader"

    const-string v1, "===== View\u5c42\u7ea7\u7ed3\u6784\u7ed3\u675f ====="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3392
    return-void
.end method

.method private dumpViewHierarchyRecursive(Landroid/view/ViewGroup;I)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 3398
    const-string v2, ""

    move v1, v0

    move-object v3, v2

    .line 3399
    :goto_5
    if-ge v1, p2, :cond_1e

    .line 3400
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3399
    add-int/lit8 v1, v1, 0x1

    move-object v3, v2

    goto :goto_5

    :cond_1e
    move v2, v0

    .line 3402
    :goto_1f
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_b6

    .line 3403
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3404
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 3405
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v0

    if-lez v0, :cond_b0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3406
    :goto_4e
    const-string v5, "EbookReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_b3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " (childCount="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_95
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3408
    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_ab

    .line 3409
    check-cast v1, Landroid/view/ViewGroup;

    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, v1, v0}, Lbl/xw;->dumpViewHierarchyRecursive(Landroid/view/ViewGroup;I)V

    .line 3402
    :cond_ab
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1f

    .line 3405
    :cond_b0
    const-string v0, ""

    goto :goto_4e

    .line 3406
    :cond_b3
    const-string v0, ""

    goto :goto_95

    .line 3412
    :cond_b6
    return-void
.end method

.method private findAndUpdateDanmakuView(Landroid/view/ViewGroup;I)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v7, -0x1

    .line 1336
    move v1, v2

    :goto_5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_b6

    .line 1337
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1340
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    .line 1341
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    .line 1342
    if-lez v3, :cond_77

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v3

    .line 1344
    :goto_25
    const-string v6, "Danmaku"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_45

    const-string v6, "\u5f39\u5e55"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_45

    const-string v5, "danmaku"

    .line 1345
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_45

    const-string v5, "\u5f39\u5e55"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 1347
    :cond_45
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1348
    if-eqz v3, :cond_6a

    .line 1350
    iget v3, p0, Lbl/xw;->videoPosition:I

    if-eqz v3, :cond_53

    iget v3, p0, Lbl/xw;->videoPosition:I

    if-ne v3, v4, :cond_7a

    :cond_53
    move v3, v4

    .line 1352
    :goto_54
    instance-of v5, p1, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_89

    .line 1353
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, p2, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1357
    if-eqz v3, :cond_7f

    .line 1359
    iget v3, p0, Lbl/xw;->videoPosition:I

    if-nez v3, :cond_7c

    .line 1360
    const/16 v3, 0x33

    .line 1372
    :goto_65
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1373
    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1395
    :cond_6a
    :goto_6a
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_73

    .line 1396
    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p2}, Lbl/xw;->findAndUpdateDanmakuView(Landroid/view/ViewGroup;I)V

    .line 1336
    :cond_73
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 1342
    :cond_77
    const-string v3, ""

    goto :goto_25

    :cond_7a
    move v3, v2

    .line 1350
    goto :goto_54

    .line 1362
    :cond_7c
    const/16 v3, 0x53

    goto :goto_65

    .line 1366
    :cond_7f
    iget v3, p0, Lbl/xw;->videoPosition:I

    if-ne v3, v8, :cond_86

    .line 1367
    const/16 v3, 0x35

    goto :goto_65

    .line 1369
    :cond_86
    const/16 v3, 0x55

    goto :goto_65

    .line 1374
    :cond_89
    instance-of v5, p1, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_6a

    .line 1375
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, p2, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1378
    if-eqz v3, :cond_aa

    .line 1379
    const/16 v3, 0x9

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1384
    :goto_99
    iget v3, p0, Lbl/xw;->videoPosition:I

    if-eqz v3, :cond_a1

    iget v3, p0, Lbl/xw;->videoPosition:I

    if-ne v3, v8, :cond_b0

    .line 1385
    :cond_a1
    const/16 v3, 0xa

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1389
    :goto_a6
    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6a

    .line 1381
    :cond_aa
    const/16 v3, 0xb

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_99

    .line 1387
    :cond_b0
    const/16 v3, 0xc

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_a6

    .line 1399
    :cond_b6
    return-void
.end method

.method private findAndUpdateSubtitleView(Landroid/view/ViewGroup;I)V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v8, -0x1

    .line 1420
    move v1, v2

    :goto_5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_d7

    .line 1421
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1424
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    .line 1425
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1426
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    .line 1427
    if-lez v3, :cond_98

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v3

    .line 1429
    :goto_2d
    const-string v7, "Subtitle"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_65

    const-string v7, "\u5b57\u5e55"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_65

    const-string v5, "Subtitle"

    .line 1430
    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_65

    const-string v5, "subtitle"

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_65

    const-string v5, "subtitle"

    .line 1431
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_65

    const-string v5, "\u5b57\u5e55"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_65

    const-string v5, "exo_subtitles"

    .line 1432
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 1434
    :cond_65
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1435
    if-eqz v3, :cond_8a

    .line 1437
    iget v3, p0, Lbl/xw;->videoPosition:I

    if-eqz v3, :cond_73

    iget v3, p0, Lbl/xw;->videoPosition:I

    if-ne v3, v4, :cond_9b

    :cond_73
    move v3, v4

    .line 1439
    :goto_74
    instance-of v5, p1, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_aa

    .line 1440
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, p2, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1444
    if-eqz v3, :cond_a0

    .line 1446
    iget v3, p0, Lbl/xw;->videoPosition:I

    if-nez v3, :cond_9d

    .line 1447
    const/16 v3, 0x33

    .line 1459
    :goto_85
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1460
    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1482
    :cond_8a
    :goto_8a
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_93

    .line 1483
    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p2}, Lbl/xw;->findAndUpdateSubtitleView(Landroid/view/ViewGroup;I)V

    .line 1420
    :cond_93
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_5

    .line 1427
    :cond_98
    const-string v3, ""

    goto :goto_2d

    :cond_9b
    move v3, v2

    .line 1437
    goto :goto_74

    .line 1449
    :cond_9d
    const/16 v3, 0x53

    goto :goto_85

    .line 1453
    :cond_a0
    iget v3, p0, Lbl/xw;->videoPosition:I

    if-ne v3, v9, :cond_a7

    .line 1454
    const/16 v3, 0x35

    goto :goto_85

    .line 1456
    :cond_a7
    const/16 v3, 0x55

    goto :goto_85

    .line 1461
    :cond_aa
    instance-of v5, p1, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_8a

    .line 1462
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, p2, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1465
    if-eqz v3, :cond_cb

    .line 1466
    const/16 v3, 0x9

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1471
    :goto_ba
    iget v3, p0, Lbl/xw;->videoPosition:I

    if-eqz v3, :cond_c2

    iget v3, p0, Lbl/xw;->videoPosition:I

    if-ne v3, v9, :cond_d1

    .line 1472
    :cond_c2
    const/16 v3, 0xa

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1476
    :goto_c7
    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8a

    .line 1468
    :cond_cb
    const/16 v3, 0xb

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_ba

    .line 1474
    :cond_d1
    const/16 v3, 0xc

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_c7

    .line 1486
    :cond_d7
    return-void
.end method

.method private findFileRecursively(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 4607
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_8

    .line 4630
    :cond_7
    :goto_7
    return-object v0

    .line 4612
    :cond_8
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4613
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_15

    move-object v0, v1

    .line 4614
    goto :goto_7

    .line 4618
    :cond_15
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 4619
    if-eqz v3, :cond_7

    .line 4620
    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1e
    if-ge v2, v4, :cond_7

    aget-object v1, v3, v2

    .line 4621
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_30

    .line 4622
    invoke-direct {p0, v1, p2}, Lbl/xw;->findFileRecursively(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 4623
    if-eqz v1, :cond_30

    move-object v0, v1

    .line 4624
    goto :goto_7

    .line 4620
    :cond_30
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1e
.end method

.method private findVideoViewIndex(Landroid/view/ViewGroup;)I
    .locals 5

    .prologue
    .line 3362
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_68

    .line 3363
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3364
    instance-of v2, v0, Landroid/view/TextureView;

    if-nez v2, :cond_14

    instance-of v2, v0, Landroid/view/SurfaceView;

    if-eqz v2, :cond_3f

    .line 3366
    :cond_14
    const-string v2, "EbookReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u627e\u5230\u89c6\u9891View\u5728\u7d22\u5f15: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", \u7c7b\u578b: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3378
    :goto_3e
    return v1

    .line 3370
    :cond_3f
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_64

    .line 3371
    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lbl/xw;->findVideoViewIndex(Landroid/view/ViewGroup;)I

    move-result v0

    .line 3372
    if-ltz v0, :cond_64

    .line 3373
    const-string v0, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5728\u5b50\u5bb9\u5668\u4e2d\u627e\u5230\u89c6\u9891View\uff0c\u7236\u5bb9\u5668\u7d22\u5f15: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 3362
    :cond_64
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 3378
    :cond_68
    const/4 v1, -0x1

    goto :goto_3e
.end method

.method private formatFileSize(J)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 3717
    const-wide/16 v0, 0x400

    cmp-long v0, p1, v0

    if-gez v0, :cond_1c

    .line 3718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3724
    :goto_1b
    return-object v0

    .line 3719
    :cond_1c
    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-gez v0, :cond_36

    .line 3720
    const-string v0, "%.2f KB"

    new-array v1, v2, [Ljava/lang/Object;

    long-to-double v2, p1

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 3721
    :cond_36
    const-wide/32 v0, 0x40000000

    cmp-long v0, p1, v0

    if-gez v0, :cond_50

    .line 3722
    const-string v0, "%.2f MB"

    new-array v1, v2, [Ljava/lang/Object;

    long-to-double v2, p1

    const-wide/high16 v4, 0x4130000000000000L    # 1048576.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 3724
    :cond_50
    const-string v0, "%.2f GB"

    new-array v1, v2, [Ljava/lang/Object;

    long-to-double v2, p1

    const-wide/high16 v4, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b
.end method

.method private formatLastReadTime(J)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1932
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1933
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1934
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1936
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM-dd HH:mm"

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1937
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1939
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_32

    .line 1941
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1944
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
    .line 505
    invoke-virtual {p0}, Lbl/xw;->k()Lbl/xh;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lbl/xh;->a(ILandroid/view/KeyEvent;)Z

    .line 506
    invoke-virtual {p0}, Lbl/xw;->k()Lbl/xh;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lbl/xh;->b(ILandroid/view/KeyEvent;)Z

    .line 507
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
    .line 2766
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2767
    iget-object v0, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v3

    .line 2769
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Chapter;->getChapterIndex()I

    move-result v0

    .line 2770
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Chapter;->getDepth()I

    move-result v4

    .line 2773
    add-int/lit8 v0, v0, 0x1

    move v1, v0

    :goto_16
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_33

    .line 2774
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ebook/model/Chapter;

    .line 2775
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getDepth()I

    move-result v5

    .line 2778
    add-int/lit8 v6, v4, 0x1

    if-ne v5, v6, :cond_31

    .line 2779
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2773
    :cond_2d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_16

    .line 2782
    :cond_31
    if-gt v5, v4, :cond_2d

    .line 2787
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

    .line 2788
    return-object v2
.end method

.method private getDirectorySize(Ljava/io/File;)J
    .locals 8

    .prologue
    const-wide/16 v0, 0x0

    .line 3694
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_b

    .line 3710
    :cond_a
    :goto_a
    return-wide v0

    .line 3699
    :cond_b
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 3700
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 3701
    if-eqz v3, :cond_a

    .line 3702
    array-length v4, v3

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v4, :cond_a

    aget-object v5, v3, v2

    .line 3703
    invoke-direct {p0, v5}, Lbl/xw;->getDirectorySize(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 3702
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 3707
    :cond_25
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_a
.end method

.method private getEffectiveSkips(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)Lorg/json/JSONArray;
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4340
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 4341
    const/4 v0, 0x0

    .line 4343
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

    .line 4345
    iget-object v2, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8b

    .line 4346
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

    .line 4347
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

    .line 4349
    :cond_8b
    if-eqz v0, :cond_99

    aget-wide v2, v0, v8

    cmp-long v2, v2, v10

    if-nez v2, :cond_dd

    aget-wide v2, v0, v9

    cmp-long v2, v2, v10

    if-nez v2, :cond_dd

    .line 4350
    :cond_99
    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v0

    iget-wide v2, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    invoke-static {v2, v3}, Lbl/abd;->getVideoSkipKey(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lbl/abd;->getSkipTime(Landroid/content/Context;Ljava/lang/String;)[J

    move-result-object v2

    .line 4351
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

    .line 4354
    :cond_dd
    if-eqz v0, :cond_eb

    aget-wide v2, v0, v8

    cmp-long v2, v2, v10

    if-nez v2, :cond_f4

    aget-wide v2, v0, v9

    cmp-long v2, v2, v10

    if-nez v2, :cond_f4

    .line 4355
    :cond_eb
    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->skips:Lorg/json/JSONArray;

    .line 4376
    :goto_ed
    return-object v0

    .line 4347
    :cond_ee
    const-string v0, "null"

    goto :goto_7f

    .line 4351
    :cond_f1
    const-string v0, "null"

    goto :goto_d1

    .line 4359
    :cond_f4
    const/4 v2, 0x0

    :try_start_f5
    aget-wide v2, v0, v2

    cmp-long v2, v2, v10

    if-lez v2, :cond_118

    .line 4360
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 4361
    const-string v3, "type"

    const-string v4, "\u7247\u5934"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4362
    const-string v3, "start"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4363
    const-string v3, "end"

    const/4 v4, 0x0

    aget-wide v4, v0, v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 4364
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 4366
    :cond_118
    const/4 v2, 0x1

    aget-wide v2, v0, v2

    cmp-long v2, v2, v10

    if-lez v2, :cond_147

    iget v2, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDuration:I

    if-lez v2, :cond_147

    .line 4367
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 4368
    iget v3, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDuration:I

    int-to-long v4, v3

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    .line 4369
    const-string v3, "type"

    const-string v6, "\u7247\u5c3e"

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4370
    const-string v3, "start"

    const/4 v6, 0x1

    aget-wide v6, v0, v6

    sub-long v6, v4, v6

    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 4371
    const-string v0, "end"

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 4372
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_147} :catch_149

    :cond_147
    :goto_147
    move-object v0, v1

    .line 4376
    goto :goto_ed

    .line 4374
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
    .line 2749
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2750
    iget-object v0, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v0

    .line 2752
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

    .line 2753
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getDepth()I

    move-result v3

    if-nez v3, :cond_f

    .line 2754
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 2758
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

    .line 2759
    return-object v1
.end method

.method private getSkipHelper()Lbl/xj;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4326
    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v0

    .line 4327
    if-nez v0, :cond_9

    move-object v0, v1

    .line 4336
    :goto_8
    return-object v0

    :cond_9
    move-object v0, p0

    .line 4330
    :goto_a
    if-eqz v0, :cond_18

    .line 4331
    instance-of v2, v0, Lbl/xj;

    if-eqz v2, :cond_13

    .line 4332
    check-cast v0, Lbl/xj;

    goto :goto_8

    .line 4334
    :cond_13
    invoke-virtual {v0}, Lbl/xh;->next()Lbl/xh;

    move-result-object v0

    goto :goto_a

    :cond_18
    move-object v0, v1

    .line 4336
    goto :goto_8
.end method

.method private handlePageTurn(Z)V
    .locals 10

    .prologue
    const/4 v0, 0x1

    const-wide/high16 v8, 0x3fc0000000000000L    # 0.125

    const/4 v1, 0x0

    .line 4425
    iget-object v2, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    if-nez v2, :cond_10

    .line 4426
    const-string v0, "EbookReader"

    const-string v1, "handlePageTurn: WebView\u4e3a\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4500
    :goto_f
    return-void

    .line 4430
    :cond_10
    iget-object v2, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getHeight()I

    move-result v2

    .line 4431
    iget-object v3, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScrollY()I

    move-result v3

    .line 4432
    iget-object v4, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v4

    .line 4434
    if-eqz p1, :cond_b6

    .line 4436
    const-string v4, "EbookReader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handlePageTurn: \u5411\u524d\u7ffb\u9875, height="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", scrollY="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4439
    if-nez v3, :cond_69

    .line 4441
    iget-object v1, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    if-eqz v1, :cond_61

    iget v1, p0, Lbl/xw;->currentChapterIndex:I

    if-lez v1, :cond_61

    .line 4442
    const-string v1, "EbookReader"

    const-string v2, "handlePageTurn: \u5230\u8fbe\u7ae0\u8282\u9876\u90e8\uff0c\u8df3\u8f6c\u5230\u4e0a\u4e00\u7ae0\u8282\u7684\u5e95\u90e8"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4443
    iget-object v1, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    iget v2, p0, Lbl/xw;->currentChapterIndex:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v1, v2, v0}, Lbl/xw;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;IZ)V

    goto :goto_f

    .line 4446
    :cond_61
    const-string v0, "EbookReader"

    const-string v1, "handlePageTurn: \u5df2\u7ecf\u5728\u7b2c\u4e00\u7ae0\uff0c\u65e0\u6cd5\u5411\u524d\u7ffb\u9875"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 4452
    :cond_69
    if-lez v2, :cond_a7

    .line 4453
    int-to-double v4, v2

    mul-double/2addr v4, v8

    double-to-int v0, v4

    .line 4454
    sub-int v3, v2, v0

    .line 4455
    const-string v4, "EbookReader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handlePageTurn: \u5411\u524d\u7ffb\u9875: height="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", overlapHeight="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", pageHeight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4456
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    neg-int v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->scrollBy(II)V

    .line 4462
    :goto_a2
    invoke-direct {p0}, Lbl/xw;->scheduleSaveReadingProgress()V

    goto/16 :goto_f

    .line 4459
    :cond_a7
    const-string v0, "EbookReader"

    const-string v2, "handlePageTurn: WebView height\u4e3a0\uff0c\u4f7f\u7528\u9ed8\u8ba4\u503c800"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4460
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    const/16 v2, -0x320

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->scrollBy(II)V

    goto :goto_a2

    .line 4465
    :cond_b6
    const-string v5, "EbookReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handlePageTurn: \u5411\u540e\u7ffb\u9875, height="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", scrollY="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", contentHeight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4469
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 4470
    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 4473
    int-to-double v6, v2

    mul-double/2addr v6, v8

    double-to-int v5, v6

    .line 4474
    sub-int v6, v2, v5

    .line 4475
    add-int/2addr v3, v2

    add-int/lit8 v4, v4, -0xa

    if-lt v3, v4, :cond_125

    .line 4477
    :goto_fd
    if-eqz v0, :cond_130

    .line 4479
    iget-object v0, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    if-eqz v0, :cond_127

    iget v0, p0, Lbl/xw;->currentChapterIndex:I

    iget-object v2, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    invoke-virtual {v2}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_127

    .line 4480
    const-string v0, "EbookReader"

    const-string v2, "handlePageTurn: \u5230\u8fbe\u7ae0\u8282\u5e95\u90e8\uff0c\u8df3\u8f6c\u5230\u4e0b\u4e00\u7ae0\u8282\u7684\u9876\u90e8"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4481
    iget-object v0, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    iget v2, p0, Lbl/xw;->currentChapterIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v0, v2, v1}, Lbl/xw;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;IZ)V

    goto/16 :goto_f

    :cond_125
    move v0, v1

    .line 4475
    goto :goto_fd

    .line 4484
    :cond_127
    const-string v0, "EbookReader"

    const-string v1, "handlePageTurn: \u5df2\u7ecf\u5728\u6700\u540e\u4e00\u7ae0\uff0c\u65e0\u6cd5\u5411\u540e\u7ffb\u9875"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 4490
    :cond_130
    if-lez v2, :cond_168

    .line 4491
    const-string v0, "EbookReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePageTurn: \u5411\u540e\u7ffb\u9875: height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", overlapHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pageHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4492
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, v6}, Landroid/webkit/WebView;->scrollBy(II)V

    .line 4498
    :goto_163
    invoke-direct {p0}, Lbl/xw;->scheduleSaveReadingProgress()V

    goto/16 :goto_f

    .line 4495
    :cond_168
    const-string v0, "EbookReader"

    const-string v2, "handlePageTurn: WebView height\u4e3a0\uff0c\u4f7f\u7528\u9ed8\u8ba4\u503c800"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4496
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    const/16 v2, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->scrollBy(II)V

    goto :goto_163
.end method

.method private hideChapterList()V
    .locals 2

    .prologue
    .line 3019
    const-string v0, "EbookReader"

    const-string v1, "\u9690\u85cf\u7ae0\u8282\u5217\u8868"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3020
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/xw;->isChapterListShown:Z

    .line 3022
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lbl/xw$29;

    invoke-direct {v1, p0}, Lbl/xw$29;-><init>(Lbl/xw;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3043
    return-void
.end method

.method private hideEbookPanel()V
    .locals 3

    .prologue
    .line 3787
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    .line 3788
    if-nez v0, :cond_e

    .line 3789
    const-string v0, "EbookReader"

    const-string v1, "Activity is null, cannot hide ebook panel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3815
    :goto_d
    return-void

    .line 3793
    :cond_e
    const-string v1, "EbookReader"

    const-string v2, "\u5f00\u59cb\u9690\u85cf\u7535\u5b50\u4e66\u9762\u677f\uff08\u4e0d\u6e05\u7a7a\u4e66\u7c4d\u6570\u636e\uff09"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3796
    invoke-direct {p0}, Lbl/xw;->saveReadingProgressImmediately()V

    .line 3799
    iget-object v1, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2a

    .line 3800
    iget-object v1, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3801
    const-string v1, "EbookReader"

    const-string v2, "\u7070\u8272\u80cc\u666f\u9762\u677f\u5df2\u9690\u85cf"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3805
    :cond_2a
    invoke-direct {p0, v0}, Lbl/xw;->restoreVideoView(Landroid/app/Activity;)V

    .line 3808
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/xw;->isEbookPanelShown:Z

    .line 3809
    const-string v0, "video"

    iput-object v0, p0, Lbl/xw;->controlTarget:Ljava/lang/String;

    .line 3814
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u9762\u677f\u5df2\u9690\u85cf\uff0c\u4e66\u7c4d\u6570\u636e\u4fdd\u7559\uff0ccontrolTarget\u91cd\u7f6e\u4e3avideo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method private hideFileChooser()V
    .locals 2

    .prologue
    .line 2054
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    .line 2055
    if-eqz v0, :cond_a

    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    if-nez v0, :cond_12

    .line 2056
    :cond_a
    const-string v0, "EbookReader"

    const-string v1, "\u65e0\u6cd5\u9690\u85cf\u6587\u4ef6\u9009\u62e9\u5668\uff1aactivity\u6216panel\u4e3anull"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    :goto_11
    return-void

    .line 2060
    :cond_12
    const-string v0, "EbookReader"

    const-string v1, "\u5f00\u59cb\u9690\u85cf\u6587\u4ef6\u9009\u62e9\u5668"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2064
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/xw;->isFileChooserShown:Z

    .line 2066
    const-string v0, "EbookReader"

    const-string v1, "\u6587\u4ef6\u9009\u62e9\u5668\u5df2\u9690\u85cf\uff0c\u56de\u5230\u7535\u5b50\u4e66\u9996\u9875"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    invoke-direct {p0}, Lbl/xw;->showBookshelfOrFileChooser()V

    goto :goto_11
.end method

.method private hideLoadingIndicator()V
    .locals 2

    .prologue
    .line 2327
    const-string v0, "EbookReader"

    const-string v1, "\u9690\u85cf\u52a0\u8f7d\u8fdb\u5ea6\u63d0\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/xw;->isLoadingEbook:Z

    .line 2330
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lbl/xw$23;

    invoke-direct {v1, p0}, Lbl/xw$23;-><init>(Lbl/xw;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2342
    return-void
.end method

.method private isEbookFile(Ljava/io/File;)Z
    .locals 2

    .prologue
    .line 2231
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2232
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

.method private loadChapterContentFromFile(Lcom/bilibili/tv/ebook/model/Chapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 4546
    :try_start_1
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Chapter;->getHtmlFilePath()Ljava/lang/String;

    move-result-object v2

    .line 4547
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Chapter;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    .line 4549
    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 4550
    :cond_11
    const-string v0, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7ae0\u8282HTML\u6587\u4ef6\u8def\u5f84\u4e3a\u7a7a: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Chapter;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 4599
    :goto_2e
    return-object v0

    .line 4555
    :cond_2f
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4561
    if-eqz v0, :cond_10a

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10a

    .line 4562
    const-string v4, "file://"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "/$"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4563
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4567
    :goto_5a
    if-eqz v0, :cond_62

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_67

    .line 4568
    :cond_62
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4572
    :cond_67
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_7a

    .line 4573
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lbl/xw;->findFileRecursively(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 4576
    :cond_7a
    if-eqz v0, :cond_e5

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_e5

    .line 4578
    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Lorg/jsoup/Jsoup;->parse(Ljava/io/File;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v2

    .line 4579
    invoke-virtual {v2}, Lorg/jsoup/nodes/Document;->outerHtml()Ljava/lang/String;

    move-result-object v0

    .line 4582
    invoke-virtual {p1, v0}, Lcom/bilibili/tv/ebook/model/Chapter;->setHtmlContent(Ljava/lang/String;)V

    .line 4583
    invoke-virtual {v2}, Lorg/jsoup/nodes/Document;->text()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/bilibili/tv/ebook/model/Chapter;->setPlainTextContent(Ljava/lang/String;)V

    .line 4586
    invoke-direct {p0, p1}, Lbl/xw;->manageChapterCache(Lcom/bilibili/tv/ebook/model/Chapter;)V

    .line 4588
    const-string v2, "EbookReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5ef6\u8fdf\u52a0\u8f7d\u7ae0\u8282\u5185\u5bb9\u6210\u529f: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Chapter;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", html\u957f\u5ea6: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4589
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4588
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c3} :catch_c5

    goto/16 :goto_2e

    .line 4597
    :catch_c5
    move-exception v0

    .line 4598
    const-string v2, "EbookReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5ef6\u8fdf\u52a0\u8f7d\u7ae0\u8282\u5185\u5bb9\u5931\u8d25: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Chapter;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 4599
    goto/16 :goto_2e

    .line 4592
    :cond_e5
    :try_start_e5
    const-string v0, "EbookReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7ae0\u8282\u6587\u4ef6\u4e0d\u5b58\u5728: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", extractionPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_107} :catch_c5

    move-object v0, v1

    .line 4594
    goto/16 :goto_2e

    :cond_10a
    move-object v0, v1

    goto/16 :goto_5a
.end method

.method private loadFileList(Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 2076
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v1

    .line 2077
    if-nez v1, :cond_8

    .line 2225
    :goto_7
    return-void

    .line 2079
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

    .line 2082
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2085
    invoke-virtual {p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 2086
    if-nez v2, :cond_42

    .line 2087
    const-string v2, "EbookReader"

    const-string v3, "listFiles()\u8fd4\u56denull\uff0c\u53ef\u80fd\u6ca1\u6709\u6743\u9650\u6216\u76ee\u5f55\u4e0d\u5b58\u5728"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    const-string v2, "\u65e0\u6cd5\u8bbf\u95ee\u76ee\u5f55"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 2092
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

    .line 2095
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2096
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2098
    array-length v5, v2

    :goto_6c
    if-ge v0, v5, :cond_be

    aget-object v6, v2, v0

    .line 2099
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_98

    .line 2100
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2101
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

    .line 2098
    :cond_95
    :goto_95
    add-int/lit8 v0, v0, 0x1

    goto :goto_6c

    .line 2102
    :cond_98
    invoke-direct {p0, v6}, Lbl/xw;->isEbookFile(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_95

    .line 2103
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2104
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

    .line 2108
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

    .line 2111
    new-instance v0, Lbl/xw$16;

    invoke-direct {v0, p0}, Lbl/xw$16;-><init>(Lbl/xw;)V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2117
    new-instance v0, Lbl/xw$17;

    invoke-direct {v0, p0}, Lbl/xw$17;-><init>(Lbl/xw;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2125
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2126
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2129
    invoke-virtual {p3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_117

    .line 2130
    const-string v0, "\u2191 \u4e0a\u7ea7"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2131
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2135
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

    .line 2136
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

    .line 2137
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11b

    .line 2141
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

    .line 2142
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

    .line 2143
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_149

    .line 2146
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

    .line 2149
    new-instance v0, Lbl/xw$18;

    const v3, 0x1090003

    invoke-direct {v0, p0, v1, v3, v5}, Lbl/xw$18;-><init>(Lbl/xw;Landroid/content/Context;ILjava/util/List;)V

    .line 2179
    new-instance v1, Lbl/xw$19;

    invoke-direct {v1, p0}, Lbl/xw$19;-><init>(Lbl/xw;)V

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 2196
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2199
    new-instance v0, Lbl/xw$20;

    invoke-direct {v0, p0, p1}, Lbl/xw$20;-><init>(Lbl/xw;Landroid/widget/ListView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 2208
    new-instance v0, Lbl/xw$21;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lbl/xw$21;-><init>(Lbl/xw;Ljava/util/List;Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_7
.end method

.method private manageChapterCache(Lcom/bilibili/tv/ebook/model/Chapter;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4508
    iget-object v0, p0, Lbl/xw;->cachedChapters:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4509
    iget-object v0, p0, Lbl/xw;->cachedChapters:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 4510
    iget-object v0, p0, Lbl/xw;->cachedChapters:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 4526
    :cond_13
    :goto_13
    return-void

    .line 4515
    :cond_14
    iget-object v0, p0, Lbl/xw;->cachedChapters:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 4516
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7ae0\u8282\u52a0\u5165\u7f13\u5b58: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Chapter;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \u5f53\u524d\u7f13\u5b58\u6570: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/xw;->cachedChapters:Ljava/util/LinkedList;

    .line 4517
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4516
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4520
    iget-object v0, p0, Lbl/xw;->cachedChapters:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_13

    .line 4521
    iget-object v0, p0, Lbl/xw;->cachedChapters:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ebook/model/Chapter;

    .line 4522
    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ebook/model/Chapter;->setHtmlContent(Ljava/lang/String;)V

    .line 4523
    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ebook/model/Chapter;->setPlainTextContent(Ljava/lang/String;)V

    .line 4524
    const-string v1, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u91ca\u653e\u65e9\u671f\u7ae0\u8282\u5185\u5bb9: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method private parseAndDisplayEbook(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2348
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

    .line 2351
    invoke-direct {p0}, Lbl/xw;->cancelParsingTask()V

    .line 2354
    iput-object p1, p0, Lbl/xw;->currentBookFilePath:Ljava/lang/String;

    .line 2355
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/xw;->isParsingCancelled:Z

    .line 2356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xw;->isLoadingEbook:Z

    .line 2359
    invoke-direct {p0}, Lbl/xw;->showLoadingIndicator()V

    .line 2362
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 2364
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lbl/xw$24;

    invoke-direct {v2, p0, v0, p1}, Lbl/xw$24;-><init>(Lbl/xw;Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lbl/xw;->parsingThread:Ljava/lang/Thread;

    .line 2466
    iget-object v0, p0, Lbl/xw;->parsingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2467
    return-void
.end method

.method private restoreDanmakuView(Landroid/app/Activity;)V
    .locals 8

    .prologue
    const/16 v7, 0x11

    const/16 v6, 0xd

    const/4 v5, -0x1

    .line 4210
    if-nez p1, :cond_f

    .line 4211
    const-string v0, "EbookReader"

    const-string v1, "Activity is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4296
    :goto_e
    return-void

    .line 4216
    :cond_f
    const v0, 0x7f08006e

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 4217
    if-nez v1, :cond_20

    .line 4218
    const-string v0, "EbookReader"

    const-string v1, "\u5f39\u5e55\u89c6\u56fe\u672a\u627e\u5230"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 4222
    :cond_20
    const-string v0, "EbookReader"

    const-string v2, "\u5f00\u59cb\u6062\u590d\u5f39\u5e55\u89c6\u56fe\u5e03\u5c40"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4225
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 4226
    if-nez v0, :cond_37

    .line 4227
    const-string v0, "EbookReader"

    const-string v1, "Danmaku view parent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 4231
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

    .line 4236
    iget-object v2, p0, Lbl/xw;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v2, :cond_b4

    .line 4238
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_83

    .line 4239
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lbl/xw;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lbl/xw;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 4243
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4245
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528FrameLayout.LayoutParams\u6062\u590d\u5f39\u5e55\u5168\u5c4f"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4262
    :goto_75
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4263
    const-string v0, "EbookReader"

    const-string v1, "\u5f39\u5e55\u5df2\u6062\u590d\u539f\u59cb\u5e03\u5c40"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4295
    :goto_7f
    const/4 v0, 0x0

    iput-object v0, p0, Lbl/xw;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_e

    .line 4246
    :cond_83
    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_9f

    .line 4247
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lbl/xw;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lbl/xw;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4251
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 4253
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528RelativeLayout.LayoutParams\u6062\u590d\u5f39\u5e55\u5168\u5c4f"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    .line 4255
    :cond_9f
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget-object v2, p0, Lbl/xw;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lbl/xw;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 4259
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528ViewGroup.LayoutParams\u6062\u590d\u5f39\u5e55\u5168\u5c4f"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    .line 4266
    :cond_b4
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_d1

    .line 4267
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 4271
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4273
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528FrameLayout.LayoutParams\u6062\u590d\u5f39\u5e55\u5168\u5c4f(\u9ed8\u8ba4)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4290
    :goto_c6
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4291
    const-string v0, "EbookReader"

    const-string v1, "\u5f39\u5e55\u5df2\u6062\u590d\u5168\u5c4f\u663e\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    .line 4274
    :cond_d1
    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_e5

    .line 4275
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4279
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 4281
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528RelativeLayout.LayoutParams\u6062\u590d\u5f39\u5e55\u5168\u5c4f(\u9ed8\u8ba4)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c6

    .line 4283
    :cond_e5
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 4287
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528ViewGroup.LayoutParams\u6062\u590d\u5f39\u5e55\u5168\u5c4f(\u9ed8\u8ba4)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c6
.end method

.method private restoreReadingProgress(Lcom/bilibili/tv/ebook/model/Book;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 4680
    if-eqz p1, :cond_7

    iget-object v0, p0, Lbl/xw;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    if-nez v0, :cond_8

    .line 4716
    :cond_7
    :goto_7
    return-void

    .line 4685
    :cond_8
    :try_start_8
    iget-object v0, p0, Lbl/xw;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    .line 4686
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ebook/util/EbookCacheManager;->getReadingProgress(Ljava/lang/String;)Lcom/bilibili/tv/ebook/model/ReadingProgress;

    move-result-object v0

    .line 4688
    if-eqz v0, :cond_96

    .line 4689
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->getCurrentChapterIndex()I

    move-result v1

    .line 4690
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->getCurrentPage()I

    move-result v2

    .line 4693
    if-ltz v1, :cond_79

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_79

    .line 4694
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_79

    .line 4695
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

    .line 4697
    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v3, v2}, Lbl/xw;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;IZI)V

    .line 4704
    :goto_54
    invoke-direct {p0, p1, v0}, Lbl/xw;->addToBookshelf(Lcom/bilibili/tv/ebook/model/Book;Lcom/bilibili/tv/ebook/model/ReadingProgress;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_57} :catch_58

    goto :goto_7

    .line 4712
    :catch_58
    move-exception v0

    .line 4713
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

    .line 4714
    invoke-direct {p0, p1, v6}, Lbl/xw;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;I)V

    goto :goto_7

    .line 4699
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

    .line 4700
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lbl/xw;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;I)V

    goto :goto_54

    .line 4706
    :cond_96
    const-string v0, "EbookReader"

    const-string v1, "\u65e0\u4fdd\u5b58\u7684\u9605\u8bfb\u8fdb\u5ea6\uff0c\u4ece\u7b2c\u4e00\u7ae0\u5f00\u59cb"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4707
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbl/xw;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;I)V

    .line 4710
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

    .line 4104
    sget v0, Lmybl/BiliFilter;->prefer_videoview:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_12

    .line 4105
    const-string v0, "EbookReader"

    const-string v1, "\u5f53\u524d\u672a\u4f7f\u7528TextureView\u6a21\u5f0f,\u65e0\u9700\u6062\u590d"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4204
    :goto_11
    return-void

    .line 4110
    :cond_12
    invoke-virtual {p0}, Lbl/xw;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    .line 4111
    if-nez v0, :cond_20

    .line 4112
    const-string v0, "EbookReader"

    const-string v1, "\u64ad\u653e\u5668\u4e0a\u4e0b\u6587\u4e3a\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 4117
    :cond_20
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->getIVideoView()Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    move-result-object v0

    .line 4118
    if-nez v0, :cond_2e

    .line 4119
    const-string v0, "EbookReader"

    const-string v1, "\u89c6\u9891\u89c6\u56fe\u63a5\u53e3\u4e3a\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 4123
    :cond_2e
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getView()Landroid/view/View;

    move-result-object v1

    .line 4124
    if-nez v1, :cond_3c

    .line 4125
    const-string v0, "EbookReader"

    const-string v1, "\u89c6\u9891\u89c6\u56fe\u4e3a\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 4130
    :cond_3c
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 4131
    if-nez v0, :cond_4c

    .line 4132
    const-string v0, "EbookReader"

    const-string v1, "Video view parent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 4136
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

    .line 4141
    iget-object v2, p0, Lbl/xw;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v2, :cond_cd

    .line 4143
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_9c

    .line 4144
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lbl/xw;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lbl/xw;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 4148
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4150
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528FrameLayout.LayoutParams\u6062\u590d\u5168\u5c4f"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4167
    :goto_8a
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4168
    const-string v0, "EbookReader"

    const-string v1, "\u89c6\u9891\u5df2\u6062\u590d\u539f\u59cb\u5e03\u5c40"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4200
    :goto_94
    const/4 v0, 0x0

    iput-object v0, p0, Lbl/xw;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    .line 4203
    invoke-direct {p0, p1}, Lbl/xw;->restoreDanmakuView(Landroid/app/Activity;)V

    goto/16 :goto_11

    .line 4151
    :cond_9c
    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_b8

    .line 4152
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lbl/xw;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lbl/xw;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4156
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 4158
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528RelativeLayout.LayoutParams\u6062\u590d\u5168\u5c4f"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a

    .line 4160
    :cond_b8
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget-object v2, p0, Lbl/xw;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lbl/xw;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 4164
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528ViewGroup.LayoutParams\u6062\u590d\u5168\u5c4f"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a

    .line 4171
    :cond_cd
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_ea

    .line 4172
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 4176
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4178
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528FrameLayout.LayoutParams\u6062\u590d\u5168\u5c4f(\u9ed8\u8ba4)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4195
    :goto_df
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4196
    const-string v0, "EbookReader"

    const-string v1, "\u89c6\u9891\u5df2\u6062\u590d\u5168\u5c4f\u663e\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_94

    .line 4179
    :cond_ea
    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_fe

    .line 4180
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4184
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 4186
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528RelativeLayout.LayoutParams\u6062\u590d\u5168\u5c4f(\u9ed8\u8ba4)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_df

    .line 4188
    :cond_fe
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 4192
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528ViewGroup.LayoutParams\u6062\u590d\u5168\u5c4f(\u9ed8\u8ba4)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_df
.end method

.method private saveReadingProgress()V
    .locals 5

    .prologue
    .line 4383
    iget-object v0, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lbl/xw;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_d

    .line 4418
    :cond_c
    :goto_c
    return-void

    .line 4389
    :cond_d
    :try_start_d
    new-instance v0, Lcom/bilibili/tv/ebook/model/ReadingProgress;

    iget-object v1, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    .line 4390
    invoke-virtual {v1}, Lcom/bilibili/tv/ebook/model/Book;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ebook/model/ReadingProgress;-><init>(Ljava/lang/String;)V

    .line 4392
    iget v1, p0, Lbl/xw;->currentChapterIndex:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->setCurrentChapterIndex(I)V

    .line 4393
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->setLastReadTimestamp(J)V

    .line 4396
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

    .line 4397
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

    .line 4398
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->setProgressPercentage(F)V

    .line 4402
    :cond_4d
    iget-object v1, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v1

    .line 4403
    iget-object v2, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getHeight()I

    move-result v2

    .line 4404
    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/2addr v1, v2

    .line 4405
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->setCurrentPage(I)V

    .line 4408
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->setFontSize(I)V

    .line 4411
    iget-object v2, p0, Lbl/xw;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/ebook/util/EbookCacheManager;->saveReadingProgress(Lcom/bilibili/tv/ebook/model/ReadingProgress;)V

    .line 4413
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

    .line 4414
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->getProgressPercentage()F

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4413
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_a4} :catch_a6

    goto/16 :goto_c

    .line 4415
    :catch_a6
    move-exception v0

    .line 4416
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

.method private saveReadingProgressImmediately()V
    .locals 2

    .prologue
    .line 4667
    iget-object v0, p0, Lbl/xw;->saveProgressHandler:Lbl/xw$SaveProgressHandler;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lbl/xw;->saveProgressRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_12

    .line 4668
    iget-object v0, p0, Lbl/xw;->saveProgressHandler:Lbl/xw$SaveProgressHandler;

    iget-object v1, p0, Lbl/xw;->saveProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lbl/xw$SaveProgressHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4669
    const/4 v0, 0x0

    iput-object v0, p0, Lbl/xw;->saveProgressRunnable:Ljava/lang/Runnable;

    .line 4673
    :cond_12
    invoke-direct {p0}, Lbl/xw;->saveReadingProgress()V

    .line 4674
    return-void
.end method

.method private scheduleSaveReadingProgress()V
    .locals 4

    .prologue
    .line 4639
    iget-object v0, p0, Lbl/xw;->saveProgressHandler:Lbl/xw$SaveProgressHandler;

    if-nez v0, :cond_b

    .line 4640
    new-instance v0, Lbl/xw$SaveProgressHandler;

    invoke-direct {v0, p0}, Lbl/xw$SaveProgressHandler;-><init>(Lbl/xw;)V

    iput-object v0, p0, Lbl/xw;->saveProgressHandler:Lbl/xw$SaveProgressHandler;

    .line 4644
    :cond_b
    iget-object v0, p0, Lbl/xw;->saveProgressRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_16

    .line 4645
    iget-object v0, p0, Lbl/xw;->saveProgressHandler:Lbl/xw$SaveProgressHandler;

    iget-object v1, p0, Lbl/xw;->saveProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lbl/xw$SaveProgressHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4649
    :cond_16
    new-instance v0, Lbl/xw$34;

    invoke-direct {v0, p0}, Lbl/xw$34;-><init>(Lbl/xw;)V

    iput-object v0, p0, Lbl/xw;->saveProgressRunnable:Ljava/lang/Runnable;

    .line 4658
    iget-object v0, p0, Lbl/xw;->saveProgressHandler:Lbl/xw$SaveProgressHandler;

    iget-object v1, p0, Lbl/xw;->saveProgressRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lbl/xw$SaveProgressHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4659
    const-string v0, "EbookReader"

    const-string v1, "\u5df2\u8c03\u5ea6\u9632\u6296\u4fdd\u5b58\u9605\u8bfb\u8fdb\u5ea6\uff0c\u5ef6\u8fdf 300ms"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4660
    return-void
.end method

.method private showBookshelfInPanel()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v10, -0x2

    const/16 v9, 0x11

    const/16 v8, 0x18

    const/4 v7, -0x1

    .line 1597
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v2

    .line 1598
    if-eqz v2, :cond_11

    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    if-nez v0, :cond_19

    .line 1599
    :cond_11
    const-string v0, "EbookReader"

    const-string v1, "Activity or ebookPanel is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    :goto_18
    return-void

    .line 1603
    :cond_19
    const-string v0, "EbookReader"

    const-string v1, "\u5728\u7535\u5b50\u4e66\u9762\u677f\u4e2d\u663e\u793a\u4e66\u67b6\u5217\u8868"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_34

    .line 1607
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u9762\u677f\u672a\u663e\u793a\uff0c\u8bbe\u7f6e\u4e3aVISIBLE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1612
    :cond_34
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1615
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1616
    const-string v1, "\u6211\u7684\u4e66\u67b6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1617
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1618
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1619
    const/16 v1, 0x14

    const/16 v3, 0x14

    invoke-virtual {v0, v8, v1, v8, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1620
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 1621
    iget-object v1, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v7, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1627
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    .line 1628
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1629
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 1632
    new-instance v0, Lbl/xw$10;

    const v3, 0x1090003

    const v4, 0x1020014

    iget-object v5, p0, Lbl/xw;->bookshelfItems:Ljava/util/List;

    move-object v1, p0

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lbl/xw$10;-><init>(Lbl/xw;Landroid/content/Context;IILjava/util/List;Landroid/app/Activity;)V

    .line 1831
    iget-object v1, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1834
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    new-instance v1, Lbl/xw$11;

    invoke-direct {v1, p0}, Lbl/xw$11;-><init>(Lbl/xw;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1852
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    new-instance v1, Lbl/xw$12;

    invoke-direct {v1, p0, v2}, Lbl/xw$12;-><init>(Lbl/xw;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1871
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    new-instance v1, Lbl/xw$13;

    invoke-direct {v1, p0}, Lbl/xw$13;-><init>(Lbl/xw;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1884
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1888
    const/16 v1, 0x46

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1889
    iget-object v1, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1892
    iget-object v0, p0, Lbl/xw;->bookshelfItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 1893
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1894
    const-string v1, "\u4e66\u67b6\u4e3a\u7a7a\uff0c\u8bf7\u9009\u62e9\u6587\u4ef6\u6dfb\u52a0\u4e66\u7c4d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1895
    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1896
    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1897
    const/16 v1, 0xa

    const/16 v2, 0xa

    invoke-virtual {v0, v8, v1, v8, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1898
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 1899
    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 1900
    iget-object v1, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v7, v10, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1908
    :cond_ea
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    new-instance v1, Lbl/xw$14;

    invoke-direct {v1, p0}, Lbl/xw$14;-><init>(Lbl/xw;)V

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1919
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    new-instance v1, Lbl/xw$15;

    invoke-direct {v1, p0}, Lbl/xw$15;-><init>(Lbl/xw;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_18
.end method

.method private showBookshelfOrFileChooser()V
    .locals 3

    .prologue
    .line 1582
    iget-object v0, p0, Lbl/xw;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    if-nez v0, :cond_f

    .line 1583
    new-instance v0, Lcom/bilibili/tv/ebook/util/BookshelfManager;

    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ebook/util/BookshelfManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbl/xw;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    .line 1586
    :cond_f
    iget-object v0, p0, Lbl/xw;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/util/BookshelfManager;->getBookshelfItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbl/xw;->bookshelfItems:Ljava/util/List;

    .line 1589
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

    .line 1590
    invoke-direct {p0}, Lbl/xw;->showBookshelfInPanel()V

    .line 1591
    return-void
.end method

.method private showEbookPanel()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3052
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v1

    .line 3053
    if-nez v1, :cond_10

    .line 3054
    const-string v0, "EbookReader"

    const-string v1, "Activity is null, cannot show ebook panel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3125
    :goto_f
    return-void

    .line 3058
    :cond_10
    const-string v0, "EbookReader"

    const-string v2, "\u5f00\u59cb\u663e\u793a\u7535\u5b50\u4e66\u9762\u677f"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3061
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3062
    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3063
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3064
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 3067
    const-string v0, "ebook_settings"

    invoke-virtual {v1, v0, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3068
    const-string v4, "screen_percent"

    invoke-interface {v0, v4, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 3069
    const/4 v5, 0x6

    new-array v5, v5, [I

    fill-array-data v5, :array_144

    .line 3070
    if-ltz v4, :cond_12e

    array-length v6, v5

    if-ge v4, v6, :cond_12e

    .line 3071
    aget v4, v5, v4

    iput v4, p0, Lbl/xw;->ebookPanelPercent:I

    .line 3076
    :goto_46
    const-string v4, "EbookReader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5c4f\u5e55\u5c3a\u5bf8: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", \u7535\u5b50\u4e66\u5360\u6bd4: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lbl/xw;->ebookPanelPercent:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3079
    iget-object v4, p0, Lbl/xw;->videoPositionList:Ljava/util/List;

    if-nez v4, :cond_a1

    .line 3080
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lbl/xw;->videoPositionList:Ljava/util/List;

    .line 3081
    iget-object v4, p0, Lbl/xw;->videoPositionList:Ljava/util/List;

    const-string v5, "\u5de6\u4e0a"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3082
    iget-object v4, p0, Lbl/xw;->videoPositionList:Ljava/util/List;

    const-string v5, "\u5de6\u4e0b"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3083
    iget-object v4, p0, Lbl/xw;->videoPositionList:Ljava/util/List;

    const-string v5, "\u53f3\u4e0a"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3084
    iget-object v4, p0, Lbl/xw;->videoPositionList:Ljava/util/List;

    const-string v5, "\u53f3\u4e0b"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3086
    :cond_a1
    const-string v4, "video_position"

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3087
    if-ltz v0, :cond_134

    iget-object v4, p0, Lbl/xw;->videoPositionList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_134

    .line 3088
    iput v0, p0, Lbl/xw;->videoPosition:I

    .line 3092
    :goto_b3
    const-string v4, "EbookReader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8bfb\u53d6\u4fdd\u5b58\u7684\u89c6\u9891\u4f4d\u7f6e: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lbl/xw;->videoPositionList:Ljava/util/List;

    iget v6, p0, Lbl/xw;->videoPosition:I

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3095
    invoke-direct {p0, v1, v2, v3}, Lbl/xw;->shrinkVideoView(Landroid/app/Activity;II)V

    .line 3098
    invoke-direct {p0, v1, v2, v3}, Lbl/xw;->shrinkDanmakuView(Landroid/app/Activity;II)V

    .line 3101
    invoke-direct {p0, v1, v2, v3}, Lbl/xw;->showGrayBackgroundPanel(Landroid/app/Activity;II)V

    .line 3104
    iget-object v0, p0, Lbl/xw;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    if-nez v0, :cond_e9

    .line 3105
    new-instance v0, Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ebook/util/EbookCacheManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbl/xw;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    .line 3107
    :cond_e9
    iget-object v0, p0, Lbl/xw;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    if-nez v0, :cond_f4

    .line 3108
    new-instance v0, Lcom/bilibili/tv/ebook/util/BookshelfManager;

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ebook/util/BookshelfManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbl/xw;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    .line 3111
    :cond_f4
    iput-boolean v8, p0, Lbl/xw;->isEbookPanelShown:Z

    .line 3112
    const-string v0, "ebook"

    iput-object v0, p0, Lbl/xw;->controlTarget:Ljava/lang/String;

    .line 3113
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u9762\u677f\u5df2\u663e\u793a\uff0ccontrolTarget\u8bbe\u7f6e\u4e3aebook"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3116
    iget-object v0, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    if-eqz v0, :cond_138

    iget-object v0, p0, Lbl/xw;->currentBookFilePath:Ljava/lang/String;

    if-eqz v0, :cond_138

    .line 3117
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u68c0\u6d4b\u5230\u6b63\u5728\u9605\u8bfb\u7684\u4e66\u7c4d\uff0c\u6062\u590d\u9605\u8bfb\u8fdb\u5ea6: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    invoke-virtual {v2}, Lcom/bilibili/tv/ebook/model/Book;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3119
    iget-object v0, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    invoke-direct {p0, v0}, Lbl/xw;->restoreReadingProgress(Lcom/bilibili/tv/ebook/model/Book;)V

    goto/16 :goto_f

    .line 3073
    :cond_12e
    const/16 v4, 0x1e

    iput v4, p0, Lbl/xw;->ebookPanelPercent:I

    goto/16 :goto_46

    .line 3090
    :cond_134
    iput v7, p0, Lbl/xw;->videoPosition:I

    goto/16 :goto_b3

    .line 3121
    :cond_138
    const-string v0, "EbookReader"

    const-string v1, "\u6ca1\u6709\u6b63\u5728\u9605\u8bfb\u7684\u4e66\u7c4d\uff0c\u663e\u793a\u9996\u9875\u5185\u5bb9"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3123
    invoke-direct {p0}, Lbl/xw;->showBookshelfOrFileChooser()V

    goto/16 :goto_f

    .line 3069
    :array_144
    .array-data 4
        0x19
        0x1e
        0x23
        0x28
        0x2d
        0x32
    .end array-data
.end method

.method private showFileChooserInPanel()V
    .locals 9

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/16 v4, 0x14

    const/4 v5, 0x1

    .line 1952
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v1

    .line 1953
    if-nez v1, :cond_15

    .line 1954
    const-string v0, "EbookReader"

    const-string v1, "Activity is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    :goto_14
    return-void

    .line 1958
    :cond_15
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    if-nez v0, :cond_21

    .line 1959
    const-string v0, "EbookReader"

    const-string v1, "ebookPanel is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 1963
    :cond_21
    const-string v0, "EbookReader"

    const-string v2, "\u5728\u7535\u5b50\u4e66\u9762\u677f\u4e2d\u663e\u793a\u6587\u4ef6\u9009\u62e9\u5668"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
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

    .line 1965
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

    .line 1968
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_95

    .line 1969
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v1, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_95

    .line 1971
    const-string v0, "EbookReader"

    const-string v2, "\u6ca1\u6709\u5b58\u50a8\u6743\u9650\uff0c\u8bf7\u6c42\u6743\u9650"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    new-array v0, v5, [Ljava/lang/String;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v7

    const/16 v2, 0x3e9

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 1976
    const-string v0, "\u8bf7\u6388\u4e88\u5b58\u50a8\u6743\u9650\u540e\u518d\u8bd5"

    invoke-static {v1, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1978
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_14

    .line 1964
    :cond_92
    const-string v0, "\u672a\u663e\u793a"

    goto :goto_3f

    .line 1984
    :cond_95
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_a9

    .line 1985
    const-string v0, "EbookReader"

    const-string v2, "\u7535\u5b50\u4e66\u9762\u677f\u672a\u663e\u793a\uff0c\u8bbe\u7f6e\u4e3aVISIBLE"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1990
    :cond_a9
    const-string v0, "EbookReader"

    const-string v2, "\u6e05\u7a7a\u7535\u5b50\u4e66\u9762\u677f\u4e2d\u7684\u5185\u5bb9"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1994
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1995
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1996
    const-string v2, "#333333"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1997
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2003
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2004
    const-string v3, "\u9009\u62e9\u7535\u5b50\u4e66\u6587\u4ef6"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2005
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2006
    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2007
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2008
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 2009
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2012
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2013
    const v3, -0x333334

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2014
    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2015
    invoke-virtual {v2, v4, v8, v4, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2016
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2019
    new-instance v3, Landroid/widget/ListView;

    invoke-direct {v3, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 2020
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2024
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2025
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v4, -0xbbbbbc

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2026
    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 2027
    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 2028
    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 2029
    const/high16 v1, 0x20000

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    .line 2030
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2032
    const-string v1, "EbookReader"

    const-string v4, "\u6587\u4ef6\u9009\u62e9\u5668\u5e03\u5c40\u521b\u5efa\u5b8c\u6210\uff0c\u51c6\u5907\u6dfb\u52a0\u5230\u7535\u5b50\u4e66\u9762\u677f"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    iget-object v1, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2034
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

    .line 2037
    iput-boolean v5, p0, Lbl/xw;->isFileChooserShown:Z

    .line 2038
    const-string v0, "EbookReader"

    const-string v1, "\u6587\u4ef6\u9009\u62e9\u5668\u5df2\u663e\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v4, "Download"

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2042
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_172

    .line 2043
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 2047
    :cond_172
    invoke-direct {p0, v3, v2, v0}, Lbl/xw;->loadFileList(Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V

    goto/16 :goto_14
.end method

.method private showGrayBackgroundPanel(Landroid/app/Activity;II)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v6, -0x1

    .line 3268
    invoke-direct {p0, p1}, Lbl/xw;->dumpViewHierarchy(Landroid/app/Activity;)V

    .line 3271
    invoke-virtual {p0}, Lbl/xw;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    .line 3272
    if-nez v0, :cond_14

    .line 3273
    const-string v0, "EbookReader"

    const-string v1, "\u64ad\u653e\u5668\u4e0a\u4e0b\u6587\u4e3a\u7a7a\uff0c\u65e0\u6cd5\u521b\u5efa\u7535\u5b50\u4e66\u9762\u677f"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3356
    :goto_13
    return-void

    .line 3278
    :cond_14
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->getIVideoView()Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    move-result-object v0

    .line 3279
    if-nez v0, :cond_22

    .line 3280
    const-string v0, "EbookReader"

    const-string v1, "\u89c6\u9891\u89c6\u56fe\u63a5\u53e3\u4e3a\u7a7a\uff0c\u65e0\u6cd5\u521b\u5efa\u7535\u5b50\u4e66\u9762\u677f"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 3284
    :cond_22
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getView()Landroid/view/View;

    move-result-object v0

    .line 3285
    if-nez v0, :cond_30

    .line 3286
    const-string v0, "EbookReader"

    const-string v1, "\u89c6\u9891\u89c6\u56fe\u4e3a\u7a7a\uff0c\u65e0\u6cd5\u521b\u5efa\u7535\u5b50\u4e66\u9762\u677f"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 3291
    :cond_30
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3292
    if-nez v0, :cond_40

    .line 3293
    const-string v0, "EbookReader"

    const-string v1, "\u89c6\u9891\u89c6\u56fe\u7684\u7236\u5bb9\u5668\u4e3a\u7a7a\uff0c\u65e0\u6cd5\u521b\u5efa\u7535\u5b50\u4e66\u9762\u677f"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 3297
    :cond_40
    const-string v3, "EbookReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u7535\u5b50\u4e66\u9762\u677f\u5c06\u6dfb\u52a0\u5230\u7236\u5bb9\u5668: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \u5b50View\u6570: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3300
    iget-object v3, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    if-nez v3, :cond_f5

    .line 3301
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    .line 3302
    iget-object v3, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    const-string v4, "#333333"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 3306
    iget v3, p0, Lbl/xw;->ebookPanelPercent:I

    mul-int/2addr v3, p2

    div-int/lit8 v4, v3, 0x64

    .line 3311
    iget v3, p0, Lbl/xw;->videoPosition:I

    if-eqz v3, :cond_91

    iget v3, p0, Lbl/xw;->videoPosition:I

    if-ne v3, v2, :cond_92

    :cond_91
    move v1, v2

    .line 3314
    :cond_92
    instance-of v3, v0, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_d7

    .line 3315
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3320
    if-eqz v1, :cond_d5

    const/4 v1, 0x5

    :goto_9e
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object v1, v3

    .line 3348
    :goto_a1
    iget-object v3, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3350
    const-string v1, "EbookReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7535\u5b50\u4e66\u9762\u677f\u5df2\u6dfb\u52a0\u5230\u7236\u5bb9\u5668\u7d22\u5f15: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \u603b\u5b50View\u6570: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3351
    const-string v0, "EbookReader"

    const-string v1, "View\u5c42\u7ea7: [0]\u89c6\u9891 -> [1]\u7535\u5b50\u4e66\u9762\u677f -> [2+]overlay UI"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 3320
    :cond_d5
    const/4 v1, 0x3

    goto :goto_9e

    .line 3322
    :cond_d7
    instance-of v3, v0, Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_ef

    .line 3323
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3328
    if-eqz v1, :cond_e9

    .line 3329
    const/16 v1, 0xb

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_e7
    move-object v1, v3

    .line 3334
    goto :goto_a1

    .line 3331
    :cond_e9
    const/16 v1, 0x9

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_e7

    .line 3336
    :cond_ef
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_a1

    .line 3353
    :cond_f5
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3354
    const-string v0, "EbookReader"

    const-string v1, "\u7070\u8272\u80cc\u666f\u9762\u677f\u5df2\u663e\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13
.end method

.method private showLoadingIndicator()V
    .locals 2

    .prologue
    .line 2266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xw;->isLoadingEbook:Z

    .line 2267
    const-string v0, "EbookReader"

    const-string v1, "\u663e\u793a\u52a0\u8f7d\u8fdb\u5ea6\u63d0\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lbl/xw$22;

    invoke-direct {v1, p0}, Lbl/xw$22;-><init>(Lbl/xw;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2321
    return-void
.end method

.method private showRemoveBookDialog(Lcom/bilibili/tv/ebook/model/BookshelfItem;I)V
    .locals 5

    .prologue
    .line 3732
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    .line 3733
    if-nez v0, :cond_e

    .line 3734
    const-string v0, "EbookReader"

    const-string v1, "Activity is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3780
    :goto_d
    return-void

    .line 3739
    :cond_e
    new-instance v1, Lbl/agb$a;

    invoke-direct {v1, v0}, Lbl/agb$a;-><init>(Landroid/app/Activity;)V

    .line 3740
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lbl/agb$a;->a(I)Lbl/agb$a;

    move-result-object v2

    const-string v3, "\u786e\u8ba4\u5220\u9664\u6b64\u4e66\uff1f"

    invoke-virtual {v2, v3}, Lbl/agb$a;->a(Ljava/lang/String;)Lbl/agb$a;

    move-result-object v2

    const v3, 0x7f0c0079

    .line 3741
    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lbl/xw$33;

    invoke-direct {v4, p0, p1, p2, v0}, Lbl/xw$33;-><init>(Lbl/xw;Lcom/bilibili/tv/ebook/model/BookshelfItem;ILandroid/app/Activity;)V

    invoke-virtual {v2, v3, v4}, Lbl/agb$a;->a(Ljava/lang/String;Lbl/agb$b;)Lbl/agb$a;

    move-result-object v2

    const v3, 0x7f0c0076

    .line 3773
    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lbl/xw$32;

    invoke-direct {v3, p0}, Lbl/xw$32;-><init>(Lbl/xw;)V

    invoke-virtual {v2, v0, v3}, Lbl/agb$a;->b(Ljava/lang/String;Lbl/agb$b;)Lbl/agb$a;

    .line 3779
    invoke-virtual {v1}, Lbl/agb$a;->a()Lbl/agb;

    move-result-object v0

    invoke-virtual {v0}, Lbl/agb;->show()V

    goto :goto_d
.end method

.method private shrinkDanmakuView(Landroid/app/Activity;II)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v6, -0x1

    .line 4020
    const v0, 0x7f08006e

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 4021
    if-nez v3, :cond_14

    .line 4022
    const-string v0, "EbookReader"

    const-string v1, "\u5f39\u5e55\u89c6\u56fe\u672a\u627e\u5230"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4097
    :goto_13
    return-void

    .line 4026
    :cond_14
    const-string v0, "EbookReader"

    const-string v2, "\u5f00\u59cb\u7f29\u5c0f\u5f39\u5e55\u89c6\u56fe"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4029
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4030
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-direct {v2, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lbl/xw;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    .line 4031
    const-string v2, "EbookReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u539f\u59cb\u5f39\u5e55\u5e03\u5c40\u53c2\u6570\u5df2\u4fdd\u5b58: width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", height="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4034
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 4035
    if-nez v0, :cond_62

    .line 4036
    const-string v0, "EbookReader"

    const-string v1, "Danmaku view parent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 4040
    :cond_62
    const-string v2, "EbookReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5f39\u5e55\u89c6\u56fe\u7236\u5bb9\u5668: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4043
    iget v2, p0, Lbl/xw;->ebookPanelPercent:I

    rsub-int/lit8 v2, v2, 0x64

    mul-int/2addr v2, p2

    div-int/lit8 v4, v2, 0x64

    .line 4046
    iget v2, p0, Lbl/xw;->videoPosition:I

    if-eqz v2, :cond_91

    iget v2, p0, Lbl/xw;->videoPosition:I

    if-ne v2, v1, :cond_f2

    .line 4050
    :cond_91
    :goto_91
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_101

    .line 4051
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 4055
    if-eqz v1, :cond_f7

    .line 4057
    iget v0, p0, Lbl/xw;->videoPosition:I

    if-nez v0, :cond_f4

    .line 4058
    const/16 v0, 0x33

    .line 4070
    :goto_a2
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object v0, v2

    .line 4092
    :goto_a5
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4093
    iget-object v0, p0, Lbl/xw;->videoPositionList:Ljava/util/List;

    if-eqz v0, :cond_133

    iget v0, p0, Lbl/xw;->videoPosition:I

    if-ltz v0, :cond_133

    iget v0, p0, Lbl/xw;->videoPosition:I

    iget-object v1, p0, Lbl/xw;->videoPositionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_133

    iget-object v0, p0, Lbl/xw;->videoPositionList:Ljava/util/List;

    iget v1, p0, Lbl/xw;->videoPosition:I

    .line 4094
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4095
    :goto_c4
    const-string v1, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f39\u5e55\u5df2\u7f29\u5c0f: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \u4f4d\u7f6e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 4046
    :cond_f2
    const/4 v1, 0x0

    goto :goto_91

    .line 4060
    :cond_f4
    const/16 v0, 0x53

    goto :goto_a2

    .line 4064
    :cond_f7
    iget v0, p0, Lbl/xw;->videoPosition:I

    if-ne v0, v7, :cond_fe

    .line 4065
    const/16 v0, 0x35

    goto :goto_a2

    .line 4067
    :cond_fe
    const/16 v0, 0x55

    goto :goto_a2

    .line 4072
    :cond_101
    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_12c

    .line 4073
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4076
    if-eqz v1, :cond_11f

    .line 4077
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 4082
    :goto_111
    iget v1, p0, Lbl/xw;->videoPosition:I

    if-eqz v1, :cond_119

    iget v1, p0, Lbl/xw;->videoPosition:I

    if-ne v1, v7, :cond_125

    .line 4083
    :cond_119
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_a5

    .line 4079
    :cond_11f
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_111

    .line 4085
    :cond_125
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_a5

    .line 4089
    :cond_12c
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v4, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto/16 :goto_a5

    .line 4094
    :cond_133
    const-string v0, "\u5de6\u4e0a"

    goto :goto_c4
.end method

.method private shrinkVideoView(Landroid/app/Activity;II)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v1, 0x1

    .line 3134
    sget v0, Lmybl/BiliFilter;->prefer_videoview:I

    if-eq v0, v7, :cond_2b

    .line 3135
    const-string v0, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f53\u524d\u672a\u4f7f\u7528TextureView\u6a21\u5f0f, prefer_videoview="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lmybl/BiliFilter;->prefer_videoview:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3136
    const-string v0, "\u7535\u5b50\u4e66\u529f\u80fd\u9700\u8981TextureView\u6a21\u5f0f\n\u8bf7\u5148\u5728\u4e2a\u6027\u5316\u8bbe\u7f6e\u4e2d\u5207\u6362"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 3138
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3260
    :goto_2a
    return-void

    .line 3143
    :cond_2b
    invoke-virtual {p0}, Lbl/xw;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    .line 3144
    if-nez v0, :cond_39

    .line 3145
    const-string v0, "EbookReader"

    const-string v1, "\u64ad\u653e\u5668\u4e0a\u4e0b\u6587\u4e3a\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 3150
    :cond_39
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->getIVideoView()Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    move-result-object v0

    .line 3151
    if-nez v0, :cond_47

    .line 3152
    const-string v0, "EbookReader"

    const-string v1, "\u89c6\u9891\u89c6\u56fe\u63a5\u53e3\u4e3a\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 3156
    :cond_47
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getView()Landroid/view/View;

    move-result-object v3

    .line 3157
    if-nez v3, :cond_55

    .line 3158
    const-string v0, "EbookReader"

    const-string v1, "\u89c6\u9891\u89c6\u56fe\u4e3a\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 3163
    :cond_55
    instance-of v0, v3, Landroid/view/TextureView;

    if-nez v0, :cond_a2

    .line 3164
    const-string v0, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u89c6\u9891\u89c6\u56fe\u4e0d\u662fTextureView: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524d\u4f7f\u7528\u7684\u662f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3166
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\u8bf7\u5207\u6362\u5230TextureView\u6a21\u5f0f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3165
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 3167
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2a

    .line 3171
    :cond_a2
    const-string v0, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u627e\u5230\u89c6\u9891\u89c6\u56fe: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3174
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3175
    if-nez v0, :cond_d3

    .line 3176
    const-string v0, "EbookReader"

    const-string v1, "\u89c6\u9891\u89c6\u56fe\u7684\u7236\u5bb9\u5668\u4e3a\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    .line 3179
    :cond_d3
    const-string v2, "EbookReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u89c6\u9891\u89c6\u56fe\u7236\u5bb9\u5668: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3184
    iget-object v2, p0, Lbl/xw;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    if-nez v2, :cond_1b2

    .line 3185
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 3186
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v4, v5, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v4, p0, Lbl/xw;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    .line 3187
    const-string v2, "EbookReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u539f\u59cb\u89c6\u9891\u5e03\u5c40\u53c2\u6570\u5df2\u4fdd\u5b58: width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lbl/xw;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", height="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lbl/xw;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3193
    :goto_130
    iget v2, p0, Lbl/xw;->ebookPanelPercent:I

    rsub-int/lit8 v2, v2, 0x64

    mul-int/2addr v2, p2

    div-int/lit8 v4, v2, 0x64

    .line 3198
    iget v2, p0, Lbl/xw;->videoPosition:I

    if-eqz v2, :cond_13f

    iget v2, p0, Lbl/xw;->videoPosition:I

    if-ne v2, v1, :cond_1bb

    .line 3200
    :cond_13f
    :goto_13f
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1ca

    .line 3201
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3207
    if-eqz v1, :cond_1c0

    .line 3210
    iget v0, p0, Lbl/xw;->videoPosition:I

    if-nez v0, :cond_1bd

    .line 3211
    const/16 v0, 0x33

    .line 3224
    :goto_150
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object v0, v2

    .line 3253
    :goto_153
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3255
    iget-object v0, p0, Lbl/xw;->videoPositionList:Ljava/util/List;

    if-eqz v0, :cond_1fd

    iget v0, p0, Lbl/xw;->videoPosition:I

    if-ltz v0, :cond_1fd

    iget v0, p0, Lbl/xw;->videoPosition:I

    iget-object v1, p0, Lbl/xw;->videoPositionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1fd

    iget-object v0, p0, Lbl/xw;->videoPositionList:Ljava/util/List;

    iget v1, p0, Lbl/xw;->videoPosition:I

    .line 3256
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3257
    :goto_172
    const-string v1, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u89c6\u9891\u5df2\u7f29\u5c0f: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \u4f4d\u7f6e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", \u7535\u5b50\u4e66\u5360\u6bd4: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lbl/xw;->ebookPanelPercent:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    .line 3189
    :cond_1b2
    const-string v2, "EbookReader"

    const-string v4, "\u89c6\u9891\u5df2\u7ecf\u7f29\u5c0f\u8fc7\uff0c\u8df3\u8fc7\u4fdd\u5b58\u539f\u59cb\u53c2\u6570"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_130

    .line 3198
    :cond_1bb
    const/4 v1, 0x0

    goto :goto_13f

    .line 3213
    :cond_1bd
    const/16 v0, 0x53

    goto :goto_150

    .line 3218
    :cond_1c0
    iget v0, p0, Lbl/xw;->videoPosition:I

    if-ne v0, v7, :cond_1c7

    .line 3219
    const/16 v0, 0x35

    goto :goto_150

    .line 3221
    :cond_1c7
    const/16 v0, 0x55

    goto :goto_150

    .line 3226
    :cond_1ca
    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1f6

    .line 3227
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3233
    if-eqz v1, :cond_1e9

    .line 3234
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3239
    :goto_1da
    iget v1, p0, Lbl/xw;->videoPosition:I

    if-eqz v1, :cond_1e2

    iget v1, p0, Lbl/xw;->videoPosition:I

    if-ne v1, v7, :cond_1ef

    .line 3240
    :cond_1e2
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_153

    .line 3236
    :cond_1e9
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1da

    .line 3242
    :cond_1ef
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_153

    .line 3247
    :cond_1f6
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v4, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto/16 :goto_153

    .line 3256
    :cond_1fd
    const-string v0, "\u5de6\u4e0a"

    goto/16 :goto_172
.end method

.method private updateDanmakuViewWidth(I)V
    .locals 2

    .prologue
    .line 1322
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    .line 1323
    if-nez v0, :cond_7

    .line 1330
    :cond_6
    :goto_6
    return-void

    .line 1325
    :cond_7
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1326
    if-eqz v0, :cond_6

    .line 1329
    invoke-direct {p0, v0, p1}, Lbl/xw;->findAndUpdateDanmakuView(Landroid/view/ViewGroup;I)V

    goto :goto_6
.end method

.method private updateEbookPanelWidth(I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    .line 1492
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    if-nez v0, :cond_7

    .line 1521
    :cond_6
    :goto_6
    return-void

    .line 1494
    :cond_7
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1495
    if-eqz v0, :cond_6

    .line 1498
    iget v2, p0, Lbl/xw;->videoPosition:I

    if-eqz v2, :cond_19

    iget v2, p0, Lbl/xw;->videoPosition:I

    if-ne v2, v1, :cond_54

    .line 1501
    :cond_19
    :goto_19
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_58

    .line 1502
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, p1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1504
    if-eqz v1, :cond_56

    const/4 v0, 0x5

    :goto_25
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object v0, v2

    .line 1518
    :goto_28
    iget-object v2, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1519
    const-string v2, "EbookReader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7535\u5b50\u4e66\u9762\u677f\u5bbd\u5ea6\u5df2\u66f4\u65b0: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", \u4f4d\u7f6e: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_75

    const-string v0, "\u53f3\u4fa7"

    :goto_48
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1498
    :cond_54
    const/4 v1, 0x0

    goto :goto_19

    .line 1504
    :cond_56
    const/4 v0, 0x3

    goto :goto_25

    .line 1506
    :cond_58
    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_6f

    .line 1507
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1509
    if-eqz v1, :cond_69

    .line 1510
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_28

    .line 1512
    :cond_69
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_28

    .line 1516
    :cond_6f
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_28

    .line 1519
    :cond_75
    const-string v0, "\u5de6\u4fa7"

    goto :goto_48
.end method

.method private updateSubtitleViewWidth(I)V
    .locals 2

    .prologue
    .line 1406
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    .line 1407
    if-nez v0, :cond_7

    .line 1414
    :cond_6
    :goto_6
    return-void

    .line 1409
    :cond_7
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1410
    if-eqz v0, :cond_6

    .line 1413
    invoke-direct {p0, v0, p1}, Lbl/xw;->findAndUpdateSubtitleView(Landroid/view/ViewGroup;I)V

    goto :goto_6
.end method

.method private updateVideoViewWidth(I)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v4, -0x1

    .line 1253
    invoke-virtual {p0}, Lbl/xw;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    .line 1254
    if-nez v0, :cond_a

    .line 1314
    :cond_9
    :goto_9
    return-void

    .line 1256
    :cond_a
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->getIVideoView()Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    move-result-object v0

    .line 1257
    if-eqz v0, :cond_9

    .line 1259
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getView()Landroid/view/View;

    move-result-object v3

    .line 1260
    if-eqz v3, :cond_9

    .line 1262
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1263
    if-eqz v0, :cond_9

    .line 1266
    iget v2, p0, Lbl/xw;->videoPosition:I

    if-eqz v2, :cond_26

    iget v2, p0, Lbl/xw;->videoPosition:I

    if-ne v2, v1, :cond_7c

    .line 1269
    :cond_26
    :goto_26
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_8b

    .line 1270
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, p1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1274
    if-eqz v1, :cond_81

    .line 1276
    iget v0, p0, Lbl/xw;->videoPosition:I

    if-nez v0, :cond_7e

    .line 1277
    const/16 v0, 0x33

    .line 1289
    :goto_37
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object v0, v2

    .line 1310
    :goto_3a
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1311
    iget-object v0, p0, Lbl/xw;->videoPositionList:Ljava/util/List;

    if-eqz v0, :cond_bb

    iget v0, p0, Lbl/xw;->videoPosition:I

    if-ltz v0, :cond_bb

    iget v0, p0, Lbl/xw;->videoPosition:I

    iget-object v1, p0, Lbl/xw;->videoPositionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_bb

    iget-object v0, p0, Lbl/xw;->videoPositionList:Ljava/util/List;

    iget v1, p0, Lbl/xw;->videoPosition:I

    .line 1312
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1313
    :goto_59
    const-string v1, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u89c6\u9891\u89c6\u56fe\u5bbd\u5ea6\u5df2\u66f4\u65b0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \u4f4d\u7f6e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1266
    :cond_7c
    const/4 v1, 0x0

    goto :goto_26

    .line 1279
    :cond_7e
    const/16 v0, 0x53

    goto :goto_37

    .line 1283
    :cond_81
    iget v0, p0, Lbl/xw;->videoPosition:I

    if-ne v0, v5, :cond_88

    .line 1284
    const/16 v0, 0x35

    goto :goto_37

    .line 1286
    :cond_88
    const/16 v0, 0x55

    goto :goto_37

    .line 1291
    :cond_8b
    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_b5

    .line 1292
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1295
    if-eqz v1, :cond_a9

    .line 1296
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1301
    :goto_9b
    iget v1, p0, Lbl/xw;->videoPosition:I

    if-eqz v1, :cond_a3

    iget v1, p0, Lbl/xw;->videoPosition:I

    if-ne v1, v5, :cond_af

    .line 1302
    :cond_a3
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3a

    .line 1298
    :cond_a9
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_9b

    .line 1304
    :cond_af
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3a

    .line 1308
    :cond_b5
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_3a

    .line 1312
    :cond_bb
    const-string v0, "\u5de6\u4e0a"

    goto :goto_59
.end method


# virtual methods
.method public P()V
    .locals 1

    .prologue
    const/16 v0, 0x17

    .line 500
    invoke-direct {p0, v0}, Lbl/xw;->g(I)V

    .line 501
    invoke-direct {p0, v0}, Lbl/xw;->g(I)V

    .line 502
    return-void
.end method

.method public Q()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 635
    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v1

    .line 636
    if-eqz v1, :cond_13

    iget-object v1, v1, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    if-eqz v1, :cond_13

    iget-object v2, v1, Lcom/bilibili/lib/media/resource/MediaResource;->a:Lcom/bilibili/lib/media/resource/VodIndex;

    if-nez v2, :cond_14

    .line 654
    :cond_13
    :goto_13
    return-void

    .line 639
    :cond_14
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 640
    iget-object v2, v1, Lcom/bilibili/lib/media/resource/MediaResource;->a:Lcom/bilibili/lib/media/resource/VodIndex;

    iget-object v4, v2, Lcom/bilibili/lib/media/resource/VodIndex;->a:Ljava/util/ArrayList;

    .line 641
    invoke-virtual {v1}, Lcom/bilibili/lib/media/resource/MediaResource;->d()Lcom/bilibili/lib/media/resource/PlayIndex;

    move-result-object v5

    .line 642
    if-eqz v4, :cond_13

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_13

    if-eqz v5, :cond_13

    move v1, v0

    move v2, v0

    .line 646
    :goto_2d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_53

    .line 647
    iget-object v6, v5, Lcom/bilibili/lib/media/resource/PlayIndex;->c:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/lib/media/resource/PlayIndex;

    iget-object v0, v0, Lcom/bilibili/lib/media/resource/PlayIndex;->c:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    move v2, v1

    .line 650
    :cond_44
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/lib/media/resource/PlayIndex;

    iget-object v0, v0, Lcom/bilibili/lib/media/resource/PlayIndex;->c:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2d

    .line 652
    :cond_53
    iput-object v3, p0, Lbl/xw;->d:Ljava/util/List;

    .line 653
    iput v2, p0, Lbl/xw;->e:I

    goto :goto_13
.end method

.method public a(Landroid/os/Message;)Ljava/lang/Boolean;
    .locals 6

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x0

    .line 163
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_25

    .line 164
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_28

    move v0, v1

    .line 165
    :goto_11
    iget-object v2, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    if-eqz v2, :cond_25

    .line 166
    iget-object v2, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(IIJ)V

    .line 167
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 168
    invoke-virtual {p0, v1}, Lbl/xw;->d(Z)V

    .line 172
    :cond_25
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 164
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
    .line 548
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->DANMAKU_SIZE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lbl/xw;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 549
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lbl/abd;->a(Landroid/content/Context;F)V

    .line 550
    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 218
    invoke-super {p0, p1, p2, p3}, Lbl/xh;->a(IILandroid/content/Intent;)V

    .line 219
    return-void
.end method

.method public a(Landroid/app/Activity;Lbl/xf;)V
    .locals 1

    .prologue
    .line 157
    invoke-super {p0, p1, p2}, Lbl/xh;->a(Landroid/app/Activity;Lbl/xf;)V

    .line 158
    const/4 v0, 0x3

    invoke-virtual {p2, v0, p0}, Lbl/xf;->a(ILbl/bbb;)V

    .line 159
    return-void
.end method

.method public adjust_screen(I)V
    .locals 4

    .prologue
    .line 137
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SCREEN_ADJUST:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lbl/xw;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 138
    return-void
.end method

.method public b(F)V
    .locals 4

    .prologue
    .line 554
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->DANMAKU_ALPHA:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lbl/xw;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 555
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lbl/abd;->b(Landroid/content/Context;F)V

    .line 556
    return-void
.end method

.method public varargs b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 181
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->QUALITY_SWITCH_SUCCESS:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    if-eq p1, v0, :cond_c

    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->EPISODE_SWITCH_SUCCESS:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    if-eq p1, v0, :cond_c

    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_EPISODE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    if-ne p1, v0, :cond_43

    .line 186
    :cond_c
    iget-boolean v0, p0, Lbl/xw;->isEbookPanelShown:Z

    if-eqz v0, :cond_43

    .line 187
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u89c6\u9891\u5207\u6362\u4e8b\u4ef6: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \u7535\u5b50\u4e66\u533a\u57df\u5df2\u6253\u5f00\uff0c\u91cd\u65b0\u5e94\u7528\u89c6\u9891\u7f29\u5c0f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_43

    .line 191
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lbl/xw$2;

    invoke-direct {v2, p0, v0}, Lbl/xw$2;-><init>(Lbl/xw;Landroid/app/Activity;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 207
    :cond_43
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->QUALITY_SWITCH_SUCCESS:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    if-ne p1, v0, :cond_63

    invoke-direct {p0}, Lbl/xw;->T()I

    move-result v0

    if-lez v0, :cond_63

    iget-object v1, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    if-eqz v1, :cond_63

    .line 208
    iget-object v1, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    const/4 v2, 0x2

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v5}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(IIJ)V

    .line 209
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 210
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbl/xw;->d(Z)V

    .line 213
    :cond_63
    invoke-super {p0, p1, p2}, Lbl/xh;->b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 214
    return-void
.end method

.method public c(Z)V
    .locals 3

    .prologue
    .line 511
    iget-object v0, p0, Lbl/xw;->a:Lbl/xf;

    const/4 v1, 0x5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbl/xf;->a(ILjava/lang/Object;)V

    .line 512
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lbl/abd;->c(Landroid/content/Context;Z)V

    .line 513
    return-void
.end method

.method public clearBookshelf()V
    .locals 5

    .prologue
    .line 3553
    const-string v0, "EbookReader"

    const-string v1, "\u6e05\u7a7a\u4e66\u67b6\u83dc\u5355\u9879\u88ab\u70b9\u51fb"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3555
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    .line 3556
    if-nez v0, :cond_15

    .line 3557
    const-string v0, "EbookReader"

    const-string v1, "Activity is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3600
    :goto_14
    return-void

    .line 3562
    :cond_15
    new-instance v1, Lbl/agb$a;

    invoke-direct {v1, v0}, Lbl/agb$a;-><init>(Landroid/app/Activity;)V

    .line 3563
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lbl/agb$a;->a(I)Lbl/agb$a;

    move-result-object v2

    const-string v3, "\u786e\u8ba4\u6e05\u7a7a\u4e66\u67b6\uff1f"

    invoke-virtual {v2, v3}, Lbl/agb$a;->a(Ljava/lang/String;)Lbl/agb$a;

    move-result-object v2

    const v3, 0x7f0c0079

    .line 3564
    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lbl/xw$31;

    invoke-direct {v4, p0, v0}, Lbl/xw$31;-><init>(Lbl/xw;Landroid/app/Activity;)V

    invoke-virtual {v2, v3, v4}, Lbl/agb$a;->a(Ljava/lang/String;Lbl/agb$b;)Lbl/agb$a;

    move-result-object v2

    const v3, 0x7f0c0076

    .line 3593
    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lbl/xw$30;

    invoke-direct {v3, p0}, Lbl/xw$30;-><init>(Lbl/xw;)V

    invoke-virtual {v2, v0, v3}, Lbl/agb$a;->b(Ljava/lang/String;Lbl/agb$b;)Lbl/agb$a;

    .line 3599
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

    .line 3425
    const-string v0, "EbookReader"

    const-string v1, "\u5f00\u59cb\u5173\u95ed\u5f53\u524d\u4e66\u7c4d\uff0c\u56de\u5230\u7535\u5b50\u4e66\u9996\u9875"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3428
    invoke-direct {p0}, Lbl/xw;->saveReadingProgressImmediately()V

    .line 3432
    invoke-direct {p0}, Lbl/xw;->destroyEbookWebView()V

    .line 3435
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1f

    .line 3436
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 3437
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u9762\u677f\u5df2\u6e05\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3441
    :cond_1f
    iput-object v2, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    .line 3442
    iput v3, p0, Lbl/xw;->currentChapterIndex:I

    .line 3443
    iput-object v2, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    .line 3444
    iput-boolean v3, p0, Lbl/xw;->isReadingBook:Z

    .line 3445
    iput-object v2, p0, Lbl/xw;->currentBookFilePath:Ljava/lang/String;

    .line 3447
    const-string v0, "EbookReader"

    const-string v1, "\u5f53\u524d\u4e66\u7c4d\u5df2\u5173\u95ed\uff0c\u56de\u5230\u7535\u5b50\u4e66\u9996\u9875"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3450
    invoke-direct {p0}, Lbl/xw;->showBookshelfOrFileChooser()V

    .line 3451
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 3949
    invoke-super {p0}, Lbl/xh;->d()V

    .line 3952
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_11

    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lbl/xw;->isEbookPanelShown:Z

    if-eqz v0, :cond_88

    .line 3953
    :cond_11
    const-string v0, "EbookReader"

    const-string v1, "Activity\u9500\u6bc1\uff0c\u515c\u5e95\u6e05\u7406\u7535\u5b50\u4e66\u8d44\u6e90"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3956
    invoke-direct {p0}, Lbl/xw;->cancelParsingTask()V

    .line 3959
    invoke-direct {p0}, Lbl/xw;->destroyEbookWebView()V

    .line 3962
    invoke-direct {p0}, Lbl/xw;->clearChapterCache()V

    .line 3965
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_36

    .line 3966
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3967
    if-eqz v0, :cond_34

    .line 3968
    iget-object v1, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3970
    :cond_34
    iput-object v2, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    .line 3974
    :cond_36
    iget-object v0, p0, Lbl/xw;->saveProgressHandler:Lbl/xw$SaveProgressHandler;

    if-eqz v0, :cond_41

    .line 3975
    iget-object v0, p0, Lbl/xw;->saveProgressHandler:Lbl/xw$SaveProgressHandler;

    invoke-virtual {v0, v2}, Lbl/xw$SaveProgressHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3976
    iput-object v2, p0, Lbl/xw;->saveProgressHandler:Lbl/xw$SaveProgressHandler;

    .line 3978
    :cond_41
    iput-object v2, p0, Lbl/xw;->saveProgressRunnable:Ljava/lang/Runnable;

    .line 3981
    iget-object v0, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    if-eqz v0, :cond_53

    .line 3982
    iget-object v0, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 3983
    iget-object v0, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3984
    iput-object v2, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    .line 3986
    :cond_53
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    if-eqz v0, :cond_63

    .line 3987
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 3988
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3989
    iput-object v2, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    .line 3993
    :cond_63
    iput-boolean v3, p0, Lbl/xw;->isEbookPanelShown:Z

    .line 3994
    iput-boolean v3, p0, Lbl/xw;->isChapterListShown:Z

    .line 3995
    iput-boolean v3, p0, Lbl/xw;->isFileChooserShown:Z

    .line 3996
    iput-boolean v3, p0, Lbl/xw;->isLoadingEbook:Z

    .line 3997
    iput-boolean v3, p0, Lbl/xw;->isReadingBook:Z

    .line 3998
    iput-object v2, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    .line 3999
    iput v3, p0, Lbl/xw;->currentChapterIndex:I

    .line 4000
    iput-object v2, p0, Lbl/xw;->currentBookFilePath:Ljava/lang/String;

    .line 4001
    iput-object v2, p0, Lbl/xw;->loadingProgressBar:Landroid/widget/ProgressBar;

    .line 4002
    iput-object v2, p0, Lbl/xw;->loadingTextView:Landroid/widget/TextView;

    .line 4003
    const-string v0, "video"

    iput-object v0, p0, Lbl/xw;->controlTarget:Ljava/lang/String;

    .line 4007
    iput-object v2, p0, Lbl/xw;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    .line 4008
    iput-object v2, p0, Lbl/xw;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    .line 4009
    iput-object v2, p0, Lbl/xw;->bookshelfItems:Ljava/util/List;

    .line 4011
    const-string v0, "EbookReader"

    const-string v1, "Activity\u9500\u6bc1\uff0c\u7535\u5b50\u4e66\u8d44\u6e90\u5df2\u515c\u5e95\u6e05\u7406\u5b8c\u6210"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4013
    :cond_88
    return-void
.end method

.method public d(Z)V
    .locals 3

    .prologue
    .line 602
    invoke-virtual {p0}, Lbl/xw;->v()V

    .line 605
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    if-nez v0, :cond_34

    .line 606
    const v0, 0x7f0800ef

    invoke-virtual {p0, v0}, Lbl/xw;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    iput-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    .line 607
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->setListener(Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;)V

    .line 608
    invoke-direct {p0}, Lbl/xw;->S()V

    .line 609
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 628
    :cond_26
    :goto_26
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->isShown()Z

    move-result v0

    if-eq v0, p1, :cond_33

    .line 629
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 631
    :cond_33
    return-void

    .line 612
    :cond_34
    invoke-direct {p0}, Lbl/xw;->S()V

    .line 614
    if-eqz p1, :cond_26

    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 615
    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v0

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->view_points:Lorg/json/JSONArray;

    .line 616
    iget-object v1, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_chapter(Lorg/json/JSONArray;)V

    .line 617
    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v0

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->subtitle_info:Lorg/json/JSONObject;

    .line 618
    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v1

    iget-object v1, v1, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v1}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v1

    .line 619
    iget-object v2, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v2, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->setResolveParams(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V

    .line 620
    iget-object v1, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_subtitle(Lorg/json/JSONObject;)V

    goto :goto_26
.end method

.method public e(I)V
    .locals 4

    .prologue
    .line 523
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_QUALITY:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lbl/xw;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 524
    return-void
.end method

.method protected e(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v0

    return v0
.end method

.method public f(I)V
    .locals 3

    .prologue
    .line 529
    packed-switch p1, :pswitch_data_16

    .line 540
    sget-object v0, Ltv/danmaku/videoplayer/core/videoview/AspectRatio;->RATIO_ADJUST_CONTENT:Ltv/danmaku/videoplayer/core/videoview/AspectRatio;

    .line 543
    :goto_5
    iget-object v1, p0, Lbl/xw;->a:Lbl/xf;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lbl/xf;->a(ILjava/lang/Object;)V

    .line 544
    return-void

    .line 531
    :pswitch_c
    sget-object v0, Ltv/danmaku/videoplayer/core/videoview/AspectRatio;->RATIO_16_9_INSIDE:Ltv/danmaku/videoplayer/core/videoview/AspectRatio;

    goto :goto_5

    .line 534
    :pswitch_f
    sget-object v0, Ltv/danmaku/videoplayer/core/videoview/AspectRatio;->RATIO_4_3_INSIDE:Ltv/danmaku/videoplayer/core/videoview/AspectRatio;

    goto :goto_5

    .line 537
    :pswitch_12
    sget-object v0, Ltv/danmaku/videoplayer/core/videoview/AspectRatio;->RATIO_ADJUST_SCREEN:Ltv/danmaku/videoplayer/core/videoview/AspectRatio;

    goto :goto_5

    .line 529
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_c
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method

.method public f(ILandroid/view/KeyEvent;)Z
    .locals 9

    .prologue
    const/16 v7, 0xa0

    const/16 v6, 0x42

    const/16 v5, 0x17

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 223
    const-string v2, "EbookReader"

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

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-boolean v2, p0, Lbl/xw;->isEbookPanelShown:Z

    if-eqz v2, :cond_a9

    if-eq p1, v5, :cond_50

    if-eq p1, v6, :cond_50

    if-ne p1, v7, :cond_a9

    .line 228
    :cond_50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 229
    iget-wide v4, p0, Lbl/xw;->lastConfirmKeyPressTime:J

    sub-long v4, v2, v4

    .line 231
    const-string v6, "EbookReader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u786e\u5b9a\u952e\u70b9\u51fb: count="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lbl/xw;->confirmKeyClickCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", timeSinceLastPress="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-wide/16 v6, 0x320

    cmp-long v4, v4, v6

    if-lez v4, :cond_8a

    .line 235
    iput v1, p0, Lbl/xw;->confirmKeyClickCount:I

    .line 238
    :cond_8a
    iget v4, p0, Lbl/xw;->confirmKeyClickCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lbl/xw;->confirmKeyClickCount:I

    .line 239
    iput-wide v2, p0, Lbl/xw;->lastConfirmKeyPressTime:J

    .line 242
    iget v2, p0, Lbl/xw;->confirmKeyClickCount:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_a4

    .line 243
    const-string v2, "EbookReader"

    const-string v3, "\u8fde\u51fb\u4e09\u6b21\u786e\u5b9a\u952e\uff0c\u9690\u85cf\u7535\u5b50\u4e66\u533a\u57df\uff08\u4e0d\u6e05\u7a7a\u4e66\u7c4d\u6570\u636e\uff09"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iput v1, p0, Lbl/xw;->confirmKeyClickCount:I

    .line 245
    invoke-direct {p0}, Lbl/xw;->hideEbookPanel()V

    .line 316
    :goto_a3
    return v0

    .line 251
    :cond_a4
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v0

    goto :goto_a3

    .line 255
    :cond_a9
    iget-object v2, p0, Lbl/xw;->controlTarget:Ljava/lang/String;

    const-string v3, "ebook"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bf

    .line 256
    const-string v0, "EbookReader"

    const-string v1, "xw.f: \u63a7\u5236\u76ee\u6807\u4e0d\u662f\u7535\u5b50\u4e66\uff0c\u4e0d\u5904\u7406\u6309\u952e"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v0

    goto :goto_a3

    .line 261
    :cond_bf
    invoke-virtual {p0}, Lbl/xw;->isEbookReadingContent()Z

    move-result v2

    if-eqz v2, :cond_15b

    .line 262
    const-string v2, "EbookReader"

    const-string v3, "xw.f: \u5728\u7535\u5b50\u4e66\u9605\u8bfb\u5185\u5bb9\u9875\u9762"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v2, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_10e

    .line 266
    const-string v2, "EbookReader"

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

    .line 267
    invoke-virtual {v4}, Landroid/webkit/WebView;->getScrollY()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", contentHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    .line 268
    invoke-virtual {v4}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 266
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_10e
    const/16 v2, 0x13

    if-ne p1, v2, :cond_124

    .line 273
    const-string v2, "EbookReader"

    const-string v3, "xw.f: \u7535\u5b50\u4e66\u9605\u8bfb\u9875\u9762\uff1a\u5411\u4e0a\u6eda\u52a8"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v2, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    const/16 v3, -0xc8

    invoke-virtual {v2, v1, v3}, Landroid/webkit/WebView;->scrollBy(II)V

    .line 275
    invoke-direct {p0}, Lbl/xw;->scheduleSaveReadingProgress()V

    goto :goto_a3

    .line 279
    :cond_124
    const/16 v2, 0x14

    if-ne p1, v2, :cond_13b

    .line 280
    const-string v2, "EbookReader"

    const-string v3, "xw.f: \u7535\u5b50\u4e66\u9605\u8bfb\u9875\u9762\uff1a\u5411\u4e0b\u6eda\u52a8"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v2, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    const/16 v3, 0xc8

    invoke-virtual {v2, v1, v3}, Landroid/webkit/WebView;->scrollBy(II)V

    .line 282
    invoke-direct {p0}, Lbl/xw;->scheduleSaveReadingProgress()V

    goto/16 :goto_a3

    .line 288
    :cond_13b
    const/16 v2, 0x15

    if-ne p1, v2, :cond_14b

    .line 289
    const-string v1, "EbookReader"

    const-string v2, "xw.f: \u7535\u5b50\u4e66\u9605\u8bfb\u9875\u9762\uff1a\u5411\u4e0a\u7ffb\u9875\uff08\u5de6\u952e\uff09"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-direct {p0, v0}, Lbl/xw;->handlePageTurn(Z)V

    goto/16 :goto_a3

    .line 294
    :cond_14b
    const/16 v2, 0x16

    if-ne p1, v2, :cond_15b

    .line 295
    const-string v2, "EbookReader"

    const-string v3, "xw.f: \u7535\u5b50\u4e66\u9605\u8bfb\u9875\u9762\uff1a\u5411\u4e0b\u7ffb\u9875\uff08\u53f3\u952e\uff09"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-direct {p0, v1}, Lbl/xw;->handlePageTurn(Z)V

    goto/16 :goto_a3

    .line 303
    :cond_15b
    iget-boolean v2, p0, Lbl/xw;->isEbookPanelShown:Z

    if-eqz v2, :cond_182

    iget-object v2, p0, Lbl/xw;->controlTarget:Ljava/lang/String;

    const-string v3, "ebook"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_182

    iget-object v2, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_175

    iget-object v2, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    .line 304
    invoke-virtual {v2}, Landroid/webkit/WebView;->isShown()Z

    move-result v2

    if-nez v2, :cond_182

    :cond_175
    iget-object v2, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    if-eqz v2, :cond_182

    iget-object v2, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    .line 305
    invoke-virtual {v2}, Landroid/widget/ListView;->isShown()Z

    move-result v2

    if-eqz v2, :cond_182

    move v1, v0

    .line 307
    :cond_182
    if-eq p1, v5, :cond_188

    if-eq p1, v6, :cond_188

    if-ne p1, v7, :cond_19f

    :cond_188
    iget-boolean v2, p0, Lbl/xw;->f:Z

    if-nez v2, :cond_19f

    .line 309
    if-eqz v1, :cond_19f

    .line 310
    iput-boolean v0, p0, Lbl/xw;->f:Z

    .line 311
    iget-object v0, p0, Lbl/xw;->g:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/xw;->a(Ljava/lang/Runnable;)V

    .line 312
    iget-object v0, p0, Lbl/xw;->g:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lbl/xw;->a(Ljava/lang/Runnable;J)V

    .line 316
    :cond_19f
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v0

    goto/16 :goto_a3
.end method

.method public g(ILandroid/view/KeyEvent;)Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/16 v8, 0x14

    const/16 v7, 0x13

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 321
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

    .line 324
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

    .line 325
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

    .line 328
    iget-object v0, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    if-eqz v0, :cond_9e

    iget-object v0, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 329
    const-string v0, "EbookReader"

    const-string v1, "xw.g: \u7ae0\u8282\u5217\u8868\u663e\u793a\u4e2d"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/16 v0, 0x17

    if-eq p1, v0, :cond_95

    const/16 v0, 0x42

    if-eq p1, v0, :cond_95

    const/16 v0, 0xa0

    if-eq p1, v0, :cond_95

    if-eq p1, v7, :cond_95

    if-ne p1, v8, :cond_9e

    .line 335
    :cond_95
    const-string v0, "EbookReader"

    const-string v1, "xw.g: \u7ae0\u8282\u5217\u8868\u663e\u793a\uff0c\u4e0d\u62e6\u622a\u65b9\u5411\u952e\u548c\u786e\u8ba4\u952e"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 494
    :cond_9d
    :goto_9d
    return v2

    .line 342
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

    .line 346
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

    .line 347
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

    .line 346
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    if-eqz v0, :cond_134

    .line 352
    const-string v0, "EbookReader"

    const-string v1, "xw.g: \u5728\u9605\u8bfb\u5185\u5bb9\u9875\u9762"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    if-eq p1, v7, :cond_123

    if-eq p1, v8, :cond_123

    const/16 v0, 0x15

    if-eq p1, v0, :cond_123

    const/16 v0, 0x16

    if-ne p1, v0, :cond_134

    .line 360
    :cond_123
    const-string v0, "EbookReader"

    const-string v1, "xw.g: \u65b9\u5411\u952e\u5df2\u7531xw.f()\u5904\u7406\uff0c\u76f4\u63a5\u8fd4\u56detrue"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9d

    :cond_12c
    move v0, v3

    .line 342
    goto :goto_b3

    .line 347
    :cond_12e
    const-string v1, "null"

    goto :goto_e7

    :cond_131
    const-string v1, "null"

    goto :goto_103

    .line 366
    :cond_134
    const/16 v0, 0x52

    if-ne p1, v0, :cond_15e

    .line 368
    iget-boolean v0, p0, Lbl/xw;->isChapterListShown:Z

    if-eqz v0, :cond_145

    .line 369
    const-string v0, "EbookReader"

    const-string v1, "\u7ae0\u8282\u5217\u8868\u663e\u793a\u4e2d\uff0c\u4e0d\u54cd\u5e94\u83dc\u5355\u952e"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9d

    .line 373
    :cond_145
    iget-boolean v0, p0, Lbl/xw;->isFileChooserShown:Z

    if-eqz v0, :cond_152

    .line 374
    const-string v0, "EbookReader"

    const-string v1, "\u6587\u4ef6\u9009\u62e9\u5217\u8868\u663e\u793a\u4e2d\uff0c\u4e0d\u54cd\u5e94\u83dc\u5355\u952e"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9d

    .line 378
    :cond_152
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u6a21\u5f0f\u4e0b\u6253\u5f00\u53f3\u4fa7\u83dc\u5355"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual {p0, v2}, Lbl/xw;->d(Z)V

    goto/16 :goto_9d

    .line 384
    :cond_15e
    const/4 v0, 0x4

    if-ne p1, v0, :cond_9d

    .line 385
    iget-boolean v0, p0, Lbl/xw;->isChapterListShown:Z

    if-eqz v0, :cond_208

    .line 387
    iget-object v0, p0, Lbl/xw;->chapterNavigationStack:Ljava/util/Stack;

    if-eqz v0, :cond_1fc

    iget-object v0, p0, Lbl/xw;->chapterNavigationStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1fc

    .line 389
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

    .line 390
    iget-object v0, p0, Lbl/xw;->chapterNavigationStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lbl/xw;->currentChapterList:Ljava/util/List;

    .line 393
    iget-object v0, p0, Lbl/xw;->chapterNavigationStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1ab

    .line 395
    const/4 v0, 0x0

    iput-object v0, p0, Lbl/xw;->parentChapterTitle:Ljava/lang/String;

    .line 416
    :cond_1a4
    :goto_1a4
    iget-object v0, p0, Lbl/xw;->currentChapterList:Ljava/util/List;

    invoke-direct {p0, v0}, Lbl/xw;->createChapterListView(Ljava/util/List;)V

    goto/16 :goto_9d

    .line 399
    :cond_1ab
    iget-object v0, p0, Lbl/xw;->chapterNavigationStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 400
    if-eqz v0, :cond_1a4

    iget-object v1, p0, Lbl/xw;->currentChapterList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1a4

    .line 402
    iget-object v1, p0, Lbl/xw;->currentChapterList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/ebook/model/Chapter;

    invoke-virtual {v1}, Lcom/bilibili/tv/ebook/model/Chapter;->getChapterIndex()I

    move-result v4

    .line 403
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1cd
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ebook/model/Chapter;

    .line 404
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getChapterIndex()I

    move-result v1

    if-ge v1, v4, :cond_1cd

    .line 406
    invoke-direct {p0, v0}, Lbl/xw;->getChildChapters(Lcom/bilibili/tv/ebook/model/Chapter;)Ljava/util/List;

    move-result-object v1

    .line 407
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1cd

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/ebook/model/Chapter;

    invoke-virtual {v1}, Lcom/bilibili/tv/ebook/model/Chapter;->getChapterIndex()I

    move-result v1

    if-ne v1, v4, :cond_1cd

    .line 408
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbl/xw;->parentChapterTitle:Ljava/lang/String;

    goto :goto_1a4

    .line 419
    :cond_1fc
    const-string v0, "EbookReader"

    const-string v1, "\u5173\u95ed\u7ae0\u8282\u5217\u8868"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-direct {p0}, Lbl/xw;->hideChapterList()V

    goto/16 :goto_9d

    .line 423
    :cond_208
    iget-boolean v0, p0, Lbl/xw;->isFileChooserShown:Z

    if-eqz v0, :cond_218

    .line 425
    const-string v0, "EbookReader"

    const-string v1, "\u5173\u95ed\u6587\u4ef6\u9009\u62e9\u5668\uff0c\u56de\u5230\u7535\u5b50\u4e66\u9ed8\u8ba4\u754c\u9762"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-direct {p0}, Lbl/xw;->hideFileChooser()V

    goto/16 :goto_9d

    .line 428
    :cond_218
    iget-boolean v0, p0, Lbl/xw;->isReadingBook:Z

    if-eqz v0, :cond_250

    .line 430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 431
    iget-wide v4, p0, Lbl/xw;->lastBackPressTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x7d0

    cmp-long v4, v4, v6

    if-gez v4, :cond_238

    .line 433
    const-string v0, "EbookReader"

    const-string v1, "\u9605\u8bfb\u9875\u9762\u53cc\u51fb\u8fd4\u56de\uff0c\u5173\u95ed\u5f53\u524d\u4e66\u7c4d\uff0c\u56de\u5230\u7535\u5b50\u4e66\u9996\u9875"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iput-wide v10, p0, Lbl/xw;->lastBackPressTime:J

    .line 435
    invoke-virtual {p0}, Lbl/xw;->closeCurrentBook()V

    goto/16 :goto_9d

    .line 439
    :cond_238
    iput-wide v0, p0, Lbl/xw;->lastBackPressTime:J

    .line 440
    const-string v0, "EbookReader"

    const-string v1, "\u9605\u8bfb\u9875\u9762\u7b2c\u4e00\u6b21\u6309\u8fd4\u56de\u952e\uff0c\u663e\u793a\u63d0\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u518d\u6309\u4e00\u6b21\u5173\u95ed\u5f53\u524d\u4e66\u7c4d"

    .line 441
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 445
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_9d

    .line 450
    :cond_250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 451
    iget-wide v4, p0, Lbl/xw;->lastBackPressTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x7d0

    cmp-long v4, v4, v6

    if-gez v4, :cond_26c

    .line 453
    const-string v0, "EbookReader"

    const-string v1, "\u9996\u9875\u53cc\u51fb\u8fd4\u56de\uff0c\u9000\u51fa\u7535\u5b50\u4e66\u6a21\u5f0f"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iput-wide v10, p0, Lbl/xw;->lastBackPressTime:J

    .line 455
    invoke-virtual {p0}, Lbl/xw;->openEbookReader()V

    goto/16 :goto_9d

    .line 459
    :cond_26c
    iput-wide v0, p0, Lbl/xw;->lastBackPressTime:J

    .line 460
    const-string v0, "EbookReader"

    const-string v1, "\u9996\u9875\u7b2c\u4e00\u6b21\u6309\u8fd4\u56de\u952e\uff0c\u663e\u793a\u63d0\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u518d\u6309\u4e00\u6b21\u9000\u51fa\u7535\u5b50\u4e66\u6a21\u5f0f"

    .line 461
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 465
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_9d

    .line 476
    :cond_284
    sparse-switch p1, :sswitch_data_2b8

    .line 490
    iget-boolean v0, p0, Lbl/xw;->f:Z

    if-eqz v0, :cond_290

    .line 491
    iget-object v0, p0, Lbl/xw;->g:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/xw;->a(Ljava/lang/Runnable;)V

    .line 493
    :cond_290
    iput-boolean v3, p0, Lbl/xw;->f:Z

    .line 494
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v2

    goto/16 :goto_9d

    .line 478
    :sswitch_298
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v0

    if-eqz v0, :cond_2a3

    .line 479
    invoke-virtual {p0, v3}, Lbl/xw;->d(Z)V

    goto/16 :goto_9d

    :cond_2a3
    move v2, v3

    .line 482
    goto/16 :goto_9d

    .line 484
    :sswitch_2a6
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v0

    if-nez v0, :cond_2ad

    move v3, v2

    :cond_2ad
    invoke-virtual {p0, v3}, Lbl/xw;->d(Z)V

    goto/16 :goto_9d

    .line 488
    :sswitch_2b2
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v2

    goto/16 :goto_9d

    .line 476
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
    .line 597
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
    .line 574
    iget-boolean v0, p0, Lbl/xw;->isEbookPanelShown:Z

    return v0
.end method

.method public isEbookReadingContent()Z
    .locals 1

    .prologue
    .line 588
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
    .line 581
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v0

    return v0
.end method

.method public jumpToChapter(I)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 914
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

    .line 936
    :cond_18
    :goto_18
    return-void

    .line 918
    :cond_19
    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v0

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->view_points:Lorg/json/JSONArray;

    .line 921
    if-ltz p1, :cond_18

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge p1, v3, :cond_18

    .line 925
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 926
    if-eqz v0, :cond_18

    .line 927
    const-string v3, "from"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 928
    mul-int/lit16 v3, v0, 0x3e8

    .line 929
    invoke-virtual {p0}, Lbl/xw;->x()I

    move-result v4

    .line 933
    if-le v3, v4, :cond_62

    move v0, v1

    .line 934
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

    .line 933
    goto :goto_44
.end method

.method public onEbookFileSelected(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2239
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

    .line 2241
    if-eqz p1, :cond_20

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2242
    :cond_20
    const-string v0, "EbookReader"

    const-string v1, "\u6587\u4ef6\u8def\u5f84\u4e3a\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2260
    :goto_27
    return-void

    .line 2247
    :cond_28
    iget-boolean v0, p0, Lbl/xw;->isLoadingEbook:Z

    if-eqz v0, :cond_42

    .line 2248
    const-string v0, "EbookReader"

    const-string v1, "\u6b63\u5728\u52a0\u8f7d\u7535\u5b50\u4e66\uff0c\u8bf7\u7a0d\u5019..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2249
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u52a0\u8f7d\uff0c\u8bf7\u7a0d\u5019..."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2251
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_27

    .line 2256
    :cond_42
    invoke-direct {p0}, Lbl/xw;->showLoadingIndicator()V

    .line 2259
    invoke-direct {p0, p1}, Lbl/xw;->parseAndDisplayEbook(Ljava/lang/String;)V

    goto :goto_27
.end method

.method public onInfo2(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIJ)Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuClosed()V
    .locals 2

    .prologue
    .line 991
    iget-boolean v0, p0, Lbl/xw;->isEbookPanelShown:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lbl/xw;->controlTarget:Ljava/lang/String;

    const-string v1, "ebook"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 992
    const-string v0, "EbookReader"

    const-string v1, "onMenuClosed: \u6062\u590d\u7126\u70b9\u5230\u7535\u5b50\u4e66\u533a\u57df"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    iget-boolean v0, p0, Lbl/xw;->isReadingBook:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_29

    .line 999
    const-string v0, "EbookReader"

    const-string v1, "onMenuClosed: \u9605\u8bfb\u9875\u9762\uff0cWebView\u4fdd\u6301\u4e0d\u53ef\u805a\u7126\uff0c\u4e0d\u6062\u590d\u7126\u70b9"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    :cond_28
    :goto_28
    return-void

    .line 1000
    :cond_29
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1002
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    new-instance v1, Lbl/xw$5;

    invoke-direct {v1, p0}, Lbl/xw$5;-><init>(Lbl/xw;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_28
.end method

.method public openEbookFileChooser()V
    .locals 4

    .prologue
    .line 1552
    const-string v0, "EbookReader"

    const-string v1, "openEbookFileChooser() called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    .line 1555
    if-nez v0, :cond_15

    .line 1556
    const-string v0, "EbookReader"

    const-string v1, "Activity is null, cannot open file chooser"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    :goto_14
    return-void

    .line 1562
    :cond_15
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1563
    const-string v0, "EbookReader"

    const-string v1, "\u53f3\u4fa7\u83dc\u5355\u6b63\u5728\u663e\u793a\uff0c\u5148\u5173\u95ed\u83dc\u5355"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbl/xw;->d(Z)V

    .line 1566
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lbl/xw$9;

    invoke-direct {v1, p0}, Lbl/xw$9;-><init>(Lbl/xw;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_14

    .line 1574
    :cond_36
    invoke-direct {p0}, Lbl/xw;->showFileChooserInPanel()V

    goto :goto_14
.end method

.method public openEbookReader()V
    .locals 4

    .prologue
    .line 1525
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

    .line 1527
    iget-boolean v0, p0, Lbl/xw;->isEbookPanelShown:Z

    if-eqz v0, :cond_22

    .line 1529
    invoke-direct {p0}, Lbl/xw;->closeEbookPanel()V

    .line 1548
    :goto_21
    return-void

    .line 1533
    :cond_22
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1534
    const-string v0, "EbookReader"

    const-string v1, "\u53f3\u4fa7\u83dc\u5355\u6b63\u5728\u663e\u793a\uff0c\u5148\u5173\u95ed\u83dc\u5355"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbl/xw;->d(Z)V

    .line 1537
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lbl/xw$8;

    invoke-direct {v1, p0}, Lbl/xw$8;-><init>(Lbl/xw;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_21

    .line 1545
    :cond_43
    invoke-direct {p0}, Lbl/xw;->showEbookPanel()V

    goto :goto_21
.end method

.method public refresh_subtitle()V
    .locals 2

    .prologue
    .line 147
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_EPISODE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lbl/xw;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 148
    return-void
.end method

.method public set_audio_balance_level(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4300
    const-string v1, "off"

    .line 4301
    sget-object v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->OFF:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    .line 4302
    packed-switch p1, :pswitch_data_62

    .line 4316
    :goto_8
    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lbl/abd;->set_audio_balance_level(Landroid/content/Context;Ljava/lang/String;)V

    .line 4318
    invoke-virtual {p0}, Lbl/xw;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 4319
    invoke-virtual {p0}, Lbl/xw;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v1

    const-string v2, "SetAudioBalanceLevel"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->act(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4322
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

    .line 4323
    return-void

    .line 4304
    :pswitch_53
    const-string v1, "off"

    .line 4305
    sget-object v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->OFF:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    goto :goto_8

    .line 4308
    :pswitch_58
    const-string v1, "standard"

    .line 4309
    sget-object v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->STANDARD:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    goto :goto_8

    .line 4312
    :pswitch_5d
    const-string v1, "high_dynamic"

    .line 4313
    sget-object v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->HIGH_DYNAMIC:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    goto :goto_8

    .line 4302
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
    .line 517
    iget-object v1, p0, Lbl/xw;->a:Lbl/xf;

    const/4 v2, 0x5

    if-lez p1, :cond_19

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lbl/xf;->a(ILjava/lang/Object;)V

    .line 518
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lbl/abd;->set_danmaku_type(Landroid/content/Context;I)V

    .line 519
    return-void

    .line 517
    :cond_19
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public set_ebook_color_theme(I)V
    .locals 3

    .prologue
    .line 1092
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set_ebook_color_theme: themeIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebook_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1096
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "color_theme_index"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1097
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u914d\u8272\u65b9\u6848\u5df2\u4fdd\u5b58: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_53

    iget-boolean v0, p0, Lbl/xw;->isReadingBook:Z

    if-eqz v0, :cond_53

    .line 1101
    invoke-direct {p0, p1}, Lbl/xw;->applyColorThemeToWebView(I)V

    .line 1103
    :cond_53
    return-void
.end method

.method public set_ebook_font_size(F)V
    .locals 3

    .prologue
    .line 1015
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

    .line 1018
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebook_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1019
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "font_size"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1020
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

    .line 1023
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_53

    iget-boolean v0, p0, Lbl/xw;->isReadingBook:Z

    if-eqz v0, :cond_53

    .line 1024
    invoke-direct {p0, p1}, Lbl/xw;->applyFontSizeToWebView(F)V

    .line 1026
    :cond_53
    return-void
.end method

.method public set_ebook_percent(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1107
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set_ebook_percent: percentIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_96

    .line 1111
    if-ltz p1, :cond_24

    array-length v1, v0

    if-lt p1, v1, :cond_25

    .line 1138
    :cond_24
    :goto_24
    return-void

    .line 1115
    :cond_25
    aget v0, v0, p1

    .line 1116
    iput v0, p0, Lbl/xw;->ebookPanelPercent:I

    .line 1119
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ebook_settings"

    invoke-virtual {v1, v2, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1120
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "screen_percent"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1121
    const-string v1, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5c4f\u5e55\u5360\u6bd4\u5df2\u4fdd\u5b58: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    iget-boolean v1, p0, Lbl/xw;->isEbookPanelShown:Z

    if-eqz v1, :cond_6f

    .line 1125
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lbl/xw$6;

    invoke-direct {v2, p0}, Lbl/xw$6;-><init>(Lbl/xw;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1134
    :cond_6f
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v1

    .line 1135
    if-eqz v1, :cond_24

    .line 1136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7535\u5b50\u4e66\u5360\u6bd4\u5df2\u8c03\u6574\u4e3a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_24

    .line 1110
    :array_96
    .array-data 4
        0x19
        0x1e
        0x23
        0x28
        0x2d
        0x32
    .end array-data
.end method

.method public set_subtitle_size(F)V
    .locals 1

    .prologue
    .line 560
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lbl/abd;->set_subtitle_size(Landroid/content/Context;F)V

    .line 561
    invoke-virtual {p0}, Lbl/xw;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 562
    invoke-virtual {p0}, Lbl/xw;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->refreshSubtitle()V

    .line 564
    :cond_18
    return-void
.end method

.method public set_video_position(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1144
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set_video_position: positionIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    if-ltz p1, :cond_1e

    const/4 v0, 0x3

    if-le p1, v0, :cond_1f

    .line 1178
    :cond_1e
    :goto_1e
    return-void

    .line 1150
    :cond_1f
    iput p1, p0, Lbl/xw;->videoPosition:I

    .line 1153
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebook_settings"

    invoke-virtual {v0, v1, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1154
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "video_position"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1155
    iget-object v0, p0, Lbl/xw;->videoPositionList:Ljava/util/List;

    if-eqz v0, :cond_af

    if-ltz p1, :cond_af

    iget-object v0, p0, Lbl/xw;->videoPositionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_af

    iget-object v0, p0, Lbl/xw;->videoPositionList:Ljava/util/List;

    .line 1156
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1157
    :goto_4e
    const-string v1, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u89c6\u9891\u4f4d\u7f6e\u5df2\u4fdd\u5b58: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    iget-boolean v0, p0, Lbl/xw;->isEbookPanelShown:Z

    if-eqz v0, :cond_77

    .line 1161
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lbl/xw$7;

    invoke-direct {v1, p0}, Lbl/xw$7;-><init>(Lbl/xw;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1170
    :cond_77
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v1

    .line 1171
    if-eqz v1, :cond_1e

    .line 1172
    iget-object v0, p0, Lbl/xw;->videoPositionList:Ljava/util/List;

    if-eqz v0, :cond_b2

    if-ltz p1, :cond_b2

    iget-object v0, p0, Lbl/xw;->videoPositionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_b2

    iget-object v0, p0, Lbl/xw;->videoPositionList:Ljava/util/List;

    .line 1173
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1174
    :goto_93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u89c6\u9891\u4f4d\u7f6e\u5df2\u8c03\u6574\u4e3a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1176
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1e

    .line 1156
    :cond_af
    const-string v0, "\u5de6\u4e0a"

    goto :goto_4e

    .line 1173
    :cond_b2
    const-string v0, "\u5de6\u4e0a"

    goto :goto_93
.end method

.method public showChapterList()V
    .locals 4

    .prologue
    .line 2717
    iget-object v0, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_22

    .line 2718
    :cond_c
    const-string v0, "EbookReader"

    const-string v1, "\u65e0\u4e66\u7c4d\u6570\u636e\uff0c\u65e0\u6cd5\u663e\u793a\u7ae0\u8282\u5217\u8868"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2719
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u65e0\u7ae0\u8282\u4fe1\u606f"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2721
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2743
    :goto_21
    return-void

    .line 2725
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

    .line 2726
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xw;->isChapterListShown:Z

    .line 2729
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lbl/xw;->chapterNavigationStack:Ljava/util/Stack;

    .line 2730
    const/4 v0, 0x0

    iput-object v0, p0, Lbl/xw;->parentChapterTitle:Ljava/lang/String;

    .line 2733
    invoke-direct {p0}, Lbl/xw;->getRootChapters()Ljava/util/List;

    move-result-object v0

    .line 2734
    iput-object v0, p0, Lbl/xw;->currentChapterList:Ljava/util/List;

    .line 2737
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lbl/xw$27;

    invoke-direct {v1, p0}, Lbl/xw$27;-><init>(Lbl/xw;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_21
.end method

.method public showSkipSettingDialog()V
    .locals 6

    .prologue
    .line 958
    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v0

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    if-nez v0, :cond_11

    .line 986
    :cond_10
    :goto_10
    return-void

    .line 961
    :cond_11
    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v0

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    .line 962
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

    .line 963
    new-instance v1, Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lbl/xw;->x()I

    move-result v3

    int-to-long v4, v3

    invoke-direct {v1, v2, v0, v4, v5}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;-><init>(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;J)V

    .line 965
    new-instance v2, Lbl/xw$3;

    invoke-direct {v2, p0}, Lbl/xw$3;-><init>(Lbl/xw;)V

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->setOnPositionProvider(Lcom/bilibili/tv/player/widget/SkipSettingDialog$OnPositionProvider;)V

    .line 972
    new-instance v2, Lbl/xw$4;

    invoke-direct {v2, p0, v0}, Lbl/xw$4;-><init>(Lbl/xw;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->setOnSaveListener(Lcom/bilibili/tv/player/widget/SkipSettingDialog$OnSaveListener;)V

    .line 985
    invoke-virtual {v1}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->show()V

    goto :goto_10
.end method

.method public switchControlTarget(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3459
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

    .line 3461
    iget-boolean v0, p0, Lbl/xw;->isEbookPanelShown:Z

    if-nez v0, :cond_26

    .line 3462
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u9762\u677f\u672a\u663e\u793a\uff0c\u65e0\u6cd5\u5207\u6362\u63a7\u5236\u76ee\u6807"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3546
    :goto_25
    return-void

    .line 3466
    :cond_26
    iput-object p1, p0, Lbl/xw;->controlTarget:Ljava/lang/String;

    .line 3469
    const-string v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 3471
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    if-eqz v0, :cond_54

    .line 3472
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 3473
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 3474
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setClickable(Z)V

    .line 3475
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 3476
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearFocus()V

    .line 3477
    const-string v0, "EbookReader"

    const-string v1, "\u7981\u7528\u4e66\u67b6\u5217\u8868\u6240\u6709\u4ea4\u4e92"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3479
    :cond_54
    iget-object v0, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    if-eqz v0, :cond_78

    .line 3480
    iget-object v0, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 3481
    iget-object v0, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 3482
    iget-object v0, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setClickable(Z)V

    .line 3483
    iget-object v0, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 3484
    iget-object v0, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearFocus()V

    .line 3485
    const-string v0, "EbookReader"

    const-string v1, "\u7981\u7528\u7ae0\u8282\u5217\u8868\u6240\u6709\u4ea4\u4e92"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3487
    :cond_78
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_92

    .line 3488
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 3489
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 3490
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setEnabled(Z)V

    .line 3491
    const-string v0, "EbookReader"

    const-string v1, "\u7981\u7528WebView\u6240\u6709\u4ea4\u4e92"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3493
    :cond_92
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_b1

    .line 3494
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 3495
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 3496
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 3497
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 3498
    const-string v0, "EbookReader"

    const-string v1, "\u7981\u7528\u7535\u5b50\u4e66\u9762\u677f\u6240\u6709\u4ea4\u4e92"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3536
    :cond_b1
    :goto_b1
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    .line 3537
    if-eqz v0, :cond_c8

    .line 3538
    const-string v1, "video"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    .line 3539
    const-string v1, "\u9065\u63a7\u5668\u64cd\u4f5c\u5df2\u5207\u6362\u5230\u89c6\u9891"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3545
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

    .line 3502
    :cond_e2
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_101

    .line 3503
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 3504
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 3505
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 3506
    iget-object v0, p0, Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 3507
    const-string v0, "EbookReader"

    const-string v1, "\u542f\u7528\u7535\u5b50\u4e66\u9762\u677f\u6240\u6709\u4ea4\u4e92"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3509
    :cond_101
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    if-eqz v0, :cond_125

    .line 3510
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 3511
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 3512
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setClickable(Z)V

    .line 3513
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 3514
    iget-object v0, p0, Lbl/xw;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 3515
    const-string v0, "EbookReader"

    const-string v1, "\u542f\u7528\u4e66\u67b6\u5217\u8868\u6240\u6709\u4ea4\u4e92"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3517
    :cond_125
    iget-object v0, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    if-eqz v0, :cond_149

    .line 3518
    iget-object v0, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 3519
    iget-object v0, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 3520
    iget-object v0, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setClickable(Z)V

    .line 3521
    iget-object v0, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 3522
    iget-object v0, p0, Lbl/xw;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 3523
    const-string v0, "EbookReader"

    const-string v1, "\u542f\u7528\u7ae0\u8282\u5217\u8868\u6240\u6709\u4ea4\u4e92"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3525
    :cond_149
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_b1

    .line 3528
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 3529
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 3530
    iget-object v0, p0, Lbl/xw;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setEnabled(Z)V

    .line 3531
    const-string v0, "EbookReader"

    const-string v1, "\u542f\u7528WebView\u6240\u6709\u4ea4\u4e92"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b1

    .line 3541
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
    .line 142
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_SPEED:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lbl/xw;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 143
    return-void
.end method
