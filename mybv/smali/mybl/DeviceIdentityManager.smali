.class public Lmybl/DeviceIdentityManager;
.super Ljava/lang/Object;
.source "DeviceIdentityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmybl/DeviceIdentityManager$InitCallback;
    }
.end annotation


# static fields
.field private static final BILI_TICKET_DURATION:J = 0xf731400L

.field private static final KEY_BILI_TICKET:Ljava/lang/String; = "bili_ticket"

.field private static final KEY_BILI_TICKET_EXPIRE:Ljava/lang/String; = "bili_ticket_expire"

.field private static final KEY_BUVID3:Ljava/lang/String; = "buvid3"

.field private static final KEY_BUVID4:Ljava/lang/String; = "buvid4"

.field private static final KEY_B_NUT:Ljava/lang/String; = "b_nut"

.field private static final KEY_UUID:Ljava/lang/String; = "uuid"

.field private static final PREF_NAME:Ljava/lang/String; = "device_identity"

.field private static final TAG:Ljava/lang/String; = "DeviceIdentity"

.field private static instance:Lmybl/DeviceIdentityManager;


# instance fields
.field private bNut:Ljava/lang/String;

.field private biliTicket:Ljava/lang/String;

.field private biliTicketExpire:J

.field private buvid3:Ljava/lang/String;

.field private buvid4:Ljava/lang/String;

.field private final mainHandler:Landroid/os/Handler;

.field private prefs:Landroid/content/SharedPreferences;

.field private uuid:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmybl/DeviceIdentityManager;->mainHandler:Landroid/os/Handler;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lmybl/DeviceIdentityManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Lmybl/DeviceIdentityManager;->refreshFromNetwork()V

    return-void
.end method

.method static synthetic access$100(Lmybl/DeviceIdentityManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lmybl/DeviceIdentityManager;->buvid3:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lmybl/DeviceIdentityManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lmybl/DeviceIdentityManager;->buvid4:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lmybl/DeviceIdentityManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lmybl/DeviceIdentityManager;->biliTicket:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lmybl/DeviceIdentityManager;)J
    .locals 2

    .prologue
    .line 18
    iget-wide v0, p0, Lmybl/DeviceIdentityManager;->biliTicketExpire:J

    return-wide v0
.end method

