.class public final Lmybl/AppSeasonBadgesLoader;
.super Ljava/lang/Object;
.source "AppSeasonBadgesLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmybl/AppSeasonBadgesLoader$Badge;,
        Lmybl/AppSeasonBadgesLoader$CacheEntry;
    }
.end annotation


# static fields
.field private static final CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lmybl/AppSeasonBadgesLoader$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static final CACHE_TTL_MS:J = 0x927c0L

.field private static final LOADING:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_CACHE_SEASONS:I = 0x8

.field private static final MAX_PAGES:I = 0x19

.field private static final PAGE_SIZE:I = 0x14

.field private static final TAG:Ljava/lang/String; = "SeasonBadges"

.field private static final URL:Ljava/lang/String; = "https://app.bilibili.com/x/v2/space/season/videos"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmybl/AppSeasonBadgesLoader;->CACHE:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmybl/AppSeasonBadgesLoader;->LOADING:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method private static getCached(J)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lmybl/AppSeasonBadgesLoader$Badge;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 168
    sget-object v2, Lmybl/AppSeasonBadgesLoader;->CACHE:Ljava/util/Map;

    monitor-enter v2

    .line 169
    :try_start_4
    sget-object v0, Lmybl/AppSeasonBadgesLoader;->CACHE:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/AppSeasonBadgesLoader$CacheEntry;

    .line 170
    if-nez v0, :cond_15

    .line 171
    monitor-exit v2

    move-object v0, v1

    .line 177
    :goto_14
    return-object v0

    .line 173
    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lmybl/AppSeasonBadgesLoader$CacheEntry;->time:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x927c0

    cmp-long v3, v4, v6

    if-lez v3, :cond_2f

    .line 174
    sget-object v0, Lmybl/AppSeasonBadgesLoader;->CACHE:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    monitor-exit v2

    move-object v0, v1

    goto :goto_14

    .line 177
    :cond_2f
    iget-object v0, v0, Lmybl/AppSeasonBadgesLoader$CacheEntry;->data:Ljava/util/Map;

    monitor-exit v2

    goto :goto_14

    .line 178
    :catchall_33
    move-exception v0

    monitor-exit v2
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_33

    throw v0
.end method

