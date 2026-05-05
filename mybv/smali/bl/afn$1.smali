.class Lbl/afn$1;
.super Ljava/lang/Object;
.source "afn.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/afn;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/afn;


# direct methods
.method constructor <init>(Lbl/afn;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lbl/afn$1;->this$0:Lbl/afn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lbl/afn$1;->this$0:Lbl/afn;

    # getter for: Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;
    invoke-static {v0}, Lbl/afn;->access$000(Lbl/afn;)Lcom/bilibili/tv/widget/DrawFrameLayout;

    move-result-object v0

    if-eqz v0, :cond_a2

    .line 111
    const-string v0, "afn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exoPlayerBtn after layout: width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/afn$1;->this$0:Lbl/afn;

    # getter for: Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;
    invoke-static {v2}, Lbl/afn;->access$000(Lbl/afn;)Lcom/bilibili/tv/widget/DrawFrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/afn$1;->this$0:Lbl/afn;

    .line 112
    # getter for: Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;
    invoke-static {v2}, Lbl/afn;->access$000(Lbl/afn;)Lcom/bilibili/tv/widget/DrawFrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", visibility="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/afn$1;->this$0:Lbl/afn;

    .line 113
    # getter for: Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;
    invoke-static {v2}, Lbl/afn;->access$000(Lbl/afn;)Lcom/bilibili/tv/widget/DrawFrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", left="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/afn$1;->this$0:Lbl/afn;

    .line 114
    # getter for: Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;
    invoke-static {v2}, Lbl/afn;->access$000(Lbl/afn;)Lcom/bilibili/tv/widget/DrawFrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->getLeft()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", top="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/afn$1;->this$0:Lbl/afn;

    .line 115
    # getter for: Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;
    invoke-static {v2}, Lbl/afn;->access$000(Lbl/afn;)Lcom/bilibili/tv/widget/DrawFrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->getTop()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", right="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/afn$1;->this$0:Lbl/afn;

    .line 116
    # getter for: Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;
    invoke-static {v2}, Lbl/afn;->access$000(Lbl/afn;)Lcom/bilibili/tv/widget/DrawFrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->getRight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bottom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/afn$1;->this$0:Lbl/afn;

    .line 117
    # getter for: Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;
    invoke-static {v2}, Lbl/afn;->access$000(Lbl/afn;)Lcom/bilibili/tv/widget/DrawFrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->getBottom()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_a2
    iget-object v0, p0, Lbl/afn$1;->this$0:Lbl/afn;

    # getter for: Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;
    invoke-static {v0}, Lbl/afn;->access$100(Lbl/afn;)Lcom/bilibili/tv/widget/DrawFrameLayout;

    move-result-object v0

    if-eqz v0, :cond_130

    .line 120
    const-string v0, "afn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ijkPlayerBtn after layout: width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/afn$1;->this$0:Lbl/afn;

    # getter for: Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;
    invoke-static {v2}, Lbl/afn;->access$100(Lbl/afn;)Lcom/bilibili/tv/widget/DrawFrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/afn$1;->this$0:Lbl/afn;

    .line 121
    # getter for: Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;
    invoke-static {v2}, Lbl/afn;->access$100(Lbl/afn;)Lcom/bilibili/tv/widget/DrawFrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", left="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/afn$1;->this$0:Lbl/afn;

    .line 122
    # getter for: Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;
    invoke-static {v2}, Lbl/afn;->access$100(Lbl/afn;)Lcom/bilibili/tv/widget/DrawFrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->getLeft()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", top="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/afn$1;->this$0:Lbl/afn;

    .line 123
    # getter for: Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;
    invoke-static {v2}, Lbl/afn;->access$100(Lbl/afn;)Lcom/bilibili/tv/widget/DrawFrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->getTop()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", right="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/afn$1;->this$0:Lbl/afn;

    .line 124
    # getter for: Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;
    invoke-static {v2}, Lbl/afn;->access$100(Lbl/afn;)Lcom/bilibili/tv/widget/DrawFrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->getRight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bottom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/afn$1;->this$0:Lbl/afn;

    .line 125
    # getter for: Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;
    invoke-static {v2}, Lbl/afn;->access$100(Lbl/afn;)Lcom/bilibili/tv/widget/DrawFrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->getBottom()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_130
    return-void
.end method
