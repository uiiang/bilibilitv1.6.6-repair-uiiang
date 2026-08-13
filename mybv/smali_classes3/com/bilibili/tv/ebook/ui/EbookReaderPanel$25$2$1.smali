.class Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25$2$1;
.super Ljava/lang/Object;
.source "EbookReaderPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25$2;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25$2;

.field final synthetic val$parent:Landroid/widget/AdapterView;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25$2;Landroid/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 2137
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25$2$1;->this$2:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25$2;

    iput-object p2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25$2$1;->val$parent:Landroid/widget/AdapterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2140
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25$2$1;->val$parent:Landroid/widget/AdapterView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 2141
    return-void
.end method
