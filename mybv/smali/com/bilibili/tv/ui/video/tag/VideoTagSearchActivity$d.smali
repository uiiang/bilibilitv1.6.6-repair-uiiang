.class public final Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$d;
.super Lbl/vn;
.source "VideoTagSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/vn",
        "<",
        "Lcom/bilibili/tv/api/video/tag/TagInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;


# direct methods
.method public constructor <init>(Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$d;->this$0:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    .line 328
    return-void
.end method


# virtual methods
.method public a(Lcom/bilibili/tv/api/video/tag/TagInfo;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 354
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$d;->this$0:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;

    # getter for: Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->a:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$b;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->access$200(Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;)Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$b;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$d;->this$0:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;

    # getter for: Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->e:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->access$700(Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    if-nez v0, :cond_12

    .line 397
    :cond_11
    :goto_11
    return-void

    .line 357
    :cond_12
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$d;->this$0:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->a(Z)V

    .line 358
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$d;->this$0:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;

    # getter for: Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->e:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->access$700(Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    .line 359
    if-nez v0, :cond_22

    .line 360
    invoke-static {}, Lbl/bbi;->a()V

    .line 362
    :cond_22
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    .line 363
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$d;->this$0:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;

    # getter for: Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->f:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->access$800(Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 364
    if-nez v0, :cond_30

    .line 365
    invoke-static {}, Lbl/bbi;->a()V

    .line 367
    :cond_30
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$d;->this$0:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;

    # setter for: Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->j:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->access$102(Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;Z)Z

    .line 369
    if-eqz p1, :cond_4e

    iget-object v0, p1, Lcom/bilibili/tv/api/video/tag/TagInfo;->archives:Lcom/bilibili/tv/api/video/tag/TagArchives;

    if-eqz v0, :cond_4e

    iget-object v0, p1, Lcom/bilibili/tv/api/video/tag/TagInfo;->archives:Lcom/bilibili/tv/api/video/tag/TagArchives;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/tag/TagArchives;->list:Ljava/util/List;

    if-eqz v0, :cond_4e

    iget-object v0, p1, Lcom/bilibili/tv/api/video/tag/TagInfo;->archives:Lcom/bilibili/tv/api/video/tag/TagArchives;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/tag/TagArchives;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7c

    .line 370
    :cond_4e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$d;->this$0:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;

    # getter for: Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->h:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->access$400(Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_76

    .line 371
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$d;->this$0:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;

    # getter for: Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->e:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->access$700(Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    .line 372
    if-nez v0, :cond_62

    .line 373
    invoke-static {}, Lbl/bbi;->a()V

    .line 375
    :cond_62
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->c()V

    .line 376
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$d;->this$0:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;

    # getter for: Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->e:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->access$700(Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    .line 377
    if-nez v0, :cond_70

    .line 378
    invoke-static {}, Lbl/bbi;->a()V

    .line 380
    :cond_70
    const v1, 0x7f0c00d8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a(I)V

    .line 382
    :cond_76
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$d;->this$0:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;

    # setter for: Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->i:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->access$002(Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;Z)Z

    goto :goto_11

    .line 385
    :cond_7c
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$d;->this$0:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;

    # getter for: Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->g:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->access$900(Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 386
    if-nez v0, :cond_87

    .line 387
    invoke-static {}, Lbl/bbi;->a()V

    .line 389
    :cond_87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/bilibili/tv/api/video/tag/TagInfo;->archives:Lcom/bilibili/tv/api/video/tag/TagArchives;

    iget v2, v2, Lcom/bilibili/tv/api/video/tag/TagArchives;->count:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6761"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$d;->this$0:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;

    # getter for: Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->a:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$b;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->access$200(Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;)Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$b;

    move-result-object v0

    .line 391
    if-nez v0, :cond_b0

    .line 392
    invoke-static {}, Lbl/bbi;->a()V

    .line 394
    :cond_b0
    iget-object v1, p1, Lcom/bilibili/tv/api/video/tag/TagInfo;->archives:Lcom/bilibili/tv/api/video/tag/TagArchives;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/tag/TagArchives;->list:Ljava/util/List;

    .line 395
    const-string v2, "response.archives.list"

    invoke-static {v1, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 396
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$b;->a(Ljava/util/List;)V

    goto/16 :goto_11
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 326
    check-cast p1, Lcom/bilibili/tv/api/video/tag/TagInfo;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$d;->a(Lcom/bilibili/tv/api/video/tag/TagInfo;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$d;->this$0:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;

    # getter for: Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->a:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$b;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->access$200(Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;)Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$b;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 337
    const-string v0, "t"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$d;->this$0:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;

    # getter for: Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->a:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$b;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->access$200(Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;)Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$b;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$d;->this$0:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;

    # getter for: Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->e:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->access$700(Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    if-nez v0, :cond_17

    .line 350
    :cond_16
    :goto_16
    return-void

    .line 341
    :cond_17
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$d;->this$0:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->j:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->access$102(Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;Z)Z

    .line 342
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$d;->this$0:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;

    # getter for: Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->h:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->access$400(Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;)I

    move-result v0

    if-ne v0, v2, :cond_16

    .line 343
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$d;->this$0:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->a(Z)V

    .line 344
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$d;->this$0:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;

    # getter for: Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->e:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->access$700(Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    .line 345
    if-nez v0, :cond_35

    .line 346
    invoke-static {}, Lbl/bbi;->a()V

    .line 348
    :cond_35
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/base/LoadingImageView;->setRefreshError(Z)V

    goto :goto_16
.end method
