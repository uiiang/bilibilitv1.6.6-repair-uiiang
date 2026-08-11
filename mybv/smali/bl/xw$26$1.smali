.class Lbl/xw$26$1;
.super Ljava/lang/Object;
.source "xw.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xw$26;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbl/xw$26;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lbl/xw$26;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 2658
    iput-object p1, p0, Lbl/xw$26$1;->this$1:Lbl/xw$26;

    iput-object p2, p0, Lbl/xw$26$1;->val$view:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2662
    iget-object v0, p0, Lbl/xw$26$1;->this$1:Lbl/xw$26;

    iget-object v0, v0, Lbl/xw$26;->this$0:Lbl/xw;

    invoke-virtual {v0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebook_settings"

    invoke-virtual {v0, v1, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2663
    const-string v1, "font_size"

    const/high16 v2, 0x41e00000    # 28.0f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 2664
    const-string v2, "EbookReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u9875\u9762\u52a0\u8f7d\u5b8c\u6210\uff0c\u5e94\u7528\u5b57\u4f53\u5927\u5c0f: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2665
    iget-object v2, p0, Lbl/xw$26$1;->this$1:Lbl/xw$26;

    iget-object v2, v2, Lbl/xw$26;->this$0:Lbl/xw;

    # invokes: Lbl/xw;->applyFontSizeToWebView(F)V
    invoke-static {v2, v1}, Lbl/xw;->access$2500(Lbl/xw;F)V

    .line 2667
    const-string v1, "color_theme_index"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2668
    const-string v1, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u9875\u9762\u52a0\u8f7d\u5b8c\u6210\uff0c\u5e94\u7528\u914d\u8272\u65b9\u6848: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    iget-object v1, p0, Lbl/xw$26$1;->this$1:Lbl/xw$26;

    iget-object v1, v1, Lbl/xw$26;->this$0:Lbl/xw;

    # invokes: Lbl/xw;->applyColorThemeToWebView(I)V
    invoke-static {v1, v0}, Lbl/xw;->access$2600(Lbl/xw;I)V

    .line 2672
    iget-object v0, p0, Lbl/xw$26$1;->this$1:Lbl/xw$26;

    iget-boolean v0, v0, Lbl/xw$26;->val$scrollToBottom:Z

    if-eqz v0, :cond_b1

    .line 2674
    const-string v0, "EbookReader"

    const-string v1, "\u9875\u9762\u52a0\u8f7d\u5b8c\u6210\uff0c\u6eda\u52a8\u5230\u7ae0\u8282\u5e95\u90e8"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    iget-object v0, p0, Lbl/xw$26$1;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    .line 2676
    iget-object v1, p0, Lbl/xw$26$1;->this$1:Lbl/xw$26;

    iget-object v1, v1, Lbl/xw$26;->this$0:Lbl/xw;

    invoke-virtual {v1}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 2677
    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 2678
    iget-object v1, p0, Lbl/xw$26$1;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    .line 2679
    sub-int/2addr v0, v1

    .line 2680
    if-lez v0, :cond_a9

    .line 2681
    iget-object v1, p0, Lbl/xw$26$1;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v1, v5, v0}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 2682
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

    .line 2696
    :cond_a9
    :goto_a9
    iget-object v0, p0, Lbl/xw$26$1;->this$1:Lbl/xw$26;

    iget-object v0, v0, Lbl/xw$26;->this$0:Lbl/xw;

    # invokes: Lbl/xw;->scheduleSaveReadingProgress()V
    invoke-static {v0}, Lbl/xw;->access$2300(Lbl/xw;)V

    .line 2697
    return-void

    .line 2684
    :cond_b1
    iget-object v0, p0, Lbl/xw$26$1;->this$1:Lbl/xw$26;

    iget v0, v0, Lbl/xw$26;->val$restorePage:I

    if-ltz v0, :cond_a9

    .line 2686
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9875\u9762\u52a0\u8f7d\u5b8c\u6210\uff0c\u6062\u590d\u5230\u9875\u7801: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/xw$26$1;->this$1:Lbl/xw$26;

    iget v2, v2, Lbl/xw$26;->val$restorePage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2687
    iget-object v0, p0, Lbl/xw$26$1;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    .line 2688
    iget-object v1, p0, Lbl/xw$26$1;->this$1:Lbl/xw$26;

    iget v1, v1, Lbl/xw$26;->val$restorePage:I

    mul-int/2addr v0, v1

    .line 2689
    if-lez v0, :cond_a9

    .line 2690
    iget-object v1, p0, Lbl/xw$26$1;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v1, v5, v0}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 2691
    const-string v1, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5df2\u6eda\u52a8\u5230\u9875\u7801 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbl/xw$26$1;->this$1:Lbl/xw$26;

    iget v3, v3, Lbl/xw$26;->val$restorePage:I

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

    goto :goto_a9
.end method
