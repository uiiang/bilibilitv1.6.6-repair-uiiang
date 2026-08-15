.class final Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper$1;
.super Ljava/lang/Object;
.source "DanmakuMergeHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper;->merge(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 88
    check-cast p1, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;

    check-cast p2, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;

    invoke-virtual {p0, p1, p2}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper$1;->compare(Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;)I

    move-result v0

    return v0
.end method

.method public compare(Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;)I
    .locals 4

    .prologue
    .line 91
    iget-wide v0, p1, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mTimeMilli:J

    iget-wide v2, p2, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mTimeMilli:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_a

    const/4 v0, -0x1

    :goto_9
    return v0

    :cond_a
    iget-wide v0, p1, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mTimeMilli:J

    iget-wide v2, p2, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mTimeMilli:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_9

    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method
