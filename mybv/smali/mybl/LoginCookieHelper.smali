.class public Lmybl/LoginCookieHelper;
.super Ljava/lang/Object;
.source "LoginCookieHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LoginCookieHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;Lcom/bilibili/lib/passport/BiliAuthService$CookieParamsMap;)Lbl/mk;
    .locals 1

    .prologue
    .line 15
    invoke-static {p0, p1, p2}, Lmybl/LoginCookieHelper;->callRefreshTokenInternal(Ljava/lang/String;Ljava/lang/String;Lcom/bilibili/lib/passport/BiliAuthService$CookieParamsMap;)Lbl/mk;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lbl/vd;Lbl/ml;)V
    .locals 0

    .prologue
    .line 15
    invoke-static {p0, p1}, Lmybl/LoginCookieHelper;->saveTokenAndCookies(Lbl/vd;Lbl/ml;)V

    return-void
.end method

.method private static callRefreshTokenInternal(Ljava/lang/String;Ljava/lang/String;Lcom/bilibili/lib/passport/BiliAuthService$CookieParamsMap;)Lbl/mk;
    .locals 4

    .prologue
    .line 79
    :try_start_0
    const-class v0, Lcom/bilibili/lib/passport/BiliAuthService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/lib/passport/BiliAuthService;

    .line 80
    invoke-interface {v0, p0, p1, p2}, Lcom/bilibili/lib/passport/BiliAuthService;->refreshToken(Ljava/lang/String;Ljava/lang/String;Lcom/bilibili/lib/passport/BiliAuthService$CookieParamsMap;)Lbl/vp;

    move-result-object v0

    .line 81
    invoke-static {v0}, Lmybl/LoginCookieHelper;->parseResponse(Lbl/vp;)Lbl/mk;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v0

    .line 84
    :goto_10
    return-object v0

    .line 82
    :catch_11
    move-exception v0

    .line 83
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

    .line 84
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static fetchCookiesAfterLogin()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmybl/LoginCookieHelper$1;

    invoke-direct {v1}, Lmybl/LoginCookieHelper$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 74
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 75
    return-void
.end method

.method private static parseResponse(Lbl/vp;)Lbl/mk;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 90
    :try_start_1
    invoke-virtual {p0}, Lbl/vp;->d()Lretrofit2/Response;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    .line 92
    instance-of v2, v0, Lcom/bilibili/okretro/GeneralResponse;

    if-eqz v2, :cond_1a

    .line 93
    check-cast v0, Lcom/bilibili/okretro/GeneralResponse;

    .line 94
    iget-object v2, v0, Lcom/bilibili/okretro/GeneralResponse;->data:Ljava/lang/Object;

    instance-of v2, v2, Lbl/mk;

    if-eqz v2, :cond_1a

    .line 95
    iget-object v0, v0, Lcom/bilibili/okretro/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v0, Lbl/mk;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1c

    .line 101
    :goto_19
    return-object v0

    :cond_1a
    move-object v0, v1

    .line 98
    goto :goto_19

    .line 99
    :catch_1c
    move-exception v0

    .line 100
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

    .line 101
    goto :goto_19
.end method

.method private static saveTokenAndCookies(Lbl/vd;Lbl/ml;)V
    .locals 6

    .prologue
    .line 107
    :try_start_0
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    .line 108
    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 109
    if-nez v0, :cond_12

    .line 110
    const-string v0, "LoginCookieHelper"

    const-string v1, "saveTokenAndCookies - account is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_11
    :goto_11
    return-void

    .line 114
    :cond_12
    const-class v1, Lbl/mg;

    const-string v2, "d"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 115
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 116
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_11

    .line 119
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "a"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 120
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 121
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_11

    .line 124
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

    .line 125
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 126
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
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

    .line 129
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 130
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v0, "LoginCookieHelper"

    const-string v1, "saveTokenAndCookies - saved successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7d} :catch_7e

    goto :goto_11

    .line 135
    :catch_7e
    move-exception v0

    .line 136
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

    .line 137
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_11
.end method
