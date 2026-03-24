.class Lcom/bilibili/tv/ui/search/SearchResultContentFragment$5$1;
.super Ljava/lang/Object;
.source "SearchResultContentFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/search/SearchResultContentFragment$5;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/search/SearchResultContentFragment$5;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/search/SearchResultContentFragment$5;)V
    .locals 0

    .prologue
    .line 692
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$5$1;->this$1:Lcom/bilibili/tv/ui/search/SearchResultContentFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 695
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$5$1;->this$1:Lcom/bilibili/tv/ui/search/SearchResultContentFragment$5;

    iget-object v0, v0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$5;->this$0:Lcom/bilibili/tv/ui/search/SearchResultContentFragment;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->isLoading:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->access$002(Lcom/bilibili/tv/ui/search/SearchResultContentFragment;Z)Z

    .line 696
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$5$1;->this$1:Lcom/bilibili/tv/ui/search/SearchResultContentFragment$5;

    iget-object v0, v0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$5;->this$0:Lcom/bilibili/tv/ui/search/SearchResultContentFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->k()V

    .line 697
    return-void
.end method
