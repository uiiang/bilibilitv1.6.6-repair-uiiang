.class final Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Iso8601Parser;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Iso8601Parser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final TIMESTAMP_WITH_TIMEZONE_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1431
    nop

    .line 1432
    const-string v0, "(.+?)(Z|((\\+|-|\u2212)(\\d\\d)(:?(\\d\\d))?))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Iso8601Parser;->TIMESTAMP_WITH_TIMEZONE_PATTERN:Ljava/util/regex/Pattern;

    .line 1431
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 1429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Long;
    .registers 23
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1436
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v3, p2

    invoke-direct {v1, v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1437
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 1439
    .local v1, "firstLine":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_13
    sget-object v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Iso8601Parser;->TIMESTAMP_WITH_TIMEZONE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1440
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 1445
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 1446
    .local v4, "timestampWithoutTimezone":Ljava/lang/String;
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd\'T\'HH:mm:ss"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1447
    .local v5, "format":Ljava/text/SimpleDateFormat;
    const-string v6, "UTC"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1448
    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 1450
    .local v6, "timestampMs":J
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 1451
    .local v8, "timezone":Ljava/lang/String;
    const-string v9, "Z"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4c

    goto :goto_89

    .line 1454
    :cond_4c
    const-string v9, "+"

    const/4 v10, 0x4

    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5c

    const-wide/16 v9, 0x1

    goto :goto_5e

    :cond_5c
    const-wide/16 v9, -0x1

    .line 1455
    .local v9, "sign":J
    :goto_5e
    const/4 v11, 0x5

    invoke-virtual {v0, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 1456
    .local v11, "hours":J
    const/4 v13, 0x7

    invoke-virtual {v0, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    .line 1457
    .local v13, "minutesString":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_75

    const-wide/16 v14, 0x0

    goto :goto_79

    :cond_75
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 1458
    .local v14, "minutes":J
    :goto_79
    const-wide/16 v16, 0x3c

    mul-long v18, v11, v16

    add-long v18, v18, v14

    mul-long v18, v18, v16

    const-wide/16 v16, 0x3e8

    mul-long v18, v18, v16

    mul-long v18, v18, v9

    .line 1459
    .local v18, "timestampOffsetMs":J
    sub-long v6, v6, v18

    .line 1461
    .end local v9    # "sign":J
    .end local v11    # "hours":J
    .end local v13    # "minutesString":Ljava/lang/String;
    .end local v14    # "minutes":J
    .end local v18    # "timestampOffsetMs":J
    :goto_89
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2

    .line 1441
    .end local v4    # "timestampWithoutTimezone":Ljava/lang/String;
    .end local v5    # "format":Ljava/text/SimpleDateFormat;
    .end local v6    # "timestampMs":J
    .end local v8    # "timezone":Ljava/lang/String;
    :cond_8e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t parse timestamp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v4

    .end local v1    # "firstLine":Ljava/lang/String;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "inputStream":Ljava/io/InputStream;
    throw v4
    :try_end_a6
    .catch Ljava/text/ParseException; {:try_start_13 .. :try_end_a6} :catch_a6

    .line 1462
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    .restart local v1    # "firstLine":Ljava/lang/String;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "inputStream":Ljava/io/InputStream;
    :catch_a6
    move-exception v0

    .line 1463
    .local v0, "e":Ljava/text/ParseException;
    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v2

    throw v2
.end method

.method public bridge synthetic parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1429
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Iso8601Parser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
