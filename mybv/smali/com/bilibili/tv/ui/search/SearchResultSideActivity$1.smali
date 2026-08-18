.class Lcom/bilibili/tv/ui/search/SearchResultSideActivity$1;
.super Ljava/lang/Object;
.source "SearchResultSideActivity.java"

# interfaces
.implements Lbl/SortMenuDialog$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->showVideoSortMenu(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 284
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$1;->this$0:Lcom/bilibili/tv/ui/search/SearchResultSideActivity;

    iput-object p2, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$1;->val$fragment:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbl/SortMenuDialog$SortGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$1;->this$0:Lcom/bilibili/tv/ui/search/SearchResultSideActivity;

    # invokes: Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->getSelectedView()Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->access$000(Lcom/bilibili/tv/ui/search/SearchResultSideActivity;)Landroid/view/View;

    move-result-object v1

    .line 289
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/SortMenuDialog$SortGroup;

    invoke-virtual {v0}, Lbl/SortMenuDialog$SortGroup;->getSelectedValue()Ljava/lang/String;

    move-result-object v2

    .line 290
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/SortMenuDialog$SortGroup;

    invoke-virtual {v0}, Lbl/SortMenuDialog$SortGroup;->getSelectedValue()Ljava/lang/String;

    move-result-object v3

    .line 291
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/SortMenuDialog$SortGroup;

    invoke-virtual {v0}, Lbl/SortMenuDialog$SortGroup;->getSelectedValue()Ljava/lang/String;

    move-result-object v0

    .line 293
    iget-object v4, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$1;->val$fragment:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    invoke-virtual {v4, v2, v3, v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->updateSearchParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    if-eqz v1, :cond_31

    .line 296
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 298
    :cond_31
    return-void
.end method
