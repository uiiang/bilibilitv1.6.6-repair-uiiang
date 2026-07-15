.class Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2$2;
.super Ljava/lang/Object;
.source "AreaVideoListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;->onError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2$2;->this$1:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 320
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2$2;->this$1:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;

    iget-object v0, v0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    # setter for: Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->hasMoreData:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->access$3602(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;Z)Z

    .line 321
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2$2;->this$1:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;

    iget-object v0, v0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    # setter for: Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->isLoadingMore:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->access$3702(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;Z)Z

    .line 322
    return-void
.end method
