.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$d$1;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 4136
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d$1;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4139
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4140
    instance-of v1, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    if-eqz v1, :cond_1b

    .line 4141
    check-cast v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    .line 4142
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1b

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isAnyInteractionButtonFocused()Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 4143
    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hideInteractionButtons()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$5000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    .line 4146
    :cond_1b
    return-void
.end method
