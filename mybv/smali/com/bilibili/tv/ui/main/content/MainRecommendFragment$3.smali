.class Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$3;
.super Ljava/lang/Object;
.source "MainRecommendFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->animateBorderTo(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

.field final synthetic val$params:Landroid/widget/FrameLayout$LayoutParams;

.field final synthetic val$targetHeight:I

.field final synthetic val$targetLeft:I

.field final synthetic val$targetTop:I

.field final synthetic val$targetWidth:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;Landroid/widget/FrameLayout$LayoutParams;IIII)V
    .locals 0

    .prologue
    .line 917
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$3;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    iput-object p2, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$3;->val$params:Landroid/widget/FrameLayout$LayoutParams;

    iput p3, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$3;->val$targetLeft:I

    iput p4, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$3;->val$targetTop:I

    iput p5, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$3;->val$targetWidth:I

    iput p6, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$3;->val$targetHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 920
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$3;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    # getter for: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->borderView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$600(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 921
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$3;->val$params:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$3;->val$targetLeft:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 922
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$3;->val$params:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$3;->val$targetTop:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 923
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$3;->val$params:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$3;->val$targetWidth:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 924
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$3;->val$params:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$3;->val$targetHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 925
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$3;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    # getter for: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->borderView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$600(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$3;->val$params:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 927
    :cond_2b
    return-void
.end method