.method public static load(JJI)Ljava/util/Map;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lmybl/AppSeasonBadgesLoader$Badge;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    invoke-static/range {p0 .. p1}, Lmybl/AppSeasonBadgesLoader;->getCached(J)Ljava/util/Map;

    move-result-object v2

    .line 63
    if-eqz v2, :cond_7

    .line 164
    :goto_6
    return-object v2

    .line 66
    :cond_7
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-lez v2, :cond_13

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gtz v2, :cond_19

    .line 67
    :cond_13
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    goto :goto_6

    .line 70
    :cond_19
    sget-object v3, Lmybl/AppSeasonBadgesLoader;->LOADING:Ljava/util/List;

    monitor-enter v3

    .line 71
    :try_start_1c
    sget-object v2, Lmybl/AppSeasonBadgesLoader;->LOADING:Ljava/util/List;

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 73
    invoke-static/range {p0 .. p1}, Lmybl/AppSeasonBadgesLoader;->getCached(J)Ljava/util/Map;

    move-result-object v2

    .line 74
    if-eqz v2, :cond_33

    :goto_2e
    monitor-exit v3

    goto :goto_6

    .line 77
    :catchall_30
    move-exception v2

    monitor-exit v3
    :try_end_32
    .catchall {:try_start_1c .. :try_end_32} :catchall_30

    throw v2

    .line 74
    :cond_33
    :try_start_33
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    goto :goto_2e

    .line 76
    :cond_39
    sget-object v2, Lmybl/AppSeasonBadgesLoader;->LOADING:Ljava/util/List;

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    monitor-exit v3
    :try_end_43
    .catchall {:try_start_33 .. :try_end_43} :catchall_30

    .line 79
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 80
    const/4 v5, 0x0

    .line 82
    const/16 v3, 0x19

    .line 83
    if-lez p4, :cond_1fd

    .line 84
    add-int/lit8 v2, p4, 0x14

    add-int/lit8 v2, v2, -0x1

    :try_start_51
    div-int/lit8 v2, v2, 0x14
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_53} :catch_1a9
    .catchall {:try_start_51 .. :try_end_53} :catchall_1e6

    add-int/lit8 v2, v2, 0x1

    .line 85
    if-ge v2, v3, :cond_1fd

    .line 89
    :goto_57
    const-wide/16 v6, 0x0

    move-wide v8, v6

    move v3, v5

    .line 90
    :goto_5b
    if-ge v3, v2, :cond_1fa

    .line 91
    :try_start_5d
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 92
    const-string v6, "mobi_app"

    const-string v7, "android"

    invoke-virtual {v5, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v6, "platform"

    const-string v7, "android"

    invoke-virtual {v5, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v6, "build"

    const-string v7, "8830500"

    invoke-virtual {v5, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v6, "season_id"

    invoke-static/range {p0 .. p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v6, "vmid"

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v6, "sort"

    const-string v7, "asc"

    invoke-virtual {v5, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v6, "next"

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v6, "ps"

    const/16 v7, 0x14

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v6, "https://app.bilibili.com/x/v2/space/season/videos"

    invoke-static {v6, v5}, Lmybl/AppRecommendLoader;->requestSignedJson(Ljava/lang/String;Ljava/util/TreeMap;)Lcom/alibaba/fastjson/JSONObject;
    :try_end_a9
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_a9} :catch_1f8
    .catchall {:try_start_5d .. :try_end_a9} :catchall_1e6

    move-result-object v10

    .line 102
    if-nez v10, :cond_102

    move v2, v3

    .line 154
    :goto_ad
    sget-object v3, Lmybl/AppSeasonBadgesLoader;->LOADING:Ljava/util/List;

    monitor-enter v3

    .line 155
    :try_start_b0
    sget-object v5, Lmybl/AppSeasonBadgesLoader;->LOADING:Ljava/util/List;

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 156
    monitor-exit v3
    :try_end_ba
    .catchall {:try_start_b0 .. :try_end_ba} :catchall_1a6

    .line 159
    :goto_ba
    if-lez v2, :cond_c1

    .line 160
    move-wide/from16 v0, p0

    invoke-static {v0, v1, v4}, Lmybl/AppSeasonBadgesLoader;->putCached(JLjava/util/Map;)V

    .line 162
    :cond_c1
    const-string v3, "SeasonBadges"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load season="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " vmid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pages="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " badges="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 163
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 162
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 164
    goto/16 :goto_6

    .line 106
    :cond_102
    :try_start_102
    const-string v5, "item"

    invoke-virtual {v10, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v11

    .line 107
    if-eqz v11, :cond_1fa

    invoke-virtual {v11}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_112

    move v2, v3

    .line 108
    goto :goto_ad

    .line 110
    :cond_112
    add-int/lit8 v3, v3, 0x1

    .line 111
    const/4 v5, 0x0

    :goto_115
    invoke-virtual {v11}, Lcom/alibaba/fastjson/JSONArray;->size()I
    :try_end_118
    .catch Ljava/lang/Throwable; {:try_start_102 .. :try_end_118} :catch_1f8
    .catchall {:try_start_102 .. :try_end_118} :catchall_1e6

    move-result v6

    if-ge v5, v6, :cond_18e

    .line 113
    :try_start_11b
    invoke-virtual {v11, v5}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v12

    .line 114
    if-nez v12, :cond_124

    .line 111
    :cond_121
    :goto_121
    add-int/lit8 v5, v5, 0x1

    goto :goto_115

    .line 117
    :cond_124
    const-string v6, "goto"

    invoke-virtual {v12, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 118
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_138

    const-string v7, "av"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_121

    .line 121
    :cond_138
    const-string v6, "param"

    invoke-virtual {v12, v6}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v6

    .line 122
    const-wide/16 v14, 0x0

    cmp-long v13, v6, v14

    if-gtz v13, :cond_14a

    .line 123
    const-string v6, "aid"

    invoke-virtual {v12, v6}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v6

    .line 125
    :cond_14a
    const-wide/16 v14, 0x0

    cmp-long v13, v6, v14

    if-lez v13, :cond_121

    .line 128
    const-string v13, "badges"

    invoke-virtual {v12, v13}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v12

    .line 129
    if-eqz v12, :cond_121

    invoke-virtual {v12}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_121

    .line 132
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v12

    .line 133
    if-eqz v12, :cond_121

    .line 136
    const-string v13, "text"

    invoke-virtual {v12, v13}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 137
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_121

    const-string v14, "\u5145\u7535"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_121

    .line 140
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    new-instance v7, Lmybl/AppSeasonBadgesLoader$Badge;

    const-string v14, "bg_color"

    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v13, v12}, Lmybl/AppSeasonBadgesLoader$Badge;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18b
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_18b} :catch_18c
    .catch Ljava/lang/Throwable; {:try_start_11b .. :try_end_18b} :catch_1f8
    .catchall {:try_start_11b .. :try_end_18b} :catchall_1e6

    goto :goto_121

    .line 141
    :catch_18c
    move-exception v6

    goto :goto_121

    .line 145
    :cond_18e
    :try_start_18e
    const-string v5, "next"

    invoke-virtual {v10, v5}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v6

    .line 146
    cmp-long v5, v6, v8

    if-lez v5, :cond_1fa

    invoke-virtual {v11}, Lcom/alibaba/fastjson/JSONArray;->size()I
    :try_end_19b
    .catch Ljava/lang/Throwable; {:try_start_18e .. :try_end_19b} :catch_1f8
    .catchall {:try_start_18e .. :try_end_19b} :catchall_1e6

    move-result v5

    const/16 v8, 0x14

    if-ge v5, v8, :cond_1a3

    move v2, v3

    .line 147
    goto/16 :goto_ad

    :cond_1a3
    move-wide v8, v6

    .line 150
    goto/16 :goto_5b

    .line 156
    :catchall_1a6
    move-exception v2

    :try_start_1a7
    monitor-exit v3
    :try_end_1a8
    .catchall {:try_start_1a7 .. :try_end_1a8} :catchall_1a6

    throw v2

    .line 151
    :catch_1a9
    move-exception v2

    move v3, v5

    .line 152
    :goto_1ab
    :try_start_1ab
    const-string v5, "SeasonBadges"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "load exception season="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p0

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d3
    .catchall {:try_start_1ab .. :try_end_1d3} :catchall_1e6

    .line 154
    sget-object v5, Lmybl/AppSeasonBadgesLoader;->LOADING:Ljava/util/List;

    monitor-enter v5

    .line 155
    :try_start_1d6
    sget-object v2, Lmybl/AppSeasonBadgesLoader;->LOADING:Ljava/util/List;

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 156
    monitor-exit v5

    move v2, v3

    .line 157
    goto/16 :goto_ba

    .line 156
    :catchall_1e3
    move-exception v2

    monitor-exit v5
    :try_end_1e5
    .catchall {:try_start_1d6 .. :try_end_1e5} :catchall_1e3

    throw v2

    .line 154
    :catchall_1e6
    move-exception v2

    sget-object v3, Lmybl/AppSeasonBadgesLoader;->LOADING:Ljava/util/List;

    monitor-enter v3

    .line 155
    :try_start_1ea
    sget-object v4, Lmybl/AppSeasonBadgesLoader;->LOADING:Ljava/util/List;

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 156
    monitor-exit v3
    :try_end_1f4
    .catchall {:try_start_1ea .. :try_end_1f4} :catchall_1f5

    .line 157
    throw v2

    .line 156
    :catchall_1f5
    move-exception v2

    :try_start_1f6
    monitor-exit v3
    :try_end_1f7
    .catchall {:try_start_1f6 .. :try_end_1f7} :catchall_1f5

    throw v2

    .line 151
    :catch_1f8
    move-exception v2

    goto :goto_1ab

    :cond_1fa
    move v2, v3

    goto/16 :goto_ad

    :cond_1fd
    move v2, v3

    goto/16 :goto_57
.end method

.method private static putCached(JLjava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lmybl/AppSeasonBadgesLoader$Badge;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 182
    sget-object v5, Lmybl/AppSeasonBadgesLoader;->CACHE:Ljava/util/Map;

    monitor-enter v5

    .line 183
    :try_start_3
    sget-object v0, Lmybl/AppSeasonBadgesLoader;->CACHE:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_58

    sget-object v0, Lmybl/AppSeasonBadgesLoader;->CACHE:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    .line 184
    const/4 v4, 0x0

    .line 185
    const-wide v2, 0x7fffffffffffffffL

    .line 186
    sget-object v0, Lmybl/AppSeasonBadgesLoader;->CACHE:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_29
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 187
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmybl/AppSeasonBadgesLoader$CacheEntry;

    iget-wide v8, v1, Lmybl/AppSeasonBadgesLoader$CacheEntry;->time:J

    cmp-long v1, v8, v2

    if-gez v1, :cond_6f

    .line 188
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmybl/AppSeasonBadgesLoader$CacheEntry;

    iget-wide v2, v1, Lmybl/AppSeasonBadgesLoader$CacheEntry;->time:J

    .line 189
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    :goto_4f
    move-object v4, v0

    .line 191
    goto :goto_29

    .line 192
    :cond_51
    if-eqz v4, :cond_58

    .line 193
    sget-object v0, Lmybl/AppSeasonBadgesLoader;->CACHE:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_58
    sget-object v0, Lmybl/AppSeasonBadgesLoader;->CACHE:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lmybl/AppSeasonBadgesLoader$CacheEntry;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v2, p2, v6, v7}, Lmybl/AppSeasonBadgesLoader$CacheEntry;-><init>(Ljava/util/Map;J)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    monitor-exit v5

    .line 198
    return-void

    .line 197
    :catchall_6c
    move-exception v0

    monitor-exit v5
    :try_end_6e
    .catchall {:try_start_3 .. :try_end_6e} :catchall_6c

    throw v0

    :cond_6f
    move-object v0, v4

    goto :goto_4f
.end method
