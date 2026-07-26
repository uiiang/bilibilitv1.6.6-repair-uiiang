.class Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$2;
.super Ljava/lang/Object;
.source "EbookFileChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 168
    iput-object p1, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$2;->this$0:Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 171
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_15

    const/16 v1, 0x17

    if-eq p2, v1, :cond_f

    const/16 v1, 0x42

    if-ne p2, v1, :cond_15

    .line 173
    :cond_f
    iget-object v1, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$2;->this$0:Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;

    # invokes: Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->navigateUp()V
    invoke-static {v1}, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->access$100(Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;)V

    .line 176
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method
