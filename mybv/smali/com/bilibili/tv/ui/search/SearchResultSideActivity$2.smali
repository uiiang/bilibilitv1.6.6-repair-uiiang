.class Lcom/bilibili/tv/ui/search/SearchResultSideActivity$2;
.super Ljava/lang/Object;
.source "SearchResultSideActivity.java"

# interfaces
.implements Lbl/agb$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->showLiveSortDialog(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/search/SearchResultSideActivity;

.field final synthetic val$fragment:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

.field final synthetic val$sortOptions:Ljava/util/LinkedHashMap;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/search/SearchResultSideActivity;Ljava/util/LinkedHashMap;Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$2;->this$0:Lcom/bilibili/tv/ui/search/SearchResultSideActivity;

    iput-object p2, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$2;->val$sortOptions:Ljava/util/LinkedHashMap;

    iput-object p3, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$2;->val$fragment:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbl/agb;Landroid/view/View;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 329
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$2;->val$sortOptions:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 330
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$2;->this$0:Lcom/bilibili/tv/ui/search/SearchResultSideActivity;

    # invokes: Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->getSelectedView()Landroid/view/View;
    invoke-static {v1}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->access$000(Lcom/bilibili/tv/ui/search/SearchResultSideActivity;)Landroid/view/View;

    move-result-object v1

    .line 331
    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$2;->val$fragment:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->setLiveOrder(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p1}, Lbl/agb;->dismiss()V

    .line 333
    if-eqz v1, :cond_1b

    .line 334
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 336
    :cond_1b
    return-void
.end method
