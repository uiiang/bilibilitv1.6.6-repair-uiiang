.class Lbl/xw$23;
.super Ljava/lang/Object;
.source "xw.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xw;->hideLoadingIndicator()V
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
    .line 2032
    iput-object p1, p0, Lbl/xw$23;->this$0:Lbl/xw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 2035
    iget-object v0, p0, Lbl/xw$23;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->loadingProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lbl/xw;->access$1600(Lbl/xw;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2036
    iget-object v0, p0, Lbl/xw$23;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->loadingProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lbl/xw;->access$1600(Lbl/xw;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2038
    :cond_13
    iget-object v0, p0, Lbl/xw$23;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->loadingTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lbl/xw;->access$1700(Lbl/xw;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 2039
    iget-object v0, p0, Lbl/xw$23;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->loadingTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lbl/xw;->access$1700(Lbl/xw;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2041
    :cond_24
    const-string v0, "EbookReader"

    const-string v1, "\u52a0\u8f7d\u8fdb\u5ea6\u63d0\u793a\u5df2\u9690\u85cf"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    return-void
.end method
