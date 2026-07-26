.class Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$3;
.super Ljava/lang/Object;
.source "EbookFileChooserActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->createLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$3;->this$0:Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 184
    if-ltz p3, :cond_1f

    iget-object v0, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$3;->this$0:Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;

    # getter for: Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->fileItems:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->access$200(Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_1f

    .line 185
    iget-object v0, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$3;->this$0:Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;

    # getter for: Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->fileItems:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->access$200(Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$FileItem;

    .line 186
    iget-object v1, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$3;->this$0:Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;

    # invokes: Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->handleItemClick(Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$FileItem;)V
    invoke-static {v1, v0}, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->access$300(Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$FileItem;)V

    .line 188
    :cond_1f
    return-void
.end method
