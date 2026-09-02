.class public final Lmybl/AppRecommendLoader;
.super Ljava/lang/Object;
.source "AppRecommendLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmybl/AppRecommendLoader$Result;
    }
.end annotation


# static fields
.field private static final APP_KEY:Ljava/lang/String; = "783bbb7264451d82"

.field private static final APP_SEC:Ljava/lang/String; = "2653583c8873dea268ab9386918b1d65"

.field private static final APP_UA:Ljava/lang/String; = "Dalvik/2.1.0 (Linux; U; Android 13; 2211133C Build/TKQ1.221114.001) 8.83.0 os/android model/2211133C mobi_app/android build/8830500 channel/xiaomi innerVer/8830500 osVer/13 network/2 grpc-java-cronet/1.36.1"

.field private static final FEED_URL:Ljava/lang/String; = "https://app.bilibili.com/x/v2/feed/index"

.field private static final TAG:Ljava/lang/String; = "AppRecommendLoader"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public static fetch(JLjava/lang/String;I)Lmybl/AppRecommendLoader$Result;
    .locals 10

    .prologue
    .line 69
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 71
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 73
    const/4 v0, 0x1

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 74
    const/4 v0, 0x0

    move v4, v0

    move-wide v2, p0

    :goto_12
    const/4 v0, 0x5

    if-ge v4, v0, :cond_96

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v7, :cond_96

    .line 76
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_2f

    const/4 v0, 0x1

    :goto_22
    invoke-static {v2, v3, p2, v0}, Lmybl/AppRecommendLoader;->requestOnce(JLjava/lang/String;Z)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 77
    if-nez v0, :cond_31

    .line 79
    new-instance v0, Lmybl/AppRecommendLoader$Result;

    const/4 v1, 0x0

    invoke-direct {v0, v5, v2, v3, v1}, Lmybl/AppRecommendLoader$Result;-><init>(Ljava/util/List;JZ)V

    .line 101
    :goto_2e
    return-object v0

    .line 76
    :cond_2f
    const/4 v0, 0x0

    goto :goto_22

    .line 81
    :cond_31
    const-string v1, "items"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 82
    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 83
    :cond_3f
    new-instance v0, Lmybl/AppRecommendLoader$Result;

    const/4 v1, 0x1

    invoke-direct {v0, v5, v2, v3, v1}, Lmybl/AppRecommendLoader$Result;-><init>(Ljava/util/List;JZ)V

    goto :goto_2e

    .line 85
    :cond_46
    const/4 v0, 0x0

    :goto_47
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v8

    if-ge v0, v8, :cond_67

    .line 86
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    .line 87
    invoke-static {v8}, Lmybl/AppRecommendLoader;->parseItem(Lcom/alibaba/fastjson/JSONObject;)Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    move-result-object v8

    .line 88
    if-eqz v8, :cond_64

    invoke-virtual {v8}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getUri()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_64

    .line 89
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_64
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 93
    :cond_67
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v1, "idx"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v0

    .line 94
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-lez v8, :cond_81

    cmp-long v8, v0, v2

    if-nez v8, :cond_91

    .line 96
    :cond_81
    new-instance v4, Lmybl/AppRecommendLoader$Result;

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_8f

    :goto_89
    const/4 v2, 0x1

    invoke-direct {v4, v5, v0, v1, v2}, Lmybl/AppRecommendLoader$Result;-><init>(Ljava/util/List;JZ)V

    move-object v0, v4

    goto :goto_2e

    :cond_8f
    move-wide v0, v2

    goto :goto_89

    .line 74
    :cond_91
    add-int/lit8 v4, v4, 0x1

    move-wide v2, v0

    goto/16 :goto_12

    .line 100
    :cond_96
    const-string v0, "AppRecommendLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[App\u63a8\u8350] \u52a0\u8f7d"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\u6761 \u8d77\u59cb\u6e38\u6807="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " \u4e0b\u4e00\u6e38\u6807="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v0, Lmybl/AppRecommendLoader$Result;

    const/4 v1, 0x0

    invoke-direct {v0, v5, v2, v3, v1}, Lmybl/AppRecommendLoader$Result;-><init>(Ljava/util/List;JZ)V

    goto/16 :goto_2e
.end method

.method private static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 240
    :try_start_1
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 241
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    array-length v3, v1

    :goto_17
    if-ge v0, v3, :cond_31

    aget-byte v4, v1, v0

    .line 244
    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 246
    :cond_31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_34} :catch_36

    move-result-object v0

    .line 248
    :goto_35
    return-object v0

    .line 247
    :catch_36
    move-exception v0

    .line 248
    const-string v0, ""

    goto :goto_35
.end method

