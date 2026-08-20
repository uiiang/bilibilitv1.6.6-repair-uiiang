.class public Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
.super Ljava/lang/Object;
.source "EbookReaderPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;
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

.field private confirmKeyLongPressHandled:Z

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

.field private ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

.field private ebookPanel:Landroid/widget/FrameLayout;

.field private ebookPanelPercent:I

.field private ebookWebView:Landroid/webkit/WebView;

.field private fileListView:Landroid/widget/ListView;

.field private final host:Lcom/bilibili/tv/ebook/ui/EbookHost;

.field private isChapterListShown:Z

.field private isEbookPanelShown:Z

.field private isFileChooserShown:Z

.field private isLoadingEbook:Z

.field private isOrganizingShelf:Z

.field private volatile isParsingCancelled:Z

.field private isReadingBook:Z

.field private lastBackPressTime:J

.field private lastConfirmKeyPressTime:J

.field private loadingProgressBar:Landroid/widget/ProgressBar;

.field private loadingTextView:Landroid/widget/TextView;

.field private menuOpenedByKeyDown:Z

.field private organizeDeleteButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private organizeDeleteText:Landroid/widget/TextView;

.field private organizeListView:Landroid/widget/ListView;

.field private organizeSelectAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private organizeSelectAllText:Landroid/widget/TextView;

