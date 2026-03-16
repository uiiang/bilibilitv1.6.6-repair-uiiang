.class Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;
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
    .line 339
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bilibili/tv/api/auth/BiliSpaceVideoList;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 342
    iget-object v2, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;
    invoke-static {v2}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$200(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    move-result-object v2

    if-nez v2, :cond_b

    .line 375
    :cond_a
    :goto_a
    return-void

    .line 345
    :cond_b
    iget-object v2, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->j()V

    .line 346
    iget-object v2, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->h:Z
    invoke-static {v2, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$102(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z

    .line 347
    if-eqz p1, :cond_8b

    iget-object v2, p1, Lcom/bilibili/tv/api/auth/BiliSpaceVideoList;->videos:Ljava/util/List;

    if-eqz v2, :cond_8b

    iget-object v2, p1, Lcom/bilibili/tv/api/auth/BiliSpaceVideoList;->videos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8b

    .line 348
    iget-object v2, p1, Lcom/bilibili/tv/api/auth/BiliSpaceVideoList;->videos:Ljava/util/List;

    const-string v3, "\u4e2a\u4eba\u6295\u7a3f"

    invoke-static {v2, v3}, Lmybl/BiliFilter;->filterBiliSpaceVideo(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 349
    iget-object v3, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->f:I
    invoke-static {v3}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$300(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)I

    move-result v3

    if-ne v3, v0, :cond_7a

    .line 350
    iget-object v3, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;
    invoke-static {v3}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$200(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a(Ljava/util/List;)V

    .line 354
    :goto_3c
    iget-object v3, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v4, 0x14

    if-ne v2, v4, :cond_84

    :goto_46
    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->g:Z
    invoke-static {v3, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$402(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z

    .line 355
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 356
    if-eqz v0, :cond_54

    .line 357
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 359
    :cond_54
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->g:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$400(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$200(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_a

    .line 361
    const-wide/16 v0, 0x3e8

    :try_start_6c
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6f} :catch_86

    .line 365
    :goto_6f
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # operator++ for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->f:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$308(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)I

    .line 366
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->b()V

    goto :goto_a

    .line 352
    :cond_7a
    iget-object v3, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;
    invoke-static {v3}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$200(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->b(Ljava/util/List;)V

    goto :goto_3c

    :cond_84
    move v0, v1

    .line 354
    goto :goto_46

    .line 362
    :catch_86
    move-exception v0

    .line 363
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6f

    .line 370
    :cond_8b
    iget-object v2, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->g:Z
    invoke-static {v2, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$402(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z

    .line 371
    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->f:I
    invoke-static {v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$300(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)I

    move-result v1

    if-ne v1, v0, :cond_a

    .line 372
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->l()V

    .line 373
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    const v1, 0x7f0c00d8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->a(I)V

    goto/16 :goto_a
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 339
    check-cast p1, Lcom/bilibili/tv/api/auth/BiliSpaceVideoList;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->a(Lcom/bilibili/tv/api/auth/BiliSpaceVideoList;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$200(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

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
    .line 384
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lbl/adl;->a(Ljava/lang/Throwable;Landroid/app/Activity;)V

    .line 385
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$200(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    move-result-object v0

    if-nez v0, :cond_14

    .line 392
    :cond_13
    :goto_13
    return-void

    .line 388
    :cond_14
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->h:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$102(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z

    .line 389
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->f:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$300(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 390
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->k()V

    goto :goto_13
.end method
