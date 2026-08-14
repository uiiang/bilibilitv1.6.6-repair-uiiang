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

.field private volatile isParsingCancelled:Z

.field private isReadingBook:Z

.field private lastBackPressTime:J

.field private lastConfirmKeyPressTime:J

.field private loadingProgressBar:Landroid/widget/ProgressBar;

.field private loadingTextView:Landroid/widget/TextView;

.field private menuOpenedByKeyDown:Z

.field private originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

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

    .line 136
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
    iput-boolean v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isFileChooserShown:Z

    .line 55
    iput-wide v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->lastBackPressTime:J

    .line 57
    iput-boolean v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isLoadingEbook:Z

    .line 58
    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadingProgressBar:Landroid/widget/ProgressBar;

    .line 59
    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadingTextView:Landroid/widget/TextView;

    .line 60
    iput-boolean v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isReadingBook:Z

    .line 63
    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    .line 64
    iput v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterIndex:I

    .line 65
    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    .line 66
    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    .line 67
    iput-boolean v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isChapterListShown:Z

    .line 68
    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    .line 69
    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    .line 70
    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    .line 71
    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfItems:Ljava/util/List;

    .line 72
    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBookFilePath:Ljava/lang/String;

    .line 73
    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->fileListView:Landroid/widget/ListView;

    .line 77
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->cachedChapters:Ljava/util/LinkedList;

    .line 97
    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressRunnable:Ljava/lang/Runnable;

    .line 98
    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressHandler:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;

    .line 102
    iput-boolean v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isParsingCancelled:Z

    .line 103
    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parsingThread:Ljava/lang/Thread;

    .line 106
    iput v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->confirmKeyClickCount:I

    .line 107
    iput-wide v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->lastConfirmKeyPressTime:J

    .line 111
    iput-boolean v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->confirmKeyLongPressHandled:Z

    .line 114
    iput-boolean v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->menuOpenedByKeyDown:Z

    .line 121
    const/16 v0, 0x1e

    iput v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanelPercent:I

    .line 122
    iput v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    .line 123
    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    .line 126
    const-string v0, "video"

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->controlTarget:Ljava/lang/String;

    .line 129
    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterNavigationStack:Ljava/util/Stack;

    .line 130
    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterList:Ljava/util/List;

    .line 131
    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parentChapterTitle:Ljava/lang/String;

    .line 137
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    .line 138
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
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->applyEbookPanelPercent()V

    return-void
.end method

