.class public Lcom/bilibili/tv/ebook/util/EbookUtils;
.super Ljava/lang/Object;
.source "EbookUtils.java"


# static fields
.field private static final HTML_CHARSET_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "EbookUtils"

.field private static final XML_ENCODING_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "(?i)encoding\\s*=\\s*[\"\']([A-Za-z0-9_\\-\\.]+)[\"\']"

    .line 22
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bilibili/tv/ebook/util/EbookUtils;->XML_ENCODING_PATTERN:Ljava/util/regex/Pattern;

    .line 24
    const-string v0, "(?i)charset\\s*=\\s*[\"\']?([A-Za-z0-9_\\-\\.]+)"

    .line 25
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bilibili/tv/ebook/util/EbookUtils;->HTML_CHARSET_PATTERN:Ljava/util/regex/Pattern;

    .line 24
    return-void
.end method

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
    .line 249
    const-wide/16 v0, 0x0

    .line 251
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 252
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 253
    if-eqz v3, :cond_20

    .line 254
    array-length v4, v3

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v4, :cond_20

    aget-object v5, v3, v2

    .line 255
    invoke-static {v5}, Lcom/bilibili/tv/ebook/util/EbookUtils;->calculateDirectorySize(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 254
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 259
    :cond_1c
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 262
    :cond_20
    return-wide v0
.end method

.method public static clearCache(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 269
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "epub_cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_13

    .line 271
    const/4 v0, 0x1

    .line 274
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

    .line 145
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 149
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

    .line 194
    :goto_2a
    return v0

    .line 154
    :cond_2b
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 155
    if-eqz v2, :cond_3a

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3a

    .line 156
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 163
    :cond_3a
    :try_start_3a
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_b1

    .line 164
    :try_start_3f
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_b5

    .line 166
    const/16 v1, 0x2000

    :try_start_46
    new-array v1, v1, [B

    .line 169
    :goto_48
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_69

    .line 170
    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_53
    .catchall {:try_start_46 .. :try_end_53} :catchall_54

    goto :goto_48

    .line 173
    :catchall_54
    move-exception v1

    :goto_55
    if-eqz v2, :cond_5a

    .line 175
    :try_start_57
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_9f

    .line 180
    :cond_5a
    :goto_5a
    if-eqz v4, :cond_5f

    .line 182
    :try_start_5c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_a8

    .line 187
    :cond_5f
    :goto_5f
    :try_start_5f
    throw v1
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_60} :catch_60

    .line 192
    :catch_60
    move-exception v1

    .line 193
    const-string v2, "EbookUtils"

    const-string v3, "\u6587\u4ef6\u590d\u5236\u5931\u8d25"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a

    .line 173
    :cond_69
    if-eqz v2, :cond_6e

    .line 175
    :try_start_6b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_8d

    .line 180
    :cond_6e
    :goto_6e
    if-eqz v4, :cond_73

    .line 182
    :try_start_70
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_96

    .line 189
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

    .line 190
    const/4 v0, 0x1

    goto :goto_2a

    .line 176
    :catch_8d
    move-exception v1

    .line 177
    const-string v2, "EbookUtils"

    const-string v3, "\u5173\u95ed\u6587\u4ef6\u8f93\u51fa\u6d41\u5931\u8d25"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6e

    .line 183
    :catch_96
    move-exception v1

    .line 184
    const-string v2, "EbookUtils"

    const-string v3, "\u5173\u95ed\u6587\u4ef6\u8f93\u5165\u6d41\u5931\u8d25"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_73

    .line 176
    :catch_9f
    move-exception v2

    .line 177
    const-string v3, "EbookUtils"

    const-string v5, "\u5173\u95ed\u6587\u4ef6\u8f93\u51fa\u6d41\u5931\u8d25"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5a

    .line 183
    :catch_a8
    move-exception v2

    .line 184
    const-string v3, "EbookUtils"

    const-string v4, "\u5173\u95ed\u6587\u4ef6\u8f93\u5165\u6d41\u5931\u8d25"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_b0} :catch_60

    goto :goto_5f

    .line 173
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
    .line 202
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8

    .line 203
    const/4 v0, 0x1

    .line 215
    :goto_7
    return v0

    .line 206
    :cond_8
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 207
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 208
    if-eqz v1, :cond_20

    .line 209
    array-length v2, v1

    const/4 v0, 0x0

    :goto_16
    if-ge v0, v2, :cond_20

    aget-object v3, v1, v0

    .line 210
    invoke-static {v3}, Lcom/bilibili/tv/ebook/util/EbookUtils;->deleteDirectory(Ljava/io/File;)Z

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 215
    :cond_20
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_7
.end method

.method public static detectFileEncoding(Ljava/io/File;)Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0xff

    const/16 v6, 0xfe

    const/4 v5, 0x2

    .line 33
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_10

    .line 34
    :cond_d
    const-string v0, "UTF-8"

    .line 78
    :cond_f
    :goto_f
    return-object v0

    .line 37
    :cond_10
    const/4 v2, 0x0

    .line 39
    :try_start_11
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_e5
    .catchall {:try_start_11 .. :try_end_16} :catchall_112

    .line 40
    const/16 v0, 0x1000

    :try_start_18
    new-array v0, v0, [B

    .line 41
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    .line 42
    if-gtz v2, :cond_31

    .line 43
    const-string v0, "UTF-8"
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_22} :catch_125
    .catchall {:try_start_18 .. :try_end_22} :catchall_123

    .line 69
    if-eqz v1, :cond_f

    .line 71
    :try_start_24
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_28

    goto :goto_f

    .line 72
    :catch_28
    move-exception v1

    .line 73
    const-string v2, "EbookUtils"

    const-string v3, "\u5173\u95ed\u6587\u4ef6\u8f93\u5165\u6d41\u5931\u8d25"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 47
    :cond_31
    const/4 v3, 0x3

    if-lt v2, v3, :cond_60

    const/4 v3, 0x0

    :try_start_35
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xef

    if-ne v3, v4, :cond_60

    const/4 v3, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xbb

    if-ne v3, v4, :cond_60

    const/4 v3, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xbf

    if-ne v3, v4, :cond_60

    .line 48
    const-string v0, "UTF-8"
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_51} :catch_125
    .catchall {:try_start_35 .. :try_end_51} :catchall_123

    .line 69
    if-eqz v1, :cond_f

    .line 71
    :try_start_53
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_f

    .line 72
    :catch_57
    move-exception v1

    .line 73
    const-string v2, "EbookUtils"

    const-string v3, "\u5173\u95ed\u6587\u4ef6\u8f93\u5165\u6d41\u5931\u8d25"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 50
    :cond_60
    if-lt v2, v5, :cond_81

    const/4 v3, 0x0

    :try_start_63
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    if-ne v3, v7, :cond_81

    const/4 v3, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    if-ne v3, v6, :cond_81

    .line 51
    const-string v0, "UTF-16LE"
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_72} :catch_125
    .catchall {:try_start_63 .. :try_end_72} :catchall_123

    .line 69
    if-eqz v1, :cond_f

    .line 71
    :try_start_74
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_78

    goto :goto_f

    .line 72
    :catch_78
    move-exception v1

    .line 73
    const-string v2, "EbookUtils"

    const-string v3, "\u5173\u95ed\u6587\u4ef6\u8f93\u5165\u6d41\u5931\u8d25"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 53
    :cond_81
    if-lt v2, v5, :cond_a4

    const/4 v3, 0x0

    :try_start_84
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    if-ne v3, v6, :cond_a4

    const/4 v3, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    if-ne v3, v7, :cond_a4

    .line 54
    const-string v0, "UTF-16BE"
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_93} :catch_125
    .catchall {:try_start_84 .. :try_end_93} :catchall_123

    .line 69
    if-eqz v1, :cond_f

    .line 71
    :try_start_95
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_9a

    goto/16 :goto_f

    .line 72
    :catch_9a
    move-exception v1

    .line 73
    const-string v2, "EbookUtils"

    const-string v3, "\u5173\u95ed\u6587\u4ef6\u8f93\u5165\u6d41\u5931\u8d25"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f

    .line 58
    :cond_a4
    :try_start_a4
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "ISO-8859-1"

    invoke-direct {v3, v0, v4, v2, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 59
    sget-object v0, Lcom/bilibili/tv/ebook/util/EbookUtils;->XML_ENCODING_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v3, v0}, Lcom/bilibili/tv/ebook/util/EbookUtils;->matchGroup(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    .line 60
    if-nez v0, :cond_ba

    .line 61
    sget-object v0, Lcom/bilibili/tv/ebook/util/EbookUtils;->HTML_CHARSET_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v3, v0}, Lcom/bilibili/tv/ebook/util/EbookUtils;->matchGroup(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    .line 63
    :cond_ba
    if-eqz v0, :cond_d3

    invoke-static {v0}, Lcom/bilibili/tv/ebook/util/EbookUtils;->isSupportedCharset(Ljava/lang/String;)Z
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_bf} :catch_125
    .catchall {:try_start_a4 .. :try_end_bf} :catchall_123

    move-result v2

    if-eqz v2, :cond_d3

    .line 69
    if-eqz v1, :cond_f

    .line 71
    :try_start_c4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_c7} :catch_c9

    goto/16 :goto_f

    .line 72
    :catch_c9
    move-exception v1

    .line 73
    const-string v2, "EbookUtils"

    const-string v3, "\u5173\u95ed\u6587\u4ef6\u8f93\u5165\u6d41\u5931\u8d25"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f

    .line 69
    :cond_d3
    if-eqz v1, :cond_d8

    .line 71
    :try_start_d5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d8} :catch_dc

    .line 78
    :cond_d8
    :goto_d8
    const-string v0, "UTF-8"

    goto/16 :goto_f

    .line 72
    :catch_dc
    move-exception v0

    .line 73
    const-string v1, "EbookUtils"

    const-string v2, "\u5173\u95ed\u6587\u4ef6\u8f93\u5165\u6d41\u5931\u8d25"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d8

    .line 66
    :catch_e5
    move-exception v0

    move-object v1, v2

    .line 67
    :goto_e7
    :try_start_e7
    const-string v2, "EbookUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u63a2\u6d4b\u6587\u4ef6\u7f16\u7801\u5931\u8d25: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_103
    .catchall {:try_start_e7 .. :try_end_103} :catchall_123

    .line 69
    if-eqz v1, :cond_d8

    .line 71
    :try_start_105
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_108
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_108} :catch_109

    goto :goto_d8

    .line 72
    :catch_109
    move-exception v0

    .line 73
    const-string v1, "EbookUtils"

    const-string v2, "\u5173\u95ed\u6587\u4ef6\u8f93\u5165\u6d41\u5931\u8d25"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d8

    .line 69
    :catchall_112
    move-exception v0

    move-object v1, v2

    :goto_114
    if-eqz v1, :cond_119

    .line 71
    :try_start_116
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_119
    .catch Ljava/io/IOException; {:try_start_116 .. :try_end_119} :catch_11a

    .line 76
    :cond_119
    :goto_119
    throw v0

    .line 72
    :catch_11a
    move-exception v1

    .line 73
    const-string v2, "EbookUtils"

    const-string v3, "\u5173\u95ed\u6587\u4ef6\u8f93\u5165\u6d41\u5931\u8d25"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_119

    .line 69
    :catchall_123
    move-exception v0

    goto :goto_114

    .line 66
    :catch_125
    move-exception v0

    goto :goto_e7
