.class public final Lcom/google/android/exoplayer2/util/SntpClient;
.super Ljava/lang/Object;
.source "SntpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/SntpClient$InitializationCallback;,
        Lcom/google/android/exoplayer2/util/SntpClient$NtpTimeLoadable;,
        Lcom/google/android/exoplayer2/util/SntpClient$NtpTimeCallback;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_NTP_HOST:Ljava/lang/String; = "time.android.com"

.field private static final NTP_LEAP_NOSYNC:I = 0x3

.field private static final NTP_MODE_BROADCAST:I = 0x5

.field private static final NTP_MODE_CLIENT:I = 0x3

.field private static final NTP_MODE_SERVER:I = 0x4

.field private static final NTP_PACKET_SIZE:I = 0x30

.field private static final NTP_PORT:I = 0x7b

.field private static final NTP_STRATUM_DEATH:I = 0x0

.field private static final NTP_STRATUM_MAX:I = 0xf

.field private static final NTP_VERSION:I = 0x3

.field private static final OFFSET_1900_TO_1970:J = 0x83aa7e80L

.field private static final ORIGINATE_TIME_OFFSET:I = 0x18

.field private static final RECEIVE_TIME_OFFSET:I = 0x20

.field private static final TIMEOUT_MS:I = 0x2710

.field private static final TRANSMIT_TIME_OFFSET:I = 0x28

.field private static elapsedRealtimeOffsetMs:J

.field private static isInitialized:Z

.field private static final loaderLock:Ljava/lang/Object;

.field private static ntpHost:Ljava/lang/String;

.field private static final valueLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/util/SntpClient;->loaderLock:Ljava/lang/Object;

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/util/SntpClient;->valueLock:Ljava/lang/Object;

    .line 93
    const-string v0, "time.android.com"

    sput-object v0, Lcom/google/android/exoplayer2/util/SntpClient;->ntpHost:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .registers 1

    .line 45
    sget-object v0, Lcom/google/android/exoplayer2/util/SntpClient;->loaderLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .registers 1

    .line 45
    sget-object v0, Lcom/google/android/exoplayer2/util/SntpClient;->valueLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300()Z
    .registers 1

    .line 45
    sget-boolean v0, Lcom/google/android/exoplayer2/util/SntpClient;->isInitialized:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 45
    sput-boolean p0, Lcom/google/android/exoplayer2/util/SntpClient;->isInitialized:Z

    return p0
.end method

.method static synthetic access$400()J
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-static {}, Lcom/google/android/exoplayer2/util/SntpClient;->loadNtpTimeOffsetMs()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$502(J)J
    .registers 2
    .param p0, "x0"    # J

    .line 45
    sput-wide p0, Lcom/google/android/exoplayer2/util/SntpClient;->elapsedRealtimeOffsetMs:J

    return-wide p0
.end method

