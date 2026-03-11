.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$c$1;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;->b(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;

.field final synthetic val$baseListener:Landroid/view/View$OnFocusChangeListener;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    .prologue
    .line 2150
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$c$1;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$c$1;->val$baseListener:Landroid/view/View$OnFocusChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 2154
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$c$1;->val$baseListener:Landroid/view/View$OnFocusChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 2156
    if-eqz p2, :cond_32

    .line 2159
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 2160
    instance-of v1, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    if-eqz v1, :cond_32

    .line 2161
    check-cast v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    .line 2162
    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->blockEpisodeAutoFocus:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 2164
    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 2165
    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_32

    .line 2166
    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    .line 2171
    :cond_32
    return-void
.end method
