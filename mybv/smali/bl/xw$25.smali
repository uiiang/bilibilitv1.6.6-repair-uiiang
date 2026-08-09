.class Lbl/xw$25;
.super Ljava/lang/Object;
.source "xw.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xw;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;IZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastClickTime:J

.field final synthetic this$0:Lbl/xw;


# direct methods
.method constructor <init>(Lbl/xw;)V
    .locals 2

    .prologue
    .line 2569
    iput-object p1, p0, Lbl/xw$25;->this$0:Lbl/xw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2570
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbl/xw$25;->lastClickTime:J

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2575
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_16

    .line 2577
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2578
    iget-wide v4, p0, Lbl/xw$25;->lastClickTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x12c

    cmp-long v4, v4, v6

    if-gez v4, :cond_17

    .line 2605
    :cond_16
    :goto_16
    return v0

    .line 2581
    :cond_17
    iput-wide v2, p0, Lbl/xw$25;->lastClickTime:J

    .line 2584
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 2586
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 2588
    const-string v4, "EbookReader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u89e6\u6478\u4e8b\u4ef6: x="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", webViewWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2591
    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpg-float v2, v3, v2

    if-gez v2, :cond_58

    .line 2593
    const-string v0, "EbookReader"

    const-string v2, "\u89e6\u6478\u5de6\u534a\u8fb9\uff0c\u5411\u524d\u7ffb\u9875"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2594
    iget-object v0, p0, Lbl/xw$25;->this$0:Lbl/xw;

    # invokes: Lbl/xw;->handlePageTurn(Z)V
    invoke-static {v0, v1}, Lbl/xw;->access$2300(Lbl/xw;Z)V

    move v0, v1

    .line 2595
    goto :goto_16

    .line 2598
    :cond_58
    const-string v2, "EbookReader"

    const-string v3, "\u89e6\u6478\u53f3\u534a\u8fb9\uff0c\u5411\u540e\u7ffb\u9875"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2599
    iget-object v2, p0, Lbl/xw$25;->this$0:Lbl/xw;

    # invokes: Lbl/xw;->handlePageTurn(Z)V
    invoke-static {v2, v0}, Lbl/xw;->access$2300(Lbl/xw;Z)V

    move v0, v1

    .line 2600
    goto :goto_16
.end method
