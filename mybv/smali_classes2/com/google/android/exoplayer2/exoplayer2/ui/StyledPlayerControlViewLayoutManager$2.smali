.class Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StyledPlayerControlViewLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    .line 179
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$2;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 182
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$2;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->controlsBackground:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->access$200(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 183
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$2;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->controlsBackground:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->access$200(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    :cond_12
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$2;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->centerControls:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->access$300(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 186
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$2;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->centerControls:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->access$300(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 188
    :cond_23
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$2;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->minimalControls:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->access$400(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 189
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$2;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->minimalControls:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->access$400(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$2;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->isMinimalMode:Z
    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->access$100(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)Z

    move-result v2

    if-eqz v2, :cond_3a

    goto :goto_3b

    :cond_3a
    const/4 v1, 0x4

    :goto_3b
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 191
    :cond_3e
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$2;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->timeBar:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->access$000(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$2;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->isMinimalMode:Z
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->access$100(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$2;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->timeBar:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->access$000(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->showScrubber(J)V

    .line 194
    :cond_5d
    return-void
.end method
