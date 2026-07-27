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
    .line 150
    const-wide/16 v0, 0x0

    .line 152
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 153
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 154
    if-eqz v3, :cond_20

    .line 155
    array-length v4, v3

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v4, :cond_20

    aget-object v5, v3, v2

    .line 156
    invoke-static {v5}, Lcom/bilibili/tv/ebook/util/EbookUtils;->calculateDirectorySize(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 155
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 160
    :cond_1c
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 163
    :cond_20
    return-wide v0
.end method

.method public static clearCache(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 170
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "epub_cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_13

    .line 172
    const/4 v0, 0x1

    .line 175
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
    const/4 v0, 0x0

    .line 62
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 66
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

    .line 95
    :goto_29
    return v0

    .line 71
    :cond_2a
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 72
    if-eqz v3, :cond_39

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_39

    .line 73
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 77
    :cond_39
    :try_start_39
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 78
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 80
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 83
    :goto_47
    invoke-virtual {v3, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5c

    .line 84
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_52} :catch_53

    goto :goto_47

    .line 93
    :catch_53
    move-exception v1

    .line 94
    const-string v2, "EbookUtils"

    const-string v3, "\u6587\u4ef6\u590d\u5236\u5931\u8d25"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29

    .line 87
    :cond_5c
    :try_start_5c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 88
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 90
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
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_7a} :catch_53

    .line 91
    const/4 v0, 0x1

    goto :goto_29
.end method

.method public static deleteDirectory(Ljava/io/File;)Z
    .locals 4

    .prologue
    .line 103
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8

    .line 104
    const/4 v0, 0x1

    .line 116
    :goto_7
    return v0

    .line 107
    :cond_8
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 108
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 109
    if-eqz v1, :cond_20

    .line 110
    array-length v2, v1

    const/4 v0, 0x0

    :goto_16
    if-ge v0, v2, :cond_20

    aget-object v3, v1, v0

    .line 111
    invoke-static {v3}, Lcom/bilibili/tv/ebook/util/EbookUtils;->deleteDirectory(Ljava/io/File;)Z

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 116
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

    .line 123
    const-wide/16 v0, 0x400

    cmp-long v0, p0, v0

    if-gez v0, :cond_1c

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    :goto_1b
    return-object v0

    .line 125
    :cond_1c
    const-wide/32 v0, 0x100000

    cmp-long v0, p0, v0

    if-gez v0, :cond_36

    .line 126
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

    .line 127
    :cond_36
    const-wide/32 v0, 0x40000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_50

    .line 128
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

    .line 130
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
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_f

    move-object v0, v1

    .line 54
    :goto_e
    return-object v0

    .line 31
    :cond_f
    :try_start_f
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 32
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 34
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 37
    :goto_1e
    invoke-virtual {v4, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_34

    .line 38
    const/4 v6, 0x0

    invoke-virtual {v3, v2, v6, v5}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_29
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_f .. :try_end_29} :catch_2a
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_29} :catch_60

    goto :goto_1e

    .line 52
    :catch_2a
    move-exception v0

    .line 53
    :goto_2b
    const-string v2, "EbookUtils"

    const-string v3, "\u751f\u6210\u6587\u4ef6\u54c8\u5e0c\u5931\u8d25"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 54
    goto :goto_e

    .line 41
    :cond_34
    :try_start_34
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 44
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    array-length v4, v2

    :goto_41
    if-ge v0, v4, :cond_5b

    aget-byte v5, v2, v0

    .line 47
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

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 50
    :cond_5b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_34 .. :try_end_5e} :catch_2a
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_5e} :catch_60

    move-result-object v0

    goto :goto_e

    .line 52
    :catch_60
    move-exception v0

    goto :goto_2b
.end method

.method public static getCacheSize(Landroid/content/Context;)J
    .locals 3

    .prologue
    .line 138
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "epub_cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_14

    .line 140
    const-wide/16 v0, 0x0

    .line 143
    :goto_13
    return-wide v0

    :cond_14
    invoke-static {v0}, Lcom/bilibili/tv/ebook/util/EbookUtils;->calculateDirectorySize(Ljava/io/File;)J

    move-result-wide v0

    goto :goto_13
.end method
