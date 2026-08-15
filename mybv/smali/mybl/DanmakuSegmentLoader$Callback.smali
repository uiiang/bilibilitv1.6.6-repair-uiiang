.class public interface abstract Lmybl/DanmakuSegmentLoader$Callback;
.super Ljava/lang/Object;
.source "DanmakuSegmentLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmybl/DanmakuSegmentLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onSegmentLoaded(JLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;",
            ">;)V"
        }
    .end annotation
.end method
