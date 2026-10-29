.class public final Lcom/bilibili/tv/ui/history/VideoToviewActivity$g;
.super Lbl/adz;
.source "VideoToviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/history/VideoToviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/history/VideoToviewActivity$g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/adz",
        "<",
        "Lbl/adv;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnFocusChangeListener;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bilibili/tv/ui/history/VideoToviewActivity$g$a;

.field private static final b:Ljava/text/SimpleDateFormat;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/video/BiliVideoDetail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 346
    new-instance v0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/history/VideoToviewActivity$g$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$g;->Companion:Lcom/bilibili/tv/ui/history/VideoToviewActivity$g$a;

    .line 347
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$g;->b:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 345
    invoke-direct {p0}, Lbl/adz;-><init>()V

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$g;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/history/VideoToviewActivity$g;->a(Landroid/view/ViewGroup;I)Lbl/adv;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lbl/adv;
    .locals 1

    .prologue
    .line 358
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    const/4 v0, 0x0

    check-cast v0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;

    sget-object v0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->Companion:Lcom/bilibili/tv/ui/history/VideoToviewActivity$f$a;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f$a;->a(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    .prologue
    .line 345
    check-cast p1, Lbl/adv;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/history/VideoToviewActivity$g;->a(Lbl/adv;I)V

    return-void
.end method

.method public a(Lbl/adv;I)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v2, 0x1

    .line 364
    const-string v0, "holder"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    instance-of v0, p1, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;

    if-eqz v0, :cond_dd

    .line 366
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$g;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 367
    iget-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_25

    move-object v1, p1

    .line 368
    check-cast v1, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->A()Landroid/widget/TextView;

    move-result-object v1

    iget-object v3, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_25
    move-object v1, p1

    .line 370
    check-cast v1, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->B()Landroid/widget/TextView;

    move-result-object v4

    .line 371
    const-string v3, ""

    .line 372
    const/4 v1, 0x0

    .line 373
    iget-object v5, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    if-eqz v5, :cond_de

    iget-object v5, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v5, v5, Lcom/bilibili/tv/api/video/BiliUser;->name:Ljava/lang/String;

    if-eqz v5, :cond_de

    iget-object v5, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v5, v5, Lcom/bilibili/tv/api/video/BiliUser;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_de

    .line 374
    iget-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v3, v1, Lcom/bilibili/tv/api/video/BiliUser;->name:Ljava/lang/String;

    move v1, v2

    .line 383
    :cond_48
    :goto_48
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5c

    iget-object v5, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTypeName:Ljava/lang/String;

    if-eqz v5, :cond_5c

    iget-object v5, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTypeName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5c

    .line 384
    iget-object v3, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTypeName:Ljava/lang/String;

    .line 386
    :cond_5c
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_70

    iget-object v5, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPgcLabel:Ljava/lang/String;

    if-eqz v5, :cond_70

    iget-object v5, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPgcLabel:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_70

    .line 387
    iget-object v3, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPgcLabel:Ljava/lang/String;

    .line 389
    :cond_70
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    if-eqz v1, :cond_11b

    .line 391
    const v1, 0x7f060120

    const v3, 0x7f0500a1

    invoke-static {v4, v1, v3}, Lcom/bilibili/tv/ui/video/widget/VideoCardIcons;->setUp(Landroid/widget/TextView;II)V

    :goto_7e
    move-object v1, p1

    .line 395
    check-cast v1, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->C()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v1, p1

    .line 396
    check-cast v1, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;

    # getter for: Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->danmakuInImage:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->access$400(Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v1, p1

    .line 397
    check-cast v1, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->D()Landroid/widget/TextView;

    move-result-object v1

    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    invoke-static {v1, v4, v5, v7, v2}, Lcom/bilibili/tv/ui/video/widget/VideoCardTexts;->bindPubDate(Landroid/widget/TextView;JLjava/lang/String;Z)V

    .line 398
    iget v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    .line 399
    iget v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mProgress:I

    .line 400
    const/4 v3, -0x1

    if-ne v2, v3, :cond_120

    move-object v1, p1

    .line 401
    check-cast v1, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->E()Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "\u5df2\u770b\u5b8c"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_b1
    move-object v1, p1

    .line 411
    check-cast v1, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->z()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v1

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-static {v7, v1, v2}, Lcom/bilibili/tv/ui/video/widget/VideoCardCoverLoader;->load(Landroid/content/Context;Lcom/bilibili/tv/widget/ScalableImageView;Ljava/lang/String;)V

    .line 412
    iget-object v1, p1, Lbl/adv;->a:Landroid/view/View;

    .line 413
    const-string v2, "holder.itemView"

    invoke-static {v1, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 415
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    const v1, 0x7f0800d8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 416
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 419
    :cond_dd
    return-void

    .line 376
    :cond_de
    iget-object v5, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    if-eqz v5, :cond_48

    .line 377
    iget-object v5, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iget v5, v5, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;->mIsFinish:I

    if-ne v5, v2, :cond_ec

    .line 378
    const-string v3, "\u5df2\u5b8c\u7ed3"

    goto/16 :goto_48

    .line 379
    :cond_ec
    iget-object v5, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iget-object v5, v5, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;->mNewestEpIndex:Ljava/lang/String;

    if-eqz v5, :cond_48

    iget-object v5, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iget-object v5, v5, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;->mNewestEpIndex:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_48

    .line 380
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u66f4\u65b0\u81f3\u7b2c"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iget-object v5, v5, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;->mNewestEpIndex:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\u96c6"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_48

    .line 393
    :cond_11b
    invoke-static {v4}, Lcom/bilibili/tv/ui/video/widget/VideoCardIcons;->clear(Landroid/widget/TextView;)V

    goto/16 :goto_7e

    .line 403
    :cond_120
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/widget/VideoCardTexts;->formatDuration(I)Ljava/lang/String;

    move-result-object v3

    .line 404
    if-lez v2, :cond_14d

    .line 405
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/widget/VideoCardTexts;->formatDuration(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, p1

    .line 406
    check-cast v1, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->E()Landroid/widget/TextView;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b1

    :cond_14d
    move-object v1, p1

    .line 408
    check-cast v1, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->E()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b1
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/video/BiliVideoDetail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 427
    const-string v0, "biliVideos"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    iput-object p1, p0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$g;->a:Ljava/util/List;

    .line 429
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/VideoToviewActivity$g;->d()V

    .line 430
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x0

    return v0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 434
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/VideoToviewActivity$g;->d()V

    .line 435
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    .line 439
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 441
    const-string v1, "v.context"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 442
    invoke-static {v0}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    .line 443
    if-eqz v2, :cond_83

    .line 444
    const v0, 0x7f0800d8

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 445
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 446
    instance-of v3, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v3, :cond_83

    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_83

    .line 447
    const-string v3, "tv_history_click"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "row"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v0, v6

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    move-object v0, v1

    .line 448
    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 449
    invoke-virtual {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getSeasonId()Ljava/lang/String;

    move-result-object v1

    .line 450
    const-string v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_84

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_84

    .line 451
    const-string v3, "ToviewClick"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PGC video detected, seasonId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    sget-object v3, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-virtual {v3, v2, v1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 461
    :cond_83
    :goto_83
    return-void

    .line 453
    :cond_84
    iget-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRedirectUrl:Ljava/lang/String;

    if-eqz v1, :cond_ba

    iget-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRedirectUrl:Ljava/lang/String;

    const-string v3, "bangumi/play/ep"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 454
    const-string v1, "ToviewClick"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PGC video via redirect_url, use avid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    sget-object v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-virtual {v1, v2, v4, v5, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_83

    .line 457
    :cond_ba
    sget-object v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-virtual {v1, v2, v4, v5, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_83
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    .prologue
    .line 465
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 466
    if-eqz p2, :cond_16

    if-eqz v0, :cond_16

    .line 467
    iget-wide v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    sput-wide v2, Lcom/bilibili/tv/ui/history/VideoToviewActivity;->current_avid:J

    .line 468
    iget-object v1, p0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$g;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/bilibili/tv/ui/history/VideoToviewActivity;->current_pos:I

    .line 470
    :cond_16
    return-void
.end method
