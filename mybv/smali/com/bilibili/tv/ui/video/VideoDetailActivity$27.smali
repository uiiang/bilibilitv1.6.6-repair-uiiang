.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;->addStaffView(Landroid/widget/LinearLayout;Ljava/lang/String;JLjava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

.field final synthetic val$hasMultipleStaff:Z

.field final synthetic val$isFirstStaff:Z

.field final synthetic val$staffView:Lcom/bilibili/tv/widget/DrawTextView;

.field final synthetic val$wrapper:Lcom/bilibili/tv/widget/DrawLinearLayout;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/widget/DrawLinearLayout;ZZLcom/bilibili/tv/widget/DrawTextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 2857
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;->val$wrapper:Lcom/bilibili/tv/widget/DrawLinearLayout;

    iput-boolean p3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;->val$hasMultipleStaff:Z

    iput-boolean p4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;->val$isFirstStaff:Z

    iput-object p5, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;->val$staffView:Lcom/bilibili/tv/widget/DrawTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 2860
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;->val$wrapper:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, p2}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpEnabled(Z)V

    .line 2861
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;->val$hasMultipleStaff:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;->val$isFirstStaff:Z

    if-nez v0, :cond_15

    .line 2862
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;->val$staffView:Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz p2, :cond_16

    const/4 v0, 0x0

    :goto_12
    invoke-virtual {v1, v0}, Lcom/bilibili/tv/widget/DrawTextView;->setVisibility(I)V

    .line 2864
    :cond_15
    return-void

    .line 2862
    :cond_16
    const/16 v0, 0x8

    goto :goto_12
.end method
