.class Lcom/bilibili/tv/ui/video/player/BottomShotMenu$4;
.super Ljava/lang/Object;
.source "BottomShotMenu.java"

# interfaces
.implements Lcom/bilibili/tv/ui/video/widget/CurrentItemMatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->show(Lcom/bilibili/tv/api/video/VideoShot;ILjava/lang/String;ILorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

.field final synthetic val$currentPlayTimeSec:I

.field final synthetic val$shots:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;ILjava/util/List;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$4;->this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    iput p2, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$4;->val$currentPlayTimeSec:I

    iput-object p3, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$4;->val$shots:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCurrentItem(Ljava/lang/Object;I)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 248
    instance-of v0, p1, Lcom/bilibili/tv/api/video/VideoShotItem;

    if-eqz v0, :cond_5d

    .line 249
    check-cast p1, Lcom/bilibili/tv/api/video/VideoShotItem;

    .line 250
    iget v0, p1, Lcom/bilibili/tv/api/video/VideoShotItem;->time:I

    iget v2, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$4;->val$currentPlayTimeSec:I

    if-gt v0, v2, :cond_5b

    add-int/lit8 v0, p2, 0x1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$4;->val$shots:Ljava/util/List;

    .line 251
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_27

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$4;->val$shots:Ljava/util/List;

    add-int/lit8 v2, p2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/VideoShotItem;

    iget v0, v0, Lcom/bilibili/tv/api/video/VideoShotItem;->time:I

    iget v2, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$4;->val$currentPlayTimeSec:I

    if-le v0, v2, :cond_5b

    :cond_27
    const/4 v0, 0x1

    .line 252
    :goto_28
    if-eqz v0, :cond_5a

    .line 253
    const-string v1, "NavTagFocusBug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isCurrentItem] matched at position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | shotItem.time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/bilibili/tv/api/video/VideoShotItem;->time:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | currentPlayTimeSec="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$4;->val$currentPlayTimeSec:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_5a
    :goto_5a
    return v0

    :cond_5b
    move v0, v1

    .line 251
    goto :goto_28

    :cond_5d
    move v0, v1

    .line 257
    goto :goto_5a
.end method
