.class Lcom/bilibili/tv/ui/video/player/BottomShotMenu$1;
.super Ljava/lang/Object;
.source "BottomShotMenu.java"

# interfaces
.implements Lcom/bilibili/tv/ui/video/widget/CurrentItemMatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->show(Lcom/bilibili/tv/api/video/VideoShot;ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

.field final synthetic val$currentPlayTime:I

.field final synthetic val$shots:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;ILjava/util/List;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$1;->this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    iput p2, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$1;->val$currentPlayTime:I

    iput-object p3, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$1;->val$shots:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCurrentItem(Ljava/lang/Object;I)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 123
    instance-of v0, p1, Lcom/bilibili/tv/api/video/VideoShotItem;

    if-eqz v0, :cond_2b

    .line 124
    check-cast p1, Lcom/bilibili/tv/api/video/VideoShotItem;

    .line 125
    iget v0, p1, Lcom/bilibili/tv/api/video/VideoShotItem;->time:I

    iget v2, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$1;->val$currentPlayTime:I

    if-gt v0, v2, :cond_29

    add-int/lit8 v0, p2, 0x1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$1;->val$shots:Ljava/util/List;

    .line 126
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_27

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$1;->val$shots:Ljava/util/List;

    add-int/lit8 v2, p2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/VideoShotItem;

    iget v0, v0, Lcom/bilibili/tv/api/video/VideoShotItem;->time:I

    iget v2, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$1;->val$currentPlayTime:I

    if-le v0, v2, :cond_29

    :cond_27
    const/4 v0, 0x1

    .line 128
    :goto_28
    return v0

    :cond_29
    move v0, v1

    .line 126
    goto :goto_28

    :cond_2b
    move v0, v1

    .line 128
    goto :goto_28
.end method
