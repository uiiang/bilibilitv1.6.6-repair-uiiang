.class Lbl/xw$13$1;
.super Ljava/lang/Object;
.source "xw.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xw$13;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbl/xw$13;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lbl/xw$13;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 1293
    iput-object p1, p0, Lbl/xw$13$1;->this$1:Lbl/xw$13;

    iput-object p2, p0, Lbl/xw$13$1;->val$view:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1296
    iget-object v0, p0, Lbl/xw$13$1;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    .line 1297
    iget-object v1, p0, Lbl/xw$13$1;->this$1:Lbl/xw$13;

    iget-object v1, v1, Lbl/xw$13;->this$0:Lbl/xw;

    invoke-virtual {v1}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 1298
    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1299
    iget-object v1, p0, Lbl/xw$13$1;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    .line 1300
    sub-int/2addr v0, v1

    .line 1301
    if-lez v0, :cond_42

    .line 1302
    iget-object v1, p0, Lbl/xw$13$1;->val$view:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 1303
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

    .line 1305
    :cond_42
    return-void
.end method
