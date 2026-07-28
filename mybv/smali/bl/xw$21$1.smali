.class Lbl/xw$21$1;
.super Ljava/lang/Object;
.source "xw.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xw$21;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbl/xw$21;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lbl/xw$21;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 1719
    iput-object p1, p0, Lbl/xw$21$1;->this$1:Lbl/xw$21;

    iput-object p2, p0, Lbl/xw$21$1;->val$view:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1722
    iget-object v0, p0, Lbl/xw$21$1;->this$1:Lbl/xw$21;

    iget-boolean v0, v0, Lbl/xw$21;->val$scrollToBottom:Z

    if-eqz v0, :cond_50

    .line 1724
    const-string v0, "EbookReader"

    const-string v1, "\u9875\u9762\u52a0\u8f7d\u5b8c\u6210\uff0c\u6eda\u52a8\u5230\u7ae0\u8282\u5e95\u90e8"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    iget-object v0, p0, Lbl/xw$21$1;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    .line 1726
    iget-object v1, p0, Lbl/xw$21$1;->this$1:Lbl/xw$21;

    iget-object v1, v1, Lbl/xw$21;->this$0:Lbl/xw;

    invoke-virtual {v1}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 1727
    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1728
    iget-object v1, p0, Lbl/xw$21$1;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    .line 1729
    sub-int/2addr v0, v1

    .line 1730
    if-lez v0, :cond_4f

    .line 1731
    iget-object v1, p0, Lbl/xw$21$1;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v1, v3, v0}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 1732
    const-string v1, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5df2\u6eda\u52a8\u5230\u7ae0\u8282\u5e95\u90e8: scrollY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    :cond_4f
    :goto_4f
    return-void

    .line 1734
    :cond_50
    iget-object v0, p0, Lbl/xw$21$1;->this$1:Lbl/xw$21;

    iget v0, v0, Lbl/xw$21;->val$restorePage:I

    if-ltz v0, :cond_4f

    .line 1736
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9875\u9762\u52a0\u8f7d\u5b8c\u6210\uff0c\u6062\u590d\u5230\u9875\u7801: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/xw$21$1;->this$1:Lbl/xw$21;

    iget v2, v2, Lbl/xw$21;->val$restorePage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    iget-object v0, p0, Lbl/xw$21$1;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    .line 1738
    iget-object v1, p0, Lbl/xw$21$1;->this$1:Lbl/xw$21;

    iget v1, v1, Lbl/xw$21;->val$restorePage:I

    mul-int/2addr v0, v1

    .line 1739
    if-lez v0, :cond_4f

    .line 1740
    iget-object v1, p0, Lbl/xw$21$1;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v1, v3, v0}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 1741
    const-string v1, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5df2\u6eda\u52a8\u5230\u9875\u7801 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbl/xw$21$1;->this$1:Lbl/xw$21;

    iget v3, v3, Lbl/xw$21;->val$restorePage:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": scrollY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f
.end method
