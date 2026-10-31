.class public Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SeasonSectionView"
.end annotation


# instance fields
.field public recyclerView:Landroid/support/v7/widget/RecyclerView;

.field public sectionId:I

.field public titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .prologue
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->titleView:Landroid/widget/TextView;

    .line 354
    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 355
    iput p3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    .line 356
    return-void
.end method
