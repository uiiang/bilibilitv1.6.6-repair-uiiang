.class public Lcom/bilibili/tv/api/rank/BiliRankV2;
.super Ljava/lang/Object;
.source "BiliRankV2.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/api/rank/BiliRankV2$Children;
    }
.end annotation


# instance fields
.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/rank/BiliRankV2$Children;",
            ">;"
        }
    .end annotation
.end field

.field private cover:Ljava/lang/String;

.field private danmaku:I

.field private duration:I

.field private gotoX:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private param:Ljava/lang/String;

.field private play:I

.field private pts:I

.field private pub_date:J

.field private showMore:Z

.field private title:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/rank/BiliRankV2$Children;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->children:Ljava/util/List;

    return-object v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public getDanmaku()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->danmaku:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->duration:I

    return v0
.end method

.method public getGotoX()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->gotoX:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->param:Ljava/lang/String;

    return-object v0
.end method

.method public getPlay()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->play:I

    return v0
.end method

.method public getPts()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->pts:I

    return v0
.end method

.method public getPub_date()J
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->pub_date:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public isShowMore()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->showMore:Z

    return v0
.end method

.method public setChildren(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/rank/BiliRankV2$Children;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    iput-object p1, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->children:Ljava/util/List;

    .line 29
    return-void
.end method

.method public setCover(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->cover:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setDanmaku(I)V
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->danmaku:I

    .line 45
    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->duration:I

    .line 53
    return-void
.end method

.method public setGotoX(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "goto"
    .end annotation

    .prologue
    .line 61
    iput-object p1, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->gotoX:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->name:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setParam(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->param:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setPlay(I)V
    .locals 0

    .prologue
    .line 85
    iput p1, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->play:I

    .line 86
    return-void
.end method

.method public setPts(I)V
    .locals 0

    .prologue
    .line 93
    iput p1, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->pts:I

    .line 94
    return-void
.end method

.method public setPub_date(J)V
    .locals 1

    .prologue
    .line 101
    iput-wide p1, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->pub_date:J

    .line 102
    return-void
.end method

.method public setShowMore(Z)V
    .locals 0

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->showMore:Z

    .line 110
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->title:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->uri:Ljava/lang/String;

    .line 126
    return-void
.end method