.end method

.method public static formatFileSize(J)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 222
    const-wide/16 v0, 0x400

    cmp-long v0, p0, v0

    if-gez v0, :cond_1c

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    :goto_1b
    return-object v0

    .line 224
    :cond_1c
    const-wide/32 v0, 0x100000

    cmp-long v0, p0, v0

    if-gez v0, :cond_36

    .line 225
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

    .line 226
    :cond_36
    const-wide/32 v0, 0x40000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_50

    .line 227
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

    .line 229
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

    .line 99
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_f

    move-object v0, v1

    .line 137
    :goto_e
    return-object v0

    .line 105
    :cond_f
    :try_start_f
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_14
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_f .. :try_end_14} :catch_31
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_14} :catch_6d

    move-result-object v4

    .line 108
    :try_start_15
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_7d

    .line 110
    const/16 v3, 0x2000

    :try_start_1c
    new-array v3, v3, [B

    .line 113
    :goto_1e
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3b

    .line 114
    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v5}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_2a

    goto :goto_1e

    .line 117
    :catchall_2a
    move-exception v0

    :goto_2b
    if-eqz v2, :cond_30

    .line 119
    :try_start_2d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_6f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2d .. :try_end_30} :catch_31

    .line 124
    :cond_30
    :goto_30
    :try_start_30
    throw v0
    :try_end_31
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_30 .. :try_end_31} :catch_31
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_31} :catch_6d

    .line 135
    :catch_31
    move-exception v0

    .line 136
    :goto_32
    const-string v2, "EbookUtils"

    const-string v3, "\u751f\u6210\u6587\u4ef6\u54c8\u5e0c\u5931\u8d25"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 137
    goto :goto_e

    .line 117
    :cond_3b
    if-eqz v2, :cond_40

    .line 119
    :try_start_3d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_64
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3d .. :try_end_40} :catch_31

    .line 127
    :cond_40
    :goto_40
    :try_start_40
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    array-length v4, v2

    :goto_4a
    if-ge v0, v4, :cond_78

    aget-byte v5, v2, v0

    .line 130
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

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 120
    :catch_64
    move-exception v2

    .line 121
    const-string v3, "EbookUtils"

    const-string v5, "\u5173\u95ed\u6587\u4ef6\u8f93\u5165\u6d41\u5931\u8d25"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40

    .line 135
    :catch_6d
    move-exception v0

    goto :goto_32

    .line 120
    :catch_6f
    move-exception v2

    .line 121
    const-string v3, "EbookUtils"

    const-string v4, "\u5173\u95ed\u6587\u4ef6\u8f93\u5165\u6d41\u5931\u8d25"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30

    .line 133
    :cond_78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_40 .. :try_end_7b} :catch_31
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_7b} :catch_6d

    move-result-object v0

    goto :goto_e

    .line 117
    :catchall_7d
    move-exception v0

    move-object v2, v1

    goto :goto_2b
.end method

.method public static getCacheSize(Landroid/content/Context;)J
    .locals 3

    .prologue
    .line 237
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "epub_cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_14

    .line 239
    const-wide/16 v0, 0x0

    .line 242
    :goto_13
    return-wide v0

    :cond_14
    invoke-static {v0}, Lcom/bilibili/tv/ebook/util/EbookUtils;->calculateDirectorySize(Ljava/io/File;)J

    move-result-wide v0

    goto :goto_13
.end method

.method private static isSupportedCharset(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 88
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    .line 90
    :goto_4
    return v0

    .line 89
    :catch_5
    move-exception v0

    .line 90
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private static matchGroup(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
