.class Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$6;
.super Ljava/lang/Object;
.source "EbookReaderPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->setEbookPercent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V
    .locals 0

    .prologue
    .line 516
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$6;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$6;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # invokes: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->applyEbookPanelPercent()V
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$1000(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    .line 520
    return-void
.end method
