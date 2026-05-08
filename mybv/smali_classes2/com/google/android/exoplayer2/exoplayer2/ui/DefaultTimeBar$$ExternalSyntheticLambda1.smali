.class public final synthetic Lcom/google/android/exoplayer2/ui/DefaultTimeBar$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/ui/DefaultTimeBar;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/DefaultTimeBar;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->lambda$new$1$com-google-android-exoplayer2-ui-DefaultTimeBar(Landroid/animation/ValueAnimator;)V

    return-void
.end method