.field private organizeSelectedFlags:[Z

.field private originalDanmakuIndex:I

.field private originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

.field private originalDanmakuParent:Landroid/view/ViewGroup;

.field private originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

.field private parentChapterTitle:Ljava/lang/String;

.field private parsingThread:Ljava/lang/Thread;

.field private saveProgressHandler:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;

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
.method public constructor <init>(Lcom/bilibili/tv/ebook/ui/EbookHost;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    .line 51
    iput-boolean v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    .line 52
    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    .line 53
    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    .line 54
    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuParent:Landroid/view/ViewGroup;

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuIndex:I

    .line 56
    iput-boolean v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isFileChooserShown:Z

    .line 57
    iput-wide v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->lastBackPressTime:J

    .line 59
    iput-boolean v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isLoadingEbook:Z

    .line 60
    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadingProgressBar:Landroid/widget/ProgressBar;

    .line 61
    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadingTextView:Landroid/widget/TextView;

    .line 62
    iput-boolean v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isReadingBook:Z

    .line 65
    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    .line 66
    iput v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterIndex:I

    .line 67
    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    .line 68
    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    .line 69
    iput-boolean v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isChapterListShown:Z

    .line 70
    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    .line 71
    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    .line 72
    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    .line 73
    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfItems:Ljava/util/List;

    .line 74
    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBookFilePath:Ljava/lang/String;

    .line 75
    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->fileListView:Landroid/widget/ListView;

    .line 78
    iput-boolean v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isOrganizingShelf:Z

    .line 79
    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    .line 80
    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectedFlags:[Z

    .line 81
    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 82
    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 83
    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectAllText:Landroid/widget/TextView;

    .line 84
    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteText:Landroid/widget/TextView;

    .line 88
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->cachedChapters:Ljava/util/LinkedList;

    .line 108
    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressRunnable:Ljava/lang/Runnable;

    .line 109
    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressHandler:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;

    .line 113
    iput-boolean v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isParsingCancelled:Z

    .line 114
    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parsingThread:Ljava/lang/Thread;

    .line 117
    iput v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->confirmKeyClickCount:I

    .line 118
    iput-wide v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->lastConfirmKeyPressTime:J

    .line 122
    iput-boolean v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->confirmKeyLongPressHandled:Z

    .line 125
    iput-boolean v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->menuOpenedByKeyDown:Z

    .line 132
    const/16 v0, 0x1e

    iput v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanelPercent:I

    .line 133
    iput v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    .line 134
    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    .line 137
    const-string v0, "video"

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->controlTarget:Ljava/lang/String;

    .line 140
    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterNavigationStack:Ljava/util/Stack;

    .line 141
    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterList:Ljava/util/List;

    .line 142
    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parentChapterTitle:Ljava/lang/String;

    .line 148
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    .line 149
    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveReadingProgress()V

    return-void
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showEbookPanel()V

    return-void
.end method

.method static synthetic access$1000(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->toggleSelectAll()V

    return-void
.end method

.method static synthetic access$1100(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showOrganizeDeleteDialog()V

    return-void
.end method

.method static synthetic access$1200(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/ebook/util/EbookCacheManager;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->deleteBookCacheFiles(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/ebook/util/BookshelfManager;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/ebook/ui/EbookHost;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->hideOrganizeShelf()V

    return-void
.end method

.method static synthetic access$1700(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Ljava/util/List;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->createChapterListView(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->applyEbookPanelPercent()V

    return-void
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showFileChooserInPanel()V

    return-void
.end method

.method static synthetic access$2000(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->applyVideoPosition()V

    return-void
.end method

.method static synthetic access$2100(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/app/Activity;II)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->shrinkVideoView(Landroid/app/Activity;II)V

    return-void
.end method

.method static synthetic access$2300(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/app/Activity;II)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->shrinkDanmakuView(Landroid/app/Activity;II)V

    return-void
.end method

.method static synthetic access$2400(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isLoadingEbook:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showLoadingIndicator()V

    return-void
.end method

.method static synthetic access$2600(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parseAndDisplayEbook(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadFileList(Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadingProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadingProgressBar:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showOrganizeShelfPage()V

    return-void
.end method

.method static synthetic access$3000(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadingTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadingTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isParsingCancelled:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->hideLoadingIndicator()V

    return-void
.end method

.method static synthetic access$3300(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Lcom/bilibili/tv/ebook/model/Book;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->restoreReadingProgress(Lcom/bilibili/tv/ebook/model/Book;)V

    return-void
.end method

.method static synthetic access$3402(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parsingThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->scheduleSaveReadingProgress()V

    return-void
.end method

.method static synthetic access$3600(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Z)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->handlePageTurn(Z)V

    return-void
.end method

.method static synthetic access$3700(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;F)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->applyFontSizeToWebView(F)V

    return-void
.end method

.method static synthetic access$3800(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;I)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->applyColorThemeToWebView(I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Ljava/util/List;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parentChapterTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parentChapterTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Lcom/bilibili/tv/ebook/model/Chapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->getChildChapters(Lcom/bilibili/tv/ebook/model/Chapter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterIndex:I

    return v0
.end method

.method static synthetic access$4400(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Ljava/util/Stack;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterNavigationStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/ebook/model/Book;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Lcom/bilibili/tv/ebook/model/Book;I)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;I)V

    return-void
.end method

.method static synthetic access$4700(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->hideChapterList()V

    return-void
.end method

.method static synthetic access$4802(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)[Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectedFlags:[Z

    return-object v0
.end method

.method static synthetic access$600(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->updateOrganizeButtonsState()V

    return-void
.end method

.method static synthetic access$800(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/widget/DrawFrameLayout;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/widget/DrawFrameLayout;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    return-object v0
.end method

.method private addToBookshelf(Lcom/bilibili/tv/ebook/model/Book;Lcom/bilibili/tv/ebook/model/ReadingProgress;)V
    .locals 2

    .prologue
    .line 4372
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    if-nez v0, :cond_7

    .line 4378
    :cond_6
    :goto_6
    return-void

    .line 4377
    :cond_7
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBookFilePath:Ljava/lang/String;

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

    .line 2495
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_c

    .line 2527
    :goto_b
    return-void

    .line 2500
    :cond_c
    invoke-static {}, Lcom/bilibili/tv/ebook/model/ReaderTheme;->getBuiltInThemes()[Lcom/bilibili/tv/ebook/model/ReaderTheme;

    move-result-object v0

    aget-object v0, v0, p1

    .line 2501
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

    .line 2502
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/ReaderTheme;->getBackgroundColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \u6587\u5b57\u8272: #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2503
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/ReaderTheme;->getTextColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2501
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2506
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

    .line 2507
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

    .line 2510
    const-string v2, "document.body.style.backgroundColor=\'%s\';document.body.style.color=\'%s\';"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2515
    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v2, v8}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 2518
    const-string v2, "var elements = document.querySelectorAll(\'*\');for (var i = 0; i < elements.length; i++) {  elements[i].style.backgroundColor=\'%s\';  elements[i].style.color=\'%s\';}"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2526
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0, v8}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto/16 :goto_b
.end method

.method private applyEbookPanelPercent()V
    .locals 5

    .prologue
    .line 3690
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3691
    if-eqz v0, :cond_c

    iget-boolean v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    if-nez v1, :cond_d

    .line 3718
    :cond_c
    :goto_c
    return-void

    .line 3695
    :cond_d
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3696
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3697
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3698
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 3701
    iget v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanelPercent:I

    mul-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x64

    .line 3702
    sub-int/2addr v0, v1

    .line 3704
    const-string v2, "EbookReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyEbookPanelPercent: percent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanelPercent:I

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

    .line 3708
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->updateVideoViewWidth(I)V

    .line 3711
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->updateDanmakuViewWidth(I)V

    .line 3714
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->updateSubtitleViewWidth(I)V

    .line 3717
    invoke-direct {p0, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->updateEbookPanelWidth(I)V

    goto :goto_c
.end method

.method private applyFontSizeToWebView(F)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2471
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_8

    .line 2489
    :goto_7
    return-void

    .line 2475
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

    .line 2478
    const-string v0, "document.body.style.fontSize=\'%dpx\';"

    new-array v1, v4, [Ljava/lang/Object;

    float-to-int v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2479
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0, v5}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 2482
    const-string v0, "var elements = document.querySelectorAll(\'p, div, span\');for (var i = 0; i < elements.length; i++) {  elements[i].style.fontSize = \'%dpx\';}"

    new-array v1, v4, [Ljava/lang/Object;

    float-to-int v2, p1

    .line 2486
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 2482
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2488
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0, v5}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_7
.end method

.method private applyVideoPosition()V
    .locals 6

    .prologue
    .line 3655
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3656
    if-eqz v0, :cond_c

    iget-boolean v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    if-nez v1, :cond_d

    .line 3684
    :cond_c
    :goto_c
    return-void

    .line 3660
    :cond_d
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3661
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3662
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3663
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 3665
    iget v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanelPercent:I

    mul-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x64

    .line 3666
    sub-int v2, v0, v1

    .line 3668
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    if-eqz v0, :cond_7d

    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ltz v0, :cond_7d

    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7d

    .line 3669
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    iget v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3670
    :goto_44
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

    .line 3674
    invoke-direct {p0, v2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->updateVideoViewWidth(I)V

    .line 3677
    invoke-direct {p0, v2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->updateDanmakuViewWidth(I)V

    .line 3680
    invoke-direct {p0, v2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->updateSubtitleViewWidth(I)V

    .line 3683
    invoke-direct {p0, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->updateEbookPanelWidth(I)V

    goto :goto_c

    .line 3669
    :cond_7d
    const-string v0, "\u5de6\u4e0a"

    goto :goto_44
.end method

.method private cancelParsingTask()V
    .locals 1

    .prologue
    .line 2200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isParsingCancelled:Z

    .line 2201
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parsingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_f

    .line 2202
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parsingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 2203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parsingThread:Ljava/lang/Thread;

    .line 2205
    :cond_f
    return-void
.end method

.method private clearChapterCache()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4130
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->cachedChapters:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ebook/model/Chapter;

    .line 4131
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ebook/model/Chapter;->setHtmlContent(Ljava/lang/String;)V

    .line 4132
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ebook/model/Chapter;->setPlainTextContent(Ljava/lang/String;)V

    goto :goto_7

    .line 4134
    :cond_1a
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->cachedChapters:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 4135
    const-string v0, "EbookReader"

    const-string v1, "\u6240\u6709\u7ae0\u8282\u7f13\u5b58\u5df2\u6e05\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4136
    return-void
.end method

.method private closeEbookPanel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3216
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3217
    if-nez v0, :cond_12

    .line 3218
    const-string v0, "EbookReader"

    const-string v1, "Activity is null, cannot close ebook panel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3307
    :goto_11
    return-void

    .line 3222
    :cond_12
    const-string v1, "EbookReader"

    const-string v2, "\u5f00\u59cb\u5173\u95ed\u7535\u5b50\u4e66\u9762\u677f"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3225
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->cancelParsingTask()V

    .line 3228
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveReadingProgressImmediately()V

    .line 3231
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_31

    .line 3232
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3233
    const-string v1, "EbookReader"

    const-string v2, "\u7070\u8272\u80cc\u666f\u9762\u677f\u5df2\u9690\u85cf"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3237
    :cond_31
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->restoreVideoView(Landroid/app/Activity;)V

    .line 3240
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->destroyEbookWebView()V

    .line 3244
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_53

    .line 3245
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3246
    if-eqz v0, :cond_51

    .line 3247
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3248
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u9762\u677f\u5df2\u4ece\u7236\u5bb9\u5668\u79fb\u9664"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3250
    :cond_51
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    .line 3254
    :cond_53
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->clearChapterCache()V

    .line 3257
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressHandler:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;

    if-eqz v0, :cond_61

    .line 3258
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressHandler:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3259
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressHandler:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;

    .line 3261
    :cond_61
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_67

    .line 3262
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressRunnable:Ljava/lang/Runnable;

    .line 3266
    :cond_67
    iput-boolean v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    .line 3267
    iput-boolean v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isChapterListShown:Z

    .line 3268
    iput-boolean v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isFileChooserShown:Z

    .line 3269
    iput-boolean v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isOrganizingShelf:Z

    .line 3270
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectedFlags:[Z

    .line 3271
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    .line 3272
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 3273
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 3274
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectAllText:Landroid/widget/TextView;

    .line 3275
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteText:Landroid/widget/TextView;

    .line 3276
    iput-boolean v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isLoadingEbook:Z

    .line 3277
    iput-boolean v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isReadingBook:Z

    .line 3278
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    .line 3279
    iput v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterIndex:I

    .line 3280
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    .line 3283
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    if-eqz v0, :cond_95

    .line 3284
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 3285
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3286
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    .line 3288
    :cond_95
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    if-eqz v0, :cond_a5

    .line 3289
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 3290
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3291
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    .line 3294
    :cond_a5
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadingProgressBar:Landroid/widget/ProgressBar;

    .line 3295
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadingTextView:Landroid/widget/TextView;

    .line 3296
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->lastBackPressTime:J

    .line 3297
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBookFilePath:Ljava/lang/String;

    .line 3298
    const-string v0, "video"

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->controlTarget:Ljava/lang/String;

    .line 3302
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    .line 3303
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    .line 3304
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfItems:Ljava/util/List;

    .line 3306
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u9762\u677f\u5df2\u5173\u95ed\uff0c\u6240\u6709\u72b6\u6001\u5df2\u6e05\u9664\uff0ccontrolTarget\u91cd\u7f6e\u4e3avideo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11
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
    .line 2582
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2583
    if-nez v0, :cond_10

    .line 2584
    const-string v0, "EbookReader"

    const-string v1, "Activity is null, cannot create chapter list"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2805
    :goto_f
    return-void

    .line 2587
    :cond_10
    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37;

    invoke-direct {v1, p0, v0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/app/Activity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_f
.end method

.method private createOrganizeButton(Landroid/app/Activity;Ljava/lang/String;)Lcom/bilibili/tv/widget/DrawFrameLayout;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    .line 770
    new-instance v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-direct {v0, p1}, Lcom/bilibili/tv/widget/DrawFrameLayout;-><init>(Landroid/content/Context;)V

    .line 771
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setFocusable(Z)V

    .line 772
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setFocusableInTouchMode(Z)V

    .line 773
    const v1, 0x7f0700f0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 774
    const v1, 0x7f0700e8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 775
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpEnabled(Z)V

    .line 777
    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$14;

    invoke-direct {v1, p0, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$14;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Lcom/bilibili/tv/widget/DrawFrameLayout;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 788
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 789
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 790
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 791
    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 792
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 793
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 797
    return-object v0
.end method

.method private deleteBookCacheFiles(Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 4387
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4388
    if-eqz p1, :cond_a

    if-nez v0, :cond_12

    .line 4389
    :cond_a
    const-string v0, "EbookReader"

    const-string v1, "bookId\u6216Context\u4e3a\u7a7a\uff0c\u65e0\u6cd5\u5220\u9664\u7f13\u5b58"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4449
    :goto_11
    return-void

    .line 4394
    :cond_12
    :try_start_12
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    .line 4395
    const/4 v2, 0x0

    .line 4396
    const-wide/16 v0, 0x0

    .line 4399
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

    .line 4400
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 4401
    invoke-direct {p0, v4}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->getDirectorySize(Ljava/io/File;)J

    move-result-wide v6

    .line 4402
    invoke-direct {p0, v4}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->deleteDirectory(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 4403
    const/4 v2, 0x1

    .line 4404
    add-long/2addr v0, v6

    .line 4405
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

    .line 4406
    invoke-direct {p0, v6, v7}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->formatFileSize(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4405
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4411
    :cond_6d
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

    .line 4412
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_c2

    .line 4413
    invoke-direct {p0, v4}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->getDirectorySize(Ljava/io/File;)J

    move-result-wide v6

    .line 4414
    invoke-direct {p0, v4}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->deleteDirectory(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_c2

    .line 4415
    add-int/lit8 v2, v2, 0x1

    .line 4416
    add-long/2addr v0, v6

    .line 4417
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

    .line 4418
    invoke-direct {p0, v6, v7}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->formatFileSize(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4417
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4423
    :cond_c2
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

    .line 4424
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_10f

    .line 4425
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 4426
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_10f

    .line 4427
    add-int/lit8 v2, v2, 0x1

    .line 4428
    add-long/2addr v0, v6

    .line 4429
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

    .line 4434
    :cond_10f
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

    .line 4435
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_15c

    .line 4436
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 4437
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_15c

    .line 4438
    add-int/lit8 v2, v2, 0x1

    .line 4439
    add-long/2addr v0, v6

    .line 4440
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

    .line 4444
    :cond_15c
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

    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->formatFileSize(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_182
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_182} :catch_184

    goto/16 :goto_11

    .line 4446
    :catch_184
    move-exception v0

    .line 4447
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

    goto/16 :goto_11
.end method

.method private deleteDirectory(Ljava/io/File;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 4455
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_a

    .line 4468
    :cond_9
    :goto_9
    return v0

    .line 4459
    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 4460
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 4461
    if-eqz v1, :cond_21

    .line 4462
    array-length v2, v1

    :goto_17
    if-ge v0, v2, :cond_21

    aget-object v3, v1, v0

    .line 4463
    invoke-direct {p0, v3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->deleteDirectory(Ljava/io/File;)Z

    .line 4462
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 4468
    :cond_21
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_9
.end method

.method private destroyEbookWebView()V
    .locals 4

    .prologue
    .line 3314
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_56

    .line 3315
    const-string v0, "EbookReader"

    const-string v1, "\u5f00\u59cb\u9500\u6bc1WebView\uff0c\u91ca\u653e\u5185\u5b58"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3318
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1d

    .line 3319
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 3320
    const-string v0, "EbookReader"

    const-string v1, "WebView\u5df2\u4ece\u7236\u5bb9\u5668\u79fb\u9664"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3325
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 3326
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 3327
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 3328
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 3329
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 3330
    const-string v0, "EbookReader"

    const-string v1, "WebView\u7f13\u5b58\u548c\u5386\u53f2\u5df2\u6e05\u9664"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_40} :catch_57

    .line 3337
    :goto_40
    :try_start_40
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 3338
    const-string v0, "EbookReader"

    const-string v1, "WebView\u5df2\u9500\u6bc1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4c} :catch_75

    .line 3343
    :goto_4c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    .line 3344
    const-string v0, "EbookReader"

    const-string v1, "WebView\u5f15\u7528\u5df2\u6e05\u9664"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3346
    :cond_56
    return-void

    .line 3331
    :catch_57
    move-exception v0

    .line 3332
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

    .line 3339
    :catch_75
    move-exception v0

    .line 3340
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
    .line 2213
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;I)V

    .line 2214
    return-void
.end method

.method private displayBookContent(Lcom/bilibili/tv/ebook/model/Book;I)V
    .locals 2

    .prologue
    .line 2220
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;IZI)V

    .line 2221
    return-void
.end method

.method private displayBookContent(Lcom/bilibili/tv/ebook/model/Book;IZ)V
    .locals 1

    .prologue
    .line 2230
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;IZI)V

    .line 2231
    return-void
.end method

.method private displayBookContent(Lcom/bilibili/tv/ebook/model/Book;IZI)V
    .locals 11

    .prologue
    const/4 v5, 0x0

    const v10, 0xffffff

    const/4 v3, -0x1

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 2241
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2242
    :cond_19
    const-string v0, "EbookReader"

    const-string v1, "\u4e66\u7c4d\u65e0\u7ae0\u8282\u5185\u5bb9"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    const-string v1, "\u4e66\u7c4d\u5185\u5bb9\u4e3a\u7a7a"

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showToast(Ljava/lang/String;)V

    .line 2465
    :goto_27
    return-void

    .line 2248
    :cond_28
    iput-boolean v7, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isFileChooserShown:Z

    .line 2249
    iput-boolean v7, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isChapterListShown:Z

    .line 2250
    const-string v0, "EbookReader"

    const-string v1, "\u91cd\u7f6e\u72b6\u6001\u6807\u5fd7: isFileChooserShown=false, isChapterListShown=false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    .line 2254
    iput p2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterIndex:I

    .line 2255
    iput-boolean v9, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isReadingBook:Z

    .line 2257
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

    .line 2258
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

    .line 2257
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2262
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_8d

    .line 2263
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2264
    const-string v0, "EbookReader"

    const-string v1, "\u5df2\u6e05\u7a7a\u7535\u5b50\u4e66\u9762\u677f"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    :cond_8d
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->destroyEbookWebView()V

    .line 2272
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2273
    if-nez v0, :cond_a0

    .line 2274
    const-string v0, "EbookReader"

    const-string v1, "Activity is null, cannot display book content"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 2277
    :cond_a0
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    .line 2278
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2282
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2285
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 2286
    invoke-virtual {v0, v9}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 2287
    invoke-virtual {v0, v9}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 2288
    invoke-virtual {v0, v9}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 2289
    invoke-virtual {v0, v9}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 2292
    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 2293
    sget-object v1, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 2296
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 2297
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 2301
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$35;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$35;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2349
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_ea

    .line 2350
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2354
    :cond_ea
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/bilibili/tv/ebook/model/Chapter;

    .line 2355
    invoke-virtual {v6}, Lcom/bilibili/tv/ebook/model/Chapter;->getHtmlContent()Ljava/lang/String;

    move-result-object v0

    .line 2359
    if-eqz v0, :cond_101

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_125

    .line 2360
    :cond_101
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

    .line 2361
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getExtractionPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadChapterContentFromFile(Lcom/bilibili/tv/ebook/model/Chapter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2364
    :cond_125
    if-eqz v0, :cond_12d

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14a

    .line 2365
    :cond_12d
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

    .line 2369
    :cond_14a
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ebook/util/EbookFileStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getFontSize()F

    move-result v2

    .line 2370
    const-string v1, "EbookReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8bfb\u53d6\u4fdd\u5b58\u7684\u5b57\u4f53\u5927\u5c0f: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2373
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ebook/util/EbookFileStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getColorThemeIndex()I

    move-result v1

    .line 2374
    invoke-static {}, Lcom/bilibili/tv/ebook/model/ReaderTheme;->getBuiltInThemes()[Lcom/bilibili/tv/ebook/model/ReaderTheme;

    move-result-object v3

    .line 2375
    if-ltz v1, :cond_187

    array-length v4, v3

    if-lt v1, v4, :cond_188

    :cond_187
    move v1, v7

    .line 2378
    :cond_188
    aget-object v3, v3, v1

    .line 2379
    const-string v1, "#%06X"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/bilibili/tv/ebook/model/ReaderTheme;->getBackgroundColor()I

    move-result v8

    and-int/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2380
    const-string v4, "#%06X"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/bilibili/tv/ebook/model/ReaderTheme;->getTextColor()I

    move-result v9

    and-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2381
    const-string v8, "EbookReader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u52a0\u8f7d\u7ae0\u8282\u65f6\u5185\u5d4c\u914d\u8272\u65b9\u6848: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/bilibili/tv/ebook/model/ReaderTheme;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", bg="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", text="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2384
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<html><head><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"><style>body { font-size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    float-to-int v2, v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "px; line-height: 1.6; padding: 20px; background-color: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; color: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; }</style></head><body>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2393
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$36;

    invoke-direct {v1, p0, p3, p4}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$36;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;ZI)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 2445
    invoke-virtual {v6}, Lcom/bilibili/tv/ebook/model/Chapter;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    .line 2446
    if-eqz v1, :cond_22e

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_276

    .line 2449
    :cond_22e
    const-string v0, "EbookReader"

    const-string v1, "\u7ae0\u8282\u6ca1\u6709baseUrl\uff0c\u4f7f\u7528null\u4f5c\u4e3abaseUrl"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v5

    .line 2455
    :goto_236
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Lcom/bilibili/tv/ebook/model/ReaderTheme;->getBackgroundColor()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 2457
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2461
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 2462
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 2464
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

    goto/16 :goto_27

    .line 2451
    :cond_276
    const-string v0, "EbookReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u4f7f\u7528baseUrl: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_236
.end method

.method private dumpViewHierarchy(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 3139
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3140
    if-nez v0, :cond_15

    .line 3141
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3143
    :cond_15
    const-string v1, "EbookReader"

    const-string v2, "===== View\u5c42\u7ea7\u7ed3\u6784 ====="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3144
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->dumpViewHierarchyRecursive(Landroid/view/ViewGroup;I)V

    .line 3145
    const-string v0, "EbookReader"

    const-string v1, "===== View\u5c42\u7ea7\u7ed3\u6784\u7ed3\u675f ====="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3146
    return-void
.end method

.method private dumpViewHierarchyRecursive(Landroid/view/ViewGroup;I)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 3152
    const-string v2, ""

    move v1, v0

    move-object v3, v2

    .line 3153
    :goto_5
    if-ge v1, p2, :cond_1e

    .line 3154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3153
    add-int/lit8 v1, v1, 0x1

    move-object v3, v2

    goto :goto_5

    :cond_1e
    move v2, v0

    .line 3156
    :goto_1f
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_b6

    .line 3157
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3158
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 3159
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

    .line 3160
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

    .line 3162
    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_ab

    .line 3163
    check-cast v1, Landroid/view/ViewGroup;

    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, v1, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->dumpViewHierarchyRecursive(Landroid/view/ViewGroup;I)V

    .line 3156
    :cond_ab
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1f

    .line 3159
    :cond_b0
    const-string v0, ""

    goto :goto_4e

    .line 3160
    :cond_b3
    const-string v0, ""

    goto :goto_95

    .line 3166
    :cond_b6
    return-void
.end method

.method private ensureStoragePermissionForEbook()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 238
    :try_start_2
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v2}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 239
    if-eqz v2, :cond_57

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 240
    invoke-virtual {v2, v3}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_57

    .line 242
    :goto_12
    if-nez v0, :cond_3c

    if-eqz v2, :cond_3c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3c

    .line 243
    const-string v0, "EbookReader"

    const-string v1, "\u5b58\u50a8\u6743\u9650\u672a\u6388\u4e88\uff0c\u81ea\u52a8\u7533\u8bf7\u8bfb\u5199\u6743\u9650"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v3, v0, v1

    const/4 v1, 0x1

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v0, v1

    const/16 v1, 0x3e9

    invoke-virtual {v2, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 251
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    const-string v1, "\u8bf7\u5141\u8bb8\u5b58\u50a8\u6743\u9650\uff0c\u4e66\u67b6\u548c\u9605\u8bfb\u8fdb\u5ea6\u5c06\u4fdd\u5b58\u5230 Download \u76ee\u5f55"

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showToast(Ljava/lang/String;)V

    .line 253
    :cond_3c
    invoke-static {}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->isExternalWritable()Z

    move-result v0

    if-nez v0, :cond_56

    .line 255
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_56

    .line 256
    const-string v0, "EbookReader"

    const-string v1, "\u672a\u6388\u4e88\u6240\u6709\u6587\u4ef6\u8bbf\u95ee\u6743\u9650\uff0c\u4e66\u67b6/\u8fdb\u5ea6\u5c06\u4fdd\u5b58\u5728\u5e94\u7528\u5185\u90e8\uff08\u65e0\u6cd5\u8de8APP\u5171\u4eab\uff09"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    const-string v1, "\u8bf7\u6388\u4e88\u201c\u6240\u6709\u6587\u4ef6\u8bbf\u95ee\u201d\u6743\u9650\uff08\u7cfb\u7edf\u8bbe\u7f6e\u2192\u5e94\u7528\u2192\u6743\u9650\uff09\uff0c\u4e66\u67b6\u548c\u8fdb\u5ea6\u624d\u80fd\u8de8APP\u5171\u4eab"

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showToast(Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_56} :catch_59

    .line 263
    :cond_56
    :goto_56
    return-void

    :cond_57
    move v0, v1

    .line 240
    goto :goto_12

    .line 260
    :catch_59
    move-exception v0

    .line 261
    const-string v1, "EbookReader"

    const-string v2, "\u7533\u8bf7\u5b58\u50a8\u6743\u9650\u5f02\u5e38"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_56
.end method

.method private findAndUpdateDanmakuView(Landroid/view/ViewGroup;I)V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v8, -0x1

    .line 3810
    move v1, v2

    :goto_5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_b5

    .line 3811
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3814
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    .line 3815
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v6

    .line 3817
    const-string v3, ""

    .line 3818
    if-lez v6, :cond_27

    .line 3820
    :try_start_1f
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;
    :try_end_26
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1f .. :try_end_26} :catch_b6

    move-result-object v3

    .line 3826
    :cond_27
    :goto_27
    const-string v6, "Danmaku"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_47

    const-string v6, "\u5f39\u5e55"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_47

    const-string v5, "danmaku"

    .line 3827
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_47

    const-string v5, "\u5f39\u5e55"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 3829
    :cond_47
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 3830
    if-eqz v3, :cond_6c

    .line 3832
    iget v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-eqz v3, :cond_55

    iget v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v3, v4, :cond_79

    :cond_55
    move v3, v4

    .line 3834
    :goto_56
    instance-of v5, p1, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_88

    .line 3835
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, p2, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3839
    if-eqz v3, :cond_7e

    .line 3841
    iget v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-nez v3, :cond_7b

    .line 3842
    const/16 v3, 0x33

    .line 3854
    :goto_67
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3855
    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3877
    :cond_6c
    :goto_6c
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_75

    .line 3878
    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->findAndUpdateDanmakuView(Landroid/view/ViewGroup;I)V

    .line 3810
    :cond_75
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_79
    move v3, v2

    .line 3832
    goto :goto_56

    .line 3844
    :cond_7b
    const/16 v3, 0x53

    goto :goto_67

    .line 3848
    :cond_7e
    iget v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v3, v9, :cond_85

    .line 3849
    const/16 v3, 0x35

    goto :goto_67

    .line 3851
    :cond_85
    const/16 v3, 0x55

    goto :goto_67

    .line 3856
    :cond_88
    instance-of v5, p1, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_6c

    .line 3857
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, p2, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3860
    if-eqz v3, :cond_a9

    .line 3861
    const/16 v3, 0x9

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3866
    :goto_98
    iget v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-eqz v3, :cond_a0

    iget v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v3, v9, :cond_af

    .line 3867
    :cond_a0
    const/16 v3, 0xa

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3871
    :goto_a5
    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6c

    .line 3863
    :cond_a9
    const/16 v3, 0xb

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_98

    .line 3869
    :cond_af
    const/16 v3, 0xc

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_a5

    .line 3881
    :cond_b5
    return-void

    .line 3821
    :catch_b6
    move-exception v6

    goto/16 :goto_27
.end method

.method private findAndUpdateSubtitleView(Landroid/view/ViewGroup;I)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v9, -0x1

    .line 3902
    move v1, v2

    :goto_5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_d6

    .line 3903
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3906
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    .line 3907
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 3908
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v7

    .line 3910
    const-string v3, ""

    .line 3911
    if-lez v7, :cond_2f

    .line 3913
    :try_start_27
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;
    :try_end_2e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_27 .. :try_end_2e} :catch_d7

    move-result-object v3

    .line 3919
    :cond_2f
    :goto_2f
    const-string v7, "Subtitle"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_67

    const-string v7, "\u5b57\u5e55"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_67

    const-string v5, "Subtitle"

    .line 3920
    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_67

    const-string v5, "subtitle"

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_67

    const-string v5, "subtitle"

    .line 3921
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_67

    const-string v5, "\u5b57\u5e55"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_67

    const-string v5, "exo_subtitles"

    .line 3922
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 3924
    :cond_67
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 3925
    if-eqz v3, :cond_8c

    .line 3927
    iget v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-eqz v3, :cond_75

    iget v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v3, v4, :cond_9a

    :cond_75
    move v3, v4

    .line 3929
    :goto_76
    instance-of v5, p1, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_a9

    .line 3930
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, p2, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3934
    if-eqz v3, :cond_9f

    .line 3936
    iget v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-nez v3, :cond_9c

    .line 3937
    const/16 v3, 0x33

    .line 3949
    :goto_87
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3950
    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3972
    :cond_8c
    :goto_8c
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_95

    .line 3973
    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->findAndUpdateSubtitleView(Landroid/view/ViewGroup;I)V

    .line 3902
    :cond_95
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_5

    :cond_9a
    move v3, v2

    .line 3927
    goto :goto_76

    .line 3939
    :cond_9c
    const/16 v3, 0x53

    goto :goto_87

    .line 3943
    :cond_9f
    iget v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v3, v10, :cond_a6

    .line 3944
    const/16 v3, 0x35

    goto :goto_87

    .line 3946
    :cond_a6
    const/16 v3, 0x55

    goto :goto_87

    .line 3951
    :cond_a9
    instance-of v5, p1, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_8c

    .line 3952
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, p2, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3955
    if-eqz v3, :cond_ca

    .line 3956
    const/16 v3, 0x9

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3961
    :goto_b9
    iget v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-eqz v3, :cond_c1

    iget v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v3, v10, :cond_d0

    .line 3962
    :cond_c1
    const/16 v3, 0xa

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3966
    :goto_c6
    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8c

    .line 3958
    :cond_ca
    const/16 v3, 0xb

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_b9

    .line 3964
    :cond_d0
    const/16 v3, 0xc

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_c6

    .line 3976
    :cond_d6
    return-void

    .line 3914
    :catch_d7
    move-exception v7

    goto/16 :goto_2f
.end method

.method private findFileRecursively(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 4205
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_8

    .line 4228
    :cond_7
    :goto_7
    return-object v0

    .line 4210
    :cond_8
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4211
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_15

    move-object v0, v1

    .line 4212
    goto :goto_7

    .line 4216
    :cond_15
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 4217
    if-eqz v3, :cond_7

    .line 4218
    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1e
    if-ge v2, v4, :cond_7

    aget-object v1, v3, v2

    .line 4219
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_30

    .line 4220
    invoke-direct {p0, v1, p2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->findFileRecursively(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 4221
    if-eqz v1, :cond_30

    move-object v0, v1

    .line 4222
    goto :goto_7

    .line 4218
    :cond_30
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1e
.end method

.method private formatFileSize(J)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 4498
    const-wide/16 v0, 0x400

    cmp-long v0, p1, v0

    if-gez v0, :cond_1c

    .line 4499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4505
    :goto_1b
    return-object v0

    .line 4500
    :cond_1c
    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-gez v0, :cond_36

    .line 4501
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

    .line 4502
    :cond_36
    const-wide/32 v0, 0x40000000

    cmp-long v0, p1, v0

    if-gez v0, :cond_50

    .line 4503
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

    .line 4505
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
    .line 2552
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2553
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v3

    .line 2555
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Chapter;->getChapterIndex()I

    move-result v0

    .line 2556
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Chapter;->getDepth()I

    move-result v4

    .line 2559
    add-int/lit8 v0, v0, 0x1

    move v1, v0

    :goto_16
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_33

    .line 2560
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ebook/model/Chapter;

    .line 2561
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getDepth()I

    move-result v5

    .line 2564
    add-int/lit8 v6, v4, 0x1

    if-ne v5, v6, :cond_31

    .line 2565
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2559
    :cond_2d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_16

    .line 2568
    :cond_31
    if-gt v5, v4, :cond_2d

    .line 2573
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

    .line 2574
    return-object v2
.end method

.method private getDirectorySize(Ljava/io/File;)J
    .locals 8

    .prologue
    const-wide/16 v0, 0x0

    .line 4475
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_b

    .line 4491
    :cond_a
    :goto_a
    return-wide v0

    .line 4480
    :cond_b
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 4481
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 4482
    if-eqz v3, :cond_a

    .line 4483
    array-length v4, v3

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v4, :cond_a

    aget-object v5, v3, v2

    .line 4484
    invoke-direct {p0, v5}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->getDirectorySize(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 4483
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 4488
    :cond_25
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_a
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
    .line 2535
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2536
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v0

    .line 2538
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

    .line 2539
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getDepth()I

    move-result v3

    if-nez v3, :cond_f

    .line 2540
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 2544
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

    .line 2545
    return-object v1
.end method

.method private getShrinkVideoHeight(I)I
    .locals 1

    .prologue
    .line 2934
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isLiveMode()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2935
    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanelPercent:I

    rsub-int/lit8 v0, v0, 0x64

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x64

    .line 2937
    :goto_f
    return v0

    :cond_10
    const/4 v0, -0x1

    goto :goto_f
.end method

.method private handlePageTurn(Z)V
    .locals 10

    .prologue
    const/4 v0, 0x1

    const-wide/high16 v8, 0x3fc0000000000000L    # 0.125

    const/4 v1, 0x0

    .line 4020
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    if-nez v2, :cond_10

    .line 4021
    const-string v0, "EbookReader"

    const-string v1, "handlePageTurn: WebView\u4e3a\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4098
    :goto_f
    return-void

    .line 4025
    :cond_10
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getHeight()I

    move-result v3

    .line 4026
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollY()I

    move-result v4

    .line 4027
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v5

    .line 4029
    if-eqz p1, :cond_b6

    .line 4031
    const-string v2, "EbookReader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handlePageTurn: \u5411\u524d\u7ffb\u9875, height="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", scrollY="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4034
    if-nez v4, :cond_69

    .line 4036
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    if-eqz v1, :cond_61

    iget v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterIndex:I

    if-lez v1, :cond_61

    .line 4037
    const-string v1, "EbookReader"

    const-string v2, "handlePageTurn: \u5230\u8fbe\u7ae0\u8282\u9876\u90e8\uff0c\u8df3\u8f6c\u5230\u4e0a\u4e00\u7ae0\u8282\u7684\u5e95\u90e8"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4038
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    iget v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterIndex:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v1, v2, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;IZ)V

    goto :goto_f

    .line 4041
    :cond_61
    const-string v0, "EbookReader"

    const-string v1, "handlePageTurn: \u5df2\u7ecf\u5728\u7b2c\u4e00\u7ae0\uff0c\u65e0\u6cd5\u5411\u524d\u7ffb\u9875"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 4047
    :cond_69
    if-lez v3, :cond_a7

    .line 4048
    int-to-double v4, v3

    mul-double/2addr v4, v8

    double-to-int v0, v4

    .line 4049
    sub-int v2, v3, v0

    .line 4050
    const-string v4, "EbookReader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handlePageTurn: \u5411\u524d\u7ffb\u9875: height="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", overlapHeight="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", pageHeight="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4051
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->scrollBy(II)V

    .line 4057
    :goto_a2
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->scheduleSaveReadingProgress()V

    goto/16 :goto_f

    .line 4054
    :cond_a7
    const-string v0, "EbookReader"

    const-string v2, "handlePageTurn: WebView height\u4e3a0\uff0c\u4f7f\u7528\u9ed8\u8ba4\u503c800"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4055
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    const/16 v2, -0x320

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->scrollBy(II)V

    goto :goto_a2

    .line 4060
    :cond_b6
    const-string v2, "EbookReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handlePageTurn: \u5411\u540e\u7ffb\u9875, height="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", scrollY="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", contentHeight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4064
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v2}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 4065
    if-eqz v2, :cond_129

    .line 4066
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 4068
    :goto_f4
    int-to-float v5, v5

    mul-float/2addr v2, v5

    float-to-int v2, v2

    .line 4071
    int-to-double v6, v3

    mul-double/2addr v6, v8

    double-to-int v5, v6

    .line 4072
    sub-int v6, v3, v5

    .line 4073
    add-int/2addr v4, v3

    add-int/lit8 v2, v2, -0xa

    if-lt v4, v2, :cond_12c

    .line 4075
    :goto_101
    if-eqz v0, :cond_137

    .line 4077
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    if-eqz v0, :cond_12e

    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterIndex:I

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    invoke-virtual {v2}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_12e

    .line 4078
    const-string v0, "EbookReader"

    const-string v2, "handlePageTurn: \u5230\u8fbe\u7ae0\u8282\u5e95\u90e8\uff0c\u8df3\u8f6c\u5230\u4e0b\u4e00\u7ae0\u8282\u7684\u9876\u90e8"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4079
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    iget v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v0, v2, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;IZ)V

    goto/16 :goto_f

    .line 4067
    :cond_129
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_f4

    :cond_12c
    move v0, v1

    .line 4073
    goto :goto_101

    .line 4082
    :cond_12e
    const-string v0, "EbookReader"

    const-string v1, "handlePageTurn: \u5df2\u7ecf\u5728\u6700\u540e\u4e00\u7ae0\uff0c\u65e0\u6cd5\u5411\u540e\u7ffb\u9875"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 4088
    :cond_137
    if-lez v3, :cond_16f

    .line 4089
    const-string v0, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePageTurn: \u5411\u540e\u7ffb\u9875: height="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 4090
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, v6}, Landroid/webkit/WebView;->scrollBy(II)V

    .line 4096
    :goto_16a
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->scheduleSaveReadingProgress()V

    goto/16 :goto_f

    .line 4093
    :cond_16f
    const-string v0, "EbookReader"

    const-string v2, "handlePageTurn: WebView height\u4e3a0\uff0c\u4f7f\u7528\u9ed8\u8ba4\u503c800"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4094
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    const/16 v2, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->scrollBy(II)V

    goto :goto_16a
.end method

.method private hideChapterList()V
    .locals 2

    .prologue
    .line 2811
    const-string v0, "EbookReader"

    const-string v1, "\u9690\u85cf\u7ae0\u8282\u5217\u8868"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isChapterListShown:Z

    .line 2814
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2815
    if-nez v0, :cond_1a

    .line 2816
    const-string v0, "EbookReader"

    const-string v1, "Activity is null, cannot hide chapter list"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2840
    :goto_19
    return-void

    .line 2819
    :cond_1a
    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$38;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$38;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_19
.end method

.method private hideEbookPanel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3173
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3174
    if-nez v0, :cond_12

    .line 3175
    const-string v0, "EbookReader"

    const-string v1, "Activity is null, cannot hide ebook panel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3210
    :goto_11
    return-void

    .line 3179
    :cond_12
    const-string v1, "EbookReader"

    const-string v2, "\u5f00\u59cb\u9690\u85cf\u7535\u5b50\u4e66\u9762\u677f\uff08\u4e0d\u6e05\u7a7a\u4e66\u7c4d\u6570\u636e\uff09"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3182
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveReadingProgressImmediately()V

    .line 3185
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2e

    .line 3186
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3187
    const-string v1, "EbookReader"

    const-string v2, "\u7070\u8272\u80cc\u666f\u9762\u677f\u5df2\u9690\u85cf"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3191
    :cond_2e
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->restoreVideoView(Landroid/app/Activity;)V

    .line 3194
    iput-boolean v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    .line 3195
    const-string v0, "video"

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->controlTarget:Ljava/lang/String;

    .line 3198
    iput-boolean v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isOrganizingShelf:Z

    .line 3199
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectedFlags:[Z

    .line 3200
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    .line 3201
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 3202
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 3203
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectAllText:Landroid/widget/TextView;

    .line 3204
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteText:Landroid/widget/TextView;

    .line 3209
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u9762\u677f\u5df2\u9690\u85cf\uff0c\u4e66\u7c4d\u6570\u636e\u4fdd\u7559\uff0ccontrolTarget\u91cd\u7f6e\u4e3avideo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method private hideFileChooser()V
    .locals 2

    .prologue
    .line 1788
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1789
    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-nez v0, :cond_14

    .line 1790
    :cond_c
    const-string v0, "EbookReader"

    const-string v1, "\u65e0\u6cd5\u9690\u85cf\u6587\u4ef6\u9009\u62e9\u5668\uff1aactivity\u6216panel\u4e3anull"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    :goto_13
    return-void

    .line 1794
    :cond_14
    const-string v0, "EbookReader"

    const-string v1, "\u5f00\u59cb\u9690\u85cf\u6587\u4ef6\u9009\u62e9\u5668"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1798
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isFileChooserShown:Z

    .line 1800
    const-string v0, "EbookReader"

    const-string v1, "\u6587\u4ef6\u9009\u62e9\u5668\u5df2\u9690\u85cf\uff0c\u56de\u5230\u7535\u5b50\u4e66\u9996\u9875"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showBookshelfOrFileChooser()V

    goto :goto_13
.end method

.method private hideLoadingIndicator()V
    .locals 2

    .prologue
    .line 2059
    const-string v0, "EbookReader"

    const-string v1, "\u9690\u85cf\u52a0\u8f7d\u8fdb\u5ea6\u63d0\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isLoadingEbook:Z

    .line 2062
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$33;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$33;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2074
    return-void
.end method

.method private hideOrganizeShelf()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 911
    const-string v0, "EbookReader"

    const-string v1, "\u9000\u51fa\u6574\u7406\u4e66\u67b6\u9875\u9762\uff0c\u56de\u5230\u4e66\u67b6"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isOrganizingShelf:Z

    .line 913
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectedFlags:[Z

    .line 914
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    .line 915
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 916
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 917
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectAllText:Landroid/widget/TextView;

    .line 918
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteText:Landroid/widget/TextView;

    .line 919
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_20

    .line 920
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 922
    :cond_20
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showBookshelfOrFileChooser()V

    .line 923
    return-void
.end method

.method private isConfirmKey(I)Z
    .locals 1

    .prologue
    .line 1047
    const/16 v0, 0x17

    if-eq p1, v0, :cond_c

    const/16 v0, 0x42

    if-eq p1, v0, :cond_c

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isEbookFile(Ljava/io/File;)Z
    .locals 2

    .prologue
    .line 1965
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1966
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

    .line 4144
    :try_start_1
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Chapter;->getHtmlFilePath()Ljava/lang/String;

    move-result-object v2

    .line 4145
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Chapter;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    .line 4147
    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 4148
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

    .line 4197
    :goto_2e
    return-object v0

    .line 4153
    :cond_2f
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4159
    if-eqz v0, :cond_10a

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10a

    .line 4160
    const-string v4, "file://"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "/$"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4161
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4165
    :goto_5a
    if-eqz v0, :cond_62

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_67

    .line 4166
    :cond_62
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4170
    :cond_67
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_7a

    .line 4171
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->findFileRecursively(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 4174
    :cond_7a
    if-eqz v0, :cond_e5

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_e5

    .line 4176
    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Lorg/jsoup/Jsoup;->parse(Ljava/io/File;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v2

    .line 4177
    invoke-virtual {v2}, Lorg/jsoup/nodes/Document;->outerHtml()Ljava/lang/String;

    move-result-object v0

    .line 4180
    invoke-virtual {p1, v0}, Lcom/bilibili/tv/ebook/model/Chapter;->setHtmlContent(Ljava/lang/String;)V

    .line 4181
    invoke-virtual {v2}, Lorg/jsoup/nodes/Document;->text()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/bilibili/tv/ebook/model/Chapter;->setPlainTextContent(Ljava/lang/String;)V

    .line 4184
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->manageChapterCache(Lcom/bilibili/tv/ebook/model/Chapter;)V

    .line 4186
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

    .line 4187
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4186
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c3} :catch_c5

    goto/16 :goto_2e

    .line 4195
    :catch_c5
    move-exception v0

    .line 4196
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

    .line 4197
    goto/16 :goto_2e

    .line 4190
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

    .line 4192
    goto/16 :goto_2e

    :cond_10a
    move-object v0, v1

    goto/16 :goto_5a
.end method

.method private loadFileList(Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V
    .locals 10

    .prologue
    .line 1810
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1811
    if-nez v1, :cond_9

    .line 1959
    :goto_8
    return-void

    .line 1813
    :cond_9
    const-string v0, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u52a0\u8f7d\u76ee\u5f55: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1819
    invoke-virtual {p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 1820
    if-nez v2, :cond_41

    .line 1821
    const-string v0, "EbookReader"

    const-string v1, "listFiles()\u8fd4\u56denull\uff0c\u53ef\u80fd\u6ca1\u6709\u6743\u9650\u6216\u76ee\u5f55\u4e0d\u5b58\u5728"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    const-string v1, "\u65e0\u6cd5\u8bbf\u95ee\u76ee\u5f55"

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showToast(Ljava/lang/String;)V

    goto :goto_8

    .line 1826
    :cond_41
    const-string v0, "EbookReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u627e\u5230 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u4e2a\u6587\u4ef6/\u6587\u4ef6\u5939"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1830
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1832
    array-length v5, v2

    const/4 v0, 0x0

    :goto_6c
    if-ge v0, v5, :cond_be

    aget-object v6, v2, v0

    .line 1833
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_98

    .line 1834
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1835
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

    .line 1832
    :cond_95
    :goto_95
    add-int/lit8 v0, v0, 0x1

    goto :goto_6c

    .line 1836
    :cond_98
    invoke-direct {p0, v6}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookFile(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_95

    .line 1837
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1838
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

    .line 1842
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

    .line 1845
    new-instance v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$26;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$26;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1851
    new-instance v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$27;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$27;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1859
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1860
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1863
    invoke-virtual {p3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_117

    .line 1864
    const-string v0, "\u2191 \u4e0a\u7ea7"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1865
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1869
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

    .line 1870
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

    .line 1871
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11b

    .line 1875
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

    .line 1876
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

    .line 1877
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_149

    .line 1880
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

    .line 1883
    new-instance v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$28;

    const v3, 0x1090003

    invoke-direct {v0, p0, v1, v3, v5}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$28;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/content/Context;ILjava/util/List;)V

    .line 1913
    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$29;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$29;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1930
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1933
    new-instance v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$30;

    invoke-direct {v0, p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$30;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/widget/ListView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1942
    new-instance v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$31;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$31;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Ljava/util/List;Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_8
.end method

.method private manageChapterCache(Lcom/bilibili/tv/ebook/model/Chapter;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4106
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->cachedChapters:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4107
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->cachedChapters:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 4108
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->cachedChapters:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 4124
    :cond_13
    :goto_13
    return-void

    .line 4113
    :cond_14
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->cachedChapters:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 4114
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

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->cachedChapters:Ljava/util/LinkedList;

    .line 4115
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4114
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4118
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->cachedChapters:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_13

    .line 4119
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->cachedChapters:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ebook/model/Chapter;

    .line 4120
    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ebook/model/Chapter;->setHtmlContent(Ljava/lang/String;)V

    .line 4121
    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ebook/model/Chapter;->setPlainTextContent(Ljava/lang/String;)V

    .line 4122
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
    .line 2080
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

    .line 2083
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->cancelParsingTask()V

    .line 2086
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBookFilePath:Ljava/lang/String;

    .line 2087
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isParsingCancelled:Z

    .line 2088
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isLoadingEbook:Z

    .line 2091
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showLoadingIndicator()V

    .line 2094
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 2096
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$34;

    invoke-direct {v2, p0, v0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$34;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parsingThread:Ljava/lang/Thread;

    .line 2193
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parsingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2194
    return-void
.end method

.method private restoreDanmakuView(Landroid/app/Activity;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x11

    const/16 v6, 0xd

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 3549
    if-nez p1, :cond_11

    .line 3550
    const-string v0, "EbookReader"

    const-string v1, "Activity is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3647
    :goto_10
    return-void

    .line 3555
    :cond_11
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getDanmakuView()Landroid/view/View;

    move-result-object v1

    .line 3556
    if-nez v1, :cond_21

    .line 3557
    const-string v0, "EbookReader"

    const-string v1, "\u65e0\u72ec\u7acb\u5f39\u5e55\u89c6\u56fe\uff0c\u8df3\u8fc7\u5f39\u5e55\u6062\u590d"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 3561
    :cond_21
    const-string v0, "EbookReader"

    const-string v2, "\u5f00\u59cb\u6062\u590d\u5f39\u5e55\u89c6\u56fe\u5e03\u5c40"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3564
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isLiveMode()Z

    move-result v0

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_56

    .line 3565
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3566
    if-eqz v0, :cond_3f

    .line 3567
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3569
    :cond_3f
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuParent:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuIndex:I

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3570
    iput-object v8, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuParent:Landroid/view/ViewGroup;

    .line 3571
    iput v5, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuIndex:I

    .line 3572
    const-string v0, "EbookReader"

    const-string v2, "\u76f4\u64ad\u5f39\u5e55\u5bb9\u5668\u5df2\u79fb\u56de\u539f\u7236\u5bb9\u5668"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3576
    :cond_56
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3577
    if-nez v0, :cond_66

    .line 3578
    const-string v0, "EbookReader"

    const-string v1, "Danmaku view parent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 3582
    :cond_66
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

    .line 3587
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v2, :cond_e3

    .line 3589
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_b2

    .line 3590
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3594
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3596
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528FrameLayout.LayoutParams\u6062\u590d\u5f39\u5e55\u5168\u5c4f"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3613
    :goto_a4
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3614
    const-string v0, "EbookReader"

    const-string v1, "\u5f39\u5e55\u5df2\u6062\u590d\u539f\u59cb\u5e03\u5c40"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3646
    :goto_ae
    iput-object v8, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    goto/16 :goto_10

    .line 3597
    :cond_b2
    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_ce

    .line 3598
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3602
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3604
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528RelativeLayout.LayoutParams\u6062\u590d\u5f39\u5e55\u5168\u5c4f"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a4

    .line 3606
    :cond_ce
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3610
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528ViewGroup.LayoutParams\u6062\u590d\u5f39\u5e55\u5168\u5c4f"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a4

    .line 3617
    :cond_e3
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_100

    .line 3618
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3622
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3624
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528FrameLayout.LayoutParams\u6062\u590d\u5f39\u5e55\u5168\u5c4f(\u9ed8\u8ba4)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3641
    :goto_f5
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3642
    const-string v0, "EbookReader"

    const-string v1, "\u5f39\u5e55\u5df2\u6062\u590d\u5168\u5c4f\u663e\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ae

    .line 3625
    :cond_100
    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_114

    .line 3626
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3630
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3632
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528RelativeLayout.LayoutParams\u6062\u590d\u5f39\u5e55\u5168\u5c4f(\u9ed8\u8ba4)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f5

    .line 3634
    :cond_114
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3638
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528ViewGroup.LayoutParams\u6062\u590d\u5f39\u5e55\u5168\u5c4f(\u9ed8\u8ba4)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f5
.end method

.method private restoreReadingProgress(Lcom/bilibili/tv/ebook/model/Book;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 4331
    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    if-nez v0, :cond_8

    .line 4366
    :cond_7
    :goto_7
    return-void

    .line 4336
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ebook/util/EbookCacheManager;->getReadingProgress(Ljava/lang/String;)Lcom/bilibili/tv/ebook/model/ReadingProgress;

    move-result-object v0

    .line 4338
    if-eqz v0, :cond_96

    .line 4339
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->getCurrentChapterIndex()I

    move-result v1

    .line 4340
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->getCurrentPage()I

    move-result v2

    .line 4343
    if-ltz v1, :cond_79

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_79

    .line 4344
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_79

    .line 4345
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

    .line 4347
    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v3, v2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;IZI)V

    .line 4354
    :goto_54
    invoke-direct {p0, p1, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->addToBookshelf(Lcom/bilibili/tv/ebook/model/Book;Lcom/bilibili/tv/ebook/model/ReadingProgress;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_57} :catch_58

    goto :goto_7

    .line 4362
    :catch_58
    move-exception v0

    .line 4363
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

    .line 4364
    invoke-direct {p0, p1, v6}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;I)V

    goto :goto_7

    .line 4349
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

    .line 4350
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;I)V

    goto :goto_54

    .line 4356
    :cond_96
    const-string v0, "EbookReader"

    const-string v1, "\u65e0\u4fdd\u5b58\u7684\u9605\u8bfb\u8fdb\u5ea6\uff0c\u4ece\u7b2c\u4e00\u7ae0\u5f00\u59cb"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4357
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;I)V

    .line 4360
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->addToBookshelf(Lcom/bilibili/tv/ebook/model/Book;Lcom/bilibili/tv/ebook/model/ReadingProgress;)V
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

    .line 3456
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isVideoTextureView()Z

    move-result v0

    if-nez v0, :cond_15

    .line 3457
    const-string v0, "EbookReader"

    const-string v1, "\u5f53\u524d\u672a\u4f7f\u7528TextureView\u6a21\u5f0f,\u65e0\u9700\u6062\u590d"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3543
    :goto_14
    return-void

    .line 3462
    :cond_15
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getVideoView()Landroid/view/View;

    move-result-object v1

    .line 3463
    if-nez v1, :cond_25

    .line 3464
    const-string v0, "EbookReader"

    const-string v1, "\u89c6\u9891\u89c6\u56fe\u4e3a\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 3469
    :cond_25
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3470
    if-nez v0, :cond_35

    .line 3471
    const-string v0, "EbookReader"

    const-string v1, "Video view parent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 3475
    :cond_35
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

    .line 3480
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v2, :cond_b5

    .line 3482
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_84

    .line 3483
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3487
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3489
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528FrameLayout.LayoutParams\u6062\u590d\u5168\u5c4f"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3506
    :goto_73
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3507
    const-string v0, "EbookReader"

    const-string v1, "\u89c6\u9891\u5df2\u6062\u590d\u539f\u59cb\u5e03\u5c40"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3539
    :goto_7d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    .line 3542
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->restoreDanmakuView(Landroid/app/Activity;)V

    goto :goto_14

    .line 3490
    :cond_84
    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_a0

    .line 3491
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3495
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3497
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528RelativeLayout.LayoutParams\u6062\u590d\u5168\u5c4f"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    .line 3499
    :cond_a0
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3503
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528ViewGroup.LayoutParams\u6062\u590d\u5168\u5c4f"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    .line 3510
    :cond_b5
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_d2

    .line 3511
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3515
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3517
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528FrameLayout.LayoutParams\u6062\u590d\u5168\u5c4f(\u9ed8\u8ba4)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3534
    :goto_c7
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3535
    const-string v0, "EbookReader"

    const-string v1, "\u89c6\u9891\u5df2\u6062\u590d\u5168\u5c4f\u663e\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7d

    .line 3518
    :cond_d2
    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_e6

    .line 3519
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3523
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3525
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528RelativeLayout.LayoutParams\u6062\u590d\u5168\u5c4f(\u9ed8\u8ba4)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c7

    .line 3527
    :cond_e6
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3531
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528ViewGroup.LayoutParams\u6062\u590d\u5168\u5c4f(\u9ed8\u8ba4)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c7
.end method

.method private saveReadingProgress()V
    .locals 6

    .prologue
    .line 4235
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_d

    .line 4282
    :cond_c
    :goto_c
    return-void

    .line 4241
    :cond_d
    :try_start_d
    new-instance v1, Lcom/bilibili/tv/ebook/model/ReadingProgress;

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Book;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bilibili/tv/ebook/model/ReadingProgress;-><init>(Ljava/lang/String;)V

    .line 4243
    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterIndex:I

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->setCurrentChapterIndex(I)V

    .line 4244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->setLastReadTimestamp(J)V

    .line 4247
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 4248
    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterIndex:I

    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    invoke-virtual {v2}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 4249
    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->setProgressPercentage(F)V

    .line 4253
    :cond_4d
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    .line 4254
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getHeight()I

    move-result v2

    .line 4255
    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int v2, v0, v2

    .line 4256
    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->setCurrentPage(I)V

    .line 4259
    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->setFontSize(I)V

    .line 4262
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ebook/util/EbookCacheManager;->saveReadingProgress(Lcom/bilibili/tv/ebook/model/ReadingProgress;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_6d} :catch_c5

    .line 4267
    :try_start_6d
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBookFilePath:Ljava/lang/String;

    if-eqz v0, :cond_8b

    .line 4268
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    if-nez v0, :cond_82

    .line 4269
    new-instance v0, Lcom/bilibili/tv/ebook/util/BookshelfManager;

    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v3}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/bilibili/tv/ebook/util/BookshelfManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    .line 4271
    :cond_82
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    iget-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBookFilePath:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v4}, Lcom/bilibili/tv/ebook/util/BookshelfManager;->addToBookshelf(Lcom/bilibili/tv/ebook/model/Book;Lcom/bilibili/tv/ebook/model/ReadingProgress;Ljava/lang/String;)V
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_8b} :catch_e4
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_8b} :catch_c5

    .line 4277
    :cond_8b
    :goto_8b
    :try_start_8b
    const-string v0, "EbookReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u9605\u8bfb\u8fdb\u5ea6\u5df2\u4fdd\u5b58: \u7ae0\u8282="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", \u9875\u7801="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \u8fdb\u5ea6="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4278
    invoke-virtual {v1}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->getProgressPercentage()F

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4277
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_c3} :catch_c5

    goto/16 :goto_c

    .line 4279
    :catch_c5
    move-exception v0

    .line 4280
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

    .line 4273
    :catch_e4
    move-exception v0

    .line 4274
    :try_start_e5
    const-string v3, "EbookReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u540c\u6b65\u66f4\u65b0\u4e66\u67b6\u5931\u8d25: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_101} :catch_c5

    goto :goto_8b
.end method

.method private saveReadingProgressImmediately()V
    .locals 2

    .prologue
    .line 4318
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressHandler:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_12

    .line 4319
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressHandler:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4320
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressRunnable:Ljava/lang/Runnable;

    .line 4324
    :cond_12
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveReadingProgress()V

    .line 4325
    return-void
.end method

.method private scheduleSaveReadingProgress()V
    .locals 4

    .prologue
    .line 4290
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressHandler:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;

    if-nez v0, :cond_b

    .line 4291
    new-instance v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressHandler:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;

    .line 4295
    :cond_b
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_16

    .line 4296
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressHandler:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4300
    :cond_16
    new-instance v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$39;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$39;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressRunnable:Ljava/lang/Runnable;

    .line 4309
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressHandler:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4310
    const-string v0, "EbookReader"

    const-string v1, "\u5df2\u8c03\u5ea6\u9632\u6296\u4fdd\u5b58\u9605\u8bfb\u8fdb\u5ea6\uff0c\u5ef6\u8fdf 300ms"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4311
    return-void
.end method

.method private showBookshelfInPanel()V
    .locals 7

    .prologue
    const/16 v4, 0x18

    const/16 v3, 0x14

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 1516
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1517
    if-eqz v2, :cond_12

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1a

    .line 1518
    :cond_12
    const-string v0, "EbookReader"

    const-string v1, "Activity or ebookPanel is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    :goto_19
    return-void

    .line 1522
    :cond_1a
    const-string v0, "EbookReader"

    const-string v1, "\u5728\u7535\u5b50\u4e66\u9762\u677f\u4e2d\u663e\u793a\u4e66\u67b6\u5217\u8868"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_35

    .line 1526
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u9762\u677f\u672a\u663e\u793a\uff0c\u8bbe\u7f6e\u4e3aVISIBLE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1531
    :cond_35
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1534
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1535
    const-string v1, "\u6211\u7684\u4e66\u67b6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1536
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1537
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1538
    invoke-virtual {v0, v4, v3, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1539
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1540
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v6, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1546
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    .line 1547
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1548
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 1551
    new-instance v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$22;

    const v3, 0x1090003

    const v4, 0x1020014

    iget-object v5, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfItems:Ljava/util/List;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$22;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/content/Context;IILjava/util/List;)V

    .line 1601
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    new-instance v2, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$23;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$23;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1618
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1621
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1630
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1666
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1670
    const/16 v1, 0x46

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1671
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1672
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1674
    const-string v0, "EbookReader"

    const-string v1, "\u4e66\u67b6\u5217\u8868\u5df2\u6dfb\u52a0\u5230\u7535\u5b50\u4e66\u9762\u677f"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19
.end method

.method private showBookshelfOrFileChooser()V
    .locals 3

    .prologue
    .line 1499
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ebook/util/EbookFileStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->reloadFromFile()V

    .line 1501
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    if-nez v0, :cond_1e

    .line 1502
    new-instance v0, Lcom/bilibili/tv/ebook/util/BookshelfManager;

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ebook/util/BookshelfManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    .line 1505
    :cond_1e
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/util/BookshelfManager;->getBookshelfItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfItems:Ljava/util/List;

    .line 1508
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u663e\u793a\u4e66\u67b6\u5217\u8868\uff0c\u5171 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfItems:Ljava/util/List;

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

    .line 1509
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showBookshelfInPanel()V

    .line 1510
    return-void
.end method

.method private showEbookPanel()V
    .locals 7

    .prologue
    .line 2848
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2849
    if-nez v1, :cond_10

    .line 2850
    const-string v0, "EbookReader"

    const-string v1, "Activity is null, cannot show ebook panel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2925
    :goto_f
    return-void

    .line 2854
    :cond_10
    const-string v0, "EbookReader"

    const-string v2, "\u5f00\u59cb\u663e\u793a\u7535\u5b50\u4e66\u9762\u677f"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2858
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ebook/util/EbookFileStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->reloadFromFile()V

    .line 2861
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2862
    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2863
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2864
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2867
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ebook/util/EbookFileStore;

    move-result-object v0

    .line 2868
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getScreenPercent()I

    move-result v4

    .line 2869
    const/4 v5, 0x6

    new-array v5, v5, [I

    fill-array-data v5, :array_154

    .line 2870
    if-ltz v4, :cond_13c

    array-length v6, v5

    if-ge v4, v6, :cond_13c

    .line 2871
    aget v4, v5, v4

    iput v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanelPercent:I

    .line 2876
    :goto_55
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

    iget v6, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanelPercent:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2879
    iget-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    if-nez v4, :cond_b0

    .line 2880
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    .line 2881
    iget-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    const-string v5, "\u5de6\u4e0a"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2882
    iget-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    const-string v5, "\u5de6\u4e0b"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2883
    iget-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    const-string v5, "\u53f3\u4e0a"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2884
    iget-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    const-string v5, "\u53f3\u4e0b"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2886
    :cond_b0
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getVideoPosition()I

    move-result v0

    .line 2887
    if-ltz v0, :cond_142

    iget-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_142

    .line 2888
    iput v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    .line 2892
    :goto_c0
    const-string v4, "EbookReader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8bfb\u53d6\u4fdd\u5b58\u7684\u89c6\u9891\u4f4d\u7f6e: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    iget v6, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2895
    invoke-direct {p0, v1, v2, v3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->shrinkVideoView(Landroid/app/Activity;II)V

    .line 2898
    invoke-direct {p0, v1, v2, v3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->shrinkDanmakuView(Landroid/app/Activity;II)V

    .line 2901
    invoke-direct {p0, v1, v2, v3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showGrayBackgroundPanel(Landroid/app/Activity;II)V

    .line 2904
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    if-nez v0, :cond_f6

    .line 2905
    new-instance v0, Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ebook/util/EbookCacheManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    .line 2907
    :cond_f6
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    if-nez v0, :cond_101

    .line 2908
    new-instance v0, Lcom/bilibili/tv/ebook/util/BookshelfManager;

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ebook/util/BookshelfManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    .line 2911
    :cond_101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    .line 2912
    const-string v0, "ebook"

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->controlTarget:Ljava/lang/String;

    .line 2913
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u9762\u677f\u5df2\u663e\u793a\uff0ccontrolTarget\u8bbe\u7f6e\u4e3aebook"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2916
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    if-eqz v0, :cond_147

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBookFilePath:Ljava/lang/String;

    if-eqz v0, :cond_147

    .line 2917
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u68c0\u6d4b\u5230\u6b63\u5728\u9605\u8bfb\u7684\u4e66\u7c4d\uff0c\u6062\u590d\u9605\u8bfb\u8fdb\u5ea6: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    invoke-virtual {v2}, Lcom/bilibili/tv/ebook/model/Book;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2919
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->restoreReadingProgress(Lcom/bilibili/tv/ebook/model/Book;)V

    goto/16 :goto_f

    .line 2873
    :cond_13c
    const/16 v4, 0x1e

    iput v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanelPercent:I

    goto/16 :goto_55

    .line 2890
    :cond_142
    const/4 v0, 0x0

    iput v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    goto/16 :goto_c0

    .line 2921
    :cond_147
    const-string v0, "EbookReader"

    const-string v1, "\u6ca1\u6709\u6b63\u5728\u9605\u8bfb\u7684\u4e66\u7c4d\uff0c\u663e\u793a\u9996\u9875\u5185\u5bb9"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2923
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showBookshelfOrFileChooser()V

    goto/16 :goto_f

    .line 2869
    nop

    :array_154
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

    .line 1680
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1681
    if-nez v1, :cond_17

    .line 1682
    const-string v0, "EbookReader"

    const-string v1, "Activity is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    :goto_16
    return-void

    .line 1686
    :cond_17
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-nez v0, :cond_23

    .line 1687
    const-string v0, "EbookReader"

    const-string v1, "ebookPanel is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 1691
    :cond_23
    const-string v0, "EbookReader"

    const-string v2, "\u5728\u7535\u5b50\u4e66\u9762\u677f\u4e2d\u663e\u793a\u6587\u4ef6\u9009\u62e9\u5668"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    const-string v2, "EbookReader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ebookPanel\u53ef\u89c1\u6027: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_177

    const-string v0, "\u5df2\u663e\u793a"

    :goto_41
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    const-string v0, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ebookPanel\u5b50\u89c6\u56fe\u6570: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_83

    .line 1697
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_17b

    .line 1699
    invoke-static {}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->hasManageExternalStoragePermission()Z

    move-result v0

    if-nez v0, :cond_83

    .line 1700
    const-string v0, "EbookReader"

    const-string v2, "\u672a\u6388\u4e88\u6240\u6709\u6587\u4ef6\u8bbf\u95ee\u6743\u9650\uff0c\u7535\u5b50\u4e66\u6570\u636e\u5c06\u4fdd\u5b58\u5728\u5e94\u7528\u5185\u90e8\uff08\u65e0\u6cd5\u8de8APP\u5171\u4eab\uff09"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    :cond_83
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_97

    .line 1719
    const-string v0, "EbookReader"

    const-string v2, "\u7535\u5b50\u4e66\u9762\u677f\u672a\u663e\u793a\uff0c\u8bbe\u7f6e\u4e3aVISIBLE"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1724
    :cond_97
    const-string v0, "EbookReader"

    const-string v2, "\u6e05\u7a7a\u7535\u5b50\u4e66\u9762\u677f\u4e2d\u7684\u5185\u5bb9"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1728
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1729
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1730
    const-string v2, "#333333"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1731
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1737
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1738
    const-string v3, "\u9009\u62e9\u7535\u5b50\u4e66\u6587\u4ef6"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1739
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1740
    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1741
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1742
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1743
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1746
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1747
    const v3, -0x333334

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1748
    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1749
    invoke-virtual {v2, v4, v8, v4, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1750
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1753
    new-instance v3, Landroid/widget/ListView;

    invoke-direct {v3, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->fileListView:Landroid/widget/ListView;

    .line 1754
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1758
    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->fileListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1759
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->fileListView:Landroid/widget/ListView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, -0xbbbbbc

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1760
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->fileListView:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 1761
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->fileListView:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 1762
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->fileListView:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 1763
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->fileListView:Landroid/widget/ListView;

    const/high16 v3, 0x20000

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    .line 1764
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->fileListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1766
    const-string v1, "EbookReader"

    const-string v3, "\u6587\u4ef6\u9009\u62e9\u5668\u5e03\u5c40\u521b\u5efa\u5b8c\u6210\uff0c\u51c6\u5907\u6dfb\u52a0\u5230\u7535\u5b50\u4e66\u9762\u677f"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1768
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6587\u4ef6\u9009\u62e9\u5668\u5e03\u5c40\u5df2\u6dfb\u52a0\u5230\u7535\u5b50\u4e66\u9762\u677f\uff0c\u5f53\u524d\u5b50\u89c6\u56fe\u6570: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    iput-boolean v5, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isFileChooserShown:Z

    .line 1772
    const-string v0, "EbookReader"

    const-string v1, "\u6587\u4ef6\u9009\u62e9\u5668\u5df2\u663e\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v3, "Download"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1776
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_170

    .line 1777
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 1781
    :cond_170
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->fileListView:Landroid/widget/ListView;

    invoke-direct {p0, v1, v2, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadFileList(Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V

    goto/16 :goto_16

    .line 1692
    :cond_177
    const-string v0, "\u672a\u663e\u793a"

    goto/16 :goto_41

    .line 1702
    :cond_17b
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v1, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_83

    .line 1704
    const-string v0, "EbookReader"

    const-string v2, "\u6ca1\u6709\u5b58\u50a8\u6743\u9650\uff0c\u8bf7\u6c42\u6743\u9650"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v7

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v5

    const/16 v2, 0x3e9

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 1712
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    const-string v1, "\u8bf7\u6388\u4e88\u5b58\u50a8\u6743\u9650\u540e\u518d\u8bd5"

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showToast(Ljava/lang/String;)V

    goto/16 :goto_16
.end method

.method private showGrayBackgroundPanel(Landroid/app/Activity;II)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v6, -0x1

    .line 3065
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->dumpViewHierarchy(Landroid/app/Activity;)V

    .line 3068
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v2}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getVideoContainer()Landroid/view/ViewGroup;

    move-result-object v3

    .line 3069
    if-nez v3, :cond_16

    .line 3070
    const-string v0, "EbookReader"

    const-string v1, "\u89c6\u9891\u5bb9\u5668\u4e3a\u7a7a\uff0c\u65e0\u6cd5\u521b\u5efa\u7535\u5b50\u4e66\u9762\u677f"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3133
    :goto_15
    return-void

    .line 3074
    :cond_16
    const-string v2, "EbookReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u7535\u5b50\u4e66\u9762\u677f\u5c06\u6dfb\u52a0\u5230\u7236\u5bb9\u5668: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \u5b50View\u6570: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3077
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-nez v2, :cond_cb

    .line 3078
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    .line 3079
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    const-string v4, "#333333"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 3083
    iget v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanelPercent:I

    mul-int/2addr v2, p2

    div-int/lit8 v4, v2, 0x64

    .line 3088
    iget v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-eqz v2, :cond_67

    iget v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v2, v1, :cond_68

    :cond_67
    move v0, v1

    .line 3091
    :cond_68
    instance-of v2, v3, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_ad

    .line 3092
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3097
    if-eqz v0, :cond_ab

    const/4 v0, 0x5

    :goto_74
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object v0, v2

    .line 3125
    :goto_77
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3127
    const-string v0, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7535\u5b50\u4e66\u9762\u677f\u5df2\u6dfb\u52a0\u5230\u7236\u5bb9\u5668\u7d22\u5f15: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \u603b\u5b50View\u6570: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3128
    const-string v0, "EbookReader"

    const-string v1, "View\u5c42\u7ea7: [0]\u89c6\u9891 -> [1]\u7535\u5b50\u4e66\u9762\u677f -> [2+]overlay UI"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 3097
    :cond_ab
    const/4 v0, 0x3

    goto :goto_74

    .line 3099
    :cond_ad
    instance-of v2, v3, Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_c5

    .line 3100
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3105
    if-eqz v0, :cond_bf

    .line 3106
    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_bd
    move-object v0, v2

    .line 3111
    goto :goto_77

    .line 3108
    :cond_bf
    const/16 v0, 0x9

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_bd

    .line 3113
    :cond_c5
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v4, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_77

    .line 3130
    :cond_cb
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3131
    const-string v0, "EbookReader"

    const-string v1, "\u7070\u8272\u80cc\u666f\u9762\u677f\u5df2\u663e\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15
.end method

.method private showLoadingIndicator()V
    .locals 2

    .prologue
    .line 1998
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isLoadingEbook:Z

    .line 1999
    const-string v0, "EbookReader"

    const-string v1, "\u663e\u793a\u52a0\u8f7d\u8fdb\u5ea6\u63d0\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$32;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$32;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2053
    return-void
.end method

.method private showOrganizeDeleteDialog()V
    .locals 6

    .prologue
    .line 858
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 859
    if-eqz v2, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectedFlags:[Z

    if-nez v0, :cond_d

    .line 907
    :cond_c
    :goto_c
    return-void

    .line 864
    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 865
    const/4 v0, 0x0

    move v1, v0

    :goto_14
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectedFlags:[Z

    array-length v0, v0

    if-ge v1, v0, :cond_36

    .line 866
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectedFlags:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_32

    .line 867
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ebook/model/BookshelfItem;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 865
    :cond_32
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    .line 870
    :cond_36
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 875
    new-instance v0, Lbl/agb$a;

    invoke-direct {v0, v2}, Lbl/agb$a;-><init>(Landroid/app/Activity;)V

    .line 876
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbl/agb$a;->a(I)Lbl/agb$a;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u786e\u8ba4\u5220\u9664\u9009\u4e2d\u7684 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u672c\u4e66\uff1f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lbl/agb$a;->a(Ljava/lang/String;)Lbl/agb$a;

    move-result-object v1

    const v4, 0x7f0c0079

    .line 877
    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$16;

    invoke-direct {v5, p0, v3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$16;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Ljava/util/List;)V

    invoke-virtual {v1, v4, v5}, Lbl/agb$a;->a(Ljava/lang/String;Lbl/agb$b;)Lbl/agb$a;

    move-result-object v1

    const v3, 0x7f0c0076

    .line 900
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$15;

    invoke-direct {v3, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$15;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v1, v2, v3}, Lbl/agb$a;->b(Ljava/lang/String;Lbl/agb$b;)Lbl/agb$a;

    .line 906
    invoke-virtual {v0}, Lbl/agb$a;->a()Lbl/agb;

    move-result-object v0

    invoke-virtual {v0}, Lbl/agb;->show()V

    goto/16 :goto_c
.end method

.method private showOrganizeShelfPage()V
    .locals 12

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/16 v10, 0xc

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 446
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 447
    if-eqz v1, :cond_13

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1b

    .line 448
    :cond_13
    const-string v0, "EbookReader"

    const-string v1, "Activity or ebookPanel is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :goto_1a
    return-void

    .line 452
    :cond_1b
    const-string v0, "EbookReader"

    const-string v2, "\u663e\u793a\u6574\u7406\u4e66\u67b6\u9875\u9762"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2f

    .line 456
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 460
    :cond_2f
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 463
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfItems:Ljava/util/List;

    if-nez v0, :cond_44

    .line 464
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    if-eqz v0, :cond_19f

    .line 465
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/util/BookshelfManager;->getBookshelfItems()Ljava/util/List;

    move-result-object v0

    :goto_42
    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfItems:Ljava/util/List;

    .line 467
    :cond_44
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectedFlags:[Z

    .line 470
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 471
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 472
    const-string v0, "#333333"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 473
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 480
    const-string v3, "\u6574\u7406\u4e66\u67b6"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 482
    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 483
    const/16 v3, 0x18

    const/16 v4, 0x14

    const/16 v5, 0x18

    const/16 v6, 0x14

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 484
    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 485
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 492
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 493
    const/4 v0, 0x4

    invoke-virtual {v3, v10, v0, v10, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 494
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v0, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 499
    const-string v0, "\u5168\u9009"

    invoke-direct {p0, v1, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->createOrganizeButton(Landroid/app/Activity;Ljava/lang/String;)Lcom/bilibili/tv/widget/DrawFrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 500
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectAllText:Landroid/widget/TextView;

    .line 501
    const-string v0, "\u5220\u9664"

    invoke-direct {p0, v1, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->createOrganizeButton(Landroid/app/Activity;Ljava/lang/String;)Lcom/bilibili/tv/widget/DrawFrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 502
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteText:Landroid/widget/TextView;

    .line 504
    const/high16 v0, 0x42600000    # 56.0f

    .line 506
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 504
    invoke-static {v9, v0, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 507
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v0, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 509
    const/4 v5, 0x6

    invoke-virtual {v4, v10, v7, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 510
    iget-object v5, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 511
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v0, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 513
    const/4 v0, 0x6

    invoke-virtual {v4, v0, v7, v10, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 514
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 517
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    .line 518
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, -0xbbbbbc

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 519
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 520
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 521
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 522
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    const/high16 v3, 0x20000

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    .line 523
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 524
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v7, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 528
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 531
    new-instance v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$4;

    invoke-direct {v0, p0, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$4;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/app/Activity;)V

    .line 613
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 616
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    new-instance v2, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$5;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$5;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 629
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    new-instance v2, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$6;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$6;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 646
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    new-instance v2, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$7;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$7;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 659
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    new-instance v2, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$8;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$8;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 686
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    new-instance v2, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$9;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$9;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 693
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    new-instance v2, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$10;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$10;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 718
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    new-instance v2, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$11;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$11;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 725
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    new-instance v2, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$12;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$12;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 749
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->updateOrganizeButtonsState()V

    .line 751
    iput-boolean v9, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isOrganizingShelf:Z

    .line 754
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    new-instance v2, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$13;

    invoke-direct {v2, p0, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$13;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/app/Activity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1a

    .line 465
    :cond_19f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_42
.end method

.method private shrinkDanmakuView(Landroid/app/Activity;II)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v7, -0x1

    .line 3356
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getDanmakuView()Landroid/view/View;

    move-result-object v3

    .line 3357
    if-nez v3, :cond_14

    .line 3358
    const-string v0, "EbookReader"

    const-string v1, "\u65e0\u72ec\u7acb\u5f39\u5e55\u89c6\u56fe\uff0c\u8df3\u8fc7\u5f39\u5e55\u7f29\u653e"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3449
    :goto_13
    return-void

    .line 3362
    :cond_14
    const-string v0, "EbookReader"

    const-string v4, "\u5f00\u59cb\u7f29\u5c0f\u5f39\u5e55\u89c6\u56fe"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3365
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3366
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    .line 3367
    const-string v4, "EbookReader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u539f\u59cb\u5f39\u5e55\u5e03\u5c40\u53c2\u6570\u5df2\u4fdd\u5b58: width="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", height="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3371
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isLiveMode()Z

    move-result v0

    if-eqz v0, :cond_af

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_af

    .line 3372
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3373
    iget-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v4}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getVideoContainer()Landroid/view/ViewGroup;

    move-result-object v4

    .line 3374
    if-eqz v0, :cond_af

    if-eqz v4, :cond_af

    if-eq v0, v4, :cond_af

    .line 3375
    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuParent:Landroid/view/ViewGroup;

    .line 3376
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    iput v5, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuIndex:I

    .line 3377
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3379
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v3, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3380
    const-string v4, "EbookReader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u76f4\u64ad\u5f39\u5e55\u5bb9\u5668\u5df2\u79fb\u5230\u6839\u5e03\u5c40(\u4e0e\u89c6\u9891\u5e73\u7ea7), \u539f\u7236\u5bb9\u5668="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3381
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " \u539f\u7d22\u5f15="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuIndex:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3380
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3386
    :cond_af
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3387
    if-nez v0, :cond_c0

    .line 3388
    const-string v0, "EbookReader"

    const-string v1, "Danmaku view parent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 3392
    :cond_c0
    const-string v4, "EbookReader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5f39\u5e55\u89c6\u56fe\u7236\u5bb9\u5668: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3395
    iget v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanelPercent:I

    rsub-int/lit8 v4, v4, 0x64

    mul-int/2addr v4, p2

    div-int/lit8 v4, v4, 0x64

    .line 3398
    iget v5, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-eqz v5, :cond_ef

    iget v5, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v5, v2, :cond_f0

    :cond_ef
    move v1, v2

    .line 3402
    :cond_f0
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_15e

    .line 3403
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3407
    if-eqz v1, :cond_154

    .line 3409
    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-nez v0, :cond_151

    .line 3410
    const/16 v0, 0x33

    .line 3422
    :goto_101
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object v0, v2

    .line 3444
    :goto_104
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3445
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    if-eqz v0, :cond_190

    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ltz v0, :cond_190

    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_190

    .line 3446
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    iget v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3447
    :goto_123
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

    .line 3412
    :cond_151
    const/16 v0, 0x53

    goto :goto_101

    .line 3416
    :cond_154
    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v0, v8, :cond_15b

    .line 3417
    const/16 v0, 0x35

    goto :goto_101

    .line 3419
    :cond_15b
    const/16 v0, 0x55

    goto :goto_101

    .line 3424
    :cond_15e
    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_189

    .line 3425
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3428
    if-eqz v1, :cond_17c

    .line 3429
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3434
    :goto_16e
    iget v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-eqz v1, :cond_176

    iget v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v1, v8, :cond_182

    .line 3435
    :cond_176
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_104

    .line 3431
    :cond_17c
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_16e

    .line 3437
    :cond_182
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_104

    .line 3441
    :cond_189
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v4, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto/16 :goto_104

    .line 3446
    :cond_190
    const-string v0, "\u5de6\u4e0a"

    goto :goto_123
.end method

.method private shrinkVideoView(Landroid/app/Activity;II)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    .line 2947
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isVideoTextureView()Z

    move-result v0

    if-nez v0, :cond_19

    .line 2948
    const-string v0, "EbookReader"

    const-string v1, "\u5f53\u524d\u672a\u4f7f\u7528TextureView\u6a21\u5f0f"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2949
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    const-string v1, "\u7535\u5b50\u4e66\u529f\u80fd\u9700\u8981TextureView\u6a21\u5f0f\n\u8bf7\u5148\u5728\u4e2a\u6027\u5316\u8bbe\u7f6e\u4e2d\u5207\u6362"

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showToast(Ljava/lang/String;)V

    .line 3057
    :goto_18
    return-void

    .line 2954
    :cond_19
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getVideoView()Landroid/view/View;

    move-result-object v3

    .line 2955
    if-nez v3, :cond_29

    .line 2956
    const-string v0, "EbookReader"

    const-string v1, "\u89c6\u9891\u89c6\u56fe\u4e3a\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 2961
    :cond_29
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isLiveMode()Z

    move-result v0

    if-nez v0, :cond_7c

    instance-of v0, v3, Landroid/view/TextureView;

    if-nez v0, :cond_7c

    .line 2962
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u89c6\u9891\u89c6\u56fe\u4e0d\u662fTextureView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2963
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524d\u4f7f\u7528\u7684\u662f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\u8bf7\u5207\u6362\u5230TextureView\u6a21\u5f0f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showToast(Ljava/lang/String;)V

    goto :goto_18

    .line 2967
    :cond_7c
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

    .line 2970
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2971
    if-nez v0, :cond_ad

    .line 2972
    const-string v0, "EbookReader"

    const-string v1, "\u89c6\u9891\u89c6\u56fe\u7684\u7236\u5bb9\u5668\u4e3a\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    .line 2975
    :cond_ad
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

    .line 2980
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    if-nez v2, :cond_190

    .line 2981
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 2982
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v4, v5, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    .line 2983
    const-string v2, "EbookReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u539f\u59cb\u89c6\u9891\u5e03\u5c40\u53c2\u6570\u5df2\u4fdd\u5b58: width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", height="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2989
    :goto_10a
    iget v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanelPercent:I

    rsub-int/lit8 v2, v2, 0x64

    mul-int/2addr v2, p2

    div-int/lit8 v4, v2, 0x64

    .line 2994
    iget v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-eqz v2, :cond_119

    iget v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v2, v1, :cond_199

    .line 2995
    :cond_119
    :goto_119
    invoke-direct {p0, p3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->getShrinkVideoHeight(I)I

    move-result v5

    .line 2997
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1a9

    .line 2998
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3004
    if-eqz v1, :cond_19f

    .line 3007
    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-nez v0, :cond_19c

    .line 3008
    const/16 v0, 0x33

    .line 3021
    :goto_12e
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object v0, v2

    .line 3050
    :goto_131
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3052
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    if-eqz v0, :cond_1dc

    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ltz v0, :cond_1dc

    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1dc

    .line 3053
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    iget v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3054
    :goto_150
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

    iget v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanelPercent:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    .line 2985
    :cond_190
    const-string v2, "EbookReader"

    const-string v4, "\u89c6\u9891\u5df2\u7ecf\u7f29\u5c0f\u8fc7\uff0c\u8df3\u8fc7\u4fdd\u5b58\u539f\u59cb\u53c2\u6570"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10a

    .line 2994
    :cond_199
    const/4 v1, 0x0

    goto/16 :goto_119

    .line 3010
    :cond_19c
    const/16 v0, 0x53

    goto :goto_12e

    .line 3015
    :cond_19f
    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v0, v6, :cond_1a6

    .line 3016
    const/16 v0, 0x35

    goto :goto_12e

    .line 3018
    :cond_1a6
    const/16 v0, 0x55

    goto :goto_12e

    .line 3023
    :cond_1a9
    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1d5

    .line 3024
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3030
    if-eqz v1, :cond_1c8

    .line 3031
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3036
    :goto_1b9
    iget v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-eqz v1, :cond_1c1

    iget v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v1, v6, :cond_1ce

    .line 3037
    :cond_1c1
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_131

    .line 3033
    :cond_1c8
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1b9

    .line 3039
    :cond_1ce
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_131

    .line 3044
    :cond_1d5
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto/16 :goto_131

    .line 3053
    :cond_1dc
    const-string v0, "\u5de6\u4e0a"

    goto/16 :goto_150
.end method

.method private toggleSelectAll()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 836
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectedFlags:[Z

    if-nez v0, :cond_7

    .line 854
    :goto_6
    return-void

    .line 840
    :cond_7
    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectedFlags:[Z

    array-length v4, v3

    move v0, v1

    :goto_b
    if-ge v0, v4, :cond_34

    aget-boolean v5, v3, v0

    .line 841
    if-nez v5, :cond_22

    move v0, v1

    :goto_12
    move v3, v1

    .line 847
    :goto_13
    iget-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectedFlags:[Z

    array-length v4, v4

    if-ge v3, v4, :cond_27

    .line 848
    iget-object v5, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectedFlags:[Z

    if-nez v0, :cond_25

    move v4, v2

    :goto_1d
    aput-boolean v4, v5, v3

    .line 847
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 840
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_25
    move v4, v1

    .line 848
    goto :goto_1d

    .line 850
    :cond_27
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    if-eqz v0, :cond_30

    .line 851
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 853
    :cond_30
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->updateOrganizeButtonsState()V

    goto :goto_6

    :cond_34
    move v0, v2

    goto :goto_12
.end method

.method private updateDanmakuViewWidth(I)V
    .locals 2

    .prologue
    .line 3796
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3797
    if-nez v0, :cond_9

    .line 3804
    :cond_8
    :goto_8
    return-void

    .line 3799
    :cond_9
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3800
    if-eqz v0, :cond_8

    .line 3803
    invoke-direct {p0, v0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->findAndUpdateDanmakuView(Landroid/view/ViewGroup;I)V

    goto :goto_8
.end method

.method private updateEbookPanelWidth(I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    .line 3982
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-nez v0, :cond_7

    .line 4011
    :cond_6
    :goto_6
    return-void

    .line 3984
    :cond_7
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3985
    if-eqz v0, :cond_6

    .line 3988
    iget v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-eqz v2, :cond_19

    iget v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v2, v1, :cond_54

    .line 3991
    :cond_19
    :goto_19
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_58

    .line 3992
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, p1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3994
    if-eqz v1, :cond_56

    const/4 v0, 0x5

    :goto_25
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object v0, v2

    .line 4008
    :goto_28
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4009
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

    .line 4010
    if-eqz v1, :cond_75

    const-string v0, "\u53f3\u4fa7"

    :goto_48
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4009
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 3988
    :cond_54
    const/4 v1, 0x0

    goto :goto_19

    .line 3994
    :cond_56
    const/4 v0, 0x3

    goto :goto_25

    .line 3996
    :cond_58
    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_6f

    .line 3997
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3999
    if-eqz v1, :cond_69

    .line 4000
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_28

    .line 4002
    :cond_69
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_28

    .line 4006
    :cond_6f
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_28

    .line 4010
    :cond_75
    const-string v0, "\u5de6\u4fa7"

    goto :goto_48
.end method

.method private updateOrganizeButtonsState()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 802
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectedFlags:[Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectAllText:Landroid/widget/TextView;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteText:Landroid/widget/TextView;

    if-nez v0, :cond_13

    .line 832
    :cond_12
    :goto_12
    return-void

    .line 809
    :cond_13
    iget-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectedFlags:[Z

    array-length v5, v4

    move v1, v3

    move v0, v3

    :goto_18
    if-ge v1, v5, :cond_23

    aget-boolean v6, v4, v1

    .line 810
    if-eqz v6, :cond_20

    .line 811
    add-int/lit8 v0, v0, 0x1

    .line 809
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 814
    :cond_23
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectedFlags:[Z

    array-length v1, v1

    if-ne v0, v1, :cond_83

    if-lez v0, :cond_83

    move v1, v2

    .line 817
    :goto_2b
    iget-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectAllText:Landroid/widget/TextView;

    if-eqz v1, :cond_85

    const-string v1, "\u5168\u4e0d\u9009"

    :goto_31
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 820
    if-lez v0, :cond_88

    .line 821
    :goto_36
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setFocusable(Z)V

    .line 822
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setFocusableInTouchMode(Z)V

    .line 823
    if-eqz v2, :cond_8a

    .line 824
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteText:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 825
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    const v3, 0x7f0700f0

    invoke-virtual {v1, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 830
    :goto_50
    const-string v1, "EbookReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6574\u7406\u4e66\u67b6\u6309\u94ae\u72b6\u6001: \u9009\u4e2d="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", \u5168\u9009\u6309\u94ae="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectAllText:Landroid/widget/TextView;

    .line 831
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", \u5220\u9664\u53ef\u7528="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 830
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_83
    move v1, v3

    .line 814
    goto :goto_2b

    .line 817
    :cond_85
    const-string v1, "\u5168\u9009"

    goto :goto_31

    :cond_88
    move v2, v3

    .line 820
    goto :goto_36

    .line 827
    :cond_8a
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteText:Landroid/widget/TextView;

    const-string v3, "#888888"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 828
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    const-string v3, "#26FFFFFF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundColor(I)V

    goto :goto_50
.end method

.method private updateSubtitleViewWidth(I)V
    .locals 2

    .prologue
    .line 3888
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3889
    if-nez v0, :cond_9

    .line 3896
    :cond_8
    :goto_8
    return-void

    .line 3891
    :cond_9
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3892
    if-eqz v0, :cond_8

    .line 3895
    invoke-direct {p0, v0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->findAndUpdateSubtitleView(Landroid/view/ViewGroup;I)V

    goto :goto_8
.end method

.method private updateVideoViewWidth(I)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3724
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getVideoView()Landroid/view/View;

    move-result-object v4

    .line 3725
    if-nez v4, :cond_c

    .line 3789
    :cond_b
    :goto_b
    return-void

    .line 3727
    :cond_c
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3728
    if-eqz v0, :cond_b

    .line 3732
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 3733
    if-eqz v1, :cond_d2

    .line 3734
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3735
    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3736
    iget v1, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 3738
    :goto_2e
    invoke-direct {p0, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->getShrinkVideoHeight(I)I

    move-result v5

    .line 3741
    iget v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-eqz v1, :cond_3a

    iget v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v1, v3, :cond_3b

    :cond_3a
    move v2, v3

    .line 3744
    :cond_3b
    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_9f

    .line 3745
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p1, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3749
    if-eqz v2, :cond_95

    .line 3751
    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-nez v0, :cond_92

    .line 3752
    const/16 v0, 0x33

    .line 3764
    :goto_4c
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object v0, v1

    .line 3785
    :goto_4f
    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3786
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    if-eqz v0, :cond_cf

    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ltz v0, :cond_cf

    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_cf

    .line 3787
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    iget v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3788
    :goto_6e
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

    goto/16 :goto_b

    .line 3754
    :cond_92
    const/16 v0, 0x53

    goto :goto_4c

    .line 3758
    :cond_95
    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v0, v6, :cond_9c

    .line 3759
    const/16 v0, 0x35

    goto :goto_4c

    .line 3761
    :cond_9c
    const/16 v0, 0x55

    goto :goto_4c

    .line 3766
    :cond_9f
    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_c9

    .line 3767
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3770
    if-eqz v2, :cond_bd

    .line 3771
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3776
    :goto_af
    iget v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-eqz v1, :cond_b7

    iget v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v1, v6, :cond_c3

    .line 3777
    :cond_b7
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_4f

    .line 3773
    :cond_bd
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_af

    .line 3779
    :cond_c3
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_4f

    .line 3783
    :cond_c9
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_4f

    .line 3787
    :cond_cf
    const-string v0, "\u5de6\u4e0a"

    goto :goto_6e

    :cond_d2
    move v1, v2

    goto/16 :goto_2e
.end method


# virtual methods
.method public closeCurrentBook()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 294
    const-string v0, "EbookReader"

    const-string v1, "\u5f00\u59cb\u5173\u95ed\u5f53\u524d\u4e66\u7c4d\uff0c\u56de\u5230\u7535\u5b50\u4e66\u9996\u9875"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveReadingProgressImmediately()V

    .line 300
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->destroyEbookWebView()V

    .line 303
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1f

    .line 304
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 305
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u9762\u677f\u5df2\u6e05\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_1f
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    .line 310
    iput v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterIndex:I

    .line 311
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    .line 312
    iput-boolean v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isReadingBook:Z

    .line 313
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBookFilePath:Ljava/lang/String;

    .line 315
    const-string v0, "EbookReader"

    const-string v1, "\u5f53\u524d\u4e66\u7c4d\u5df2\u5173\u95ed\uff0c\u56de\u5230\u7535\u5b50\u4e66\u9996\u9875"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showBookshelfOrFileChooser()V

    .line 319
    return-void
.end method

.method public consumeMenuOpenedByKeyDown()Z
    .locals 2

    .prologue
    .line 1361
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->menuOpenedByKeyDown:Z

    .line 1362
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->menuOpenedByKeyDown:Z

    .line 1363
    return v0
.end method

.method public getControlTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->controlTarget:Ljava/lang/String;

    return-object v0
.end method

.method public isChapterListShown()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isChapterListShown:Z

    return v0
.end method

.method public isControlEbook()Z
    .locals 2

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->controlTarget:Ljava/lang/String;

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

.method public isEbookModeActive()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    return v0
.end method

.method public isEbookReadingContent()Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isShown()Z

    move-result v0

    if-nez v0, :cond_16

    :cond_c
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isFileChooserShown:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public isFileChooserShown()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isFileChooserShown:Z

    return v0
.end method

.method public isOrganizingShelf()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isOrganizingShelf:Z

    return v0
.end method

.method public isReadingBook()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isReadingBook:Z

    return v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1394
    const-string v0, "EbookReader"

    const-string v1, "onDestroy: \u56de\u6536\u7535\u5b50\u4e66\u8d44\u6e90"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->cancelParsingTask()V

    .line 1400
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->destroyEbookWebView()V

    .line 1403
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->clearChapterCache()V

    .line 1406
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_27

    .line 1407
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1408
    if-eqz v0, :cond_25

    .line 1409
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1411
    :cond_25
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    .line 1415
    :cond_27
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressHandler:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;

    if-eqz v0, :cond_32

    .line 1416
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressHandler:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1417
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressHandler:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;

    .line 1419
    :cond_32
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressRunnable:Ljava/lang/Runnable;

    .line 1422
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    if-eqz v0, :cond_44

    .line 1423
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1424
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1425
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    .line 1427
    :cond_44
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    if-eqz v0, :cond_54

    .line 1428
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1429
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1430
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    .line 1434
    :cond_54
    iput-boolean v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    .line 1435
    iput-boolean v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isChapterListShown:Z

    .line 1436
    iput-boolean v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isFileChooserShown:Z

    .line 1437
    iput-boolean v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isOrganizingShelf:Z

    .line 1438
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectedFlags:[Z

    .line 1439
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    .line 1440
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 1441
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 1442
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectAllText:Landroid/widget/TextView;

    .line 1443
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteText:Landroid/widget/TextView;

    .line 1444
    iput-boolean v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isLoadingEbook:Z

    .line 1445
    iput-boolean v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isReadingBook:Z

    .line 1446
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    .line 1447
    iput v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterIndex:I

    .line 1448
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBookFilePath:Ljava/lang/String;

    .line 1449
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadingProgressBar:Landroid/widget/ProgressBar;

    .line 1450
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadingTextView:Landroid/widget/TextView;

    .line 1451
    const-string v0, "video"

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->controlTarget:Ljava/lang/String;

    .line 1454
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    .line 1455
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    .line 1456
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfItems:Ljava/util/List;

    .line 1459
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    if-eqz v0, :cond_89

    .line 1460
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->onEbookDestroy()V

    .line 1463
    :cond_89
    const-string v0, "EbookReader"

    const-string v1, "onDestroy: \u7535\u5b50\u4e66\u8d44\u6e90\u5df2\u56de\u6536\u5b8c\u6210"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    return-void
.end method

.method public onEbookFileSelected(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1973
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

    .line 1975
    if-eqz p1, :cond_20

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1976
    :cond_20
    const-string v0, "EbookReader"

    const-string v1, "\u6587\u4ef6\u8def\u5f84\u4e3a\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    :goto_27
    return-void

    .line 1981
    :cond_28
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isLoadingEbook:Z

    if-eqz v0, :cond_3b

    .line 1982
    const-string v0, "EbookReader"

    const-string v1, "\u6b63\u5728\u52a0\u8f7d\u7535\u5b50\u4e66\uff0c\u8bf7\u7a0d\u5019..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    const-string v1, "\u6b63\u5728\u52a0\u8f7d\uff0c\u8bf7\u7a0d\u5019..."

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showToast(Ljava/lang/String;)V

    goto :goto_27

    .line 1988
    :cond_3b
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showLoadingIndicator()V

    .line 1991
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parseAndDisplayEbook(Ljava/lang/String;)V

    goto :goto_27
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/16 v7, 0x14

    const/16 v6, 0x13

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1154
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyDown: \u6536\u5230\u6309\u952e "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", isEbookPanelShown="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", controlTarget="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->controlTarget:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", menuShown="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    .line 1155
    invoke-interface {v4}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isMenuShown()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1154
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    if-eqz v0, :cond_2ba

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->controlTarget:Ljava/lang/String;

    const-string v1, "ebook"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ba

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isMenuShown()Z

    move-result v0

    if-nez v0, :cond_2ba

    .line 1159
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyDown: \u7535\u5b50\u4e66\u6a21\u5f0f\u62e6\u622a\u6309\u952e: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isOrganizingShelf:Z

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 1163
    if-ne p1, v8, :cond_92

    .line 1164
    const-string v0, "EbookReader"

    const-string v1, "\u6574\u7406\u4e66\u67b6\u9875\u9762\u6309\u8fd4\u56de\u952e\uff0c\u9000\u51fa\u6574\u7406\u4e66\u67b6"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->hideOrganizeShelf()V

    .line 1352
    :cond_91
    :goto_91
    return v2

    .line 1168
    :cond_92
    const/16 v0, 0x52

    if-ne p1, v0, :cond_9e

    .line 1169
    const-string v0, "EbookReader"

    const-string v1, "\u6574\u7406\u4e66\u67b6\u9875\u9762\u663e\u793a\u4e2d\uff0c\u4e0d\u54cd\u5e94\u83dc\u5355\u952e"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91

    .line 1172
    :cond_9e
    const-string v0, "EbookReader"

    const-string v1, "onKeyDown: \u6574\u7406\u4e66\u67b6\u9875\u9762\uff0c\u4e0d\u62e6\u622a\u65b9\u5411\u952e\u548c\u786e\u8ba4\u952e"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 1173
    goto :goto_91

    .line 1177
    :cond_a7
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    if-eqz v0, :cond_cd

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 1178
    const-string v0, "EbookReader"

    const-string v1, "onKeyDown: \u7ae0\u8282\u5217\u8868\u663e\u793a\u4e2d"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isConfirmKey(I)Z

    move-result v0

    if-nez v0, :cond_c4

    if-eq p1, v6, :cond_c4

    if-ne p1, v7, :cond_cd

    .line 1182
    :cond_c4
    const-string v0, "EbookReader"

    const-string v1, "onKeyDown: \u7ae0\u8282\u5217\u8868\u663e\u793a\uff0c\u4e0d\u62e6\u622a\u65b9\u5411\u952e\u548c\u786e\u8ba4\u952e"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 1183
    goto :goto_91

    .line 1188
    :cond_cd
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    if-eqz v0, :cond_ec

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 1189
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isConfirmKey(I)Z

    move-result v0

    if-nez v0, :cond_e3

    if-eq p1, v6, :cond_e3

    if-ne p1, v7, :cond_ec

    .line 1192
    :cond_e3
    const-string v0, "EbookReader"

    const-string v1, "onKeyDown: \u4e66\u67b6\u5217\u8868\u663e\u793a\uff0c\u4e0d\u62e6\u622a\u65b9\u5411\u952e\u548c\u786e\u8ba4\u952e"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 1193
    goto :goto_91

    .line 1198
    :cond_ec
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isFileChooserShown:Z

    if-eqz v0, :cond_103

    .line 1199
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isConfirmKey(I)Z

    move-result v0

    if-nez v0, :cond_fa

    if-eq p1, v6, :cond_fa

    if-ne p1, v7, :cond_103

    .line 1202
    :cond_fa
    const-string v0, "EbookReader"

    const-string v1, "onKeyDown: \u6587\u4ef6\u9009\u62e9\u5668\u663e\u793a\uff0c\u4e0d\u62e6\u622a\u65b9\u5411\u952e\u548c\u786e\u8ba4\u952e"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 1203
    goto :goto_91

    .line 1209
    :cond_103
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    if-eqz v0, :cond_10f

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isShown()Z

    move-result v0

    if-nez v0, :cond_16a

    :cond_10f
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isFileChooserShown:Z

    if-nez v0, :cond_16a

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_16a

    move v0, v2

    .line 1213
    :goto_118
    const-string v4, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onKeyDown: isReadingContent="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", isFileChooserShown="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v5, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isFileChooserShown:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", ebookWebView="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1215
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_16c

    const-string v1, "not null"

    :goto_141
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1213
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    if-eqz v0, :cond_16f

    .line 1218
    const-string v0, "EbookReader"

    const-string v1, "onKeyDown: \u5728\u9605\u8bfb\u5185\u5bb9\u9875\u9762"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    if-eq p1, v6, :cond_161

    if-eq p1, v7, :cond_161

    const/16 v0, 0x15

    if-eq p1, v0, :cond_161

    const/16 v0, 0x16

    if-ne p1, v0, :cond_16f

    .line 1226
    :cond_161
    const-string v0, "EbookReader"

    const-string v1, "onKeyDown: \u65b9\u5411\u952e\u5df2\u7531onKeyUp()\u5904\u7406\uff0c\u76f4\u63a5\u8fd4\u56detrue"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_91

    :cond_16a
    move v0, v3

    .line 1209
    goto :goto_118

    .line 1215
    :cond_16c
    const-string v1, "null"

    goto :goto_141

    .line 1232
    :cond_16f
    const/16 v0, 0x52

    if-ne p1, v0, :cond_19d

    .line 1234
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isChapterListShown:Z

    if-eqz v0, :cond_180

    .line 1235
    const-string v0, "EbookReader"

    const-string v1, "\u7ae0\u8282\u5217\u8868\u663e\u793a\u4e2d\uff0c\u4e0d\u54cd\u5e94\u83dc\u5355\u952e"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_91

    .line 1239
    :cond_180
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isFileChooserShown:Z

    if-eqz v0, :cond_18d

    .line 1240
    const-string v0, "EbookReader"

    const-string v1, "\u6587\u4ef6\u9009\u62e9\u5217\u8868\u663e\u793a\u4e2d\uff0c\u4e0d\u54cd\u5e94\u83dc\u5355\u952e"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_91

    .line 1244
    :cond_18d
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u6a21\u5f0f\u4e0b\u6253\u5f00\u53f3\u4fa7\u83dc\u5355"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    iput-boolean v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->menuOpenedByKeyDown:Z

    .line 1246
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0, v2}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showMenu(Z)V

    goto/16 :goto_91

    .line 1251
    :cond_19d
    if-ne p1, v8, :cond_91

    .line 1252
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isChapterListShown:Z

    if-eqz v0, :cond_246

    .line 1254
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterNavigationStack:Ljava/util/Stack;

    if-eqz v0, :cond_23a

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterNavigationStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23a

    .line 1256
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8fd4\u56de\u4e0a\u4e00\u7ea7\u7ae0\u8282\u5217\u8868\uff0c\u6808\u5927\u5c0f: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterNavigationStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterNavigationStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterList:Ljava/util/List;

    .line 1260
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterNavigationStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e9

    .line 1262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parentChapterTitle:Ljava/lang/String;

    .line 1282
    :cond_1e2
    :goto_1e2
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->createChapterListView(Ljava/util/List;)V

    goto/16 :goto_91

    .line 1265
    :cond_1e9
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterNavigationStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1266
    if-eqz v0, :cond_1e2

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1e2

    .line 1268
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/ebook/model/Chapter;

    invoke-virtual {v1}, Lcom/bilibili/tv/ebook/model/Chapter;->getChapterIndex()I

    move-result v4

    .line 1269
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_20b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ebook/model/Chapter;

    .line 1270
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getChapterIndex()I

    move-result v1

    if-ge v1, v4, :cond_20b

    .line 1272
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->getChildChapters(Lcom/bilibili/tv/ebook/model/Chapter;)Ljava/util/List;

    move-result-object v1

    .line 1273
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_20b

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/ebook/model/Chapter;

    invoke-virtual {v1}, Lcom/bilibili/tv/ebook/model/Chapter;->getChapterIndex()I

    move-result v1

    if-ne v1, v4, :cond_20b

    .line 1274
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parentChapterTitle:Ljava/lang/String;

    goto :goto_1e2

    .line 1285
    :cond_23a
    const-string v0, "EbookReader"

    const-string v1, "\u5173\u95ed\u7ae0\u8282\u5217\u8868"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->hideChapterList()V

    goto/16 :goto_91

    .line 1289
    :cond_246
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isFileChooserShown:Z

    if-eqz v0, :cond_256

    .line 1291
    const-string v0, "EbookReader"

    const-string v1, "\u5173\u95ed\u6587\u4ef6\u9009\u62e9\u5668\uff0c\u56de\u5230\u7535\u5b50\u4e66\u9ed8\u8ba4\u754c\u9762"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->hideFileChooser()V

    goto/16 :goto_91

    .line 1294
    :cond_256
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isReadingBook:Z

    if-eqz v0, :cond_28a

    .line 1296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1297
    iget-wide v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->lastBackPressTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x7d0

    cmp-long v3, v4, v6

    if-gez v3, :cond_278

    .line 1299
    const-string v0, "EbookReader"

    const-string v1, "\u9605\u8bfb\u9875\u9762\u53cc\u51fb\u8fd4\u56de\uff0c\u5173\u95ed\u5f53\u524d\u4e66\u7c4d\uff0c\u56de\u5230\u7535\u5b50\u4e66\u9996\u9875"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->lastBackPressTime:J

    .line 1301
    invoke-virtual {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->closeCurrentBook()V

    goto/16 :goto_91

    .line 1305
    :cond_278
    iput-wide v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->lastBackPressTime:J

    .line 1306
    const-string v0, "EbookReader"

    const-string v1, "\u9605\u8bfb\u9875\u9762\u7b2c\u4e00\u6b21\u6309\u8fd4\u56de\u952e\uff0c\u663e\u793a\u63d0\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    const-string v1, "\u518d\u6309\u4e00\u6b21\u5173\u95ed\u5f53\u524d\u4e66\u7c4d"

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showToast(Ljava/lang/String;)V

    goto/16 :goto_91

    .line 1312
    :cond_28a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1313
    iget-wide v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->lastBackPressTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x7d0

    cmp-long v3, v4, v6

    if-gez v3, :cond_2a8

    .line 1315
    const-string v0, "EbookReader"

    const-string v1, "\u9996\u9875\u53cc\u51fb\u8fd4\u56de\uff0c\u9000\u51fa\u7535\u5b50\u4e66\u6a21\u5f0f"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->lastBackPressTime:J

    .line 1317
    invoke-virtual {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->openEbookReader()V

    goto/16 :goto_91

    .line 1321
    :cond_2a8
    iput-wide v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->lastBackPressTime:J

    .line 1322
    const-string v0, "EbookReader"

    const-string v1, "\u9996\u9875\u7b2c\u4e00\u6b21\u6309\u8fd4\u56de\u952e\uff0c\u663e\u793a\u63d0\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    const-string v1, "\u518d\u6309\u4e00\u6b21\u9000\u51fa\u7535\u5b50\u4e66\u6a21\u5f0f"

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showToast(Ljava/lang/String;)V

    goto/16 :goto_91

    .line 1334
    :cond_2ba
    sparse-switch p1, :sswitch_data_2fa

    .line 1348
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->confirmKeyLongPressHandled:Z

    if-eqz v0, :cond_2c6

    .line 1349
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0, v2}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showMenu(Z)V

    .line 1351
    :cond_2c6
    iput-boolean v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->confirmKeyLongPressHandled:Z

    .line 1352
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isMenuShown()Z

    move-result v2

    goto/16 :goto_91

    .line 1336
    :sswitch_2d0
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isMenuShown()Z

    move-result v0

    if-eqz v0, :cond_2df

    .line 1337
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0, v3}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showMenu(Z)V

    goto/16 :goto_91

    :cond_2df
    move v2, v3

    .line 1340
    goto/16 :goto_91

    .line 1342
    :sswitch_2e2
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isMenuShown()Z

    move-result v1

    if-nez v1, :cond_2ed

    move v3, v2

    :cond_2ed
    invoke-interface {v0, v3}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showMenu(Z)V

    goto/16 :goto_91

    .line 1346
    :sswitch_2f2
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isMenuShown()Z

    move-result v2

    goto/16 :goto_91

    .line 1334
    :sswitch_data_2fa
    .sparse-switch
        0x4 -> :sswitch_2d0
        0x13 -> :sswitch_2f2
        0x14 -> :sswitch_2f2
        0x52 -> :sswitch_2e2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1057
    const-string v2, "EbookReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyUp: \u6536\u5230\u6309\u952e "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isEbookPanelShown="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", controlTarget="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->controlTarget:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", menuShown="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    .line 1058
    invoke-interface {v4}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isMenuShown()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1057
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    iget-boolean v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    if-eqz v2, :cond_ab

    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isConfirmKey(I)Z

    move-result v2

    if-eqz v2, :cond_ab

    iget-boolean v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isOrganizingShelf:Z

    if-nez v2, :cond_ab

    .line 1063
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1064
    iget-wide v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->lastConfirmKeyPressTime:J

    sub-long v4, v2, v4

    .line 1066
    const-string v6, "EbookReader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u786e\u5b9a\u952e\u70b9\u51fb: count="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->confirmKeyClickCount:I

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

    .line 1069
    const-wide/16 v6, 0x320

    cmp-long v4, v4, v6

    if-lez v4, :cond_8a

    .line 1070
    iput v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->confirmKeyClickCount:I

    .line 1073
    :cond_8a
    iget v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->confirmKeyClickCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->confirmKeyClickCount:I

    .line 1074
    iput-wide v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->lastConfirmKeyPressTime:J

    .line 1077
    iget v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->confirmKeyClickCount:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_a4

    .line 1078
    const-string v2, "EbookReader"

    const-string v3, "\u8fde\u51fb\u4e09\u6b21\u786e\u5b9a\u952e\uff0c\u9690\u85cf\u7535\u5b50\u4e66\u533a\u57df\uff08\u4e0d\u6e05\u7a7a\u4e66\u7c4d\u6570\u636e\uff09"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    iput v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->confirmKeyClickCount:I

    .line 1080
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->hideEbookPanel()V

    .line 1146
    :goto_a3
    return v1

    .line 1085
    :cond_a4
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isMenuShown()Z

    move-result v1

    goto :goto_a3

    .line 1089
    :cond_ab
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->controlTarget:Ljava/lang/String;

    const-string v3, "ebook"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c3

    .line 1090
    const-string v0, "EbookReader"

    const-string v1, "onKeyUp: \u63a7\u5236\u76ee\u6807\u4e0d\u662f\u7535\u5b50\u4e66\uff0c\u4e0d\u5904\u7406\u6309\u952e"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isMenuShown()Z

    move-result v1

    goto :goto_a3

    .line 1095
    :cond_c3
    invoke-virtual {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookReadingContent()Z

    move-result v2

    if-eqz v2, :cond_160

    .line 1096
    const-string v2, "EbookReader"

    const-string v3, "onKeyUp: \u5728\u7535\u5b50\u4e66\u9605\u8bfb\u5185\u5bb9\u9875\u9762"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_112

    .line 1100
    const-string v2, "EbookReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyUp: WebView height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", scrollY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    .line 1101
    invoke-virtual {v4}, Landroid/webkit/WebView;->getScrollY()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", contentHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    .line 1102
    invoke-virtual {v4}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1100
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    :cond_112
    const/16 v2, 0x13

    if-ne p1, v2, :cond_129

    .line 1107
    const-string v2, "EbookReader"

    const-string v3, "onKeyUp: \u7535\u5b50\u4e66\u9605\u8bfb\u9875\u9762\uff1a\u5411\u4e0a\u6eda\u52a8"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    const/16 v3, -0xc8

    invoke-virtual {v2, v0, v3}, Landroid/webkit/WebView;->scrollBy(II)V

    .line 1109
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->scheduleSaveReadingProgress()V

    goto/16 :goto_a3

    .line 1113
    :cond_129
    const/16 v2, 0x14

    if-ne p1, v2, :cond_140

    .line 1114
    const-string v2, "EbookReader"

    const-string v3, "onKeyUp: \u7535\u5b50\u4e66\u9605\u8bfb\u9875\u9762\uff1a\u5411\u4e0b\u6eda\u52a8"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    const/16 v3, 0xc8

    invoke-virtual {v2, v0, v3}, Landroid/webkit/WebView;->scrollBy(II)V

    .line 1116
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->scheduleSaveReadingProgress()V

    goto/16 :goto_a3

    .line 1121
    :cond_140
    const/16 v2, 0x15

    if-ne p1, v2, :cond_150

    .line 1122
    const-string v0, "EbookReader"

    const-string v2, "onKeyUp: \u7535\u5b50\u4e66\u9605\u8bfb\u9875\u9762\uff1a\u5411\u4e0a\u7ffb\u9875\uff08\u5de6\u952e\uff09"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    invoke-direct {p0, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->handlePageTurn(Z)V

    goto/16 :goto_a3

    .line 1127
    :cond_150
    const/16 v2, 0x16

    if-ne p1, v2, :cond_160

    .line 1128
    const-string v2, "EbookReader"

    const-string v3, "onKeyUp: \u7535\u5b50\u4e66\u9605\u8bfb\u9875\u9762\uff1a\u5411\u4e0b\u7ffb\u9875\uff08\u53f3\u952e\uff09"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->handlePageTurn(Z)V

    goto/16 :goto_a3

    .line 1135
    :cond_160
    iget-boolean v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    if-eqz v2, :cond_187

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->controlTarget:Ljava/lang/String;

    const-string v3, "ebook"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_187

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_17a

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    .line 1136
    invoke-virtual {v2}, Landroid/webkit/WebView;->isShown()Z

    move-result v2

    if-nez v2, :cond_187

    :cond_17a
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    if-eqz v2, :cond_187

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    .line 1137
    invoke-virtual {v2}, Landroid/widget/ListView;->isShown()Z

    move-result v2

    if-eqz v2, :cond_187

    move v0, v1

    .line 1139
    :cond_187
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isConfirmKey(I)Z

    move-result v2

    if-eqz v2, :cond_19a

    iget-boolean v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->confirmKeyLongPressHandled:Z

    if-nez v2, :cond_19a

    .line 1141
    if-eqz v0, :cond_19a

    .line 1142
    iput-boolean v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->confirmKeyLongPressHandled:Z

    .line 1143
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showMenu(Z)V

    .line 1146
    :cond_19a
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isMenuShown()Z

    move-result v1

    goto/16 :goto_a3
.end method

.method public onMenuClosed()V
    .locals 2

    .prologue
    .line 1371
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->controlTarget:Ljava/lang/String;

    const-string v1, "ebook"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1372
    const-string v0, "EbookReader"

    const-string v1, "onMenuClosed: \u6062\u590d\u7126\u70b9\u5230\u7535\u5b50\u4e66\u533a\u57df"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isReadingBook:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_29

    .line 1378
    const-string v0, "EbookReader"

    const-string v1, "onMenuClosed: \u9605\u8bfb\u9875\u9762\uff0cWebView\u4fdd\u6301\u4e0d\u53ef\u805a\u7126\uff0c\u4e0d\u6062\u590d\u7126\u70b9"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    :cond_28
    :goto_28
    return-void

    .line 1379
    :cond_29
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1381
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$20;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$20;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_28
.end method

.method public onVideoSwitch()V
    .locals 6

    .prologue
    .line 1469
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    if-eqz v0, :cond_22

    .line 1470
    const-string v0, "EbookReader"

    const-string v1, "onVideoSwitch: \u7535\u5b50\u4e66\u533a\u57df\u5df2\u6253\u5f00\uff0c\u91cd\u65b0\u5e94\u7528\u89c6\u9891\u7f29\u5c0f"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1472
    if-eqz v0, :cond_22

    .line 1474
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$21;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$21;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/app/Activity;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1488
    :cond_22
    return-void
.end method

.method public openEbookFileChooser()V
    .locals 4

    .prologue
    .line 266
    const-string v0, "EbookReader"

    const-string v1, "openEbookFileChooser() called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 269
    if-nez v0, :cond_17

    .line 270
    const-string v0, "EbookReader"

    const-string v1, "Activity is null, cannot open file chooser"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :goto_16
    return-void

    .line 276
    :cond_17
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isMenuShown()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 277
    const-string v0, "EbookReader"

    const-string v1, "\u53f3\u4fa7\u83dc\u5355\u6b63\u5728\u663e\u793a\uff0c\u5148\u5173\u95ed\u83dc\u5355"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showMenu(Z)V

    .line 280
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$2;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_16

    .line 288
    :cond_3c
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showFileChooserInPanel()V

    goto :goto_16
.end method

.method public openEbookReader()V
    .locals 4

    .prologue
    .line 200
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openEbookReader() called, isEbookPanelShown="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    if-eqz v0, :cond_22

    .line 204
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->closeEbookPanel()V

    .line 226
    :goto_21
    return-void

    .line 207
    :cond_22
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ebook/util/EbookFileStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->reloadFromFile()V

    .line 209
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ensureStoragePermissionForEbook()V

    .line 211
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isMenuShown()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 212
    const-string v0, "EbookReader"

    const-string v1, "\u53f3\u4fa7\u83dc\u5355\u6b63\u5728\u663e\u793a\uff0c\u5148\u5173\u95ed\u83dc\u5355"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showMenu(Z)V

    .line 215
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$1;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_21

    .line 223
    :cond_57
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showEbookPanel()V

    goto :goto_21
.end method

.method public organizeBookshelf()V
    .locals 4

    .prologue
    .line 427
    const-string v0, "EbookReader"

    const-string v1, "\u6574\u7406\u4e66\u67b6\u83dc\u5355\u9879\u88ab\u70b9\u51fb"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isMenuShown()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 431
    const-string v0, "EbookReader"

    const-string v1, "\u53f3\u4fa7\u83dc\u5355\u6b63\u5728\u663e\u793a\uff0c\u5148\u5173\u95ed\u83dc\u5355"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showMenu(Z)V

    .line 433
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$3;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$3;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 442
    :goto_2b
    return-void

    .line 440
    :cond_2c
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showOrganizeShelfPage()V

    goto :goto_2b
.end method

.method public setEbookColorTheme(I)V
    .locals 3

    .prologue
    .line 969
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEbookColorTheme: themeIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ebook/util/EbookFileStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->saveColorThemeIndex(I)V

    .line 973
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

    .line 976
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_48

    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isReadingBook:Z

    if-eqz v0, :cond_48

    .line 977
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->applyColorThemeToWebView(I)V

    .line 979
    :cond_48
    return-void
.end method

.method public setEbookFontSize(F)V
    .locals 3

    .prologue
    .line 955
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEbookFontSize: fontSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ebook/util/EbookFileStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->saveFontSize(F)V

    .line 959
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

    .line 962
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_48

    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isReadingBook:Z

    if-eqz v0, :cond_48

    .line 963
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->applyFontSizeToWebView(F)V

    .line 965
    :cond_48
    return-void
.end method

.method public setEbookPercent(I)V
    .locals 4

    .prologue
    .line 983
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEbookPercent: percentIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_84

    .line 987
    if-ltz p1, :cond_23

    array-length v1, v0

    if-lt p1, v1, :cond_24

    .line 1010
    :cond_23
    :goto_23
    return-void

    .line 991
    :cond_24
    aget v0, v0, p1

    .line 992
    iput v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanelPercent:I

    .line 995
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ebook/util/EbookFileStore;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->saveScreenPercent(I)V

    .line 996
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

    .line 999
    iget-boolean v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    if-eqz v1, :cond_64

    .line 1000
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$18;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$18;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1009
    :cond_64
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

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

    invoke-interface {v1, v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showToast(Ljava/lang/String;)V

    goto :goto_23

    .line 986
    nop

    :array_84
    .array-data 4
        0x19
        0x1e
        0x23
        0x28
        0x2d
        0x32
    .end array-data
.end method

.method public setVideoPosition(I)V
    .locals 4

    .prologue
    .line 1014
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoPosition: positionIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    if-ltz p1, :cond_1d

    const/4 v0, 0x3

    if-le p1, v0, :cond_1e

    .line 1042
    :cond_1d
    :goto_1d
    return-void

    .line 1020
    :cond_1e
    iput p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    .line 1023
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ebook/util/EbookFileStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->saveVideoPosition(I)V

    .line 1024
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    if-eqz v0, :cond_9b

    if-ltz p1, :cond_9b

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_9b

    .line 1025
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1026
    :goto_43
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

    .line 1029
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    if-eqz v0, :cond_6c

    .line 1030
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$19;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$19;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1039
    :cond_6c
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    if-eqz v0, :cond_9e

    if-ltz p1, :cond_9e

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_9e

    .line 1040
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1041
    :goto_82
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u89c6\u9891\u4f4d\u7f6e\u5df2\u8c03\u6574\u4e3a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showToast(Ljava/lang/String;)V

    goto :goto_1d

    .line 1025
    :cond_9b
    const-string v0, "\u5de6\u4e0a"

    goto :goto_43

    .line 1040
    :cond_9e
    const-string v0, "\u5de6\u4e0a"

    goto :goto_82
.end method

.method public showChapterList()V
    .locals 4

    .prologue
    .line 927
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 928
    :cond_c
    const-string v0, "EbookReader"

    const-string v1, "\u65e0\u4e66\u7c4d\u6570\u636e\uff0c\u65e0\u6cd5\u663e\u793a\u7ae0\u8282\u5217\u8868"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    const-string v1, "\u65e0\u7ae0\u8282\u4fe1\u606f"

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showToast(Ljava/lang/String;)V

    .line 951
    :goto_1a
    return-void

    .line 933
    :cond_1b
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u663e\u793a\u7ae0\u8282\u5217\u8868\uff0c\u603b\u6570: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    invoke-virtual {v2}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isChapterListShown:Z

    .line 937
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterNavigationStack:Ljava/util/Stack;

    .line 938
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parentChapterTitle:Ljava/lang/String;

    .line 941
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->getRootChapters()Ljava/util/List;

    move-result-object v0

    .line 942
    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterList:Ljava/util/List;

    .line 945
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$17;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$17;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1a
.end method

.method public switchControlTarget(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 323
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

    .line 325
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    if-nez v0, :cond_26

    .line 326
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u9762\u677f\u672a\u663e\u793a\uff0c\u65e0\u6cd5\u5207\u6362\u63a7\u5236\u76ee\u6807"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :goto_25
    return-void

    .line 330
    :cond_26
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->controlTarget:Ljava/lang/String;

    .line 336
    const-string v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 338
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    if-eqz v0, :cond_4a

    .line 339
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 340
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 341
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearFocus()V

    .line 342
    const-string v0, "EbookReader"

    const-string v1, "\u7981\u7528\u4e66\u67b6\u5217\u8868\u6240\u6709\u4ea4\u4e92"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_4a
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    if-eqz v0, :cond_64

    .line 345
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 346
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 347
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearFocus()V

    .line 348
    const-string v0, "EbookReader"

    const-string v1, "\u7981\u7528\u6574\u7406\u4e66\u67b6\u5217\u8868\u6240\u6709\u4ea4\u4e92"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_64
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    if-eqz v0, :cond_7e

    .line 351
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 352
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 353
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearFocus()V

    .line 354
    const-string v0, "EbookReader"

    const-string v1, "\u7981\u7528\u7ae0\u8282\u5217\u8868\u6240\u6709\u4ea4\u4e92"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_7e
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_93

    .line 358
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 359
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 360
    const-string v0, "EbookReader"

    const-string v1, "WebView\u4fdd\u6301\u53ef\u7528\uff0c\u4ec5\u7981\u7528\u7126\u70b9"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_93
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_a8

    .line 363
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 364
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 365
    const-string v0, "EbookReader"

    const-string v1, "\u7981\u7528\u7535\u5b50\u4e66\u9762\u677f\u6240\u6709\u4ea4\u4e92"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_a8
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->requestVideoFocus()V

    .line 411
    :cond_ad
    :goto_ad
    const-string v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17d

    .line 412
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    const-string v1, "\u9065\u63a7\u5668\u64cd\u4f5c\u5df2\u5207\u6362\u5230\u89c6\u9891"

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showToast(Ljava/lang/String;)V

    .line 417
    :goto_bc
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

    .line 370
    :cond_d6
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_f5

    .line 371
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 372
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 373
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 374
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 375
    const-string v0, "EbookReader"

    const-string v1, "\u542f\u7528\u7535\u5b50\u4e66\u9762\u677f\u6240\u6709\u4ea4\u4e92"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_f5
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    if-eqz v0, :cond_119

    .line 378
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 379
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 380
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setClickable(Z)V

    .line 381
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 382
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 383
    const-string v0, "EbookReader"

    const-string v1, "\u542f\u7528\u4e66\u67b6\u5217\u8868\u6240\u6709\u4ea4\u4e92"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_119
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    if-eqz v0, :cond_13d

    .line 386
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 387
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 388
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setClickable(Z)V

    .line 389
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 390
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 391
    const-string v0, "EbookReader"

    const-string v1, "\u542f\u7528\u6574\u7406\u4e66\u67b6\u5217\u8868\u6240\u6709\u4ea4\u4e92"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_13d
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    if-eqz v0, :cond_161

    .line 394
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 395
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 396
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setClickable(Z)V

    .line 397
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 398
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 399
    const-string v0, "EbookReader"

    const-string v1, "\u542f\u7528\u7ae0\u8282\u5217\u8868\u6240\u6709\u4ea4\u4e92"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_161
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_ad

    .line 403
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 404
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 405
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setEnabled(Z)V

    .line 406
    const-string v0, "EbookReader"

    const-string v1, "\u542f\u7528WebView\u6240\u6709\u4ea4\u4e92"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ad

    .line 414
    :cond_17d
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    const-string v1, "\u9065\u63a7\u5668\u64cd\u4f5c\u5df2\u5207\u6362\u5230\u7535\u5b50\u4e66"

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showToast(Ljava/lang/String;)V

    goto/16 :goto_bc
.end method
