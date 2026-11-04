.class public final Lcom/bilibili/tv/api/main/MainRecommendEx$Content;
.super Ljava/lang/Object;
.source "MainRecommendEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/api/main/MainRecommendEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Content"
.end annotation


# instance fields
.field private badge:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "badge"
    .end annotation
.end field

.field private cardGoto:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "card_goto"
    .end annotation
.end field

.field private cardType:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "card_type"
    .end annotation
.end field

.field private cover:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "cover"
    .end annotation
.end field

.field private danmaku:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "danmaku"
    .end annotation
.end field

.field private duration:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "duration"
    .end annotation
.end field

.field private jumpId:Ljava/lang/Long;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "jump_id"
    .end annotation
.end field

.field private leftBadge:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "left_badge"
    .end annotation
.end field

.field private ownerName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "owner_name"
    .end annotation
.end field

.field private play:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "play"
    .end annotation
.end field

.field private pubdate:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "pubdate"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "title"
    .end annotation
.end field

.field private uri:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "uri"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBadge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->badge:Ljava/lang/String;

    return-object v0
.end method

.method public final getCardGoto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->cardGoto:Ljava/lang/String;

    return-object v0
.end method

.method public final getCardType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->cardType:Ljava/lang/String;

    return-object v0
.end method

.method public final getCover()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public final getDanmaku()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->danmaku:I

    return v0
.end method

.method public final getDuration()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->duration:I

    return v0
.end method

.method public final getJumpId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->jumpId:Ljava/lang/Long;

    return-object v0
.end method

.method public final getLeftBadge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->leftBadge:Ljava/lang/String;

    return-object v0
.end method

.method public final getOwnerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->ownerName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlay()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->play:I

    return v0
.end method

.method public final getPubdate()J
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->pubdate:J

    return-wide v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public final setBadge(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->badge:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public final setCardGoto(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->cardGoto:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public final setCardType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->cardType:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public final setCover(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->cover:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public final setDanmaku(I)V
    .locals 0

    .prologue
    .line 136
    iput p1, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->danmaku:I

    .line 137
    return-void
.end method

.method public final setDuration(I)V
    .locals 0

    .prologue
    .line 144
    iput p1, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->duration:I

    .line 145
    return-void
.end method

.method public final setJumpId(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->jumpId:Ljava/lang/Long;

    .line 89
    return-void
.end method

.method public final setLeftBadge(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->leftBadge:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public final setOwnerName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->ownerName:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public final setPlay(I)V
    .locals 0

    .prologue
    .line 128
    iput p1, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->play:I

    .line 129
    return-void
.end method

.method public final setPubdate(J)V
    .locals 1

    .prologue
    .line 152
    iput-wide p1, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->pubdate:J

    .line 153
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->title:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public final setUri(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->uri:Ljava/lang/String;

    .line 113
    return-void
.end method