.method static synthetic access$500(Lmybl/DeviceIdentityManager;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lmybl/DeviceIdentityManager;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lmybl/DeviceIdentityManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Lmybl/DeviceIdentityManager;->fetchBiliTicket()V

    return-void
.end method

.method private bytesToHex([B)Ljava/lang/String;
    .locals 6

    .prologue
    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    array-length v2, p1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v2, :cond_23

    aget-byte v3, p1, v0

    .line 239
    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 240
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1d

    .line 241
    const/16 v4, 0x30

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 243
    :cond_1d
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 245
    :cond_23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private fetchBiliTicket()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x3e8

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v6

    .line 184
    const-string v2, "XgwSnGZ1p"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ts"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lmybl/DeviceIdentityManager;->hmacSha256(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://api.bilibili.com/bapis/bilibili.api.ticket.v1.Ticket/GenWebTicket?key_id=ec02&hexsign="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&context[ts]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&csrf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-direct {p0, v0}, Lmybl/DeviceIdentityManager;->fetchUrlPost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 195
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    .line 196
    if-eqz v1, :cond_6c

    .line 197
    const-string v0, "DeviceIdentity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to fetch bili_ticket, code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_6b
    :goto_6b
    return-void

    .line 201
    :cond_6c
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 202
    if-eqz v0, :cond_6b

    .line 203
    const-string v1, "ticket"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmybl/DeviceIdentityManager;->biliTicket:Ljava/lang/String;

    .line 204
    const-string v1, "created_at"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    .line 205
    const-string v1, "ttl"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v0

    .line 206
    add-long/2addr v0, v2

    mul-long/2addr v0, v6

    iput-wide v0, p0, Lmybl/DeviceIdentityManager;->biliTicketExpire:J

    .line 208
    const-string v0, "bili_ticket"

    iget-object v1, p0, Lmybl/DeviceIdentityManager;->biliTicket:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmybl/DeviceIdentityManager;->saveToPrefs(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v0, "bili_ticket_expire"

    iget-wide v2, p0, Lmybl/DeviceIdentityManager;->biliTicketExpire:J

    invoke-direct {p0, v0, v2, v3}, Lmybl/DeviceIdentityManager;->saveToPrefs(Ljava/lang/String;J)V

    .line 211
    const-string v0, "DeviceIdentity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updated bili_ticket, expire at: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lmybl/DeviceIdentityManager;->biliTicketExpire:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b
.end method

.method private fetchBuvid()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 156
    const-string v0, "https://api.bilibili.com/x/frontend/finger/spi"

    .line 157
    invoke-direct {p0, v0}, Lmybl/DeviceIdentityManager;->fetchUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 160
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    .line 161
    if-eqz v1, :cond_2b

    .line 162
    const-string v0, "DeviceIdentity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to fetch buvid, code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_2a
    :goto_2a
    return-void

    .line 166
    :cond_2b
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_2a

    .line 168
    const-string v1, "b_3"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmybl/DeviceIdentityManager;->buvid3:Ljava/lang/String;

    .line 169
    const-string v1, "b_4"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmybl/DeviceIdentityManager;->buvid4:Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lmybl/DeviceIdentityManager;->buvid3:Ljava/lang/String;

    if-eqz v0, :cond_4e

    .line 172
    const-string v0, "buvid3"

    iget-object v1, p0, Lmybl/DeviceIdentityManager;->buvid3:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmybl/DeviceIdentityManager;->saveToPrefs(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_4e
    iget-object v0, p0, Lmybl/DeviceIdentityManager;->buvid4:Ljava/lang/String;

    if-eqz v0, :cond_59

    .line 175
    const-string v0, "buvid4"

    iget-object v1, p0, Lmybl/DeviceIdentityManager;->buvid4:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmybl/DeviceIdentityManager;->saveToPrefs(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_59
    const-string v0, "DeviceIdentity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updated buvid3="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmybl/DeviceIdentityManager;->buvid3:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", buvid4="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmybl/DeviceIdentityManager;->buvid4:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method

.method private fetchUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v2, 0x1388

    .line 249
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 251
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 253
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 254
    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 (Linux; Android 9; Redmi 6 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.147 Mobile Safari/537.36"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v1, "Referer"

    const-string v2, "https://www.bilibili.com/"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    :goto_3b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_45

    .line 261
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3b

    .line 263
    :cond_45
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 264
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private fetchUrlPost(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v2, 0x1388

    .line 268
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 270
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 272
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 273
    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 (Linux; Android 9; Redmi 6 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.147 Mobile Safari/537.36"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v1, "Referer"

    const-string v2, "https://www.bilibili.com/"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 276
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 278
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    :goto_46
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_50

    .line 282
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_46

    .line 284
    :cond_50
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 285
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateUuid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 146
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0841689infoc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lmybl/DeviceIdentityManager;
    .locals 2

    .prologue
    .line 48
    const-class v1, Lmybl/DeviceIdentityManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lmybl/DeviceIdentityManager;->instance:Lmybl/DeviceIdentityManager;

    if-nez v0, :cond_e

    .line 49
    new-instance v0, Lmybl/DeviceIdentityManager;

    invoke-direct {v0}, Lmybl/DeviceIdentityManager;-><init>()V

    sput-object v0, Lmybl/DeviceIdentityManager;->instance:Lmybl/DeviceIdentityManager;

    .line 51
    :cond_e
    sget-object v0, Lmybl/DeviceIdentityManager;->instance:Lmybl/DeviceIdentityManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hmacSha256(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 229
    const-string v0, "HmacSHA256"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 230
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "HmacSHA256"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 231
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 232
    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    .line 233
    invoke-direct {p0, v0}, Lmybl/DeviceIdentityManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadFromPrefs()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 129
    iget-object v0, p0, Lmybl/DeviceIdentityManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "buvid3"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmybl/DeviceIdentityManager;->buvid3:Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lmybl/DeviceIdentityManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "buvid4"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmybl/DeviceIdentityManager;->buvid4:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lmybl/DeviceIdentityManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "b_nut"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmybl/DeviceIdentityManager;->bNut:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lmybl/DeviceIdentityManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "uuid"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmybl/DeviceIdentityManager;->uuid:Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lmybl/DeviceIdentityManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "bili_ticket"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmybl/DeviceIdentityManager;->biliTicket:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lmybl/DeviceIdentityManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "bili_ticket_expire"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lmybl/DeviceIdentityManager;->biliTicketExpire:J

    .line 135
    return-void
.end method

.method private refreshFromNetwork()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 151
    invoke-direct {p0}, Lmybl/DeviceIdentityManager;->fetchBuvid()V

    .line 152
    invoke-direct {p0}, Lmybl/DeviceIdentityManager;->fetchBiliTicket()V

    .line 153
    return-void
.end method

.method private saveToPrefs(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lmybl/DeviceIdentityManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 143
    return-void
.end method

.method private saveToPrefs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lmybl/DeviceIdentityManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 139
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 346
    iget-object v0, p0, Lmybl/DeviceIdentityManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 347
    iput-object v1, p0, Lmybl/DeviceIdentityManager;->buvid3:Ljava/lang/String;

    .line 348
    iput-object v1, p0, Lmybl/DeviceIdentityManager;->buvid4:Ljava/lang/String;

    .line 349
    iput-object v1, p0, Lmybl/DeviceIdentityManager;->bNut:Ljava/lang/String;

    .line 350
    iput-object v1, p0, Lmybl/DeviceIdentityManager;->uuid:Ljava/lang/String;

    .line 351
    iput-object v1, p0, Lmybl/DeviceIdentityManager;->biliTicket:Ljava/lang/String;

    .line 352
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmybl/DeviceIdentityManager;->biliTicketExpire:J

    .line 353
    return-void
.end method

.method public getBNut()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lmybl/DeviceIdentityManager;->bNut:Ljava/lang/String;

    return-object v0
.end method

.method public getBiliTicket()Ljava/lang/String;
    .locals 4

    .prologue
    .line 335
    iget-object v0, p0, Lmybl/DeviceIdentityManager;->biliTicket:Ljava/lang/String;

    if-eqz v0, :cond_11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lmybl/DeviceIdentityManager;->biliTicketExpire:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_11

    .line 336
    iget-object v0, p0, Lmybl/DeviceIdentityManager;->biliTicket:Ljava/lang/String;

    .line 338
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getBuvid3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lmybl/DeviceIdentityManager;->buvid3:Ljava/lang/String;

    return-object v0
.end method

.method public getBuvid4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lmybl/DeviceIdentityManager;->buvid4:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceCookie()Ljava/lang/String;
    .locals 8

    .prologue
    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    iget-object v1, p0, Lmybl/DeviceIdentityManager;->buvid3:Ljava/lang/String;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lmybl/DeviceIdentityManager;->buvid3:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 292
    const-string v1, "buvid3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmybl/DeviceIdentityManager;->buvid3:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :cond_1c
    iget-object v1, p0, Lmybl/DeviceIdentityManager;->buvid4:Ljava/lang/String;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lmybl/DeviceIdentityManager;->buvid4:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 295
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_33

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    :cond_33
    const-string v1, "buvid4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmybl/DeviceIdentityManager;->buvid4:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    :cond_3e
    iget-object v1, p0, Lmybl/DeviceIdentityManager;->bNut:Ljava/lang/String;

    if-eqz v1, :cond_60

    iget-object v1, p0, Lmybl/DeviceIdentityManager;->bNut:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_60

    .line 299
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_55

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    :cond_55
    const-string v1, "b_nut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmybl/DeviceIdentityManager;->bNut:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    :cond_60
    iget-object v1, p0, Lmybl/DeviceIdentityManager;->uuid:Ljava/lang/String;

    if-eqz v1, :cond_82

    iget-object v1, p0, Lmybl/DeviceIdentityManager;->uuid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_82

    .line 303
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_77

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    :cond_77
    const-string v1, "_uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmybl/DeviceIdentityManager;->uuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    :cond_82
    iget-object v1, p0, Lmybl/DeviceIdentityManager;->biliTicket:Ljava/lang/String;

    if-eqz v1, :cond_ae

    iget-object v1, p0, Lmybl/DeviceIdentityManager;->biliTicket:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_ae

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lmybl/DeviceIdentityManager;->biliTicketExpire:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_ae

    .line 307
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_a3

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    :cond_a3
    const-string v1, "bili_ticket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmybl/DeviceIdentityManager;->biliTicket:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    :cond_ae
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 312
    const-string v2, "DeviceIdentity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceCookie: buvid3="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lmybl/DeviceIdentityManager;->buvid3:Ljava/lang/String;

    if-eqz v0, :cond_fb

    const-string v0, "\u6709"

    :goto_c5
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", buvid4="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lmybl/DeviceIdentityManager;->buvid4:Ljava/lang/String;

    if-eqz v0, :cond_fe

    const-string v0, "\u6709"

    :goto_d5
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", biliTicket="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lmybl/DeviceIdentityManager;->biliTicket:Ljava/lang/String;

    if-eqz v0, :cond_101

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lmybl/DeviceIdentityManager;->biliTicketExpire:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_101

    const-string v0, "\u6709\u6548"

    :goto_ef
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-object v1

    .line 312
    :cond_fb
    const-string v0, "\u65e0"

    goto :goto_c5

    :cond_fe
    const-string v0, "\u65e0"

    goto :goto_d5

    .line 314
    :cond_101
    const-string v0, "\u65e0\u6548"

    goto :goto_ef
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lmybl/DeviceIdentityManager;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 57
    const-string v0, "device_identity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lmybl/DeviceIdentityManager;->prefs:Landroid/content/SharedPreferences;

    .line 58
    invoke-direct {p0}, Lmybl/DeviceIdentityManager;->loadFromPrefs()V

    .line 60
    iget-object v0, p0, Lmybl/DeviceIdentityManager;->uuid:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lmybl/DeviceIdentityManager;->uuid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 61
    :cond_19
    invoke-direct {p0}, Lmybl/DeviceIdentityManager;->generateUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmybl/DeviceIdentityManager;->uuid:Ljava/lang/String;

    .line 62
    const-string v0, "uuid"

    iget-object v3, p0, Lmybl/DeviceIdentityManager;->uuid:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lmybl/DeviceIdentityManager;->saveToPrefs(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_26
    iget-object v0, p0, Lmybl/DeviceIdentityManager;->bNut:Ljava/lang/String;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmybl/DeviceIdentityManager;->bNut:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 66
    :cond_32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmybl/DeviceIdentityManager;->bNut:Ljava/lang/String;

    .line 67
    const-string v0, "b_nut"

    iget-object v3, p0, Lmybl/DeviceIdentityManager;->bNut:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lmybl/DeviceIdentityManager;->saveToPrefs(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_46
    iget-object v0, p0, Lmybl/DeviceIdentityManager;->buvid3:Ljava/lang/String;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lmybl/DeviceIdentityManager;->buvid3:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5e

    iget-object v0, p0, Lmybl/DeviceIdentityManager;->buvid4:Ljava/lang/String;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lmybl/DeviceIdentityManager;->buvid4:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8c

    :cond_5e
    move v0, v2

    .line 71
    :goto_5f
    iget-object v3, p0, Lmybl/DeviceIdentityManager;->biliTicket:Ljava/lang/String;

    if-eqz v3, :cond_79

    iget-object v3, p0, Lmybl/DeviceIdentityManager;->biliTicket:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_79

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lmybl/DeviceIdentityManager;->biliTicketExpire:J

    const-wide/32 v8, 0x36ee80

    sub-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-lez v3, :cond_7a

    :cond_79
    move v1, v2

    .line 74
    :cond_7a
    if-nez v0, :cond_7e

    if-eqz v1, :cond_8b

    .line 75
    :cond_7e
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmybl/DeviceIdentityManager$1;

    invoke-direct {v1, p0}, Lmybl/DeviceIdentityManager$1;-><init>(Lmybl/DeviceIdentityManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 85
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 87
    :cond_8b
    return-void

    :cond_8c
    move v0, v1

    .line 70
    goto :goto_5f
.end method

.method public initAsync(Landroid/content/Context;Lmybl/DeviceIdentityManager$InitCallback;)V
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmybl/DeviceIdentityManager$2;

    invoke-direct {v1, p0, p1, p2}, Lmybl/DeviceIdentityManager$2;-><init>(Lmybl/DeviceIdentityManager;Landroid/content/Context;Lmybl/DeviceIdentityManager$InitCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 125
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 126
    return-void
.end method

.method public isBiliTicketValid()Z
    .locals 4

    .prologue
    .line 342
    iget-object v0, p0, Lmybl/DeviceIdentityManager;->biliTicket:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lmybl/DeviceIdentityManager;->biliTicket:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lmybl/DeviceIdentityManager;->biliTicketExpire:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public refreshBiliTicketAsync()V
    .locals 2

    .prologue
    .line 216
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmybl/DeviceIdentityManager$3;

    invoke-direct {v1, p0}, Lmybl/DeviceIdentityManager$3;-><init>(Lmybl/DeviceIdentityManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 225
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 226
    return-void
.end method
