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
    .line 288
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {p0, p2, p3, p4}, Lcom/bilibili/tv/widget/FixLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;I)Landroid/view/View;
    .locals 2

    .prologue
    .line 292
    if-eqz p1, :cond_35

    .line 293
    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;->d(Landroid/view/View;)I

    move-result v0

    .line 294
    const/16 v1, 0x11

    if-eq p2, v1, :cond_32

    .line 295
    const/16 v1, 0x21

    if-eq p2, v1, :cond_2d

    .line 296
    const/16 v1, 0x42

    if-eq p2, v1, :cond_25

    .line 297
    const/16 v0, 0x82

    if-ne p2, v0, :cond_2d

    .line 298
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    const v1, 0x7f080167

    .line 299
    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 300
    if-eqz v0, :cond_24

    move-object p1, v0

    .line 314
    :cond_24
    :goto_24
    return-object p1

    .line 305
    :cond_25
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;->H()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_24

    .line 312
    :cond_2d
    invoke-super {p0, p1, p2}, Lcom/bilibili/tv/widget/FixLinearLayoutManager;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    goto :goto_24

    .line 309
    :cond_32
    if-nez v0, :cond_2d

    goto :goto_24

    .line 314
    :cond_35
    const/4 p1, 0x0

    goto :goto_24
.end method
