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
    .line 152
    iget-object v0, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->badge:Ljava/lang/String;

    return-object v0
.end method

.method public final getCardGoto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->cardGoto:Ljava/lang/String;

    return-object v0
.end method

.method public final getCardType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->cardType:Ljava/lang/String;

    return-object v0
.end method

.method public final getCover()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public final getDanmaku()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->danmaku:I

    return v0
.end method

.method public final getDuration()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->duration:I

    return v0
.end method

.method public final getJumpId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->jumpId:Ljava/lang/Long;

    return-object v0
.end method

.method public final getOwnerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->ownerName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlay()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->play:I

    return v0
.end method

.method public final getPubdate()J
    .locals 2

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->pubdate:J

    return-wide v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public final setBadge(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->badge:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public final setCardGoto(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->cardGoto:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public final setCardType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->cardType:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public final setCover(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->cover:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public final setDanmaku(I)V
    .locals 0

    .prologue
    .line 132
    iput p1, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->danmaku:I

    .line 133
    return-void
.end method

.method public final setDuration(I)V
    .locals 0

    .prologue
    .line 140
    iput p1, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->duration:I

    .line 141
    return-void
.end method

.method public final setJumpId(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->jumpId:Ljava/lang/Long;

    .line 85
    return-void
.end method

.method public final setOwnerName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->ownerName:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public final setPlay(I)V
    .locals 0

    .prologue
    .line 124
    iput p1, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->play:I

    .line 125
    return-void
.end method

.method public final setPubdate(J)V
    .locals 1

    .prologue
    .line 148
    iput-wide p1, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->pubdate:J

    .line 149
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->title:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public final setUri(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->uri:Ljava/lang/String;

    .line 109
    return-void
.end method
