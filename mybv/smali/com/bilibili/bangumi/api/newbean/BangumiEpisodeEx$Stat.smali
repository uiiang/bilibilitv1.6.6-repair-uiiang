.class public Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx$Stat;
.super Ljava/lang/Object;
.source "BangumiEpisodeEx.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stat"
.end annotation


# instance fields
.field public coin:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "coin"
    .end annotation
.end field

.field public danmakus:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "danmakus"
    .end annotation
.end field

.field public play:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "play"
    .end annotation
.end field

.field public reply:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "reply"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    return-void
.end method
