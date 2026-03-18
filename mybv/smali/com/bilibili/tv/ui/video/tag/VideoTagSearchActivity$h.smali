.class final Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$h;
.super Ljava/lang/Object;
.source "VideoTagSearchActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "h"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$h;->this$0:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$h;->this$0:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;

    # getter for: Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->h:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->access$400(Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2c

    .line 247
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$h;->this$0:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;

    # getter for: Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->d:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->access$300(Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;)Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    move-result-object v0

    .line 248
    if-nez v0, :cond_14

    .line 249
    invoke-static {}, Lbl/bbi;->a()V

    .line 251
    :cond_14
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->o()I

    move-result v0

    .line 252
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$h;->this$0:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;

    # getter for: Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->d:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->access$300(Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;)Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    move-result-object v1

    .line 253
    if-nez v1, :cond_23

    .line 254
    invoke-static {}, Lbl/bbi;->a()V

    .line 256
    :cond_23
    invoke-virtual {v1, v0}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_2c

    .line 258
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 261
    :cond_2c
    return-void
.end method
