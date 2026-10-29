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
.field public adapter:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EpisodesVideoAdapter;

.field public recyclerView:Landroid/support/v7/widget/RecyclerView;

.field public sectionId:I

.field public titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->titleView:Landroid/widget/TextView;

    .line 253
    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 254
    iput p3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    .line 255
    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;Landroid/support/v7/widget/RecyclerView;Lcom/bilibili/tv/ui/video/VideoDetailActivity$EpisodesVideoAdapter;I)V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->titleView:Landroid/widget/TextView;

    .line 246
    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 247
    iput-object p3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->adapter:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EpisodesVideoAdapter;

    .line 248
    iput p4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    .line 249
    return-void
.end method
