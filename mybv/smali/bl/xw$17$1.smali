.class Lbl/xw$17$1;
.super Ljava/lang/Object;
.source "xw.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xw$17;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbl/xw$17;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lbl/xw$17;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 1519
    iput-object p1, p0, Lbl/xw$17$1;->this$1:Lbl/xw$17;

    iput-object p2, p0, Lbl/xw$17$1;->val$view:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1522
    iget-object v0, p0, Lbl/xw$17$1;->this$1:Lbl/xw$17;

    iget-boolean v0, v0, Lbl/xw$17;->val$scrollToBottom:Z

    if-eqz v0, :cond_50

    .line 1524
    const-string v0, "EbookReader"

    const-string v1, "\u9875\u9762\u52a0\u8f7d\u5b8c\u6210\uff0c\u6eda\u52a8\u5230\u7ae0\u8282\u5e95\u90e8"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    iget-object v0, p0, Lbl/xw$17$1;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    .line 1526
    iget-object v1, p0, Lbl/xw$17$1;->this$1:Lbl/xw$17;

    iget-object v1, v1, Lbl/xw$17;->this$0:Lbl/xw;

    invoke-virtual {v1}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 1527
    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1528
    iget-object v1, p0, Lbl/xw$17$1;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    .line 1529
    sub-int/2addr v0, v1

    .line 1530
    if-lez v0, :cond_4f

    .line 1531
    iget-object v1, p0, Lbl/xw$17$1;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v1, v3, v0}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 1532
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

    .line 1544
    :cond_4f
    :goto_4f
    return-void

    .line 1534
    :cond_50
    iget-object v0, p0, Lbl/xw$17$1;->this$1:Lbl/xw$17;

    iget v0, v0, Lbl/xw$17;->val$restorePage:I

    if-ltz v0, :cond_4f

    .line 1536
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9875\u9762\u52a0\u8f7d\u5b8c\u6210\uff0c\u6062\u590d\u5230\u9875\u7801: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/xw$17$1;->this$1:Lbl/xw$17;

    iget v2, v2, Lbl/xw$17;->val$restorePage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    iget-object v0, p0, Lbl/xw$17$1;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    .line 1538
    iget-object v1, p0, Lbl/xw$17$1;->this$1:Lbl/xw$17;

    iget v1, v1, Lbl/xw$17;->val$restorePage:I

    mul-int/2addr v0, v1

    .line 1539
    if-lez v0, :cond_4f

    .line 1540
    iget-object v1, p0, Lbl/xw$17$1;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v1, v3, v0}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 1541
    const-string v1, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5df2\u6eda\u52a8\u5230\u9875\u7801 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbl/xw$17$1;->this$1:Lbl/xw$17;

    iget v3, v3, Lbl/xw$17;->val$restorePage:I

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
