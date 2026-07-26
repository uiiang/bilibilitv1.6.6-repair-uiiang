.class Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$1;
.super Ljava/lang/Object;
.source "EbookFileChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 160
    iput-object p1, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$1;->this$0:Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$1;->this$0:Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;

    # invokes: Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->navigateUp()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->access$100(Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;)V

    .line 164
    return-void
.end method
