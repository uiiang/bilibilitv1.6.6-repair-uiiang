.class Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$5;
.super Ljava/lang/Object;
.source "EbookFileChooserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->loadDirectory(Ljava/io/File;)V
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
    .line 247
    iput-object p1, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$5;->this$0:Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$5;->this$0:Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;

    # getter for: Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->fileListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->access$400(Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 251
    iget-object v0, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$5;->this$0:Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;

    # getter for: Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->fileListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->access$400(Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 252
    return-void
.end method
