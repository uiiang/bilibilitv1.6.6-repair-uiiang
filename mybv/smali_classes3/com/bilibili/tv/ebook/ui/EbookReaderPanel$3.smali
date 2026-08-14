.class Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$3;
.super Ljava/lang/Object;
.source "EbookReaderPanel.java"

# interfaces
.implements Lbl/agb$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->clearBookshelf()V
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
    .line 432
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$3;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbl/agb;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 435
    invoke-virtual {p1}, Lbl/agb;->dismiss()V

    .line 436
    return-void
.end method
