.class public Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$BigCardViewHolder;
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
    name = "BigCardViewHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$BigCardViewHolder$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$BigCardViewHolder$Companion;


# instance fields
.field private final blackCoverView:Lcom/bilibili/tv/widget/ScalableImageView;

.field private final coverView:Lcom/bilibili/tv/widget/ScalableImageView;

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

.field private final titleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 654
    new-instance v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$BigCardViewHolder$Companion;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$BigCardViewHolder$Companion;-><init>()V

    sput-object v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$BigCardViewHolder;->Companion:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$BigCardViewHolder$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/ref/WeakReference;)V
    .locals 1
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
    .line 662
    invoke-direct {p0, p1}, Lbl/adv;-><init>(Landroid/view/View;)V

    .line 663
    iput-object p2, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$BigCardViewHolder;->fragmentRef:Ljava/lang/ref/WeakReference;

    .line 664
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$BigCardViewHolder;->itemView:Landroid/view/View;

    .line 665
    const v0, 0x7f080132

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$BigCardViewHolder;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$BigCardViewHolder;->titleView:Landroid/widget/TextView;

    .line 666
    const v0, 0x7f0800a1

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$BigCardViewHolder;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ScalableImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$BigCardViewHolder;->coverView:Lcom/bilibili/tv/widget/ScalableImageView;

    .line 667
    const v0, 0x7f08003f

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$BigCardViewHolder;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ScalableImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$BigCardViewHolder;->blackCoverView:Lcom/bilibili/tv/widget/ScalableImageView;

    .line 668
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 669
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 670
    return-void
.end method


# virtual methods
.method public final getBlackCoverView()Lcom/bilibili/tv/widget/ScalableImageView;
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$BigCardViewHolder;->blackCoverView:Lcom/bilibili/tv/widget/ScalableImageView;

    return-object v0
.end method

.method public final getCoverView()Lcom/bilibili/tv/widget/ScalableImageView;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$BigCardViewHolder;->coverView:Lcom/bilibili/tv/widget/ScalableImageView;

    return-object v0
.end method

.method public final getTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$BigCardViewHolder;->titleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 688
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 689
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$BigCardViewHolder;->fragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;

    .line 690
    if-eqz v0, :cond_18

    .line 691
    sget-object v1, Lbl/abl;->a:Lbl/abl;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->getClickEventName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbl/abl;->a(Ljava/lang/String;)V

    .line 693
    :cond_18
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 697
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$BigCardViewHolder;->fragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;

    .line 698
    if-nez v0, :cond_b

    .line 706
    :goto_a
    return-void

    .line 701
    :cond_b
    const v1, 0x7f0800d8

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 702
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1e

    .line 703
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->currentPosition:I

    .line 705
    :cond_1e
    invoke-static {p1, p2}, Lbl/adj;->a(Landroid/view/View;Z)V

    goto :goto_a
.end method
