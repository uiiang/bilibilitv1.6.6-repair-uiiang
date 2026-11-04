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
.field static final APP_KEY:Ljava/lang/String; = "783bbb7264451d82"

.field static final APP_SEC:Ljava/lang/String; = "2653583c8873dea268ab9386918b1d65"

.field static final APP_UA:Ljava/lang/String; = "Dalvik/2.1.0 (Linux; U; Android 13; 2211133C Build/TKQ1.221114.001) 8.83.0 os/android model/2211133C mobi_app/android build/8830500 channel/xiaomi innerVer/8830500 osVer/13 network/2 grpc-java-cronet/1.36.1"

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

    .line 280
    :try_start_1
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 281
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    array-length v3, v1

    :goto_17
    if-ge v0, v3, :cond_31

    aget-byte v4, v1, v0

    .line 284
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

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 286
    :cond_31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_34} :catch_36

    move-result-object v0

    .line 288
    :goto_35
    return-object v0

    .line 287
    :catch_36
    move-exception v0

    .line 288
    const-string v0, ""

    goto :goto_35
.end method

.method private static parseCount(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 164
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 177
    :goto_7
    return v0

    .line 168
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 169
    const-string v2, "\u4e07"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 170
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

    .line 172
    :cond_2b
    const-string v2, "\u4ebf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 173
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

    .line 175
    :cond_4a
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_4d} :catch_50

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_7

    .line 176
    :catch_50
    move-exception v1

    goto :goto_7
.end method

