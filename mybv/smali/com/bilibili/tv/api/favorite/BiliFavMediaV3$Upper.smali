.class public Lcom/bilibili/tv/api/favorite/BiliFavMediaV3$Upper;
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
    name = "Upper"
.end annotation


# instance fields
.field private face:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "face"
    .end annotation
.end field

.field private mid:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "mid"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3$Upper;->face:Ljava/lang/String;

    return-object v0
.end method

.method public getMid()J
    .locals 2

    .prologue
    .line 190
    iget-wide v0, p0, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3$Upper;->mid:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3$Upper;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setFace(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3$Upper;->face:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public setMid(J)V
    .locals 1

    .prologue
    .line 194
    iput-wide p1, p0, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3$Upper;->mid:J

    .line 195
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3$Upper;->name:Ljava/lang/String;

    .line 203
    return-void
.end method
