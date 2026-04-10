.class public Lmybl/VideoViewParams;
.super Ljava/lang/Object;
.source "VideoViewParams.java"


# static fields
.field private static appContext:Landroid/content/Context;

.field public static cdn_history:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static currentCdn:Ljava/lang/String;

.field public static currentVideoId:Ljava/lang/String;

.field public static hasCommonCdn:Z

.field public static prefect_cdn:Ljava/lang/String;

.field private static selectedBestCdn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmybl/VideoViewParams;->cdn_history:Ljava/util/List;

    .line 17
    sput-object v1, Lmybl/VideoViewParams;->prefect_cdn:Ljava/lang/String;

    .line 18
    sput-object v1, Lmybl/VideoViewParams;->appContext:Landroid/content/Context;

    .line 19
    sput-object v1, Lmybl/VideoViewParams;->currentVideoId:Ljava/lang/String;

    .line 20
    sput-object v1, Lmybl/VideoViewParams;->currentCdn:Ljava/lang/String;

    .line 21
    sput-object v1, Lmybl/VideoViewParams;->selectedBestCdn:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lmybl/VideoViewParams;->hasCommonCdn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CloestURL(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 52
    const-string v0, "video"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 53
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 54
    const-string v0, "\\?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 55
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v5, v0, v2

    move v0, v1

    .line 56
    :goto_21
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_4e

    .line 57
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v6, "base_url"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    const-string v6, "\\?"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v1

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 59
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b

    move-object p0, v2

    .line 56
    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_4e
    move v0, v1

    .line 61
    :goto_4f
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_7c

    .line 62
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "base_url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    const-string v3, "\\?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 64
    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    aget-object v3, v3, v6

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    move-object p0, v2

    .line 61
    :cond_79
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    .line 66
    :cond_7c
    sget-object v0, Lmybl/VideoViewParams;->prefect_cdn:Ljava/lang/String;

    if-eqz v0, :cond_9e

    sget-object v0, Lmybl/VideoViewParams;->prefect_cdn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9e

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v1, Lmybl/VideoViewParams;->prefect_cdn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    .line 67
    :cond_9e
    return-object p0
.end method

.method private static collectAllCdns(Lorg/json/JSONArray;Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 145
    move v0, v1

    :goto_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_69

    .line 146
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 147
    if-eqz v2, :cond_66

    .line 148
    const-string v3, "base_url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 149
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 150
    if-eqz v4, :cond_32

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_32

    .line 151
    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-static {v4}, Lmybl/CdnSelector;->getCdnScore(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_32
    const-string v3, "backup_url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 156
    if-eqz v3, :cond_66

    move v2, v1

    .line 157
    :goto_3b
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_66

    .line 158
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    .line 159
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 160
    if-eqz v5, :cond_63

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_63

    .line 161
    invoke-interface {p1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-static {v5}, Lmybl/CdnSelector;->getCdnScore(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_63
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 145
    :cond_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 168
    :cond_69
    return-void
.end method

.method private static filterData(IZLorg/json/JSONArray;)Landroid/os/Bundle;
    .locals 17

    .prologue
    .line 187
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 188
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 189
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 190
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 191
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 192
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 194
    const/4 v1, 0x0

    move v2, v1

    :goto_20
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_121

    .line 195
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 196
    if-eqz v3, :cond_11c

    .line 197
    const-string v1, "id"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 198
    const-string v4, "codecid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 199
    const-string v4, "bandwidth"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    .line 200
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .line 201
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 202
    const-string v1, "base_url"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 203
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 204
    sget-object v6, Lmybl/VideoViewParams;->cdn_history:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_66

    sget-object v6, Lmybl/VideoViewParams;->cdn_history:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_66
    invoke-virtual {v8, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_70

    move/from16 v0, p0

    if-ne v0, v5, :cond_9c

    :cond_70
    const/4 v1, 0x1

    .line 207
    :goto_71
    if-eqz v1, :cond_11c

    .line 209
    const/4 v5, 0x0

    .line 210
    const/4 v6, 0x0

    .line 212
    const-string v1, "backup_url"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 213
    if-eqz v15, :cond_164

    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_164

    .line 214
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 215
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    const/4 v1, 0x0

    :goto_8c
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_9e

    .line 217
    invoke-virtual {v15, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_8c

    .line 206
    :cond_9c
    const/4 v1, 0x0

    goto :goto_71

    .line 220
    :cond_9e
    sget-object v1, Lmybl/VideoViewParams;->selectedBestCdn:Ljava/lang/String;

    invoke-static {v3, v1}, Lmybl/VideoViewParams;->findUrlByCdn(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    if-nez v1, :cond_161

    .line 222
    invoke-static {v3}, Lmybl/VideoViewParams;->sortUrlsByCdnScore(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 223
    const/4 v1, 0x0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v4, v1

    .line 226
    :goto_b2
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 227
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_bb
    :goto_bb
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 228
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_bb

    .line 229
    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_bb

    .line 232
    :cond_d1
    invoke-static {v15}, Lmybl/VideoViewParams;->sortUrlsByCdnScore(Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    .line 234
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_15f

    const/4 v1, 0x0

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v3, v1

    .line 235
    :goto_e3
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    const/4 v5, 0x1

    if-le v1, v5, :cond_15d

    const/4 v1, 0x1

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 238
    :goto_f1
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 239
    const/4 v6, 0x7

    move/from16 v0, p0

    if-eq v0, v6, :cond_10a

    const/16 v6, 0xc

    move/from16 v0, p0

    if-eq v0, v6, :cond_10a

    const/16 v6, 0xd

    move/from16 v0, p0

    if-ne v0, v6, :cond_10c

    .line 240
    :cond_10a
    sput-object v5, Lmybl/VideoViewParams;->currentCdn:Ljava/lang/String;

    .line 243
    :cond_10c
    invoke-virtual {v8, v14, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    if-eqz v3, :cond_114

    .line 245
    invoke-virtual {v9, v14, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_114
    if-eqz v1, :cond_119

    .line 248
    invoke-virtual {v10, v14, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_119
    invoke-virtual {v11, v14, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 194
    :cond_11c
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_20

    .line 254
    :cond_121
    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v1

    new-array v4, v1, [I

    .line 255
    const/4 v1, 0x0

    .line 256
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v1

    :goto_12d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_143

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v4, v2

    move v2, v3

    goto :goto_12d

    .line 257
    :cond_143
    const-string v1, "dash_id"

    invoke-virtual {v7, v1, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 258
    const-string v1, "dash_base_url"

    invoke-virtual {v7, v1, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 259
    const-string v1, "dash_backup_url0"

    invoke-virtual {v7, v1, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 260
    const-string v1, "dash_backup_url1"

    invoke-virtual {v7, v1, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 261
    const-string v1, "dash_bandwidth"

    invoke-virtual {v7, v1, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 263
    return-object v7

    :cond_15d
    move-object v1, v6

    goto :goto_f1

    :cond_15f
    move-object v3, v5

    goto :goto_e3

    :cond_161
    move-object v4, v1

    goto/16 :goto_b2

    :cond_164
    move-object v1, v6

    move-object v3, v5

    goto :goto_f1
.end method

.method private static findUrlByCdn(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 281
    if-nez p1, :cond_5

    move-object v0, v1

    .line 288
    :goto_4
    return-object v0

    .line 282
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 283
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 284
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_4

    :cond_24
    move-object v0, v1

    .line 288
    goto :goto_4
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lmybl/VideoViewParams;->appContext:Landroid/content/Context;

    .line 26
    sget-object v0, Lmybl/VideoViewParams;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lmybl/CdnSelector;->init(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method private static raceAndFindBestCdn(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 10

    .prologue
    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 101
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 103
    const-string v1, "video"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 104
    if-eqz v1, :cond_19

    .line 105
    invoke-static {v1, v0, v3}, Lmybl/VideoViewParams;->collectAllCdns(Lorg/json/JSONArray;Ljava/util/Map;Ljava/util/Map;)V

    .line 108
    :cond_19
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 109
    if-eqz v1, :cond_24

    .line 110
    invoke-static {v1, v0, v3}, Lmybl/VideoViewParams;->collectAllCdns(Lorg/json/JSONArray;Ljava/util/Map;Ljava/util/Map;)V

    .line 113
    :cond_24
    const-string v1, "PlaySpeed"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CDN_RACE] cdnToUrl.size="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", cdns="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 116
    const-string v0, "PlaySpeed"

    const-string v1, "[CDN_RACE] No CDN found, using default"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const-string v0, "upos-sz-mirror08c.bilivideo.com"

    .line 141
    :cond_5d
    :goto_5d
    return-object v0

    .line 120
    :cond_5e
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 121
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 122
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 123
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 124
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 125
    if-eqz v2, :cond_98

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 126
    :goto_8f
    new-instance v8, Lmybl/CdnSelector$CdnUrlInfo;

    invoke-direct {v8, v0, v1, v2}, Lmybl/CdnSelector$CdnUrlInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 127
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6b

    .line 125
    :cond_98
    const/16 v2, 0x46

    goto :goto_8f

    .line 130
    :cond_9b
    sget-object v0, Lmybl/VideoViewParams;->appContext:Landroid/content/Context;

    sget-object v1, Lmybl/VideoViewParams;->currentVideoId:Ljava/lang/String;

    invoke-static {v0, v1, v6}, Lmybl/CdnSelector;->selectBestUrl(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Lmybl/CdnSelector$RaceResult;

    move-result-object v1

    .line 132
    const-string v2, "PlaySpeed"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CDN_RACE_DONE] winner="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_115

    iget-object v0, v1, Lmybl/CdnSelector$RaceResult;->winningCdn:Ljava/lang/String;

    :goto_b4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", raceTime="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_118

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v1, Lmybl/CdnSelector$RaceResult;->raceTime:J

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "ms"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_d5
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", fromCache="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_11b

    iget-boolean v0, v1, Lmybl/CdnSelector$RaceResult;->fromCache:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_e7
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", total elapsed="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    if-eqz v1, :cond_11e

    iget-object v0, v1, Lmybl/CdnSelector$RaceResult;->winningCdn:Ljava/lang/String;

    if-eqz v0, :cond_11e

    .line 135
    const/4 v0, 0x1

    sput-boolean v0, Lmybl/VideoViewParams;->hasCommonCdn:Z

    .line 136
    iget-object v0, v1, Lmybl/CdnSelector$RaceResult;->winningCdn:Ljava/lang/String;

    goto/16 :goto_5d

    .line 132
    :cond_115
    const-string v0, "null"

    goto :goto_b4

    :cond_118
    const-string v0, "null"

    goto :goto_d5

    :cond_11b
    const-string v0, "null"

    goto :goto_e7

    .line 139
    :cond_11e
    invoke-static {v3}, Lmybl/VideoViewParams;->selectCdnByScore(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 140
    const-string v1, "PlaySpeed"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CDN_RACE_FALLBACK] No race winner, using bestCdnByScore="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    if-nez v0, :cond_5d

    const-string v0, "upos-sz-mirror08c.bilivideo.com"

    goto/16 :goto_5d
.end method

.method public static reportPlaybackFailed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    sget-object v0, Lmybl/VideoViewParams;->currentCdn:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 41
    sget-object v0, Lmybl/VideoViewParams;->currentCdn:Ljava/lang/String;

    invoke-static {v0, v1, v1}, Lmybl/CdnSelector;->updateCdnScore(Ljava/lang/String;ZZ)V

    .line 43
    :cond_a
    return-void
.end method

.method public static reportPlaybackSuccess()V
    .locals 3

    .prologue
    .line 34
    sget-object v0, Lmybl/VideoViewParams;->currentCdn:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 35
    sget-object v0, Lmybl/VideoViewParams;->currentCdn:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmybl/CdnSelector;->updateCdnScore(Ljava/lang/String;ZZ)V

    .line 37
    :cond_b
    return-void
.end method

.method public static reportPlaybackTimeout()V
    .locals 3

    .prologue
    .line 46
    sget-object v0, Lmybl/VideoViewParams;->currentCdn:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 47
    sget-object v0, Lmybl/VideoViewParams;->currentCdn:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmybl/CdnSelector;->updateCdnScore(Ljava/lang/String;ZZ)V

    .line 49
    :cond_b
    return-void
.end method

.method private static selectCdnByScore(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 171
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 183
    :cond_7
    return-object v3

    .line 174
    :cond_8
    const/4 v2, -0x1

    .line 176
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 177
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v2, :cond_3c

    .line 178
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 179
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_39
    move v2, v1

    move-object v3, v0

    .line 181
    goto :goto_11

    :cond_3c
    move v1, v2

    move-object v0, v3

    goto :goto_39
.end method

.method public static setCurrentVideo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    sput-object p0, Lmybl/VideoViewParams;->currentVideoId:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private static sortUrlsByCdnScore(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    new-instance v0, Lmybl/VideoViewParams$1;

    invoke-direct {v0}, Lmybl/VideoViewParams$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 277
    return-object p0
.end method

.method public static toBundleData(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 72
    const-string v4, "PlaySpeed"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TO_BUNDLE_START] toBundleData() start, video_count="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p0, :cond_12f

    const-string v0, "video"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_12f

    const-string v0, "video"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    :goto_26
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", audio_count="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p0, :cond_132

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_132

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    :goto_44
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 75
    invoke-static {p0}, Lmybl/VideoViewParams;->raceAndFindBestCdn(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmybl/VideoViewParams;->selectedBestCdn:Ljava/lang/String;

    .line 77
    const-string v0, "PlaySpeed"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[TO_BUNDLE_RACE_DONE] selectedBestCdn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lmybl/VideoViewParams;->selectedBestCdn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", race elapsed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 80
    const-string v5, "dolby"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_b4

    const-string v5, "dolby"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_b4

    const-string v5, "dolby"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 81
    :cond_b4
    const-string v5, "flac"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_d9

    const-string v5, "flac"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_d9

    const-string v5, "flac"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 82
    :cond_d9
    const-string v5, "dash_video_audio"

    const/4 v6, -0x1

    invoke-static {v6, v1, v0}, Lmybl/VideoViewParams;->filterData(IZLorg/json/JSONArray;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 84
    const-string v0, "H264"

    .line 85
    const/4 v0, 0x7

    .line 86
    const-string v1, "video/hevc"

    sget-object v5, Lbl/afo;->prefect_codec:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_135

    .line 87
    const-string v0, "HEVC"

    .line 88
    const/16 v0, 0xc

    .line 93
    :cond_f4
    :goto_f4
    const-string v1, "dash_video_264"

    const/4 v5, 0x1

    const-string v6, "video"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-static {v0, v5, v6}, Lmybl/VideoViewParams;->filterData(IZLorg/json/JSONArray;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 94
    const-string v0, "PlaySpeed"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TO_BUNDLE_END] toBundleData() done, total elapsed="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms, selectedCdn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lmybl/VideoViewParams;->selectedBestCdn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-object v4

    :cond_12f
    move v0, v1

    .line 72
    goto/16 :goto_26

    :cond_132
    move v0, v1

    goto/16 :goto_44

    .line 89
    :cond_135
    const-string v1, "video/av01"

    sget-object v5, Lbl/afo;->prefect_codec:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f4

    .line 90
    const-string v0, "AV01"

    .line 91
    const/16 v0, 0xd

    goto :goto_f4
.end method
