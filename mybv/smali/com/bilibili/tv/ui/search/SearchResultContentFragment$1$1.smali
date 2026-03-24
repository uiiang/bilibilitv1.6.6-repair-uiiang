.class Lcom/bilibili/tv/ui/search/SearchResultContentFragment$1$1;
.super Ljava/lang/Object;
.source "SearchResultContentFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/search/SearchResultContentFragment$1;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/search/SearchResultContentFragment$1;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/search/SearchResultContentFragment$1;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$1$1;->this$1:Lcom/bilibili/tv/ui/search/SearchResultContentFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$1$1;->this$1:Lcom/bilibili/tv/ui/search/SearchResultContentFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$1;->this$0:Lcom/bilibili/tv/ui/search/SearchResultContentFragment;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->isLoading:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->access$002(Lcom/bilibili/tv/ui/search/SearchResultContentFragment;Z)Z

    .line 280
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$1$1;->this$1:Lcom/bilibili/tv/ui/search/SearchResultContentFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$1;->this$0:Lcom/bilibili/tv/ui/search/SearchResultContentFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->k()V

    .line 281
    return-void
.end method
