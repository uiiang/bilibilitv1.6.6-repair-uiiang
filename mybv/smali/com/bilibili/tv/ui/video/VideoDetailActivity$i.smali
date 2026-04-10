.class final Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;
.super Lbl/vn;
.source "VideoDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/vn",
        "<",
        "Lcom/bilibili/tv/api/video/BiliVideoDetail;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V
    .locals 0

    .prologue
    .line 4355
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    return-void
.end method

.method private final a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/bilibili/tv/api/video/BiliVideoDetail$Tag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4701
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4712
    :cond_8
    :goto_8
    return-void

    .line 4704
    :cond_9
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 4705
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Tag;

    .line 4706
    iget-object v3, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Tag;->name:Ljava/lang/String;

    iget v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Tag;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 4708
    :cond_2e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->x:Lcom/bilibili/tv/ui/video/VideoDetailActivity$g;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$6000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/VideoDetailActivity$g;

    move-result-object v0

    .line 4709
    if-eqz v0, :cond_8

    .line 4710
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$g;->a(Ljava/util/HashMap;)V

    goto :goto_8
.end method

.method static synthetic access$5300(Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 0

    .prologue
    .line 4355
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->updateAllUIForUgc(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 4355
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->createRelateVideoSectionView(Ljava/util/List;)V

    return-void
.end method

.method private addStaffView(Landroid/widget/LinearLayout;Ljava/lang/String;JLjava/lang/String;II)V
    .locals 7

    .prologue
    .line 4590
    new-instance v2, Lcom/bilibili/tv/widget/DrawLinearLayout;

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {v2, v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;-><init>(Landroid/content/Context;)V

    .line 4591
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOrientation(I)V

    .line 4592
    const/16 v0, 0x10

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setGravity(I)V

    .line 4593
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setFocusable(Z)V

    .line 4594
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setFocusableInTouchMode(Z)V

    .line 4595
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setClipChildren(Z)V

    .line 4596
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setClipToPadding(Z)V

    .line 4597
    const v0, 0x7f0700e7

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 4598
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 4599
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060377

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 4600
    invoke-virtual {v2, v0, v1, v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setPadding(IIII)V

    .line 4602
    new-instance v0, Lcom/bilibili/tv/widget/CircleImageView;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {v0, v1}, Lcom/bilibili/tv/widget/CircleImageView;-><init>(Landroid/content/Context;)V

    .line 4603
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060163

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 4604
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4605
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f060299

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 4606
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 4607
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/CircleImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 4608
    const/high16 v1, 0x7f0b0000

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/CircleImageView;->setImageResource(I)V

    .line 4609
    if-eqz p5, :cond_82

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_82

    .line 4610
    sget-object v1, Lbl/adl;->a:Lbl/adl;

    invoke-virtual {v1, p5, v0}, Lbl/adl;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 4612
    :cond_82
    invoke-virtual {v2, v0, v3}, Lcom/bilibili/tv/widget/DrawLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4614
    new-instance v5, Lcom/bilibili/tv/widget/DrawTextView;

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {v5, v0}, Lcom/bilibili/tv/widget/DrawTextView;-><init>(Landroid/content/Context;)V

    .line 4615
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060136

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v5, v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setTextSize(IF)V

    .line 4616
    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Lcom/bilibili/tv/widget/DrawTextView;->setTextColor(I)V

    .line 4617
    const/16 v0, 0x11

    invoke-virtual {v5, v0}, Lcom/bilibili/tv/widget/DrawTextView;->setGravity(I)V

    .line 4618
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v0}, Lcom/bilibili/tv/widget/DrawTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 4619
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/bilibili/tv/widget/DrawTextView;->setFocusable(Z)V

    .line 4620
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/bilibili/tv/widget/DrawTextView;->setMaxLines(I)V

    .line 4621
    const/16 v0, 0x10

    invoke-virtual {v5, v0}, Lcom/bilibili/tv/widget/DrawTextView;->setMaxEms(I)V

    .line 4622
    invoke-virtual {v5, p2}, Lcom/bilibili/tv/widget/DrawTextView;->setText(Ljava/lang/CharSequence;)V

    .line 4624
    if-nez p6, :cond_132

    const/4 v4, 0x1

    .line 4625
    :goto_be
    const/4 v0, 0x1

    if-le p7, v0, :cond_134

    const/4 v3, 0x1

    .line 4626
    :goto_c2
    if-eqz v3, :cond_cb

    if-nez v4, :cond_cb

    .line 4627
    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Lcom/bilibili/tv/widget/DrawTextView;->setVisibility(I)V

    .line 4630
    :cond_cb
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v6, -0x2

    invoke-direct {v0, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4633
    invoke-virtual {v2, v5, v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4637
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$4;

    invoke-direct {v0, p0, p3, p4, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$4;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;JLjava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4643
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$5;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$5;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;Lcom/bilibili/tv/widget/DrawLinearLayout;ZZLcom/bilibili/tv/widget/DrawTextView;)V

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 4652
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4655
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060299

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 4656
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 4657
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 4658
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 4659
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 4660
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setId(I)V

    .line 4661
    invoke-virtual {p1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4662
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 4663
    const/4 v0, 0x0

    move v1, v0

    :goto_112
    if-ge v1, v2, :cond_152

    .line 4664
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 4665
    if-nez v1, :cond_136

    .line 4666
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setNextFocusLeftId(I)V

    .line 4670
    :goto_123
    add-int/lit8 v3, v2, -0x1

    if-ne v1, v3, :cond_144

    .line 4671
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setNextFocusRightId(I)V

    .line 4663
    :goto_12e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_112

    .line 4624
    :cond_132
    const/4 v4, 0x0

    goto :goto_be

    .line 4625
    :cond_134
    const/4 v3, 0x0

    goto :goto_c2

    .line 4668
    :cond_136
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setNextFocusLeftId(I)V

    goto :goto_123

    .line 4673
    :cond_144
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setNextFocusRightId(I)V

    goto :goto_12e

    .line 4676
    :cond_152
    return-void
.end method

.method private final b(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 4679
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    const v1, 0x7f08016d

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$6100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4680
    if-eqz v0, :cond_42

    .line 4681
    iget v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    const/16 v2, 0xe10

    if-lt v1, v2, :cond_58

    .line 4682
    const-string v1, "%d:%02d:%02d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    div-int/lit16 v3, v3, 0xe10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    rem-int/lit16 v3, v3, 0xe10

    div-int/lit8 v3, v3, 0x3c

    .line 4683
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    rem-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 4682
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4689
    :cond_42
    :goto_42
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->g:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$6200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 4690
    if-eqz v0, :cond_57

    .line 4691
    iget-wide v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_78

    .line 4692
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4698
    :cond_57
    :goto_57
    return-void

    .line 4685
    :cond_58
    const-string v1, "%02d:%02d"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    div-int/lit8 v3, v3, 0x3c

    .line 4686
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    rem-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4685
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_42

    .line 4694
    :cond_78
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4695
    iget-wide v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    invoke-static {v2, v3}, Lcom/bilibili/tv/util/DateHelper;->formatDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_57
.end method

.method private final c(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 4898
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRelatedList:Ljava/util/List;

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRelatedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 4899
    :cond_e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->i:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 4900
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->i:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4902
    :cond_1f
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 4903
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 4908
    :cond_30
    :goto_30
    return-void

    .line 4907
    :cond_31
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRelatedList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->createRelateVideoSectionView(Ljava/util/List;)V

    goto :goto_30
.end method

.method private convertUgcPageToBiliVideoDetail(Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;Lcom/bilibili/tv/api/video/BiliVideoDetail;)Lcom/bilibili/tv/api/video/BiliVideoDetail;
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 5077
    new-instance v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-direct {v4}, Lcom/bilibili/tv/api/video/BiliVideoDetail;-><init>()V

    .line 5078
    iget-wide v0, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    iput-wide v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    .line 5079
    iput-object p1, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sourcePage:Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    .line 5080
    iget-wide v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    iput-wide v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCid:J

    .line 5083
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->firstFrame:Ljava/lang/String;

    if-eqz v0, :cond_34

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->firstFrame:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 5084
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->firstFrame:Ljava/lang/String;

    .line 5090
    :goto_1f
    iput-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    .line 5092
    iget v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->duration:I

    iput v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    .line 5095
    iget-wide v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->ctime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_46

    .line 5096
    iget-wide v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->ctime:J

    .line 5100
    :goto_2d
    iput-wide v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    .line 5102
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTitle:Ljava/lang/String;

    iput-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    .line 5104
    return-object v4

    .line 5085
    :cond_34
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->cover:Ljava/lang/String;

    if-eqz v0, :cond_43

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->cover:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    .line 5086
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->cover:Ljava/lang/String;

    goto :goto_1f

    .line 5088
    :cond_43
    iget-object v0, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    goto :goto_1f

    .line 5097
    :cond_46
    iget-wide v0, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_4f

    .line 5098
    iget-wide v0, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    goto :goto_2d

    :cond_4f
    move-wide v0, v2

    goto :goto_2d
.end method

.method private createRelateVideoSectionView(Ljava/util/List;)V
    .locals 6
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
    const/16 v5, 0x64

    const/16 v4, 0x8

    const/4 v0, 0x0

    .line 4911
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_13

    if-eqz p1, :cond_13

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 4965
    :cond_13
    :goto_13
    return-void

    .line 4915
    :cond_14
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_25

    .line 4916
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4919
    :cond_25
    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {v1, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;-><init>(Landroid/content/Context;)V

    .line 4921
    invoke-virtual {v1, v5}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setSectionId(I)V

    .line 4923
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 4924
    const-string v3, "\u76f8\u5173\u63a8\u8350"

    invoke-virtual {v1, v3, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setTitle(Ljava/lang/String;I)V

    .line 4926
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4927
    :goto_3d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4d

    .line 4928
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4927
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 4931
    :cond_4d
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;

    const/4 v3, 0x3

    invoke-direct {v0, v3}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;-><init>(I)V

    .line 4932
    invoke-virtual {v1, v2, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setData(Ljava/util/List;Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;)V

    .line 4934
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$7;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$7;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;)V

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setOnVideoClickListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;)V

    .line 4945
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 4946
    if-eqz v0, :cond_6a

    .line 4947
    const v2, 0x7f08016a

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setNextFocusUpId(I)V

    .line 4950
    :cond_6a
    new-instance v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getTitleView()Landroid/widget/TextView;

    move-result-object v3

    invoke-direct {v2, v3, v0, v5}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;-><init>(Landroid/widget/TextView;Landroid/support/v7/widget/RecyclerView;I)V

    .line 4951
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4952
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ugcSeasonSections:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$6400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4953
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$6300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    move-result-object v0

    if-eqz v0, :cond_96

    .line 4954
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$6300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->registerSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    .line 4957
    :cond_96
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4959
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->i:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_ae

    .line 4960
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->i:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4962
    :cond_ae
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 4963
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto/16 :goto_13
.end method

.method private createSeasonSectionView(Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;IILcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 9

    .prologue
    .line 4811
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->episodes:Lcom/alibaba/fastjson/JSONArray;

    if-nez v0, :cond_b

    .line 4895
    :cond_a
    :goto_a
    return-void

    .line 4815
    :cond_b
    new-instance v3, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {v3, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;-><init>(Landroid/content/Context;)V

    .line 4816
    iget v4, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->id:I

    .line 4817
    invoke-virtual {v3, v4}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setSectionId(I)V

    .line 4819
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->episodes:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    .line 4821
    const/4 v0, 0x1

    if-ne p3, v0, :cond_99

    iget-object v0, p4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->season_title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_99

    .line 4822
    iget-object v0, p4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->season_title:Ljava/lang/String;

    .line 4826
    :goto_2a
    invoke-virtual {v3, v0, v5}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setTitle(Ljava/lang/String;I)V

    .line 4828
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4829
    const/4 v0, 0x0

    move v2, v0

    :goto_34
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->episodes:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_9c

    .line 4830
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->episodes:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    .line 4831
    const-string v0, "arc"

    .line 4832
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 4831
    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 4835
    const-string v1, "arc"

    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 4836
    if-eqz v1, :cond_72

    .line 4837
    const-string v8, "author"

    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 4838
    if-eqz v1, :cond_72

    .line 4839
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v8, Lcom/bilibili/tv/api/video/BiliUser;

    invoke-static {v1, v8}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/api/video/BiliUser;

    .line 4840
    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    .line 4844
    :cond_72
    const-string v1, "badge_info"

    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 4845
    if-eqz v1, :cond_92

    .line 4846
    const-string v7, "text"

    invoke-virtual {v1, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4847
    const-string v8, "bg_color"

    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4848
    if-eqz v7, :cond_92

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_92

    .line 4849
    iput-object v7, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->badgeText:Ljava/lang/String;

    .line 4850
    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->badgeBgColor:Ljava/lang/String;

    .line 4854
    :cond_92
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4829
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_34

    .line 4824
    :cond_99
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->title:Ljava/lang/String;

    goto :goto_2a

    .line 4857
    :cond_9c
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;-><init>(I)V

    .line 4858
    invoke-virtual {v3, v6, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setData(Ljava/util/List;Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;)V

    .line 4859
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setCurrentVideoId(J)V

    .line 4861
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$6;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$6;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;)V

    invoke-virtual {v3, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setOnVideoClickListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;)V

    .line 4878
    invoke-virtual {v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 4879
    if-eqz v0, :cond_c2

    .line 4880
    const v1, 0x7f08016a

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setNextFocusUpId(I)V

    .line 4883
    :cond_c2
    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getTitleView()Landroid/widget/TextView;

    move-result-object v2

    invoke-direct {v1, v2, v0, v4}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;-><init>(Landroid/widget/TextView;Landroid/support/v7/widget/RecyclerView;I)V

    .line 4884
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4885
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ugcSeasonSections:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$6400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4886
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$6300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    move-result-object v0

    if-eqz v0, :cond_ee

    .line 4887
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$6300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->registerSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    .line 4890
    :cond_ee
    invoke-virtual {v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->scrollToCurrentVideo()V

    .line 4892
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->setupNavigationTagsForSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V
    invoke-static {v0, v3, v5}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$6500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    .line 4894
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_a
.end method

.method private createUgcEpisodesSectionView(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 10

    .prologue
    const/16 v9, 0x12c

    const/16 v8, 0x8

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 4995
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_13

    if-eqz p1, :cond_13

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-nez v0, :cond_14

    .line 5074
    :cond_13
    :goto_13
    return-void

    .line 4999
    :cond_14
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_25

    .line 5000
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5003
    :cond_25
    new-instance v3, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {v3, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;-><init>(Landroid/content/Context;)V

    .line 5005
    invoke-virtual {v3, v9}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setSectionId(I)V

    .line 5007
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 5008
    const-string v0, "\u9009\u96c6"

    invoke-virtual {v3, v0, v6}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setTitle(Ljava/lang/String;I)V

    .line 5010
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 5011
    :goto_40
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5b

    .line 5012
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    .line 5013
    invoke-direct {p0, v0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->convertUgcPageToBiliVideoDetail(Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;Lcom/bilibili/tv/api/video/BiliVideoDetail;)Lcom/bilibili/tv/api/video/BiliVideoDetail;

    move-result-object v0

    .line 5014
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5011
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_40

    .line 5017
    :cond_5b
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;-><init>(I)V

    .line 5018
    invoke-virtual {v3, v7, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setData(Ljava/util/List;Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;)V

    .line 5020
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_77

    .line 5021
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setCurrentVideoId(J)V

    .line 5025
    :cond_77
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-eqz v0, :cond_104

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget-wide v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_104

    .line 5026
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget-wide v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    .line 5028
    :goto_87
    cmp-long v4, v0, v4

    if-lez v4, :cond_8e

    .line 5029
    invoke-virtual {v3, v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setCurrentCid(J)V

    .line 5031
    :cond_8e
    invoke-virtual {v3, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setInterceptCurrentVideoClick(Z)V

    .line 5033
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$8;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$8;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;)V

    invoke-virtual {v3, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setOnVideoClickListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;)V

    .line 5050
    invoke-virtual {v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 5051
    if-eqz v0, :cond_a5

    .line 5052
    const v1, 0x7f08016a

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setNextFocusUpId(I)V

    .line 5055
    :cond_a5
    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getTitleView()Landroid/widget/TextView;

    move-result-object v4

    invoke-direct {v1, v4, v0, v9}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;-><init>(Landroid/widget/TextView;Landroid/support/v7/widget/RecyclerView;I)V

    .line 5056
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5057
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ugcSeasonSections:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$6400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5058
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$6300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    move-result-object v0

    if-eqz v0, :cond_d1

    .line 5059
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$6300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->registerSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    .line 5062
    :cond_d1
    invoke-virtual {v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->scrollToCurrentVideo()V

    .line 5064
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->setupNavigationTagsForSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V
    invoke-static {v0, v3, v6}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$6500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    .line 5066
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 5068
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hh:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$6600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_f1

    .line 5069
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hh:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$6600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5071
    :cond_f1
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 5072
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto/16 :goto_13

    :cond_104
    move-wide v0, v4

    goto :goto_87
.end method

.method private final d(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 4968
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 4969
    :cond_e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hh:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$6600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 4970
    if-eqz v0, :cond_19

    .line 4971
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4973
    :cond_19
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 4974
    if-eqz v0, :cond_24

    .line 4975
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 4992
    :cond_24
    :goto_24
    return-void

    .line 4979
    :cond_25
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_45

    .line 4980
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hh:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$6600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 4981
    if-eqz v0, :cond_39

    .line 4982
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4984
    :cond_39
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 4985
    if-eqz v0, :cond_24

    .line 4986
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_24

    .line 4991
    :cond_45
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->createUgcEpisodesSectionView(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    goto :goto_24
.end method

.method private loadRelatedVideosAndTags()V
    .locals 4

    .prologue
    .line 4525
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)J

    move-result-wide v2

    .line 4526
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    invoke-interface {v0, v2, v3}, Lmybl/MyBiliApiService;->getRelatedVideos(J)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/api/video/RelatedVideoParser;

    invoke-direct {v1}, Lcom/bilibili/tv/api/video/RelatedVideoParser;-><init>()V

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lbl/vu;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;)V

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 4561
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    invoke-interface {v0, v2, v3}, Lmybl/MyBiliApiService;->getVideoTags(J)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/api/video/TagParser;

    invoke-direct {v1}, Lcom/bilibili/tv/api/video/TagParser;-><init>()V

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lbl/vu;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$3;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$3;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;)V

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 4587
    return-void
.end method

.method private final showEpisodes(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 10

    .prologue
    const/16 v5, 0x8

    const/4 v2, 0x0

    .line 4715
    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getUGCseason()V

    .line 4718
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_title:Landroid/widget/TextView;

    .line 4719
    if-eqz v0, :cond_f

    .line 4720
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4722
    :cond_f
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    .line 4723
    if-eqz v0, :cond_18

    .line 4724
    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 4728
    :cond_18
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_25

    .line 4729
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 4731
    :cond_25
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4732
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$6300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 4733
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$6300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->clearSections()V

    .line 4737
    :cond_3f
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    if-eqz v0, :cond_4b

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 4738
    :cond_4b
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_58

    .line 4739
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4808
    :cond_58
    :goto_58
    return-void

    .line 4746
    :cond_59
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_60
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;

    .line 4747
    iget-object v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->episodes:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v4, :cond_138

    .line 4748
    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->episodes:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    add-int/2addr v0, v1

    :goto_77
    move v1, v0

    .line 4750
    goto :goto_60

    .line 4751
    :cond_79
    const/4 v0, 0x1

    if-gt v1, v0, :cond_8a

    .line 4752
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_58

    .line 4753
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_58

    .line 4759
    :cond_8a
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_97

    .line 4760
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4764
    :cond_97
    const/4 v0, -0x1

    .line 4765
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)J

    move-result-wide v6

    move v1, v2

    move v3, v0

    .line 4766
    :goto_a0
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_d6

    .line 4767
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;

    .line 4768
    iget-object v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->episodes:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v4, :cond_d4

    move v4, v2

    .line 4769
    :goto_b5
    iget-object v5, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->episodes:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_d4

    .line 4771
    :try_start_bd
    iget-object v5, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->episodes:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v5, v4}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    const-string v8, "arc"

    invoke-virtual {v5, v8}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    const-string v8, "aid"

    invoke-virtual {v5, v8}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_ce} :catch_f9

    move-result-wide v8

    .line 4772
    cmp-long v5, v8, v6

    if-nez v5, :cond_fa

    move v3, v1

    .line 4781
    :cond_d4
    if-ltz v3, :cond_fd

    .line 4787
    :cond_d6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4788
    if-ltz v3, :cond_101

    .line 4789
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v2

    .line 4790
    :goto_e5
    iget-object v4, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_114

    .line 4791
    if-eq v0, v3, :cond_f6

    .line 4792
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4790
    :cond_f6
    add-int/lit8 v0, v0, 0x1

    goto :goto_e5

    .line 4776
    :catch_f9
    move-exception v5

    .line 4769
    :cond_fa
    add-int/lit8 v4, v4, 0x1

    goto :goto_b5

    .line 4766
    :cond_fd
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a0

    :cond_101
    move v0, v2

    .line 4796
    :goto_102
    iget-object v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_114

    .line 4797
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4796
    add-int/lit8 v0, v0, 0x1

    goto :goto_102

    .line 4802
    :cond_114
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 4803
    :goto_11a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_58

    .line 4804
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4805
    iget-object v4, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;

    .line 4806
    invoke-direct {p0, v0, v2, v3, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->createSeasonSectionView(Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;IILcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 4803
    add-int/lit8 v2, v2, 0x1

    goto :goto_11a

    :cond_138
    move v0, v1

    goto/16 :goto_77
.end method

.method private updateAllUIForUgc(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 12

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 4448
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->y:Z
    invoke-static {v0, v9}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4902(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Z)Z

    .line 4449
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;
    invoke-static {v0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1402(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 4450
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->m:Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/view/View;

    move-result-object v0

    .line 4451
    if-eqz v0, :cond_17

    .line 4452
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 4454
    :cond_17
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    .line 4455
    if-eqz v0, :cond_22

    .line 4456
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    .line 4458
    :cond_22
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->gradientMaskView:Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 4459
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->gradientMaskView:Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 4461
    :cond_33
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->a(Ljava/lang/String;)V

    .line 4462
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o()V

    .line 4463
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->cc:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 4464
    if-eqz v0, :cond_4c

    .line 4465
    iget-object v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4467
    :cond_4c
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 4468
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->uperContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$5500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v11

    .line 4469
    if-eqz v2, :cond_95

    .line 4470
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 4471
    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->hasStaff()Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getStaffList()Ljava/util/List;

    move-result-object v0

    move-object v10, v0

    .line 4473
    :goto_68
    if-eqz v10, :cond_122

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_122

    .line 4474
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    move v7, v9

    .line 4475
    :goto_75
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_90

    .line 4476
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;

    .line 4477
    iget-object v3, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->name:Ljava/lang/String;

    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->mid:J

    iget-object v6, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->face:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->addStaffView(Landroid/widget/LinearLayout;Ljava/lang/String;JLjava/lang/String;II)V

    .line 4475
    add-int/lit8 v7, v7, 0x1

    goto :goto_75

    :cond_8e
    move-object v10, v6

    .line 4471
    goto :goto_68

    .line 4479
    :cond_90
    if-eqz v11, :cond_95

    .line 4480
    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4497
    :cond_95
    :goto_95
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->e:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$5600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 4498
    if-eqz v0, :cond_a8

    .line 4499
    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getPlays()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbl/adh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4501
    :cond_a8
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ff:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$5700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 4502
    if-eqz v0, :cond_bb

    .line 4503
    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getDanmakus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbl/adh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4505
    :cond_bb
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->b(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 4506
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->showEpisodes(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 4507
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->d(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 4508
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->refreshVisualOrder()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$5800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    .line 4510
    sget-object v0, Lbl/abi;->a:Lbl/abi;

    const-string v1, "tv_detail_view2_resp"

    sget-object v2, Lbl/abi;->a:Lbl/abi;

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J
    invoke-static {v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    .line 4511
    invoke-static {v4}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v4

    invoke-virtual {v4}, Lbl/mg;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "success"

    const-string v6, "0"

    .line 4510
    invoke-virtual {v2, v3, v4, v5, v6}, Lbl/abi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbl/abi;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4512
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->initDefaultPlayButtons(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 4513
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadArchiveRelation(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 4515
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateHistoryDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 4516
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    if-eqz v0, :cond_11e

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    .line 4517
    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_11e

    .line 4518
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    .line 4521
    :cond_11e
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->loadRelatedVideosAndTags()V

    .line 4522
    return-void

    .line 4483
    :cond_122
    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getAuthor()Ljava/lang/String;

    move-result-object v3

    .line 4484
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14d

    const-string v0, "null"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14d

    .line 4485
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    if-eqz v0, :cond_13c

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v6, v0, Lcom/bilibili/tv/api/video/BiliUser;->face:Ljava/lang/String;

    .line 4486
    :cond_13c
    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getMid()J

    move-result-wide v4

    const/4 v8, 0x1

    move-object v1, p0

    move v7, v9

    invoke-direct/range {v1 .. v8}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->addStaffView(Landroid/widget/LinearLayout;Ljava/lang/String;JLjava/lang/String;II)V

    .line 4487
    if-eqz v11, :cond_95

    .line 4488
    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_95

    .line 4491
    :cond_14d
    if-eqz v11, :cond_95

    .line 4492
    const/16 v0, 0x8

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_95
.end method


# virtual methods
.method public a(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 7

    .prologue
    .line 4416
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->y:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4902(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Z)Z

    .line 4417
    if-nez p1, :cond_4b

    .line 4418
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    .line 4419
    if-eqz v0, :cond_13

    .line 4420
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->c()V

    .line 4422
    :cond_13
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    .line 4423
    if-eqz v0, :cond_21

    .line 4424
    const v1, 0x7f0c00d8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a(I)V

    .line 4426
    :cond_21
    sget-object v0, Lbl/abi;->a:Lbl/abi;

    const-string v1, "tv_detail_view2_resp"

    sget-object v2, Lbl/abi;->a:Lbl/abi;

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J
    invoke-static {v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    .line 4427
    invoke-static {v4}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v4

    invoke-virtual {v4}, Lbl/mg;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "parse_error"

    const-string v6, "0"

    .line 4426
    invoke-virtual {v2, v3, v4, v5, v6}, Lbl/abi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbl/abi;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4445
    :goto_4a
    return-void

    .line 4431
    :cond_4b
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mEntryType:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$5000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    move-result-object v0

    sget-object v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;->UGC_BY_AVID:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    if-ne v0, v1, :cond_68

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isPgcVideo(Lcom/bilibili/tv/api/video/BiliVideoDetail;)Z
    invoke-static {v0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$5100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 4433
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;
    invoke-static {v0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1402(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 4434
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPgcInfo(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$5200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    goto :goto_4a

    .line 4439
    :cond_68
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->requestHistoryForUgc(Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/Runnable;)V
    invoke-static {v0, p1, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$5400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/Runnable;)V

    goto :goto_4a
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 4355
    check-cast p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->a(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 4358
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isFinishing()Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 4364
    const-string v0, "t"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4365
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0, p1, v2}, Lbl/adl;->a(Ljava/lang/Throwable;Landroid/app/Activity;)V

    .line 4367
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->y:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4902(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Z)Z

    .line 4368
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    .line 4369
    if-eqz v0, :cond_1d

    .line 4370
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/base/LoadingImageView;->setRefreshError(Z)V

    .line 4372
    :cond_1d
    const-string v0, "net_error"

    .line 4373
    instance-of v2, p1, Lcom/bilibili/api/BiliApiException;

    if-eqz v2, :cond_d7

    .line 4374
    check-cast p1, Lcom/bilibili/api/BiliApiException;

    .line 4375
    iget v0, p1, Lcom/bilibili/api/BiliApiException;->mCode:I

    const/16 v1, -0x193

    if-ne v0, v1, :cond_bb

    .line 4376
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 4377
    const-string v1, "BiliAccount.get(applicationContext)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4378
    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v0

    if-nez v0, :cond_82

    .line 4379
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    const/4 v1, 0x1

    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->y:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4902(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Z)Z

    .line 4380
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    .line 4381
    if-eqz v0, :cond_54

    .line 4382
    const v1, 0x7f0c016f

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a(I)V

    .line 4404
    :cond_54
    :goto_54
    const-string v0, "parse_error"

    .line 4405
    iget v1, p1, Lcom/bilibili/api/BiliApiException;->mCode:I

    .line 4409
    :cond_58
    :goto_58
    sget-object v2, Lbl/abi;->a:Lbl/abi;

    const-string v3, "tv_detail_view2_resp"

    sget-object v4, Lbl/abi;->a:Lbl/abi;

    iget-object v5, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J
    invoke-static {v5}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    .line 4410
    invoke-static {v6}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v6

    invoke-virtual {v6}, Lbl/mg;->d()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 4409
    invoke-virtual {v4, v5, v6, v0, v1}, Lbl/abi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lbl/abi;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4411
    return-void

    .line 4385
    :cond_82
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 4386
    const-string v1, "BiliAccount.get(applicationContext)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4387
    invoke-virtual {v0}, Lbl/mg;->c()Lcom/bilibili/lib/account/model/AccountInfo;

    move-result-object v0

    .line 4388
    if-eqz v0, :cond_9d

    invoke-virtual {v0}, Lcom/bilibili/lib/account/model/AccountInfo;->isFormalAccount()Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 4389
    :cond_9d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    .line 4390
    if-eqz v0, :cond_54

    .line 4391
    const v1, 0x7f0c016c

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a(I)V

    goto :goto_54

    .line 4394
    :cond_ac
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    .line 4395
    if-eqz v0, :cond_54

    .line 4396
    const v1, 0x7f0c016d

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a(I)V

    goto :goto_54

    .line 4400
    :cond_bb
    iget v0, p1, Lcom/bilibili/api/BiliApiException;->mCode:I

    const/16 v1, -0x194

    if-eq v0, v1, :cond_c7

    iget v0, p1, Lcom/bilibili/api/BiliApiException;->mCode:I

    const/16 v1, 0x194

    if-ne v0, v1, :cond_54

    :cond_c7
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    .line 4401
    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 4402
    const v1, 0x7f0c0170

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a(I)V

    goto/16 :goto_54

    .line 4406
    :cond_d7
    instance-of v2, p1, Lretrofit2/HttpException;

    if-eqz v2, :cond_58

    .line 4407
    check-cast p1, Lretrofit2/HttpException;

    invoke-virtual {p1}, Lretrofit2/HttpException;->code()I

    move-result v1

    goto/16 :goto_58
.end method
