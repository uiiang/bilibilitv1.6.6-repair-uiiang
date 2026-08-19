.class Lmybl/DanmakuClient$LiveMergeGroup;
.super Ljava/lang/Object;
.source "DanmakuClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmybl/DanmakuClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LiveMergeGroup"
.end annotation


# instance fields
.field alpha:I

.field color:I

.field count:I

.field fontSize:I

.field groupStartMs:J

.field key:Ljava/lang/String;

.field lastTimeMs:J

.field representative:Ltv/danmaku/videoplayer/core/danmaku/comment/DrawableItem;

.field suffixStart:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmybl/DanmakuClient$1;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lmybl/DanmakuClient$LiveMergeGroup;-><init>()V

    return-void
.end method
