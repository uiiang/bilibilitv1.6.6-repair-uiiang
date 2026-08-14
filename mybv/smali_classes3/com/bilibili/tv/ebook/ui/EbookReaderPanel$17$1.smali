.class Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$17$1;
.super Ljava/lang/Object;
.source "EbookReaderPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$17;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$17;

.field final synthetic val$parent:Landroid/widget/AdapterView;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$17;Landroid/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 1410
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$17$1;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$17;

    iput-object p2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$17$1;->val$parent:Landroid/widget/AdapterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$17$1;->val$parent:Landroid/widget/AdapterView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 1414
    return-void
.end method
