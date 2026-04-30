.class Lcom/bilibili/tv/ui/video/widget/VideoListSection$9;
.super Ljava/lang/Object;
.source "VideoListSection.java"

# interfaces
.implements Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$FocusBoundaryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/widget/VideoListSection;->initNavigationTags()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$9;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setupFocusBoundary(Landroid/view/View;II)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 512
    if-nez p1, :cond_6

    .line 530
    :goto_5
    return-void

    .line 515
    :cond_6
    if-nez p2, :cond_20

    move v2, v0

    .line 516
    :goto_9
    add-int/lit8 v3, p3, -0x1

    if-ne p2, v3, :cond_22

    .line 518
    :goto_d
    if-eqz v2, :cond_24

    .line 519
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 523
    :goto_16
    if-eqz v0, :cond_28

    .line 524
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setNextFocusRightId(I)V

    goto :goto_5

    :cond_20
    move v2, v1

    .line 515
    goto :goto_9

    :cond_22
    move v0, v1

    .line 516
    goto :goto_d

    .line 521
    :cond_24
    invoke-virtual {p1, v4}, Landroid/view/View;->setNextFocusLeftId(I)V

    goto :goto_16

    .line 526
    :cond_28
    invoke-virtual {p1, v4}, Landroid/view/View;->setNextFocusRightId(I)V

    goto :goto_5
.end method
