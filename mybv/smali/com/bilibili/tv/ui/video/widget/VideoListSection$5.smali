.class Lcom/bilibili/tv/ui/video/widget/VideoListSection$5;
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
    .line 235
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$5;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

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

    .line 238
    if-nez p1, :cond_6

    .line 257
    :goto_5
    return-void

    .line 241
    :cond_6
    if-nez p2, :cond_4c

    move v2, v0

    .line 242
    :goto_9
    add-int/lit8 v3, p3, -0x1

    if-ne p2, v3, :cond_4e

    .line 244
    :goto_d
    if-eqz v2, :cond_50

    .line 245
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 249
    :goto_16
    if-eqz v0, :cond_54

    .line 250
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 255
    :goto_1f
    const-string v1, "ListSection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setupNavTagFocusBoundary | position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | isFirst="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | isLast="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_4c
    move v2, v1

    .line 241
    goto :goto_9

    :cond_4e
    move v0, v1

    .line 242
    goto :goto_d

    .line 247
    :cond_50
    invoke-virtual {p1, v4}, Landroid/view/View;->setNextFocusLeftId(I)V

    goto :goto_16

    .line 252
    :cond_54
    invoke-virtual {p1, v4}, Landroid/view/View;->setNextFocusRightId(I)V

    goto :goto_1f
.end method
