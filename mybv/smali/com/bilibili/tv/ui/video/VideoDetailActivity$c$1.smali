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
    .line 3983
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$c$1;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 3986
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$c$1;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;->n:Lcom/bilibili/tv/widget/DrawTextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;->access$3500(Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;)Lcom/bilibili/tv/widget/DrawTextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bilibili/tv/widget/DrawTextView;->setUpEnabled(Z)V

    .line 3987
    if-eqz p2, :cond_36

    .line 3988
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 3989
    instance-of v1, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    if-eqz v1, :cond_36

    .line 3990
    check-cast v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    .line 3991
    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->blockEpisodeAutoFocus:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 3992
    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 3993
    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_36

    .line 3994
    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    .line 3999
    :cond_36
    return-void
.end method
