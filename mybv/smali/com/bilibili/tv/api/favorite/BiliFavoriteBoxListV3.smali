.class public Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxListV3;
.super Ljava/lang/Object;
.source "BiliFavoriteBoxListV3.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field private count:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "count"
    .end annotation
.end field

.field private list:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxV3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxListV3;->count:I

    return v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxV3;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxListV3;->list:Ljava/util/List;

    return-object v0
.end method

.method public setCount(I)V
    .locals 0

    .prologue
    .line 21
    iput p1, p0, Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxListV3;->count:I

    .line 22
    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxV3;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    iput-object p1, p0, Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxListV3;->list:Ljava/util/List;

    .line 30
    return-void
.end method
