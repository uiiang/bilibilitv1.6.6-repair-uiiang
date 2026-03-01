.class public Lbl/CourseFavoriteFolder;
.super Ljava/lang/Object;
.source "CourseFavoriteFolder.java"

# interfaces
.implements Lbl/FavoriteFolder;


# instance fields
.field private final course:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lbl/CourseFavoriteFolder;->course:Lcom/alibaba/fastjson/JSONObject;

    .line 14
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lbl/CourseFavoriteFolder;->course:Lcom/alibaba/fastjson/JSONObject;

    const-string v1, "ep_count"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCourse()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lbl/CourseFavoriteFolder;->course:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lbl/CourseFavoriteFolder;->course:Lcom/alibaba/fastjson/JSONObject;

    const-string v1, "cover"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lbl/CourseFavoriteFolder;->course:Lcom/alibaba/fastjson/JSONObject;

    const-string v1, "season_id"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 18
    iget-object v0, p0, Lbl/CourseFavoriteFolder;->course:Lcom/alibaba/fastjson/JSONObject;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x3

    return v0
.end method
