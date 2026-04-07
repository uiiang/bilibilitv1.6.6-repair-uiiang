.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagFocusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;->setupNavigationTagsForSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

.field final synthetic val$listSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V
    .locals 0

    .prologue
    .line 2854
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->val$listSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavTagFocus(III)V
    .locals 3

    .prologue
    .line 2857
    if-gez p2, :cond_3

    .line 2871
    :cond_2
    :goto_2
    return-void

    .line 2861
    :cond_3
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionNavTagFocusPositions:Ljava/util/Map;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2863
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->val$listSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getFocusPosition()I

    move-result v0

    .line 2865
    add-int/lit8 v1, p3, 0x9

    .line 2867
    if-lt v0, p3, :cond_20

    if-le v0, v1, :cond_2

    .line 2869
    :cond_20
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->val$listSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollVideoListToPosition(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V
    invoke-static {v0, v1, p3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    goto :goto_2
.end method
