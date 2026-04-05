.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$10;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;->handleListFocusNavigation(Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

.field final synthetic val$navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

.field final synthetic val$navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field final synthetic val$selectedTagPos:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;ILandroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 977
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$10;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$10;->val$navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    iput p3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$10;->val$selectedTagPos:I

    iput-object p4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$10;->val$navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 980
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$10;->val$navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    iget v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$10;->val$selectedTagPos:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 981
    if-eqz v0, :cond_e

    .line 982
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 986
    :goto_d
    return-void

    .line 984
    :cond_e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$10;->val$navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestFocus()Z

    goto :goto_d
.end method
