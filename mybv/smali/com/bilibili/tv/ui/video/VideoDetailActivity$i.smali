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
    .line 5393
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
    .line 5815
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5826
    :cond_8
    :goto_8
    return-void

    .line 5818
    :cond_9
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 5819
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Tag;

    .line 5820
    iget-object v3, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Tag;->name:Ljava/lang/String;

    iget v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Tag;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 5822
    :cond_2e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->x:Lcom/bilibili/tv/ui/video/VideoDetailActivity$g;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$8600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/VideoDetailActivity$g;

    move-result-object v0

    .line 5823
    if-eqz v0, :cond_8

    .line 5824
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$g;->a(Ljava/util/HashMap;)V

    goto :goto_8
.end method

.method static synthetic access$7400(Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 0

    .prologue
    .line 5393
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->updateAllUIForUgc(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    return-void
.end method

.method static synthetic access$9200(Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;IILcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 0

    .prologue
    .line 5393
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->createSeasonSectionView(Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;IILcom/bilibili/tv/api/video/BiliVideoDetail;)V

    return-void
.end method

.method private addStaffView(Landroid/widget/LinearLayout;Ljava/lang/String;JLjava/lang/String;II)V
    .locals 7

    .prologue
    .line 5694
    new-instance v2, Lcom/bilibili/tv/widget/DrawLinearLayout;

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {v2, v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;-><init>(Landroid/content/Context;)V

    .line 5695
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOrientation(I)V

    .line 5696
    const/16 v0, 0x10

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setGravity(I)V

    .line 5697
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setFocusable(Z)V

    .line 5698
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setFocusableInTouchMode(Z)V

    .line 5699
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setClipChildren(Z)V

    .line 5700
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setClipToPadding(Z)V

    .line 5701
    const v0, 0x7f0700e7

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 5702
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 5703
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060377

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 5704
    invoke-virtual {v2, v0, v1, v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setPadding(IIII)V

    .line 5706
    new-instance v0, Lcom/bilibili/tv/widget/CircleImageView;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {v0, v1}, Lcom/bilibili/tv/widget/CircleImageView;-><init>(Landroid/content/Context;)V

    .line 5707
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060163

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 5708
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5709
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f060299

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 5710
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 5711
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/CircleImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 5712
    const/high16 v1, 0x7f0b0000

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/CircleImageView;->setImageResource(I)V

    .line 5713
    if-eqz p5, :cond_82

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_82

    .line 5714
    sget-object v1, Lbl/adl;->a:Lbl/adl;

    invoke-virtual {v1, p5, v0}, Lbl/adl;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 5716
    :cond_82
    invoke-virtual {v2, v0, v3}, Lcom/bilibili/tv/widget/DrawLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5718
    new-instance v5, Lcom/bilibili/tv/widget/DrawTextView;

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {v5, v0}, Lcom/bilibili/tv/widget/DrawTextView;-><init>(Landroid/content/Context;)V

    .line 5719
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060136

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v5, v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setTextSize(IF)V

    .line 5720
    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Lcom/bilibili/tv/widget/DrawTextView;->setTextColor(I)V

    .line 5721
    const/16 v0, 0x11

    invoke-virtual {v5, v0}, Lcom/bilibili/tv/widget/DrawTextView;->setGravity(I)V

    .line 5722
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v0}, Lcom/bilibili/tv/widget/DrawTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 5723
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/bilibili/tv/widget/DrawTextView;->setFocusable(Z)V

    .line 5724
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/bilibili/tv/widget/DrawTextView;->setMaxLines(I)V

    .line 5725
    const/16 v0, 0x10

    invoke-virtual {v5, v0}, Lcom/bilibili/tv/widget/DrawTextView;->setMaxEms(I)V

    .line 5726
    invoke-virtual {v5, p2}, Lcom/bilibili/tv/widget/DrawTextView;->setText(Ljava/lang/CharSequence;)V

    .line 5728
    if-nez p6, :cond_132

    const/4 v4, 0x1

    .line 5729
    :goto_be
    const/4 v0, 0x1

    if-le p7, v0, :cond_134

    const/4 v3, 0x1

    .line 5730
    :goto_c2
    if-eqz v3, :cond_cb

    if-nez v4, :cond_cb

    .line 5731
    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Lcom/bilibili/tv/widget/DrawTextView;->setVisibility(I)V

    .line 5734
    :cond_cb
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v6, -0x2

    invoke-direct {v0, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5737
    invoke-virtual {v2, v5, v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5741
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$4;

    invoke-direct {v0, p0, p3, p4, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$4;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;JLjava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5757
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$5;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$5;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;Lcom/bilibili/tv/widget/DrawLinearLayout;ZZLcom/bilibili/tv/widget/DrawTextView;)V

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 5766
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5769
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060299

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 5770
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 5771
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 5772
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 5773
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 5774
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setId(I)V

    .line 5775
    invoke-virtual {p1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5776
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 5777
    const/4 v0, 0x0

    move v1, v0

    :goto_112
    if-ge v1, v2, :cond_152

    .line 5778
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 5779
    if-nez v1, :cond_136

    .line 5780
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setNextFocusLeftId(I)V

    .line 5784
    :goto_123
    add-int/lit8 v3, v2, -0x1

    if-ne v1, v3, :cond_144

    .line 5785
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setNextFocusRightId(I)V

    .line 5777
    :goto_12e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_112

    .line 5728
    :cond_132
    const/4 v4, 0x0

    goto :goto_be

    .line 5729
    :cond_134
    const/4 v3, 0x0

    goto :goto_c2

    .line 5782
    :cond_136
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setNextFocusLeftId(I)V

    goto :goto_123

    .line 5787
    :cond_144
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setNextFocusRightId(I)V

    goto :goto_12e

    .line 5790
    :cond_152
    return-void
.end method

.method private final b(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 5793
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    const v1, 0x7f08016d

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$8700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5794
    if-eqz v0, :cond_42

    .line 5795
    iget v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    const/16 v2, 0xe10

    if-lt v1, v2, :cond_58

    .line 5796
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

    .line 5797
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    rem-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 5796
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5803
    :cond_42
    :goto_42
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->g:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$8800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 5804
    if-eqz v0, :cond_57

    .line 5805
    iget-wide v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_78

    .line 5806
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5812
    :cond_57
    :goto_57
    return-void

    .line 5799
    :cond_58
    const-string v1, "%02d:%02d"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    div-int/lit8 v3, v3, 0x3c

    .line 5800
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

    .line 5799
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_42

    .line 5808
    :cond_78
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5809
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

    .line 6061
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRelatedList:Ljava/util/List;

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRelatedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 6062
    :cond_e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->i:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 6063
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->i:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6065
    :cond_1f
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 6066
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 6071
    :cond_30
    :goto_30
    return-void

    .line 6070
    :cond_31
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRelatedList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->createRelateVideoSectionView(Ljava/util/List;)V

    goto :goto_30
.end method

.method private convertUgcPageToBiliVideoDetail(Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;Lcom/bilibili/tv/api/video/BiliVideoDetail;)Lcom/bilibili/tv/api/video/BiliVideoDetail;
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 6351
    new-instance v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-direct {v4}, Lcom/bilibili/tv/api/video/BiliVideoDetail;-><init>()V

    .line 6352
    iget-wide v0, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    iput-wide v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    .line 6353
    iput-object p1, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sourcePage:Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    .line 6354
    iget-wide v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    iput-wide v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCid:J

    .line 6357
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->firstFrame:Ljava/lang/String;

    if-eqz v0, :cond_34

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->firstFrame:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 6358
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->firstFrame:Ljava/lang/String;

    .line 6364
    :goto_1f
    iput-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    .line 6366
    iget v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->duration:I

    iput v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    .line 6369
    iget-wide v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->ctime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_46

    .line 6370
    iget-wide v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->ctime:J

    .line 6374
    :goto_2d
    iput-wide v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    .line 6376
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTitle:Ljava/lang/String;

    iput-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    .line 6378
    return-object v4

    .line 6359
    :cond_34
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->cover:Ljava/lang/String;

    if-eqz v0, :cond_43

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->cover:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    .line 6360
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->cover:Ljava/lang/String;

    goto :goto_1f

    .line 6362
    :cond_43
    iget-object v0, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    goto :goto_1f

    .line 6371
    :cond_46
    iget-wide v0, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_4f

    .line 6372
    iget-wide v0, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    goto :goto_2d

    :cond_4f
    move-wide v0, v2

    goto :goto_2d
.end method

.method private createSeasonSectionView(Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;IILcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 22

    .prologue
    .line 5950
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v2, v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_e

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->episodes:Lcom/alibaba/fastjson/JSONArray;

    if-nez v2, :cond_f

    .line 6058
    :cond_e
    :goto_e
    return-void

    .line 5954
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 5955
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->episodes:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    .line 5956
    new-instance v8, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {v8, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;-><init>(Landroid/content/Context;)V

    .line 5957
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 5958
    move-object/from16 v0, p1

    iget v9, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->id:I

    .line 5959
    invoke-virtual {v8, v9}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setSectionId(I)V

    .line 5960
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setShowIndexBadge(Z)V

    .line 5962
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->episodes:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v12

    .line 5964
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_196

    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->season_title:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_196

    .line 5965
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->season_title:Ljava/lang/String;

    .line 5969
    :goto_4e
    invoke-virtual {v8, v2, v12}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setTitle(Ljava/lang/String;I)V

    .line 5971
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 5972
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 5973
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->parsedEpisodes:Ljava/util/List;

    if-eqz v2, :cond_19c

    .line 5975
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->parsedEpisodes:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6006
    :cond_67
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 6007
    new-instance v4, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;

    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-direct {v4, v0}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;-><init>(I)V

    .line 6008
    invoke-virtual {v8, v13, v4}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setData(Ljava/util/List;Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;)V

    .line 6009
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J
    invoke-static {v4}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setCurrentVideoId(J)V

    .line 6010
    invoke-virtual {v8}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->syncAdapterCurrentState()V

    .line 6011
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 6013
    new-instance v4, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$7;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;)V

    invoke-virtual {v8, v4}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setOnVideoClickListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;)V

    .line 6031
    invoke-virtual {v8}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v4

    .line 6032
    if-eqz v4, :cond_a1

    .line 6033
    const v13, 0x7f08016a

    invoke-virtual {v4, v13}, Landroid/support/v7/widget/RecyclerView;->setNextFocusUpId(I)V

    .line 6036
    :cond_a1
    new-instance v13, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    invoke-virtual {v8}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getTitleView()Landroid/widget/TextView;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v13, v0, v4, v9}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;-><init>(Landroid/widget/TextView;Landroid/support/v7/widget/RecyclerView;I)V

    .line 6037
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;
    invoke-static {v4}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$5700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6038
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ugcSeasonSections:Ljava/util/List;
    invoke-static {v4}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6039
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;
    invoke-static {v4}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$9000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    move-result-object v4

    if-eqz v4, :cond_d7

    .line 6040
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;
    invoke-static {v4}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$9000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->registerSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    .line 6043
    :cond_d7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 6044
    invoke-virtual {v8}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->scrollToCurrentVideo()V

    .line 6046
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    .line 6047
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->setupNavigationTagsForSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V
    invoke-static {v4, v8, v12}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$9400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    .line 6049
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v4, v4, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 6050
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "section["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" eps="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " | createView="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v8, v10, v6

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms | jsonParse="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v8, v2, v14

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms | setData="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v2, v16, v2

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms | scroll="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v8, v18, v16

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms | navTags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v8, v20, v18

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms | addView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 6056
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v8, v8, v20

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms | total="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 6057
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6050
    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPerf(Ljava/lang/String;)V
    invoke-static {v4, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 5967
    :cond_196
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->title:Ljava/lang/String;

    goto/16 :goto_4e

    .line 5977
    :cond_19c
    const/4 v2, 0x0

    move v4, v2

    :goto_19e
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->episodes:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v4, v2, :cond_67

    .line 5978
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->episodes:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v16

    .line 5979
    const-string v2, "arc"

    .line 5980
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 5979
    invoke-static {v2, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 5983
    const-string v3, "arc"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 5984
    if-eqz v3, :cond_1e8

    .line 5985
    const-string v17, "author"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 5986
    if-eqz v3, :cond_1e8

    .line 5987
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v17, Lcom/bilibili/tv/api/video/BiliUser;

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bilibili/tv/api/video/BiliUser;

    .line 5988
    iput-object v3, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    .line 5992
    :cond_1e8
    const-string v3, "badge_info"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 5993
    if-eqz v3, :cond_210

    .line 5994
    const-string v16, "text"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 5995
    const-string v17, "bg_color"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5996
    if-eqz v16, :cond_210

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_210

    .line 5997
    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->badgeText:Ljava/lang/String;

    .line 5998
    iput-object v3, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->badgeBgColor:Ljava/lang/String;

    .line 6002
    :cond_210
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5977
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_19e
.end method

.method private createUgcEpisodesSectionView(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 12

    .prologue
    const/16 v11, 0x12c

    const/16 v10, 0x8

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 6264
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_13

    if-eqz p1, :cond_13

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-nez v0, :cond_14

    .line 6348
    :cond_13
    :goto_13
    return-void

    .line 6268
    :cond_14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 6269
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ugcEpisodes section build start | pages="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPerf(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;)V

    .line 6270
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_47

    .line 6271
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6274
    :cond_47
    new-instance v3, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {v3, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;-><init>(Landroid/content/Context;)V

    .line 6276
    invoke-virtual {v3, v11}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setSectionId(I)V

    .line 6277
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setShowIndexBadge(Z)V

    .line 6279
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 6280
    const-string v0, "\u9009\u96c6"

    invoke-virtual {v3, v0, v8}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setTitle(Ljava/lang/String;I)V

    .line 6282
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 6283
    :goto_66
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_81

    .line 6284
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    .line 6285
    invoke-direct {p0, v0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->convertUgcPageToBiliVideoDetail(Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;Lcom/bilibili/tv/api/video/BiliVideoDetail;)Lcom/bilibili/tv/api/video/BiliVideoDetail;

    move-result-object v0

    .line 6286
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6283
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_66

    .line 6289
    :cond_81
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;-><init>(I)V

    .line 6290
    invoke-virtual {v3, v9, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setData(Ljava/util/List;Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;)V

    .line 6293
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-eqz v0, :cond_156

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget-wide v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_156

    .line 6294
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget-wide v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    .line 6296
    :goto_9a
    cmp-long v4, v0, v4

    if-lez v4, :cond_a4

    .line 6297
    invoke-virtual {v3, v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setCurrentCid(J)V

    .line 6298
    invoke-virtual {v3, v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setCurrentPlayingCid(J)V

    .line 6300
    :cond_a4
    invoke-virtual {v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->syncAdapterCurrentState()V

    .line 6301
    invoke-virtual {v3, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setInterceptCurrentVideoClick(Z)V

    .line 6303
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$12;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$12;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;)V

    invoke-virtual {v3, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setOnVideoClickListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;)V

    .line 6321
    invoke-virtual {v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 6322
    if-eqz v0, :cond_be

    .line 6323
    const v1, 0x7f08016a

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setNextFocusUpId(I)V

    .line 6326
    :cond_be
    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getTitleView()Landroid/widget/TextView;

    move-result-object v4

    invoke-direct {v1, v4, v0, v11}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;-><init>(Landroid/widget/TextView;Landroid/support/v7/widget/RecyclerView;I)V

    .line 6327
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$5700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6328
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ugcSeasonSections:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6329
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$9000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    move-result-object v0

    if-eqz v0, :cond_ea

    .line 6330
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$9000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->registerSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    .line 6333
    :cond_ea
    invoke-virtual {v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->scrollToCurrentVideo()V

    .line 6335
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->setupNavigationTagsForSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V
    invoke-static {v0, v3, v8}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$9400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    .line 6337
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 6339
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hh:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$9500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_10a

    .line 6340
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hh:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$9500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6342
    :cond_10a
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_11b

    .line 6343
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 6345
    :cond_11b
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ugcEpisodes section build done | cost="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms | pages="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | sectionsContainerChildCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v2, v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    .line 6347
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6345
    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPerf(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_156
    move-wide v0, v4

    goto/16 :goto_9a
.end method

.method private final d(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 6237
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 6238
    :cond_e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hh:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$9500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 6239
    if-eqz v0, :cond_19

    .line 6240
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6242
    :cond_19
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 6243
    if-eqz v0, :cond_24

    .line 6244
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 6261
    :cond_24
    :goto_24
    return-void

    .line 6248
    :cond_25
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_45

    .line 6249
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hh:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$9500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 6250
    if-eqz v0, :cond_39

    .line 6251
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6253
    :cond_39
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 6254
    if-eqz v0, :cond_24

    .line 6255
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_24

    .line 6260
    :cond_45
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->createUgcEpisodesSectionView(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    goto :goto_24
.end method

.method private loadRelatedVideosAndTags()V
    .locals 5

    .prologue
    .line 5629
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)J

    move-result-wide v2

    .line 5630
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "related videos request sent | aid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPerf(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;)V

    .line 5631
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

    .line 5666
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

    .line 5691
    return-void
.end method

.method private final showEpisodes(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/16 v5, 0x8

    const/4 v2, 0x0

    .line 5829
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 5830
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mIsPgcMode:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$8900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 5947
    :cond_10
    :goto_10
    return-void

    .line 5833
    :cond_11
    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getUGCseason()V

    .line 5836
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_title:Landroid/widget/TextView;

    .line 5837
    if-eqz v0, :cond_1d

    .line 5838
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5840
    :cond_1d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    .line 5841
    if-eqz v0, :cond_26

    .line 5842
    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 5846
    :cond_26
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_33

    .line 5847
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 5849
    :cond_33
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$5700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5850
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$9000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 5851
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$9000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->clearSections()V

    .line 5855
    :cond_4d
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    if-eqz v0, :cond_59

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 5856
    :cond_59
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_10

    .line 5857
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_10

    .line 5864
    :cond_67
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_6e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;

    .line 5865
    iget-object v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->episodes:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v4, :cond_1d1

    .line 5866
    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->episodes:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    add-int/2addr v0, v1

    :goto_85
    move v1, v0

    .line 5868
    goto :goto_6e

    .line 5869
    :cond_87
    if-gt v1, v12, :cond_98

    .line 5870
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_10

    .line 5871
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_10

    .line 5877
    :cond_98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_a5

    .line 5878
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5882
    :cond_a5
    const/4 v0, -0x1

    .line 5883
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J
    invoke-static {v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)J

    move-result-wide v8

    move v3, v2

    move v4, v0

    .line 5884
    :goto_ae
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_e4

    .line 5885
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;

    .line 5886
    iget-object v5, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->episodes:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v5, :cond_e2

    move v5, v2

    .line 5887
    :goto_c3
    iget-object v10, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->episodes:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v10

    if-ge v5, v10, :cond_e2

    .line 5889
    :try_start_cb
    iget-object v10, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->episodes:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v10, v5}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v10

    const-string v11, "arc"

    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v10

    const-string v11, "aid"

    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_dc} :catch_107

    move-result-wide v10

    .line 5890
    cmp-long v10, v10, v8

    if-nez v10, :cond_108

    move v4, v3

    .line 5899
    :cond_e2
    if-ltz v4, :cond_10b

    .line 5905
    :cond_e4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5906
    if-ltz v4, :cond_10f

    .line 5907
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v2

    .line 5908
    :goto_f3
    iget-object v5, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_122

    .line 5909
    if-eq v0, v4, :cond_104

    .line 5910
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5908
    :cond_104
    add-int/lit8 v0, v0, 0x1

    goto :goto_f3

    .line 5894
    :catch_107
    move-exception v10

    .line 5887
    :cond_108
    add-int/lit8 v5, v5, 0x1

    goto :goto_c3

    .line 5884
    :cond_10b
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_ae

    :cond_10f
    move v0, v2

    .line 5914
    :goto_110
    iget-object v5, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_122

    .line 5915
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5914
    add-int/lit8 v0, v0, 0x1

    goto :goto_110

    .line 5920
    :cond_122
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 5921
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "showEpisodes scan done | sections="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v10, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " | episodes="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " | currentSectionIndex="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " | scanCost="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-long v4, v8, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "ms"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPerf(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;)V

    .line 5925
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 5927
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->cancelPendingSectionBuilds()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$9100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    .line 5930
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_190

    .line 5931
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5932
    iget-object v4, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;

    invoke-direct {p0, v0, v2, v1, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->createSeasonSectionView(Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;IILcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 5934
    :cond_190
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v12, :cond_1a4

    .line 5938
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    new-instance v4, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$6;

    invoke-direct {v4, p0, p1, v3, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$6;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/util/List;I)V

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scheduleRemainingSectionBuilds(ILcom/bilibili/tv/ui/video/VideoDetailActivity$SectionBuildTask;)V
    invoke-static {v0, v2, v4}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$9300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;ILcom/bilibili/tv/ui/video/VideoDetailActivity$SectionBuildTask;)V

    .line 5945
    :cond_1a4
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showEpisodes done | total="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms | sectionsNow=1/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5946
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5945
    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPerf(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_1d1
    move v0, v1

    goto/16 :goto_85
.end method

.method private updateAllUIForUgc(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 17

    .prologue
    .line 5505
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 5506
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UI build start | sections="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    if-nez v2, :cond_135

    const/4 v2, 0x0

    :goto_1a
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPerf(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;)V

    .line 5507
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    const/4 v3, 0x0

    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->y:Z
    invoke-static {v2, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$6902(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Z)Z

    .line 5508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    move-object/from16 v0, p1

    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;
    invoke-static {v2, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2102(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 5509
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->m:Landroid/view/View;
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/view/View;

    move-result-object v2

    .line 5510
    if-eqz v2, :cond_44

    .line 5511
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5513
    :cond_44
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v2

    .line 5514
    if-eqz v2, :cond_51

    .line 5515
    invoke-virtual {v2}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    .line 5517
    :cond_51
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->gradientMaskView:Landroid/view/View;
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_67

    .line 5518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->gradientMaskView:Landroid/view/View;
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5520
    :cond_67
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->a(Ljava/lang/String;)V

    .line 5521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o()V

    .line 5523
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->subscribeBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$7600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v2

    if-eqz v2, :cond_a1

    .line 5524
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->ugcSeason:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v2, :cond_13f

    .line 5525
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->ugcSeason:Lcom/alibaba/fastjson/JSONObject;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    .line 5524
    :goto_97
    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->currentSeasonId:J
    invoke-static {v4, v2, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$7702(Lcom/bilibili/tv/ui/video/VideoDetailActivity;J)J

    .line 5526
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateSubscribeButtonUI()V
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    .line 5528
    :cond_a1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->cc:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v2

    .line 5529
    if-eqz v2, :cond_b2

    .line 5530
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5533
    :cond_b2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->interactionVideoTag:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$7800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v3

    .line 5534
    if-eqz v3, :cond_d2

    .line 5535
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRights:Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;

    if-eqz v2, :cond_143

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRights:Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;

    iget v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;->isSteinGate:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_143

    const/4 v2, 0x1

    .line 5537
    :goto_cc
    if-eqz v2, :cond_145

    const/4 v2, 0x0

    :goto_cf
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5540
    :cond_d2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->chargingExclusiveTag:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$7900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_ee

    .line 5541
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->chargingExclusiveTag:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$7900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v3

    .line 5542
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mIsUpowerExclusive:Z

    if-eqz v2, :cond_148

    const/4 v2, 0x0

    .line 5541
    :goto_eb
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5545
    :cond_ee
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 5546
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->uperContainer:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$8000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v14

    .line 5547
    if-eqz v4, :cond_154

    .line 5548
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 5549
    invoke-virtual/range {p1 .. p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->hasStaff()Z

    move-result v2

    if-eqz v2, :cond_14b

    invoke-virtual/range {p1 .. p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getStaffList()Ljava/util/List;

    move-result-object v2

    move-object v11, v2

    .line 5553
    :goto_10e
    if-eqz v11, :cond_301

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_301

    .line 5554
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    .line 5555
    const/4 v9, 0x0

    :goto_11b
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-ge v9, v2, :cond_14e

    .line 5556
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;

    .line 5557
    iget-object v5, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->name:Ljava/lang/String;

    iget-wide v6, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->mid:J

    iget-object v8, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->face:Ljava/lang/String;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->addStaffView(Landroid/widget/LinearLayout;Ljava/lang/String;JLjava/lang/String;II)V

    .line 5555
    add-int/lit8 v9, v9, 0x1

    goto :goto_11b

    .line 5506
    :cond_135
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto/16 :goto_1a

    .line 5525
    :cond_13f
    const-wide/16 v2, 0x0

    goto/16 :goto_97

    .line 5535
    :cond_143
    const/4 v2, 0x0

    goto :goto_cc

    .line 5537
    :cond_145
    const/16 v2, 0x8

    goto :goto_cf

    .line 5542
    :cond_148
    const/16 v2, 0x8

    goto :goto_eb

    .line 5549
    :cond_14b
    const/4 v2, 0x0

    move-object v11, v2

    goto :goto_10e

    .line 5559
    :cond_14e
    if-eqz v14, :cond_154

    .line 5560
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5577
    :cond_154
    :goto_154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->e:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$8100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v2

    .line 5578
    if-eqz v2, :cond_169

    .line 5579
    invoke-virtual/range {p1 .. p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getPlays()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lbl/adh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5581
    :cond_169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ff:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$8200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v2

    .line 5582
    if-eqz v2, :cond_17e

    .line 5583
    invoke-virtual/range {p1 .. p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getDanmakus()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lbl/adh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5585
    :cond_17e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 5586
    invoke-direct/range {p0 .. p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->b(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 5587
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 5588
    invoke-direct/range {p0 .. p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->showEpisodes(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 5589
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 5590
    invoke-direct/range {p0 .. p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->d(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 5591
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 5592
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->refreshVisualOrder()V
    invoke-static {v10}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    .line 5593
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 5594
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "UI basicInfo="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v2, v4, v2

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms | showEpisodes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v4, v6, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms | episodesList="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v4, v8, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms | refreshVisualOrder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v4, v10, v8

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPerf(Ljava/lang/String;)V
    invoke-static {v14, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;)V

    .line 5599
    sget-object v2, Lbl/abi;->a:Lbl/abi;

    const-string v3, "tv_detail_view2_resp"

    sget-object v4, Lbl/abi;->a:Lbl/abi;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J
    invoke-static {v5}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    .line 5600
    invoke-static {v6}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v6

    invoke-virtual {v6}, Lbl/mg;->d()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const-string v7, "success"

    const-string v8, "0"

    .line 5599
    invoke-virtual {v4, v5, v6, v7, v8}, Lbl/abi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lbl/abi;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5601
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    move-object/from16 v0, p1

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->initDefaultPlayButtons(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v2, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$5000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 5602
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    move-object/from16 v0, p1

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadArchiveRelation(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v2, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$5100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 5604
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 5605
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    move-object/from16 v0, p1

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateHistoryDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v4, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 5606
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateHistoryDisplay call="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPerf(Ljava/lang/String;)V
    invoke-static {v4, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;)V

    .line 5607
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/ProgressPlayButton;

    move-result-object v2

    if-eqz v2, :cond_27d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    .line 5608
    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/ProgressPlayButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/ProgressPlayButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_27d

    .line 5609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/ProgressPlayButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/ProgressPlayButton;->requestFocus()Z

    .line 5613
    :cond_27d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->autoPlayAfterLoad:Z
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$8300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Z

    move-result v2

    if-eqz v2, :cond_2c2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->autoPlayTriggered:Z
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$8400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Z

    move-result v2

    if-nez v2, :cond_2c2

    .line 5614
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    const/4 v3, 0x1

    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->autoPlayTriggered:Z
    invoke-static {v2, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$8402(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Z)Z

    .line 5615
    const-wide/16 v2, 0x0

    .line 5616
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v4, :cond_2b8

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2b8

    .line 5617
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-wide v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    .line 5619
    :cond_2b8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->playVideo(Lcom/bilibili/tv/api/video/BiliVideoDetail;JI)V
    invoke-static {v4, v0, v2, v3, v5}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;JI)V

    .line 5622
    :cond_2c2
    invoke-direct/range {p0 .. p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->loadRelatedVideosAndTags()V

    .line 5623
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UI build done | total="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v12

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "ms | seasonsContainerChildCount="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5624
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v2, v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-nez v2, :cond_33d

    const/4 v2, -0x1

    :goto_2ec
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5623
    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPerf(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;)V

    .line 5625
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    const-string v3, "afterData"

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->startFramePerf(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$8500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;)V

    .line 5626
    return-void

    .line 5563
    :cond_301
    invoke-virtual/range {p1 .. p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getAuthor()Ljava/lang/String;

    move-result-object v5

    .line 5564
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_334

    const-string v2, "null"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_334

    .line 5565
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    if-eqz v2, :cond_332

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v8, v2, Lcom/bilibili/tv/api/video/BiliUser;->face:Ljava/lang/String;

    .line 5566
    :goto_31f
    invoke-virtual/range {p1 .. p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getMid()J

    move-result-wide v6

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->addStaffView(Landroid/widget/LinearLayout;Ljava/lang/String;JLjava/lang/String;II)V

    .line 5567
    if-eqz v14, :cond_154

    .line 5568
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_154

    .line 5565
    :cond_332
    const/4 v8, 0x0

    goto :goto_31f

    .line 5571
    :cond_334
    if-eqz v14, :cond_154

    .line 5572
    const/16 v2, 0x8

    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_154

    .line 5624
    :cond_33d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v2, v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    goto :goto_2ec
.end method


# virtual methods
.method public a(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 5458
    if-eqz p1, :cond_5e

    .line 5459
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    if-nez v0, :cond_25

    move v1, v2

    :goto_8
    move v4, v2

    move v3, v2

    .line 5461
    :goto_a
    if-ge v4, v1, :cond_2d

    .line 5462
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;

    .line 5463
    if-eqz v0, :cond_e4

    iget-object v5, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->episodes:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v5, :cond_e4

    .line 5464
    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->episodes:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    add-int/2addr v0, v3

    .line 5461
    :goto_21
    add-int/lit8 v4, v4, 0x1

    move v3, v0

    goto :goto_a

    .line 5459
    :cond_25
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_8

    .line 5467
    :cond_2d
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "video info callback | sections="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | episodes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | pages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5469
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-nez v0, :cond_b5

    move v0, v2

    :goto_53
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5467
    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPerf(Ljava/lang/String;)V
    invoke-static {v4, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;)V

    .line 5471
    :cond_5e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->y:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$6902(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Z)Z

    .line 5472
    if-nez p1, :cond_bc

    .line 5473
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->b:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$7000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/ImageView;

    move-result-object v0

    .line 5474
    if-eqz v0, :cond_72

    .line 5475
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5477
    :cond_72
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    .line 5478
    if-eqz v0, :cond_7d

    .line 5479
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->c()V

    .line 5481
    :cond_7d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    .line 5482
    if-eqz v0, :cond_8b

    .line 5483
    const v1, 0x7f0c00d8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a(I)V

    .line 5485
    :cond_8b
    sget-object v0, Lbl/abi;->a:Lbl/abi;

    const-string v1, "tv_detail_view2_resp"

    sget-object v2, Lbl/abi;->a:Lbl/abi;

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J
    invoke-static {v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    .line 5486
    invoke-static {v4}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v4

    invoke-virtual {v4}, Lbl/mg;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "parse_error"

    const-string v6, "0"

    .line 5485
    invoke-virtual {v2, v3, v4, v5, v6}, Lbl/abi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbl/abi;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5502
    :goto_b4
    return-void

    .line 5469
    :cond_b5
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_53

    .line 5490
    :cond_bc
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mEntryType:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$7100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    move-result-object v0

    sget-object v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;->UGC_BY_AVID:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    if-ne v0, v1, :cond_d9

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isPgcVideo(Lcom/bilibili/tv/api/video/BiliVideoDetail;)Z
    invoke-static {v0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$7200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 5491
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;
    invoke-static {v0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2102(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 5492
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPgcInfo(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$7300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    goto :goto_b4

    .line 5496
    :cond_d9
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->requestHistoryForUgc(Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/Runnable;)V
    invoke-static {v0, p1, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$7500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/Runnable;)V

    goto :goto_b4

    :cond_e4
    move v0, v3

    goto/16 :goto_21
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 5393
    check-cast p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->a(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    return-void
.end method

.method public createRelateVideoSectionView(Ljava/util/List;)V
    .locals 9
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
    const/16 v8, 0x64

    const/16 v7, 0x8

    const/4 v0, 0x0

    .line 6074
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_13

    if-eqz p1, :cond_13

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 6234
    :cond_13
    :goto_13
    return-void

    .line 6078
    :cond_14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 6079
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "related section build start | count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPerf(Ljava/lang/String;)V
    invoke-static {v1, v4}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;)V

    .line 6080
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_45

    .line 6081
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6084
    :cond_45
    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {v1, v4}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;-><init>(Landroid/content/Context;)V

    .line 6086
    invoke-virtual {v1, v8}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setSectionId(I)V

    .line 6087
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setShowIndexBadge(Z)V

    .line 6089
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 6090
    const-string v5, "\u76f8\u5173\u63a8\u8350"

    invoke-virtual {v1, v5, v4}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setTitle(Ljava/lang/String;I)V

    .line 6092
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 6093
    :goto_61
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_71

    .line 6094
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6093
    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    .line 6097
    :cond_71
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;

    const/4 v6, 0x3

    invoke-direct {v0, v6}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;-><init>(I)V

    .line 6098
    invoke-virtual {v1, v5, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setData(Ljava/util/List;Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;)V

    .line 6100
    invoke-virtual {v1, v4}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setupNavigationTags(I)V

    .line 6102
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$8;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$8;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;)V

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setOnNavTagFocusListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagFocusListener;)V

    .line 6112
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$9;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$9;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;)V

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setOnNavTagClickListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagClickListener;)V

    .line 6119
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$10;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$10;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;)V

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setOnVideoClickListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;)V

    .line 6134
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$11;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$11;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;)V

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setOnFocusExitListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;)V

    .line 6212
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 6213
    if-eqz v0, :cond_a9

    .line 6214
    const v4, 0x7f08016a

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setNextFocusUpId(I)V

    .line 6217
    :cond_a9
    new-instance v4, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getTitleView()Landroid/widget/TextView;

    move-result-object v5

    invoke-direct {v4, v5, v0, v8}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;-><init>(Landroid/widget/TextView;Landroid/support/v7/widget/RecyclerView;I)V

    .line 6218
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$5700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6219
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ugcSeasonSections:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6220
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$9000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    move-result-object v0

    if-eqz v0, :cond_d5

    .line 6221
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$9000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->registerSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    .line 6224
    :cond_d5
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 6226
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->i:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_ed

    .line 6227
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->i:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6229
    :cond_ed
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_fe

    .line 6230
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 6232
    :cond_fe
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "related section build done | cost="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms | sectionsContainerChildCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v2, v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    .line 6233
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6232
    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPerf(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;)V

    goto/16 :goto_13
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 5396
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isFinishing()Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 5402
    const-string v0, "t"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5403
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0, p1, v2}, Lbl/adl;->a(Ljava/lang/Throwable;Landroid/app/Activity;)V

    .line 5405
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->y:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$6902(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Z)Z

    .line 5406
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->b:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$7000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/ImageView;

    move-result-object v0

    .line 5407
    if-eqz v0, :cond_1f

    .line 5408
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5410
    :cond_1f
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    .line 5411
    if-eqz v0, :cond_2a

    .line 5412
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/base/LoadingImageView;->setRefreshError(Z)V

    .line 5414
    :cond_2a
    const-string v0, "net_error"

    .line 5415
    instance-of v2, p1, Lcom/bilibili/api/BiliApiException;

    if-eqz v2, :cond_e4

    .line 5416
    check-cast p1, Lcom/bilibili/api/BiliApiException;

    .line 5417
    iget v0, p1, Lcom/bilibili/api/BiliApiException;->mCode:I

    const/16 v1, -0x193

    if-ne v0, v1, :cond_c8

    .line 5418
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 5419
    const-string v1, "BiliAccount.get(applicationContext)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5420
    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v0

    if-nez v0, :cond_8f

    .line 5421
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    const/4 v1, 0x1

    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->y:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$6902(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Z)Z

    .line 5422
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    .line 5423
    if-eqz v0, :cond_61

    .line 5424
    const v1, 0x7f0c016f

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a(I)V

    .line 5446
    :cond_61
    :goto_61
    const-string v0, "parse_error"

    .line 5447
    iget v1, p1, Lcom/bilibili/api/BiliApiException;->mCode:I

    .line 5451
    :cond_65
    :goto_65
    sget-object v2, Lbl/abi;->a:Lbl/abi;

    const-string v3, "tv_detail_view2_resp"

    sget-object v4, Lbl/abi;->a:Lbl/abi;

    iget-object v5, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J
    invoke-static {v5}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    .line 5452
    invoke-static {v6}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v6

    invoke-virtual {v6}, Lbl/mg;->d()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 5451
    invoke-virtual {v4, v5, v6, v0, v1}, Lbl/abi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lbl/abi;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5453
    return-void

    .line 5427
    :cond_8f
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 5428
    const-string v1, "BiliAccount.get(applicationContext)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5429
    invoke-virtual {v0}, Lbl/mg;->c()Lcom/bilibili/lib/account/model/AccountInfo;

    move-result-object v0

    .line 5430
    if-eqz v0, :cond_aa

    invoke-virtual {v0}, Lcom/bilibili/lib/account/model/AccountInfo;->isFormalAccount()Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 5431
    :cond_aa
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    .line 5432
    if-eqz v0, :cond_61

    .line 5433
    const v1, 0x7f0c016c

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a(I)V

    goto :goto_61

    .line 5436
    :cond_b9
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    .line 5437
    if-eqz v0, :cond_61

    .line 5438
    const v1, 0x7f0c016d

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a(I)V

    goto :goto_61

    .line 5442
    :cond_c8
    iget v0, p1, Lcom/bilibili/api/BiliApiException;->mCode:I

    const/16 v1, -0x194

    if-eq v0, v1, :cond_d4

    iget v0, p1, Lcom/bilibili/api/BiliApiException;->mCode:I

    const/16 v1, 0x194

    if-ne v0, v1, :cond_61

    :cond_d4
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    .line 5443
    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    if-eqz v0, :cond_61

    .line 5444
    const v1, 0x7f0c0170

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a(I)V

    goto/16 :goto_61

    .line 5448
    :cond_e4
    instance-of v2, p1, Lretrofit2/HttpException;

    if-eqz v2, :cond_65

    .line 5449
    check-cast p1, Lretrofit2/HttpException;

    invoke-virtual {p1}, Lretrofit2/HttpException;->code()I

    move-result v1

    goto/16 :goto_65
.end method
