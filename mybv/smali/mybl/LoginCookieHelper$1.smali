.class final Lmybl/LoginCookieHelper$1;
.super Ljava/lang/Object;
.source "LoginCookieHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmybl/LoginCookieHelper;->fetchCookiesAfterLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 24
    const-wide/16 v0, 0x1f4

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 26
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 27
    if-nez v0, :cond_17

    .line 28
    const-string v0, "LoginCookieHelper"

    const-string v1, "fetchCookiesAfterLogin - account is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_16
    :goto_16
    return-void

    .line 32
    :cond_17
    invoke-virtual {v0}, Lbl/mg;->h()Lbl/ml;

    move-result-object v1

    .line 33
    if-eqz v1, :cond_69

    iget-object v2, v1, Lbl/ml;->a:Ljava/util/List;

    if-eqz v2, :cond_69

    iget-object v2, v1, Lbl/ml;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_69

    .line 34
    const-string v0, "LoginCookieHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetchCookiesAfterLogin - cookies already exist, count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lbl/ml;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_47} :catch_48

    goto :goto_16

    .line 69
    :catch_48
    move-exception v0

    .line 70
    const-string v1, "LoginCookieHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetchCookiesAfterLogin - exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16

    .line 38
    :cond_69
    :try_start_69
    invoke-virtual {v0}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-virtual {v0}, Lbl/mg;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    .line 41
    if-eqz v1, :cond_79

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_81

    .line 42
    :cond_79
    const-string v0, "LoginCookieHelper"

    const-string v1, "fetchCookiesAfterLogin - accessToken is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 46
    :cond_81
    if-eqz v0, :cond_89

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_91

    .line 47
    :cond_89
    const-string v0, "LoginCookieHelper"

    const-string v1, "fetchCookiesAfterLogin - refreshToken is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 51
    :cond_91
    const-string v2, "LoginCookieHelper"

    const-string v3, "fetchCookiesAfterLogin - calling refreshToken API"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v2, Lcom/bilibili/lib/passport/BiliAuthService$CookieParamsMap;

    invoke-direct {v2}, Lcom/bilibili/lib/passport/BiliAuthService$CookieParamsMap;-><init>()V

    .line 54
    # invokes: Lmybl/LoginCookieHelper;->callRefreshTokenInternal(Ljava/lang/String;Ljava/lang/String;Lcom/bilibili/lib/passport/BiliAuthService$CookieParamsMap;)Lbl/mk;
    invoke-static {v1, v0, v2}, Lmybl/LoginCookieHelper;->access$000(Ljava/lang/String;Ljava/lang/String;Lcom/bilibili/lib/passport/BiliAuthService$CookieParamsMap;)Lbl/mk;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_de

    iget-object v1, v0, Lbl/mk;->b:Lbl/ml;

    if-eqz v1, :cond_de

    iget-object v1, v0, Lbl/mk;->b:Lbl/ml;

    iget-object v1, v1, Lbl/ml;->a:Ljava/util/List;

    if-eqz v1, :cond_de

    .line 57
    const-string v1, "LoginCookieHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetchCookiesAfterLogin - got cookies, count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lbl/mk;->b:Lbl/ml;

    iget-object v3, v3, Lbl/ml;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v1, v0, Lbl/mk;->a:Lbl/vd;

    .line 60
    iget-object v0, v0, Lbl/mk;->b:Lbl/ml;

    .line 62
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lbl/vd;->a()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 63
    # invokes: Lmybl/LoginCookieHelper;->saveTokenAndCookies(Lbl/vd;Lbl/ml;)V
    invoke-static {v1, v0}, Lmybl/LoginCookieHelper;->access$100(Lbl/vd;Lbl/ml;)V

    goto/16 :goto_16

    .line 66
    :cond_de
    const-string v0, "LoginCookieHelper"

    const-string v1, "fetchCookiesAfterLogin - result is null or empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_e5} :catch_48

    goto/16 :goto_16
.end method
