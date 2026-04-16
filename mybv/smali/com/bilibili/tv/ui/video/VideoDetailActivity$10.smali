.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$10;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;->setupGlobalFocusChangeListener()V
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
    .line 572
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$10;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 575
    if-eqz p2, :cond_11

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$10;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 576
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$10;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollToViewIfNeeded(Landroid/view/View;)V
    invoke-static {v0, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Landroid/view/View;)V

    .line 578
    :cond_11
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$10;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$10;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-le v0, v4, :cond_5b

    move v0, v1

    move v2, v1

    move v3, v1

    .line 581
    :goto_28
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$10;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_52

    .line 582
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$10;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_41

    move v3, v4

    .line 585
    :cond_41
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$10;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p2, :cond_5c

    move v1, v4

    .line 581
    :goto_4e
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_28

    .line 589
    :cond_52
    if-eqz v3, :cond_5b

    if-nez v2, :cond_5b

    .line 590
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$10;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->resetStaffNameVisibility()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    .line 593
    :cond_5b
    return-void

    :cond_5c
    move v1, v2

    goto :goto_4e
.end method
