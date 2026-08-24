.class Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$21;
.super Ljava/lang/Object;
.source "EbookReaderPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->onVideoSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1479
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$21;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    iput-object p2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$21;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1482
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1483
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$21;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1484
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1485
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1487
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$21;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$21;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->shrinkVideoView(Landroid/app/Activity;II)V
    invoke-static {v2, v3, v1, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$2200(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/app/Activity;II)V

    .line 1488
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$21;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$21;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->shrinkDanmakuView(Landroid/app/Activity;II)V
    invoke-static {v2, v3, v1, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$2300(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/app/Activity;II)V

    .line 1489
    return-void
.end method
