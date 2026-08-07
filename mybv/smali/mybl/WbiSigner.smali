.class public Lmybl/WbiSigner;
.super Ljava/lang/Object;
.source "WbiSigner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmybl/WbiSigner$WbiKeyCallback;
    }
.end annotation


# static fields
.field private static final CACHE_DURATION:J = 0x36ee80L

.field private static final MIXIN_KEY_ENC_TAB:[I

.field private static final TAG:Ljava/lang/String; = "WbiSigner"

.field private static instance:Lmybl/WbiSigner;


# instance fields
.field private imgKey:Ljava/lang/String;

.field private lastUpdateTime:J

.field private final mainHandler:Landroid/os/Handler;

.field private mixinKey:Ljava/lang/String;

.field private subKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lmybl/WbiSigner;->MIXIN_KEY_ENC_TAB:[I

    return-void

    :array_a
    .array-data 4
        0x2e
        0x2f
        0x12
        0x2
        0x35
        0x8
        0x17
        0x20
        0xf
        0x32
        0xa
        0x1f
        0x3a
        0x3
        0x2d
        0x23
        0x1b
        0x2b
        0x5
        0x31
        0x21
        0x9
        0x2a
        0x13
        0x1d
        0x1c
        0xe
        0x27
        0xc
        0x26
        0x29
        0xd
        0x25
        0x30
        0x7
        0x10
        0x18
        0x37
        0x28
        0x3d
        0x1a
        0x11
        0x0
        0x1
        0x3c
        0x33
        0x1e
        0x4
        0x16
        0x19
        0x36
        0x15
        0x38
        0x3b
        0x6
        0x3f
        0x39
        0x3e
        0xb
        0x24
        0x14
        0x22
        0x2c
        0x34
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmybl/WbiSigner;->lastUpdateTime:J

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmybl/WbiSigner;->mainHandler:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lmybl/WbiSigner;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lmybl/WbiSigner;->mixinKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lmybl/WbiSigner;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lmybl/WbiSigner;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 208
    if-nez p1, :cond_5

    const-string p1, ""

    .line 219
    :goto_4
    return-object p1

    .line 210
    :cond_5
    :try_start_5
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    const-string v2, "%20"

    .line 211
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    const-string v2, "%2A"

    .line 212
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%21"

    const-string v2, "!"

    .line 213
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%27"

    const-string v2, "\'"

    .line 214
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%28"

    const-string v2, "("

    .line 215
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%29"

    const-string v2, ")"

    .line 216
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%7E"

    const-string v2, "~"

    .line 217
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_42} :catch_44

    move-result-object p1

    goto :goto_4

    .line 218
    :catch_44
    move-exception v0

    goto :goto_4
.end method

.method private extractFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    if-nez p1, :cond_5

    const-string v0, ""

    .line 128
    :goto_4
    return-object v0

    .line 123
    :cond_5
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 124
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 125
    if-ltz v0, :cond_1c

    if-le v1, v0, :cond_1c

    .line 126
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 128
    :cond_1c
    const-string v0, ""

    goto :goto_4
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

    .line 243
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 245
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 247
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 248
    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 (Linux; Android 9; Redmi 6 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.147 Mobile Safari/537.36"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v1, "Referer"

    const-string v2, "https://www.bilibili.com/"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    :goto_3b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_45

    .line 255
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3b

    .line 257
    :cond_45
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 258
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private filterSpecialChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 203
    if-nez p1, :cond_5

    const-string v0, ""

    .line 204
    :goto_4
    return-object v0

    :cond_5
    const-string v0, "[!\'()*]"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static declared-synchronized getInstance()Lmybl/WbiSigner;
    .locals 2

    .prologue
    .line 39
    const-class v1, Lmybl/WbiSigner;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lmybl/WbiSigner;->instance:Lmybl/WbiSigner;

    if-nez v0, :cond_e

    .line 40
    new-instance v0, Lmybl/WbiSigner;

    invoke-direct {v0}, Lmybl/WbiSigner;-><init>()V

    sput-object v0, Lmybl/WbiSigner;->instance:Lmybl/WbiSigner;

    .line 42
    :cond_e
    sget-object v0, Lmybl/WbiSigner;->instance:Lmybl/WbiSigner;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 39
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getMixinKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    const/4 v0, 0x0

    :goto_6
    const/16 v2, 0x20

    if-ge v0, v2, :cond_18

    .line 134
    sget-object v2, Lmybl/WbiSigner;->MIXIN_KEY_ENC_TAB:[I

    aget v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 136
    :cond_18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 225
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 226
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    array-length v3, v1

    const/4 v0, 0x0

    :goto_17
    if-ge v0, v3, :cond_33

    aget-byte v4, v1, v0

    .line 229
    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 230
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2d

    .line 231
    const/16 v5, 0x30

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    :cond_2d
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 235
    :cond_33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_38

    move-result-object v0

    .line 238
    :goto_37
    return-object v0

    .line 236
    :catch_38
    move-exception v0

    .line 237
    const-string v1, "WbiSigner"

    const-string v2, "MD5 error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    const-string v0, ""

    goto :goto_37
.end method


# virtual methods
.method public clearCache()V
    .locals 2

    .prologue
    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lmybl/WbiSigner;->mixinKey:Ljava/lang/String;

    .line 263
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmybl/WbiSigner;->lastUpdateTime:J

    .line 264
    return-void
.end method

.method public encWbiAndGetQuery(Ljava/util/TreeMap;)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 142
    monitor-enter p0

    .line 143
    :try_start_4
    iget-object v1, p0, Lmybl/WbiSigner;->mixinKey:Ljava/lang/String;

    if-eqz v1, :cond_16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lmybl/WbiSigner;->lastUpdateTime:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x36ee80

    cmp-long v1, v6, v8

    if-lez v1, :cond_25

    .line 144
    :cond_16
    invoke-virtual {p0}, Lmybl/WbiSigner;->updateKeysBlocking()Z

    move-result v1

    if-nez v1, :cond_25

    .line 145
    const-string v1, "WbiSigner"

    const-string v2, "Failed to get WBI keys"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    monitor-exit p0

    .line 199
    :goto_24
    return-object v0

    .line 149
    :cond_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_32

    .line 151
    iget-object v5, p0, Lmybl/WbiSigner;->mixinKey:Ljava/lang/String;

    .line 152
    if-nez v5, :cond_35

    .line 153
    const-string v1, "WbiSigner"

    const-string v2, "mixinKey is still null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 149
    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0

    .line 157
    :cond_35
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    .line 158
    invoke-virtual {v6, p1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v8, 0x3e8

    div-long/2addr v0, v8

    .line 161
    const-string v2, "wts"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    invoke-virtual {v6}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v2, v3

    :goto_5b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 166
    invoke-virtual {v6, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 167
    invoke-direct {p0, v1}, Lmybl/WbiSigner;->filterSpecialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 169
    :try_start_71
    invoke-direct {p0, v0}, Lmybl/WbiSigner;->encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-direct {p0, v9}, Lmybl/WbiSigner;->encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 171
    if-nez v2, :cond_80

    .line 172
    const-string v11, "&"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :cond_80
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, "="

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_8d} :catch_90

    move v0, v4

    :goto_8e
    move v2, v0

    .line 179
    goto :goto_5b

    .line 176
    :catch_90
    move-exception v1

    .line 177
    const-string v10, "WbiSigner"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error encoding: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, "="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v2

    goto :goto_8e

    .line 181
    :cond_b5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmybl/WbiSigner;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    const-string v1, "w_rid"

    invoke-virtual {v6, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    invoke-virtual {v6}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_119

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 187
    if-nez v3, :cond_f3

    .line 188
    const-string v5, "&"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_f3
    :try_start_f3
    invoke-direct {p0, v0}, Lmybl/WbiSigner;->encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lmybl/WbiSigner;->encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_10e} :catch_110

    move v3, v4

    .line 195
    goto :goto_e0

    .line 193
    :catch_110
    move-exception v0

    .line 194
    const-string v5, "WbiSigner"

    const-string v7, "Error building query"

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e0

    .line 198
    :cond_119
    const-string v0, "WbiSigner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Signed query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_24
.end method

.method public getImgKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lmybl/WbiSigner;->imgKey:Ljava/lang/String;

    return-object v0
.end method

.method public getMixinKeyAsync(Lmybl/WbiSigner$WbiKeyCallback;)V
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Lmybl/WbiSigner;->mixinKey:Ljava/lang/String;

    if-eqz v0, :cond_18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lmybl/WbiSigner;->lastUpdateTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-gez v0, :cond_18

    .line 49
    iget-object v0, p0, Lmybl/WbiSigner;->mixinKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Lmybl/WbiSigner$WbiKeyCallback;->onKeysReady(Ljava/lang/String;)V

    .line 74
    :goto_17
    return-void

    .line 53
    :cond_18
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmybl/WbiSigner$1;

    invoke-direct {v1, p0, p1}, Lmybl/WbiSigner$1;-><init>(Lmybl/WbiSigner;Lmybl/WbiSigner$WbiKeyCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 73
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_17
.end method

.method public getSubKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lmybl/WbiSigner;->subKey:Ljava/lang/String;

    return-object v0
.end method

.method public updateKeysBlocking()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 78
    :try_start_1
    const-string v1, "https://api.bilibili.com/x/web-interface/nav"

    .line 79
    invoke-direct {p0, v1}, Lmybl/WbiSigner;->fetchUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-static {v1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 82
    const-string v2, "code"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 83
    if-eqz v2, :cond_34

    const/16 v3, -0x65

    if-eq v2, v3, :cond_34

    .line 84
    const-string v1, "WbiSigner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get nav, code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_33
    return v0

    .line 88
    :cond_34
    const-string v2, "data"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 89
    if-nez v1, :cond_4d

    .line 90
    const-string v1, "WbiSigner"

    const-string v2, "Nav data is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_43} :catch_44

    goto :goto_33

    .line 115
    :catch_44
    move-exception v1

    .line 116
    const-string v2, "WbiSigner"

    const-string v3, "Error updating WBI keys"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33

    .line 94
    :cond_4d
    :try_start_4d
    const-string v2, "wbi_img"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 95
    if-nez v1, :cond_5d

    .line 96
    const-string v1, "WbiSigner"

    const-string v2, "wbi_img is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 100
    :cond_5d
    const-string v2, "img_url"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 101
    const-string v3, "sub_url"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    if-eqz v2, :cond_6d

    if-nez v1, :cond_75

    .line 104
    :cond_6d
    const-string v1, "WbiSigner"

    const-string v2, "img_url or sub_url is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 108
    :cond_75
    invoke-direct {p0, v2}, Lmybl/WbiSigner;->extractFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmybl/WbiSigner;->imgKey:Ljava/lang/String;

    .line 109
    invoke-direct {p0, v1}, Lmybl/WbiSigner;->extractFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmybl/WbiSigner;->subKey:Ljava/lang/String;

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmybl/WbiSigner;->imgKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmybl/WbiSigner;->subKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lmybl/WbiSigner;->getMixinKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmybl/WbiSigner;->mixinKey:Ljava/lang/String;

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lmybl/WbiSigner;->lastUpdateTime:J

    .line 113
    const-string v1, "WbiSigner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated WBI keys: imgKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmybl/WbiSigner;->imgKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmybl/WbiSigner;->subKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mixinKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmybl/WbiSigner;->mixinKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_d4} :catch_44

    .line 114
    const/4 v0, 0x1

    goto/16 :goto_33
.end method
