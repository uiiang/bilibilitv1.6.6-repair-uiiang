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

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmybl/VideoViewParams;->cdn_history:Ljava/util/List;

    .line 16
    sput-object v1, Lmybl/VideoViewParams;->prefect_cdn:Ljava/lang/String;

    .line 17
    sput-object v1, Lmybl/VideoViewParams;->appContext:Landroid/content/Context;

    .line 18
    sput-object v1, Lmybl/VideoViewParams;->currentVideoId:Ljava/lang/String;

    .line 19
    sput-object v1, Lmybl/VideoViewParams;->currentCdn:Ljava/lang/String;

    .line 20
    sput-object v1, Lmybl/VideoViewParams;->selectedBestCdn:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lmybl/VideoViewParams;->hasCommonCdn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CloestURL(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 51
    const-string v0, "video"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 52
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 53
    const-string v0, "\\?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 54
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v5, v0, v2

    move v0, v1

    .line 55
    :goto_21
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_4e

    .line 56
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v6, "base_url"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    const-string v6, "\\?"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v1

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 58
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b

    move-object p0, v2

    .line 55
    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_4e
    move v0, v1

    .line 60
    :goto_4f
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_7c

    .line 61
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "base_url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    const-string v3, "\\?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 63
    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    aget-object v3, v3, v6

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    move-object p0, v2

    .line 60
    :cond_79
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    .line 65
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

    .line 66
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

    .line 132
    move v0, v1

    :goto_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_69

    .line 133
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 134
    if-eqz v2, :cond_66

    .line 135
    const-string v3, "base_url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 137
    if-eqz v4, :cond_32

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_32

    .line 138
    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-static {v4}, Lmybl/CdnSelector;->getCdnScore(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_32
    const-string v3, "backup_url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 143
    if-eqz v3, :cond_66

    move v2, v1

    .line 144
    :goto_3b
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_66

    .line 145
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    .line 146
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 147
    if-eqz v5, :cond_63

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_63

    .line 148
    invoke-interface {p1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-static {v5}, Lmybl/CdnSelector;->getCdnScore(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_63
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 132
    :cond_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 155
    :cond_69
    return-void
.end method

.method private static filterData(IZLorg/json/JSONArray;)Landroid/os/Bundle;
    .locals 17

    .prologue
    .line 174
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 175
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 176
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 177
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 178
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 179
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 181
    const/4 v1, 0x0

    move v2, v1

    :goto_20
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_121

    .line 182
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 183
    if-eqz v3, :cond_11c

    .line 184
    const-string v1, "id"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 185
    const-string v4, "codecid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 186
    const-string v4, "bandwidth"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    .line 187
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .line 188
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 189
    const-string v1, "base_url"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 190
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 191
    sget-object v6, Lmybl/VideoViewParams;->cdn_history:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_66

    sget-object v6, Lmybl/VideoViewParams;->cdn_history:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_66
    invoke-virtual {v8, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_70

    move/from16 v0, p0

    if-ne v0, v5, :cond_9c

    :cond_70
    const/4 v1, 0x1

    .line 194
    :goto_71
    if-eqz v1, :cond_11c

    .line 196
    const/4 v5, 0x0

    .line 197
    const/4 v6, 0x0

    .line 199
    const-string v1, "backup_url"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 200
    if-eqz v15, :cond_164

    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_164

    .line 201
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 202
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    const/4 v1, 0x0

    :goto_8c
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_9e

    .line 204
    invoke-virtual {v15, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_8c

    .line 193
    :cond_9c
    const/4 v1, 0x0

    goto :goto_71

    .line 207
    :cond_9e
    sget-object v1, Lmybl/VideoViewParams;->selectedBestCdn:Ljava/lang/String;

    invoke-static {v3, v1}, Lmybl/VideoViewParams;->findUrlByCdn(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    if-nez v1, :cond_161

    .line 209
    invoke-static {v3}, Lmybl/VideoViewParams;->sortUrlsByCdnScore(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 210
    const/4 v1, 0x0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v4, v1

    .line 213
    :goto_b2
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 214
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

    .line 215
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_bb

    .line 216
    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_bb

    .line 219
    :cond_d1
    invoke-static {v15}, Lmybl/VideoViewParams;->sortUrlsByCdnScore(Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    .line 221
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_15f

    const/4 v1, 0x0

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v3, v1

    .line 222
    :goto_e3
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    const/4 v5, 0x1

    if-le v1, v5, :cond_15d

    const/4 v1, 0x1

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 225
    :goto_f1
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 226
    const/4 v6, 0x7

    move/from16 v0, p0

    if-eq v0, v6, :cond_10a

    const/16 v6, 0xc

    move/from16 v0, p0

    if-eq v0, v6, :cond_10a

    const/16 v6, 0xd

    move/from16 v0, p0

    if-ne v0, v6, :cond_10c

    .line 227
    :cond_10a
    sput-object v5, Lmybl/VideoViewParams;->currentCdn:Ljava/lang/String;

    .line 230
    :cond_10c
    invoke-virtual {v8, v14, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    if-eqz v3, :cond_114

    .line 232
    invoke-virtual {v9, v14, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_114
    if-eqz v1, :cond_119

    .line 235
    invoke-virtual {v10, v14, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_119
    invoke-virtual {v11, v14, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 181
    :cond_11c
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_20

    .line 241
    :cond_121
    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v1

    new-array v4, v1, [I

    .line 242
    const/4 v1, 0x0

    .line 243
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

    .line 244
    :cond_143
    const-string v1, "dash_id"

    invoke-virtual {v7, v1, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 245
    const-string v1, "dash_base_url"

    invoke-virtual {v7, v1, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 246
    const-string v1, "dash_backup_url0"

    invoke-virtual {v7, v1, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 247
    const-string v1, "dash_backup_url1"

    invoke-virtual {v7, v1, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 248
    const-string v1, "dash_bandwidth"

    invoke-virtual {v7, v1, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 250
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

    .line 268
    if-nez p1, :cond_5

    move-object v0, v1

    .line 275
    :goto_4
    return-object v0

    .line 269
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

    .line 270
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 271
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_4

    :cond_24
    move-object v0, v1

    .line 275
    goto :goto_4
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lmybl/VideoViewParams;->appContext:Landroid/content/Context;

    .line 25
    sget-object v0, Lmybl/VideoViewParams;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lmybl/CdnSelector;->init(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method private static raceAndFindBestCdn(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 94
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 96
    const-string v1, "video"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 97
    if-eqz v1, :cond_15

    .line 98
    invoke-static {v1, v0, v3}, Lmybl/VideoViewParams;->collectAllCdns(Lorg/json/JSONArray;Ljava/util/Map;Ljava/util/Map;)V

    .line 101
    :cond_15
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 102
    if-eqz v1, :cond_20

    .line 103
    invoke-static {v1, v0, v3}, Lmybl/VideoViewParams;->collectAllCdns(Lorg/json/JSONArray;Ljava/util/Map;Ljava/util/Map;)V

    .line 106
    :cond_20
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 107
    const-string v0, "upos-sz-mirror08c.bilivideo.com"

    .line 128
    :cond_28
    :goto_28
    return-object v0

    .line 110
    :cond_29
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 111
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_36
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 112
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 113
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 114
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 115
    if-eqz v2, :cond_63

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 116
    :goto_5a
    new-instance v6, Lmybl/CdnSelector$CdnUrlInfo;

    invoke-direct {v6, v0, v1, v2}, Lmybl/CdnSelector$CdnUrlInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 117
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 115
    :cond_63
    const/16 v2, 0x46

    goto :goto_5a

    .line 120
    :cond_66
    sget-object v0, Lmybl/VideoViewParams;->appContext:Landroid/content/Context;

    sget-object v1, Lmybl/VideoViewParams;->currentVideoId:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Lmybl/CdnSelector;->selectBestUrl(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Lmybl/CdnSelector$RaceResult;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_7a

    iget-object v1, v0, Lmybl/CdnSelector$RaceResult;->winningCdn:Ljava/lang/String;

    if-eqz v1, :cond_7a

    .line 123
    const/4 v1, 0x1

    sput-boolean v1, Lmybl/VideoViewParams;->hasCommonCdn:Z

    .line 124
    iget-object v0, v0, Lmybl/CdnSelector$RaceResult;->winningCdn:Ljava/lang/String;

    goto :goto_28

    .line 127
    :cond_7a
    invoke-static {v3}, Lmybl/VideoViewParams;->selectCdnByScore(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 128
    if-nez v0, :cond_28

    const-string v0, "upos-sz-mirror08c.bilivideo.com"

    goto :goto_28
.end method

.method public static reportPlaybackFailed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    sget-object v0, Lmybl/VideoViewParams;->currentCdn:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 40
    sget-object v0, Lmybl/VideoViewParams;->currentCdn:Ljava/lang/String;

    invoke-static {v0, v1, v1}, Lmybl/CdnSelector;->updateCdnScore(Ljava/lang/String;ZZ)V

    .line 42
    :cond_a
    return-void
.end method

.method public static reportPlaybackSuccess()V
    .locals 3

    .prologue
    .line 33
    sget-object v0, Lmybl/VideoViewParams;->currentCdn:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 34
    sget-object v0, Lmybl/VideoViewParams;->currentCdn:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmybl/CdnSelector;->updateCdnScore(Ljava/lang/String;ZZ)V

    .line 36
    :cond_b
    return-void
.end method

.method public static reportPlaybackTimeout()V
    .locals 3

    .prologue
    .line 45
    sget-object v0, Lmybl/VideoViewParams;->currentCdn:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 46
    sget-object v0, Lmybl/VideoViewParams;->currentCdn:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmybl/CdnSelector;->updateCdnScore(Ljava/lang/String;ZZ)V

    .line 48
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

    .line 158
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 170
    :cond_7
    return-object v3

    .line 161
    :cond_8
    const/4 v2, -0x1

    .line 163
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

    .line 164
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v2, :cond_3c

    .line 165
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 166
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_39
    move v2, v1

    move-object v3, v0

    .line 168
    goto :goto_11

    :cond_3c
    move v1, v2

    move-object v0, v3

    goto :goto_39
.end method

.method public static setCurrentVideo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    sput-object p0, Lmybl/VideoViewParams;->currentVideoId:Ljava/lang/String;

    .line 30
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
    .line 254
    new-instance v0, Lmybl/VideoViewParams$1;

    invoke-direct {v0}, Lmybl/VideoViewParams$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 264
    return-object p0
.end method

.method public static toBundleData(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 70
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 72
    invoke-static {p0}, Lmybl/VideoViewParams;->raceAndFindBestCdn(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmybl/VideoViewParams;->selectedBestCdn:Ljava/lang/String;

    .line 74
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 75
    const-string v2, "dolby"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_36

    const-string v2, "dolby"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_36

    const-string v2, "dolby"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 76
    :cond_36
    const-string v2, "flac"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_5b

    const-string v2, "flac"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_5b

    const-string v2, "flac"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 77
    :cond_5b
    const-string v2, "dash_video_audio"

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Lmybl/VideoViewParams;->filterData(IZLorg/json/JSONArray;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 79
    const-string v0, "H264"

    .line 80
    const/4 v0, 0x7

    .line 81
    const-string v2, "video/hevc"

    sget-object v3, Lbl/afo;->prefect_codec:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 82
    const-string v0, "HEVC"

    .line 83
    const/16 v0, 0xc

    .line 88
    :cond_77
    :goto_77
    const-string v2, "dash_video_264"

    const/4 v3, 0x1

    const-string v4, "video"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lmybl/VideoViewParams;->filterData(IZLorg/json/JSONArray;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 89
    return-object v1

    .line 84
    :cond_88
    const-string v2, "video/av01"

    sget-object v3, Lbl/afo;->prefect_codec:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 85
    const-string v0, "AV01"

    .line 86
    const/16 v0, 0xd

    goto :goto_77
.end method
