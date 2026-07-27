.class Lbl/xw$15;
.super Ljava/lang/Object;
.source "xw.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xw;->hideChapterList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/xw;


# direct methods
.method constructor <init>(Lbl/xw;)V
    .locals 0

    .prologue
    .line 1429
    iput-object p1, p0, Lbl/xw$15;->this$0:Lbl/xw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1433
    iget-object v0, p0, Lbl/xw$15;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lbl/xw;->access$300(Lbl/xw;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_68

    .line 1435
    iget-object v0, p0, Lbl/xw$15;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lbl/xw;->access$300(Lbl/xw;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_16
    if-ltz v2, :cond_62

    .line 1436
    iget-object v0, p0, Lbl/xw$15;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lbl/xw;->access$300(Lbl/xw;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1437
    instance-of v3, v0, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_a4

    .line 1439
    check-cast v0, Landroid/widget/FrameLayout;

    .line 1440
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_a4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/TextView;

    if-eqz v3, :cond_a4

    .line 1441
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1442
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_a4

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\u7ae0\u8282\u5217\u8868"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 1443
    const-string v0, "EbookReader"

    const-string v3, "\u627e\u5230\u7ae0\u8282\u5217\u8868\u5bb9\u5668\uff0c\u79fb\u9664"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    iget-object v0, p0, Lbl/xw$15;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lbl/xw;->access$300(Lbl/xw;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    .line 1450
    :cond_62
    iget-object v0, p0, Lbl/xw$15;->this$0:Lbl/xw;

    const/4 v2, 0x0

    # setter for: Lbl/xw;->chapterListView:Landroid/widget/ListView;
    invoke-static {v0, v2}, Lbl/xw;->access$1102(Lbl/xw;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 1454
    :cond_68
    iget-object v0, p0, Lbl/xw$15;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->ebookWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lbl/xw;->access$900(Lbl/xw;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_79

    .line 1455
    iget-object v0, p0, Lbl/xw$15;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->ebookWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lbl/xw;->access$900(Lbl/xw;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1458
    :cond_79
    const-string v2, "EbookReader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7ae0\u8282\u5217\u8868\u5df2\u9690\u85cf\uff0c\u7535\u5b50\u4e66\u9762\u677f\u5b50\u89c6\u56fe\u6570: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lbl/xw$15;->this$0:Lbl/xw;

    .line 1459
    # getter for: Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lbl/xw;->access$300(Lbl/xw;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_a9

    iget-object v0, p0, Lbl/xw$15;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lbl/xw;->access$300(Lbl/xw;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    :goto_98
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1458
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    return-void

    .line 1435
    :cond_a4
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto/16 :goto_16

    :cond_a9
    move v0, v1

    .line 1459
    goto :goto_98
.end method
