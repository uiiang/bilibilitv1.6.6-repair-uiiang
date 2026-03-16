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
    .line 342
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bilibili/tv/api/auth/BiliSpaceVideoList;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 345
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$200(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    move-result-object v0

    if-nez v0, :cond_a

    .line 386
    :cond_9
    :goto_9
    return-void

    .line 348
    :cond_a
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->j()V

    .line 349
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->h:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$102(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z

    .line 350
    if-eqz p1, :cond_b4

    iget-object v0, p1, Lcom/bilibili/tv/api/auth/BiliSpaceVideoList;->videos:Ljava/util/List;

    if-eqz v0, :cond_b4

    iget-object v0, p1, Lcom/bilibili/tv/api/auth/BiliSpaceVideoList;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b4

    .line 351
    iget-object v0, p1, Lcom/bilibili/tv/api/auth/BiliSpaceVideoList;->videos:Ljava/util/List;

    const-string v2, "\u4e2a\u4eba\u6295\u7a3f"

    invoke-static {v0, v2}, Lmybl/BiliFilter;->filterBiliSpaceVideo(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 352
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->cursor:Ljava/lang/Long;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$300(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_a3

    .line 353
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$200(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a(Ljava/util/List;)V

    .line 357
    :goto_3b
    iget-object v0, p1, Lcom/bilibili/tv/api/auth/BiliSpaceVideoList;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_66

    .line 358
    iget-object v0, p1, Lcom/bilibili/tv/api/auth/BiliSpaceVideoList;->videos:Ljava/util/List;

    iget-object v3, p1, Lcom/bilibili/tv/api/auth/BiliSpaceVideoList;->videos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    .line 359
    iget-object v3, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->param:Ljava/lang/String;

    if-eqz v3, :cond_66

    .line 361
    :try_start_57
    iget-object v3, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    iget-object v0, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->param:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->cursor:Ljava/lang/Long;
    invoke-static {v3, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$302(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Ljava/lang/Long;)Ljava/lang/Long;
    :try_end_66
    .catch Ljava/lang/NumberFormatException; {:try_start_57 .. :try_end_66} :catch_d0

    .line 366
    :cond_66
    :goto_66
    iget-object v3, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    iget-boolean v0, p1, Lcom/bilibili/tv/api/auth/BiliSpaceVideoList;->hasNext:Z

    if-eqz v0, :cond_ad

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_ad

    const/4 v0, 0x1

    :goto_73
    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->g:Z
    invoke-static {v3, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$502(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z

    .line 367
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 368
    if-eqz v0, :cond_81

    .line 369
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 371
    :cond_81
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->g:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$500(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$200(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_9

    .line 373
    const-wide/16 v0, 0x3e8

    :try_start_99
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9c} :catch_af

    .line 377
    :goto_9c
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->b()V

    goto/16 :goto_9

    .line 355
    :cond_a3
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$200(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->b(Ljava/util/List;)V

    goto :goto_3b

    :cond_ad
    move v0, v1

    .line 366
    goto :goto_73

    .line 374
    :catch_af
    move-exception v0

    .line 375
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9c

    .line 381
    :cond_b4
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->g:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$502(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z

    .line 382
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->cursor:Ljava/lang/Long;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$300(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_9

    .line 383
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->l()V

    .line 384
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    const v1, 0x7f0c00d8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->a(I)V

    goto/16 :goto_9

    .line 362
    :catch_d0
    move-exception v0

    goto :goto_66
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 342
    check-cast p1, Lcom/bilibili/tv/api/auth/BiliSpaceVideoList;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->a(Lcom/bilibili/tv/api/auth/BiliSpaceVideoList;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 390
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
    .line 395
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lbl/adl;->a(Ljava/lang/Throwable;Landroid/app/Activity;)V

    .line 396
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$200(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    move-result-object v0

    if-nez v0, :cond_14

    .line 403
    :cond_13
    :goto_13
    return-void

    .line 399
    :cond_14
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->h:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$102(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z

    .line 400
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->cursor:Ljava/lang/Long;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$300(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_13

    .line 401
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->k()V

    goto :goto_13
.end method
