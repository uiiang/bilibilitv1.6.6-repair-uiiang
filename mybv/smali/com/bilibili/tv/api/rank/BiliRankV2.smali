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
    .line 23
    iget-object v0, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->children:Ljava/util/List;

    return-object v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public getDanmaku()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->danmaku:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->duration:I

    return v0
.end method

.method public getGotoX()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->gotoX:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->param:Ljava/lang/String;

    return-object v0
.end method

.method public getPlay()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->play:I

    return v0
.end method

.method public getPts()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->pts:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public isShowMore()Z
    .locals 1

    .prologue
    .line 96
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
    .line 27
    iput-object p1, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->children:Ljava/util/List;

    .line 28
    return-void
.end method

.method public setCover(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->cover:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setDanmaku(I)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->danmaku:I

    .line 44
    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->duration:I

    .line 52
    return-void
.end method

.method public setGotoX(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "goto"
    .end annotation

    .prologue
    .line 60
    iput-object p1, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->gotoX:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->name:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setParam(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->param:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setPlay(I)V
    .locals 0

    .prologue
    .line 84
    iput p1, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->play:I

    .line 85
    return-void
.end method

.method public setPts(I)V
    .locals 0

    .prologue
    .line 92
    iput p1, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->pts:I

    .line 93
    return-void
.end method

.method public setShowMore(Z)V
    .locals 0

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->showMore:Z

    .line 101
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->title:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/bilibili/tv/api/rank/BiliRankV2;->uri:Ljava/lang/String;

    .line 117
    return-void
.end method
