.class Lcom/bilibili/tv/ui/search/SearchResultSideActivity$1;
.super Ljava/lang/Object;
.source "SearchResultSideActivity.java"

# interfaces
.implements Lbl/agb$GroupClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->showVideoSortDialog(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V
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
    .line 284
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$1;->this$0:Lcom/bilibili/tv/ui/search/SearchResultSideActivity;

    iput-object p2, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$1;->val$fragment:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupItemClick(Lbl/agb;Landroid/view/View;ILjava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 287
    check-cast p4, Ljava/lang/String;

    .line 288
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$1;->this$0:Lcom/bilibili/tv/ui/search/SearchResultSideActivity;

    # invokes: Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->getSelectedView()Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->access$000(Lcom/bilibili/tv/ui/search/SearchResultSideActivity;)Landroid/view/View;

    move-result-object v0

    .line 289
    if-nez p3, :cond_1a

    .line 290
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$1;->val$fragment:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    invoke-virtual {v1, p4}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->setOrder(Ljava/lang/String;)V

    .line 303
    :cond_11
    :goto_11
    invoke-virtual {p1}, Lbl/agb;->dismiss()V

    .line 304
    if-eqz v0, :cond_19

    .line 305
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 307
    :cond_19
    return-void

    .line 291
    :cond_1a
    if-ne p3, v4, :cond_4c

    .line 292
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 293
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$1;->val$fragment:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v1, v2, v3, v4}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->setPubtime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 295
    :cond_2e
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$1;->this$0:Lcom/bilibili/tv/ui/search/SearchResultSideActivity;

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    # invokes: Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->getDateRange(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->access$100(Lcom/bilibili/tv/ui/search/SearchResultSideActivity;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 296
    array-length v2, v1

    if-ne v2, v3, :cond_11

    .line 297
    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$1;->val$fragment:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    aget-object v1, v1, v4

    invoke-virtual {v2, v3, v1, p4}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->setPubtime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 300
    :cond_4c
    if-ne p3, v3, :cond_11

    .line 301
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$1;->val$fragment:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    invoke-virtual {v1, p4}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->setDuration(Ljava/lang/String;)V

    goto :goto_11
.end method
