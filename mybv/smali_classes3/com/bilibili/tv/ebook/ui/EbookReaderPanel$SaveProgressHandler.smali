.class Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;
.super Landroid/os/Handler;
.source "EbookReaderPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveProgressHandler"
.end annotation


# instance fields
.field private panelRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 86
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;->panelRef:Ljava/lang/ref/WeakReference;

    .line 87
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$SaveProgressHandler;->panelRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    .line 92
    if-eqz v0, :cond_d

    .line 93
    # invokes: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->saveReadingProgress()V
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$000(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    .line 95
    :cond_d
    return-void
.end method