.method private static parseCount(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 147
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 160
    :goto_7
    return v0

    .line 151
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 152
    const-string v2, "\u4e07"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 153
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_7

    .line 155
    :cond_2b
    const-string v2, "\u4ebf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 156
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x4197d78400000000L    # 1.0E8

    mul-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_7

    .line 158
    :cond_4a
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_4d} :catch_50

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_7

    .line 159
    :catch_50
    move-exception v1

    goto :goto_7
.end method

.method private static parseItem(Lcom/alibaba/fastjson/JSONObject;)Lcom/bilibili/tv/api/main/MainRecommendEx$Content;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 110
    :try_start_1
    const-string v1, "goto"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_18

    const-string v2, "av"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 141
    :cond_17
    :goto_17
    return-object v0

    .line 114
    :cond_18
    const-string v1, "player_args"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 115
    if-eqz v2, :cond_17

    .line 118
    const-string v1, "aid"

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    .line 119
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_17

    .line 122
    new-instance v1, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    invoke-direct {v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;-><init>()V

    .line 123
    const-string v3, "small_popular_ugc"

    invoke-virtual {v1, v3}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setCardType(Ljava/lang/String;)V

    .line 124
    const-string v3, "av"

    invoke-virtual {v1, v3}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setCardGoto(Ljava/lang/String;)V

    .line 125
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setJumpId(Ljava/lang/Long;)V

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bilibili_yst://video/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setUri(Ljava/lang/String;)V

    .line 127
    const-string v3, "cover"

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setCover(Ljava/lang/String;)V

    .line 128
    const-string v3, "title"

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setTitle(Ljava/lang/String;)V

    .line 129
    const-string v3, "pubdate"

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setPubdate(J)V

    .line 130
    const-string v3, "duration"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setDuration(I)V

    .line 131
    const-string v2, "args"

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 132
    if-eqz v2, :cond_8d

    .line 133
    const-string v3, "up_name"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setOwnerName(Ljava/lang/String;)V

    .line 136
    :cond_8d
    const-string v2, "cover_left_text_1"

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmybl/AppRecommendLoader;->parseCount(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setPlay(I)V

    .line 137
    const-string v2, "cover_left_text_2"

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmybl/AppRecommendLoader;->parseCount(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setDanmaku(I)V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a7} :catch_aa

    move-object v0, v1

    .line 138
    goto/16 :goto_17

    .line 139
    :catch_aa
    move-exception v1

    .line 140
    const-string v2, "AppRecommendLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[App\u63a8\u8350] \u5361\u7247\u89e3\u6790\u5f02\u5e38 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17
.end method

.method private static requestOnce(JLjava/lang/String;Z)Lcom/alibaba/fastjson/JSONObject;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 166
    .line 169
    :try_start_1
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 170
    const-string v0, "idx"

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v3, "flush"

    if-eqz p3, :cond_e4

    const-string v0, "0"

    :goto_15
    invoke-virtual {v1, v3, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v0, "column"

    const-string v3, "4"

    invoke-virtual {v1, v0, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v3, "pull"

    if-eqz p3, :cond_e8

    const-string v0, "true"

    :goto_25
    invoke-virtual {v1, v3, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v0, "feed_version"

    const-string v3, "V8"

    invoke-virtual {v1, v0, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v0, "network"

    const-string v3, "wifi"

    invoke-virtual {v1, v0, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v0, "platform"

    const-string v3, "android"

    invoke-virtual {v1, v0, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v0, "device"

    const-string v3, "pad"

    invoke-virtual {v1, v0, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v0, "mobi_app"

    const-string v3, "android"

    invoke-virtual {v1, v0, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    if-eqz p3, :cond_54

    .line 180
    const-string v0, "open_event"

    const-string v3, "cold"

    invoke-virtual {v1, v0, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_54
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 183
    const-string v0, "access_key"

    invoke-virtual {v1, v0, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_5f
    const-string v0, "appkey"

    const-string v3, "783bbb7264451d82"

    invoke-virtual {v1, v0, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v0, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_83
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ec

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 190
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_9a

    .line 191
    const/16 v1, 0x26

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    :cond_9a
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v5, 0x3d

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b3} :catch_b4
    .catchall {:try_start_1 .. :try_end_b3} :catchall_20a

    goto :goto_83

    .line 225
    :catch_b4
    move-exception v0

    move-object v1, v0

    move-object v3, v2

    .line 226
    :goto_b7
    :try_start_b7
    const-string v0, "AppRecommendLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[App\u63a8\u8350\u8bf7\u6c42\u5f02\u5e38] idx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_dd
    .catchall {:try_start_b7 .. :try_end_dd} :catchall_221

    .line 229
    if-eqz v3, :cond_e2

    .line 231
    :try_start_df
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_e2} :catch_219

    :cond_e2
    :goto_e2
    move-object v0, v2

    .line 227
    :goto_e3
    return-object v0

    .line 171
    :cond_e4
    :try_start_e4
    const-string v0, "8"

    goto/16 :goto_15

    .line 173
    :cond_e8
    const-string v0, "false"

    goto/16 :goto_25

    .line 195
    :cond_ec
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://app.bilibili.com/x/v2/feed/index?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&sign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "2653583c8873dea268ab9386918b1d65"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmybl/AppRecommendLoader;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_12f} :catch_b4
    .catchall {:try_start_e4 .. :try_end_12f} :catchall_20a

    .line 198
    :try_start_12f
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 199
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 200
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 202
    const-string v1, "User-Agent"

    const-string v3, "Dalvik/2.1.0 (Linux; U; Android 13; 2211133C Build/TKQ1.221114.001) 8.83.0 os/android model/2211133C mobi_app/android build/8830500 channel/xiaomi innerVer/8830500 osVer/13 network/2 grpc-java-cronet/1.36.1"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v1, "APP-KEY"

    const-string v3, "android64"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v1, "ENV"

    const-string v3, "prod"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 207
    const/16 v3, 0xc8

    if-eq v1, v3, :cond_185

    .line 208
    const-string v3, "AppRecommendLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[App\u63a8\u8350\u8bf7\u6c42] HTTP "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " idx="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17d
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_17d} :catch_1a4
    .catchall {:try_start_12f .. :try_end_17d} :catchall_21e

    .line 229
    if-eqz v0, :cond_182

    .line 231
    :try_start_17f
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_182
    .catch Ljava/lang/Exception; {:try_start_17f .. :try_end_182} :catch_212

    :cond_182
    :goto_182
    move-object v0, v2

    .line 209
    goto/16 :goto_e3

    .line 211
    :cond_185
    :try_start_185
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 212
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    :goto_19a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1a8

    .line 215
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19a

    .line 225
    :catch_1a4
    move-exception v1

    move-object v3, v0

    goto/16 :goto_b7

    .line 217
    :cond_1a8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 218
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 219
    if-eqz v3, :cond_1bd

    const-string v1, "code"

    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1fc

    .line 220
    :cond_1bd
    const-string v4, "AppRecommendLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[App\u63a8\u8350\u8bf7\u6c42] code="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v3, :cond_1ee

    const/4 v1, -0x1

    :goto_1cd
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " message="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 221
    if-nez v3, :cond_1f5

    const-string v1, "null"

    :goto_1db
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e6
    .catch Ljava/lang/Exception; {:try_start_185 .. :try_end_1e6} :catch_1a4
    .catchall {:try_start_185 .. :try_end_1e6} :catchall_21e

    .line 229
    if-eqz v0, :cond_1eb

    .line 231
    :try_start_1e8
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1eb
    .catch Ljava/lang/Exception; {:try_start_1e8 .. :try_end_1eb} :catch_215

    :cond_1eb
    :goto_1eb
    move-object v0, v2

    .line 222
    goto/16 :goto_e3

    .line 220
    :cond_1ee
    :try_start_1ee
    const-string v1, "code"

    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    goto :goto_1cd

    .line 221
    :cond_1f5
    const-string v1, "message"

    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1db

    .line 224
    :cond_1fc
    const-string v1, "data"

    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    :try_end_201
    .catch Ljava/lang/Exception; {:try_start_1ee .. :try_end_201} :catch_1a4
    .catchall {:try_start_1ee .. :try_end_201} :catchall_21e

    move-result-object v1

    .line 229
    if-eqz v0, :cond_207

    .line 231
    :try_start_204
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_207
    .catch Ljava/lang/Exception; {:try_start_204 .. :try_end_207} :catch_217

    :cond_207
    :goto_207
    move-object v0, v1

    .line 224
    goto/16 :goto_e3

    .line 229
    :catchall_20a
    move-exception v0

    move-object v1, v0

    :goto_20c
    if-eqz v2, :cond_211

    .line 231
    :try_start_20e
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_211
    .catch Ljava/lang/Exception; {:try_start_20e .. :try_end_211} :catch_21c

    .line 235
    :cond_211
    :goto_211
    throw v1

    .line 232
    :catch_212
    move-exception v0

    goto/16 :goto_182

    :catch_215
    move-exception v0

    goto :goto_1eb

    :catch_217
    move-exception v0

    goto :goto_207

    :catch_219
    move-exception v0

    goto/16 :goto_e2

    :catch_21c
    move-exception v0

    goto :goto_211

    .line 229
    :catchall_21e
    move-exception v1

    move-object v2, v0

    goto :goto_20c

    :catchall_221
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    goto :goto_20c
.end method
