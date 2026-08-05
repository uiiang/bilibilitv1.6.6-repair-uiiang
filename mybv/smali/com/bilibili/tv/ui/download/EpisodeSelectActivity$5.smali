.class Lcom/bilibili/tv/ui/download/EpisodeSelectActivity$5;
.super Ljava/lang/Object;
.source "EpisodeSelectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->setupAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity$5;->this$0:Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity$5;->this$0:Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;

    # getter for: Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->episodeListView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->access$300(Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1b

    .line 167
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity$5;->this$0:Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;

    # getter for: Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->episodeListView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->access$300(Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 171
    :goto_1a
    return-void

    .line 169
    :cond_1b
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity$5;->this$0:Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;

    # getter for: Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->episodeListView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->access$300(Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestFocus()Z

    goto :goto_1a
.end method
