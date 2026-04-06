.class public Lcom/bilibili/tv/api/favorite/BiliFavMediaV3$CntInfo;
.super Ljava/lang/Object;
.source "BiliFavMediaV3.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CntInfo"
.end annotation


# instance fields
.field private collect:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "collect"
    .end annotation
.end field

.field private danmaku:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "danmaku"
    .end annotation
.end field

.field private play:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "play"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCollect()J
    .locals 2

    .prologue
    .line 226
    iget-wide v0, p0, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3$CntInfo;->collect:J

    return-wide v0
.end method

.method public getDanmaku()J
    .locals 2

    .prologue
    .line 242
    iget-wide v0, p0, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3$CntInfo;->danmaku:J

    return-wide v0
.end method

.method public getPlay()J
    .locals 2

    .prologue
    .line 234
    iget-wide v0, p0, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3$CntInfo;->play:J

    return-wide v0
.end method

.method public setCollect(J)V
    .locals 1

    .prologue
    .line 230
    iput-wide p1, p0, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3$CntInfo;->collect:J

    .line 231
    return-void
.end method

.method public setDanmaku(J)V
    .locals 1

    .prologue
    .line 246
    iput-wide p1, p0, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3$CntInfo;->danmaku:J

    .line 247
    return-void
.end method

.method public setPlay(J)V
    .locals 1

    .prologue
    .line 238
    iput-wide p1, p0, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3$CntInfo;->play:J

    .line 239
    return-void
.end method
