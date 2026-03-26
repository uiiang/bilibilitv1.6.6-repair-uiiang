.class Lcom/bilibili/tv/ui/search/SearchResultSideActivity$3;
.super Ljava/lang/Object;
.source "SearchResultSideActivity.java"

# interfaces
.implements Lbl/SortMenuDialog$OnSortSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->showUserSortMenu(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/search/SearchResultSideActivity;

.field final synthetic val$fragment:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/search/SearchResultSideActivity;Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$3;->this$0:Lcom/bilibili/tv/ui/search/SearchResultSideActivity;

    iput-object p2, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$3;->val$fragment:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSortSelected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$3;->this$0:Lcom/bilibili/tv/ui/search/SearchResultSideActivity;

    # invokes: Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->getSelectedView()Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->access$000(Lcom/bilibili/tv/ui/search/SearchResultSideActivity;)Landroid/view/View;

    move-result-object v0

    .line 338
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$3;->val$fragment:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    invoke-virtual {v1, p1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->setUserOrder(Ljava/lang/String;)V

    .line 339
    if-eqz v0, :cond_10

    .line 340
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 342
    :cond_10
    return-void
.end method
