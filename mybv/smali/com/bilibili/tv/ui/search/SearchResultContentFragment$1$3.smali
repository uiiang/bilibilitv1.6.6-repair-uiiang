.class Lcom/bilibili/tv/ui/search/SearchResultContentFragment$1$3;
.super Ljava/lang/Object;
.source "SearchResultContentFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/search/SearchResultContentFragment$1;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
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
    .line 309
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$1$3;->this$1:Lcom/bilibili/tv/ui/search/SearchResultContentFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$1$3;->this$1:Lcom/bilibili/tv/ui/search/SearchResultContentFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$1;->this$0:Lcom/bilibili/tv/ui/search/SearchResultContentFragment;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->isLoading:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->access$002(Lcom/bilibili/tv/ui/search/SearchResultContentFragment;Z)Z

    .line 313
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$1$3;->this$1:Lcom/bilibili/tv/ui/search/SearchResultContentFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$1;->this$0:Lcom/bilibili/tv/ui/search/SearchResultContentFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->k()V

    .line 314
    return-void
.end method
