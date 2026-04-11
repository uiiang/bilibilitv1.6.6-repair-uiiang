.class Lcom/bilibili/tv/ui/video/widget/VideoListNavigator$1;
.super Ljava/lang/Object;
.source "VideoListNavigator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->getVisualSortedSections(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/bilibili/tv/ui/video/widget/VideoListSection;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator$1;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I
    .locals 4

    .prologue
    const/16 v2, 0x3e7

    .line 236
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator$1;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->visualOrderMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->access$000(Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator$1;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->visualOrderMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->access$000(Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    .line 237
    :goto_2f
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator$1;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->visualOrderMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->access$000(Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator$1;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->visualOrderMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->access$000(Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 238
    :cond_5b
    sub-int v0, v1, v2

    return v0

    :cond_5e
    move v1, v2

    .line 236
    goto :goto_2f
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 233
    check-cast p1, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    check-cast p2, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator$1;->compare(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I

    move-result v0

    return v0
.end method
