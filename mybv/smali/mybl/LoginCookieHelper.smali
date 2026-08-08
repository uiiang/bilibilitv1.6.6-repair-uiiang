.class public Lmybl/LoginCookieHelper;
.super Ljava/lang/Object;
.source "LoginCookieHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LoginCookieHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;)Lbl/mk;
    .locals 1

    .prologue
    .line 17
    invoke-static {p0, p1}, Lmybl/LoginCookieHelper;->refreshCookiesInternal(Landroid/content/Context;Ljava/lang/String;)Lbl/mk;

    move-result-object v0

    return-object v0
.end method

.method private static callRefreshTokenInternal(Ljava/lang/String;Ljava/lang/String;Lcom/bilibili/lib/passport/BiliAuthService$CookieParamsMap;)Lbl/mk;
    .locals 4

    .prologue
    .line 102
    :try_start_0
    const-class v0, Lcom/bilibili/lib/passport/BiliAuthService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/lib/passport/BiliAuthService;

    .line 103
    invoke-interface {v0, p0, p1, p2}, Lcom/bilibili/lib/passport/BiliAuthService;->refreshToken(Ljava/lang/String;Ljava/lang/String;Lcom/bilibili/lib/passport/BiliAuthService$CookieParamsMap;)Lbl/vp;

    move-result-object v0

    .line 104
    invoke-static {v0}, Lmybl/LoginCookieHelper;->parseResponse(Lbl/vp;)Lbl/mk;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v0

    .line 107
    :goto_10
    return-object v0

    .line 105
    :catch_11
    move-exception v0

    .line 106
    const-string v1, "LoginCookieHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callRefreshTokenInternal - exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static fetchCookiesAfterLogin()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmybl/LoginCookieHelper$1;

    invoke-direct {v1}, Lmybl/LoginCookieHelper$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 36
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 37
    return-void
.end method

.method private static parseResponse(Lbl/vp;)Lbl/mk;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 113
    :try_start_1
    invoke-virtual {p0}, Lbl/vp;->d()Lretrofit2/Response;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    .line 115
    instance-of v2, v0, Lcom/bilibili/okretro/GeneralResponse;

    if-eqz v2, :cond_1a

    .line 116
    check-cast v0, Lcom/bilibili/okretro/GeneralResponse;

    .line 117
    iget-object v2, v0, Lcom/bilibili/okretro/GeneralResponse;->data:Ljava/lang/Object;

    instance-of v2, v2, Lbl/mk;

    if-eqz v2, :cond_1a

    .line 118
    iget-object v0, v0, Lcom/bilibili/okretro/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v0, Lbl/mk;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1c

    .line 124
    :goto_19
    return-object v0

    :cond_1a
    move-object v0, v1

    .line 121
    goto :goto_19

    .line 122
    :catch_1c
    move-exception v0

    .line 123
    const-string v2, "LoginCookieHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseResponse - exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 124
    goto :goto_19
.end method

