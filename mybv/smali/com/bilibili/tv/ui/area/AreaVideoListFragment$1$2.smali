.class Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$2;
.super Ljava/lang/Object;
.source "AreaVideoListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$2;->this$1:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 203
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$2;->this$1:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    # setter for: Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->isLoadingMore:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->access$2002(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;Z)Z

    .line 204
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$2;->this$1:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    # setter for: Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->hasMoreData:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->access$2102(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;Z)Z

    .line 205
    return-void
.end method
