.class Lcom/bilibili/tv/ui/area/AreaActivity$TouchModeChangeListener;
.super Ljava/lang/Object;
.source "AreaActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/area/AreaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TouchModeChangeListener"
.end annotation


# instance fields
.field private final activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bilibili/tv/ui/area/AreaActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bilibili/tv/ui/area/AreaActivity;)V
    .locals 1

    .prologue
    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/area/AreaActivity$TouchModeChangeListener;->activityRef:Ljava/lang/ref/WeakReference;

    .line 433
    return-void
.end method


# virtual methods
.method public onTouchModeChanged(Z)V
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaActivity$TouchModeChangeListener;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/area/AreaActivity;

    .line 438
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/area/AreaActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 442
    :cond_10
    :goto_10
    return-void

    .line 441
    :cond_11
    # setter for: Lcom/bilibili/tv/ui/area/AreaActivity;->e:Z
    invoke-static {v0, p1}, Lcom/bilibili/tv/ui/area/AreaActivity;->access$202(Lcom/bilibili/tv/ui/area/AreaActivity;Z)Z

    goto :goto_10
.end method