.method private static parseItem(Lcom/alibaba/fastjson/JSONObject;)Lcom/bilibili/tv/api/main/MainRecommendEx$Content;
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 110
    :try_start_2
    const-string v2, "goto"

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1a

    const-string v3, "av"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    move-object v0, v1

    .line 158
    :goto_19
    return-object v0

    .line 114
    :cond_1a
    const-string v2, "player_args"

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 115
    if-nez v3, :cond_24

    move-object v0, v1

    .line 116
    goto :goto_19

    .line 118
    :cond_24
    const-string v2, "aid"

    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    .line 119
    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-gtz v2, :cond_32

    move-object v0, v1

    .line 120
    goto :goto_19

    .line 122
    :cond_32
    new-instance v2, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    invoke-direct {v2}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;-><init>()V

    .line 123
    const-string v6, "small_popular_ugc"

    invoke-virtual {v2, v6}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setCardType(Ljava/lang/String;)V

    .line 124
    const-string v6, "av"

    invoke-virtual {v2, v6}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setCardGoto(Ljava/lang/String;)V

    .line 125
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setJumpId(Ljava/lang/Long;)V

    .line 126
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bilibili_yst://video/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setUri(Ljava/lang/String;)V

    .line 127
    const-string v4, "cover"

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setCover(Ljava/lang/String;)V

    .line 128
    const-string v4, "title"

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setTitle(Ljava/lang/String;)V

    .line 129
    const-string v4, "pubdate"

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setPubdate(J)V

    .line 130
    const-string v4, "duration"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setDuration(I)V

    .line 131
    const-string v3, "args"

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 132
    if-eqz v3, :cond_93

    .line 133
    const-string v4, "up_name"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setOwnerName(Ljava/lang/String;)V

    .line 136
    :cond_93
    const-string v4, "is_followed"

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v0, :cond_a5

    if-eqz v3, :cond_f2

    const-string v4, "is_followed"

    .line 137
    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v0, :cond_f2

    .line 138
    :cond_a5
    :goto_a5
    if-eqz v0, :cond_ac

    .line 139
    const-string v0, "\u6211\u7684\u5173\u6ce8"

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setBadge(Ljava/lang/String;)V

    .line 142
    :cond_ac
    const-string v0, "rcmd_reason"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 143
    instance-of v4, v0, Lcom/alibaba/fastjson/JSONObject;

    if-nez v4, :cond_be

    if-eqz v3, :cond_be

    .line 144
    const-string v0, "rcmd_reason"

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 146
    :cond_be
    instance-of v3, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v3, :cond_d5

    .line 147
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    const-string v3, "content"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_d5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d5

    .line 149
    invoke-virtual {v2, v0}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setLeftBadge(Ljava/lang/String;)V

    .line 153
    :cond_d5
    const-string v0, "cover_left_text_1"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmybl/AppRecommendLoader;->parseCount(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setPlay(I)V

    .line 154
    const-string v0, "cover_left_text_2"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmybl/AppRecommendLoader;->parseCount(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setDanmaku(I)V
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_ef} :catch_f4

    move-object v0, v2

    .line 155
    goto/16 :goto_19

    .line 137
    :cond_f2
    const/4 v0, 0x0

    goto :goto_a5

    .line 156
    :catch_f4
    move-exception v0

    .line 157
    const-string v2, "AppRecommendLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[App\u63a8\u8350] \u5361\u7247\u89e3\u6790\u5f02\u5e38 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 158
    goto/16 :goto_19
.end method

.method private static requestOnce(JLjava/lang/String;Z)Lcom/alibaba/fastjson/JSONObject;
    .locals 4

    .prologue
    .line 185
    :try_start_0
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 186
    const-string v0, "idx"

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v2, "flush"

    if-eqz p3, :cond_65

    const-string v0, "0"

    :goto_14
    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v0, "column"

    const-string v2, "4"

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v2, "pull"

    if-eqz p3, :cond_68

    const-string v0, "true"

    :goto_24
    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v0, "feed_version"

    const-string v2, "V8"

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v0, "network"

    const-string v2, "wifi"

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v0, "platform"

    const-string v2, "android"

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v0, "device"

    const-string v2, "pad"

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v0, "mobi_app"

    const-string v2, "android"

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    if-eqz p3, :cond_53

    .line 196
    const-string v0, "open_event"

    const-string v2, "cold"

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_53
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 199
    const-string v0, "access_key"

    invoke-virtual {v1, v0, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_5e
    const-string v0, "https://app.bilibili.com/x/v2/feed/index"

    invoke-static {v0, v1}, Lmybl/AppRecommendLoader;->requestSignedJson(Ljava/lang/String;Ljava/util/TreeMap;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 204
    :goto_64
    return-object v0

    .line 187
    :cond_65
    const-string v0, "8"

    goto :goto_14

    .line 189
    :cond_68
    const-string v0, "false"
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6a} :catch_6b

    goto :goto_24

    .line 202
    :catch_6b
    move-exception v0

    .line 203
    const-string v1, "AppRecommendLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[App\u63a8\u8350\u8bf7\u6c42\u5f02\u5e38] idx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v0, 0x0

    goto :goto_64
.end method

.method static requestSignedJson(Ljava/lang/String;Ljava/util/TreeMap;)Lcom/alibaba/fastjson/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/fastjson/JSONObject;"
        }
    .end annotation

    .prologue
    .line 214
    invoke-static {p0, p1}, Lmybl/AppRecommendLoader;->requestSignedResponse(Ljava/lang/String;Ljava/util/TreeMap;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 215
    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    goto :goto_7
.end method

.method static requestSignedResponse(Ljava/lang/String;Ljava/util/TreeMap;)Lcom/alibaba/fastjson/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/fastjson/JSONObject;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 224
    .line 226
    :try_start_1
    const-string v0, "appkey"

    const-string v1, "783bbb7264451d82"

    invoke-virtual {p1, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v0, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 230
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3c

    .line 231
    const/16 v1, 0x26

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    :cond_3c
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
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_55} :catch_56
    .catchall {:try_start_1 .. :try_end_55} :catchall_18e

    goto :goto_25

    .line 265
    :catch_56
    move-exception v0

    move-object v1, v0

    move-object v3, v2

    .line 266
    :goto_59
    :try_start_59
    const-string v0, "AppRecommendLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[App\u7b7e\u540d\u8bf7\u6c42\u5f02\u5e38] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catchall {:try_start_59 .. :try_end_75} :catchall_1a5

    .line 269
    if-eqz v3, :cond_7a

    .line 271
    :try_start_77
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7a} :catch_19d

    :cond_7a
    :goto_7a
    move-object v0, v2

    .line 267
    :goto_7b
    return-object v0

    .line 235
    :cond_7c
    :try_start_7c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

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

    .line 237
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_c3} :catch_56
    .catchall {:try_start_7c .. :try_end_c3} :catchall_18e

    .line 238
    :try_start_c3
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 239
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 240
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 242
    const-string v1, "User-Agent"

    const-string v3, "Dalvik/2.1.0 (Linux; U; Android 13; 2211133C Build/TKQ1.221114.001) 8.83.0 os/android model/2211133C mobi_app/android build/8830500 channel/xiaomi innerVer/8830500 osVer/13 network/2 grpc-java-cronet/1.36.1"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v1, "APP-KEY"

    const-string v3, "android64"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v1, "ENV"

    const-string v3, "prod"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 247
    const/16 v3, 0xc8

    if-eq v1, v3, :cond_10f

    .line 248
    const-string v3, "AppRecommendLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[App\u7b7e\u540d\u8bf7\u6c42] HTTP "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_107} :catch_12e
    .catchall {:try_start_c3 .. :try_end_107} :catchall_1a2

    .line 269
    if-eqz v0, :cond_10c

    .line 271
    :try_start_109
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_10c} :catch_196

    :cond_10c
    :goto_10c
    move-object v0, v2

    .line 249
    goto/16 :goto_7b

    .line 251
    :cond_10f
    :try_start_10f
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 252
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    :goto_124
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_132

    .line 255
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_124

    .line 265
    :catch_12e
    move-exception v1

    move-object v3, v0

    goto/16 :goto_59

    .line 257
    :cond_132
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 258
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 259
    if-eqz v1, :cond_147

    const-string v3, "code"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_186

    .line 260
    :cond_147
    const-string v4, "AppRecommendLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[App\u7b7e\u540d\u8bf7\u6c42] code="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v1, :cond_178

    const/4 v3, -0x1

    :goto_157
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " message="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 261
    if-nez v1, :cond_17f

    const-string v1, "null"

    :goto_165
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 260
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_170
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_170} :catch_12e
    .catchall {:try_start_10f .. :try_end_170} :catchall_1a2

    .line 269
    if-eqz v0, :cond_175

    .line 271
    :try_start_172
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_175
    .catch Ljava/lang/Exception; {:try_start_172 .. :try_end_175} :catch_199

    :cond_175
    :goto_175
    move-object v0, v2

    .line 262
    goto/16 :goto_7b

    .line 260
    :cond_178
    :try_start_178
    const-string v3, "code"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v3

    goto :goto_157

    .line 261
    :cond_17f
    const-string v5, "message"

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_184
    .catch Ljava/lang/Exception; {:try_start_178 .. :try_end_184} :catch_12e
    .catchall {:try_start_178 .. :try_end_184} :catchall_1a2

    move-result-object v1

    goto :goto_165

    .line 269
    :cond_186
    if-eqz v0, :cond_18b

    .line 271
    :try_start_188
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_18b
    .catch Ljava/lang/Exception; {:try_start_188 .. :try_end_18b} :catch_19b

    :cond_18b
    :goto_18b
    move-object v0, v1

    .line 264
    goto/16 :goto_7b

    .line 269
    :catchall_18e
    move-exception v0

    move-object v1, v0

    :goto_190
    if-eqz v2, :cond_195

    .line 271
    :try_start_192
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_195
    .catch Ljava/lang/Exception; {:try_start_192 .. :try_end_195} :catch_1a0

    .line 275
    :cond_195
    :goto_195
    throw v1

    .line 272
    :catch_196
    move-exception v0

    goto/16 :goto_10c

    :catch_199
    move-exception v0

    goto :goto_175

    :catch_19b
    move-exception v0

    goto :goto_18b

    :catch_19d
    move-exception v0

    goto/16 :goto_7a

    :catch_1a0
    move-exception v0

    goto :goto_195

    .line 269
    :catchall_1a2
    move-exception v1

    move-object v2, v0

    goto :goto_190

    :catchall_1a5
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    goto :goto_190
.end method
