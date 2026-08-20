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

.method public static clearCookies(Lbl/mg;)V
    .locals 4

    .prologue
    .line 130
    if-nez p0, :cond_a

    .line 131
    const-string v0, "CookieUtil"

    const-string v1, "clearCookies - biliAccount is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_9
    return-void

    .line 135
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Lbl/mg;->i()V

    .line 136
    const-string v0, "CookieUtil"

    const-string v1, "clearCookies - cookies cleared successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_15

    goto :goto_9

    .line 137
    :catch_15
    move-exception v0

    .line 138
    const-string v1, "CookieUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearCookies - exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
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

    .line 143
    if-eqz p0, :cond_5

    if-nez p1, :cond_7

    :cond_5
    move-object v0, v1

    .line 151
    :goto_6
    return-object v0

    .line 146
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

    .line 147
    iget-object v3, v0, Lbl/ml$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 148
    iget-object v0, v0, Lbl/ml$a;->b:Ljava/lang/String;

    goto :goto_6

    :cond_22
    move-object v0, v1

    .line 151
    goto :goto_6
.end method

.method public static getBiliJct(Lbl/mg;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    const-string v0, "bili_jct"

    invoke-static {p0, v0}, Lmybl/CookieUtil;->getCookieValue(Lbl/mg;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCookieValue(Lbl/mg;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    if-eqz p0, :cond_4

    if-nez p1, :cond_7

    .line 100
    :cond_4
    const-string v0, ""

    .line 109
    :goto_6
    return-object v0

    .line 103
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lbl/mg;->h()Lbl/ml;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_11

    iget-object v1, v0, Lbl/ml;->a:Ljava/util/List;

    if-nez v1, :cond_14

    .line 105
    :cond_11
    const-string v0, ""

    goto :goto_6

    .line 107
    :cond_14
    iget-object v0, v0, Lbl/ml;->a:Ljava/util/List;

    invoke-static {v0, p1}, Lmybl/CookieUtil;->findCookieValue(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_19} :catch_1b

    move-result-object v0

    goto :goto_6

    .line 108
    :catch_1b
    move-exception v0

    .line 109
    const-string v0, ""

    goto :goto_6
.end method

.method public static getCookieValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 155
    if-eqz p0, :cond_c

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 169
    :cond_c
    :goto_c
    return-object v0

    .line 158
    :cond_d
    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 159
    array-length v4, v3

    move v1, v2

    :goto_15
    if-ge v1, v4, :cond_c

    aget-object v5, v3, v1

    .line 160
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 161
    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 162
    if-lez v6, :cond_3e

    .line 163
    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 164
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 165
    add-int/lit8 v0, v6, 0x1

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 159
    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_15
.end method

.method public static getDedeUserID(Lbl/mg;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const-string v0, "DedeUserID"

    invoke-static {p0, v0}, Lmybl/CookieUtil;->getCookieValue(Lbl/mg;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEssentialCookie(Lbl/mg;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 66
    if-nez p0, :cond_c

    .line 67
    const-string v0, "CookieUtil"

    const-string v1, "getEssentialCookie - biliAccount is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string v0, ""

    .line 94
    :goto_b
    return-object v0

    .line 71
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Lbl/mg;->h()Lbl/ml;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_16

    iget-object v1, v0, Lbl/ml;->a:Ljava/util/List;

    if-nez v1, :cond_20

    .line 74
    :cond_16
    const-string v0, "CookieUtil"

    const-string v1, "getEssentialCookie - cookiesData.a is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v0, ""

    goto :goto_b

    .line 77
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    iget-object v2, v0, Lbl/ml;->a:Ljava/util/List;

    .line 80
    sget-object v3, Lmybl/CookieUtil;->ESSENTIAL_COOKIES:[Ljava/lang/String;

    array-length v4, v3

    const/4 v0, 0x0

    :goto_2b
    if-ge v0, v4, :cond_56

    aget-object v5, v3, v0

    .line 81
    invoke-static {v2, v5}, Lmybl/CookieUtil;->findCookieValue(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 84
    if-eqz v6, :cond_53

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_53

    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_46

    .line 86
    const-string v7, "; "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_46
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :cond_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 91
    :cond_56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_59} :catch_5b

    move-result-object v0

    goto :goto_b

    .line 92
    :catch_5b
    move-exception v0

    .line 93
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

    .line 94
    const-string v0, ""

    goto :goto_b
.end method

.method public static getFullCookie(Lbl/mg;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 43
    if-nez p0, :cond_5

    .line 44
    const-string v0, ""

    .line 61
    :goto_4
    return-object v0

    .line 47
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Lbl/mg;->h()Lbl/ml;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_f

    iget-object v1, v0, Lbl/ml;->a:Ljava/util/List;

    if-nez v1, :cond_12

    .line 49
    :cond_f
    const-string v0, ""

    goto :goto_4

    .line 51
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    iget-object v0, v0, Lbl/ml;->a:Ljava/util/List;

    .line 53
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/ml$a;

    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_34

    .line 55
    const-string v3, "; "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
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

    .line 60
    :catch_46
    move-exception v0

    .line 61
    const-string v0, ""

    goto :goto_4

    .line 59
    :cond_4a
    :try_start_4a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_46

    move-result-object v0

    goto :goto_4
.end method

.method public static getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 21
    invoke-static {p0}, Lmybl/CookieUtil;->getEssentialCookie(Lbl/mg;)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {}, Lmybl/DeviceIdentityManager;->getInstance()Lmybl/DeviceIdentityManager;

    move-result-object v1

    invoke-virtual {v1}, Lmybl/DeviceIdentityManager;->getDeviceCookie()Ljava/lang/String;

    move-result-object v1

    .line 30
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_14
    move-object v0, v1

    .line 39
    :cond_15
    :goto_15
    return-object v0

    .line 32
    :cond_16
    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_15
.end method

.method public static getSESSDATA(Lbl/mg;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    const-string v0, "SESSDATA"

    invoke-static {p0, v0}, Lmybl/CookieUtil;->getCookieValue(Lbl/mg;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSid(Lbl/mg;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    const-string v0, "sid"

    invoke-static {p0, v0}, Lmybl/CookieUtil;->getCookieValue(Lbl/mg;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
