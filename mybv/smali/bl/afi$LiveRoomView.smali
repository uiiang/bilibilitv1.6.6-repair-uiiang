.class public final Lbl/afi$LiveRoomView;
.super Lbl/adc$a;
.source "afi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/afi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LiveRoomView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbl/afi$LiveRoomView$a;
    }
.end annotation


# static fields
.field public static final Companion:Lbl/afi$LiveRoomView$a;


# instance fields
.field public n:Lcom/bilibili/tv/widget/ScalableImageView;

.field public o:Landroid/widget/TextView;

.field public p:Landroid/widget/TextView;

.field public q:Lcom/bilibili/tv/widget/DrawRelativeLayout;

.field private t:Lcom/bilibili/tv/widget/DrawRelativeLayout;

.field public u:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2349
    new-instance v0, Lbl/afi$LiveRoomView$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbl/afi$LiveRoomView$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lbl/afi$LiveRoomView;->Companion:Lbl/afi$LiveRoomView$a;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2359
    invoke-direct {p0, p1}, Lbl/adc$a;-><init>(Landroid/view/View;)V

    .line 2360
    const-string v0, "itemView"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2361
    const v0, 0x7f0800a1

    invoke-virtual {p0, p1, v0}, Lbl/afi$LiveRoomView;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ScalableImageView;

    iput-object v0, p0, Lbl/afi$LiveRoomView;->n:Lcom/bilibili/tv/widget/ScalableImageView;

    .line 2362
    const v0, 0x7f080132

    invoke-virtual {p0, p1, v0}, Lbl/afi$LiveRoomView;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/afi$LiveRoomView;->o:Landroid/widget/TextView;

    .line 2363
    const v0, 0x7f08013f

    invoke-virtual {p0, p1, v0}, Lbl/afi$LiveRoomView;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/afi$LiveRoomView;->p:Landroid/widget/TextView;

    .line 2364
    const v0, 0x7f0801aa

    invoke-virtual {p0, p1, v0}, Lbl/afi$LiveRoomView;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/afi$LiveRoomView;->u:Landroid/widget/TextView;

    .line 2365
    const v0, 0x7f080074

    invoke-virtual {p0, p1, v0}, Lbl/afi$LiveRoomView;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    iput-object v0, p0, Lbl/afi$LiveRoomView;->q:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    move-object v0, p1

    .line 2366
    check-cast v0, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    iput-object v0, p0, Lbl/afi$LiveRoomView;->t:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    .line 2367
    iget-object v0, p0, Lbl/afi$LiveRoomView;->t:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    const v1, 0x7f0700e8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setUpDrawable(I)V

    .line 2368
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    const v1, 0x7f0700b2

    invoke-virtual {v0, v1}, Lbl/adl;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2369
    const v1, 0x7f060179

    invoke-static {v1}, Lbl/adl;->b(I)I

    move-result v1

    .line 2370
    invoke-virtual {v0, v2, v2, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2371
    const v1, 0x7f0500a7

    invoke-static {v1}, Lbl/adl;->d(I)I

    move-result v1

    .line 2372
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2373
    iget-object v1, p0, Lbl/afi$LiveRoomView;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2374
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2375
    instance-of v1, v0, Landroid/view/View$OnLongClickListener;

    if-eqz v1, :cond_7f

    .line 2376
    check-cast v0, Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2378
    :cond_7f
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2379
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2380
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 2384
    instance-of v0, p1, Lmybl/BiliLiveContent;

    if-eqz v0, :cond_b5

    move-object v0, p1

    .line 2385
    check-cast v0, Lmybl/BiliLiveContent;

    .line 2386
    iget-object v1, v0, Lmybl/BiliLiveContent;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_13

    .line 2387
    iget-object v1, p0, Lbl/afi$LiveRoomView;->o:Landroid/widget/TextView;

    iget-object v2, v0, Lmybl/BiliLiveContent;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2389
    :cond_13
    iget-object v1, v0, Lmybl/BiliLiveContent;->mUname:Ljava/lang/String;

    if-eqz v1, :cond_1e

    .line 2390
    iget-object v1, p0, Lbl/afi$LiveRoomView;->p:Landroid/widget/TextView;

    iget-object v2, v0, Lmybl/BiliLiveContent;->mUname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2392
    :cond_1e
    iget-wide v4, v0, Lmybl/BiliLiveContent;->mOnline:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_44

    .line 2393
    iget-object v1, p0, Lbl/afi$LiveRoomView;->u:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5728\u7ebf\u4eba\u6570 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lmybl/BiliLiveContent;->mOnline:J

    invoke-static {v4, v5}, Lbl/adh;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2395
    :cond_44
    iget-object v1, v0, Lmybl/BiliLiveContent;->mCover:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7a

    .line 2396
    iget-object v0, v0, Lmybl/BiliLiveContent;->mCover:Ljava/lang/String;

    .line 2397
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 2398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2400
    :cond_69
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v1

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v2

    invoke-static {v2, v0}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lbl/afi$LiveRoomView;->n:Lcom/bilibili/tv/widget/ScalableImageView;

    invoke-virtual {v1, v0, v2}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 2402
    :cond_7a
    iget-object v0, p0, Lbl/afi$LiveRoomView;->n:Lcom/bilibili/tv/widget/ScalableImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/ScalableImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_b0

    .line 2403
    iget-object v0, p0, Lbl/afi$LiveRoomView;->n:Lcom/bilibili/tv/widget/ScalableImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/ScalableImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move v2, v3

    .line 2404
    :goto_8d
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_b0

    .line 2405
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2406
    instance-of v4, v1, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_b6

    .line 2407
    check-cast v1, Landroid/widget/LinearLayout;

    .line 2408
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-lez v4, :cond_b6

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_b6

    .line 2409
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2415
    :cond_b0
    iget-object v0, p0, Lbl/afi$LiveRoomView;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2417
    :cond_b5
    return-void

    .line 2404
    :cond_b6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_8d
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 2421
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 2422
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    .line 2423
    instance-of v0, v1, Lmybl/BiliLiveContent;

    if-eqz v0, :cond_12

    if-nez v2, :cond_13

    .line 2430
    :cond_12
    :goto_12
    return-void

    .line 2426
    :cond_13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->lives:Ljava/util/List;

    .line 2427
    sget-object v3, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->lives:Ljava/util/List;

    move-object v0, v1

    check-cast v0, Lmybl/BiliLiveContent;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2428
    const/4 v0, 0x0

    sput v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->live_index:I

    .line 2429
    check-cast v1, Lmybl/BiliLiveContent;

    invoke-static {v2, v1}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a(Landroid/content/Context;Lmybl/BiliLiveContent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_12
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 2435
    instance-of v0, p1, Lbl/afz;

    if-eqz v0, :cond_9

    .line 2436
    check-cast p1, Lbl/afz;

    invoke-interface {p1, p2}, Lbl/afz;->setUpEnabled(Z)V

    .line 2438
    :cond_9
    return-void
.end method
