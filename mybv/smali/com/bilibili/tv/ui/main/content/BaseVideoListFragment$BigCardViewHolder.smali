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
    .line 761
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
    .line 769
    invoke-direct {p0, p1}, Lbl/adv;-><init>(Landroid/view/View;)V

    .line 770
    iput-object p2, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$BigCardViewHolder;->fragmentRef:Ljava/lang/ref/WeakReference;

    .line 771
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$BigCardViewHolder;->itemView:Landroid/view/View;

    .line 772
    const v0, 0x7f080132

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$BigCardViewHolder;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$BigCardViewHolder;->titleView:Landroid/widget/TextView;

    .line 773
    const v0, 0x7f0800a1

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$BigCardViewHolder;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ScalableImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$BigCardViewHolder;->coverView:Lcom/bilibili/tv/widget/ScalableImageView;

    .line 774
    const v0, 0x7f08003f

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$BigCardViewHolder;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ScalableImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$BigCardViewHolder;->blackCoverView:Lcom/bilibili/tv/widget/ScalableImageView;

    .line 775
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 776
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 777
    return-void
.end method


# virtual methods
.method public final getBlackCoverView()Lcom/bilibili/tv/widget/ScalableImageView;
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$BigCardViewHolder;->blackCoverView:Lcom/bilibili/tv/widget/ScalableImageView;

    return-object v0
.end method

.method public final getCoverView()Lcom/bilibili/tv/widget/ScalableImageView;
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$BigCardViewHolder;->coverView:Lcom/bilibili/tv/widget/ScalableImageView;

    return-object v0
.end method

.method public final getTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$BigCardViewHolder;->titleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 795
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 796
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$BigCardViewHolder;->fragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;

    .line 797
    if-eqz v0, :cond_18

    .line 798
    sget-object v1, Lbl/abl;->a:Lbl/abl;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->getClickEventName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbl/abl;->a(Ljava/lang/String;)V

    .line 800
    :cond_18
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 804
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$BigCardViewHolder;->fragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;

    .line 805
    if-nez v0, :cond_b

    .line 813
    :goto_a
    return-void

    .line 808
    :cond_b
    const v1, 0x7f0800d8

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 809
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1e

    .line 810
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->currentPosition:I

    .line 812
    :cond_1e
    invoke-static {p1, p2}, Lbl/adj;->a(Landroid/view/View;Z)V

    goto :goto_a
.end method
