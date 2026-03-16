.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$6;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$6;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 416
    if-eqz p2, :cond_17

    .line 417
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$6;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$6;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$6;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    .line 418
    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesVideoFocusPosition:I
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)I

    move-result v2

    .line 417
    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->restoreFocusPosition(Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;
    invoke-static {v0, v1, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;

    move-result-object v0

    .line 419
    if-eqz v0, :cond_17

    .line 420
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 423
    :cond_17
    return-void
.end method
