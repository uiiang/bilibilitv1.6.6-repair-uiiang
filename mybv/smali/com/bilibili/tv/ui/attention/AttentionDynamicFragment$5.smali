.class Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;
.super Lbl/vn;
.source "AttentionDynamicFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->loadUperVideos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/vn",
        "<",
        "Lcom/bilibili/tv/api/auth/BiliSpaceVideoList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bilibili/tv/api/auth/BiliSpaceVideoList;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 492
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$300(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    move-result-object v0

    if-nez v0, :cond_a

    .line 534
    :cond_9
    :goto_9
    return-void

    .line 495
    :cond_a
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->j()V

    .line 496
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->h:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$202(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z

    .line 497
    if-eqz p1, :cond_bb

    iget-object v0, p1, Lcom/bilibili/tv/api/auth/BiliSpaceVideoList;->videos:Ljava/util/List;

    if-eqz v0, :cond_bb

    iget-object v0, p1, Lcom/bilibili/tv/api/auth/BiliSpaceVideoList;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_bb

    .line 498
    iget-object v0, p1, Lcom/bilibili/tv/api/auth/BiliSpaceVideoList;->videos:Ljava/util/List;

    const-string v2, "\u4e2a\u4eba\u6295\u7a3f"

    invoke-static {v0, v2}, Lmybl/BiliFilter;->filterBiliSpaceVideo(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 499
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->cursor:Ljava/lang/Long;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$400(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_aa

    .line 500
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$300(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a(Ljava/util/List;)V

    .line 501
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    iget v3, p1, Lcom/bilibili/tv/api/auth/BiliSpaceVideoList;->count:I

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->updateHeaderCount(I)V

    .line 505
    :goto_42
    iget-object v0, p1, Lcom/bilibili/tv/api/auth/BiliSpaceVideoList;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6d

    .line 506
    iget-object v0, p1, Lcom/bilibili/tv/api/auth/BiliSpaceVideoList;->videos:Ljava/util/List;

    iget-object v3, p1, Lcom/bilibili/tv/api/auth/BiliSpaceVideoList;->videos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    .line 507
    iget-object v3, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->param:Ljava/lang/String;

    if-eqz v3, :cond_6d

    .line 509
    :try_start_5e
    iget-object v3, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    iget-object v0, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->param:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->cursor:Ljava/lang/Long;
    invoke-static {v3, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$402(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Ljava/lang/Long;)Ljava/lang/Long;
    :try_end_6d
    .catch Ljava/lang/NumberFormatException; {:try_start_5e .. :try_end_6d} :catch_d7

    .line 514
    :cond_6d
    :goto_6d
    iget-object v3, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    iget-boolean v0, p1, Lcom/bilibili/tv/api/auth/BiliSpaceVideoList;->hasNext:Z

    if-eqz v0, :cond_b4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b4

    const/4 v0, 0x1

    :goto_7a
    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->g:Z
    invoke-static {v3, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$602(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z

    .line 515
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 516
    if-eqz v0, :cond_88

    .line 517
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 519
    :cond_88
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->g:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$600(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$300(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_9

    .line 521
    const-wide/16 v0, 0x3e8

    :try_start_a0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a3} :catch_b6

    .line 525
    :goto_a3
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->b()V

    goto/16 :goto_9

    .line 503
    :cond_aa
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$300(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->b(Ljava/util/List;)V

    goto :goto_42

    :cond_b4
    move v0, v1

    .line 514
    goto :goto_7a

    .line 522
    :catch_b6
    move-exception v0

    .line 523
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a3

    .line 529
    :cond_bb
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->g:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$602(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z

    .line 530
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->cursor:Ljava/lang/Long;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$400(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_9

    .line 531
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->l()V

    .line 532
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    const v1, 0x7f0c00d8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->a(I)V

    goto/16 :goto_9

    .line 510
    :catch_d7
    move-exception v0

    goto :goto_6d
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 489
    check-cast p1, Lcom/bilibili/tv/api/auth/BiliSpaceVideoList;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->a(Lcom/bilibili/tv/api/auth/BiliSpaceVideoList;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$300(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    move-result-object v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 543
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lbl/adl;->a(Ljava/lang/Throwable;Landroid/app/Activity;)V

    .line 544
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$300(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    move-result-object v0

    if-nez v0, :cond_14

    .line 551
    :cond_13
    :goto_13
    return-void

    .line 547
    :cond_14
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->h:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$202(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z

    .line 548
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->cursor:Ljava/lang/Long;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$400(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_13

    .line 549
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->k()V

    goto :goto_13
.end method
