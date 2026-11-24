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

.field private chapterLoadId:I

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

.field private final imageBase64Cache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    .line 52
    iput-boolean v5, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    .line 53
    iput-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    .line 54
    iput-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    .line 55
    iput-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuParent:Landroid/view/ViewGroup;

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuIndex:I

    .line 57
    iput-boolean v5, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isFileChooserShown:Z

    .line 58
    iput-wide v6, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->lastBackPressTime:J

    .line 60
    iput-boolean v5, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isLoadingEbook:Z

    .line 61
    iput-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadingProgressBar:Landroid/widget/ProgressBar;

    .line 62
    iput-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadingTextView:Landroid/widget/TextView;

    .line 63
    iput-boolean v5, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isReadingBook:Z

    .line 66
    iput-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    .line 67
    iput v5, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterIndex:I

    .line 68
    iput-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    .line 69
    iput v5, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterLoadId:I

    .line 70
    new-instance v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$1;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$1;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;IFZ)V

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->imageBase64Cache:Ljava/util/LinkedHashMap;

    .line 77
    iput-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    .line 78
    iput-boolean v5, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isChapterListShown:Z

    .line 79
    iput-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    .line 80
    iput-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    .line 81
    iput-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    .line 82
    iput-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfItems:Ljava/util/List;

    .line 83
    iput-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBookFilePath:Ljava/lang/String;

    .line 84
    iput-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->fileListView:Landroid/widget/ListView;

    .line 87
    iput-boolean v5, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isOrganizingShelf:Z

    .line 88
    iput-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    .line 89
    iput-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectedFlags:[Z

    .line 90
    iput-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 91
    iput-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 92
    iput-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectAllText:Landroid/widget/TextView;

    .line 93
    iput-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteText:Landroid/widget/TextView;

    .line 97
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->cachedChapters:Ljava/util/LinkedList;

    .line 117
    iput-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressRunnable:Ljava/lang/Runnable;

    .line 118
    iput-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressHandler:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;

    .line 122
    iput-boolean v5, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isParsingCancelled:Z

    .line 123
    iput-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parsingThread:Ljava/lang/Thread;

    .line 126
    iput v5, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->confirmKeyClickCount:I

    .line 127
    iput-wide v6, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->lastConfirmKeyPressTime:J

    .line 131
    iput-boolean v5, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->confirmKeyLongPressHandled:Z

    .line 134
    iput-boolean v5, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->menuOpenedByKeyDown:Z

    .line 141
    const/16 v0, 0x1e

    iput v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanelPercent:I

    .line 142
    iput v5, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    .line 143
    iput-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    .line 146
    const-string v0, "video"

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->controlTarget:Ljava/lang/String;

    .line 149
    iput-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterNavigationStack:Ljava/util/Stack;

    .line 150
    iput-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterList:Ljava/util/List;

    .line 151
    iput-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parentChapterTitle:Ljava/lang/String;

    .line 157
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    .line 158
    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveReadingProgress()V

    return-void
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showEbookPanel()V

    return-void
.end method

.method static synthetic access$1000(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->toggleSelectAll()V

    return-void
.end method

.method static synthetic access$1100(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showOrganizeDeleteDialog()V

    return-void
.end method

.method static synthetic access$1200(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/ebook/util/EbookCacheManager;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->deleteBookCacheFiles(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/ebook/util/BookshelfManager;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/ebook/ui/EbookHost;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->hideOrganizeShelf()V

    return-void
.end method

.method static synthetic access$1700(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Ljava/util/List;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->createChapterListView(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->applyEbookPanelPercent()V

    return-void
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showFileChooserInPanel()V

    return-void
.end method

.method static synthetic access$2000(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->applyVideoPosition()V

    return-void
.end method

.method static synthetic access$2100(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/app/Activity;II)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->shrinkVideoView(Landroid/app/Activity;II)V

    return-void
.end method

.method static synthetic access$2300(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/app/Activity;II)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->shrinkDanmakuView(Landroid/app/Activity;II)V

    return-void
.end method

.method static synthetic access$2400(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isLoadingEbook:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showLoadingIndicator()V

    return-void
.end method

.method static synthetic access$2600(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parseAndDisplayEbook(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadFileList(Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadingProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadingProgressBar:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showOrganizeShelfPage()V

    return-void
.end method

.method static synthetic access$3000(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadingTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadingTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isParsingCancelled:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->hideLoadingIndicator()V

    return-void
.end method

.method static synthetic access$3300(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Lcom/bilibili/tv/ebook/model/Book;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->restoreReadingProgress(Lcom/bilibili/tv/ebook/model/Book;)V

    return-void
.end method

.method static synthetic access$3402(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parsingThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->scheduleSaveReadingProgress()V

    return-void
.end method

.method static synthetic access$3600(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Z)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->handlePageTurn(Z)V

    return-void
.end method

.method static synthetic access$3700(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterLoadId:I

    return v0
.end method

.method static synthetic access$3800(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;F)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->applyFontSizeToWebView(F)V

    return-void
.end method

.method static synthetic access$3900(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->applyColorThemeToWebView(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Ljava/util/List;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parentChapterTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parentChapterTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Lcom/bilibili/tv/ebook/model/Chapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->getChildChapters(Lcom/bilibili/tv/ebook/model/Chapter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4400(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterIndex:I

    return v0
.end method

.method static synthetic access$4500(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Ljava/util/Stack;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterNavigationStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/ebook/model/Book;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Lcom/bilibili/tv/ebook/model/Book;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;I)V

    return-void
.end method

.method static synthetic access$4800(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->hideChapterList()V

    return-void
.end method

.method static synthetic access$4902(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)[Z
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectedFlags:[Z

    return-object v0
.end method

.method static synthetic access$600(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->updateOrganizeButtonsState()V

    return-void
.end method

.method static synthetic access$800(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/widget/DrawFrameLayout;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/widget/DrawFrameLayout;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    return-object v0
.end method

.method private addToBookshelf(Lcom/bilibili/tv/ebook/model/Book;Lcom/bilibili/tv/ebook/model/ReadingProgress;)V
    .locals 2

    .prologue
    .line 4546
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    if-nez v0, :cond_7

    .line 4552
    :cond_6
    :goto_6
    return-void

    .line 4551
    :cond_7
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBookFilePath:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Lcom/bilibili/tv/ebook/util/BookshelfManager;->addToBookshelf(Lcom/bilibili/tv/ebook/model/Book;Lcom/bilibili/tv/ebook/model/ReadingProgress;Ljava/lang/String;)V

    goto :goto_6
.end method

.method private applyColorThemeToWebView(I)V
    .locals 8

    .prologue
    const v7, 0xffffff

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2565
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_b

    .line 2597
    :goto_a
    return-void

    .line 2570
    :cond_b
    invoke-static {}, Lcom/bilibili/tv/ebook/model/ReaderTheme;->getBuiltInThemes()[Lcom/bilibili/tv/ebook/model/ReaderTheme;

    move-result-object v0

    aget-object v0, v0, p1

    .line 2571
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

    .line 2572
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/ReaderTheme;->getBackgroundColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \u6587\u5b57\u8272: #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2573
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/ReaderTheme;->getTextColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2571
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2576
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

    .line 2577
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

    .line 2580
    const-string v2, "document.body.style.backgroundColor=\'%s\';document.body.style.color=\'%s\';"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2585
    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-direct {p0, v3, v2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->evaluateJsCompat(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2588
    const-string v2, "var elements = document.querySelectorAll(\'*\');for (var i = 0; i < elements.length; i++) {  elements[i].style.backgroundColor=\'%s\';  elements[i].style.color=\'%s\';}"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2596
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-direct {p0, v1, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->evaluateJsCompat(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto/16 :goto_a
.end method

.method private applyEbookPanelPercent()V
    .locals 5

    .prologue
    .line 3760
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3761
    if-eqz v0, :cond_c

    iget-boolean v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    if-nez v1, :cond_d

    .line 3788
    :cond_c
    :goto_c
    return-void

    .line 3765
    :cond_d
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3766
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3767
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3768
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 3771
    iget v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanelPercent:I

    mul-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x64

    .line 3772
    sub-int/2addr v0, v1

    .line 3774
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

    .line 3778
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->updateVideoViewWidth(I)V

    .line 3781
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->updateDanmakuViewWidth(I)V

    .line 3784
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->updateSubtitleViewWidth(I)V

    .line 3787
    invoke-direct {p0, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->updateEbookPanelWidth(I)V

    goto :goto_c
.end method

.method private applyFontSizeToWebView(F)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2541
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_7

    .line 2559
    :goto_6
    return-void

    .line 2545
    :cond_7
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

    .line 2548
    const-string v0, "document.body.style.fontSize=\'%dpx\';"

    new-array v1, v4, [Ljava/lang/Object;

    float-to-int v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2549
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-direct {p0, v1, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->evaluateJsCompat(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2552
    const-string v0, "var elements = document.querySelectorAll(\'p, div, span\');for (var i = 0; i < elements.length; i++) {  elements[i].style.fontSize = \'%dpx\';}"

    new-array v1, v4, [Ljava/lang/Object;

    float-to-int v2, p1

    .line 2556
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 2552
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2558
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-direct {p0, v1, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->evaluateJsCompat(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_6
.end method

.method private applyVideoPosition()V
    .locals 6

    .prologue
    .line 3725
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3726
    if-eqz v0, :cond_c

    iget-boolean v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    if-nez v1, :cond_d

    .line 3754
    :cond_c
    :goto_c
    return-void

    .line 3730
    :cond_d
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3731
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3732
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3733
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 3735
    iget v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanelPercent:I

    mul-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x64

    .line 3736
    sub-int v2, v0, v1

    .line 3738
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    if-eqz v0, :cond_7d

    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ltz v0, :cond_7d

    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7d

    .line 3739
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    iget v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3740
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

    .line 3744
    invoke-direct {p0, v2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->updateVideoViewWidth(I)V

    .line 3747
    invoke-direct {p0, v2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->updateDanmakuViewWidth(I)V

    .line 3750
    invoke-direct {p0, v2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->updateSubtitleViewWidth(I)V

    .line 3753
    invoke-direct {p0, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->updateEbookPanelWidth(I)V

    goto :goto_c

    .line 3739
    :cond_7d
    const-string v0, "\u5de6\u4e0a"

    goto :goto_44
.end method

.method private cancelParsingTask()V
    .locals 1

    .prologue
    .line 2218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isParsingCancelled:Z

    .line 2219
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parsingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_f

    .line 2220
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parsingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 2221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parsingThread:Ljava/lang/Thread;

    .line 2223
    :cond_f
    return-void
.end method

.method private cleanChapterHtml(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 4216
    :try_start_0
    invoke-static {p1}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v3

    .line 4217
    const-string v0, "head"

    invoke-virtual {v3, v0}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->remove()Lorg/jsoup/select/Elements;

    .line 4218
    const-string v0, "script"

    invoke-virtual {v3, v0}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->remove()Lorg/jsoup/select/Elements;

    .line 4221
    const/4 v0, 0x0

    .line 4222
    if-eqz p2, :cond_bb

    const-string v1, "file://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 4223
    const-string v0, "file://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 4227
    :goto_2c
    const-string v0, "img"

    invoke-virtual {v3, v0}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_36
    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 4228
    const-string v1, "src"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4229
    if-eqz v5, :cond_36

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    const-string v1, "data:"

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 4232
    const-string v1, "http://"

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_68

    const-string v1, "https://"

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 4233
    :cond_68
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->remove()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6b} :catch_6c

    goto :goto_36

    .line 4253
    :catch_6c
    move-exception v0

    .line 4254
    const-string v1, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6e05\u7406\u7ae0\u8282HTML\u5931\u8d25\uff0c\u4f7f\u7528\u539f\u59cb\u5185\u5bb9: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4255
    :goto_89
    return-object p1

    .line 4236
    :cond_8a
    :try_start_8a
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4237
    invoke-virtual {v1}, Ljava/io/File;->isAbsolute()Z

    move-result v6

    if-nez v6, :cond_9c

    if-eqz v2, :cond_9c

    .line 4238
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_9c} :catch_6c

    .line 4241
    :cond_9c
    :try_start_9c
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_9f} :catch_b9

    move-result-object v1

    .line 4245
    :goto_a0
    :try_start_a0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadImageAsBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4246
    if-eqz v1, :cond_b0

    .line 4247
    const-string v5, "src"

    invoke-virtual {v0, v5, v1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto :goto_36

    .line 4249
    :cond_b0
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->remove()V

    goto :goto_36

    .line 4252
    :cond_b4
    invoke-virtual {v3}, Lorg/jsoup/nodes/Document;->outerHtml()Ljava/lang/String;
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_b7} :catch_6c

    move-result-object p1

    goto :goto_89

    .line 4242
    :catch_b9
    move-exception v5

    goto :goto_a0

    :cond_bb
    move-object v2, v0

    goto/16 :goto_2c
.end method

.method private clearChapterCache()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4200
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

    .line 4201
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ebook/model/Chapter;->setHtmlContent(Ljava/lang/String;)V

    .line 4202
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ebook/model/Chapter;->setPlainTextContent(Ljava/lang/String;)V

    goto :goto_7

    .line 4204
    :cond_1a
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->cachedChapters:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 4205
    const-string v0, "EbookReader"

    const-string v1, "\u6240\u6709\u7ae0\u8282\u7f13\u5b58\u5df2\u6e05\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4206
    return-void
.end method

.method private closeEbookPanel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3286
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3287
    if-nez v0, :cond_12

    .line 3288
    const-string v0, "EbookReader"

    const-string v1, "Activity is null, cannot close ebook panel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3377
    :goto_11
    return-void

    .line 3292
    :cond_12
    const-string v1, "EbookReader"

    const-string v2, "\u5f00\u59cb\u5173\u95ed\u7535\u5b50\u4e66\u9762\u677f"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3295
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->cancelParsingTask()V

    .line 3298
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveReadingProgressImmediately()V

    .line 3301
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_31

    .line 3302
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3303
    const-string v1, "EbookReader"

    const-string v2, "\u7070\u8272\u80cc\u666f\u9762\u677f\u5df2\u9690\u85cf"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3307
    :cond_31
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->restoreVideoView(Landroid/app/Activity;)V

    .line 3310
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->destroyEbookWebView()V

    .line 3314
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_53

    .line 3315
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3316
    if-eqz v0, :cond_51

    .line 3317
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3318
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u9762\u677f\u5df2\u4ece\u7236\u5bb9\u5668\u79fb\u9664"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3320
    :cond_51
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    .line 3324
    :cond_53
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->clearChapterCache()V

    .line 3327
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressHandler:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;

    if-eqz v0, :cond_61

    .line 3328
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressHandler:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3329
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressHandler:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;

    .line 3331
    :cond_61
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_67

    .line 3332
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressRunnable:Ljava/lang/Runnable;

    .line 3336
    :cond_67
    iput-boolean v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    .line 3337
    iput-boolean v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isChapterListShown:Z

    .line 3338
    iput-boolean v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isFileChooserShown:Z

    .line 3339
    iput-boolean v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isOrganizingShelf:Z

    .line 3340
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectedFlags:[Z

    .line 3341
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    .line 3342
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 3343
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 3344
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectAllText:Landroid/widget/TextView;

    .line 3345
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteText:Landroid/widget/TextView;

    .line 3346
    iput-boolean v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isLoadingEbook:Z

    .line 3347
    iput-boolean v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isReadingBook:Z

    .line 3348
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    .line 3349
    iput v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterIndex:I

    .line 3350
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    .line 3353
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    if-eqz v0, :cond_95

    .line 3354
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 3355
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3356
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    .line 3358
    :cond_95
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    if-eqz v0, :cond_a5

    .line 3359
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 3360
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3361
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    .line 3364
    :cond_a5
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadingProgressBar:Landroid/widget/ProgressBar;

    .line 3365
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadingTextView:Landroid/widget/TextView;

    .line 3366
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->lastBackPressTime:J

    .line 3367
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBookFilePath:Ljava/lang/String;

    .line 3368
    const-string v0, "video"

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->controlTarget:Ljava/lang/String;

    .line 3372
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    .line 3373
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    .line 3374
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfItems:Ljava/util/List;

    .line 3376
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
    .line 2652
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2653
    if-nez v0, :cond_10

    .line 2654
    const-string v0, "EbookReader"

    const-string v1, "Activity is null, cannot create chapter list"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2875
    :goto_f
    return-void

    .line 2657
    :cond_10
    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$38;

    invoke-direct {v1, p0, v0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$38;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/app/Activity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_f
.end method

.method private createOrganizeButton(Landroid/app/Activity;Ljava/lang/String;)Lcom/bilibili/tv/widget/DrawFrameLayout;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    .line 782
    new-instance v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-direct {v0, p1}, Lcom/bilibili/tv/widget/DrawFrameLayout;-><init>(Landroid/content/Context;)V

    .line 783
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setFocusable(Z)V

    .line 784
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setFocusableInTouchMode(Z)V

    .line 785
    const v1, 0x7f0700f0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 786
    const v1, 0x7f0700e8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 787
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpEnabled(Z)V

    .line 789
    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$15;

    invoke-direct {v1, p0, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$15;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Lcom/bilibili/tv/widget/DrawFrameLayout;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 800
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 801
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 802
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 803
    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 804
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 805
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 809
    return-object v0
.end method

.method private deleteBookCacheFiles(Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 4561
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4562
    if-eqz p1, :cond_a

    if-nez v0, :cond_12

    .line 4563
    :cond_a
    const-string v0, "EbookReader"

    const-string v1, "bookId\u6216Context\u4e3a\u7a7a\uff0c\u65e0\u6cd5\u5220\u9664\u7f13\u5b58"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4635
    :goto_11
    return-void

    .line 4568
    :cond_12
    :try_start_12
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    .line 4569
    const/4 v2, 0x0

    .line 4570
    const-wide/16 v0, 0x0

    .line 4573
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

    .line 4574
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 4575
    invoke-direct {p0, v4}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->getDirectorySize(Ljava/io/File;)J

    move-result-wide v6

    .line 4576
    invoke-direct {p0, v4}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->deleteDirectory(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 4577
    const/4 v2, 0x1

    .line 4578
    add-long/2addr v0, v6

    .line 4579
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

    .line 4580
    invoke-direct {p0, v6, v7}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->formatFileSize(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4579
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4585
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

    .line 4586
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_c2

    .line 4587
    invoke-direct {p0, v4}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->getDirectorySize(Ljava/io/File;)J

    move-result-wide v6

    .line 4588
    invoke-direct {p0, v4}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->deleteDirectory(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_c2

    .line 4589
    add-int/lit8 v2, v2, 0x1

    .line 4590
    add-long/2addr v0, v6

    .line 4591
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

    .line 4592
    invoke-direct {p0, v6, v7}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->formatFileSize(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4591
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4597
    :cond_c2
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "txt_cache/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4598
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_117

    .line 4599
    invoke-direct {p0, v4}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->getDirectorySize(Ljava/io/File;)J

    move-result-wide v6

    .line 4600
    invoke-direct {p0, v4}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->deleteDirectory(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_117

    .line 4601
    add-int/lit8 v2, v2, 0x1

    .line 4602
    add-long/2addr v0, v6

    .line 4603
    const-string v5, "EbookReader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u5df2\u5220\u9664TXT\u7f13\u5b58\u76ee\u5f55: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", \u5927\u5c0f: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4604
    invoke-direct {p0, v6, v7}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->formatFileSize(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4603
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4609
    :cond_117
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

    .line 4610
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_164

    .line 4611
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 4612
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_164

    .line 4613
    add-int/lit8 v2, v2, 0x1

    .line 4614
    add-long/2addr v0, v6

    .line 4615
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

    .line 4620
    :cond_164
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

    .line 4621
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1b1

    .line 4622
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 4623
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1b1

    .line 4624
    add-int/lit8 v2, v2, 0x1

    .line 4625
    add-long/2addr v0, v6

    .line 4626
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

    .line 4630
    :cond_1b1
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
    :try_end_1d7
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1d7} :catch_1d9

    goto/16 :goto_11

    .line 4632
    :catch_1d9
    move-exception v0

    .line 4633
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

    .line 4641
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_a

    .line 4654
    :cond_9
    :goto_9
    return v0

    .line 4645
    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 4646
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 4647
    if-eqz v1, :cond_21

    .line 4648
    array-length v2, v1

    :goto_17
    if-ge v0, v2, :cond_21

    aget-object v3, v1, v0

    .line 4649
    invoke-direct {p0, v3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->deleteDirectory(Ljava/io/File;)Z

    .line 4648
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 4654
    :cond_21
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_9
.end method

.method private destroyEbookWebView()V
    .locals 4

    .prologue
    .line 3380
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_61

    .line 3381
    const-string v0, "EbookReader"

    const-string v1, "\u5f00\u59cb\u9500\u6bc1WebView\uff0c\u91ca\u653e\u5185\u5b58"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3384
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1d

    .line 3385
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 3386
    const-string v0, "EbookReader"

    const-string v1, "WebView\u5df2\u4ece\u7236\u5bb9\u5668\u79fb\u9664"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3391
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 3392
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 3393
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 3394
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 3395
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 3396
    const-string v0, "EbookReader"

    const-string v1, "WebView\u7f13\u5b58\u548c\u5386\u53f2\u5df2\u6e05\u9664"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_40} :catch_62

    .line 3403
    :goto_40
    :try_start_40
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 3404
    const-string v0, "EbookReader"

    const-string v1, "WebView\u5df2\u9500\u6bc1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4c} :catch_80

    .line 3409
    :goto_4c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    .line 3410
    const-string v0, "EbookReader"

    const-string v1, "WebView\u5f15\u7528\u5df2\u6e05\u9664"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3412
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->imageBase64Cache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 3414
    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterLoadId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterLoadId:I

    .line 3416
    :cond_61
    return-void

    .line 3397
    :catch_62
    move-exception v0

    .line 3398
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

    .line 3405
    :catch_80
    move-exception v0

    .line 3406
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
    .line 2231
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;I)V

    .line 2232
    return-void
.end method

.method private displayBookContent(Lcom/bilibili/tv/ebook/model/Book;I)V
    .locals 2

    .prologue
    .line 2238
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;IZI)V

    .line 2239
    return-void
.end method

.method private displayBookContent(Lcom/bilibili/tv/ebook/model/Book;IZ)V
    .locals 1

    .prologue
    .line 2248
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;IZI)V

    .line 2249
    return-void
.end method

.method private displayBookContent(Lcom/bilibili/tv/ebook/model/Book;IZI)V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const v10, 0xffffff

    const/4 v3, -0x1

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 2259
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2260
    :cond_19
    const-string v0, "EbookReader"

    const-string v1, "\u4e66\u7c4d\u65e0\u7ae0\u8282\u5185\u5bb9"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2261
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    const-string v1, "\u4e66\u7c4d\u5185\u5bb9\u4e3a\u7a7a"

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showToast(Ljava/lang/String;)V

    .line 2520
    :goto_27
    return-void

    .line 2266
    :cond_28
    iput-boolean v9, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isFileChooserShown:Z

    .line 2267
    iput-boolean v9, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isChapterListShown:Z

    .line 2268
    const-string v0, "EbookReader"

    const-string v1, "\u91cd\u7f6e\u72b6\u6001\u6807\u5fd7: isFileChooserShown=false, isChapterListShown=false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2271
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    .line 2272
    iput p2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterIndex:I

    .line 2273
    iput-boolean v7, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isReadingBook:Z

    .line 2275
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

    .line 2276
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

    .line 2275
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2280
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_8d

    .line 2281
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2282
    const-string v0, "EbookReader"

    const-string v1, "\u5df2\u6e05\u7a7a\u7535\u5b50\u4e66\u9762\u677f"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    :cond_8d
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2289
    if-nez v0, :cond_9d

    .line 2290
    const-string v0, "EbookReader"

    const-string v1, "Activity is null, cannot display book content"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 2293
    :cond_9d
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    if-nez v1, :cond_28d

    .line 2295
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    .line 2296
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2300
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2303
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 2304
    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 2305
    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 2306
    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 2307
    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 2310
    invoke-virtual {v0, v9}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 2311
    sget-object v1, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 2314
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v9}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 2315
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v9}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 2319
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$36;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$36;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2370
    :goto_e0
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v9, v9}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 2373
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_f0

    .line 2374
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2378
    :cond_f0
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bilibili/tv/ebook/model/Chapter;

    .line 2379
    invoke-virtual {v2}, Lcom/bilibili/tv/ebook/model/Chapter;->getHtmlContent()Ljava/lang/String;

    move-result-object v0

    .line 2383
    if-eqz v0, :cond_106

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12a

    .line 2384
    :cond_106
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7ae0\u8282\u5185\u5bb9\u4e3a\u7a7a\uff0c\u4eceHTML\u6587\u4ef6\u5ef6\u8fdf\u52a0\u8f7d: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/bilibili/tv/ebook/model/Chapter;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getExtractionPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadChapterContentFromFile(Lcom/bilibili/tv/ebook/model/Chapter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2388
    :cond_12a
    if-eqz v0, :cond_132

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14f

    .line 2389
    :cond_132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<html><body><h1>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/bilibili/tv/ebook/model/Chapter;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</h1><p>\u7ae0\u8282\u5185\u5bb9\u4e3a\u7a7a</p></body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2396
    :cond_14f
    invoke-virtual {v2}, Lcom/bilibili/tv/ebook/model/Chapter;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->cleanChapterHtml(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2399
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ebook/util/EbookFileStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getFontSize()F

    move-result v3

    .line 2400
    const-string v0, "EbookReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8bfb\u53d6\u4fdd\u5b58\u7684\u5b57\u4f53\u5927\u5c0f: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2403
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ebook/util/EbookFileStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getColorThemeIndex()I

    move-result v0

    .line 2404
    invoke-static {}, Lcom/bilibili/tv/ebook/model/ReaderTheme;->getBuiltInThemes()[Lcom/bilibili/tv/ebook/model/ReaderTheme;

    move-result-object v4

    .line 2405
    if-ltz v0, :cond_194

    array-length v5, v4

    if-lt v0, v5, :cond_195

    :cond_194
    move v0, v9

    .line 2408
    :cond_195
    aget-object v6, v4, v0

    .line 2409
    const-string v0, "#%06X"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/bilibili/tv/ebook/model/ReaderTheme;->getBackgroundColor()I

    move-result v5

    and-int/2addr v5, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2410
    const-string v4, "#%06X"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/bilibili/tv/ebook/model/ReaderTheme;->getTextColor()I

    move-result v7

    and-int/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2411
    const-string v5, "EbookReader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u52a0\u8f7d\u7ae0\u8282\u65f6\u5185\u5d4c\u914d\u8272\u65b9\u6848: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/bilibili/tv/ebook/model/ReaderTheme;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ", bg="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ", text="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2414
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<html><head><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"><style>body { font-size: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    float-to-int v3, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "px; line-height: 1.6; padding: 20px; background-color: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "; color: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "; } img { max-width: 100%; height: auto; } h1, h2, h3, h4, h5, h6 { font-size: inherit; }</style></head><body>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2428
    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterLoadId:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterLoadId:I

    .line 2429
    iget-object v7, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    new-instance v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37;

    move-object v1, p0

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Lcom/bilibili/tv/ebook/model/Chapter;IZI)V

    invoke-virtual {v7, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 2500
    invoke-virtual {v2}, Lcom/bilibili/tv/ebook/model/Chapter;->getBaseUrl()Ljava/lang/String;

    move-result-object v4

    .line 2501
    if-eqz v4, :cond_244

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_296

    .line 2504
    :cond_244
    const-string v0, "EbookReader"

    const-string v1, "\u7ae0\u8282\u6ca1\u6709baseUrl\uff0c\u4f7f\u7528null\u4f5c\u4e3abaseUrl"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v8

    .line 2510
    :goto_24c
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Lcom/bilibili/tv/ebook/model/ReaderTheme;->getBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 2512
    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    const-string v6, "text/html"

    const-string v7, "UTF-8"

    move-object v5, v10

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2516
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v9}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 2517
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v9}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 2519
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebView\u5df2\u663e\u793a\u7ae0\u8282: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/bilibili/tv/ebook/model/Chapter;->getTitle()Ljava/lang/String;

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

    .line 2366
    :cond_28d
    const-string v0, "EbookReader"

    const-string v1, "\u590d\u7528\u5df2\u5b58\u5728\u7684WebView\uff0c\u8df3\u8fc7\u9500\u6bc1\u91cd\u5efa"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e0

    .line 2506
    :cond_296
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4f7f\u7528baseUrl: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24c
.end method

.method private dumpViewHierarchy(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 3209
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3210
    if-nez v0, :cond_15

    .line 3211
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3213
    :cond_15
    const-string v1, "EbookReader"

    const-string v2, "===== View\u5c42\u7ea7\u7ed3\u6784 ====="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3214
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->dumpViewHierarchyRecursive(Landroid/view/ViewGroup;I)V

    .line 3215
    const-string v0, "EbookReader"

    const-string v1, "===== View\u5c42\u7ea7\u7ed3\u6784\u7ed3\u675f ====="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3216
    return-void
.end method

.method private dumpViewHierarchyRecursive(Landroid/view/ViewGroup;I)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 3222
    const-string v2, ""

    move v1, v0

    move-object v3, v2

    .line 3223
    :goto_5
    if-ge v1, p2, :cond_1e

    .line 3224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3223
    add-int/lit8 v1, v1, 0x1

    move-object v3, v2

    goto :goto_5

    :cond_1e
    move v2, v0

    .line 3226
    :goto_1f
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_b6

    .line 3227
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3228
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 3229
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

    .line 3230
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

    .line 3232
    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_ab

    .line 3233
    check-cast v1, Landroid/view/ViewGroup;

    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, v1, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->dumpViewHierarchyRecursive(Landroid/view/ViewGroup;I)V

    .line 3226
    :cond_ab
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1f

    .line 3229
    :cond_b0
    const-string v0, ""

    goto :goto_4e

    .line 3230
    :cond_b3
    const-string v0, ""

    goto :goto_95

    .line 3236
    :cond_b6
    return-void
.end method

.method private ensureStoragePermissionForEbook()V
    .locals 5

    .prologue
    const/16 v4, 0x17

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 247
    :try_start_4
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v2}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 250
    if-eqz v2, :cond_18

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_18

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 252
    invoke-virtual {v2, v3}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_19

    :cond_18
    move v0, v1

    .line 254
    :cond_19
    if-nez v0, :cond_41

    if-eqz v2, :cond_41

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_41

    .line 255
    const-string v0, "EbookReader"

    const-string v1, "\u5b58\u50a8\u6743\u9650\u672a\u6388\u4e88\uff0c\u81ea\u52a8\u7533\u8bf7\u8bfb\u5199\u6743\u9650"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
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

    .line 263
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    const-string v1, "\u8bf7\u5141\u8bb8\u5b58\u50a8\u6743\u9650\uff0c\u4e66\u67b6\u548c\u9605\u8bfb\u8fdb\u5ea6\u5c06\u4fdd\u5b58\u5230 Download \u76ee\u5f55"

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showToast(Ljava/lang/String;)V

    .line 265
    :cond_41
    invoke-static {}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->isExternalWritable()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 267
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_5b

    .line 268
    const-string v0, "EbookReader"

    const-string v1, "\u672a\u6388\u4e88\u6240\u6709\u6587\u4ef6\u8bbf\u95ee\u6743\u9650\uff0c\u4e66\u67b6/\u8fdb\u5ea6\u5c06\u4fdd\u5b58\u5728\u5e94\u7528\u5185\u90e8\uff08\u65e0\u6cd5\u8de8APP\u5171\u4eab\uff09"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    const-string v1, "\u8bf7\u6388\u4e88\u201c\u6240\u6709\u6587\u4ef6\u8bbf\u95ee\u201d\u6743\u9650\uff08\u7cfb\u7edf\u8bbe\u7f6e\u2192\u5e94\u7528\u2192\u6743\u9650\uff09\uff0c\u4e66\u67b6\u548c\u8fdb\u5ea6\u624d\u80fd\u8de8APP\u5171\u4eab"

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showToast(Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_5b} :catch_5c

    .line 275
    :cond_5b
    :goto_5b
    return-void

    .line 272
    :catch_5c
    move-exception v0

    .line 273
    const-string v1, "EbookReader"

    const-string v2, "\u7533\u8bf7\u5b58\u50a8\u6743\u9650\u5f02\u5e38"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5b
.end method

.method private evaluateJsCompat(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2527
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 2535
    :cond_4
    :goto_4
    return-void

    .line 2530
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_10

    .line 2531
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_4

    .line 2533
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private findAndUpdateDanmakuView(Landroid/view/ViewGroup;I)V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v8, -0x1

    .line 3880
    move v1, v2

    :goto_5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_b5

    .line 3881
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3884
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    .line 3885
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v6

    .line 3887
    const-string v3, ""

    .line 3888
    if-lez v6, :cond_27

    .line 3890
    :try_start_1f
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;
    :try_end_26
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1f .. :try_end_26} :catch_b6

    move-result-object v3

    .line 3896
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

    .line 3897
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_47

    const-string v5, "\u5f39\u5e55"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 3899
    :cond_47
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 3900
    if-eqz v3, :cond_6c

    .line 3902
    iget v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-eqz v3, :cond_55

    iget v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v3, v4, :cond_79

    :cond_55
    move v3, v4

    .line 3904
    :goto_56
    instance-of v5, p1, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_88

    .line 3905
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, p2, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3909
    if-eqz v3, :cond_7e

    .line 3911
    iget v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-nez v3, :cond_7b

    .line 3912
    const/16 v3, 0x33

    .line 3924
    :goto_67
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3925
    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3947
    :cond_6c
    :goto_6c
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_75

    .line 3948
    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->findAndUpdateDanmakuView(Landroid/view/ViewGroup;I)V

    .line 3880
    :cond_75
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_79
    move v3, v2

    .line 3902
    goto :goto_56

    .line 3914
    :cond_7b
    const/16 v3, 0x53

    goto :goto_67

    .line 3918
    :cond_7e
    iget v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v3, v9, :cond_85

    .line 3919
    const/16 v3, 0x35

    goto :goto_67

    .line 3921
    :cond_85
    const/16 v3, 0x55

    goto :goto_67

    .line 3926
    :cond_88
    instance-of v5, p1, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_6c

    .line 3927
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, p2, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3930
    if-eqz v3, :cond_a9

    .line 3931
    const/16 v3, 0x9

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3936
    :goto_98
    iget v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-eqz v3, :cond_a0

    iget v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v3, v9, :cond_af

    .line 3937
    :cond_a0
    const/16 v3, 0xa

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3941
    :goto_a5
    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6c

    .line 3933
    :cond_a9
    const/16 v3, 0xb

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_98

    .line 3939
    :cond_af
    const/16 v3, 0xc

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_a5

    .line 3951
    :cond_b5
    return-void

    .line 3891
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

    .line 3972
    move v1, v2

    :goto_5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_d6

    .line 3973
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3976
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    .line 3977
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 3978
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v7

    .line 3980
    const-string v3, ""

    .line 3981
    if-lez v7, :cond_2f

    .line 3983
    :try_start_27
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;
    :try_end_2e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_27 .. :try_end_2e} :catch_d7

    move-result-object v3

    .line 3989
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

    .line 3990
    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_67

    const-string v5, "subtitle"

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_67

    const-string v5, "subtitle"

    .line 3991
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_67

    const-string v5, "\u5b57\u5e55"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_67

    const-string v5, "exo_subtitles"

    .line 3992
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 3994
    :cond_67
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 3995
    if-eqz v3, :cond_8c

    .line 3997
    iget v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-eqz v3, :cond_75

    iget v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v3, v4, :cond_9a

    :cond_75
    move v3, v4

    .line 3999
    :goto_76
    instance-of v5, p1, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_a9

    .line 4000
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, p2, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 4004
    if-eqz v3, :cond_9f

    .line 4006
    iget v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-nez v3, :cond_9c

    .line 4007
    const/16 v3, 0x33

    .line 4019
    :goto_87
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4020
    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4042
    :cond_8c
    :goto_8c
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_95

    .line 4043
    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->findAndUpdateSubtitleView(Landroid/view/ViewGroup;I)V

    .line 3972
    :cond_95
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_5

    :cond_9a
    move v3, v2

    .line 3997
    goto :goto_76

    .line 4009
    :cond_9c
    const/16 v3, 0x53

    goto :goto_87

    .line 4013
    :cond_9f
    iget v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v3, v10, :cond_a6

    .line 4014
    const/16 v3, 0x35

    goto :goto_87

    .line 4016
    :cond_a6
    const/16 v3, 0x55

    goto :goto_87

    .line 4021
    :cond_a9
    instance-of v5, p1, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_8c

    .line 4022
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, p2, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4025
    if-eqz v3, :cond_ca

    .line 4026
    const/16 v3, 0x9

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 4031
    :goto_b9
    iget v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-eqz v3, :cond_c1

    iget v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v3, v10, :cond_d0

    .line 4032
    :cond_c1
    const/16 v3, 0xa

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 4036
    :goto_c6
    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8c

    .line 4028
    :cond_ca
    const/16 v3, 0xb

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_b9

    .line 4034
    :cond_d0
    const/16 v3, 0xc

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_c6

    .line 4046
    :cond_d6
    return-void

    .line 3984
    :catch_d7
    move-exception v7

    goto/16 :goto_2f
.end method

.method private findFileRecursively(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 4379
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_8

    .line 4402
    :cond_7
    :goto_7
    return-object v0

    .line 4384
    :cond_8
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4385
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_15

    move-object v0, v1

    .line 4386
    goto :goto_7

    .line 4390
    :cond_15
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 4391
    if-eqz v3, :cond_7

    .line 4392
    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1e
    if-ge v2, v4, :cond_7

    aget-object v1, v3, v2

    .line 4393
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_30

    .line 4394
    invoke-direct {p0, v1, p2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->findFileRecursively(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 4395
    if-eqz v1, :cond_30

    move-object v0, v1

    .line 4396
    goto :goto_7

    .line 4392
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

    .line 4684
    const-wide/16 v0, 0x400

    cmp-long v0, p1, v0

    if-gez v0, :cond_1c

    .line 4685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4691
    :goto_1b
    return-object v0

    .line 4686
    :cond_1c
    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-gez v0, :cond_36

    .line 4687
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

    .line 4688
    :cond_36
    const-wide/32 v0, 0x40000000

    cmp-long v0, p1, v0

    if-gez v0, :cond_50

    .line 4689
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

    .line 4691
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
    .line 2622
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2623
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v3

    .line 2625
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Chapter;->getChapterIndex()I

    move-result v0

    .line 2626
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Chapter;->getDepth()I

    move-result v4

    .line 2629
    add-int/lit8 v0, v0, 0x1

    move v1, v0

    :goto_16
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_33

    .line 2630
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ebook/model/Chapter;

    .line 2631
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getDepth()I

    move-result v5

    .line 2634
    add-int/lit8 v6, v4, 0x1

    if-ne v5, v6, :cond_31

    .line 2635
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2629
    :cond_2d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_16

    .line 2638
    :cond_31
    if-gt v5, v4, :cond_2d

    .line 2643
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

    .line 2644
    return-object v2
.end method

.method private getDirectorySize(Ljava/io/File;)J
    .locals 8

    .prologue
    const-wide/16 v0, 0x0

    .line 4661
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_b

    .line 4677
    :cond_a
    :goto_a
    return-wide v0

    .line 4666
    :cond_b
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 4667
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 4668
    if-eqz v3, :cond_a

    .line 4669
    array-length v4, v3

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v4, :cond_a

    aget-object v5, v3, v2

    .line 4670
    invoke-direct {p0, v5}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->getDirectorySize(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 4669
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 4674
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
    .line 2605
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2606
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v0

    .line 2608
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

    .line 2609
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getDepth()I

    move-result v3

    if-nez v3, :cond_f

    .line 2610
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 2614
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

    .line 2615
    return-object v1
.end method

.method private getShrinkVideoHeight(I)I
    .locals 1

    .prologue
    .line 3004
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isLiveMode()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3005
    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanelPercent:I

    rsub-int/lit8 v0, v0, 0x64

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x64

    .line 3007
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

    .line 4090
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    if-nez v2, :cond_10

    .line 4091
    const-string v0, "EbookReader"

    const-string v1, "handlePageTurn: WebView\u4e3a\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4168
    :goto_f
    return-void

    .line 4095
    :cond_10
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getHeight()I

    move-result v3

    .line 4096
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollY()I

    move-result v4

    .line 4097
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v5

    .line 4099
    if-eqz p1, :cond_b6

    .line 4101
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

    .line 4104
    if-nez v4, :cond_69

    .line 4106
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    if-eqz v1, :cond_61

    iget v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterIndex:I

    if-lez v1, :cond_61

    .line 4107
    const-string v1, "EbookReader"

    const-string v2, "handlePageTurn: \u5230\u8fbe\u7ae0\u8282\u9876\u90e8\uff0c\u8df3\u8f6c\u5230\u4e0a\u4e00\u7ae0\u8282\u7684\u5e95\u90e8"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4108
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    iget v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterIndex:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v1, v2, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;IZ)V

    goto :goto_f

    .line 4111
    :cond_61
    const-string v0, "EbookReader"

    const-string v1, "handlePageTurn: \u5df2\u7ecf\u5728\u7b2c\u4e00\u7ae0\uff0c\u65e0\u6cd5\u5411\u524d\u7ffb\u9875"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 4117
    :cond_69
    if-lez v3, :cond_a7

    .line 4118
    int-to-double v4, v3

    mul-double/2addr v4, v8

    double-to-int v0, v4

    .line 4119
    sub-int v2, v3, v0

    .line 4120
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

    .line 4121
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->scrollBy(II)V

    .line 4127
    :goto_a2
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->scheduleSaveReadingProgress()V

    goto/16 :goto_f

    .line 4124
    :cond_a7
    const-string v0, "EbookReader"

    const-string v2, "handlePageTurn: WebView height\u4e3a0\uff0c\u4f7f\u7528\u9ed8\u8ba4\u503c800"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4125
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    const/16 v2, -0x320

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->scrollBy(II)V

    goto :goto_a2

    .line 4130
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

    .line 4134
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v2}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 4135
    if-eqz v2, :cond_129

    .line 4136
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 4138
    :goto_f4
    int-to-float v5, v5

    mul-float/2addr v2, v5

    float-to-int v2, v2

    .line 4141
    int-to-double v6, v3

    mul-double/2addr v6, v8

    double-to-int v5, v6

    .line 4142
    sub-int v6, v3, v5

    .line 4143
    add-int/2addr v4, v3

    add-int/lit8 v2, v2, -0xa

    if-lt v4, v2, :cond_12c

    .line 4145
    :goto_101
    if-eqz v0, :cond_137

    .line 4147
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

    .line 4148
    const-string v0, "EbookReader"

    const-string v2, "handlePageTurn: \u5230\u8fbe\u7ae0\u8282\u5e95\u90e8\uff0c\u8df3\u8f6c\u5230\u4e0b\u4e00\u7ae0\u8282\u7684\u9876\u90e8"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4149
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    iget v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v0, v2, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;IZ)V

    goto/16 :goto_f

    .line 4137
    :cond_129
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_f4

    :cond_12c
    move v0, v1

    .line 4143
    goto :goto_101

    .line 4152
    :cond_12e
    const-string v0, "EbookReader"

    const-string v1, "handlePageTurn: \u5df2\u7ecf\u5728\u6700\u540e\u4e00\u7ae0\uff0c\u65e0\u6cd5\u5411\u540e\u7ffb\u9875"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 4158
    :cond_137
    if-lez v3, :cond_16f

    .line 4159
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

    .line 4160
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, v6}, Landroid/webkit/WebView;->scrollBy(II)V

    .line 4166
    :goto_16a
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->scheduleSaveReadingProgress()V

    goto/16 :goto_f

    .line 4163
    :cond_16f
    const-string v0, "EbookReader"

    const-string v2, "handlePageTurn: WebView height\u4e3a0\uff0c\u4f7f\u7528\u9ed8\u8ba4\u503c800"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4164
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    const/16 v2, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->scrollBy(II)V

    goto :goto_16a
.end method

.method private hideChapterList()V
    .locals 2

    .prologue
    .line 2881
    const-string v0, "EbookReader"

    const-string v1, "\u9690\u85cf\u7ae0\u8282\u5217\u8868"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2882
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isChapterListShown:Z

    .line 2884
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2885
    if-nez v0, :cond_1a

    .line 2886
    const-string v0, "EbookReader"

    const-string v1, "Activity is null, cannot hide chapter list"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2910
    :goto_19
    return-void

    .line 2889
    :cond_1a
    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$39;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$39;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_19
.end method

.method private hideEbookPanel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3243
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3244
    if-nez v0, :cond_12

    .line 3245
    const-string v0, "EbookReader"

    const-string v1, "Activity is null, cannot hide ebook panel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3280
    :goto_11
    return-void

    .line 3249
    :cond_12
    const-string v1, "EbookReader"

    const-string v2, "\u5f00\u59cb\u9690\u85cf\u7535\u5b50\u4e66\u9762\u677f\uff08\u4e0d\u6e05\u7a7a\u4e66\u7c4d\u6570\u636e\uff09"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3252
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveReadingProgressImmediately()V

    .line 3255
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2e

    .line 3256
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3257
    const-string v1, "EbookReader"

    const-string v2, "\u7070\u8272\u80cc\u666f\u9762\u677f\u5df2\u9690\u85cf"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3261
    :cond_2e
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->restoreVideoView(Landroid/app/Activity;)V

    .line 3264
    iput-boolean v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    .line 3265
    const-string v0, "video"

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->controlTarget:Ljava/lang/String;

    .line 3268
    iput-boolean v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isOrganizingShelf:Z

    .line 3269
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectedFlags:[Z

    .line 3270
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    .line 3271
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 3272
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 3273
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectAllText:Landroid/widget/TextView;

    .line 3274
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteText:Landroid/widget/TextView;

    .line 3279
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u9762\u677f\u5df2\u9690\u85cf\uff0c\u4e66\u7c4d\u6570\u636e\u4fdd\u7559\uff0ccontrolTarget\u91cd\u7f6e\u4e3avideo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method private hideFileChooser()V
    .locals 2

    .prologue
    .line 1805
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1806
    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-nez v0, :cond_14

    .line 1807
    :cond_c
    const-string v0, "EbookReader"

    const-string v1, "\u65e0\u6cd5\u9690\u85cf\u6587\u4ef6\u9009\u62e9\u5668\uff1aactivity\u6216panel\u4e3anull"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    :goto_13
    return-void

    .line 1811
    :cond_14
    const-string v0, "EbookReader"

    const-string v1, "\u5f00\u59cb\u9690\u85cf\u6587\u4ef6\u9009\u62e9\u5668"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1815
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isFileChooserShown:Z

    .line 1817
    const-string v0, "EbookReader"

    const-string v1, "\u6587\u4ef6\u9009\u62e9\u5668\u5df2\u9690\u85cf\uff0c\u56de\u5230\u7535\u5b50\u4e66\u9996\u9875"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showBookshelfOrFileChooser()V

    goto :goto_13
.end method

.method private hideLoadingIndicator()V
    .locals 2

    .prologue
    .line 2077
    const-string v0, "EbookReader"

    const-string v1, "\u9690\u85cf\u52a0\u8f7d\u8fdb\u5ea6\u63d0\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isLoadingEbook:Z

    .line 2080
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$34;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$34;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2092
    return-void
.end method

.method private hideOrganizeShelf()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 923
    const-string v0, "EbookReader"

    const-string v1, "\u9000\u51fa\u6574\u7406\u4e66\u67b6\u9875\u9762\uff0c\u56de\u5230\u4e66\u67b6"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isOrganizingShelf:Z

    .line 925
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectedFlags:[Z

    .line 926
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    .line 927
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 928
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 929
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectAllText:Landroid/widget/TextView;

    .line 930
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteText:Landroid/widget/TextView;

    .line 931
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_20

    .line 932
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 934
    :cond_20
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showBookshelfOrFileChooser()V

    .line 935
    return-void
.end method

.method private isConfirmKey(I)Z
    .locals 1

    .prologue
    .line 1059
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
    .line 1982
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1983
    const-string v1, ".mobi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_38

    const-string v1, ".azw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_38

    const-string v1, ".azw3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_38

    const-string v1, ".prc"

    .line 1984
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_38

    const-string v1, ".epub"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_38

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    :cond_38
    const/4 v0, 0x1

    .line 1983
    :goto_39
    return v0

    .line 1984
    :cond_3a
    const/4 v0, 0x0

    goto :goto_39
.end method

.method private loadChapterContentFromFile(Lcom/bilibili/tv/ebook/model/Chapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 4318
    :try_start_1
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Chapter;->getHtmlFilePath()Ljava/lang/String;

    move-result-object v2

    .line 4319
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Chapter;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    .line 4321
    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 4322
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

    .line 4371
    :goto_2e
    return-object v0

    .line 4327
    :cond_2f
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4333
    if-eqz v0, :cond_10c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10c

    .line 4334
    const-string v4, "file://"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "/$"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4335
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4339
    :goto_5a
    if-eqz v0, :cond_62

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_67

    .line 4340
    :cond_62
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4344
    :cond_67
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_7a

    .line 4345
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->findFileRecursively(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 4348
    :cond_7a
    if-eqz v0, :cond_e7

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_e7

    .line 4350
    invoke-static {v0}, Lcom/bilibili/tv/ebook/util/EbookUtils;->detectFileEncoding(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/jsoup/Jsoup;->parse(Ljava/io/File;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v2

    .line 4351
    invoke-virtual {v2}, Lorg/jsoup/nodes/Document;->outerHtml()Ljava/lang/String;

    move-result-object v0

    .line 4354
    invoke-virtual {p1, v0}, Lcom/bilibili/tv/ebook/model/Chapter;->setHtmlContent(Ljava/lang/String;)V

    .line 4355
    invoke-virtual {v2}, Lorg/jsoup/nodes/Document;->text()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/bilibili/tv/ebook/model/Chapter;->setPlainTextContent(Ljava/lang/String;)V

    .line 4358
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->manageChapterCache(Lcom/bilibili/tv/ebook/model/Chapter;)V

    .line 4360
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

    .line 4361
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4360
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c5} :catch_c7

    goto/16 :goto_2e

    .line 4369
    :catch_c7
    move-exception v0

    .line 4370
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

    .line 4371
    goto/16 :goto_2e

    .line 4364
    :cond_e7
    :try_start_e7
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
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_109} :catch_c7

    move-object v0, v1

    .line 4366
    goto/16 :goto_2e

    :cond_10c
    move-object v0, v1

    goto/16 :goto_5a
.end method

.method private loadFileList(Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V
    .locals 10

    .prologue
    .line 1827
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1828
    if-nez v1, :cond_9

    .line 1976
    :goto_8
    return-void

    .line 1830
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

    .line 1833
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1836
    invoke-virtual {p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 1837
    if-nez v2, :cond_41

    .line 1838
    const-string v0, "EbookReader"

    const-string v1, "listFiles()\u8fd4\u56denull\uff0c\u53ef\u80fd\u6ca1\u6709\u6743\u9650\u6216\u76ee\u5f55\u4e0d\u5b58\u5728"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    const-string v1, "\u65e0\u6cd5\u8bbf\u95ee\u76ee\u5f55"

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showToast(Ljava/lang/String;)V

    goto :goto_8

    .line 1843
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

    .line 1846
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1847
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1849
    array-length v5, v2

    const/4 v0, 0x0

    :goto_6c
    if-ge v0, v5, :cond_be

    aget-object v6, v2, v0

    .line 1850
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_98

    .line 1851
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1852
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

    .line 1849
    :cond_95
    :goto_95
    add-int/lit8 v0, v0, 0x1

    goto :goto_6c

    .line 1853
    :cond_98
    invoke-direct {p0, v6}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookFile(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_95

    .line 1854
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1855
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

    .line 1859
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

    .line 1862
    new-instance v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$27;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$27;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1868
    new-instance v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$28;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$28;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1876
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1877
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1880
    invoke-virtual {p3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_117

    .line 1881
    const-string v0, "\u2191 \u4e0a\u7ea7"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1882
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1886
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

    .line 1887
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

    .line 1888
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11b

    .line 1892
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

    .line 1893
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

    .line 1894
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_149

    .line 1897
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

    .line 1900
    new-instance v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$29;

    const v3, 0x1090003

    invoke-direct {v0, p0, v1, v3, v5}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$29;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/content/Context;ILjava/util/List;)V

    .line 1930
    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$30;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$30;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1947
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1950
    new-instance v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$31;

    invoke-direct {v0, p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$31;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/widget/ListView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1959
    new-instance v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$32;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$32;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Ljava/util/List;Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_8
.end method

.method private loadImageAsBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 4264
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->imageBase64Cache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4265
    if-eqz v0, :cond_c

    .line 4308
    :goto_b
    return-object v0

    .line 4269
    :cond_c
    :try_start_c
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4270
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_1f

    :cond_1d
    move-object v0, v1

    .line 4271
    goto :goto_b

    .line 4273
    :cond_1f
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4274
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_29} :catch_3e

    .line 4276
    const/16 v0, 0x2000

    :try_start_2b
    new-array v0, v0, [B

    .line 4278
    :goto_2d
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_67

    .line 4279
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_38
    .catchall {:try_start_2b .. :try_end_38} :catchall_39

    goto :goto_2d

    .line 4282
    :catchall_39
    move-exception v0

    :try_start_3a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 4283
    throw v0
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3e} :catch_3e

    .line 4306
    :catch_3e
    move-exception v0

    .line 4307
    const-string v2, "EbookReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u56fe\u7247\u8f6cbase64\u5931\u8d25: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 4308
    goto :goto_b

    .line 4282
    :cond_67
    :try_start_67
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 4284
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 4285
    array-length v0, v2

    if-nez v0, :cond_73

    move-object v0, v1

    .line 4286
    goto :goto_b

    .line 4289
    :cond_73
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 4290
    const-string v0, "image/png"

    .line 4291
    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_89

    const-string v4, ".jpeg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b4

    .line 4292
    :cond_89
    const-string v0, "image/jpeg"

    .line 4302
    :cond_8b
    :goto_8b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";base64,"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x2

    .line 4303
    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4304
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->imageBase64Cache:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    .line 4293
    :cond_b4
    const-string v4, ".gif"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_bf

    .line 4294
    const-string v0, "image/gif"

    goto :goto_8b

    .line 4295
    :cond_bf
    const-string v4, ".webp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ca

    .line 4296
    const-string v0, "image/webp"

    goto :goto_8b

    .line 4297
    :cond_ca
    const-string v4, ".bmp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d5

    .line 4298
    const-string v0, "image/bmp"

    goto :goto_8b

    .line 4299
    :cond_d5
    const-string v4, ".svg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 4300
    const-string v0, "image/svg+xml"
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_df} :catch_3e

    goto :goto_8b
.end method

.method private manageChapterCache(Lcom/bilibili/tv/ebook/model/Chapter;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4176
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->cachedChapters:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4177
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->cachedChapters:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 4178
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->cachedChapters:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 4194
    :cond_13
    :goto_13
    return-void

    .line 4183
    :cond_14
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->cachedChapters:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 4184
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

    .line 4185
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4184
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4188
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->cachedChapters:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_13

    .line 4189
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->cachedChapters:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ebook/model/Chapter;

    .line 4190
    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ebook/model/Chapter;->setHtmlContent(Ljava/lang/String;)V

    .line 4191
    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ebook/model/Chapter;->setPlainTextContent(Ljava/lang/String;)V

    .line 4192
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
    .line 2098
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

    .line 2101
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->cancelParsingTask()V

    .line 2104
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBookFilePath:Ljava/lang/String;

    .line 2105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isParsingCancelled:Z

    .line 2106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isLoadingEbook:Z

    .line 2109
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showLoadingIndicator()V

    .line 2112
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 2114
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$35;

    invoke-direct {v2, p0, v0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$35;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parsingThread:Ljava/lang/Thread;

    .line 2211
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parsingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2212
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

    .line 3619
    if-nez p1, :cond_11

    .line 3620
    const-string v0, "EbookReader"

    const-string v1, "Activity is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3717
    :goto_10
    return-void

    .line 3625
    :cond_11
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getDanmakuView()Landroid/view/View;

    move-result-object v1

    .line 3626
    if-nez v1, :cond_21

    .line 3627
    const-string v0, "EbookReader"

    const-string v1, "\u65e0\u72ec\u7acb\u5f39\u5e55\u89c6\u56fe\uff0c\u8df3\u8fc7\u5f39\u5e55\u6062\u590d"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 3631
    :cond_21
    const-string v0, "EbookReader"

    const-string v2, "\u5f00\u59cb\u6062\u590d\u5f39\u5e55\u89c6\u56fe\u5e03\u5c40"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3634
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isLiveMode()Z

    move-result v0

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_56

    .line 3635
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3636
    if-eqz v0, :cond_3f

    .line 3637
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3639
    :cond_3f
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuParent:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuIndex:I

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3640
    iput-object v8, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuParent:Landroid/view/ViewGroup;

    .line 3641
    iput v5, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuIndex:I

    .line 3642
    const-string v0, "EbookReader"

    const-string v2, "\u76f4\u64ad\u5f39\u5e55\u5bb9\u5668\u5df2\u79fb\u56de\u539f\u7236\u5bb9\u5668"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3646
    :cond_56
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3647
    if-nez v0, :cond_66

    .line 3648
    const-string v0, "EbookReader"

    const-string v1, "Danmaku view parent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 3652
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

    .line 3657
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v2, :cond_e3

    .line 3659
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_b2

    .line 3660
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3664
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3666
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528FrameLayout.LayoutParams\u6062\u590d\u5f39\u5e55\u5168\u5c4f"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3683
    :goto_a4
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3684
    const-string v0, "EbookReader"

    const-string v1, "\u5f39\u5e55\u5df2\u6062\u590d\u539f\u59cb\u5e03\u5c40"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3716
    :goto_ae
    iput-object v8, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    goto/16 :goto_10

    .line 3667
    :cond_b2
    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_ce

    .line 3668
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3672
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3674
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528RelativeLayout.LayoutParams\u6062\u590d\u5f39\u5e55\u5168\u5c4f"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a4

    .line 3676
    :cond_ce
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3680
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528ViewGroup.LayoutParams\u6062\u590d\u5f39\u5e55\u5168\u5c4f"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a4

    .line 3687
    :cond_e3
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_100

    .line 3688
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3692
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3694
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528FrameLayout.LayoutParams\u6062\u590d\u5f39\u5e55\u5168\u5c4f(\u9ed8\u8ba4)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3711
    :goto_f5
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3712
    const-string v0, "EbookReader"

    const-string v1, "\u5f39\u5e55\u5df2\u6062\u590d\u5168\u5c4f\u663e\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ae

    .line 3695
    :cond_100
    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_114

    .line 3696
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3700
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3702
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528RelativeLayout.LayoutParams\u6062\u590d\u5f39\u5e55\u5168\u5c4f(\u9ed8\u8ba4)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f5

    .line 3704
    :cond_114
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3708
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528ViewGroup.LayoutParams\u6062\u590d\u5f39\u5e55\u5168\u5c4f(\u9ed8\u8ba4)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f5
.end method

.method private restoreReadingProgress(Lcom/bilibili/tv/ebook/model/Book;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 4505
    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    if-nez v0, :cond_8

    .line 4540
    :cond_7
    :goto_7
    return-void

    .line 4510
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ebook/util/EbookCacheManager;->getReadingProgress(Ljava/lang/String;)Lcom/bilibili/tv/ebook/model/ReadingProgress;

    move-result-object v0

    .line 4512
    if-eqz v0, :cond_96

    .line 4513
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->getCurrentChapterIndex()I

    move-result v1

    .line 4514
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->getCurrentPage()I

    move-result v2

    .line 4517
    if-ltz v1, :cond_79

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_79

    .line 4518
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_79

    .line 4519
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

    .line 4521
    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v3, v2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;IZI)V

    .line 4528
    :goto_54
    invoke-direct {p0, p1, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->addToBookshelf(Lcom/bilibili/tv/ebook/model/Book;Lcom/bilibili/tv/ebook/model/ReadingProgress;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_57} :catch_58

    goto :goto_7

    .line 4536
    :catch_58
    move-exception v0

    .line 4537
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

    .line 4538
    invoke-direct {p0, p1, v6}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;I)V

    goto :goto_7

    .line 4523
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

    .line 4524
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;I)V

    goto :goto_54

    .line 4530
    :cond_96
    const-string v0, "EbookReader"

    const-string v1, "\u65e0\u4fdd\u5b58\u7684\u9605\u8bfb\u8fdb\u5ea6\uff0c\u4ece\u7b2c\u4e00\u7ae0\u5f00\u59cb"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4531
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;I)V

    .line 4534
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

    .line 3526
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isVideoTextureView()Z

    move-result v0

    if-nez v0, :cond_15

    .line 3527
    const-string v0, "EbookReader"

    const-string v1, "\u5f53\u524d\u672a\u4f7f\u7528TextureView\u6a21\u5f0f,\u65e0\u9700\u6062\u590d"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3613
    :goto_14
    return-void

    .line 3532
    :cond_15
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getVideoView()Landroid/view/View;

    move-result-object v1

    .line 3533
    if-nez v1, :cond_25

    .line 3534
    const-string v0, "EbookReader"

    const-string v1, "\u89c6\u9891\u89c6\u56fe\u4e3a\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 3539
    :cond_25
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3540
    if-nez v0, :cond_35

    .line 3541
    const-string v0, "EbookReader"

    const-string v1, "Video view parent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 3545
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

    .line 3550
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v2, :cond_b5

    .line 3552
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_84

    .line 3553
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3557
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3559
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528FrameLayout.LayoutParams\u6062\u590d\u5168\u5c4f"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3576
    :goto_73
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3577
    const-string v0, "EbookReader"

    const-string v1, "\u89c6\u9891\u5df2\u6062\u590d\u539f\u59cb\u5e03\u5c40"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3609
    :goto_7d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    .line 3612
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->restoreDanmakuView(Landroid/app/Activity;)V

    goto :goto_14

    .line 3560
    :cond_84
    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_a0

    .line 3561
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3565
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3567
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528RelativeLayout.LayoutParams\u6062\u590d\u5168\u5c4f"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    .line 3569
    :cond_a0
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3573
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528ViewGroup.LayoutParams\u6062\u590d\u5168\u5c4f"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    .line 3580
    :cond_b5
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_d2

    .line 3581
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3585
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3587
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528FrameLayout.LayoutParams\u6062\u590d\u5168\u5c4f(\u9ed8\u8ba4)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3604
    :goto_c7
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3605
    const-string v0, "EbookReader"

    const-string v1, "\u89c6\u9891\u5df2\u6062\u590d\u5168\u5c4f\u663e\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7d

    .line 3588
    :cond_d2
    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_e6

    .line 3589
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3593
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3595
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528RelativeLayout.LayoutParams\u6062\u590d\u5168\u5c4f(\u9ed8\u8ba4)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c7

    .line 3597
    :cond_e6
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3601
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528ViewGroup.LayoutParams\u6062\u590d\u5168\u5c4f(\u9ed8\u8ba4)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c7
.end method

.method private saveReadingProgress()V
    .locals 6

    .prologue
    .line 4409
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_d

    .line 4456
    :cond_c
    :goto_c
    return-void

    .line 4415
    :cond_d
    :try_start_d
    new-instance v1, Lcom/bilibili/tv/ebook/model/ReadingProgress;

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Book;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bilibili/tv/ebook/model/ReadingProgress;-><init>(Ljava/lang/String;)V

    .line 4417
    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterIndex:I

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->setCurrentChapterIndex(I)V

    .line 4418
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->setLastReadTimestamp(J)V

    .line 4421
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

    .line 4422
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

    .line 4423
    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->setProgressPercentage(F)V

    .line 4427
    :cond_4d
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    .line 4428
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getHeight()I

    move-result v2

    .line 4429
    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int v2, v0, v2

    .line 4430
    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->setCurrentPage(I)V

    .line 4433
    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->setFontSize(I)V

    .line 4436
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ebook/util/EbookCacheManager;->saveReadingProgress(Lcom/bilibili/tv/ebook/model/ReadingProgress;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_6d} :catch_c5

    .line 4441
    :try_start_6d
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBookFilePath:Ljava/lang/String;

    if-eqz v0, :cond_8b

    .line 4442
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    if-nez v0, :cond_82

    .line 4443
    new-instance v0, Lcom/bilibili/tv/ebook/util/BookshelfManager;

    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v3}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/bilibili/tv/ebook/util/BookshelfManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    .line 4445
    :cond_82
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    iget-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBookFilePath:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v4}, Lcom/bilibili/tv/ebook/util/BookshelfManager;->addToBookshelf(Lcom/bilibili/tv/ebook/model/Book;Lcom/bilibili/tv/ebook/model/ReadingProgress;Ljava/lang/String;)V
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_8b} :catch_e4
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_8b} :catch_c5

    .line 4451
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

    .line 4452
    invoke-virtual {v1}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->getProgressPercentage()F

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4451
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_c3} :catch_c5

    goto/16 :goto_c

    .line 4453
    :catch_c5
    move-exception v0

    .line 4454
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

    .line 4447
    :catch_e4
    move-exception v0

    .line 4448
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
    .line 4492
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressHandler:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_12

    .line 4493
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressHandler:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4494
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressRunnable:Ljava/lang/Runnable;

    .line 4498
    :cond_12
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveReadingProgress()V

    .line 4499
    return-void
.end method

.method private scheduleSaveReadingProgress()V
    .locals 4

    .prologue
    .line 4464
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressHandler:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;

    if-nez v0, :cond_b

    .line 4465
    new-instance v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressHandler:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;

    .line 4469
    :cond_b
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_16

    .line 4470
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressHandler:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4474
    :cond_16
    new-instance v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$40;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$40;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressRunnable:Ljava/lang/Runnable;

    .line 4483
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressHandler:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4484
    const-string v0, "EbookReader"

    const-string v1, "\u5df2\u8c03\u5ea6\u9632\u6296\u4fdd\u5b58\u9605\u8bfb\u8fdb\u5ea6\uff0c\u5ef6\u8fdf 300ms"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4485
    return-void
.end method

.method private showBookshelfInPanel()V
    .locals 7

    .prologue
    const/16 v4, 0x18

    const/16 v3, 0x14

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 1533
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1534
    if-eqz v2, :cond_12

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1a

    .line 1535
    :cond_12
    const-string v0, "EbookReader"

    const-string v1, "Activity or ebookPanel is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    :goto_19
    return-void

    .line 1539
    :cond_1a
    const-string v0, "EbookReader"

    const-string v1, "\u5728\u7535\u5b50\u4e66\u9762\u677f\u4e2d\u663e\u793a\u4e66\u67b6\u5217\u8868"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_35

    .line 1543
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u9762\u677f\u672a\u663e\u793a\uff0c\u8bbe\u7f6e\u4e3aVISIBLE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1548
    :cond_35
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1551
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1552
    const-string v1, "\u6211\u7684\u4e66\u67b6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1553
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1554
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1555
    invoke-virtual {v0, v4, v3, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1556
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1557
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v6, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1563
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    .line 1564
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1565
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 1568
    new-instance v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$23;

    const v3, 0x1090003

    const v4, 0x1020014

    iget-object v5, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfItems:Ljava/util/List;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$23;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/content/Context;IILjava/util/List;)V

    .line 1618
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    new-instance v2, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1635
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1638
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1647
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$26;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$26;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1683
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1687
    const/16 v1, 0x46

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1688
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1689
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1691
    const-string v0, "EbookReader"

    const-string v1, "\u4e66\u67b6\u5217\u8868\u5df2\u6dfb\u52a0\u5230\u7535\u5b50\u4e66\u9762\u677f"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19
.end method

.method private showBookshelfOrFileChooser()V
    .locals 3

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ebook/util/EbookFileStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->reloadFromFile()V

    .line 1518
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    if-nez v0, :cond_1e

    .line 1519
    new-instance v0, Lcom/bilibili/tv/ebook/util/BookshelfManager;

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ebook/util/BookshelfManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    .line 1522
    :cond_1e
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/util/BookshelfManager;->getBookshelfItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfItems:Ljava/util/List;

    .line 1525
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

    .line 1526
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showBookshelfInPanel()V

    .line 1527
    return-void
.end method

.method private showEbookPanel()V
    .locals 7

    .prologue
    .line 2918
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2919
    if-nez v1, :cond_10

    .line 2920
    const-string v0, "EbookReader"

    const-string v1, "Activity is null, cannot show ebook panel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2995
    :goto_f
    return-void

    .line 2924
    :cond_10
    const-string v0, "EbookReader"

    const-string v2, "\u5f00\u59cb\u663e\u793a\u7535\u5b50\u4e66\u9762\u677f"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2928
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ebook/util/EbookFileStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->reloadFromFile()V

    .line 2931
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2932
    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2933
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2934
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2937
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ebook/util/EbookFileStore;

    move-result-object v0

    .line 2938
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getScreenPercent()I

    move-result v4

    .line 2939
    const/4 v5, 0x6

    new-array v5, v5, [I

    fill-array-data v5, :array_154

    .line 2940
    if-ltz v4, :cond_13c

    array-length v6, v5

    if-ge v4, v6, :cond_13c

    .line 2941
    aget v4, v5, v4

    iput v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanelPercent:I

    .line 2946
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

    .line 2949
    iget-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    if-nez v4, :cond_b0

    .line 2950
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    .line 2951
    iget-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    const-string v5, "\u5de6\u4e0a"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2952
    iget-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    const-string v5, "\u5de6\u4e0b"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2953
    iget-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    const-string v5, "\u53f3\u4e0a"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2954
    iget-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    const-string v5, "\u53f3\u4e0b"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2956
    :cond_b0
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getVideoPosition()I

    move-result v0

    .line 2957
    if-ltz v0, :cond_142

    iget-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_142

    .line 2958
    iput v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    .line 2962
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

    .line 2965
    invoke-direct {p0, v1, v2, v3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->shrinkVideoView(Landroid/app/Activity;II)V

    .line 2968
    invoke-direct {p0, v1, v2, v3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->shrinkDanmakuView(Landroid/app/Activity;II)V

    .line 2971
    invoke-direct {p0, v1, v2, v3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showGrayBackgroundPanel(Landroid/app/Activity;II)V

    .line 2974
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    if-nez v0, :cond_f6

    .line 2975
    new-instance v0, Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ebook/util/EbookCacheManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    .line 2977
    :cond_f6
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    if-nez v0, :cond_101

    .line 2978
    new-instance v0, Lcom/bilibili/tv/ebook/util/BookshelfManager;

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ebook/util/BookshelfManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    .line 2981
    :cond_101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    .line 2982
    const-string v0, "ebook"

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->controlTarget:Ljava/lang/String;

    .line 2983
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u9762\u677f\u5df2\u663e\u793a\uff0ccontrolTarget\u8bbe\u7f6e\u4e3aebook"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2986
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    if-eqz v0, :cond_147

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBookFilePath:Ljava/lang/String;

    if-eqz v0, :cond_147

    .line 2987
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

    .line 2989
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->restoreReadingProgress(Lcom/bilibili/tv/ebook/model/Book;)V

    goto/16 :goto_f

    .line 2943
    :cond_13c
    const/16 v4, 0x1e

    iput v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanelPercent:I

    goto/16 :goto_55

    .line 2960
    :cond_142
    const/4 v0, 0x0

    iput v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    goto/16 :goto_c0

    .line 2991
    :cond_147
    const-string v0, "EbookReader"

    const-string v1, "\u6ca1\u6709\u6b63\u5728\u9605\u8bfb\u7684\u4e66\u7c4d\uff0c\u663e\u793a\u9996\u9875\u5185\u5bb9"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2993
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showBookshelfOrFileChooser()V

    goto/16 :goto_f

    .line 2939
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

    .line 1697
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1698
    if-nez v1, :cond_17

    .line 1699
    const-string v0, "EbookReader"

    const-string v1, "Activity is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    :goto_16
    return-void

    .line 1703
    :cond_17
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-nez v0, :cond_23

    .line 1704
    const-string v0, "EbookReader"

    const-string v1, "ebookPanel is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 1708
    :cond_23
    const-string v0, "EbookReader"

    const-string v2, "\u5728\u7535\u5b50\u4e66\u9762\u677f\u4e2d\u663e\u793a\u6587\u4ef6\u9009\u62e9\u5668"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
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

    .line 1710
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

    .line 1713
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_83

    .line 1714
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_17b

    .line 1716
    invoke-static {}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->hasManageExternalStoragePermission()Z

    move-result v0

    if-nez v0, :cond_83

    .line 1717
    const-string v0, "EbookReader"

    const-string v2, "\u672a\u6388\u4e88\u6240\u6709\u6587\u4ef6\u8bbf\u95ee\u6743\u9650\uff0c\u7535\u5b50\u4e66\u6570\u636e\u5c06\u4fdd\u5b58\u5728\u5e94\u7528\u5185\u90e8\uff08\u65e0\u6cd5\u8de8APP\u5171\u4eab\uff09"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    :cond_83
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_97

    .line 1736
    const-string v0, "EbookReader"

    const-string v2, "\u7535\u5b50\u4e66\u9762\u677f\u672a\u663e\u793a\uff0c\u8bbe\u7f6e\u4e3aVISIBLE"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1741
    :cond_97
    const-string v0, "EbookReader"

    const-string v2, "\u6e05\u7a7a\u7535\u5b50\u4e66\u9762\u677f\u4e2d\u7684\u5185\u5bb9"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1745
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1746
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1747
    const-string v2, "#333333"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1748
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1754
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1755
    const-string v3, "\u9009\u62e9\u7535\u5b50\u4e66\u6587\u4ef6"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1756
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1757
    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1758
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1759
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1760
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1763
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1764
    const v3, -0x333334

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1765
    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1766
    invoke-virtual {v2, v4, v8, v4, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1767
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1770
    new-instance v3, Landroid/widget/ListView;

    invoke-direct {v3, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->fileListView:Landroid/widget/ListView;

    .line 1771
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1775
    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->fileListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1776
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->fileListView:Landroid/widget/ListView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, -0xbbbbbc

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1777
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->fileListView:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 1778
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->fileListView:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 1779
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->fileListView:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 1780
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->fileListView:Landroid/widget/ListView;

    const/high16 v3, 0x20000

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    .line 1781
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->fileListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1783
    const-string v1, "EbookReader"

    const-string v3, "\u6587\u4ef6\u9009\u62e9\u5668\u5e03\u5c40\u521b\u5efa\u5b8c\u6210\uff0c\u51c6\u5907\u6dfb\u52a0\u5230\u7535\u5b50\u4e66\u9762\u677f"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1785
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

    .line 1788
    iput-boolean v5, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isFileChooserShown:Z

    .line 1789
    const-string v0, "EbookReader"

    const-string v1, "\u6587\u4ef6\u9009\u62e9\u5668\u5df2\u663e\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v3, "Download"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1793
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_170

    .line 1794
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 1798
    :cond_170
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->fileListView:Landroid/widget/ListView;

    invoke-direct {p0, v1, v2, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadFileList(Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V

    goto/16 :goto_16

    .line 1709
    :cond_177
    const-string v0, "\u672a\u663e\u793a"

    goto/16 :goto_41

    .line 1719
    :cond_17b
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v1, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_83

    .line 1721
    const-string v0, "EbookReader"

    const-string v2, "\u6ca1\u6709\u5b58\u50a8\u6743\u9650\uff0c\u8bf7\u6c42\u6743\u9650"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v7

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v5

    const/16 v2, 0x3e9

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 1729
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

    .line 3135
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->dumpViewHierarchy(Landroid/app/Activity;)V

    .line 3138
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v2}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getVideoContainer()Landroid/view/ViewGroup;

    move-result-object v3

    .line 3139
    if-nez v3, :cond_16

    .line 3140
    const-string v0, "EbookReader"

    const-string v1, "\u89c6\u9891\u5bb9\u5668\u4e3a\u7a7a\uff0c\u65e0\u6cd5\u521b\u5efa\u7535\u5b50\u4e66\u9762\u677f"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3203
    :goto_15
    return-void

    .line 3144
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

    .line 3147
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-nez v2, :cond_cb

    .line 3148
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    .line 3149
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    const-string v4, "#333333"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 3153
    iget v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanelPercent:I

    mul-int/2addr v2, p2

    div-int/lit8 v4, v2, 0x64

    .line 3158
    iget v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-eqz v2, :cond_67

    iget v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v2, v1, :cond_68

    :cond_67
    move v0, v1

    .line 3161
    :cond_68
    instance-of v2, v3, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_ad

    .line 3162
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3167
    if-eqz v0, :cond_ab

    const/4 v0, 0x5

    :goto_74
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object v0, v2

    .line 3195
    :goto_77
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3197
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

    .line 3198
    const-string v0, "EbookReader"

    const-string v1, "View\u5c42\u7ea7: [0]\u89c6\u9891 -> [1]\u7535\u5b50\u4e66\u9762\u677f -> [2+]overlay UI"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 3167
    :cond_ab
    const/4 v0, 0x3

    goto :goto_74

    .line 3169
    :cond_ad
    instance-of v2, v3, Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_c5

    .line 3170
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3175
    if-eqz v0, :cond_bf

    .line 3176
    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_bd
    move-object v0, v2

    .line 3181
    goto :goto_77

    .line 3178
    :cond_bf
    const/16 v0, 0x9

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_bd

    .line 3183
    :cond_c5
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v4, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_77

    .line 3200
    :cond_cb
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3201
    const-string v0, "EbookReader"

    const-string v1, "\u7070\u8272\u80cc\u666f\u9762\u677f\u5df2\u663e\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15
.end method

.method private showLoadingIndicator()V
    .locals 2

    .prologue
    .line 2016
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isLoadingEbook:Z

    .line 2017
    const-string v0, "EbookReader"

    const-string v1, "\u663e\u793a\u52a0\u8f7d\u8fdb\u5ea6\u63d0\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$33;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$33;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2071
    return-void
.end method

.method private showOrganizeDeleteDialog()V
    .locals 6

    .prologue
    .line 870
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 871
    if-eqz v2, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectedFlags:[Z

    if-nez v0, :cond_d

    .line 919
    :cond_c
    :goto_c
    return-void

    .line 876
    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 877
    const/4 v0, 0x0

    move v1, v0

    :goto_14
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectedFlags:[Z

    array-length v0, v0

    if-ge v1, v0, :cond_36

    .line 878
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectedFlags:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_32

    .line 879
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ebook/model/BookshelfItem;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 877
    :cond_32
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    .line 882
    :cond_36
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 887
    new-instance v0, Lbl/agb$a;

    invoke-direct {v0, v2}, Lbl/agb$a;-><init>(Landroid/app/Activity;)V

    .line 888
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

    .line 889
    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$17;

    invoke-direct {v5, p0, v3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$17;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Ljava/util/List;)V

    invoke-virtual {v1, v4, v5}, Lbl/agb$a;->a(Ljava/lang/String;Lbl/agb$b;)Lbl/agb$a;

    move-result-object v1

    const v3, 0x7f0c0076

    .line 912
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$16;

    invoke-direct {v3, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$16;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v1, v2, v3}, Lbl/agb$a;->b(Ljava/lang/String;Lbl/agb$b;)Lbl/agb$a;

    .line 918
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

    .line 458
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 459
    if-eqz v1, :cond_13

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1b

    .line 460
    :cond_13
    const-string v0, "EbookReader"

    const-string v1, "Activity or ebookPanel is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :goto_1a
    return-void

    .line 464
    :cond_1b
    const-string v0, "EbookReader"

    const-string v2, "\u663e\u793a\u6574\u7406\u4e66\u67b6\u9875\u9762"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2f

    .line 468
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 472
    :cond_2f
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 475
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfItems:Ljava/util/List;

    if-nez v0, :cond_44

    .line 476
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    if-eqz v0, :cond_19f

    .line 477
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/util/BookshelfManager;->getBookshelfItems()Ljava/util/List;

    move-result-object v0

    :goto_42
    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfItems:Ljava/util/List;

    .line 479
    :cond_44
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectedFlags:[Z

    .line 482
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 483
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 484
    const-string v0, "#333333"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 485
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 492
    const-string v3, "\u6574\u7406\u4e66\u67b6"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 494
    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 495
    const/16 v3, 0x18

    const/16 v4, 0x14

    const/16 v5, 0x18

    const/16 v6, 0x14

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 496
    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 497
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 503
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 504
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 505
    const/4 v0, 0x4

    invoke-virtual {v3, v10, v0, v10, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 506
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v0, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 511
    const-string v0, "\u5168\u9009"

    invoke-direct {p0, v1, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->createOrganizeButton(Landroid/app/Activity;Ljava/lang/String;)Lcom/bilibili/tv/widget/DrawFrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 512
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectAllText:Landroid/widget/TextView;

    .line 513
    const-string v0, "\u5220\u9664"

    invoke-direct {p0, v1, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->createOrganizeButton(Landroid/app/Activity;Ljava/lang/String;)Lcom/bilibili/tv/widget/DrawFrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 514
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteText:Landroid/widget/TextView;

    .line 516
    const/high16 v0, 0x42600000    # 56.0f

    .line 518
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 516
    invoke-static {v9, v0, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 519
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v0, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 521
    const/4 v5, 0x6

    invoke-virtual {v4, v10, v7, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 522
    iget-object v5, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 523
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v0, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 525
    const/4 v0, 0x6

    invoke-virtual {v4, v0, v7, v10, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 526
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 529
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    .line 530
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, -0xbbbbbc

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 531
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 532
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 533
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 534
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    const/high16 v3, 0x20000

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    .line 535
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 536
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v7, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 540
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 543
    new-instance v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$5;

    invoke-direct {v0, p0, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$5;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/app/Activity;)V

    .line 625
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 628
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    new-instance v2, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$6;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$6;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 641
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    new-instance v2, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$7;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$7;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 658
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    new-instance v2, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$8;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$8;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 671
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    new-instance v2, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$9;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$9;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 698
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    new-instance v2, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$10;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$10;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 705
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    new-instance v2, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$11;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$11;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 730
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    new-instance v2, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$12;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$12;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 737
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    new-instance v2, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$13;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$13;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 761
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->updateOrganizeButtonsState()V

    .line 763
    iput-boolean v9, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isOrganizingShelf:Z

    .line 766
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    new-instance v2, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$14;

    invoke-direct {v2, p0, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$14;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/app/Activity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1a

    .line 477
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

    .line 3426
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getDanmakuView()Landroid/view/View;

    move-result-object v3

    .line 3427
    if-nez v3, :cond_14

    .line 3428
    const-string v0, "EbookReader"

    const-string v1, "\u65e0\u72ec\u7acb\u5f39\u5e55\u89c6\u56fe\uff0c\u8df3\u8fc7\u5f39\u5e55\u7f29\u653e"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3519
    :goto_13
    return-void

    .line 3432
    :cond_14
    const-string v0, "EbookReader"

    const-string v4, "\u5f00\u59cb\u7f29\u5c0f\u5f39\u5e55\u89c6\u56fe"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3435
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3436
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    .line 3437
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

    .line 3441
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isLiveMode()Z

    move-result v0

    if-eqz v0, :cond_af

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_af

    .line 3442
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3443
    iget-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v4}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getVideoContainer()Landroid/view/ViewGroup;

    move-result-object v4

    .line 3444
    if-eqz v0, :cond_af

    if-eqz v4, :cond_af

    if-eq v0, v4, :cond_af

    .line 3445
    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuParent:Landroid/view/ViewGroup;

    .line 3446
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    iput v5, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuIndex:I

    .line 3447
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3449
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v3, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3450
    const-string v4, "EbookReader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u76f4\u64ad\u5f39\u5e55\u5bb9\u5668\u5df2\u79fb\u5230\u6839\u5e03\u5c40(\u4e0e\u89c6\u9891\u5e73\u7ea7), \u539f\u7236\u5bb9\u5668="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3451
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

    .line 3450
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3456
    :cond_af
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3457
    if-nez v0, :cond_c0

    .line 3458
    const-string v0, "EbookReader"

    const-string v1, "Danmaku view parent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 3462
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

    .line 3465
    iget v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanelPercent:I

    rsub-int/lit8 v4, v4, 0x64

    mul-int/2addr v4, p2

    div-int/lit8 v4, v4, 0x64

    .line 3468
    iget v5, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-eqz v5, :cond_ef

    iget v5, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v5, v2, :cond_f0

    :cond_ef
    move v1, v2

    .line 3472
    :cond_f0
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_15e

    .line 3473
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3477
    if-eqz v1, :cond_154

    .line 3479
    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-nez v0, :cond_151

    .line 3480
    const/16 v0, 0x33

    .line 3492
    :goto_101
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object v0, v2

    .line 3514
    :goto_104
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3515
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    if-eqz v0, :cond_190

    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ltz v0, :cond_190

    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_190

    .line 3516
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    iget v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3517
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

    .line 3482
    :cond_151
    const/16 v0, 0x53

    goto :goto_101

    .line 3486
    :cond_154
    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v0, v8, :cond_15b

    .line 3487
    const/16 v0, 0x35

    goto :goto_101

    .line 3489
    :cond_15b
    const/16 v0, 0x55

    goto :goto_101

    .line 3494
    :cond_15e
    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_189

    .line 3495
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3498
    if-eqz v1, :cond_17c

    .line 3499
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3504
    :goto_16e
    iget v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-eqz v1, :cond_176

    iget v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v1, v8, :cond_182

    .line 3505
    :cond_176
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_104

    .line 3501
    :cond_17c
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_16e

    .line 3507
    :cond_182
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_104

    .line 3511
    :cond_189
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v4, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto/16 :goto_104

    .line 3516
    :cond_190
    const-string v0, "\u5de6\u4e0a"

    goto :goto_123
.end method

.method private shrinkVideoView(Landroid/app/Activity;II)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    .line 3017
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isVideoTextureView()Z

    move-result v0

    if-nez v0, :cond_19

    .line 3018
    const-string v0, "EbookReader"

    const-string v1, "\u5f53\u524d\u672a\u4f7f\u7528TextureView\u6a21\u5f0f"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3019
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    const-string v1, "\u7535\u5b50\u4e66\u529f\u80fd\u9700\u8981TextureView\u6a21\u5f0f\n\u8bf7\u5148\u5728\u4e2a\u6027\u5316\u8bbe\u7f6e\u4e2d\u5207\u6362"

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showToast(Ljava/lang/String;)V

    .line 3127
    :goto_18
    return-void

    .line 3024
    :cond_19
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getVideoView()Landroid/view/View;

    move-result-object v3

    .line 3025
    if-nez v3, :cond_29

    .line 3026
    const-string v0, "EbookReader"

    const-string v1, "\u89c6\u9891\u89c6\u56fe\u4e3a\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 3031
    :cond_29
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isLiveMode()Z

    move-result v0

    if-nez v0, :cond_7c

    instance-of v0, v3, Landroid/view/TextureView;

    if-nez v0, :cond_7c

    .line 3032
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

    .line 3033
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

    .line 3037
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

    .line 3040
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3041
    if-nez v0, :cond_ad

    .line 3042
    const-string v0, "EbookReader"

    const-string v1, "\u89c6\u9891\u89c6\u56fe\u7684\u7236\u5bb9\u5668\u4e3a\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    .line 3045
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

    .line 3050
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    if-nez v2, :cond_190

    .line 3051
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 3052
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v4, v5, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    .line 3053
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

    .line 3059
    :goto_10a
    iget v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanelPercent:I

    rsub-int/lit8 v2, v2, 0x64

    mul-int/2addr v2, p2

    div-int/lit8 v4, v2, 0x64

    .line 3064
    iget v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-eqz v2, :cond_119

    iget v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v2, v1, :cond_199

    .line 3065
    :cond_119
    :goto_119
    invoke-direct {p0, p3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->getShrinkVideoHeight(I)I

    move-result v5

    .line 3067
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1a9

    .line 3068
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3074
    if-eqz v1, :cond_19f

    .line 3077
    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-nez v0, :cond_19c

    .line 3078
    const/16 v0, 0x33

    .line 3091
    :goto_12e
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object v0, v2

    .line 3120
    :goto_131
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3122
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    if-eqz v0, :cond_1dc

    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ltz v0, :cond_1dc

    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1dc

    .line 3123
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    iget v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3124
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

    .line 3055
    :cond_190
    const-string v2, "EbookReader"

    const-string v4, "\u89c6\u9891\u5df2\u7ecf\u7f29\u5c0f\u8fc7\uff0c\u8df3\u8fc7\u4fdd\u5b58\u539f\u59cb\u53c2\u6570"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10a

    .line 3064
    :cond_199
    const/4 v1, 0x0

    goto/16 :goto_119

    .line 3080
    :cond_19c
    const/16 v0, 0x53

    goto :goto_12e

    .line 3085
    :cond_19f
    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v0, v6, :cond_1a6

    .line 3086
    const/16 v0, 0x35

    goto :goto_12e

    .line 3088
    :cond_1a6
    const/16 v0, 0x55

    goto :goto_12e

    .line 3093
    :cond_1a9
    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1d5

    .line 3094
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3100
    if-eqz v1, :cond_1c8

    .line 3101
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3106
    :goto_1b9
    iget v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-eqz v1, :cond_1c1

    iget v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v1, v6, :cond_1ce

    .line 3107
    :cond_1c1
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_131

    .line 3103
    :cond_1c8
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1b9

    .line 3109
    :cond_1ce
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_131

    .line 3114
    :cond_1d5
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto/16 :goto_131

    .line 3123
    :cond_1dc
    const-string v0, "\u5de6\u4e0a"

    goto/16 :goto_150
.end method

.method private toggleSelectAll()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 848
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectedFlags:[Z

    if-nez v0, :cond_7

    .line 866
    :goto_6
    return-void

    .line 852
    :cond_7
    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectedFlags:[Z

    array-length v4, v3

    move v0, v1

    :goto_b
    if-ge v0, v4, :cond_34

    aget-boolean v5, v3, v0

    .line 853
    if-nez v5, :cond_22

    move v0, v1

    :goto_12
    move v3, v1

    .line 859
    :goto_13
    iget-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectedFlags:[Z

    array-length v4, v4

    if-ge v3, v4, :cond_27

    .line 860
    iget-object v5, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectedFlags:[Z

    if-nez v0, :cond_25

    move v4, v2

    :goto_1d
    aput-boolean v4, v5, v3

    .line 859
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 852
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_25
    move v4, v1

    .line 860
    goto :goto_1d

    .line 862
    :cond_27
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    if-eqz v0, :cond_30

    .line 863
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 865
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
    .line 3866
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3867
    if-nez v0, :cond_9

    .line 3874
    :cond_8
    :goto_8
    return-void

    .line 3869
    :cond_9
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3870
    if-eqz v0, :cond_8

    .line 3873
    invoke-direct {p0, v0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->findAndUpdateDanmakuView(Landroid/view/ViewGroup;I)V

    goto :goto_8
.end method

.method private updateEbookPanelWidth(I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    .line 4052
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-nez v0, :cond_7

    .line 4081
    :cond_6
    :goto_6
    return-void

    .line 4054
    :cond_7
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 4055
    if-eqz v0, :cond_6

    .line 4058
    iget v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-eqz v2, :cond_19

    iget v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v2, v1, :cond_54

    .line 4061
    :cond_19
    :goto_19
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_58

    .line 4062
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, p1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 4064
    if-eqz v1, :cond_56

    const/4 v0, 0x5

    :goto_25
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object v0, v2

    .line 4078
    :goto_28
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4079
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

    .line 4080
    if-eqz v1, :cond_75

    const-string v0, "\u53f3\u4fa7"

    :goto_48
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4079
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 4058
    :cond_54
    const/4 v1, 0x0

    goto :goto_19

    .line 4064
    :cond_56
    const/4 v0, 0x3

    goto :goto_25

    .line 4066
    :cond_58
    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_6f

    .line 4067
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4069
    if-eqz v1, :cond_69

    .line 4070
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_28

    .line 4072
    :cond_69
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_28

    .line 4076
    :cond_6f
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_28

    .line 4080
    :cond_75
    const-string v0, "\u5de6\u4fa7"

    goto :goto_48
.end method

.method private updateOrganizeButtonsState()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 814
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectedFlags:[Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectAllText:Landroid/widget/TextView;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteText:Landroid/widget/TextView;

    if-nez v0, :cond_13

    .line 844
    :cond_12
    :goto_12
    return-void

    .line 821
    :cond_13
    iget-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectedFlags:[Z

    array-length v5, v4

    move v1, v3

    move v0, v3

    :goto_18
    if-ge v1, v5, :cond_23

    aget-boolean v6, v4, v1

    .line 822
    if-eqz v6, :cond_20

    .line 823
    add-int/lit8 v0, v0, 0x1

    .line 821
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 826
    :cond_23
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectedFlags:[Z

    array-length v1, v1

    if-ne v0, v1, :cond_83

    if-lez v0, :cond_83

    move v1, v2

    .line 829
    :goto_2b
    iget-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectAllText:Landroid/widget/TextView;

    if-eqz v1, :cond_85

    const-string v1, "\u5168\u4e0d\u9009"

    :goto_31
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 832
    if-lez v0, :cond_88

    .line 833
    :goto_36
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setFocusable(Z)V

    .line 834
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setFocusableInTouchMode(Z)V

    .line 835
    if-eqz v2, :cond_8a

    .line 836
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteText:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 837
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    const v3, 0x7f0700f0

    invoke-virtual {v1, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 842
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

    .line 843
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

    .line 842
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_83
    move v1, v3

    .line 826
    goto :goto_2b

    .line 829
    :cond_85
    const-string v1, "\u5168\u9009"

    goto :goto_31

    :cond_88
    move v2, v3

    .line 832
    goto :goto_36

    .line 839
    :cond_8a
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteText:Landroid/widget/TextView;

    const-string v3, "#888888"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 840
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
    .line 3958
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3959
    if-nez v0, :cond_9

    .line 3966
    :cond_8
    :goto_8
    return-void

    .line 3961
    :cond_9
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3962
    if-eqz v0, :cond_8

    .line 3965
    invoke-direct {p0, v0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->findAndUpdateSubtitleView(Landroid/view/ViewGroup;I)V

    goto :goto_8
.end method

.method private updateVideoViewWidth(I)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3794
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getVideoView()Landroid/view/View;

    move-result-object v4

    .line 3795
    if-nez v4, :cond_c

    .line 3859
    :cond_b
    :goto_b
    return-void

    .line 3797
    :cond_c
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3798
    if-eqz v0, :cond_b

    .line 3802
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 3803
    if-eqz v1, :cond_d2

    .line 3804
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3805
    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3806
    iget v1, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 3808
    :goto_2e
    invoke-direct {p0, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->getShrinkVideoHeight(I)I

    move-result v5

    .line 3811
    iget v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-eqz v1, :cond_3a

    iget v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v1, v3, :cond_3b

    :cond_3a
    move v2, v3

    .line 3814
    :cond_3b
    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_9f

    .line 3815
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p1, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3819
    if-eqz v2, :cond_95

    .line 3821
    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-nez v0, :cond_92

    .line 3822
    const/16 v0, 0x33

    .line 3834
    :goto_4c
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object v0, v1

    .line 3855
    :goto_4f
    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3856
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    if-eqz v0, :cond_cf

    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ltz v0, :cond_cf

    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_cf

    .line 3857
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    iget v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3858
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

    .line 3824
    :cond_92
    const/16 v0, 0x53

    goto :goto_4c

    .line 3828
    :cond_95
    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v0, v6, :cond_9c

    .line 3829
    const/16 v0, 0x35

    goto :goto_4c

    .line 3831
    :cond_9c
    const/16 v0, 0x55

    goto :goto_4c

    .line 3836
    :cond_9f
    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_c9

    .line 3837
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3840
    if-eqz v2, :cond_bd

    .line 3841
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3846
    :goto_af
    iget v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-eqz v1, :cond_b7

    iget v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v1, v6, :cond_c3

    .line 3847
    :cond_b7
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_4f

    .line 3843
    :cond_bd
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_af

    .line 3849
    :cond_c3
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_4f

    .line 3853
    :cond_c9
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_4f

    .line 3857
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

    .line 306
    const-string v0, "EbookReader"

    const-string v1, "\u5f00\u59cb\u5173\u95ed\u5f53\u524d\u4e66\u7c4d\uff0c\u56de\u5230\u7535\u5b50\u4e66\u9996\u9875"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveReadingProgressImmediately()V

    .line 312
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->destroyEbookWebView()V

    .line 315
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1f

    .line 316
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 317
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u9762\u677f\u5df2\u6e05\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_1f
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    .line 322
    iput v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterIndex:I

    .line 323
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    .line 324
    iput-boolean v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isReadingBook:Z

    .line 325
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBookFilePath:Ljava/lang/String;

    .line 327
    const-string v0, "EbookReader"

    const-string v1, "\u5f53\u524d\u4e66\u7c4d\u5df2\u5173\u95ed\uff0c\u56de\u5230\u7535\u5b50\u4e66\u9996\u9875"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showBookshelfOrFileChooser()V

    .line 331
    return-void
.end method

.method public consumeMenuOpenedByKeyDown()Z
    .locals 2

    .prologue
    .line 1373
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->menuOpenedByKeyDown:Z

    .line 1374
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->menuOpenedByKeyDown:Z

    .line 1375
    return v0
.end method

.method public getControlTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->controlTarget:Ljava/lang/String;

    return-object v0
.end method

.method public isChapterListShown()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isChapterListShown:Z

    return v0
.end method

.method public isControlEbook()Z
    .locals 2

    .prologue
    .line 189
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
    .line 164
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    return v0
.end method

.method public isEbookReadingContent()Z
    .locals 1

    .prologue
    .line 196
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
    .line 179
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isFileChooserShown:Z

    return v0
.end method

.method public isOrganizingShelf()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isOrganizingShelf:Z

    return v0
.end method

.method public isReadingBook()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isReadingBook:Z

    return v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1406
    const-string v0, "EbookReader"

    const-string v1, "onDestroy: \u56de\u6536\u7535\u5b50\u4e66\u8d44\u6e90"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->cancelParsingTask()V

    .line 1414
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveReadingProgressImmediately()V

    .line 1417
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->destroyEbookWebView()V

    .line 1420
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->clearChapterCache()V

    .line 1423
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2a

    .line 1424
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1425
    if-eqz v0, :cond_28

    .line 1426
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1428
    :cond_28
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    .line 1432
    :cond_2a
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressHandler:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;

    if-eqz v0, :cond_35

    .line 1433
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressHandler:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1434
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressHandler:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;

    .line 1436
    :cond_35
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressRunnable:Ljava/lang/Runnable;

    .line 1439
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    if-eqz v0, :cond_47

    .line 1440
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1441
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1442
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    .line 1444
    :cond_47
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    if-eqz v0, :cond_57

    .line 1445
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1446
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1447
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    .line 1451
    :cond_57
    iput-boolean v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    .line 1452
    iput-boolean v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isChapterListShown:Z

    .line 1453
    iput-boolean v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isFileChooserShown:Z

    .line 1454
    iput-boolean v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isOrganizingShelf:Z

    .line 1455
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectedFlags:[Z

    .line 1456
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    .line 1457
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 1458
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 1459
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectAllText:Landroid/widget/TextView;

    .line 1460
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteText:Landroid/widget/TextView;

    .line 1461
    iput-boolean v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isLoadingEbook:Z

    .line 1462
    iput-boolean v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isReadingBook:Z

    .line 1463
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    .line 1464
    iput v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterIndex:I

    .line 1465
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBookFilePath:Ljava/lang/String;

    .line 1466
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadingProgressBar:Landroid/widget/ProgressBar;

    .line 1467
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadingTextView:Landroid/widget/TextView;

    .line 1468
    const-string v0, "video"

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->controlTarget:Ljava/lang/String;

    .line 1471
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    .line 1472
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    .line 1473
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfItems:Ljava/util/List;

    .line 1476
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    if-eqz v0, :cond_8c

    .line 1477
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->onEbookDestroy()V

    .line 1480
    :cond_8c
    const-string v0, "EbookReader"

    const-string v1, "onDestroy: \u7535\u5b50\u4e66\u8d44\u6e90\u5df2\u56de\u6536\u5b8c\u6210"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    return-void
.end method

.method public onEbookFileSelected(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1991
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

    .line 1993
    if-eqz p1, :cond_20

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1994
    :cond_20
    const-string v0, "EbookReader"

    const-string v1, "\u6587\u4ef6\u8def\u5f84\u4e3a\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    :goto_27
    return-void

    .line 1999
    :cond_28
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isLoadingEbook:Z

    if-eqz v0, :cond_3b

    .line 2000
    const-string v0, "EbookReader"

    const-string v1, "\u6b63\u5728\u52a0\u8f7d\u7535\u5b50\u4e66\uff0c\u8bf7\u7a0d\u5019..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    const-string v1, "\u6b63\u5728\u52a0\u8f7d\uff0c\u8bf7\u7a0d\u5019..."

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showToast(Ljava/lang/String;)V

    goto :goto_27

    .line 2006
    :cond_3b
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showLoadingIndicator()V

    .line 2009
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

    .line 1166
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

    .line 1167
    invoke-interface {v4}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isMenuShown()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1166
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
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

    .line 1171
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

    .line 1174
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isOrganizingShelf:Z

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 1175
    if-ne p1, v8, :cond_92

    .line 1176
    const-string v0, "EbookReader"

    const-string v1, "\u6574\u7406\u4e66\u67b6\u9875\u9762\u6309\u8fd4\u56de\u952e\uff0c\u9000\u51fa\u6574\u7406\u4e66\u67b6"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->hideOrganizeShelf()V

    .line 1364
    :cond_91
    :goto_91
    return v2

    .line 1180
    :cond_92
    const/16 v0, 0x52

    if-ne p1, v0, :cond_9e

    .line 1181
    const-string v0, "EbookReader"

    const-string v1, "\u6574\u7406\u4e66\u67b6\u9875\u9762\u663e\u793a\u4e2d\uff0c\u4e0d\u54cd\u5e94\u83dc\u5355\u952e"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91

    .line 1184
    :cond_9e
    const-string v0, "EbookReader"

    const-string v1, "onKeyDown: \u6574\u7406\u4e66\u67b6\u9875\u9762\uff0c\u4e0d\u62e6\u622a\u65b9\u5411\u952e\u548c\u786e\u8ba4\u952e"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 1185
    goto :goto_91

    .line 1189
    :cond_a7
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    if-eqz v0, :cond_cd

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 1190
    const-string v0, "EbookReader"

    const-string v1, "onKeyDown: \u7ae0\u8282\u5217\u8868\u663e\u793a\u4e2d"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isConfirmKey(I)Z

    move-result v0

    if-nez v0, :cond_c4

    if-eq p1, v6, :cond_c4

    if-ne p1, v7, :cond_cd

    .line 1194
    :cond_c4
    const-string v0, "EbookReader"

    const-string v1, "onKeyDown: \u7ae0\u8282\u5217\u8868\u663e\u793a\uff0c\u4e0d\u62e6\u622a\u65b9\u5411\u952e\u548c\u786e\u8ba4\u952e"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 1195
    goto :goto_91

    .line 1200
    :cond_cd
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    if-eqz v0, :cond_ec

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 1201
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isConfirmKey(I)Z

    move-result v0

    if-nez v0, :cond_e3

    if-eq p1, v6, :cond_e3

    if-ne p1, v7, :cond_ec

    .line 1204
    :cond_e3
    const-string v0, "EbookReader"

    const-string v1, "onKeyDown: \u4e66\u67b6\u5217\u8868\u663e\u793a\uff0c\u4e0d\u62e6\u622a\u65b9\u5411\u952e\u548c\u786e\u8ba4\u952e"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 1205
    goto :goto_91

    .line 1210
    :cond_ec
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isFileChooserShown:Z

    if-eqz v0, :cond_103

    .line 1211
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isConfirmKey(I)Z

    move-result v0

    if-nez v0, :cond_fa

    if-eq p1, v6, :cond_fa

    if-ne p1, v7, :cond_103

    .line 1214
    :cond_fa
    const-string v0, "EbookReader"

    const-string v1, "onKeyDown: \u6587\u4ef6\u9009\u62e9\u5668\u663e\u793a\uff0c\u4e0d\u62e6\u622a\u65b9\u5411\u952e\u548c\u786e\u8ba4\u952e"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 1215
    goto :goto_91

    .line 1221
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

    .line 1225
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

    .line 1227
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_16c

    const-string v1, "not null"

    :goto_141
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1225
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    if-eqz v0, :cond_16f

    .line 1230
    const-string v0, "EbookReader"

    const-string v1, "onKeyDown: \u5728\u9605\u8bfb\u5185\u5bb9\u9875\u9762"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    if-eq p1, v6, :cond_161

    if-eq p1, v7, :cond_161

    const/16 v0, 0x15

    if-eq p1, v0, :cond_161

    const/16 v0, 0x16

    if-ne p1, v0, :cond_16f

    .line 1238
    :cond_161
    const-string v0, "EbookReader"

    const-string v1, "onKeyDown: \u65b9\u5411\u952e\u5df2\u7531onKeyUp()\u5904\u7406\uff0c\u76f4\u63a5\u8fd4\u56detrue"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_91

    :cond_16a
    move v0, v3

    .line 1221
    goto :goto_118

    .line 1227
    :cond_16c
    const-string v1, "null"

    goto :goto_141

    .line 1244
    :cond_16f
    const/16 v0, 0x52

    if-ne p1, v0, :cond_19d

    .line 1246
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isChapterListShown:Z

    if-eqz v0, :cond_180

    .line 1247
    const-string v0, "EbookReader"

    const-string v1, "\u7ae0\u8282\u5217\u8868\u663e\u793a\u4e2d\uff0c\u4e0d\u54cd\u5e94\u83dc\u5355\u952e"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_91

    .line 1251
    :cond_180
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isFileChooserShown:Z

    if-eqz v0, :cond_18d

    .line 1252
    const-string v0, "EbookReader"

    const-string v1, "\u6587\u4ef6\u9009\u62e9\u5217\u8868\u663e\u793a\u4e2d\uff0c\u4e0d\u54cd\u5e94\u83dc\u5355\u952e"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_91

    .line 1256
    :cond_18d
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u6a21\u5f0f\u4e0b\u6253\u5f00\u53f3\u4fa7\u83dc\u5355"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    iput-boolean v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->menuOpenedByKeyDown:Z

    .line 1258
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0, v2}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showMenu(Z)V

    goto/16 :goto_91

    .line 1263
    :cond_19d
    if-ne p1, v8, :cond_91

    .line 1264
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isChapterListShown:Z

    if-eqz v0, :cond_246

    .line 1266
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterNavigationStack:Ljava/util/Stack;

    if-eqz v0, :cond_23a

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterNavigationStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23a

    .line 1268
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

    .line 1269
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterNavigationStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterList:Ljava/util/List;

    .line 1272
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterNavigationStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e9

    .line 1274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parentChapterTitle:Ljava/lang/String;

    .line 1294
    :cond_1e2
    :goto_1e2
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->createChapterListView(Ljava/util/List;)V

    goto/16 :goto_91

    .line 1277
    :cond_1e9
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterNavigationStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1278
    if-eqz v0, :cond_1e2

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1e2

    .line 1280
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/ebook/model/Chapter;

    invoke-virtual {v1}, Lcom/bilibili/tv/ebook/model/Chapter;->getChapterIndex()I

    move-result v4

    .line 1281
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_20b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ebook/model/Chapter;

    .line 1282
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getChapterIndex()I

    move-result v1

    if-ge v1, v4, :cond_20b

    .line 1284
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->getChildChapters(Lcom/bilibili/tv/ebook/model/Chapter;)Ljava/util/List;

    move-result-object v1

    .line 1285
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_20b

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/ebook/model/Chapter;

    invoke-virtual {v1}, Lcom/bilibili/tv/ebook/model/Chapter;->getChapterIndex()I

    move-result v1

    if-ne v1, v4, :cond_20b

    .line 1286
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parentChapterTitle:Ljava/lang/String;

    goto :goto_1e2

    .line 1297
    :cond_23a
    const-string v0, "EbookReader"

    const-string v1, "\u5173\u95ed\u7ae0\u8282\u5217\u8868"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->hideChapterList()V

    goto/16 :goto_91

    .line 1301
    :cond_246
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isFileChooserShown:Z

    if-eqz v0, :cond_256

    .line 1303
    const-string v0, "EbookReader"

    const-string v1, "\u5173\u95ed\u6587\u4ef6\u9009\u62e9\u5668\uff0c\u56de\u5230\u7535\u5b50\u4e66\u9ed8\u8ba4\u754c\u9762"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->hideFileChooser()V

    goto/16 :goto_91

    .line 1306
    :cond_256
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isReadingBook:Z

    if-eqz v0, :cond_28a

    .line 1308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1309
    iget-wide v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->lastBackPressTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x7d0

    cmp-long v3, v4, v6

    if-gez v3, :cond_278

    .line 1311
    const-string v0, "EbookReader"

    const-string v1, "\u9605\u8bfb\u9875\u9762\u53cc\u51fb\u8fd4\u56de\uff0c\u5173\u95ed\u5f53\u524d\u4e66\u7c4d\uff0c\u56de\u5230\u7535\u5b50\u4e66\u9996\u9875"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->lastBackPressTime:J

    .line 1313
    invoke-virtual {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->closeCurrentBook()V

    goto/16 :goto_91

    .line 1317
    :cond_278
    iput-wide v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->lastBackPressTime:J

    .line 1318
    const-string v0, "EbookReader"

    const-string v1, "\u9605\u8bfb\u9875\u9762\u7b2c\u4e00\u6b21\u6309\u8fd4\u56de\u952e\uff0c\u663e\u793a\u63d0\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    const-string v1, "\u518d\u6309\u4e00\u6b21\u5173\u95ed\u5f53\u524d\u4e66\u7c4d"

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showToast(Ljava/lang/String;)V

    goto/16 :goto_91

    .line 1324
    :cond_28a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1325
    iget-wide v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->lastBackPressTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x7d0

    cmp-long v3, v4, v6

    if-gez v3, :cond_2a8

    .line 1327
    const-string v0, "EbookReader"

    const-string v1, "\u9996\u9875\u53cc\u51fb\u8fd4\u56de\uff0c\u9000\u51fa\u7535\u5b50\u4e66\u6a21\u5f0f"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->lastBackPressTime:J

    .line 1329
    invoke-virtual {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->openEbookReader()V

    goto/16 :goto_91

    .line 1333
    :cond_2a8
    iput-wide v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->lastBackPressTime:J

    .line 1334
    const-string v0, "EbookReader"

    const-string v1, "\u9996\u9875\u7b2c\u4e00\u6b21\u6309\u8fd4\u56de\u952e\uff0c\u663e\u793a\u63d0\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    const-string v1, "\u518d\u6309\u4e00\u6b21\u9000\u51fa\u7535\u5b50\u4e66\u6a21\u5f0f"

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showToast(Ljava/lang/String;)V

    goto/16 :goto_91

    .line 1346
    :cond_2ba
    sparse-switch p1, :sswitch_data_2fa

    .line 1360
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->confirmKeyLongPressHandled:Z

    if-eqz v0, :cond_2c6

    .line 1361
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0, v2}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showMenu(Z)V

    .line 1363
    :cond_2c6
    iput-boolean v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->confirmKeyLongPressHandled:Z

    .line 1364
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isMenuShown()Z

    move-result v2

    goto/16 :goto_91

    .line 1348
    :sswitch_2d0
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isMenuShown()Z

    move-result v0

    if-eqz v0, :cond_2df

    .line 1349
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0, v3}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showMenu(Z)V

    goto/16 :goto_91

    :cond_2df
    move v2, v3

    .line 1352
    goto/16 :goto_91

    .line 1354
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

    .line 1358
    :sswitch_2f2
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isMenuShown()Z

    move-result v2

    goto/16 :goto_91

    .line 1346
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

    .line 1069
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

    .line 1070
    invoke-interface {v4}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isMenuShown()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1069
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    iget-boolean v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    if-eqz v2, :cond_ab

    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isConfirmKey(I)Z

    move-result v2

    if-eqz v2, :cond_ab

    iget-boolean v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isOrganizingShelf:Z

    if-nez v2, :cond_ab

    .line 1075
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1076
    iget-wide v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->lastConfirmKeyPressTime:J

    sub-long v4, v2, v4

    .line 1078
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

    .line 1081
    const-wide/16 v6, 0x320

    cmp-long v4, v4, v6

    if-lez v4, :cond_8a

    .line 1082
    iput v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->confirmKeyClickCount:I

    .line 1085
    :cond_8a
    iget v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->confirmKeyClickCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->confirmKeyClickCount:I

    .line 1086
    iput-wide v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->lastConfirmKeyPressTime:J

    .line 1089
    iget v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->confirmKeyClickCount:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_a4

    .line 1090
    const-string v2, "EbookReader"

    const-string v3, "\u8fde\u51fb\u4e09\u6b21\u786e\u5b9a\u952e\uff0c\u9690\u85cf\u7535\u5b50\u4e66\u533a\u57df\uff08\u4e0d\u6e05\u7a7a\u4e66\u7c4d\u6570\u636e\uff09"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    iput v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->confirmKeyClickCount:I

    .line 1092
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->hideEbookPanel()V

    .line 1158
    :goto_a3
    return v1

    .line 1097
    :cond_a4
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isMenuShown()Z

    move-result v1

    goto :goto_a3

    .line 1101
    :cond_ab
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->controlTarget:Ljava/lang/String;

    const-string v3, "ebook"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c3

    .line 1102
    const-string v0, "EbookReader"

    const-string v1, "onKeyUp: \u63a7\u5236\u76ee\u6807\u4e0d\u662f\u7535\u5b50\u4e66\uff0c\u4e0d\u5904\u7406\u6309\u952e"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isMenuShown()Z

    move-result v1

    goto :goto_a3

    .line 1107
    :cond_c3
    invoke-virtual {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookReadingContent()Z

    move-result v2

    if-eqz v2, :cond_160

    .line 1108
    const-string v2, "EbookReader"

    const-string v3, "onKeyUp: \u5728\u7535\u5b50\u4e66\u9605\u8bfb\u5185\u5bb9\u9875\u9762"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_112

    .line 1112
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

    .line 1113
    invoke-virtual {v4}, Landroid/webkit/WebView;->getScrollY()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", contentHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    .line 1114
    invoke-virtual {v4}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1112
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :cond_112
    const/16 v2, 0x13

    if-ne p1, v2, :cond_129

    .line 1119
    const-string v2, "EbookReader"

    const-string v3, "onKeyUp: \u7535\u5b50\u4e66\u9605\u8bfb\u9875\u9762\uff1a\u5411\u4e0a\u6eda\u52a8"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    const/16 v3, -0xc8

    invoke-virtual {v2, v0, v3}, Landroid/webkit/WebView;->scrollBy(II)V

    .line 1121
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->scheduleSaveReadingProgress()V

    goto/16 :goto_a3

    .line 1125
    :cond_129
    const/16 v2, 0x14

    if-ne p1, v2, :cond_140

    .line 1126
    const-string v2, "EbookReader"

    const-string v3, "onKeyUp: \u7535\u5b50\u4e66\u9605\u8bfb\u9875\u9762\uff1a\u5411\u4e0b\u6eda\u52a8"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    const/16 v3, 0xc8

    invoke-virtual {v2, v0, v3}, Landroid/webkit/WebView;->scrollBy(II)V

    .line 1128
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->scheduleSaveReadingProgress()V

    goto/16 :goto_a3

    .line 1133
    :cond_140
    const/16 v2, 0x15

    if-ne p1, v2, :cond_150

    .line 1134
    const-string v0, "EbookReader"

    const-string v2, "onKeyUp: \u7535\u5b50\u4e66\u9605\u8bfb\u9875\u9762\uff1a\u5411\u4e0a\u7ffb\u9875\uff08\u5de6\u952e\uff09"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    invoke-direct {p0, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->handlePageTurn(Z)V

    goto/16 :goto_a3

    .line 1139
    :cond_150
    const/16 v2, 0x16

    if-ne p1, v2, :cond_160

    .line 1140
    const-string v2, "EbookReader"

    const-string v3, "onKeyUp: \u7535\u5b50\u4e66\u9605\u8bfb\u9875\u9762\uff1a\u5411\u4e0b\u7ffb\u9875\uff08\u53f3\u952e\uff09"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->handlePageTurn(Z)V

    goto/16 :goto_a3

    .line 1147
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

    .line 1148
    invoke-virtual {v2}, Landroid/webkit/WebView;->isShown()Z

    move-result v2

    if-nez v2, :cond_187

    :cond_17a
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    if-eqz v2, :cond_187

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    .line 1149
    invoke-virtual {v2}, Landroid/widget/ListView;->isShown()Z

    move-result v2

    if-eqz v2, :cond_187

    move v0, v1

    .line 1151
    :cond_187
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isConfirmKey(I)Z

    move-result v2

    if-eqz v2, :cond_19a

    iget-boolean v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->confirmKeyLongPressHandled:Z

    if-nez v2, :cond_19a

    .line 1153
    if-eqz v0, :cond_19a

    .line 1154
    iput-boolean v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->confirmKeyLongPressHandled:Z

    .line 1155
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showMenu(Z)V

    .line 1158
    :cond_19a
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isMenuShown()Z

    move-result v1

    goto/16 :goto_a3
.end method

.method public onMenuClosed()V
    .locals 2

    .prologue
    .line 1383
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->controlTarget:Ljava/lang/String;

    const-string v1, "ebook"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1384
    const-string v0, "EbookReader"

    const-string v1, "onMenuClosed: \u6062\u590d\u7126\u70b9\u5230\u7535\u5b50\u4e66\u533a\u57df"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isReadingBook:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_29

    .line 1390
    const-string v0, "EbookReader"

    const-string v1, "onMenuClosed: \u9605\u8bfb\u9875\u9762\uff0cWebView\u4fdd\u6301\u4e0d\u53ef\u805a\u7126\uff0c\u4e0d\u6062\u590d\u7126\u70b9"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    :cond_28
    :goto_28
    return-void

    .line 1391
    :cond_29
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1393
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$21;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$21;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_28
.end method

.method public onVideoSwitch()V
    .locals 6

    .prologue
    .line 1486
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    if-eqz v0, :cond_22

    .line 1487
    const-string v0, "EbookReader"

    const-string v1, "onVideoSwitch: \u7535\u5b50\u4e66\u533a\u57df\u5df2\u6253\u5f00\uff0c\u91cd\u65b0\u5e94\u7528\u89c6\u9891\u7f29\u5c0f"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1489
    if-eqz v0, :cond_22

    .line 1491
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$22;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$22;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/app/Activity;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1505
    :cond_22
    return-void
.end method

.method public openEbookFileChooser()V
    .locals 4

    .prologue
    .line 278
    const-string v0, "EbookReader"

    const-string v1, "openEbookFileChooser() called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 281
    if-nez v0, :cond_17

    .line 282
    const-string v0, "EbookReader"

    const-string v1, "Activity is null, cannot open file chooser"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :goto_16
    return-void

    .line 288
    :cond_17
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isMenuShown()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 289
    const-string v0, "EbookReader"

    const-string v1, "\u53f3\u4fa7\u83dc\u5355\u6b63\u5728\u663e\u793a\uff0c\u5148\u5173\u95ed\u83dc\u5355"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showMenu(Z)V

    .line 292
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$3;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$3;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_16

    .line 300
    :cond_3c
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showFileChooserInPanel()V

    goto :goto_16
.end method

.method public openEbookReader()V
    .locals 4

    .prologue
    .line 209
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

    .line 211
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    if-eqz v0, :cond_22

    .line 213
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->closeEbookPanel()V

    .line 235
    :goto_21
    return-void

    .line 216
    :cond_22
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ebook/util/EbookFileStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->reloadFromFile()V

    .line 218
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ensureStoragePermissionForEbook()V

    .line 220
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isMenuShown()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 221
    const-string v0, "EbookReader"

    const-string v1, "\u53f3\u4fa7\u83dc\u5355\u6b63\u5728\u663e\u793a\uff0c\u5148\u5173\u95ed\u83dc\u5355"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showMenu(Z)V

    .line 224
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$2;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_21

    .line 232
    :cond_57
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showEbookPanel()V

    goto :goto_21
.end method

.method public organizeBookshelf()V
    .locals 4

    .prologue
    .line 439
    const-string v0, "EbookReader"

    const-string v1, "\u6574\u7406\u4e66\u67b6\u83dc\u5355\u9879\u88ab\u70b9\u51fb"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isMenuShown()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 443
    const-string v0, "EbookReader"

    const-string v1, "\u53f3\u4fa7\u83dc\u5355\u6b63\u5728\u663e\u793a\uff0c\u5148\u5173\u95ed\u83dc\u5355"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showMenu(Z)V

    .line 445
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$4;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$4;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 454
    :goto_2b
    return-void

    .line 452
    :cond_2c
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showOrganizeShelfPage()V

    goto :goto_2b
.end method

.method public setEbookColorTheme(I)V
    .locals 3

    .prologue
    .line 981
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

    .line 984
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ebook/util/EbookFileStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->saveColorThemeIndex(I)V

    .line 985
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

    .line 988
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_48

    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isReadingBook:Z

    if-eqz v0, :cond_48

    .line 989
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->applyColorThemeToWebView(I)V

    .line 991
    :cond_48
    return-void
.end method

.method public setEbookFontSize(F)V
    .locals 3

    .prologue
    .line 967
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

    .line 970
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ebook/util/EbookFileStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->saveFontSize(F)V

    .line 971
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

    .line 974
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_48

    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isReadingBook:Z

    if-eqz v0, :cond_48

    .line 975
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->applyFontSizeToWebView(F)V

    .line 977
    :cond_48
    return-void
.end method

.method public setEbookPercent(I)V
    .locals 4

    .prologue
    .line 995
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

    .line 998
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_84

    .line 999
    if-ltz p1, :cond_23

    array-length v1, v0

    if-lt p1, v1, :cond_24

    .line 1022
    :cond_23
    :goto_23
    return-void

    .line 1003
    :cond_24
    aget v0, v0, p1

    .line 1004
    iput v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanelPercent:I

    .line 1007
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ebook/util/EbookFileStore;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->saveScreenPercent(I)V

    .line 1008
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

    .line 1011
    iget-boolean v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    if-eqz v1, :cond_64

    .line 1012
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$19;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$19;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1021
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

    .line 998
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
    .line 1026
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

    .line 1028
    if-ltz p1, :cond_1d

    const/4 v0, 0x3

    if-le p1, v0, :cond_1e

    .line 1054
    :cond_1d
    :goto_1d
    return-void

    .line 1032
    :cond_1e
    iput p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    .line 1035
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ebook/util/EbookFileStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->saveVideoPosition(I)V

    .line 1036
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    if-eqz v0, :cond_9b

    if-ltz p1, :cond_9b

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_9b

    .line 1037
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1038
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

    .line 1041
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    if-eqz v0, :cond_6c

    .line 1042
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$20;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$20;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1051
    :cond_6c
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    if-eqz v0, :cond_9e

    if-ltz p1, :cond_9e

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_9e

    .line 1052
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1053
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

    .line 1037
    :cond_9b
    const-string v0, "\u5de6\u4e0a"

    goto :goto_43

    .line 1052
    :cond_9e
    const-string v0, "\u5de6\u4e0a"

    goto :goto_82
.end method

.method public showChapterList()V
    .locals 4

    .prologue
    .line 939
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 940
    :cond_c
    const-string v0, "EbookReader"

    const-string v1, "\u65e0\u4e66\u7c4d\u6570\u636e\uff0c\u65e0\u6cd5\u663e\u793a\u7ae0\u8282\u5217\u8868"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    const-string v1, "\u65e0\u7ae0\u8282\u4fe1\u606f"

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showToast(Ljava/lang/String;)V

    .line 963
    :goto_1a
    return-void

    .line 945
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

    .line 946
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isChapterListShown:Z

    .line 949
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterNavigationStack:Ljava/util/Stack;

    .line 950
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parentChapterTitle:Ljava/lang/String;

    .line 953
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->getRootChapters()Ljava/util/List;

    move-result-object v0

    .line 954
    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterList:Ljava/util/List;

    .line 957
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$18;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$18;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1a
.end method

.method public switchControlTarget(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 335
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

    .line 337
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    if-nez v0, :cond_26

    .line 338
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u9762\u677f\u672a\u663e\u793a\uff0c\u65e0\u6cd5\u5207\u6362\u63a7\u5236\u76ee\u6807"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :goto_25
    return-void

    .line 342
    :cond_26
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->controlTarget:Ljava/lang/String;

    .line 348
    const-string v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 350
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    if-eqz v0, :cond_4a

    .line 351
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 352
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 353
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearFocus()V

    .line 354
    const-string v0, "EbookReader"

    const-string v1, "\u7981\u7528\u4e66\u67b6\u5217\u8868\u6240\u6709\u4ea4\u4e92"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_4a
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    if-eqz v0, :cond_64

    .line 357
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 358
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 359
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearFocus()V

    .line 360
    const-string v0, "EbookReader"

    const-string v1, "\u7981\u7528\u6574\u7406\u4e66\u67b6\u5217\u8868\u6240\u6709\u4ea4\u4e92"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_64
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    if-eqz v0, :cond_7e

    .line 363
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 364
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 365
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearFocus()V

    .line 366
    const-string v0, "EbookReader"

    const-string v1, "\u7981\u7528\u7ae0\u8282\u5217\u8868\u6240\u6709\u4ea4\u4e92"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_7e
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_93

    .line 370
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 371
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 372
    const-string v0, "EbookReader"

    const-string v1, "WebView\u4fdd\u6301\u53ef\u7528\uff0c\u4ec5\u7981\u7528\u7126\u70b9"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_93
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_a8

    .line 375
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 376
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 377
    const-string v0, "EbookReader"

    const-string v1, "\u7981\u7528\u7535\u5b50\u4e66\u9762\u677f\u6240\u6709\u4ea4\u4e92"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_a8
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->requestVideoFocus()V

    .line 423
    :cond_ad
    :goto_ad
    const-string v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17d

    .line 424
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    const-string v1, "\u9065\u63a7\u5668\u64cd\u4f5c\u5df2\u5207\u6362\u5230\u89c6\u9891"

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showToast(Ljava/lang/String;)V

    .line 429
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

    .line 382
    :cond_d6
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_f5

    .line 383
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 384
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 385
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 386
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 387
    const-string v0, "EbookReader"

    const-string v1, "\u542f\u7528\u7535\u5b50\u4e66\u9762\u677f\u6240\u6709\u4ea4\u4e92"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_f5
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    if-eqz v0, :cond_119

    .line 390
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 391
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 392
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setClickable(Z)V

    .line 393
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 394
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 395
    const-string v0, "EbookReader"

    const-string v1, "\u542f\u7528\u4e66\u67b6\u5217\u8868\u6240\u6709\u4ea4\u4e92"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_119
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    if-eqz v0, :cond_13d

    .line 398
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 399
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 400
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setClickable(Z)V

    .line 401
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 402
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 403
    const-string v0, "EbookReader"

    const-string v1, "\u542f\u7528\u6574\u7406\u4e66\u67b6\u5217\u8868\u6240\u6709\u4ea4\u4e92"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_13d
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    if-eqz v0, :cond_161

    .line 406
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 407
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 408
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setClickable(Z)V

    .line 409
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 410
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 411
    const-string v0, "EbookReader"

    const-string v1, "\u542f\u7528\u7ae0\u8282\u5217\u8868\u6240\u6709\u4ea4\u4e92"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_161
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_ad

    .line 415
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 416
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 417
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setEnabled(Z)V

    .line 418
    const-string v0, "EbookReader"

    const-string v1, "\u542f\u7528WebView\u6240\u6709\u4ea4\u4e92"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ad

    .line 426
    :cond_17d
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    const-string v1, "\u9065\u63a7\u5668\u64cd\u4f5c\u5df2\u5207\u6362\u5230\u7535\u5b50\u4e66"

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showToast(Ljava/lang/String;)V

    goto/16 :goto_bc
.end method
