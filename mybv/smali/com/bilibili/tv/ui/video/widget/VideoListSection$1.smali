.class Lcom/bilibili/tv/ui/video/widget/VideoListSection$1;
.super Ljava/lang/Object;
.source "VideoListSection.java"

# interfaces
.implements Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$FocusBoundaryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/widget/VideoListSection;->initViews()V
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
    .line 59
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$1;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

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

    .line 62
    if-nez p1, :cond_24

    .line 63
    const-string v0, "ListSection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupFocusBoundary | position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | itemView\u4e3anull"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :goto_23
    return-void

    .line 66
    :cond_24
    if-nez p2, :cond_84

    move v2, v0

    .line 67
    :goto_27
    add-int/lit8 v3, p3, -0x1

    if-ne p2, v3, :cond_86

    .line 69
    :goto_2b
    if-eqz v2, :cond_88

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 74
    :goto_34
    if-eqz v0, :cond_8c

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 80
    :goto_3d
    const-string v1, "ListSection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setupFocusBoundary | position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    const-string v2, " | itemId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :cond_84
    move v2, v1

    .line 66
    goto :goto_27

    :cond_86
    move v0, v1

    .line 67
    goto :goto_2b

    .line 72
    :cond_88
    invoke-virtual {p1, v4}, Landroid/view/View;->setNextFocusLeftId(I)V

    goto :goto_34

    .line 77
    :cond_8c
    invoke-virtual {p1, v4}, Landroid/view/View;->setNextFocusRightId(I)V

    goto :goto_3d
.end method
