.class Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$6$1;
.super Ljava/lang/Object;
.source "EbookReaderPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$6;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$6;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$6;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 627
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$6$1;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$6;

    iput-object p2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$6$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$6$1;->val$v:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 631
    return-void
.end method