.method public static refreshCookiesAndReadAccountStorageSync(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 46
    :try_start_1
    const-string v1, "refreshSync"

    invoke-static {p0, v1}, Lmybl/LoginCookieHelper;->refreshCookiesInternal(Landroid/content/Context;Ljava/lang/String;)Lbl/mk;

    move-result-object v1

    .line 47
    if-nez v1, :cond_a

    .line 59
    :goto_9
    return-object v0

    .line 50
    :cond_a
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "bili.account.storage"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 52
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 54
    const-string v3, "LoginCookieHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshSync - re-read account storage len: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v1, :cond_43

    const/4 v2, -0x1

    :goto_36
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 55
    goto :goto_9

    .line 54
    :cond_43
    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_46} :catch_48

    move-result v2

    goto :goto_36

    .line 56
    :catch_48
    move-exception v1

    .line 57
    const-string v2, "LoginCookieHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshSync - exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method private static refreshCookiesInternal(Landroid/content/Context;Ljava/lang/String;)Lbl/mk;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 66
    :try_start_1
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v1

    .line 67
    if-nez v1, :cond_20

    .line 68
    const-string v1, "LoginCookieHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - account is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_1f
    return-object v0

    .line 71
    :cond_20
    invoke-virtual {v1}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-virtual {v1}, Lbl/mg;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    .line 73
    if-eqz v2, :cond_38

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_38

    if-eqz v1, :cond_38

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_76

    .line 74
    :cond_38
    const-string v1, "LoginCookieHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - accessToken or refreshToken is empty"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_50} :catch_51

    goto :goto_1f

    .line 93
    :catch_51
    move-exception v1

    .line 94
    const-string v2, "LoginCookieHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f

    .line 77
    :cond_76
    :try_start_76
    const-string v3, "LoginCookieHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - calling refreshToken API"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v3, Lcom/bilibili/lib/passport/BiliAuthService$CookieParamsMap;

    invoke-direct {v3}, Lcom/bilibili/lib/passport/BiliAuthService$CookieParamsMap;-><init>()V

    .line 79
    invoke-static {v2, v1, v3}, Lmybl/LoginCookieHelper;->callRefreshTokenInternal(Ljava/lang/String;Ljava/lang/String;Lcom/bilibili/lib/passport/BiliAuthService$CookieParamsMap;)Lbl/mk;

    move-result-object v1

    .line 80
    if-eqz v1, :cond_ad

    iget-object v2, v1, Lbl/mk;->b:Lbl/ml;

    if-eqz v2, :cond_ad

    iget-object v2, v1, Lbl/mk;->b:Lbl/ml;

    iget-object v2, v2, Lbl/ml;->a:Ljava/util/List;

    if-eqz v2, :cond_ad

    iget-object v2, v1, Lbl/mk;->b:Lbl/ml;

    iget-object v2, v2, Lbl/ml;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c7

    .line 81
    :cond_ad
    const-string v1, "LoginCookieHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - result is null or cookies empty"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 84
    :cond_c7
    iget-object v2, v1, Lbl/mk;->a:Lbl/vd;

    .line 85
    iget-object v3, v1, Lbl/mk;->b:Lbl/ml;

    .line 86
    if-eqz v2, :cond_d3

    invoke-virtual {v2}, Lbl/vd;->a()Z

    move-result v4

    if-nez v4, :cond_ed

    .line 87
    :cond_d3
    const-string v1, "LoginCookieHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - tokenInfo is invalid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 90
    :cond_ed
    invoke-static {v2, v3}, Lmybl/LoginCookieHelper;->saveTokenAndCookies(Lbl/vd;Lbl/ml;)V

    .line 91
    const-string v2, "LoginCookieHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - saved token and cookies"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_108
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_108} :catch_51

    move-object v0, v1

    .line 92
    goto/16 :goto_1f
.end method

.method private static saveTokenAndCookies(Lbl/vd;Lbl/ml;)V
    .locals 6

    .prologue
    .line 130
    :try_start_0
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    .line 131
    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 132
    if-nez v0, :cond_12

    .line 133
    const-string v0, "LoginCookieHelper"

    const-string v1, "saveTokenAndCookies - account is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_11
    :goto_11
    return-void

    .line 137
    :cond_12
    const-class v1, Lbl/mg;

    const-string v2, "d"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 138
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 139
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_11

    .line 142
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "a"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 143
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 144
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_11

    .line 147
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "a"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lbl/vd;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 148
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 149
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "a"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lbl/ml;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 152
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 153
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v0, "LoginCookieHelper"

    const-string v1, "saveTokenAndCookies - saved successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7d} :catch_7e

    goto :goto_11

    .line 158
    :catch_7e
    move-exception v0

    .line 159
    const-string v1, "LoginCookieHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveTokenAndCookies - exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_11
.end method
