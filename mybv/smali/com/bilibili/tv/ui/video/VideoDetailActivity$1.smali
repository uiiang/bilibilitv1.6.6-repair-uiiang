.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;
.super Lcom/bilibili/tv/widget/FixLinearLayoutManager;
.source "VideoDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Landroid/content/Context;IZ)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {p0, p2, p3, p4}, Lcom/bilibili/tv/widget/FixLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;I)Landroid/view/View;
    .locals 2

    .prologue
    .line 257
    if-eqz p1, :cond_35

    .line 258
    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;->d(Landroid/view/View;)I

    move-result v0

    .line 259
    const/16 v1, 0x11

    if-eq p2, v1, :cond_32

    .line 260
    const/16 v1, 0x21

    if-eq p2, v1, :cond_2d

    .line 261
    const/16 v1, 0x42

    if-eq p2, v1, :cond_25

    .line 262
    const/16 v0, 0x82

    if-ne p2, v0, :cond_2d

    .line 263
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    const v1, 0x7f080167

    .line 264
    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 265
    if-eqz v0, :cond_24

    move-object p1, v0

    .line 279
    :cond_24
    :goto_24
    return-object p1

    .line 270
    :cond_25
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;->H()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_24

    .line 277
    :cond_2d
    invoke-super {p0, p1, p2}, Lcom/bilibili/tv/widget/FixLinearLayoutManager;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    goto :goto_24

    .line 274
    :cond_32
    if-nez v0, :cond_2d

    goto :goto_24

    .line 279
    :cond_35
    const/4 p1, 0x0

    goto :goto_24
.end method
