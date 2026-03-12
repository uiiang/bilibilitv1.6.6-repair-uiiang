.class Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$4;
.super Ljava/lang/Object;
.source "MainRecommendFragment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic val$startHeight:I

.field final synthetic val$startLeft:I

.field final synthetic val$startTop:I

.field final synthetic val$startWidth:I

.field final synthetic val$targetHeight:I

.field final synthetic val$targetLeft:I

.field final synthetic val$targetTop:I

.field final synthetic val$targetWidth:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;IIIIIIIILandroid/widget/FrameLayout$LayoutParams;)V
    .locals 0

    .prologue
    .line 900
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$4;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    iput p2, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$4;->val$startLeft:I

    iput p3, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$4;->val$targetLeft:I

    iput p4, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$4;->val$startTop:I

    iput p5, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$4;->val$targetTop:I

    iput p6, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$4;->val$startWidth:I

    iput p7, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$4;->val$targetWidth:I

    iput p8, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$4;->val$startHeight:I

    iput p9, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$4;->val$targetHeight:I

    iput-object p10, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$4;->val$params:Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    .prologue
    .line 903
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 905
    iget v1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$4;->val$startLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$4;->val$targetLeft:I

    iget v3, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$4;->val$startLeft:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 906
    iget v2, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$4;->val$startTop:I

    int-to-float v2, v2

    iget v3, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$4;->val$targetTop:I

    iget v4, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$4;->val$startTop:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 907
    iget v3, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$4;->val$startWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$4;->val$targetWidth:I

    iget v5, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$4;->val$startWidth:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 908
    iget v4, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$4;->val$startHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$4;->val$targetHeight:I

    iget v6, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$4;->val$startHeight:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v0, v5

    add-float/2addr v0, v4

    float-to-int v0, v0

    .line 910
    iget-object v4, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$4;->val$params:Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 911
    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$4;->val$params:Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 912
    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$4;->val$params:Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 913
    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$4;->val$params:Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 914
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$4;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    # getter for: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->borderView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$600(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$4;->val$params:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 915
    return-void
.end method
