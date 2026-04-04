.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$FocusTarget;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FocusTarget"
.end annotation


# instance fields
.field displayPosition:I

.field listType:I

.field listView:Landroid/view/View;

.field name:Ljava/lang/String;

.field recyclerView:Landroid/support/v7/widget/RecyclerView;

.field savedFocusPosition:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILandroid/view/View;Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 1034
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1035
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$FocusTarget;->name:Ljava/lang/String;

    .line 1036
    iput p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$FocusTarget;->listType:I

    .line 1037
    iput-object p3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$FocusTarget;->listView:Landroid/view/View;

    .line 1038
    iput-object p4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$FocusTarget;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1039
    iput p5, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$FocusTarget;->displayPosition:I

    .line 1040
    iput p6, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$FocusTarget;->savedFocusPosition:I

    .line 1041
    return-void
.end method
