.class public Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;
.super Lbl/adv;
.source "BaseVideoListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SmallCardViewHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder$Companion;


# instance fields
.field private final badgeView:Landroid/widget/TextView;

.field private final bottomInfoLayout:Landroid/view/View;

.field private final coverView:Lcom/bilibili/tv/widget/ScalableImageView;

.field private final danmakuView:Landroid/widget/TextView;

.field private final durationView:Landroid/widget/TextView;

.field private final fragmentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final itemView:Landroid/view/View;

.field private final playView:Landroid/widget/TextView;

.field private final pubdateView:Landroid/widget/TextView;

.field private final titleView:Landroid/widget/TextView;

.field private final upView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 608
    new-instance v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder$Companion;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder$Companion;-><init>()V

    sput-object v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->Companion:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/ref/WeakReference;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v3, 0x7f0700e8

    .line 622
    invoke-direct {p0, p1}, Lbl/adv;-><init>(Landroid/view/View;)V

    .line 623
    iput-object p2, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->fragmentRef:Ljava/lang/ref/WeakReference;

    .line 624
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->itemView:Landroid/view/View;

    .line 625
    const v0, 0x7f080132

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->titleView:Landroid/widget/TextView;

    .line 626
    const v0, 0x7f0800a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ScalableImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->coverView:Lcom/bilibili/tv/widget/ScalableImageView;

    .line 627
    const v0, 0x7f08013f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->upView:Landroid/widget/TextView;

    .line 628
    const v0, 0x7f0800d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->playView:Landroid/widget/TextView;

    .line 629
    const v0, 0x7f08006c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->danmakuView:Landroid/widget/TextView;

    .line 630
    const v0, 0x7f0801a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->durationView:Landroid/widget/TextView;

    .line 631
    const v0, 0x7f0801af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->pubdateView:Landroid/widget/TextView;

    .line 632
    const v0, 0x7f080124

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->badgeView:Landroid/widget/TextView;

    .line 633
    const v0, 0x7f08021d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->bottomInfoLayout:Landroid/view/View;

    .line 635
    const-string v0, "BaseVideoListFragment"

    const-string v1, "========== SmallCardViewHolder Created =========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const-string v0, "BaseVideoListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const-string v0, "BaseVideoListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View clickable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const-string v0, "BaseVideoListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View focusable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->isFocusable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    instance-of v0, p1, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    if-eqz v0, :cond_f6

    move-object v0, p1

    .line 641
    check-cast v0, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setUpDrawable(I)V

    .line 646
    :cond_d4
    :goto_d4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 647
    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->upView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->playView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->danmakuView:Landroid/widget/TextView;

    const v4, 0x7f060120

    const v5, 0x7f0500a1

    invoke-static/range {v0 .. v5}, Lcom/bilibili/tv/ui/video/widget/VideoCardIcons;->apply(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;II)V

    .line 650
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 651
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 656
    new-instance v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder$1;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder$1;-><init>(Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 671
    return-void

    .line 642
    :cond_f6
    instance-of v0, p1, Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_d4

    move-object v0, p1

    .line 643
    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    goto :goto_d4
.end method


# virtual methods
.method public final getBadgeView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->badgeView:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getBottomInfoLayout()Landroid/view/View;
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->bottomInfoLayout:Landroid/view/View;

    return-object v0
.end method

.method public final getCoverView()Lcom/bilibili/tv/widget/ScalableImageView;
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->coverView:Lcom/bilibili/tv/widget/ScalableImageView;

    return-object v0
.end method

.method public final getDanmakuView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->danmakuView:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getDurationView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->durationView:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getPlayView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->playView:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getPubdateView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->pubdateView:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->titleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getUpView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->upView:Landroid/widget/TextView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 698
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 699
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->fragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;

    .line 703
    if-eqz v0, :cond_18

    .line 704
    sget-object v1, Lbl/abl;->a:Lbl/abl;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->getClickEventName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbl/abl;->a(Ljava/lang/String;)V

    .line 707
    :cond_18
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 710
    instance-of v1, v2, Ljava/lang/String;

    if-eqz v1, :cond_73

    .line 711
    const v1, 0x7f0800d8

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 712
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_70

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v3, v1

    .line 714
    :goto_32
    if-eqz v0, :cond_3a

    move-object v1, v2

    .line 715
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v3}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->onSmallCardClick(Landroid/view/View;Ljava/lang/String;I)V

    .line 721
    :cond_3a
    :goto_3a
    const v1, 0x7f0800ec

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 722
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_6f

    if-eqz v0, :cond_6f

    .line 723
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->getPageViewEvent()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pageview"

    const-string v3, "click"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "video"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "position"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 725
    :cond_6f
    return-void

    .line 712
    :cond_70
    const/4 v1, -0x1

    move v3, v1

    goto :goto_32

    .line 718
    :cond_73
    const-string v1, "BaseVideoListFragment"

    const-string v2, "Tag is not String, skipping onSmallCardClick"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    .prologue
    .line 732
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->fragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;

    .line 733
    if-nez v0, :cond_12

    .line 734
    const-string v0, "BaseVideoListFragment"

    const-string v1, "Fragment is null in onFocusChange"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :goto_11
    return-void

    .line 737
    :cond_12
    const v1, 0x7f0800d8

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 738
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_3f

    .line 739
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->currentPosition:I

    .line 740
    const-string v1, "BaseVideoListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->currentPosition:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    :cond_3f
    invoke-static {p1, p2}, Lbl/adj;->a(Landroid/view/View;Z)V

    .line 743
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    if-eqz v0, :cond_55

    .line 744
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {v0, p2}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setUpEnabled(Z)V

    .line 748
    :cond_4f
    :goto_4f
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_11

    .line 745
    :cond_55
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_4f

    .line 746
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, p2}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpEnabled(Z)V

    goto :goto_4f
.end method
