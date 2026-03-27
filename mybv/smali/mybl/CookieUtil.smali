.class public Lmybl/CookieUtil;
.super Ljava/lang/Object;
.source "CookieUtil.java"


# static fields
.field private static final ESSENTIAL_COOKIES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "CookieUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SESSDATA"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "bili_jct"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "DedeUserID"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "DedeUserID__ckMd5"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sid"

    aput-object v2, v0, v1

    sput-object v0, Lmybl/CookieUtil;->ESSENTIAL_COOKIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findCookieValue(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbl/ml$a;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 128
    if-eqz p0, :cond_5

    if-nez p1, :cond_7

    :cond_5
    move-object v0, v1

    .line 136
    :goto_6
    return-object v0

    .line 131
    :cond_7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/ml$a;

    .line 132
    iget-object v3, v0, Lbl/ml$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 133
    iget-object v0, v0, Lbl/ml$a;->b:Ljava/lang/String;

    goto :goto_6

    :cond_22
    move-object v0, v1

    .line 136
    goto :goto_6
.end method

.method public static getBiliJct(Lbl/mg;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const-string v0, "bili_jct"

    invoke-static {p0, v0}, Lmybl/CookieUtil;->getCookieValue(Lbl/mg;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCookieValue(Lbl/mg;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    if-eqz p0, :cond_4

    if-nez p1, :cond_7

    .line 98
    :cond_4
    const-string v0, ""

    .line 107
    :goto_6
    return-object v0

    .line 101
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lbl/mg;->h()Lbl/ml;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_11

    iget-object v1, v0, Lbl/ml;->a:Ljava/util/List;

    if-nez v1, :cond_14

    .line 103
    :cond_11
    const-string v0, ""

    goto :goto_6

    .line 105
    :cond_14
    iget-object v0, v0, Lbl/ml;->a:Ljava/util/List;

    invoke-static {v0, p1}, Lmybl/CookieUtil;->findCookieValue(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_19} :catch_1b

    move-result-object v0

    goto :goto_6

    .line 106
    :catch_1b
    move-exception v0

    .line 107
    const-string v0, ""

    goto :goto_6
.end method

.method public static getDedeUserID(Lbl/mg;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    const-string v0, "DedeUserID"

    invoke-static {p0, v0}, Lmybl/CookieUtil;->getCookieValue(Lbl/mg;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEssentialCookie(Lbl/mg;)Ljava/lang/String;
    .locals 10

    .prologue
    .line 65
    if-nez p0, :cond_c

    .line 66
    const-string v0, "CookieUtil"

    const-string v1, "getEssentialCookie - biliAccount is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v0, ""

    .line 92
    :goto_b
    return-object v0

    .line 70
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Lbl/mg;->h()Lbl/ml;

    move-result-object v1

    .line 71
    const-string v2, "CookieUtil"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEssentialCookie - cookiesData: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_3c

    const-string v0, "not null"

    :goto_21
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    if-eqz v1, :cond_32

    iget-object v0, v1, Lbl/ml;->a:Ljava/util/List;

    if-nez v0, :cond_3f

    .line 73
    :cond_32
    const-string v0, "CookieUtil"

    const-string v1, "getEssentialCookie - cookiesData.a is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v0, ""

    goto :goto_b

    .line 71
    :cond_3c
    const-string v0, "null"

    goto :goto_21

    .line 76
    :cond_3f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    iget-object v1, v1, Lbl/ml;->a:Ljava/util/List;

    .line 78
    const-string v0, "CookieUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEssentialCookie - cookies count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    sget-object v3, Lmybl/CookieUtil;->ESSENTIAL_COOKIES:[Ljava/lang/String;

    array-length v4, v3

    const/4 v0, 0x0

    :goto_66
    if-ge v0, v4, :cond_b3

    aget-object v5, v3, v0

    .line 80
    invoke-static {v1, v5}, Lmybl/CookieUtil;->findCookieValue(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 81
    const-string v7, "CookieUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getEssentialCookie - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    if-eqz v6, :cond_b0

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b0

    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_a3

    .line 84
    const-string v7, "; "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :cond_a3
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    :cond_b0
    add-int/lit8 v0, v0, 0x1

    goto :goto_66

    .line 89
    :cond_b3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_b6} :catch_b9

    move-result-object v0

    goto/16 :goto_b

    .line 90
    :catch_b9
    move-exception v0

    .line 91
    const-string v1, "CookieUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEssentialCookie - exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const-string v0, ""

    goto/16 :goto_b
.end method

.method public static getFullCookie(Lbl/mg;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 42
    if-nez p0, :cond_5

    .line 43
    const-string v0, ""

    .line 60
    :goto_4
    return-object v0

    .line 46
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Lbl/mg;->h()Lbl/ml;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_f

    iget-object v1, v0, Lbl/ml;->a:Ljava/util/List;

    if-nez v1, :cond_12

    .line 48
    :cond_f
    const-string v0, ""

    goto :goto_4

    .line 50
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    iget-object v0, v0, Lbl/ml;->a:Ljava/util/List;

    .line 52
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/ml$a;

    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_34

    .line 54
    const-string v3, "; "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    :cond_34
    iget-object v3, v0, Lbl/ml$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lbl/ml$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_45} :catch_46

    goto :goto_1d

    .line 59
    :catch_46
    move-exception v0

    .line 60
    const-string v0, ""

    goto :goto_4

    .line 58
    :cond_4a
    :try_start_4a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_46

    move-result-object v0

    goto :goto_4
.end method

.method public static getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 21
    invoke-static {p0}, Lmybl/CookieUtil;->getEssentialCookie(Lbl/mg;)Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-static {}, Lmybl/DeviceIdentityManager;->getInstance()Lmybl/DeviceIdentityManager;

    move-result-object v0

    invoke-virtual {v0}, Lmybl/DeviceIdentityManager;->getDeviceCookie()Ljava/lang/String;

    move-result-object v2

    .line 24
    const-string v3, "CookieUtil"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFullCookieWithDevice - biliAccount: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p0, :cond_7a

    const-string v0, "not null"

    :goto_1d
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const-string v0, "CookieUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFullCookieWithDevice - authCookie: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    const-string v0, "CookieUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFullCookieWithDevice - deviceCookie: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    if-eqz v1, :cond_60

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7d

    :cond_60
    move-object v0, v2

    .line 37
    :goto_61
    const-string v1, "CookieUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFullCookieWithDevice - result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-object v0

    .line 24
    :cond_7a
    const-string v0, "null"

    goto :goto_1d

    .line 31
    :cond_7d
    if-eqz v2, :cond_85

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_87

    :cond_85
    move-object v0, v1

    .line 32
    goto :goto_61

    .line 34
    :cond_87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_61
.end method

.method public static getSESSDATA(Lbl/mg;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const-string v0, "SESSDATA"

    invoke-static {p0, v0}, Lmybl/CookieUtil;->getCookieValue(Lbl/mg;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSid(Lbl/mg;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    const-string v0, "sid"

    invoke-static {p0, v0}, Lmybl/CookieUtil;->getCookieValue(Lbl/mg;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
