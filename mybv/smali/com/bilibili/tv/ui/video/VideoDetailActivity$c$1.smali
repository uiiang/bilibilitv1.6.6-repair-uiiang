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


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;)V
    .locals 0

    .prologue
    .line 2302
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$c$1;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 2305
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$c$1;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;->n:Lcom/bilibili/tv/widget/DrawTextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;->access$2000(Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;)Lcom/bilibili/tv/widget/DrawTextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bilibili/tv/widget/DrawTextView;->setUpEnabled(Z)V

    .line 2306
    if-eqz p2, :cond_36

    .line 2307
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 2308
    instance-of v1, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    if-eqz v1, :cond_36

    .line 2309
    check-cast v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    .line 2310
    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->blockEpisodeAutoFocus:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 2311
    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 2312
    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_36

    .line 2313
    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    .line 2318
    :cond_36
    return-void
.end method
