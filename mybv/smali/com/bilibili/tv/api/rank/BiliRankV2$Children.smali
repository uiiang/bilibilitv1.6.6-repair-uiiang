.class public Lcom/bilibili/tv/api/rank/BiliRankV2$Children;
.super Ljava/lang/Object;
.source "BiliRankV2.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/api/rank/BiliRankV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Children"
.end annotation


# instance fields
.field private cover:Ljava/lang/String;

.field private danmaku:I

.field private duration:I

.field private gotoX:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private param:Ljava/lang/String;

.field private play:I

.field private title:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCover()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/bilibili/tv/api/rank/BiliRankV2$Children;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public getDanmaku()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/bilibili/tv/api/rank/BiliRankV2$Children;->danmaku:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/bilibili/tv/api/rank/BiliRankV2$Children;->duration:I

    return v0
.end method

.method public getGotoX()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/bilibili/tv/api/rank/BiliRankV2$Children;->gotoX:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/bilibili/tv/api/rank/BiliRankV2$Children;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/bilibili/tv/api/rank/BiliRankV2$Children;->param:Ljava/lang/String;

    return-object v0
.end method

.method public getPlay()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/bilibili/tv/api/rank/BiliRankV2$Children;->play:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/bilibili/tv/api/rank/BiliRankV2$Children;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/bilibili/tv/api/rank/BiliRankV2$Children;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public setCover(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/bilibili/tv/api/rank/BiliRankV2$Children;->cover:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setDanmaku(I)V
    .locals 0

    .prologue
    .line 144
    iput p1, p0, Lcom/bilibili/tv/api/rank/BiliRankV2$Children;->danmaku:I

    .line 145
    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .prologue
    .line 152
    iput p1, p0, Lcom/bilibili/tv/api/rank/BiliRankV2$Children;->duration:I

    .line 153
    return-void
.end method

.method public setGotoX(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "goto"
    .end annotation

    .prologue
    .line 161
    iput-object p1, p0, Lcom/bilibili/tv/api/rank/BiliRankV2$Children;->gotoX:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/bilibili/tv/api/rank/BiliRankV2$Children;->name:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setParam(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/bilibili/tv/api/rank/BiliRankV2$Children;->param:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setPlay(I)V
    .locals 0

    .prologue
    .line 185
    iput p1, p0, Lcom/bilibili/tv/api/rank/BiliRankV2$Children;->play:I

    .line 186
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/bilibili/tv/api/rank/BiliRankV2$Children;->title:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/bilibili/tv/api/rank/BiliRankV2$Children;->uri:Ljava/lang/String;

    .line 202
    return-void
.end method
