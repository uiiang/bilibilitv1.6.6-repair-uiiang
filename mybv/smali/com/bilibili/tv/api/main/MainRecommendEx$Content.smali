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
.method public final getCardGoto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->cardGoto:Ljava/lang/String;

    return-object v0
.end method

.method public final getCardType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->cardType:Ljava/lang/String;

    return-object v0
.end method

.method public final getCover()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public final getDanmaku()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->danmaku:I

    return v0
.end method

.method public final getDuration()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->duration:I

    return v0
.end method

.method public final getJumpId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->jumpId:Ljava/lang/Long;

    return-object v0
.end method

.method public final getOwnerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->ownerName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlay()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->play:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public final setCardGoto(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->cardGoto:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public final setCardType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->cardType:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public final setCover(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->cover:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public final setDanmaku(I)V
    .locals 0

    .prologue
    .line 126
    iput p1, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->danmaku:I

    .line 127
    return-void
.end method

.method public final setDuration(I)V
    .locals 0

    .prologue
    .line 134
    iput p1, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->duration:I

    .line 135
    return-void
.end method

.method public final setJumpId(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->jumpId:Ljava/lang/Long;

    .line 79
    return-void
.end method

.method public final setOwnerName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->ownerName:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public final setPlay(I)V
    .locals 0

    .prologue
    .line 118
    iput p1, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->play:I

    .line 119
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->title:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public final setUri(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->uri:Ljava/lang/String;

    .line 103
    return-void
.end method
