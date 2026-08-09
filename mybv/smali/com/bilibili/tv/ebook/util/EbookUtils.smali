.class public Lcom/bilibili/tv/ebook/util/EbookUtils;
.super Ljava/lang/Object;
.source "EbookUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EbookUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateDirectorySize(Ljava/io/File;)J
    .locals 8

    .prologue
    .line 175
    const-wide/16 v0, 0x0

    .line 177
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 178
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 179
    if-eqz v3, :cond_20

    .line 180
    array-length v4, v3

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v4, :cond_20

    aget-object v5, v3, v2

    .line 181
    invoke-static {v5}, Lcom/bilibili/tv/ebook/util/EbookUtils;->calculateDirectorySize(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 180
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 185
    :cond_1c
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 188
    :cond_20
    return-wide v0
.end method

.method public static clearCache(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 195
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "epub_cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_13

    .line 197
    const/4 v0, 0x1

    .line 200
    :goto_12
    return v0

    :cond_13
    invoke-static {v0}, Lcom/bilibili/tv/ebook/util/EbookUtils;->deleteDirectory(Ljava/io/File;)Z

    move-result v0

    goto :goto_12
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 71
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 75
    const-string v1, "EbookUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6e90\u6587\u4ef6\u4e0d\u5b58\u5728: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_2a
    return v0

    .line 80
    :cond_2b
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 81
    if-eqz v2, :cond_3a

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3a

    .line 82
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 89
    :cond_3a
    :try_start_3a
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_b1

    .line 90
    :try_start_3f
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_b5

    .line 92
    const/16 v1, 0x2000

    :try_start_46
    new-array v1, v1, [B

    .line 95
    :goto_48
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_69

    .line 96
    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_53
    .catchall {:try_start_46 .. :try_end_53} :catchall_54

    goto :goto_48

    .line 99
    :catchall_54
    move-exception v1

    :goto_55
    if-eqz v2, :cond_5a

    .line 101
    :try_start_57
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_9f

    .line 106
    :cond_5a
    :goto_5a
    if-eqz v4, :cond_5f

    .line 108
    :try_start_5c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_a8

    .line 113
    :cond_5f
    :goto_5f
    :try_start_5f
    throw v1
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_60} :catch_60

    .line 118
    :catch_60
    move-exception v1

    .line 119
    const-string v2, "EbookUtils"

    const-string v3, "\u6587\u4ef6\u590d\u5236\u5931\u8d25"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a

    .line 99
    :cond_69
    if-eqz v2, :cond_6e

    .line 101
    :try_start_6b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_8d

    .line 106
    :cond_6e
    :goto_6e
    if-eqz v4, :cond_73

    .line 108
    :try_start_70
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_96

    .line 115
    :cond_73
    :goto_73
    :try_start_73
    const-string v1, "EbookUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6587\u4ef6\u590d\u5236\u6210\u529f: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v0, 0x1

    goto :goto_2a

    .line 102
    :catch_8d
    move-exception v1

    .line 103
    const-string v2, "EbookUtils"

    const-string v3, "\u5173\u95ed\u6587\u4ef6\u8f93\u51fa\u6d41\u5931\u8d25"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6e

    .line 109
    :catch_96
    move-exception v1

    .line 110
    const-string v2, "EbookUtils"

    const-string v3, "\u5173\u95ed\u6587\u4ef6\u8f93\u5165\u6d41\u5931\u8d25"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_73

    .line 102
    :catch_9f
    move-exception v2

    .line 103
    const-string v3, "EbookUtils"

    const-string v5, "\u5173\u95ed\u6587\u4ef6\u8f93\u51fa\u6d41\u5931\u8d25"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5a

    .line 109
    :catch_a8
    move-exception v2

    .line 110
    const-string v3, "EbookUtils"

    const-string v4, "\u5173\u95ed\u6587\u4ef6\u8f93\u5165\u6d41\u5931\u8d25"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_b0} :catch_60

    goto :goto_5f

    .line 99
    :catchall_b1
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    goto :goto_55

    :catchall_b5
    move-exception v1

    move-object v2, v3

    goto :goto_55
.end method

.method public static deleteDirectory(Ljava/io/File;)Z
    .locals 4

    .prologue
    .line 128
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8

    .line 129
    const/4 v0, 0x1

    .line 141
    :goto_7
    return v0

    .line 132
    :cond_8
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 133
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 134
    if-eqz v1, :cond_20

    .line 135
    array-length v2, v1

    const/4 v0, 0x0

    :goto_16
    if-ge v0, v2, :cond_20

    aget-object v3, v1, v0

    .line 136
    invoke-static {v3}, Lcom/bilibili/tv/ebook/util/EbookUtils;->deleteDirectory(Ljava/io/File;)Z

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 141
    :cond_20
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_7
.end method

.method public static formatFileSize(J)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 148
    const-wide/16 v0, 0x400

    cmp-long v0, p0, v0

    if-gez v0, :cond_1c

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    :goto_1b
    return-object v0

    .line 150
    :cond_1c
    const-wide/32 v0, 0x100000

    cmp-long v0, p0, v0

    if-gez v0, :cond_36

    .line 151
    const-string v0, "%.1f KB"

    new-array v1, v2, [Ljava/lang/Object;

    long-to-double v2, p0

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 152
    :cond_36
    const-wide/32 v0, 0x40000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_50

    .line 153
    const-string v0, "%.1f MB"

    new-array v1, v2, [Ljava/lang/Object;

    long-to-double v2, p0

    const-wide/high16 v4, 0x4130000000000000L    # 1048576.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 155
    :cond_50
    const-string v0, "%.1f GB"

    new-array v1, v2, [Ljava/lang/Object;

    long-to-double v2, p0

    const-wide/high16 v4, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b
.end method

.method public static generateFileHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 25
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_f

    move-object v0, v1

    .line 63
    :goto_e
    return-object v0

    .line 31
    :cond_f
    :try_start_f
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_14
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_f .. :try_end_14} :catch_31
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_14} :catch_6d

    move-result-object v4

    .line 34
    :try_start_15
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_7d

    .line 36
    const/16 v3, 0x2000

    :try_start_1c
    new-array v3, v3, [B

    .line 39
    :goto_1e
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3b

    .line 40
    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v5}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_2a

    goto :goto_1e

    .line 43
    :catchall_2a
    move-exception v0

    :goto_2b
    if-eqz v2, :cond_30

    .line 45
    :try_start_2d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_6f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2d .. :try_end_30} :catch_31

    .line 50
    :cond_30
    :goto_30
    :try_start_30
    throw v0
    :try_end_31
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_30 .. :try_end_31} :catch_31
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_31} :catch_6d

    .line 61
    :catch_31
    move-exception v0

    .line 62
    :goto_32
    const-string v2, "EbookUtils"

    const-string v3, "\u751f\u6210\u6587\u4ef6\u54c8\u5e0c\u5931\u8d25"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 63
    goto :goto_e

    .line 43
    :cond_3b
    if-eqz v2, :cond_40

    .line 45
    :try_start_3d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_64
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3d .. :try_end_40} :catch_31

    .line 53
    :cond_40
    :goto_40
    :try_start_40
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    array-length v4, v2

    :goto_4a
    if-ge v0, v4, :cond_78

    aget-byte v5, v2, v0

    .line 56
    const-string v6, "%02x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 46
    :catch_64
    move-exception v2

    .line 47
    const-string v3, "EbookUtils"

    const-string v5, "\u5173\u95ed\u6587\u4ef6\u8f93\u5165\u6d41\u5931\u8d25"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40

    .line 61
    :catch_6d
    move-exception v0

    goto :goto_32

    .line 46
    :catch_6f
    move-exception v2

    .line 47
    const-string v3, "EbookUtils"

    const-string v4, "\u5173\u95ed\u6587\u4ef6\u8f93\u5165\u6d41\u5931\u8d25"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30

    .line 59
    :cond_78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_40 .. :try_end_7b} :catch_31
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_7b} :catch_6d

    move-result-object v0

    goto :goto_e

    .line 43
    :catchall_7d
    move-exception v0

    move-object v2, v1

    goto :goto_2b
.end method

.method public static getCacheSize(Landroid/content/Context;)J
    .locals 3

    .prologue
    .line 163
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "epub_cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_14

    .line 165
    const-wide/16 v0, 0x0

    .line 168
    :goto_13
    return-wide v0

    :cond_14
    invoke-static {v0}, Lcom/bilibili/tv/ebook/util/EbookUtils;->calculateDirectorySize(Ljava/io/File;)J

    move-result-wide v0

    goto :goto_13
.end method
