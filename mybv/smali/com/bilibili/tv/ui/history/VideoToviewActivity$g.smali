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
    .line 428
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
    .locals 12

    .prologue
    const/16 v4, 0x8

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 364
    const-string v0, "holder"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    instance-of v0, p1, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;

    if-eqz v0, :cond_e3

    .line 366
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$g;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 367
    iget-object v0, v6, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_28

    move-object v0, p1

    .line 368
    check-cast v0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->A()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, v6, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_28
    move-object v0, p1

    .line 370
    check-cast v0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->B()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v6}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, p1

    .line 371
    check-cast v0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->C()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v6}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getPlays()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbl/adh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    :try_start_48
    invoke-virtual {v6}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getDanmakus()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4f} :catch_e4

    move-result v0

    move v1, v0

    .line 376
    :goto_51
    if-lez v1, :cond_e8

    move-object v0, p1

    .line 377
    check-cast v0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;

    # getter for: Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->danmakuInImage:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->access$500(Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v1}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, p1

    .line 378
    check-cast v0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;

    # getter for: Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->danmakuInImage:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->access$500(Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 382
    :goto_6b
    iget-wide v2, v6, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    .line 383
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_f4

    move-object v0, p1

    .line 384
    check-cast v0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->D()Landroid/widget/TextView;

    move-result-object v8

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, v2

    .line 386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    .line 384
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, p1

    .line 387
    check-cast v0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->D()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 391
    :goto_94
    iget v0, v6, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    .line 392
    iget v1, v6, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mProgress:I

    .line 393
    const/4 v2, -0x1

    if-ne v1, v2, :cond_ff

    move-object v0, p1

    .line 394
    check-cast v0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->E()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u5df2\u770b\u5b8c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    :goto_a7
    iget-object v0, v6, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    if-eqz v0, :cond_c3

    .line 415
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v1

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    iget-object v2, v6, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-static {v0, v2}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->z()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 417
    :cond_c3
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    .line 418
    const-string v1, "holder.itemView"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    invoke-virtual {v0, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 420
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    const v1, 0x7f0800d8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 421
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 424
    :cond_e3
    return-void

    .line 375
    :catch_e4
    move-exception v0

    move v1, v7

    goto/16 :goto_51

    :cond_e8
    move-object v0, p1

    .line 380
    check-cast v0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;

    # getter for: Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->danmakuInImage:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->access$500(Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6b

    :cond_f4
    move-object v0, p1

    .line 389
    check-cast v0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->D()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_94

    .line 397
    :cond_ff
    const/16 v2, 0xe10

    if-lt v0, v2, :cond_172

    .line 398
    const-string v2, "%d:%02d:%02d"

    new-array v3, v11, [Ljava/lang/Object;

    div-int/lit16 v4, v0, 0xe10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    rem-int/lit16 v4, v0, 0xe10

    div-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    rem-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v10

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 402
    :goto_126
    if-lez v1, :cond_1a6

    .line 404
    const/16 v0, 0xe10

    if-lt v1, v0, :cond_18c

    .line 405
    const-string v0, "%d:%02d:%02d"

    new-array v3, v11, [Ljava/lang/Object;

    div-int/lit16 v4, v1, 0xe10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    rem-int/lit16 v4, v1, 0xe10

    div-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    rem-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v10

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_14f
    move-object v0, p1

    .line 409
    check-cast v0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->E()Landroid/widget/TextView;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a7

    .line 400
    :cond_172
    const-string v2, "%02d:%02d"

    new-array v3, v10, [Ljava/lang/Object;

    div-int/lit8 v4, v0, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    rem-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_126

    .line 407
    :cond_18c
    const-string v0, "%02d:%02d"

    new-array v3, v10, [Ljava/lang/Object;

    div-int/lit8 v4, v1, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    rem-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v9

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_14f

    :cond_1a6
    move-object v0, p1

    .line 411
    check-cast v0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->E()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a7
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
    .line 432
    const-string v0, "biliVideos"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 433
    iput-object p1, p0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$g;->a:Ljava/util/List;

    .line 434
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/VideoToviewActivity$g;->d()V

    .line 435
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
    .line 438
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 439
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/VideoToviewActivity$g;->d()V

    .line 440
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    .line 444
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 446
    const-string v1, "v.context"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 447
    invoke-static {v0}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    .line 448
    if-eqz v2, :cond_59

    .line 449
    const v0, 0x7f0800d8

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 450
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 451
    instance-of v3, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v3, :cond_59

    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_59

    .line 452
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

    .line 453
    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 455
    sget-object v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    invoke-virtual {v1, v2, v4, v5}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 458
    :cond_59
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    .prologue
    .line 462
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 463
    if-eqz p2, :cond_16

    if-eqz v0, :cond_16

    .line 464
    iget-wide v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    sput-wide v2, Lcom/bilibili/tv/ui/history/VideoToviewActivity;->current_avid:J

    .line 465
    iget-object v1, p0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$g;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/bilibili/tv/ui/history/VideoToviewActivity;->current_pos:I

    .line 467
    :cond_16
    return-void
.end method
