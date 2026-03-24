.class public final Lmybl/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static final MAX_LOG_LENGTH:I = 0x7d0


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lmybl/LogUtil;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lmybl/LogUtil;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lmybl/LogUtil;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static json(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 30
    if-nez p1, :cond_8

    .line 31
    const-string v0, "json: null"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :goto_7
    return-void

    .line 35
    :cond_8
    instance-of v0, p1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_16

    .line 36
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    .line 42
    :goto_12
    invoke-static {p0, v0}, Lmybl/LogUtil;->printFullLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 37
    :cond_16
    instance-of v0, p1, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_21

    .line 38
    check-cast p1, Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 40
    :cond_21
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public static json(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 46
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 47
    :cond_8
    const-string v0, "json: null or empty"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :goto_d
    return-void

    .line 50
    :cond_e
    invoke-static {p0, p1}, Lmybl/LogUtil;->printFullLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method private static printFullLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 54
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 55
    :cond_8
    const-string v0, "message is null or empty"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_d
    return-void

    .line 58
    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 59
    add-int/lit16 v0, v1, 0x7d0

    add-int/lit8 v0, v0, -0x1

    div-int/lit16 v0, v0, 0x7d0

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "========== Start ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " chars, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " chunks) =========="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v0, 0x0

    :goto_3f
    if-ge v0, v1, :cond_51

    .line 62
    add-int/lit16 v2, v0, 0x7d0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 63
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    add-int/lit16 v0, v0, 0x7d0

    goto :goto_3f

    .line 66
    :cond_51
    const-string v0, "========== End =========="

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method private static printLog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 70
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 71
    :cond_8
    const-string v0, "message is null or empty"

    invoke-static {p0, p1, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_d
    return-void

    .line 74
    :cond_e
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 75
    const/4 v0, 0x0

    :goto_13
    if-ge v0, v1, :cond_d

    .line 76
    add-int/lit16 v2, v0, 0x7d0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 77
    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-static {p0, p1, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 75
    add-int/lit16 v0, v0, 0x7d0

    goto :goto_13
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lmybl/LogUtil;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method
