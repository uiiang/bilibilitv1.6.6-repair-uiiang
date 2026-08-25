.class Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$38$2;
.super Ljava/lang/Object;
.source "EbookReaderPanel.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$38;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$38;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$38;)V
    .locals 0

    .prologue
    .line 2775
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$38$2;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$38;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 2779
    new-instance v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$38$2$1;

    invoke-direct {v0, p0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$38$2$1;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$38$2;Landroid/widget/AdapterView;)V

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->post(Ljava/lang/Runnable;)Z

    .line 2785
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2789
    return-void
.end method