.method static synthetic access$1100(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->applyVideoPosition()V

    return-void
.end method

.method static synthetic access$1200(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/app/Activity;II)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->shrinkVideoView(Landroid/app/Activity;II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/app/Activity;II)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->shrinkDanmakuView(Landroid/app/Activity;II)V

    return-void
.end method

.method static synthetic access$1500(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isLoadingEbook:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showLoadingIndicator()V

    return-void
.end method

.method static synthetic access$1700(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parseAndDisplayEbook(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadFileList(Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showFileChooserInPanel()V

    return-void
.end method

.method static synthetic access$2000(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadingProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadingProgressBar:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadingTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadingTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isParsingCancelled:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->hideLoadingIndicator()V

    return-void
.end method

.method static synthetic access$2400(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Lcom/bilibili/tv/ebook/model/Book;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->restoreReadingProgress(Lcom/bilibili/tv/ebook/model/Book;)V

    return-void
.end method

.method static synthetic access$2502(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parsingThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->scheduleSaveReadingProgress()V

    return-void
.end method

.method static synthetic access$2700(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Z)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->handlePageTurn(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;F)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->applyFontSizeToWebView(F)V

    return-void
.end method

.method static synthetic access$2900(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;I)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->applyColorThemeToWebView(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/ebook/util/EbookCacheManager;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parentChapterTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parentChapterTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Lcom/bilibili/tv/ebook/model/Chapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->getChildChapters(Lcom/bilibili/tv/ebook/model/Chapter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterIndex:I

    return v0
.end method

.method static synthetic access$3500(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Ljava/util/Stack;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterNavigationStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/ebook/model/Book;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Lcom/bilibili/tv/ebook/model/Book;I)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->hideChapterList()V

    return-void
.end method

.method static synthetic access$3902(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/ebook/util/BookshelfManager;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->deleteBookCacheFiles(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Ljava/util/List;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showBookshelfOrFileChooser()V

    return-void
.end method

.method static synthetic access$700(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/ebook/ui/EbookHost;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    return-object v0
.end method

.method static synthetic access$800(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Ljava/util/List;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$802(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$900(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->createChapterListView(Ljava/util/List;)V

    return-void
.end method

.method private addToBookshelf(Lcom/bilibili/tv/ebook/model/Book;Lcom/bilibili/tv/ebook/model/ReadingProgress;)V
    .locals 2

    .prologue
    .line 3804
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    if-nez v0, :cond_7

    .line 3810
    :cond_6
    :goto_6
    return-void

    .line 3809
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

    .line 1973
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_c

    .line 2005
    :goto_b
    return-void

    .line 1978
    :cond_c
    invoke-static {}, Lcom/bilibili/tv/ebook/model/ReaderTheme;->getBuiltInThemes()[Lcom/bilibili/tv/ebook/model/ReaderTheme;

    move-result-object v0

    aget-object v0, v0, p1

    .line 1979
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

    .line 1980
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/ReaderTheme;->getBackgroundColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \u6587\u5b57\u8272: #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1981
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/ReaderTheme;->getTextColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1979
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
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

    .line 1985
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

    .line 1988
    const-string v2, "document.body.style.backgroundColor=\'%s\';document.body.style.color=\'%s\';"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1993
    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v2, v8}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 1996
    const-string v2, "var elements = document.querySelectorAll(\'*\');for (var i = 0; i < elements.length; i++) {  elements[i].style.backgroundColor=\'%s\';  elements[i].style.color=\'%s\';}"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2004
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0, v8}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto/16 :goto_b
.end method

.method private applyEbookPanelPercent()V
    .locals 5

    .prologue
    .line 3122
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3123
    if-eqz v0, :cond_c

    iget-boolean v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    if-nez v1, :cond_d

    .line 3150
    :cond_c
    :goto_c
    return-void

    .line 3127
    :cond_d
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3128
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3129
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3130
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 3133
    iget v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanelPercent:I

    mul-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x64

    .line 3134
    sub-int/2addr v0, v1

    .line 3136
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

    .line 3140
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->updateVideoViewWidth(I)V

    .line 3143
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->updateDanmakuViewWidth(I)V

    .line 3146
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->updateSubtitleViewWidth(I)V

    .line 3149
    invoke-direct {p0, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->updateEbookPanelWidth(I)V

    goto :goto_c
.end method

.method private applyFontSizeToWebView(F)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1949
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_8

    .line 1967
    :goto_7
    return-void

    .line 1953
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

    .line 1956
    const-string v0, "document.body.style.fontSize=\'%dpx\';"

    new-array v1, v4, [Ljava/lang/Object;

    float-to-int v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1957
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0, v5}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 1960
    const-string v0, "var elements = document.querySelectorAll(\'p, div, span\');for (var i = 0; i < elements.length; i++) {  elements[i].style.fontSize = \'%dpx\';}"

    new-array v1, v4, [Ljava/lang/Object;

    float-to-int v2, p1

    .line 1964
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 1960
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1966
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0, v5}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_7
.end method

.method private applyVideoPosition()V
    .locals 6

    .prologue
    .line 3087
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3088
    if-eqz v0, :cond_c

    iget-boolean v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    if-nez v1, :cond_d

    .line 3116
    :cond_c
    :goto_c
    return-void

    .line 3092
    :cond_d
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3093
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3094
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3095
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 3097
    iget v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanelPercent:I

    mul-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x64

    .line 3098
    sub-int v2, v0, v1

    .line 3100
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    if-eqz v0, :cond_7d

    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ltz v0, :cond_7d

    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7d

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    iget v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    .line 3101
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3102
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

    .line 3106
    invoke-direct {p0, v2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->updateVideoViewWidth(I)V

    .line 3109
    invoke-direct {p0, v2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->updateDanmakuViewWidth(I)V

    .line 3112
    invoke-direct {p0, v2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->updateSubtitleViewWidth(I)V

    .line 3115
    invoke-direct {p0, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->updateEbookPanelWidth(I)V

    goto :goto_c

    .line 3101
    :cond_7d
    const-string v0, "\u5de6\u4e0a"

    goto :goto_44
.end method

.method private cancelParsingTask()V
    .locals 1

    .prologue
    .line 1693
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isParsingCancelled:Z

    .line 1694
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parsingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_f

    .line 1695
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parsingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1696
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parsingThread:Ljava/lang/Thread;

    .line 1698
    :cond_f
    return-void
.end method

.method private clearChapterCache()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3562
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

    .line 3563
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ebook/model/Chapter;->setHtmlContent(Ljava/lang/String;)V

    .line 3564
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ebook/model/Chapter;->setPlainTextContent(Ljava/lang/String;)V

    goto :goto_7

    .line 3566
    :cond_1a
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->cachedChapters:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 3567
    const-string v0, "EbookReader"

    const-string v1, "\u6240\u6709\u7ae0\u8282\u7f13\u5b58\u5df2\u6e05\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3568
    return-void
.end method

.method private closeEbookPanel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2685
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2686
    if-nez v0, :cond_12

    .line 2687
    const-string v0, "EbookReader"

    const-string v1, "Activity is null, cannot close ebook panel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2769
    :goto_11
    return-void

    .line 2691
    :cond_12
    const-string v1, "EbookReader"

    const-string v2, "\u5f00\u59cb\u5173\u95ed\u7535\u5b50\u4e66\u9762\u677f"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2694
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->cancelParsingTask()V

    .line 2697
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveReadingProgressImmediately()V

    .line 2700
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_31

    .line 2701
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2702
    const-string v1, "EbookReader"

    const-string v2, "\u7070\u8272\u80cc\u666f\u9762\u677f\u5df2\u9690\u85cf"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2706
    :cond_31
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->restoreVideoView(Landroid/app/Activity;)V

    .line 2709
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->destroyEbookWebView()V

    .line 2713
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_53

    .line 2714
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2715
    if-eqz v0, :cond_51

    .line 2716
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2717
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u9762\u677f\u5df2\u4ece\u7236\u5bb9\u5668\u79fb\u9664"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2719
    :cond_51
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    .line 2723
    :cond_53
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->clearChapterCache()V

    .line 2726
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressHandler:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;

    if-eqz v0, :cond_61

    .line 2727
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressHandler:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2728
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressHandler:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;

    .line 2730
    :cond_61
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_67

    .line 2731
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressRunnable:Ljava/lang/Runnable;

    .line 2735
    :cond_67
    iput-boolean v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    .line 2736
    iput-boolean v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isChapterListShown:Z

    .line 2737
    iput-boolean v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isFileChooserShown:Z

    .line 2738
    iput-boolean v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isLoadingEbook:Z

    .line 2739
    iput-boolean v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isReadingBook:Z

    .line 2740
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    .line 2741
    iput v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterIndex:I

    .line 2742
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    .line 2745
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    if-eqz v0, :cond_87

    .line 2746
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 2747
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2748
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    .line 2750
    :cond_87
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    if-eqz v0, :cond_97

    .line 2751
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 2752
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2753
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    .line 2756
    :cond_97
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadingProgressBar:Landroid/widget/ProgressBar;

    .line 2757
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadingTextView:Landroid/widget/TextView;

    .line 2758
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->lastBackPressTime:J

    .line 2759
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBookFilePath:Ljava/lang/String;

    .line 2760
    const-string v0, "video"

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->controlTarget:Ljava/lang/String;

    .line 2764
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    .line 2765
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    .line 2766
    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfItems:Ljava/util/List;

    .line 2768
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
    .line 2060
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2061
    if-nez v0, :cond_10

    .line 2062
    const-string v0, "EbookReader"

    const-string v1, "Activity is null, cannot create chapter list"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    :goto_f
    return-void

    .line 2065
    :cond_10
    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;

    invoke-direct {v1, p0, v0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/app/Activity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_f
.end method

.method private deleteBookCacheFiles(Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 3819
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3820
    if-eqz p1, :cond_a

    if-nez v0, :cond_12

    .line 3821
    :cond_a
    const-string v0, "EbookReader"

    const-string v1, "bookId\u6216Context\u4e3a\u7a7a\uff0c\u65e0\u6cd5\u5220\u9664\u7f13\u5b58"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3881
    :goto_11
    return-void

    .line 3826
    :cond_12
    :try_start_12
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    .line 3827
    const/4 v2, 0x0

    .line 3828
    const-wide/16 v0, 0x0

    .line 3831
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

    .line 3832
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 3833
    invoke-direct {p0, v4}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->getDirectorySize(Ljava/io/File;)J

    move-result-wide v6

    .line 3834
    invoke-direct {p0, v4}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->deleteDirectory(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 3835
    const/4 v2, 0x1

    .line 3836
    add-long/2addr v0, v6

    .line 3837
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

    .line 3838
    invoke-direct {p0, v6, v7}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->formatFileSize(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3837
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3843
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

    .line 3844
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_c2

    .line 3845
    invoke-direct {p0, v4}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->getDirectorySize(Ljava/io/File;)J

    move-result-wide v6

    .line 3846
    invoke-direct {p0, v4}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->deleteDirectory(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_c2

    .line 3847
    add-int/lit8 v2, v2, 0x1

    .line 3848
    add-long/2addr v0, v6

    .line 3849
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

    .line 3850
    invoke-direct {p0, v6, v7}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->formatFileSize(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3849
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3855
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

    .line 3856
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_10f

    .line 3857
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 3858
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_10f

    .line 3859
    add-int/lit8 v2, v2, 0x1

    .line 3860
    add-long/2addr v0, v6

    .line 3861
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

    .line 3866
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

    .line 3867
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_15c

    .line 3868
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 3869
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_15c

    .line 3870
    add-int/lit8 v2, v2, 0x1

    .line 3871
    add-long/2addr v0, v6

    .line 3872
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

    .line 3876
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

    .line 3878
    :catch_184
    move-exception v0

    .line 3879
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

    .line 3887
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_a

    .line 3900
    :cond_9
    :goto_9
    return v0

    .line 3891
    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 3892
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 3893
    if-eqz v1, :cond_21

    .line 3894
    array-length v2, v1

    :goto_17
    if-ge v0, v2, :cond_21

    aget-object v3, v1, v0

    .line 3895
    invoke-direct {p0, v3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->deleteDirectory(Ljava/io/File;)Z

    .line 3894
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 3900
    :cond_21
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_9
.end method

.method private destroyEbookWebView()V
    .locals 4

    .prologue
    .line 2776
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_56

    .line 2777
    const-string v0, "EbookReader"

    const-string v1, "\u5f00\u59cb\u9500\u6bc1WebView\uff0c\u91ca\u653e\u5185\u5b58"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2780
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1d

    .line 2781
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2782
    const-string v0, "EbookReader"

    const-string v1, "WebView\u5df2\u4ece\u7236\u5bb9\u5668\u79fb\u9664"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2787
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 2788
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2789
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 2790
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 2791
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 2792
    const-string v0, "EbookReader"

    const-string v1, "WebView\u7f13\u5b58\u548c\u5386\u53f2\u5df2\u6e05\u9664"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_40} :catch_57

    .line 2799
    :goto_40
    :try_start_40
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 2800
    const-string v0, "EbookReader"

    const-string v1, "WebView\u5df2\u9500\u6bc1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4c} :catch_75

    .line 2805
    :goto_4c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    .line 2806
    const-string v0, "EbookReader"

    const-string v1, "WebView\u5f15\u7528\u5df2\u6e05\u9664"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2808
    :cond_56
    return-void

    .line 2793
    :catch_57
    move-exception v0

    .line 2794
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

    .line 2801
    :catch_75
    move-exception v0

    .line 2802
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
    .line 1706
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;I)V

    .line 1707
    return-void
.end method

.method private displayBookContent(Lcom/bilibili/tv/ebook/model/Book;I)V
    .locals 2

    .prologue
    .line 1713
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;IZI)V

    .line 1714
    return-void
.end method

.method private displayBookContent(Lcom/bilibili/tv/ebook/model/Book;IZ)V
    .locals 1

    .prologue
    .line 1723
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;IZI)V

    .line 1724
    return-void
.end method

.method private displayBookContent(Lcom/bilibili/tv/ebook/model/Book;IZI)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 1734
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1735
    :cond_16
    const-string v0, "EbookReader"

    const-string v1, "\u4e66\u7c4d\u65e0\u7ae0\u8282\u5185\u5bb9"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    const-string v1, "\u4e66\u7c4d\u5185\u5bb9\u4e3a\u7a7a"

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showToast(Ljava/lang/String;)V

    .line 1943
    :goto_24
    return-void

    .line 1741
    :cond_25
    iput-boolean v7, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isFileChooserShown:Z

    .line 1742
    iput-boolean v7, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isChapterListShown:Z

    .line 1743
    const-string v0, "EbookReader"

    const-string v1, "\u91cd\u7f6e\u72b6\u6001\u6807\u5fd7: isFileChooserShown=false, isChapterListShown=false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    .line 1747
    iput p2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterIndex:I

    .line 1748
    iput-boolean v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isReadingBook:Z

    .line 1750
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

    .line 1751
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

    .line 1750
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_8a

    .line 1756
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1757
    const-string v0, "EbookReader"

    const-string v1, "\u5df2\u6e05\u7a7a\u7535\u5b50\u4e66\u9762\u677f"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    :cond_8a
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->destroyEbookWebView()V

    .line 1765
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1766
    if-nez v0, :cond_9d

    .line 1767
    const-string v0, "EbookReader"

    const-string v1, "Activity is null, cannot display book content"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 1770
    :cond_9d
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    .line 1771
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1775
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1778
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 1779
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1780
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 1781
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 1782
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 1785
    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 1786
    sget-object v1, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 1789
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 1790
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 1794
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$23;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$23;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1842
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_e7

    .line 1843
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1847
    :cond_e7
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/bilibili/tv/ebook/model/Chapter;

    .line 1848
    invoke-virtual {v6}, Lcom/bilibili/tv/ebook/model/Chapter;->getHtmlContent()Ljava/lang/String;

    move-result-object v0

    .line 1852
    if-eqz v0, :cond_fe

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_122

    .line 1853
    :cond_fe
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

    .line 1854
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getExtractionPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadChapterContentFromFile(Lcom/bilibili/tv/ebook/model/Chapter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1857
    :cond_122
    if-eqz v0, :cond_12a

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_147

    .line 1858
    :cond_12a
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

    .line 1862
    :cond_147
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ebook/util/EbookFileStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getFontSize()F

    move-result v1

    .line 1863
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

    .line 1866
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

    .line 1874
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24;

    invoke-direct {v1, p0, p3, p4}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;ZI)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1926
    invoke-virtual {v6}, Lcom/bilibili/tv/ebook/model/Chapter;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    .line 1927
    if-eqz v1, :cond_1a7

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e6

    .line 1930
    :cond_1a7
    const-string v0, "EbookReader"

    const-string v1, "\u7ae0\u8282\u6ca1\u6709baseUrl\uff0c\u4f7f\u7528null\u4f5c\u4e3abaseUrl"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v5

    .line 1935
    :goto_1af
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1939
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 1940
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 1942
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

    goto/16 :goto_24

    .line 1932
    :cond_1e6
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

    goto :goto_1af
.end method

.method private dumpViewHierarchy(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 2617
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2618
    if-nez v0, :cond_15

    .line 2619
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2621
    :cond_15
    const-string v1, "EbookReader"

    const-string v2, "===== View\u5c42\u7ea7\u7ed3\u6784 ====="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2622
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->dumpViewHierarchyRecursive(Landroid/view/ViewGroup;I)V

    .line 2623
    const-string v0, "EbookReader"

    const-string v1, "===== View\u5c42\u7ea7\u7ed3\u6784\u7ed3\u675f ====="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2624
    return-void
.end method

.method private dumpViewHierarchyRecursive(Landroid/view/ViewGroup;I)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 2630
    const-string v2, ""

    move v1, v0

    move-object v3, v2

    .line 2631
    :goto_5
    if-ge v1, p2, :cond_1e

    .line 2632
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2631
    add-int/lit8 v1, v1, 0x1

    move-object v3, v2

    goto :goto_5

    :cond_1e
    move v2, v0

    .line 2634
    :goto_1f
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_b6

    .line 2635
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2636
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 2637
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

    .line 2638
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

    .line 2640
    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_ab

    .line 2641
    check-cast v1, Landroid/view/ViewGroup;

    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, v1, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->dumpViewHierarchyRecursive(Landroid/view/ViewGroup;I)V

    .line 2634
    :cond_ab
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1f

    .line 2637
    :cond_b0
    const-string v0, ""

    goto :goto_4e

    .line 2638
    :cond_b3
    const-string v0, ""

    goto :goto_95

    .line 2644
    :cond_b6
    return-void
.end method

.method private ensureStoragePermissionForEbook()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 222
    :try_start_2
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v2}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 223
    if-eqz v2, :cond_57

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 224
    invoke-virtual {v2, v3}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_57

    .line 226
    :goto_12
    if-nez v0, :cond_3c

    if-eqz v2, :cond_3c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3c

    .line 227
    const-string v0, "EbookReader"

    const-string v1, "\u5b58\u50a8\u6743\u9650\u672a\u6388\u4e88\uff0c\u81ea\u52a8\u7533\u8bf7\u8bfb\u5199\u6743\u9650"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
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

    .line 235
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    const-string v1, "\u8bf7\u5141\u8bb8\u5b58\u50a8\u6743\u9650\uff0c\u4e66\u67b6\u548c\u9605\u8bfb\u8fdb\u5ea6\u5c06\u4fdd\u5b58\u5230 Download \u76ee\u5f55"

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showToast(Ljava/lang/String;)V

    .line 237
    :cond_3c
    invoke-static {}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->isExternalWritable()Z

    move-result v0

    if-nez v0, :cond_56

    .line 239
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_56

    .line 240
    const-string v0, "EbookReader"

    const-string v1, "\u672a\u6388\u4e88\u6240\u6709\u6587\u4ef6\u8bbf\u95ee\u6743\u9650\uff0c\u4e66\u67b6/\u8fdb\u5ea6\u5c06\u4fdd\u5b58\u5728\u5e94\u7528\u5185\u90e8\uff08\u65e0\u6cd5\u8de8APP\u5171\u4eab\uff09"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    const-string v1, "\u8bf7\u6388\u4e88\u201c\u6240\u6709\u6587\u4ef6\u8bbf\u95ee\u201d\u6743\u9650\uff08\u7cfb\u7edf\u8bbe\u7f6e\u2192\u5e94\u7528\u2192\u6743\u9650\uff09\uff0c\u4e66\u67b6\u548c\u8fdb\u5ea6\u624d\u80fd\u8de8APP\u5171\u4eab"

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showToast(Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_56} :catch_59

    .line 247
    :cond_56
    :goto_56
    return-void

    :cond_57
    move v0, v1

    .line 224
    goto :goto_12

    .line 244
    :catch_59
    move-exception v0

    .line 245
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

    .line 3242
    move v1, v2

    :goto_5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_b5

    .line 3243
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3246
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    .line 3247
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v6

    .line 3249
    const-string v3, ""

    .line 3250
    if-lez v6, :cond_27

    .line 3252
    :try_start_1f
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;
    :try_end_26
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1f .. :try_end_26} :catch_b6

    move-result-object v3

    .line 3258
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

    .line 3259
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_47

    const-string v5, "\u5f39\u5e55"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 3261
    :cond_47
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 3262
    if-eqz v3, :cond_6c

    .line 3264
    iget v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-eqz v3, :cond_55

    iget v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v3, v4, :cond_79

    :cond_55
    move v3, v4

    .line 3266
    :goto_56
    instance-of v5, p1, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_88

    .line 3267
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, p2, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3271
    if-eqz v3, :cond_7e

    .line 3273
    iget v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-nez v3, :cond_7b

    .line 3274
    const/16 v3, 0x33

    .line 3286
    :goto_67
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3287
    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3309
    :cond_6c
    :goto_6c
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_75

    .line 3310
    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->findAndUpdateDanmakuView(Landroid/view/ViewGroup;I)V

    .line 3242
    :cond_75
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_79
    move v3, v2

    .line 3264
    goto :goto_56

    .line 3276
    :cond_7b
    const/16 v3, 0x53

    goto :goto_67

    .line 3280
    :cond_7e
    iget v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v3, v9, :cond_85

    .line 3281
    const/16 v3, 0x35

    goto :goto_67

    .line 3283
    :cond_85
    const/16 v3, 0x55

    goto :goto_67

    .line 3288
    :cond_88
    instance-of v5, p1, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_6c

    .line 3289
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, p2, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3292
    if-eqz v3, :cond_a9

    .line 3293
    const/16 v3, 0x9

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3298
    :goto_98
    iget v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-eqz v3, :cond_a0

    iget v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v3, v9, :cond_af

    .line 3299
    :cond_a0
    const/16 v3, 0xa

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3303
    :goto_a5
    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6c

    .line 3295
    :cond_a9
    const/16 v3, 0xb

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_98

    .line 3301
    :cond_af
    const/16 v3, 0xc

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_a5

    .line 3313
    :cond_b5
    return-void

    .line 3253
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

    .line 3334
    move v1, v2

    :goto_5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_d6

    .line 3335
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3338
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    .line 3339
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 3340
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v7

    .line 3342
    const-string v3, ""

    .line 3343
    if-lez v7, :cond_2f

    .line 3345
    :try_start_27
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;
    :try_end_2e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_27 .. :try_end_2e} :catch_d7

    move-result-object v3

    .line 3351
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

    .line 3352
    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_67

    const-string v5, "subtitle"

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_67

    const-string v5, "subtitle"

    .line 3353
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_67

    const-string v5, "\u5b57\u5e55"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_67

    const-string v5, "exo_subtitles"

    .line 3354
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 3356
    :cond_67
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 3357
    if-eqz v3, :cond_8c

    .line 3359
    iget v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-eqz v3, :cond_75

    iget v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v3, v4, :cond_9a

    :cond_75
    move v3, v4

    .line 3361
    :goto_76
    instance-of v5, p1, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_a9

    .line 3362
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, p2, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3366
    if-eqz v3, :cond_9f

    .line 3368
    iget v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-nez v3, :cond_9c

    .line 3369
    const/16 v3, 0x33

    .line 3381
    :goto_87
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3382
    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3404
    :cond_8c
    :goto_8c
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_95

    .line 3405
    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->findAndUpdateSubtitleView(Landroid/view/ViewGroup;I)V

    .line 3334
    :cond_95
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_5

    :cond_9a
    move v3, v2

    .line 3359
    goto :goto_76

    .line 3371
    :cond_9c
    const/16 v3, 0x53

    goto :goto_87

    .line 3375
    :cond_9f
    iget v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v3, v10, :cond_a6

    .line 3376
    const/16 v3, 0x35

    goto :goto_87

    .line 3378
    :cond_a6
    const/16 v3, 0x55

    goto :goto_87

    .line 3383
    :cond_a9
    instance-of v5, p1, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_8c

    .line 3384
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, p2, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3387
    if-eqz v3, :cond_ca

    .line 3388
    const/16 v3, 0x9

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3393
    :goto_b9
    iget v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-eqz v3, :cond_c1

    iget v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v3, v10, :cond_d0

    .line 3394
    :cond_c1
    const/16 v3, 0xa

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3398
    :goto_c6
    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8c

    .line 3390
    :cond_ca
    const/16 v3, 0xb

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_b9

    .line 3396
    :cond_d0
    const/16 v3, 0xc

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_c6

    .line 3408
    :cond_d6
    return-void

    .line 3346
    :catch_d7
    move-exception v7

    goto/16 :goto_2f
.end method

.method private findFileRecursively(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 3637
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_8

    .line 3660
    :cond_7
    :goto_7
    return-object v0

    .line 3642
    :cond_8
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3643
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_15

    move-object v0, v1

    .line 3644
    goto :goto_7

    .line 3648
    :cond_15
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 3649
    if-eqz v3, :cond_7

    .line 3650
    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1e
    if-ge v2, v4, :cond_7

    aget-object v1, v3, v2

    .line 3651
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_30

    .line 3652
    invoke-direct {p0, v1, p2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->findFileRecursively(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 3653
    if-eqz v1, :cond_30

    move-object v0, v1

    .line 3654
    goto :goto_7

    .line 3650
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

    .line 3930
    const-wide/16 v0, 0x400

    cmp-long v0, p1, v0

    if-gez v0, :cond_1c

    .line 3931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3937
    :goto_1b
    return-object v0

    .line 3932
    :cond_1c
    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-gez v0, :cond_36

    .line 3933
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

    .line 3934
    :cond_36
    const-wide/32 v0, 0x40000000

    cmp-long v0, p1, v0

    if-gez v0, :cond_50

    .line 3935
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

    .line 3937
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
    .line 2030
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2031
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v3

    .line 2033
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Chapter;->getChapterIndex()I

    move-result v0

    .line 2034
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Chapter;->getDepth()I

    move-result v4

    .line 2037
    add-int/lit8 v0, v0, 0x1

    move v1, v0

    :goto_16
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_33

    .line 2038
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ebook/model/Chapter;

    .line 2039
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getDepth()I

    move-result v5

    .line 2042
    add-int/lit8 v6, v4, 0x1

    if-ne v5, v6, :cond_31

    .line 2043
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2037
    :cond_2d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_16

    .line 2046
    :cond_31
    if-gt v5, v4, :cond_2d

    .line 2051
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

    .line 2052
    return-object v2
.end method

.method private getDirectorySize(Ljava/io/File;)J
    .locals 8

    .prologue
    const-wide/16 v0, 0x0

    .line 3907
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_b

    .line 3923
    :cond_a
    :goto_a
    return-wide v0

    .line 3912
    :cond_b
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 3913
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 3914
    if-eqz v3, :cond_a

    .line 3915
    array-length v4, v3

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v4, :cond_a

    aget-object v5, v3, v2

    .line 3916
    invoke-direct {p0, v5}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->getDirectorySize(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 3915
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 3920
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
    .line 2013
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2014
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v0

    .line 2016
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

    .line 2017
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getDepth()I

    move-result v3

    if-nez v3, :cond_f

    .line 2018
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 2022
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

    .line 2023
    return-object v1
.end method

.method private getShrinkVideoHeight(I)I
    .locals 1

    .prologue
    .line 2412
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isLiveMode()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2413
    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanelPercent:I

    rsub-int/lit8 v0, v0, 0x64

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x64

    .line 2415
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

    .line 3452
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    if-nez v2, :cond_10

    .line 3453
    const-string v0, "EbookReader"

    const-string v1, "handlePageTurn: WebView\u4e3a\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3530
    :goto_f
    return-void

    .line 3457
    :cond_10
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getHeight()I

    move-result v3

    .line 3458
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollY()I

    move-result v4

    .line 3459
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v5

    .line 3461
    if-eqz p1, :cond_b6

    .line 3463
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

    .line 3466
    if-nez v4, :cond_69

    .line 3468
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    if-eqz v1, :cond_61

    iget v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterIndex:I

    if-lez v1, :cond_61

    .line 3469
    const-string v1, "EbookReader"

    const-string v2, "handlePageTurn: \u5230\u8fbe\u7ae0\u8282\u9876\u90e8\uff0c\u8df3\u8f6c\u5230\u4e0a\u4e00\u7ae0\u8282\u7684\u5e95\u90e8"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3470
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    iget v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterIndex:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v1, v2, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;IZ)V

    goto :goto_f

    .line 3473
    :cond_61
    const-string v0, "EbookReader"

    const-string v1, "handlePageTurn: \u5df2\u7ecf\u5728\u7b2c\u4e00\u7ae0\uff0c\u65e0\u6cd5\u5411\u524d\u7ffb\u9875"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 3479
    :cond_69
    if-lez v3, :cond_a7

    .line 3480
    int-to-double v4, v3

    mul-double/2addr v4, v8

    double-to-int v0, v4

    .line 3481
    sub-int v2, v3, v0

    .line 3482
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

    .line 3483
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->scrollBy(II)V

    .line 3489
    :goto_a2
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->scheduleSaveReadingProgress()V

    goto/16 :goto_f

    .line 3486
    :cond_a7
    const-string v0, "EbookReader"

    const-string v2, "handlePageTurn: WebView height\u4e3a0\uff0c\u4f7f\u7528\u9ed8\u8ba4\u503c800"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3487
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    const/16 v2, -0x320

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->scrollBy(II)V

    goto :goto_a2

    .line 3492
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

    .line 3496
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v2}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 3497
    if-eqz v2, :cond_129

    .line 3498
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 3500
    :goto_f4
    int-to-float v5, v5

    mul-float/2addr v2, v5

    float-to-int v2, v2

    .line 3503
    int-to-double v6, v3

    mul-double/2addr v6, v8

    double-to-int v5, v6

    .line 3504
    sub-int v6, v3, v5

    .line 3505
    add-int/2addr v4, v3

    add-int/lit8 v2, v2, -0xa

    if-lt v4, v2, :cond_12c

    .line 3507
    :goto_101
    if-eqz v0, :cond_137

    .line 3509
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

    .line 3510
    const-string v0, "EbookReader"

    const-string v2, "handlePageTurn: \u5230\u8fbe\u7ae0\u8282\u5e95\u90e8\uff0c\u8df3\u8f6c\u5230\u4e0b\u4e00\u7ae0\u8282\u7684\u9876\u90e8"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3511
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    iget v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v0, v2, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;IZ)V

    goto/16 :goto_f

    .line 3498
    :cond_129
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_f4

    :cond_12c
    move v0, v1

    .line 3505
    goto :goto_101

    .line 3514
    :cond_12e
    const-string v0, "EbookReader"

    const-string v1, "handlePageTurn: \u5df2\u7ecf\u5728\u6700\u540e\u4e00\u7ae0\uff0c\u65e0\u6cd5\u5411\u540e\u7ffb\u9875"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 3520
    :cond_137
    if-lez v3, :cond_16f

    .line 3521
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

    .line 3522
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, v6}, Landroid/webkit/WebView;->scrollBy(II)V

    .line 3528
    :goto_16a
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->scheduleSaveReadingProgress()V

    goto/16 :goto_f

    .line 3525
    :cond_16f
    const-string v0, "EbookReader"

    const-string v2, "handlePageTurn: WebView height\u4e3a0\uff0c\u4f7f\u7528\u9ed8\u8ba4\u503c800"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3526
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    const/16 v2, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->scrollBy(II)V

    goto :goto_16a
.end method

.method private hideChapterList()V
    .locals 2

    .prologue
    .line 2289
    const-string v0, "EbookReader"

    const-string v1, "\u9690\u85cf\u7ae0\u8282\u5217\u8868"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isChapterListShown:Z

    .line 2292
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2293
    if-nez v0, :cond_1a

    .line 2294
    const-string v0, "EbookReader"

    const-string v1, "Activity is null, cannot hide chapter list"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    :goto_19
    return-void

    .line 2297
    :cond_1a
    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$26;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$26;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_19
.end method

.method private hideEbookPanel()V
    .locals 3

    .prologue
    .line 2651
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2652
    if-nez v0, :cond_10

    .line 2653
    const-string v0, "EbookReader"

    const-string v1, "Activity is null, cannot hide ebook panel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2679
    :goto_f
    return-void

    .line 2657
    :cond_10
    const-string v1, "EbookReader"

    const-string v2, "\u5f00\u59cb\u9690\u85cf\u7535\u5b50\u4e66\u9762\u677f\uff08\u4e0d\u6e05\u7a7a\u4e66\u7c4d\u6570\u636e\uff09"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2660
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveReadingProgressImmediately()V

    .line 2663
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2c

    .line 2664
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2665
    const-string v1, "EbookReader"

    const-string v2, "\u7070\u8272\u80cc\u666f\u9762\u677f\u5df2\u9690\u85cf"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    :cond_2c
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->restoreVideoView(Landroid/app/Activity;)V

    .line 2672
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    .line 2673
    const-string v0, "video"

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->controlTarget:Ljava/lang/String;

    .line 2678
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u9762\u677f\u5df2\u9690\u85cf\uff0c\u4e66\u7c4d\u6570\u636e\u4fdd\u7559\uff0ccontrolTarget\u91cd\u7f6e\u4e3avideo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method private hideFileChooser()V
    .locals 2

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1282
    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-nez v0, :cond_14

    .line 1283
    :cond_c
    const-string v0, "EbookReader"

    const-string v1, "\u65e0\u6cd5\u9690\u85cf\u6587\u4ef6\u9009\u62e9\u5668\uff1aactivity\u6216panel\u4e3anull"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    :goto_13
    return-void

    .line 1287
    :cond_14
    const-string v0, "EbookReader"

    const-string v1, "\u5f00\u59cb\u9690\u85cf\u6587\u4ef6\u9009\u62e9\u5668"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1291
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isFileChooserShown:Z

    .line 1293
    const-string v0, "EbookReader"

    const-string v1, "\u6587\u4ef6\u9009\u62e9\u5668\u5df2\u9690\u85cf\uff0c\u56de\u5230\u7535\u5b50\u4e66\u9996\u9875"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showBookshelfOrFileChooser()V

    goto :goto_13
.end method

.method private hideLoadingIndicator()V
    .locals 2

    .prologue
    .line 1552
    const-string v0, "EbookReader"

    const-string v1, "\u9690\u85cf\u52a0\u8f7d\u8fdb\u5ea6\u63d0\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isLoadingEbook:Z

    .line 1555
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$21;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$21;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1567
    return-void
.end method

.method private isConfirmKey(I)Z
    .locals 1

    .prologue
    .line 563
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
    .line 1458
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1459
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

    .line 3576
    :try_start_1
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Chapter;->getHtmlFilePath()Ljava/lang/String;

    move-result-object v2

    .line 3577
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Chapter;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    .line 3579
    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 3580
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

    .line 3629
    :goto_2e
    return-object v0

    .line 3585
    :cond_2f
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3591
    if-eqz v0, :cond_10a

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10a

    .line 3592
    const-string v4, "file://"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "/$"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3593
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3597
    :goto_5a
    if-eqz v0, :cond_62

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_67

    .line 3598
    :cond_62
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3602
    :cond_67
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_7a

    .line 3603
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->findFileRecursively(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 3606
    :cond_7a
    if-eqz v0, :cond_e5

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_e5

    .line 3608
    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Lorg/jsoup/Jsoup;->parse(Ljava/io/File;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v2

    .line 3609
    invoke-virtual {v2}, Lorg/jsoup/nodes/Document;->outerHtml()Ljava/lang/String;

    move-result-object v0

    .line 3612
    invoke-virtual {p1, v0}, Lcom/bilibili/tv/ebook/model/Chapter;->setHtmlContent(Ljava/lang/String;)V

    .line 3613
    invoke-virtual {v2}, Lorg/jsoup/nodes/Document;->text()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/bilibili/tv/ebook/model/Chapter;->setPlainTextContent(Ljava/lang/String;)V

    .line 3616
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->manageChapterCache(Lcom/bilibili/tv/ebook/model/Chapter;)V

    .line 3618
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

    .line 3619
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3618
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c3} :catch_c5

    goto/16 :goto_2e

    .line 3627
    :catch_c5
    move-exception v0

    .line 3628
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

    .line 3629
    goto/16 :goto_2e

    .line 3622
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

    .line 3624
    goto/16 :goto_2e

    :cond_10a
    move-object v0, v1

    goto/16 :goto_5a
.end method

.method private loadFileList(Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V
    .locals 10

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1304
    if-nez v1, :cond_9

    .line 1452
    :goto_8
    return-void

    .line 1306
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

    .line 1309
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1312
    invoke-virtual {p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 1313
    if-nez v2, :cond_41

    .line 1314
    const-string v0, "EbookReader"

    const-string v1, "listFiles()\u8fd4\u56denull\uff0c\u53ef\u80fd\u6ca1\u6709\u6743\u9650\u6216\u76ee\u5f55\u4e0d\u5b58\u5728"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    const-string v1, "\u65e0\u6cd5\u8bbf\u95ee\u76ee\u5f55"

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showToast(Ljava/lang/String;)V

    goto :goto_8

    .line 1319
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

    .line 1322
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1323
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1325
    array-length v5, v2

    const/4 v0, 0x0

    :goto_6c
    if-ge v0, v5, :cond_be

    aget-object v6, v2, v0

    .line 1326
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_98

    .line 1327
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1328
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

    .line 1325
    :cond_95
    :goto_95
    add-int/lit8 v0, v0, 0x1

    goto :goto_6c

    .line 1329
    :cond_98
    invoke-direct {p0, v6}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookFile(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_95

    .line 1330
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1331
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

    .line 1335
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

    .line 1338
    new-instance v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$14;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$14;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1344
    new-instance v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$15;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$15;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1352
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1353
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1356
    invoke-virtual {p3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_117

    .line 1357
    const-string v0, "\u2191 \u4e0a\u7ea7"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1358
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1362
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

    .line 1363
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

    .line 1364
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11b

    .line 1368
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

    .line 1369
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

    .line 1370
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_149

    .line 1373
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

    .line 1376
    new-instance v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$16;

    const v3, 0x1090003

    invoke-direct {v0, p0, v1, v3, v5}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$16;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/content/Context;ILjava/util/List;)V

    .line 1406
    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$17;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$17;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1423
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1426
    new-instance v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$18;

    invoke-direct {v0, p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$18;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/widget/ListView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1435
    new-instance v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$19;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$19;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Ljava/util/List;Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_8
.end method

.method private manageChapterCache(Lcom/bilibili/tv/ebook/model/Chapter;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3538
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->cachedChapters:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3539
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->cachedChapters:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 3540
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->cachedChapters:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 3556
    :cond_13
    :goto_13
    return-void

    .line 3545
    :cond_14
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->cachedChapters:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 3546
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

    .line 3547
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3546
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3550
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->cachedChapters:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_13

    .line 3551
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->cachedChapters:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ebook/model/Chapter;

    .line 3552
    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ebook/model/Chapter;->setHtmlContent(Ljava/lang/String;)V

    .line 3553
    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ebook/model/Chapter;->setPlainTextContent(Ljava/lang/String;)V

    .line 3554
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
    .line 1573
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

    .line 1576
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->cancelParsingTask()V

    .line 1579
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBookFilePath:Ljava/lang/String;

    .line 1580
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isParsingCancelled:Z

    .line 1581
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isLoadingEbook:Z

    .line 1584
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showLoadingIndicator()V

    .line 1587
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1589
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$22;

    invoke-direct {v2, p0, v0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$22;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parsingThread:Ljava/lang/Thread;

    .line 1686
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parsingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1687
    return-void
.end method

.method private restoreDanmakuView(Landroid/app/Activity;)V
    .locals 8

    .prologue
    const/16 v7, 0x11

    const/16 v6, 0xd

    const/4 v5, -0x1

    .line 2993
    if-nez p1, :cond_f

    .line 2994
    const-string v0, "EbookReader"

    const-string v1, "Activity is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3079
    :goto_e
    return-void

    .line 2999
    :cond_f
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getDanmakuView()Landroid/view/View;

    move-result-object v1

    .line 3000
    if-nez v1, :cond_1f

    .line 3001
    const-string v0, "EbookReader"

    const-string v1, "\u65e0\u72ec\u7acb\u5f39\u5e55\u89c6\u56fe\uff08\u76f4\u64ad\u5f39\u5e55\u968f\u89c6\u9891\u6574\u4f53\u7f29\u653e\uff09\uff0c\u8df3\u8fc7\u5f39\u5e55\u6062\u590d"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 3005
    :cond_1f
    const-string v0, "EbookReader"

    const-string v2, "\u5f00\u59cb\u6062\u590d\u5f39\u5e55\u89c6\u56fe\u5e03\u5c40"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3008
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3009
    if-nez v0, :cond_36

    .line 3010
    const-string v0, "EbookReader"

    const-string v1, "Danmaku view parent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 3014
    :cond_36
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

    .line 3019
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v2, :cond_b3

    .line 3021
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_82

    .line 3022
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3026
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3028
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528FrameLayout.LayoutParams\u6062\u590d\u5f39\u5e55\u5168\u5c4f"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3045
    :goto_74
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3046
    const-string v0, "EbookReader"

    const-string v1, "\u5f39\u5e55\u5df2\u6062\u590d\u539f\u59cb\u5e03\u5c40"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3078
    :goto_7e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_e

    .line 3029
    :cond_82
    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_9e

    .line 3030
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3034
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3036
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528RelativeLayout.LayoutParams\u6062\u590d\u5f39\u5e55\u5168\u5c4f"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    .line 3038
    :cond_9e
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3042
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528ViewGroup.LayoutParams\u6062\u590d\u5f39\u5e55\u5168\u5c4f"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    .line 3049
    :cond_b3
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_d0

    .line 3050
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3054
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3056
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528FrameLayout.LayoutParams\u6062\u590d\u5f39\u5e55\u5168\u5c4f(\u9ed8\u8ba4)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3073
    :goto_c5
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3074
    const-string v0, "EbookReader"

    const-string v1, "\u5f39\u5e55\u5df2\u6062\u590d\u5168\u5c4f\u663e\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 3057
    :cond_d0
    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_e4

    .line 3058
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3062
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3064
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528RelativeLayout.LayoutParams\u6062\u590d\u5f39\u5e55\u5168\u5c4f(\u9ed8\u8ba4)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c5

    .line 3066
    :cond_e4
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3070
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528ViewGroup.LayoutParams\u6062\u590d\u5f39\u5e55\u5168\u5c4f(\u9ed8\u8ba4)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c5
.end method

.method private restoreReadingProgress(Lcom/bilibili/tv/ebook/model/Book;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3763
    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    if-nez v0, :cond_8

    .line 3798
    :cond_7
    :goto_7
    return-void

    .line 3768
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ebook/util/EbookCacheManager;->getReadingProgress(Ljava/lang/String;)Lcom/bilibili/tv/ebook/model/ReadingProgress;

    move-result-object v0

    .line 3770
    if-eqz v0, :cond_96

    .line 3771
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->getCurrentChapterIndex()I

    move-result v1

    .line 3772
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->getCurrentPage()I

    move-result v2

    .line 3775
    if-ltz v1, :cond_79

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_79

    .line 3776
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_79

    .line 3777
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

    .line 3779
    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v3, v2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;IZI)V

    .line 3786
    :goto_54
    invoke-direct {p0, p1, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->addToBookshelf(Lcom/bilibili/tv/ebook/model/Book;Lcom/bilibili/tv/ebook/model/ReadingProgress;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_57} :catch_58

    goto :goto_7

    .line 3794
    :catch_58
    move-exception v0

    .line 3795
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

    .line 3796
    invoke-direct {p0, p1, v6}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;I)V

    goto :goto_7

    .line 3781
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

    .line 3782
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;I)V

    goto :goto_54

    .line 3788
    :cond_96
    const-string v0, "EbookReader"

    const-string v1, "\u65e0\u4fdd\u5b58\u7684\u9605\u8bfb\u8fdb\u5ea6\uff0c\u4ece\u7b2c\u4e00\u7ae0\u5f00\u59cb"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3789
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;I)V

    .line 3792
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

    .line 2900
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isVideoTextureView()Z

    move-result v0

    if-nez v0, :cond_15

    .line 2901
    const-string v0, "EbookReader"

    const-string v1, "\u5f53\u524d\u672a\u4f7f\u7528TextureView\u6a21\u5f0f,\u65e0\u9700\u6062\u590d"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2987
    :goto_14
    return-void

    .line 2906
    :cond_15
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getVideoView()Landroid/view/View;

    move-result-object v1

    .line 2907
    if-nez v1, :cond_25

    .line 2908
    const-string v0, "EbookReader"

    const-string v1, "\u89c6\u9891\u89c6\u56fe\u4e3a\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 2913
    :cond_25
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2914
    if-nez v0, :cond_35

    .line 2915
    const-string v0, "EbookReader"

    const-string v1, "Video view parent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 2919
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

    .line 2924
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v2, :cond_b5

    .line 2926
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_84

    .line 2927
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2931
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2933
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528FrameLayout.LayoutParams\u6062\u590d\u5168\u5c4f"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2950
    :goto_73
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2951
    const-string v0, "EbookReader"

    const-string v1, "\u89c6\u9891\u5df2\u6062\u590d\u539f\u59cb\u5e03\u5c40"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2983
    :goto_7d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    .line 2986
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->restoreDanmakuView(Landroid/app/Activity;)V

    goto :goto_14

    .line 2934
    :cond_84
    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_a0

    .line 2935
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2939
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2941
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528RelativeLayout.LayoutParams\u6062\u590d\u5168\u5c4f"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    .line 2943
    :cond_a0
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2947
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528ViewGroup.LayoutParams\u6062\u590d\u5168\u5c4f"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    .line 2954
    :cond_b5
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_d2

    .line 2955
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2959
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2961
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528FrameLayout.LayoutParams\u6062\u590d\u5168\u5c4f(\u9ed8\u8ba4)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2978
    :goto_c7
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2979
    const-string v0, "EbookReader"

    const-string v1, "\u89c6\u9891\u5df2\u6062\u590d\u5168\u5c4f\u663e\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7d

    .line 2962
    :cond_d2
    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_e6

    .line 2963
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2967
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2969
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528RelativeLayout.LayoutParams\u6062\u590d\u5168\u5c4f(\u9ed8\u8ba4)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c7

    .line 2971
    :cond_e6
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2975
    const-string v2, "EbookReader"

    const-string v3, "\u4f7f\u7528ViewGroup.LayoutParams\u6062\u590d\u5168\u5c4f(\u9ed8\u8ba4)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c7
.end method

.method private saveReadingProgress()V
    .locals 6

    .prologue
    .line 3667
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_d

    .line 3714
    :cond_c
    :goto_c
    return-void

    .line 3673
    :cond_d
    :try_start_d
    new-instance v1, Lcom/bilibili/tv/ebook/model/ReadingProgress;

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Book;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bilibili/tv/ebook/model/ReadingProgress;-><init>(Ljava/lang/String;)V

    .line 3675
    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterIndex:I

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->setCurrentChapterIndex(I)V

    .line 3676
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->setLastReadTimestamp(J)V

    .line 3679
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

    .line 3680
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

    .line 3681
    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->setProgressPercentage(F)V

    .line 3685
    :cond_4d
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    .line 3686
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getHeight()I

    move-result v2

    .line 3687
    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int v2, v0, v2

    .line 3688
    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->setCurrentPage(I)V

    .line 3691
    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->setFontSize(I)V

    .line 3694
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ebook/util/EbookCacheManager;->saveReadingProgress(Lcom/bilibili/tv/ebook/model/ReadingProgress;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_6d} :catch_c5

    .line 3699
    :try_start_6d
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBookFilePath:Ljava/lang/String;

    if-eqz v0, :cond_8b

    .line 3700
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    if-nez v0, :cond_82

    .line 3701
    new-instance v0, Lcom/bilibili/tv/ebook/util/BookshelfManager;

    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v3}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/bilibili/tv/ebook/util/BookshelfManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    .line 3703
    :cond_82
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    iget-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBookFilePath:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v4}, Lcom/bilibili/tv/ebook/util/BookshelfManager;->addToBookshelf(Lcom/bilibili/tv/ebook/model/Book;Lcom/bilibili/tv/ebook/model/ReadingProgress;Ljava/lang/String;)V
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_8b} :catch_e4
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_8b} :catch_c5

    .line 3709
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

    .line 3710
    invoke-virtual {v1}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->getProgressPercentage()F

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3709
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_c3} :catch_c5

    goto/16 :goto_c

    .line 3711
    :catch_c5
    move-exception v0

    .line 3712
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

    .line 3705
    :catch_e4
    move-exception v0

    .line 3706
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
    .line 3750
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressHandler:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_12

    .line 3751
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressHandler:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3752
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressRunnable:Ljava/lang/Runnable;

    .line 3756
    :cond_12
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveReadingProgress()V

    .line 3757
    return-void
.end method

.method private scheduleSaveReadingProgress()V
    .locals 4

    .prologue
    .line 3722
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressHandler:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;

    if-nez v0, :cond_b

    .line 3723
    new-instance v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressHandler:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;

    .line 3727
    :cond_b
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_16

    .line 3728
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressHandler:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3732
    :cond_16
    new-instance v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$27;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$27;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressRunnable:Ljava/lang/Runnable;

    .line 3741
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressHandler:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3742
    const-string v0, "EbookReader"

    const-string v1, "\u5df2\u8c03\u5ea6\u9632\u6296\u4fdd\u5b58\u9605\u8bfb\u8fdb\u5ea6\uff0c\u5ef6\u8fdf 300ms"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3743
    return-void
.end method

.method private showBookshelfInPanel()V
    .locals 7

    .prologue
    const/16 v4, 0x18

    const/16 v3, 0x14

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 1009
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1010
    if-eqz v2, :cond_12

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1a

    .line 1011
    :cond_12
    const-string v0, "EbookReader"

    const-string v1, "Activity or ebookPanel is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    :goto_19
    return-void

    .line 1015
    :cond_1a
    const-string v0, "EbookReader"

    const-string v1, "\u5728\u7535\u5b50\u4e66\u9762\u677f\u4e2d\u663e\u793a\u4e66\u67b6\u5217\u8868"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_35

    .line 1019
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u9762\u677f\u672a\u663e\u793a\uff0c\u8bbe\u7f6e\u4e3aVISIBLE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1024
    :cond_35
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1027
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1028
    const-string v1, "\u6211\u7684\u4e66\u67b6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1029
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1030
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1031
    invoke-virtual {v0, v4, v3, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1032
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1033
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v6, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1039
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    .line 1040
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1041
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 1044
    new-instance v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$10;

    const v3, 0x1090003

    const v4, 0x1020014

    iget-object v5, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfItems:Ljava/util/List;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$10;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/content/Context;IILjava/util/List;)V

    .line 1094
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    new-instance v2, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$11;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$11;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1111
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1114
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$12;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$12;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1123
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$13;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$13;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1159
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1163
    const/16 v1, 0x46

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1164
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1165
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1167
    const-string v0, "EbookReader"

    const-string v1, "\u4e66\u67b6\u5217\u8868\u5df2\u6dfb\u52a0\u5230\u7535\u5b50\u4e66\u9762\u677f"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19
.end method

.method private showBookshelfOrFileChooser()V
    .locals 3

    .prologue
    .line 992
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ebook/util/EbookFileStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->reloadFromFile()V

    .line 994
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    if-nez v0, :cond_1e

    .line 995
    new-instance v0, Lcom/bilibili/tv/ebook/util/BookshelfManager;

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ebook/util/BookshelfManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    .line 998
    :cond_1e
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/util/BookshelfManager;->getBookshelfItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfItems:Ljava/util/List;

    .line 1001
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

    .line 1002
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showBookshelfInPanel()V

    .line 1003
    return-void
.end method

.method private showEbookPanel()V
    .locals 7

    .prologue
    .line 2326
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2327
    if-nez v1, :cond_10

    .line 2328
    const-string v0, "EbookReader"

    const-string v1, "Activity is null, cannot show ebook panel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2403
    :goto_f
    return-void

    .line 2332
    :cond_10
    const-string v0, "EbookReader"

    const-string v2, "\u5f00\u59cb\u663e\u793a\u7535\u5b50\u4e66\u9762\u677f"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2336
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ebook/util/EbookFileStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->reloadFromFile()V

    .line 2339
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2340
    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2341
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2342
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2345
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ebook/util/EbookFileStore;

    move-result-object v0

    .line 2346
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getScreenPercent()I

    move-result v4

    .line 2347
    const/4 v5, 0x6

    new-array v5, v5, [I

    fill-array-data v5, :array_154

    .line 2348
    if-ltz v4, :cond_13c

    array-length v6, v5

    if-ge v4, v6, :cond_13c

    .line 2349
    aget v4, v5, v4

    iput v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanelPercent:I

    .line 2354
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

    .line 2357
    iget-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    if-nez v4, :cond_b0

    .line 2358
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    .line 2359
    iget-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    const-string v5, "\u5de6\u4e0a"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2360
    iget-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    const-string v5, "\u5de6\u4e0b"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2361
    iget-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    const-string v5, "\u53f3\u4e0a"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2362
    iget-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    const-string v5, "\u53f3\u4e0b"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2364
    :cond_b0
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getVideoPosition()I

    move-result v0

    .line 2365
    if-ltz v0, :cond_142

    iget-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_142

    .line 2366
    iput v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    .line 2370
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

    .line 2373
    invoke-direct {p0, v1, v2, v3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->shrinkVideoView(Landroid/app/Activity;II)V

    .line 2376
    invoke-direct {p0, v1, v2, v3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->shrinkDanmakuView(Landroid/app/Activity;II)V

    .line 2379
    invoke-direct {p0, v1, v2, v3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showGrayBackgroundPanel(Landroid/app/Activity;II)V

    .line 2382
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    if-nez v0, :cond_f6

    .line 2383
    new-instance v0, Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ebook/util/EbookCacheManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    .line 2385
    :cond_f6
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    if-nez v0, :cond_101

    .line 2386
    new-instance v0, Lcom/bilibili/tv/ebook/util/BookshelfManager;

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ebook/util/BookshelfManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    .line 2389
    :cond_101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    .line 2390
    const-string v0, "ebook"

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->controlTarget:Ljava/lang/String;

    .line 2391
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u9762\u677f\u5df2\u663e\u793a\uff0ccontrolTarget\u8bbe\u7f6e\u4e3aebook"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2394
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    if-eqz v0, :cond_147

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBookFilePath:Ljava/lang/String;

    if-eqz v0, :cond_147

    .line 2395
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

    .line 2397
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->restoreReadingProgress(Lcom/bilibili/tv/ebook/model/Book;)V

    goto/16 :goto_f

    .line 2351
    :cond_13c
    const/16 v4, 0x1e

    iput v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanelPercent:I

    goto/16 :goto_55

    .line 2368
    :cond_142
    const/4 v0, 0x0

    iput v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    goto/16 :goto_c0

    .line 2399
    :cond_147
    const-string v0, "EbookReader"

    const-string v1, "\u6ca1\u6709\u6b63\u5728\u9605\u8bfb\u7684\u4e66\u7c4d\uff0c\u663e\u793a\u9996\u9875\u5185\u5bb9"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2401
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showBookshelfOrFileChooser()V

    goto/16 :goto_f

    .line 2347
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

    .line 1173
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1174
    if-nez v1, :cond_17

    .line 1175
    const-string v0, "EbookReader"

    const-string v1, "Activity is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    :goto_16
    return-void

    .line 1179
    :cond_17
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-nez v0, :cond_23

    .line 1180
    const-string v0, "EbookReader"

    const-string v1, "ebookPanel is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 1184
    :cond_23
    const-string v0, "EbookReader"

    const-string v2, "\u5728\u7535\u5b50\u4e66\u9762\u677f\u4e2d\u663e\u793a\u6587\u4ef6\u9009\u62e9\u5668"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
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

    .line 1186
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

    .line 1189
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_83

    .line 1190
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_17b

    .line 1192
    invoke-static {}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->hasManageExternalStoragePermission()Z

    move-result v0

    if-nez v0, :cond_83

    .line 1193
    const-string v0, "EbookReader"

    const-string v2, "\u672a\u6388\u4e88\u6240\u6709\u6587\u4ef6\u8bbf\u95ee\u6743\u9650\uff0c\u7535\u5b50\u4e66\u6570\u636e\u5c06\u4fdd\u5b58\u5728\u5e94\u7528\u5185\u90e8\uff08\u65e0\u6cd5\u8de8APP\u5171\u4eab\uff09"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    :cond_83
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_97

    .line 1212
    const-string v0, "EbookReader"

    const-string v2, "\u7535\u5b50\u4e66\u9762\u677f\u672a\u663e\u793a\uff0c\u8bbe\u7f6e\u4e3aVISIBLE"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1217
    :cond_97
    const-string v0, "EbookReader"

    const-string v2, "\u6e05\u7a7a\u7535\u5b50\u4e66\u9762\u677f\u4e2d\u7684\u5185\u5bb9"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1221
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1222
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1223
    const-string v2, "#333333"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1224
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1230
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1231
    const-string v3, "\u9009\u62e9\u7535\u5b50\u4e66\u6587\u4ef6"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1232
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1233
    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1234
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1235
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1236
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1239
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1240
    const v3, -0x333334

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1241
    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1242
    invoke-virtual {v2, v4, v8, v4, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1243
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1246
    new-instance v3, Landroid/widget/ListView;

    invoke-direct {v3, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->fileListView:Landroid/widget/ListView;

    .line 1247
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1251
    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->fileListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1252
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->fileListView:Landroid/widget/ListView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, -0xbbbbbc

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1253
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->fileListView:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 1254
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->fileListView:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 1255
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->fileListView:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 1256
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->fileListView:Landroid/widget/ListView;

    const/high16 v3, 0x20000

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    .line 1257
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->fileListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1259
    const-string v1, "EbookReader"

    const-string v3, "\u6587\u4ef6\u9009\u62e9\u5668\u5e03\u5c40\u521b\u5efa\u5b8c\u6210\uff0c\u51c6\u5907\u6dfb\u52a0\u5230\u7535\u5b50\u4e66\u9762\u677f"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1261
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

    .line 1264
    iput-boolean v5, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isFileChooserShown:Z

    .line 1265
    const-string v0, "EbookReader"

    const-string v1, "\u6587\u4ef6\u9009\u62e9\u5668\u5df2\u663e\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v3, "Download"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1269
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_170

    .line 1270
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 1274
    :cond_170
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->fileListView:Landroid/widget/ListView;

    invoke-direct {p0, v1, v2, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadFileList(Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V

    goto/16 :goto_16

    .line 1185
    :cond_177
    const-string v0, "\u672a\u663e\u793a"

    goto/16 :goto_41

    .line 1195
    :cond_17b
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v1, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_83

    .line 1197
    const-string v0, "EbookReader"

    const-string v2, "\u6ca1\u6709\u5b58\u50a8\u6743\u9650\uff0c\u8bf7\u6c42\u6743\u9650"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v7

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v5

    const/16 v2, 0x3e9

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 1205
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

    .line 2543
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->dumpViewHierarchy(Landroid/app/Activity;)V

    .line 2546
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v2}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getVideoContainer()Landroid/view/ViewGroup;

    move-result-object v3

    .line 2547
    if-nez v3, :cond_16

    .line 2548
    const-string v0, "EbookReader"

    const-string v1, "\u89c6\u9891\u5bb9\u5668\u4e3a\u7a7a\uff0c\u65e0\u6cd5\u521b\u5efa\u7535\u5b50\u4e66\u9762\u677f"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2611
    :goto_15
    return-void

    .line 2552
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

    .line 2555
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-nez v2, :cond_cb

    .line 2556
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    .line 2557
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    const-string v4, "#333333"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2561
    iget v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanelPercent:I

    mul-int/2addr v2, p2

    div-int/lit8 v4, v2, 0x64

    .line 2566
    iget v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-eqz v2, :cond_67

    iget v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v2, v1, :cond_68

    :cond_67
    move v0, v1

    .line 2569
    :cond_68
    instance-of v2, v3, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_ad

    .line 2570
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2575
    if-eqz v0, :cond_ab

    const/4 v0, 0x5

    :goto_74
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object v0, v2

    .line 2603
    :goto_77
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2605
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

    .line 2606
    const-string v0, "EbookReader"

    const-string v1, "View\u5c42\u7ea7: [0]\u89c6\u9891 -> [1]\u7535\u5b50\u4e66\u9762\u677f -> [2+]overlay UI"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 2575
    :cond_ab
    const/4 v0, 0x3

    goto :goto_74

    .line 2577
    :cond_ad
    instance-of v2, v3, Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_c5

    .line 2578
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2583
    if-eqz v0, :cond_bf

    .line 2584
    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_bd
    move-object v0, v2

    .line 2589
    goto :goto_77

    .line 2586
    :cond_bf
    const/16 v0, 0x9

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_bd

    .line 2591
    :cond_c5
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v4, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_77

    .line 2608
    :cond_cb
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2609
    const-string v0, "EbookReader"

    const-string v1, "\u7070\u8272\u80cc\u666f\u9762\u677f\u5df2\u663e\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15
.end method

.method private showLoadingIndicator()V
    .locals 2

    .prologue
    .line 1491
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isLoadingEbook:Z

    .line 1492
    const-string v0, "EbookReader"

    const-string v1, "\u663e\u793a\u52a0\u8f7d\u8fdb\u5ea6\u63d0\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$20;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$20;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1546
    return-void
.end method

.method private showRemoveBookDialog(Lcom/bilibili/tv/ebook/model/BookshelfItem;I)V
    .locals 5

    .prologue
    .line 3945
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3946
    if-nez v0, :cond_10

    .line 3947
    const-string v0, "EbookReader"

    const-string v1, "Activity is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3993
    :goto_f
    return-void

    .line 3952
    :cond_10
    new-instance v1, Lbl/agb$a;

    invoke-direct {v1, v0}, Lbl/agb$a;-><init>(Landroid/app/Activity;)V

    .line 3953
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lbl/agb$a;->a(I)Lbl/agb$a;

    move-result-object v2

    const-string v3, "\u786e\u8ba4\u5220\u9664\u6b64\u4e66\uff1f"

    invoke-virtual {v2, v3}, Lbl/agb$a;->a(Ljava/lang/String;)Lbl/agb$a;

    move-result-object v2

    const v3, 0x7f0c0079

    .line 3954
    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$29;

    invoke-direct {v4, p0, p1, p2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$29;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Lcom/bilibili/tv/ebook/model/BookshelfItem;I)V

    invoke-virtual {v2, v3, v4}, Lbl/agb$a;->a(Ljava/lang/String;Lbl/agb$b;)Lbl/agb$a;

    move-result-object v2

    const v3, 0x7f0c0076

    .line 3986
    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$28;

    invoke-direct {v3, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$28;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v2, v0, v3}, Lbl/agb$a;->b(Ljava/lang/String;Lbl/agb$b;)Lbl/agb$a;

    .line 3992
    invoke-virtual {v1}, Lbl/agb$a;->a()Lbl/agb;

    move-result-object v0

    invoke-virtual {v0}, Lbl/agb;->show()V

    goto :goto_f
.end method

.method private shrinkDanmakuView(Landroid/app/Activity;II)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v6, -0x1

    .line 2816
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getDanmakuView()Landroid/view/View;

    move-result-object v3

    .line 2817
    if-nez v3, :cond_13

    .line 2818
    const-string v0, "EbookReader"

    const-string v1, "\u65e0\u72ec\u7acb\u5f39\u5e55\u89c6\u56fe\uff08\u76f4\u64ad\u5f39\u5e55\u968f\u89c6\u9891\u6574\u4f53\u7f29\u653e\uff09\uff0c\u8df3\u8fc7\u5f39\u5e55\u7f29\u653e"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2893
    :goto_12
    return-void

    .line 2822
    :cond_13
    const-string v0, "EbookReader"

    const-string v2, "\u5f00\u59cb\u7f29\u5c0f\u5f39\u5e55\u89c6\u56fe"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2825
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2826
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-direct {v2, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalDanmakuParams:Landroid/view/ViewGroup$LayoutParams;

    .line 2827
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

    .line 2830
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2831
    if-nez v0, :cond_61

    .line 2832
    const-string v0, "EbookReader"

    const-string v1, "Danmaku view parent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 2836
    :cond_61
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

    .line 2839
    iget v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanelPercent:I

    rsub-int/lit8 v2, v2, 0x64

    mul-int/2addr v2, p2

    div-int/lit8 v4, v2, 0x64

    .line 2842
    iget v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-eqz v2, :cond_90

    iget v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v2, v1, :cond_f1

    .line 2846
    :cond_90
    :goto_90
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_100

    .line 2847
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2851
    if-eqz v1, :cond_f6

    .line 2853
    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-nez v0, :cond_f3

    .line 2854
    const/16 v0, 0x33

    .line 2866
    :goto_a1
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object v0, v2

    .line 2888
    :goto_a4
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2889
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    if-eqz v0, :cond_132

    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ltz v0, :cond_132

    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_132

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    iget v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    .line 2890
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2891
    :goto_c3
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

    goto/16 :goto_12

    .line 2842
    :cond_f1
    const/4 v1, 0x0

    goto :goto_90

    .line 2856
    :cond_f3
    const/16 v0, 0x53

    goto :goto_a1

    .line 2860
    :cond_f6
    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v0, v7, :cond_fd

    .line 2861
    const/16 v0, 0x35

    goto :goto_a1

    .line 2863
    :cond_fd
    const/16 v0, 0x55

    goto :goto_a1

    .line 2868
    :cond_100
    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_12b

    .line 2869
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2872
    if-eqz v1, :cond_11e

    .line 2873
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2878
    :goto_110
    iget v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-eqz v1, :cond_118

    iget v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v1, v7, :cond_124

    .line 2879
    :cond_118
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_a4

    .line 2875
    :cond_11e
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_110

    .line 2881
    :cond_124
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_a4

    .line 2885
    :cond_12b
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v4, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto/16 :goto_a4

    .line 2890
    :cond_132
    const-string v0, "\u5de6\u4e0a"

    goto :goto_c3
.end method

.method private shrinkVideoView(Landroid/app/Activity;II)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    .line 2425
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isVideoTextureView()Z

    move-result v0

    if-nez v0, :cond_19

    .line 2426
    const-string v0, "EbookReader"

    const-string v1, "\u5f53\u524d\u672a\u4f7f\u7528TextureView\u6a21\u5f0f"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2427
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    const-string v1, "\u7535\u5b50\u4e66\u529f\u80fd\u9700\u8981TextureView\u6a21\u5f0f\n\u8bf7\u5148\u5728\u4e2a\u6027\u5316\u8bbe\u7f6e\u4e2d\u5207\u6362"

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showToast(Ljava/lang/String;)V

    .line 2535
    :goto_18
    return-void

    .line 2432
    :cond_19
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getVideoView()Landroid/view/View;

    move-result-object v3

    .line 2433
    if-nez v3, :cond_29

    .line 2434
    const-string v0, "EbookReader"

    const-string v1, "\u89c6\u9891\u89c6\u56fe\u4e3a\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 2439
    :cond_29
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isLiveMode()Z

    move-result v0

    if-nez v0, :cond_7c

    instance-of v0, v3, Landroid/view/TextureView;

    if-nez v0, :cond_7c

    .line 2440
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

    .line 2441
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

    .line 2445
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

    .line 2448
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2449
    if-nez v0, :cond_ad

    .line 2450
    const-string v0, "EbookReader"

    const-string v1, "\u89c6\u9891\u89c6\u56fe\u7684\u7236\u5bb9\u5668\u4e3a\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    .line 2453
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

    .line 2458
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    if-nez v2, :cond_190

    .line 2459
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 2460
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v4, v5, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->originalVideoParams:Landroid/view/ViewGroup$LayoutParams;

    .line 2461
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

    .line 2467
    :goto_10a
    iget v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanelPercent:I

    rsub-int/lit8 v2, v2, 0x64

    mul-int/2addr v2, p2

    div-int/lit8 v4, v2, 0x64

    .line 2472
    iget v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-eqz v2, :cond_119

    iget v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v2, v1, :cond_199

    .line 2473
    :cond_119
    :goto_119
    invoke-direct {p0, p3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->getShrinkVideoHeight(I)I

    move-result v5

    .line 2475
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1a9

    .line 2476
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2482
    if-eqz v1, :cond_19f

    .line 2485
    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-nez v0, :cond_19c

    .line 2486
    const/16 v0, 0x33

    .line 2499
    :goto_12e
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object v0, v2

    .line 2528
    :goto_131
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2530
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    if-eqz v0, :cond_1dc

    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ltz v0, :cond_1dc

    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1dc

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    iget v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    .line 2531
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2532
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

    .line 2463
    :cond_190
    const-string v2, "EbookReader"

    const-string v4, "\u89c6\u9891\u5df2\u7ecf\u7f29\u5c0f\u8fc7\uff0c\u8df3\u8fc7\u4fdd\u5b58\u539f\u59cb\u53c2\u6570"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10a

    .line 2472
    :cond_199
    const/4 v1, 0x0

    goto/16 :goto_119

    .line 2488
    :cond_19c
    const/16 v0, 0x53

    goto :goto_12e

    .line 2493
    :cond_19f
    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v0, v6, :cond_1a6

    .line 2494
    const/16 v0, 0x35

    goto :goto_12e

    .line 2496
    :cond_1a6
    const/16 v0, 0x55

    goto :goto_12e

    .line 2501
    :cond_1a9
    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1d5

    .line 2502
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2508
    if-eqz v1, :cond_1c8

    .line 2509
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2514
    :goto_1b9
    iget v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-eqz v1, :cond_1c1

    iget v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v1, v6, :cond_1ce

    .line 2515
    :cond_1c1
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_131

    .line 2511
    :cond_1c8
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1b9

    .line 2517
    :cond_1ce
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_131

    .line 2522
    :cond_1d5
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto/16 :goto_131

    .line 2531
    :cond_1dc
    const-string v0, "\u5de6\u4e0a"

    goto/16 :goto_150
.end method

.method private updateDanmakuViewWidth(I)V
    .locals 2

    .prologue
    .line 3228
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3229
    if-nez v0, :cond_9

    .line 3236
    :cond_8
    :goto_8
    return-void

    .line 3231
    :cond_9
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3232
    if-eqz v0, :cond_8

    .line 3235
    invoke-direct {p0, v0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->findAndUpdateDanmakuView(Landroid/view/ViewGroup;I)V

    goto :goto_8
.end method

.method private updateEbookPanelWidth(I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    .line 3414
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-nez v0, :cond_7

    .line 3443
    :cond_6
    :goto_6
    return-void

    .line 3416
    :cond_7
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3417
    if-eqz v0, :cond_6

    .line 3420
    iget v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-eqz v2, :cond_19

    iget v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v2, v1, :cond_54

    .line 3423
    :cond_19
    :goto_19
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_58

    .line 3424
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, p1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3426
    if-eqz v1, :cond_56

    const/4 v0, 0x5

    :goto_25
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object v0, v2

    .line 3440
    :goto_28
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3441
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

    .line 3420
    :cond_54
    const/4 v1, 0x0

    goto :goto_19

    .line 3426
    :cond_56
    const/4 v0, 0x3

    goto :goto_25

    .line 3428
    :cond_58
    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_6f

    .line 3429
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3431
    if-eqz v1, :cond_69

    .line 3432
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_28

    .line 3434
    :cond_69
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_28

    .line 3438
    :cond_6f
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_28

    .line 3441
    :cond_75
    const-string v0, "\u5de6\u4fa7"

    goto :goto_48
.end method

.method private updateSubtitleViewWidth(I)V
    .locals 2

    .prologue
    .line 3320
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3321
    if-nez v0, :cond_9

    .line 3328
    :cond_8
    :goto_8
    return-void

    .line 3323
    :cond_9
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3324
    if-eqz v0, :cond_8

    .line 3327
    invoke-direct {p0, v0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->findAndUpdateSubtitleView(Landroid/view/ViewGroup;I)V

    goto :goto_8
.end method

.method private updateVideoViewWidth(I)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3156
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getVideoView()Landroid/view/View;

    move-result-object v4

    .line 3157
    if-nez v4, :cond_c

    .line 3221
    :cond_b
    :goto_b
    return-void

    .line 3159
    :cond_c
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3160
    if-eqz v0, :cond_b

    .line 3164
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 3165
    if-eqz v1, :cond_d2

    .line 3166
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3167
    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3168
    iget v1, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 3170
    :goto_2e
    invoke-direct {p0, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->getShrinkVideoHeight(I)I

    move-result v5

    .line 3173
    iget v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-eqz v1, :cond_3a

    iget v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v1, v3, :cond_3b

    :cond_3a
    move v2, v3

    .line 3176
    :cond_3b
    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_9f

    .line 3177
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p1, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3181
    if-eqz v2, :cond_95

    .line 3183
    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-nez v0, :cond_92

    .line 3184
    const/16 v0, 0x33

    .line 3196
    :goto_4c
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object v0, v1

    .line 3217
    :goto_4f
    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3218
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    if-eqz v0, :cond_cf

    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ltz v0, :cond_cf

    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_cf

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    iget v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    .line 3219
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3220
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

    .line 3186
    :cond_92
    const/16 v0, 0x53

    goto :goto_4c

    .line 3190
    :cond_95
    iget v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v0, v6, :cond_9c

    .line 3191
    const/16 v0, 0x35

    goto :goto_4c

    .line 3193
    :cond_9c
    const/16 v0, 0x55

    goto :goto_4c

    .line 3198
    :cond_9f
    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_c9

    .line 3199
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3202
    if-eqz v2, :cond_bd

    .line 3203
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3208
    :goto_af
    iget v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-eqz v1, :cond_b7

    iget v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    if-ne v1, v6, :cond_c3

    .line 3209
    :cond_b7
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_4f

    .line 3205
    :cond_bd
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_af

    .line 3211
    :cond_c3
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_4f

    .line 3215
    :cond_c9
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_4f

    .line 3219
    :cond_cf
    const-string v0, "\u5de6\u4e0a"

    goto :goto_6e

    :cond_d2
    move v1, v2

    goto/16 :goto_2e
.end method


# virtual methods
.method public clearBookshelf()V
    .locals 5

    .prologue
    .line 392
    const-string v0, "EbookReader"

    const-string v1, "\u6e05\u7a7a\u4e66\u67b6\u83dc\u5355\u9879\u88ab\u70b9\u51fb"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 395
    if-nez v0, :cond_17

    .line 396
    const-string v0, "EbookReader"

    const-string v1, "Activity is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :goto_16
    return-void

    .line 401
    :cond_17
    new-instance v1, Lbl/agb$a;

    invoke-direct {v1, v0}, Lbl/agb$a;-><init>(Landroid/app/Activity;)V

    .line 402
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lbl/agb$a;->a(I)Lbl/agb$a;

    move-result-object v2

    const-string v3, "\u786e\u8ba4\u6e05\u7a7a\u4e66\u67b6\uff1f"

    invoke-virtual {v2, v3}, Lbl/agb$a;->a(Ljava/lang/String;)Lbl/agb$a;

    move-result-object v2

    const v3, 0x7f0c0079

    .line 403
    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$4;

    invoke-direct {v4, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$4;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v2, v3, v4}, Lbl/agb$a;->a(Ljava/lang/String;Lbl/agb$b;)Lbl/agb$a;

    move-result-object v2

    const v3, 0x7f0c0076

    .line 432
    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$3;

    invoke-direct {v3, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$3;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v2, v0, v3}, Lbl/agb$a;->b(Ljava/lang/String;Lbl/agb$b;)Lbl/agb$a;

    .line 438
    invoke-virtual {v1}, Lbl/agb$a;->a()Lbl/agb;

    move-result-object v0

    invoke-virtual {v0}, Lbl/agb;->show()V

    goto :goto_16
.end method

.method public closeCurrentBook()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 278
    const-string v0, "EbookReader"

    const-string v1, "\u5f00\u59cb\u5173\u95ed\u5f53\u524d\u4e66\u7c4d\uff0c\u56de\u5230\u7535\u5b50\u4e66\u9996\u9875"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveReadingProgressImmediately()V

    .line 284
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->destroyEbookWebView()V

    .line 287
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1f

    .line 288
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 289
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u9762\u677f\u5df2\u6e05\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_1f
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    .line 294
    iput v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterIndex:I

    .line 295
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    .line 296
    iput-boolean v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isReadingBook:Z

    .line 297
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBookFilePath:Ljava/lang/String;

    .line 299
    const-string v0, "EbookReader"

    const-string v1, "\u5f53\u524d\u4e66\u7c4d\u5df2\u5173\u95ed\uff0c\u56de\u5230\u7535\u5b50\u4e66\u9996\u9875"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showBookshelfOrFileChooser()V

    .line 303
    return-void
.end method

.method public consumeMenuOpenedByKeyDown()Z
    .locals 2

    .prologue
    .line 861
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->menuOpenedByKeyDown:Z

    .line 862
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->menuOpenedByKeyDown:Z

    .line 863
    return v0
.end method

.method public getControlTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->controlTarget:Ljava/lang/String;

    return-object v0
.end method

.method public isChapterListShown()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isChapterListShown:Z

    return v0
.end method

.method public isControlEbook()Z
    .locals 2

    .prologue
    .line 169
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
    .line 144
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    return v0
.end method

.method public isEbookReadingContent()Z
    .locals 1

    .prologue
    .line 176
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
    .line 159
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isFileChooserShown:Z

    return v0
.end method

.method public isReadingBook()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isReadingBook:Z

    return v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 894
    const-string v0, "EbookReader"

    const-string v1, "onDestroy: \u56de\u6536\u7535\u5b50\u4e66\u8d44\u6e90"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->cancelParsingTask()V

    .line 900
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->destroyEbookWebView()V

    .line 903
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->clearChapterCache()V

    .line 906
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_27

    .line 907
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 908
    if-eqz v0, :cond_25

    .line 909
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 911
    :cond_25
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    .line 915
    :cond_27
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressHandler:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;

    if-eqz v0, :cond_32

    .line 916
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressHandler:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 917
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressHandler:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;

    .line 919
    :cond_32
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveProgressRunnable:Ljava/lang/Runnable;

    .line 922
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    if-eqz v0, :cond_44

    .line 923
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 924
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 925
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    .line 927
    :cond_44
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    if-eqz v0, :cond_54

    .line 928
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 929
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 930
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    .line 934
    :cond_54
    iput-boolean v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    .line 935
    iput-boolean v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isChapterListShown:Z

    .line 936
    iput-boolean v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isFileChooserShown:Z

    .line 937
    iput-boolean v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isLoadingEbook:Z

    .line 938
    iput-boolean v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isReadingBook:Z

    .line 939
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    .line 940
    iput v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterIndex:I

    .line 941
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBookFilePath:Ljava/lang/String;

    .line 942
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadingProgressBar:Landroid/widget/ProgressBar;

    .line 943
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadingTextView:Landroid/widget/TextView;

    .line 944
    const-string v0, "video"

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->controlTarget:Ljava/lang/String;

    .line 947
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfManager:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    .line 948
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookCacheManager:Lcom/bilibili/tv/ebook/util/EbookCacheManager;

    .line 949
    iput-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfItems:Ljava/util/List;

    .line 952
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    if-eqz v0, :cond_7b

    .line 953
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->onEbookDestroy()V

    .line 956
    :cond_7b
    const-string v0, "EbookReader"

    const-string v1, "onDestroy: \u7535\u5b50\u4e66\u8d44\u6e90\u5df2\u56de\u6536\u5b8c\u6210"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    return-void
.end method

.method public onEbookFileSelected(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1466
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

    .line 1468
    if-eqz p1, :cond_20

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1469
    :cond_20
    const-string v0, "EbookReader"

    const-string v1, "\u6587\u4ef6\u8def\u5f84\u4e3a\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    :goto_27
    return-void

    .line 1474
    :cond_28
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isLoadingEbook:Z

    if-eqz v0, :cond_3b

    .line 1475
    const-string v0, "EbookReader"

    const-string v1, "\u6b63\u5728\u52a0\u8f7d\u7535\u5b50\u4e66\uff0c\u8bf7\u7a0d\u5019..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    const-string v1, "\u6b63\u5728\u52a0\u8f7d\uff0c\u8bf7\u7a0d\u5019..."

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showToast(Ljava/lang/String;)V

    goto :goto_27

    .line 1481
    :cond_3b
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showLoadingIndicator()V

    .line 1484
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parseAndDisplayEbook(Ljava/lang/String;)V

    goto :goto_27
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/16 v7, 0x14

    const/16 v6, 0x13

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 669
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

    .line 670
    invoke-interface {v4}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isMenuShown()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 669
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    if-eqz v0, :cond_286

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->controlTarget:Ljava/lang/String;

    const-string v1, "ebook"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_286

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isMenuShown()Z

    move-result v0

    if-nez v0, :cond_286

    .line 674
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

    .line 677
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    if-eqz v0, :cond_9c

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 678
    const-string v0, "EbookReader"

    const-string v1, "onKeyDown: \u7ae0\u8282\u5217\u8868\u663e\u793a\u4e2d"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isConfirmKey(I)Z

    move-result v0

    if-nez v0, :cond_93

    if-eq p1, v6, :cond_93

    if-ne p1, v7, :cond_9c

    .line 682
    :cond_93
    const-string v0, "EbookReader"

    const-string v1, "onKeyDown: \u7ae0\u8282\u5217\u8868\u663e\u793a\uff0c\u4e0d\u62e6\u622a\u65b9\u5411\u952e\u548c\u786e\u8ba4\u952e"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 852
    :cond_9b
    :goto_9b
    return v2

    .line 688
    :cond_9c
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    if-eqz v0, :cond_bb

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 689
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isConfirmKey(I)Z

    move-result v0

    if-nez v0, :cond_b2

    if-eq p1, v6, :cond_b2

    if-ne p1, v7, :cond_bb

    .line 692
    :cond_b2
    const-string v0, "EbookReader"

    const-string v1, "onKeyDown: \u4e66\u67b6\u5217\u8868\u663e\u793a\uff0c\u4e0d\u62e6\u622a\u65b9\u5411\u952e\u548c\u786e\u8ba4\u952e"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 693
    goto :goto_9b

    .line 698
    :cond_bb
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isFileChooserShown:Z

    if-eqz v0, :cond_d2

    .line 699
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isConfirmKey(I)Z

    move-result v0

    if-nez v0, :cond_c9

    if-eq p1, v6, :cond_c9

    if-ne p1, v7, :cond_d2

    .line 702
    :cond_c9
    const-string v0, "EbookReader"

    const-string v1, "onKeyDown: \u6587\u4ef6\u9009\u62e9\u5668\u663e\u793a\uff0c\u4e0d\u62e6\u622a\u65b9\u5411\u952e\u548c\u786e\u8ba4\u952e"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 703
    goto :goto_9b

    .line 709
    :cond_d2
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    if-eqz v0, :cond_de

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isShown()Z

    move-result v0

    if-nez v0, :cond_139

    :cond_de
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isFileChooserShown:Z

    if-nez v0, :cond_139

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_139

    move v0, v2

    .line 713
    :goto_e7
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

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_13b

    const-string v1, "not null"

    :goto_110
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    if-eqz v0, :cond_13e

    .line 718
    const-string v0, "EbookReader"

    const-string v1, "onKeyDown: \u5728\u9605\u8bfb\u5185\u5bb9\u9875\u9762"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    if-eq p1, v6, :cond_130

    if-eq p1, v7, :cond_130

    const/16 v0, 0x15

    if-eq p1, v0, :cond_130

    const/16 v0, 0x16

    if-ne p1, v0, :cond_13e

    .line 726
    :cond_130
    const-string v0, "EbookReader"

    const-string v1, "onKeyDown: \u65b9\u5411\u952e\u5df2\u7531onKeyUp()\u5904\u7406\uff0c\u76f4\u63a5\u8fd4\u56detrue"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9b

    :cond_139
    move v0, v3

    .line 709
    goto :goto_e7

    .line 713
    :cond_13b
    const-string v1, "null"

    goto :goto_110

    .line 732
    :cond_13e
    const/16 v0, 0x52

    if-ne p1, v0, :cond_16c

    .line 734
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isChapterListShown:Z

    if-eqz v0, :cond_14f

    .line 735
    const-string v0, "EbookReader"

    const-string v1, "\u7ae0\u8282\u5217\u8868\u663e\u793a\u4e2d\uff0c\u4e0d\u54cd\u5e94\u83dc\u5355\u952e"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9b

    .line 739
    :cond_14f
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isFileChooserShown:Z

    if-eqz v0, :cond_15c

    .line 740
    const-string v0, "EbookReader"

    const-string v1, "\u6587\u4ef6\u9009\u62e9\u5217\u8868\u663e\u793a\u4e2d\uff0c\u4e0d\u54cd\u5e94\u83dc\u5355\u952e"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9b

    .line 744
    :cond_15c
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u6a21\u5f0f\u4e0b\u6253\u5f00\u53f3\u4fa7\u83dc\u5355"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iput-boolean v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->menuOpenedByKeyDown:Z

    .line 746
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0, v2}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showMenu(Z)V

    goto/16 :goto_9b

    .line 751
    :cond_16c
    const/4 v0, 0x4

    if-ne p1, v0, :cond_9b

    .line 752
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isChapterListShown:Z

    if-eqz v0, :cond_216

    .line 754
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterNavigationStack:Ljava/util/Stack;

    if-eqz v0, :cond_20a

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterNavigationStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20a

    .line 756
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

    .line 757
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterNavigationStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterList:Ljava/util/List;

    .line 760
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterNavigationStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b9

    .line 762
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parentChapterTitle:Ljava/lang/String;

    .line 782
    :cond_1b2
    :goto_1b2
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->createChapterListView(Ljava/util/List;)V

    goto/16 :goto_9b

    .line 765
    :cond_1b9
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterNavigationStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 766
    if-eqz v0, :cond_1b2

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1b2

    .line 768
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/ebook/model/Chapter;

    invoke-virtual {v1}, Lcom/bilibili/tv/ebook/model/Chapter;->getChapterIndex()I

    move-result v4

    .line 769
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1db
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ebook/model/Chapter;

    .line 770
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getChapterIndex()I

    move-result v1

    if-ge v1, v4, :cond_1db

    .line 772
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->getChildChapters(Lcom/bilibili/tv/ebook/model/Chapter;)Ljava/util/List;

    move-result-object v1

    .line 773
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1db

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/ebook/model/Chapter;

    invoke-virtual {v1}, Lcom/bilibili/tv/ebook/model/Chapter;->getChapterIndex()I

    move-result v1

    if-ne v1, v4, :cond_1db

    .line 774
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parentChapterTitle:Ljava/lang/String;

    goto :goto_1b2

    .line 785
    :cond_20a
    const-string v0, "EbookReader"

    const-string v1, "\u5173\u95ed\u7ae0\u8282\u5217\u8868"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->hideChapterList()V

    goto/16 :goto_9b

    .line 789
    :cond_216
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isFileChooserShown:Z

    if-eqz v0, :cond_226

    .line 791
    const-string v0, "EbookReader"

    const-string v1, "\u5173\u95ed\u6587\u4ef6\u9009\u62e9\u5668\uff0c\u56de\u5230\u7535\u5b50\u4e66\u9ed8\u8ba4\u754c\u9762"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->hideFileChooser()V

    goto/16 :goto_9b

    .line 794
    :cond_226
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isReadingBook:Z

    if-eqz v0, :cond_258

    .line 796
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 797
    iget-wide v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->lastBackPressTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x7d0

    cmp-long v3, v4, v6

    if-gez v3, :cond_246

    .line 799
    const-string v0, "EbookReader"

    const-string v1, "\u9605\u8bfb\u9875\u9762\u53cc\u51fb\u8fd4\u56de\uff0c\u5173\u95ed\u5f53\u524d\u4e66\u7c4d\uff0c\u56de\u5230\u7535\u5b50\u4e66\u9996\u9875"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iput-wide v8, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->lastBackPressTime:J

    .line 801
    invoke-virtual {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->closeCurrentBook()V

    goto/16 :goto_9b

    .line 805
    :cond_246
    iput-wide v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->lastBackPressTime:J

    .line 806
    const-string v0, "EbookReader"

    const-string v1, "\u9605\u8bfb\u9875\u9762\u7b2c\u4e00\u6b21\u6309\u8fd4\u56de\u952e\uff0c\u663e\u793a\u63d0\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    const-string v1, "\u518d\u6309\u4e00\u6b21\u5173\u95ed\u5f53\u524d\u4e66\u7c4d"

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showToast(Ljava/lang/String;)V

    goto/16 :goto_9b

    .line 812
    :cond_258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 813
    iget-wide v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->lastBackPressTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x7d0

    cmp-long v3, v4, v6

    if-gez v3, :cond_274

    .line 815
    const-string v0, "EbookReader"

    const-string v1, "\u9996\u9875\u53cc\u51fb\u8fd4\u56de\uff0c\u9000\u51fa\u7535\u5b50\u4e66\u6a21\u5f0f"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    iput-wide v8, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->lastBackPressTime:J

    .line 817
    invoke-virtual {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->openEbookReader()V

    goto/16 :goto_9b

    .line 821
    :cond_274
    iput-wide v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->lastBackPressTime:J

    .line 822
    const-string v0, "EbookReader"

    const-string v1, "\u9996\u9875\u7b2c\u4e00\u6b21\u6309\u8fd4\u56de\u952e\uff0c\u663e\u793a\u63d0\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    const-string v1, "\u518d\u6309\u4e00\u6b21\u9000\u51fa\u7535\u5b50\u4e66\u6a21\u5f0f"

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showToast(Ljava/lang/String;)V

    goto/16 :goto_9b

    .line 834
    :cond_286
    sparse-switch p1, :sswitch_data_2c6

    .line 848
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->confirmKeyLongPressHandled:Z

    if-eqz v0, :cond_292

    .line 849
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0, v2}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showMenu(Z)V

    .line 851
    :cond_292
    iput-boolean v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->confirmKeyLongPressHandled:Z

    .line 852
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isMenuShown()Z

    move-result v2

    goto/16 :goto_9b

    .line 836
    :sswitch_29c
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isMenuShown()Z

    move-result v0

    if-eqz v0, :cond_2ab

    .line 837
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0, v3}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showMenu(Z)V

    goto/16 :goto_9b

    :cond_2ab
    move v2, v3

    .line 840
    goto/16 :goto_9b

    .line 842
    :sswitch_2ae
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isMenuShown()Z

    move-result v1

    if-nez v1, :cond_2b9

    move v3, v2

    :cond_2b9
    invoke-interface {v0, v3}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showMenu(Z)V

    goto/16 :goto_9b

    .line 846
    :sswitch_2be
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isMenuShown()Z

    move-result v2

    goto/16 :goto_9b

    .line 834
    :sswitch_data_2c6
    .sparse-switch
        0x4 -> :sswitch_29c
        0x13 -> :sswitch_2be
        0x14 -> :sswitch_2be
        0x52 -> :sswitch_2ae
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 573
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

    .line 574
    invoke-interface {v4}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isMenuShown()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 573
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-boolean v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    if-eqz v2, :cond_a7

    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isConfirmKey(I)Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 578
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 579
    iget-wide v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->lastConfirmKeyPressTime:J

    sub-long v4, v2, v4

    .line 581
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

    .line 584
    const-wide/16 v6, 0x320

    cmp-long v4, v4, v6

    if-lez v4, :cond_86

    .line 585
    iput v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->confirmKeyClickCount:I

    .line 588
    :cond_86
    iget v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->confirmKeyClickCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->confirmKeyClickCount:I

    .line 589
    iput-wide v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->lastConfirmKeyPressTime:J

    .line 592
    iget v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->confirmKeyClickCount:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_a0

    .line 593
    const-string v2, "EbookReader"

    const-string v3, "\u8fde\u51fb\u4e09\u6b21\u786e\u5b9a\u952e\uff0c\u9690\u85cf\u7535\u5b50\u4e66\u533a\u57df\uff08\u4e0d\u6e05\u7a7a\u4e66\u7c4d\u6570\u636e\uff09"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iput v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->confirmKeyClickCount:I

    .line 595
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->hideEbookPanel()V

    .line 661
    :goto_9f
    return v1

    .line 600
    :cond_a0
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isMenuShown()Z

    move-result v1

    goto :goto_9f

    .line 604
    :cond_a7
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->controlTarget:Ljava/lang/String;

    const-string v3, "ebook"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bf

    .line 605
    const-string v0, "EbookReader"

    const-string v1, "onKeyUp: \u63a7\u5236\u76ee\u6807\u4e0d\u662f\u7535\u5b50\u4e66\uff0c\u4e0d\u5904\u7406\u6309\u952e"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isMenuShown()Z

    move-result v1

    goto :goto_9f

    .line 610
    :cond_bf
    invoke-virtual {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookReadingContent()Z

    move-result v2

    if-eqz v2, :cond_15c

    .line 611
    const-string v2, "EbookReader"

    const-string v3, "onKeyUp: \u5728\u7535\u5b50\u4e66\u9605\u8bfb\u5185\u5bb9\u9875\u9762"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_10e

    .line 615
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

    .line 616
    invoke-virtual {v4}, Landroid/webkit/WebView;->getScrollY()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", contentHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    .line 617
    invoke-virtual {v4}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 615
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_10e
    const/16 v2, 0x13

    if-ne p1, v2, :cond_125

    .line 622
    const-string v2, "EbookReader"

    const-string v3, "onKeyUp: \u7535\u5b50\u4e66\u9605\u8bfb\u9875\u9762\uff1a\u5411\u4e0a\u6eda\u52a8"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    const/16 v3, -0xc8

    invoke-virtual {v2, v0, v3}, Landroid/webkit/WebView;->scrollBy(II)V

    .line 624
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->scheduleSaveReadingProgress()V

    goto/16 :goto_9f

    .line 628
    :cond_125
    const/16 v2, 0x14

    if-ne p1, v2, :cond_13c

    .line 629
    const-string v2, "EbookReader"

    const-string v3, "onKeyUp: \u7535\u5b50\u4e66\u9605\u8bfb\u9875\u9762\uff1a\u5411\u4e0b\u6eda\u52a8"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    const/16 v3, 0xc8

    invoke-virtual {v2, v0, v3}, Landroid/webkit/WebView;->scrollBy(II)V

    .line 631
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->scheduleSaveReadingProgress()V

    goto/16 :goto_9f

    .line 636
    :cond_13c
    const/16 v2, 0x15

    if-ne p1, v2, :cond_14c

    .line 637
    const-string v0, "EbookReader"

    const-string v2, "onKeyUp: \u7535\u5b50\u4e66\u9605\u8bfb\u9875\u9762\uff1a\u5411\u4e0a\u7ffb\u9875\uff08\u5de6\u952e\uff09"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    invoke-direct {p0, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->handlePageTurn(Z)V

    goto/16 :goto_9f

    .line 642
    :cond_14c
    const/16 v2, 0x16

    if-ne p1, v2, :cond_15c

    .line 643
    const-string v2, "EbookReader"

    const-string v3, "onKeyUp: \u7535\u5b50\u4e66\u9605\u8bfb\u9875\u9762\uff1a\u5411\u4e0b\u7ffb\u9875\uff08\u53f3\u952e\uff09"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->handlePageTurn(Z)V

    goto/16 :goto_9f

    .line 650
    :cond_15c
    iget-boolean v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    if-eqz v2, :cond_183

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->controlTarget:Ljava/lang/String;

    const-string v3, "ebook"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_183

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_176

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    .line 651
    invoke-virtual {v2}, Landroid/webkit/WebView;->isShown()Z

    move-result v2

    if-nez v2, :cond_183

    :cond_176
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    if-eqz v2, :cond_183

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    .line 652
    invoke-virtual {v2}, Landroid/widget/ListView;->isShown()Z

    move-result v2

    if-eqz v2, :cond_183

    move v0, v1

    .line 654
    :cond_183
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isConfirmKey(I)Z

    move-result v2

    if-eqz v2, :cond_196

    iget-boolean v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->confirmKeyLongPressHandled:Z

    if-nez v2, :cond_196

    .line 656
    if-eqz v0, :cond_196

    .line 657
    iput-boolean v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->confirmKeyLongPressHandled:Z

    .line 658
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showMenu(Z)V

    .line 661
    :cond_196
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isMenuShown()Z

    move-result v1

    goto/16 :goto_9f
.end method

.method public onMenuClosed()V
    .locals 2

    .prologue
    .line 871
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->controlTarget:Ljava/lang/String;

    const-string v1, "ebook"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 872
    const-string v0, "EbookReader"

    const-string v1, "onMenuClosed: \u6062\u590d\u7126\u70b9\u5230\u7535\u5b50\u4e66\u533a\u57df"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isReadingBook:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_29

    .line 878
    const-string v0, "EbookReader"

    const-string v1, "onMenuClosed: \u9605\u8bfb\u9875\u9762\uff0cWebView\u4fdd\u6301\u4e0d\u53ef\u805a\u7126\uff0c\u4e0d\u6062\u590d\u7126\u70b9"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :cond_28
    :goto_28
    return-void

    .line 879
    :cond_29
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 881
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$8;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$8;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_28
.end method

.method public onVideoSwitch()V
    .locals 6

    .prologue
    .line 962
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    if-eqz v0, :cond_22

    .line 963
    const-string v0, "EbookReader"

    const-string v1, "onVideoSwitch: \u7535\u5b50\u4e66\u533a\u57df\u5df2\u6253\u5f00\uff0c\u91cd\u65b0\u5e94\u7528\u89c6\u9891\u7f29\u5c0f"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 965
    if-eqz v0, :cond_22

    .line 967
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$9;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$9;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/app/Activity;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 981
    :cond_22
    return-void
.end method

.method public openEbookFileChooser()V
    .locals 4

    .prologue
    .line 250
    const-string v0, "EbookReader"

    const-string v1, "openEbookFileChooser() called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 253
    if-nez v0, :cond_17

    .line 254
    const-string v0, "EbookReader"

    const-string v1, "Activity is null, cannot open file chooser"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :goto_16
    return-void

    .line 260
    :cond_17
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isMenuShown()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 261
    const-string v0, "EbookReader"

    const-string v1, "\u53f3\u4fa7\u83dc\u5355\u6b63\u5728\u663e\u793a\uff0c\u5148\u5173\u95ed\u83dc\u5355"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showMenu(Z)V

    .line 264
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$2;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_16

    .line 272
    :cond_3c
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showFileChooserInPanel()V

    goto :goto_16
.end method

.method public openEbookReader()V
    .locals 4

    .prologue
    .line 184
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

    .line 186
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    if-eqz v0, :cond_22

    .line 188
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->closeEbookPanel()V

    .line 210
    :goto_21
    return-void

    .line 191
    :cond_22
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ebook/util/EbookFileStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->reloadFromFile()V

    .line 193
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ensureStoragePermissionForEbook()V

    .line 195
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->isMenuShown()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 196
    const-string v0, "EbookReader"

    const-string v1, "\u53f3\u4fa7\u83dc\u5355\u6b63\u5728\u663e\u793a\uff0c\u5148\u5173\u95ed\u83dc\u5355"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showMenu(Z)V

    .line 199
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$1;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_21

    .line 207
    :cond_57
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showEbookPanel()V

    goto :goto_21
.end method

.method public setEbookColorTheme(I)V
    .locals 3

    .prologue
    .line 485
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

    .line 488
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ebook/util/EbookFileStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->saveColorThemeIndex(I)V

    .line 489
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

    .line 492
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_48

    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isReadingBook:Z

    if-eqz v0, :cond_48

    .line 493
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->applyColorThemeToWebView(I)V

    .line 495
    :cond_48
    return-void
.end method

.method public setEbookFontSize(F)V
    .locals 3

    .prologue
    .line 471
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

    .line 474
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ebook/util/EbookFileStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->saveFontSize(F)V

    .line 475
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

    .line 478
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_48

    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isReadingBook:Z

    if-eqz v0, :cond_48

    .line 479
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->applyFontSizeToWebView(F)V

    .line 481
    :cond_48
    return-void
.end method

.method public setEbookPercent(I)V
    .locals 4

    .prologue
    .line 499
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

    .line 502
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_84

    .line 503
    if-ltz p1, :cond_23

    array-length v1, v0

    if-lt p1, v1, :cond_24

    .line 526
    :cond_23
    :goto_23
    return-void

    .line 507
    :cond_24
    aget v0, v0, p1

    .line 508
    iput v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanelPercent:I

    .line 511
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ebook/util/EbookFileStore;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->saveScreenPercent(I)V

    .line 512
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

    .line 515
    iget-boolean v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    if-eqz v1, :cond_64

    .line 516
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$6;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$6;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 525
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

    .line 502
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
    .line 530
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

    .line 532
    if-ltz p1, :cond_1d

    const/4 v0, 0x3

    if-le p1, v0, :cond_1e

    .line 558
    :cond_1d
    :goto_1d
    return-void

    .line 536
    :cond_1e
    iput p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPosition:I

    .line 539
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ebook/util/EbookFileStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->saveVideoPosition(I)V

    .line 540
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    if-eqz v0, :cond_9b

    if-ltz p1, :cond_9b

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_9b

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    .line 541
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 542
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

    .line 545
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    if-eqz v0, :cond_6c

    .line 546
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$7;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$7;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 555
    :cond_6c
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    if-eqz v0, :cond_9e

    if-ltz p1, :cond_9e

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_9e

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->videoPositionList:Ljava/util/List;

    .line 556
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 557
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

    .line 541
    :cond_9b
    const-string v0, "\u5de6\u4e0a"

    goto :goto_43

    .line 556
    :cond_9e
    const-string v0, "\u5de6\u4e0a"

    goto :goto_82
.end method

.method public showChapterList()V
    .locals 4

    .prologue
    .line 443
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentBook:Lcom/bilibili/tv/ebook/model/Book;

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 444
    :cond_c
    const-string v0, "EbookReader"

    const-string v1, "\u65e0\u4e66\u7c4d\u6570\u636e\uff0c\u65e0\u6cd5\u663e\u793a\u7ae0\u8282\u5217\u8868"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    const-string v1, "\u65e0\u7ae0\u8282\u4fe1\u606f"

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showToast(Ljava/lang/String;)V

    .line 467
    :goto_1a
    return-void

    .line 449
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

    .line 450
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isChapterListShown:Z

    .line 453
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterNavigationStack:Ljava/util/Stack;

    .line 454
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parentChapterTitle:Ljava/lang/String;

    .line 457
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->getRootChapters()Ljava/util/List;

    move-result-object v0

    .line 458
    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterList:Ljava/util/List;

    .line 461
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$5;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$5;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1a
.end method

.method public switchControlTarget(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 307
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

    .line 309
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->isEbookPanelShown:Z

    if-nez v0, :cond_26

    .line 310
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u9762\u677f\u672a\u663e\u793a\uff0c\u65e0\u6cd5\u5207\u6362\u63a7\u5236\u76ee\u6807"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :goto_25
    return-void

    .line 314
    :cond_26
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->controlTarget:Ljava/lang/String;

    .line 320
    const-string v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 322
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    if-eqz v0, :cond_4a

    .line 323
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 324
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 325
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearFocus()V

    .line 326
    const-string v0, "EbookReader"

    const-string v1, "\u7981\u7528\u4e66\u67b6\u5217\u8868\u6240\u6709\u4ea4\u4e92"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_4a
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    if-eqz v0, :cond_64

    .line 329
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 330
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 331
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearFocus()V

    .line 332
    const-string v0, "EbookReader"

    const-string v1, "\u7981\u7528\u7ae0\u8282\u5217\u8868\u6240\u6709\u4ea4\u4e92"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_64
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_79

    .line 336
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 337
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 338
    const-string v0, "EbookReader"

    const-string v1, "WebView\u4fdd\u6301\u53ef\u7528\uff0c\u4ec5\u7981\u7528\u7126\u70b9"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_79
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_8e

    .line 341
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 342
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 343
    const-string v0, "EbookReader"

    const-string v1, "\u7981\u7528\u7535\u5b50\u4e66\u9762\u677f\u6240\u6709\u4ea4\u4e92"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_8e
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->requestVideoFocus()V

    .line 381
    :cond_93
    :goto_93
    const-string v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13f

    .line 382
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    const-string v1, "\u9065\u63a7\u5668\u64cd\u4f5c\u5df2\u5207\u6362\u5230\u89c6\u9891"

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showToast(Ljava/lang/String;)V

    .line 387
    :goto_a2
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

    .line 348
    :cond_bc
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_db

    .line 349
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 350
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 351
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 352
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 353
    const-string v0, "EbookReader"

    const-string v1, "\u542f\u7528\u7535\u5b50\u4e66\u9762\u677f\u6240\u6709\u4ea4\u4e92"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_db
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    if-eqz v0, :cond_ff

    .line 356
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 357
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 358
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setClickable(Z)V

    .line 359
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 360
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 361
    const-string v0, "EbookReader"

    const-string v1, "\u542f\u7528\u4e66\u67b6\u5217\u8868\u6240\u6709\u4ea4\u4e92"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_ff
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    if-eqz v0, :cond_123

    .line 364
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 365
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 366
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setClickable(Z)V

    .line 367
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 368
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 369
    const-string v0, "EbookReader"

    const-string v1, "\u542f\u7528\u7ae0\u8282\u5217\u8868\u6240\u6709\u4ea4\u4e92"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_123
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_93

    .line 373
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 374
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 375
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setEnabled(Z)V

    .line 376
    const-string v0, "EbookReader"

    const-string v1, "\u542f\u7528WebView\u6240\u6709\u4ea4\u4e92"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_93

    .line 384
    :cond_13f
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;

    const-string v1, "\u9065\u63a7\u5668\u64cd\u4f5c\u5df2\u5207\u6362\u5230\u7535\u5b50\u4e66"

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->showToast(Ljava/lang/String;)V

    goto/16 :goto_a2
.end method