.method private static checkValidServerReply(BBIJ)V
    .registers 8
    .param p0, "leap"    # B
    .param p1, "mode"    # B
    .param p2, "stratum"    # I
    .param p3, "transmitTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    const/4 v0, 0x3

    if-eq p0, v0, :cond_51

    .line 279
    const/4 v0, 0x4

    if-eq p1, v0, :cond_23

    const/4 v0, 0x5

    if-ne p1, v0, :cond_a

    goto :goto_23

    .line 280
    :cond_a
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SNTP: Untrusted mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_23
    :goto_23
    if-eqz p2, :cond_38

    const/16 v0, 0xf

    if-gt p2, v0, :cond_38

    .line 285
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-eqz v2, :cond_30

    .line 288
    return-void

    .line 286
    :cond_30
    new-instance v0, Ljava/io/IOException;

    const-string v1, "SNTP: Zero transmitTime"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_38
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SNTP: Untrusted stratum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_51
    new-instance v0, Ljava/io/IOException;

    const-string v1, "SNTP: Unsynchronized server"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getElapsedRealtimeOffsetMs()J
    .registers 3

    .line 142
    sget-object v0, Lcom/google/android/exoplayer2/util/SntpClient;->valueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_3
    sget-boolean v1, Lcom/google/android/exoplayer2/util/SntpClient;->isInitialized:Z

    if-eqz v1, :cond_a

    sget-wide v1, Lcom/google/android/exoplayer2/util/SntpClient;->elapsedRealtimeOffsetMs:J

    goto :goto_f

    :cond_a
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_f
    monitor-exit v0

    return-wide v1

    .line 144
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public static getNtpHost()Ljava/lang/String;
    .registers 2

    .line 99
    sget-object v0, Lcom/google/android/exoplayer2/util/SntpClient;->valueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_3
    sget-object v1, Lcom/google/android/exoplayer2/util/SntpClient;->ntpHost:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 101
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static initialize(Lcom/google/android/exoplayer2/upstream/Loader;Lcom/google/android/exoplayer2/util/SntpClient$InitializationCallback;)V
    .registers 5
    .param p0, "loader"    # Lcom/google/android/exoplayer2/upstream/Loader;
    .param p1, "callback"    # Lcom/google/android/exoplayer2/util/SntpClient$InitializationCallback;

    .line 156
    invoke-static {}, Lcom/google/android/exoplayer2/util/SntpClient;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 157
    if-eqz p1, :cond_b

    .line 158
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/SntpClient$InitializationCallback;->onInitialized()V

    .line 160
    :cond_b
    return-void

    .line 162
    :cond_c
    if-nez p0, :cond_16

    .line 163
    new-instance v0, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string v1, "SntpClient"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    .line 165
    :cond_16
    new-instance v0, Lcom/google/android/exoplayer2/util/SntpClient$NtpTimeLoadable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/SntpClient$NtpTimeLoadable;-><init>(Lcom/google/android/exoplayer2/util/SntpClient$1;)V

    new-instance v1, Lcom/google/android/exoplayer2/util/SntpClient$NtpTimeCallback;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/util/SntpClient$NtpTimeCallback;-><init>(Lcom/google/android/exoplayer2/util/SntpClient$InitializationCallback;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/Loader;->startLoading(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)J

    .line 167
    return-void
.end method

.method public static isInitialized()Z
    .registers 2

    .line 130
    sget-object v0, Lcom/google/android/exoplayer2/util/SntpClient;->valueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_3
    sget-boolean v1, Lcom/google/android/exoplayer2/util/SntpClient;->isInitialized:Z

    monitor-exit v0

    return v1

    .line 132
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private static loadNtpTimeOffsetMs()J
    .registers 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    invoke-static {}, Lcom/google/android/exoplayer2/util/SntpClient;->getNtpHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 171
    .local v1, "address":Ljava/net/InetAddress;
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    move-object v2, v0

    .line 172
    .local v2, "socket":Ljava/net/DatagramSocket;
    const/16 v0, 0x2710

    :try_start_10
    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 173
    const/16 v0, 0x30

    new-array v0, v0, [B

    .line 174
    .local v0, "buffer":[B
    new-instance v3, Ljava/net/DatagramPacket;

    array-length v4, v0

    const/16 v5, 0x7b

    invoke-direct {v3, v0, v4, v1, v5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 178
    .local v3, "request":Ljava/net/DatagramPacket;
    const/16 v4, 0x1b

    const/4 v5, 0x0

    aput-byte v4, v0, v5

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 182
    .local v6, "requestTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 183
    .local v8, "requestTicks":J
    const/16 v4, 0x28

    invoke-static {v0, v4, v6, v7}, Lcom/google/android/exoplayer2/util/SntpClient;->writeTimestamp([BIJ)V

    .line 185
    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 188
    new-instance v10, Ljava/net/DatagramPacket;

    array-length v11, v0

    invoke-direct {v10, v0, v11}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 189
    .local v10, "response":Ljava/net/DatagramPacket;
    invoke-virtual {v2, v10}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 190
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 191
    .local v11, "responseTicks":J
    sub-long v13, v11, v8

    add-long/2addr v13, v6

    .line 194
    .local v13, "responseTime":J
    aget-byte v15, v0, v5

    shr-int/lit8 v15, v15, 0x6

    and-int/lit8 v15, v15, 0x3

    int-to-byte v15, v15

    .line 195
    .local v15, "leap":B
    aget-byte v5, v0, v5

    and-int/lit8 v5, v5, 0x7

    int-to-byte v5, v5

    .line 196
    .local v5, "mode":B
    const/16 v16, 0x1

    aget-byte v4, v0, v16
    :try_end_54
    .catchall {:try_start_10 .. :try_end_54} :catchall_8a

    and-int/lit16 v4, v4, 0xff

    .line 197
    .local v4, "stratum":I
    move-object/from16 v16, v1

    .end local v1    # "address":Ljava/net/InetAddress;
    .local v16, "address":Ljava/net/InetAddress;
    const/16 v1, 0x18

    :try_start_5a
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/SntpClient;->readTimestamp([BI)J

    move-result-wide v18

    .line 198
    .local v18, "originateTime":J
    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/SntpClient;->readTimestamp([BI)J

    move-result-wide v20

    .line 199
    .local v20, "receiveTime":J
    const/16 v1, 0x28

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/SntpClient;->readTimestamp([BI)J

    move-result-wide v22

    move-wide/from16 v24, v22

    .line 202
    .local v24, "transmitTime":J
    move-object/from16 v17, v0

    move-wide/from16 v0, v24

    .end local v24    # "transmitTime":J
    .local v0, "transmitTime":J
    .local v17, "buffer":[B
    invoke-static {v15, v5, v4, v0, v1}, Lcom/google/android/exoplayer2/util/SntpClient;->checkValidServerReply(BBIJ)V

    .line 212
    sub-long v22, v20, v18

    sub-long v24, v0, v13

    add-long v22, v22, v24

    const-wide/16 v24, 0x2

    div-long v22, v22, v24
    :try_end_7d
    .catchall {:try_start_5a .. :try_end_7d} :catchall_87

    .line 216
    .local v22, "clockOffset":J
    add-long v24, v13, v22

    .line 217
    .local v24, "ntpTime":J
    move-wide/from16 v26, v11

    .line 219
    .local v26, "ntpTimeReference":J
    sub-long v28, v24, v26

    .line 220
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    .line 219
    return-wide v28

    .line 171
    .end local v0    # "transmitTime":J
    .end local v3    # "request":Ljava/net/DatagramPacket;
    .end local v4    # "stratum":I
    .end local v5    # "mode":B
    .end local v6    # "requestTime":J
    .end local v8    # "requestTicks":J
    .end local v10    # "response":Ljava/net/DatagramPacket;
    .end local v11    # "responseTicks":J
    .end local v13    # "responseTime":J
    .end local v15    # "leap":B
    .end local v17    # "buffer":[B
    .end local v18    # "originateTime":J
    .end local v20    # "receiveTime":J
    .end local v22    # "clockOffset":J
    .end local v24    # "ntpTime":J
    .end local v26    # "ntpTimeReference":J
    :catchall_87
    move-exception v0

    move-object v1, v0

    goto :goto_8e

    .end local v16    # "address":Ljava/net/InetAddress;
    .restart local v1    # "address":Ljava/net/InetAddress;
    :catchall_8a
    move-exception v0

    move-object/from16 v16, v1

    move-object v1, v0

    .end local v1    # "address":Ljava/net/InetAddress;
    .restart local v16    # "address":Ljava/net/InetAddress;
    :goto_8e
    :try_start_8e
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V
    :try_end_91
    .catchall {:try_start_8e .. :try_end_91} :catchall_92

    goto :goto_97

    :catchall_92
    move-exception v0

    move-object v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_97
    throw v1
.end method

.method private static read32([BI)J
    .registers 15
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I

    .line 260
    aget-byte v0, p0, p1

    .line 261
    .local v0, "b0":B
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    .line 262
    .local v1, "b1":B
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    .line 263
    .local v2, "b2":B
    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    .line 266
    .local v3, "b3":B
    and-int/lit16 v4, v0, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_18

    and-int/lit8 v4, v0, 0x7f

    add-int/2addr v4, v5

    goto :goto_19

    :cond_18
    move v4, v0

    .line 267
    .local v4, "i0":I
    :goto_19
    and-int/lit16 v6, v1, 0x80

    if-ne v6, v5, :cond_21

    and-int/lit8 v6, v1, 0x7f

    add-int/2addr v6, v5

    goto :goto_22

    :cond_21
    move v6, v1

    .line 268
    .local v6, "i1":I
    :goto_22
    and-int/lit16 v7, v2, 0x80

    if-ne v7, v5, :cond_2a

    and-int/lit8 v7, v2, 0x7f

    add-int/2addr v7, v5

    goto :goto_2b

    :cond_2a
    move v7, v2

    .line 269
    .local v7, "i2":I
    :goto_2b
    and-int/lit16 v8, v3, 0x80

    if-ne v8, v5, :cond_33

    and-int/lit8 v8, v3, 0x7f

    add-int/2addr v8, v5

    goto :goto_34

    :cond_33
    move v8, v3

    :goto_34
    move v5, v8

    .line 271
    .local v5, "i3":I
    int-to-long v8, v4

    const/16 v10, 0x18

    shl-long/2addr v8, v10

    int-to-long v10, v6

    const/16 v12, 0x10

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v7

    const/16 v12, 0x8

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v5

    add-long/2addr v8, v10

    return-wide v8
.end method

.method private static readTimestamp([BI)J
    .registers 12
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I

    .line 224
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/SntpClient;->read32([BI)J

    move-result-wide v0

    .line 225
    .local v0, "seconds":J
    add-int/lit8 v2, p1, 0x4

    invoke-static {p0, v2}, Lcom/google/android/exoplayer2/util/SntpClient;->read32([BI)J

    move-result-wide v2

    .line 227
    .local v2, "fraction":J
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_15

    cmp-long v6, v2, v4

    if-nez v6, :cond_15

    .line 228
    return-wide v4

    .line 230
    :cond_15
    const-wide v4, 0x83aa7e80L

    sub-long v4, v0, v4

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    mul-long v6, v6, v2

    const-wide v8, 0x100000000L

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    return-wide v4
.end method

.method public static setNtpHost(Ljava/lang/String;)V
    .registers 3
    .param p0, "ntpHost"    # Ljava/lang/String;

    .line 115
    sget-object v0, Lcom/google/android/exoplayer2/util/SntpClient;->valueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 116
    :try_start_3
    sget-object v1, Lcom/google/android/exoplayer2/util/SntpClient;->ntpHost:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 117
    sput-object p0, Lcom/google/android/exoplayer2/util/SntpClient;->ntpHost:Ljava/lang/String;

    .line 118
    const/4 v1, 0x0

    sput-boolean v1, Lcom/google/android/exoplayer2/util/SntpClient;->isInitialized:Z

    .line 120
    :cond_10
    monitor-exit v0

    .line 121
    return-void

    .line 120
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private static writeTimestamp([BIJ)V
    .registers 19
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "time"    # J

    .line 235
    move-object v0, p0

    move/from16 v1, p1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, p2, v2

    if-nez v5, :cond_10

    .line 236
    add-int/lit8 v2, v1, 0x8

    invoke-static {p0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 237
    return-void

    .line 240
    :cond_10
    const-wide/16 v2, 0x3e8

    div-long v5, p2, v2

    .line 241
    .local v5, "seconds":J
    mul-long v7, v5, v2

    sub-long v7, p2, v7

    .line 242
    .local v7, "milliseconds":J
    const-wide v9, 0x83aa7e80L

    add-long/2addr v5, v9

    .line 245
    add-int/lit8 v9, v1, 0x1

    .end local p1    # "offset":I
    .local v9, "offset":I
    const/16 v10, 0x18

    shr-long v11, v5, v10

    long-to-int v12, v11

    int-to-byte v11, v12

    aput-byte v11, v0, v1

    .line 246
    add-int/lit8 v1, v9, 0x1

    .end local v9    # "offset":I
    .local v1, "offset":I
    const/16 v11, 0x10

    shr-long v12, v5, v11

    long-to-int v13, v12

    int-to-byte v12, v13

    aput-byte v12, v0, v9

    .line 247
    add-int/lit8 v9, v1, 0x1

    .end local v1    # "offset":I
    .restart local v9    # "offset":I
    const/16 v12, 0x8

    shr-long v13, v5, v12

    long-to-int v14, v13

    int-to-byte v13, v14

    aput-byte v13, v0, v1

    .line 248
    add-int/lit8 v1, v9, 0x1

    .end local v9    # "offset":I
    .restart local v1    # "offset":I
    shr-long v13, v5, v4

    long-to-int v4, v13

    int-to-byte v4, v4

    aput-byte v4, v0, v9

    .line 250
    const-wide v13, 0x100000000L

    mul-long v13, v13, v7

    div-long/2addr v13, v2

    .line 252
    .local v13, "fraction":J
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .local v2, "offset":I
    shr-long v3, v13, v10

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v1

    .line 253
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    shr-long v3, v13, v11

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v2

    .line 254
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    shr-long v3, v13, v12

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v1

    .line 256
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide v9, 0x406fe00000000000L    # 255.0

    mul-double v3, v3, v9

    double-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 257
    return-void
.end method
