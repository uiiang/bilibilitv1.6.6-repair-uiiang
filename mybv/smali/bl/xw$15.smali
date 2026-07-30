.class Lbl/xw$15;
.super Ljava/lang/Object;
.source "xw.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xw;->showBookshelfInPanel()V
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
    .line 1764
    iput-object p1, p0, Lbl/xw$15;->this$0:Lbl/xw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1767
    iget-object v0, p0, Lbl/xw$15;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->isEbookPanelShown:Z
    invoke-static {v0}, Lbl/xw;->access$1400(Lbl/xw;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lbl/xw$15;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lbl/xw;->access$1500(Lbl/xw;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lbl/xw$15;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lbl/xw;->access$1500(Lbl/xw;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2d

    .line 1768
    const-string v0, "EbookReader"

    const-string v1, "\u68c0\u6d4b\u5230\u7535\u5b50\u4e66\u9762\u677f\u672a\u663e\u793a\uff0c\u5f3a\u5236\u6062\u590d\u663e\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    iget-object v0, p0, Lbl/xw$15;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lbl/xw;->access$1500(Lbl/xw;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1771
    :cond_2d
    return-void
.end method
