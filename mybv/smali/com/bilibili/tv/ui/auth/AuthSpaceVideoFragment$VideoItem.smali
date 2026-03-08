.class public final Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$VideoItem;
.super Ljava/lang/Object;
.source "AuthSpaceVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoItem"
.end annotation


# instance fields
.field public aid:J

.field public danmaku:J

.field public pic:Ljava/lang/String;

.field public pubdate:J

.field public title:Ljava/lang/String;

.field public view:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJSONObject(Lcom/alibaba/fastjson/JSONObject;)Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$VideoItem;
    .locals 4

    .prologue
    .line 466
    new-instance v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$VideoItem;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$VideoItem;-><init>()V

    .line 467
    const-string v1, "aid"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$VideoItem;->aid:J

    .line 468
    const-string v1, "title"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$VideoItem;->title:Ljava/lang/String;

    .line 469
    const-string v1, "pic"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$VideoItem;->pic:Ljava/lang/String;

    .line 470
    const-string v1, "pubdate"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$VideoItem;->pubdate:J

    .line 471
    const-string v1, "stat"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_49

    .line 472
    const-string v1, "stat"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string v2, "view"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$VideoItem;->view:J

    .line 473
    const-string v1, "stat"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string v2, "danmaku"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$VideoItem;->danmaku:J

    .line 475
    :cond_49
    return-object v0
.end method
