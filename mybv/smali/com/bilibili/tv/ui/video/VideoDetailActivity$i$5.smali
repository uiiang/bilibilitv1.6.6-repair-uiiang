.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$5;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->addStaffView(Landroid/widget/LinearLayout;Ljava/lang/String;JLjava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

.field final synthetic val$hasMultipleStaff:Z

.field final synthetic val$isFirstStaff:Z

.field final synthetic val$staffView:Lcom/bilibili/tv/widget/DrawTextView;

.field final synthetic val$wrapper:Lcom/bilibili/tv/widget/DrawLinearLayout;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;Lcom/bilibili/tv/widget/DrawLinearLayout;ZZLcom/bilibili/tv/widget/DrawTextView;)V
    .locals 0

    .prologue
    .line 5010
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$5;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$5;->val$wrapper:Lcom/bilibili/tv/widget/DrawLinearLayout;

    iput-boolean p3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$5;->val$hasMultipleStaff:Z

    iput-boolean p4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$5;->val$isFirstStaff:Z

    iput-object p5, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$5;->val$staffView:Lcom/bilibili/tv/widget/DrawTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 5013
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$5;->val$wrapper:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, p2}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpEnabled(Z)V

    .line 5014
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$5;->val$hasMultipleStaff:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$5;->val$isFirstStaff:Z

    if-nez v0, :cond_15

    .line 5015
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$5;->val$staffView:Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz p2, :cond_16

    const/4 v0, 0x0

    :goto_12
    invoke-virtual {v1, v0}, Lcom/bilibili/tv/widget/DrawTextView;->setVisibility(I)V

    .line 5017
    :cond_15
    return-void

    .line 5015
    :cond_16
    const/16 v0, 0x8

    goto :goto_12
.end method
