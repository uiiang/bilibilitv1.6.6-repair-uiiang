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
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 26
    const-wide/16 v0, 0x1f4

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 27
    const-string v0, "LoginCookieHelper"

    const-string v1, "fetchCookiesAfterLogin - refreshing cookies after login"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    const-string v1, "fetchCookiesAfterLogin"

    # invokes: Lmybl/LoginCookieHelper;->refreshCookiesInternal(Landroid/content/Context;Ljava/lang/String;)Lbl/mk;
    invoke-static {v0, v1}, Lmybl/LoginCookieHelper;->access$000(Landroid/content/Context;Ljava/lang/String;)Lbl/mk;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_16

    .line 35
    :goto_15
    return-void

    .line 31
    :catch_16
    move-exception v0

    .line 32
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

    .line 33
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15
.end method
