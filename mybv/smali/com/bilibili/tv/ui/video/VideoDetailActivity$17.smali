.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$17;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;->setupGradientMaskDim()V
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
    .line 1553
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$17;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$17;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->applyGradientMaskForFocus(Landroid/view/View;)V
    invoke-static {v0, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Landroid/view/View;)V

    .line 1557
    return-void
.end method
