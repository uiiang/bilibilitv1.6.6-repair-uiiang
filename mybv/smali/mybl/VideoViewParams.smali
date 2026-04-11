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

.field private static prepareStartTime:J

.field private static selectedBestCdn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmybl/VideoViewParams;->cdn_history:Ljava/util/List;

    .line 18
    sput-object v1, Lmybl/VideoViewParams;->prefect_cdn:Ljava/lang/String;

    .line 19
    sput-object v1, Lmybl/VideoViewParams;->appContext:Landroid/content/Context;

    .line 20
    sput-object v1, Lmybl/VideoViewParams;->currentVideoId:Ljava/lang/String;

    .line 21
    sput-object v1, Lmybl/VideoViewParams;->currentCdn:Ljava/lang/String;

    .line 22
    sput-object v1, Lmybl/VideoViewParams;->selectedBestCdn:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lmybl/VideoViewParams;->hasCommonCdn:Z

    .line 24
    const-wide/16 v0, 0x0

    sput-wide v0, Lmybl/VideoViewParams;->prepareStartTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CloestURL(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 54
    const-string v0, "video"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 55
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 56
    const-string v0, "\\?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 57
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v5, v0, v2

    .line 60
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 62
    :goto_26
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_87

    .line 63
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 64
    const-string v7, "base_url"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 65
    const-string v8, "\\?"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v1

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 66
    array-length v9, v8

    add-int/lit8 v9, v9, -0x1

    aget-object v8, v8, v9

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_84

    .line 67
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    const-string v7, "backup_url"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 70
    if-eqz v7, :cond_84

    move v2, v1

    .line 71
    :goto_5b
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v2, v8, :cond_84

    .line 72
    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v8

    .line 73
    const-string v9, "\\?"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v1

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 74
    array-length v10, v9

    add-int/lit8 v10, v10, -0x1

    aget-object v9, v9, v10

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_81

    .line 75
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_81
    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    .line 62
    :cond_84
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_87
    move v0, v1

    .line 81
    :goto_88
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_e9

    .line 82
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 83
    const-string v3, "base_url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 84
    const-string v7, "\\?"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v1

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 85
    array-length v8, v7

    add-int/lit8 v8, v8, -0x1

    aget-object v7, v7, v8

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e6

    .line 86
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    const-string v3, "backup_url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 88
    if-eqz v3, :cond_e6

    move v2, v1

    .line 89
    :goto_bd
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_e6

    .line 90
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    .line 91
    const-string v8, "\\?"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v1

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 92
    array-length v9, v8

    add-int/lit8 v9, v9, -0x1

    aget-object v8, v8, v9

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e3

    .line 93
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_e3
    add-int/lit8 v2, v2, 0x1

    goto :goto_bd

    .line 81
    :cond_e6
    add-int/lit8 v0, v0, 0x1

    goto :goto_88

    .line 100
    :cond_e9
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16b

    .line 103
    sget-object v0, Lmybl/VideoViewParams;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_16d

    .line 104
    sget-object v0, Lmybl/VideoViewParams;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lbl/abd;->get_cdn_preference(Landroid/content/Context;)I

    move-result v0

    .line 107
    :goto_f9
    const/4 v2, 0x3

    if-ne v0, v2, :cond_125

    sget-object v2, Lmybl/VideoViewParams;->prefect_cdn:Ljava/lang/String;

    if-eqz v2, :cond_125

    sget-object v2, Lmybl/VideoViewParams;->prefect_cdn:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_125

    .line 109
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 110
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v1, Lmybl/VideoViewParams;->prefect_cdn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    :cond_124
    :goto_124
    return-object v0

    .line 111
    :cond_125
    if-nez v0, :cond_150

    .line 113
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 114
    sget-object v1, Lmybl/VideoViewParams;->prefect_cdn:Ljava/lang/String;

    if-eqz v1, :cond_124

    sget-object v1, Lmybl/VideoViewParams;->prefect_cdn:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_124

    .line 115
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v1, Lmybl/VideoViewParams;->prefect_cdn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_124

    .line 119
    :cond_150
    invoke-static {v6, v0}, Lmybl/VideoViewParams;->sortUrlsByPreference(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 121
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_158
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_158

    goto :goto_124

    :cond_16b
    move-object v0, p0

    goto :goto_124

    :cond_16d
    move v0, v1

    goto :goto_f9
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

    .line 228
    move v0, v1

    :goto_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_69

    .line 229
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 230
    if-eqz v2, :cond_66

    .line 231
    const-string v3, "base_url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 232
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 233
    if-eqz v4, :cond_32

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_32

    .line 234
    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-static {v4}, Lmybl/CdnSelector;->getCdnScore(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_32
    const-string v3, "backup_url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 239
    if-eqz v3, :cond_66

    move v2, v1

    .line 240
    :goto_3b
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_66

    .line 241
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    .line 242
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 243
    if-eqz v5, :cond_63

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_63

    .line 244
    invoke-interface {p1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    invoke-static {v5}, Lmybl/CdnSelector;->getCdnScore(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :cond_63
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 228
    :cond_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 251
    :cond_69
    return-void
.end method

.method private static filterData(IZLorg/json/JSONArray;)Landroid/os/Bundle;
    .locals 20

    .prologue
    .line 325
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 326
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 327
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 328
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 329
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 330
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 332
    const/4 v1, 0x0

    .line 333
    sget-object v2, Lmybl/VideoViewParams;->appContext:Landroid/content/Context;

    if-eqz v2, :cond_21e

    .line 334
    sget-object v1, Lmybl/VideoViewParams;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lbl/abd;->get_cdn_preference(Landroid/content/Context;)I

    move-result v1

    move v2, v1

    .line 337
    :goto_2a
    const/4 v1, 0x0

    move v3, v1

    :goto_2c
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v3, v1, :cond_1d5

    .line 338
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 339
    if-eqz v4, :cond_1ae

    .line 340
    const-string v1, "id"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 341
    const-string v5, "codecid"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 342
    const-string v5, "bandwidth"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    .line 343
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    .line 344
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 345
    const-string v1, "base_url"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 346
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 347
    sget-object v7, Lmybl/VideoViewParams;->cdn_history:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_72

    sget-object v7, Lmybl/VideoViewParams;->cdn_history:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    :cond_72
    invoke-virtual {v9, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7c

    move/from16 v0, p0

    if-ne v0, v6, :cond_aa

    :cond_7c
    const/4 v1, 0x1

    .line 350
    :goto_7d
    if-eqz v1, :cond_1ae

    .line 352
    const/4 v6, 0x0

    .line 353
    const/4 v7, 0x0

    .line 355
    const-string v1, "backup_url"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 356
    if-eqz v16, :cond_21a

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_21a

    .line 357
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 358
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    const/4 v1, 0x0

    :goto_98
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_ac

    .line 360
    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    add-int/lit8 v1, v1, 0x1

    goto :goto_98

    .line 349
    :cond_aa
    const/4 v1, 0x0

    goto :goto_7d

    .line 364
    :cond_ac
    sget-object v1, Lmybl/VideoViewParams;->selectedBestCdn:Ljava/lang/String;

    invoke-static {v4, v1}, Lmybl/VideoViewParams;->findUrlByCdn(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 365
    if-nez v1, :cond_217

    .line 367
    invoke-static {v4, v2}, Lmybl/VideoViewParams;->sortUrlsByPreference(Ljava/util/List;I)Ljava/util/List;

    move-result-object v4

    .line 368
    const/4 v1, 0x0

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v5, v1

    .line 371
    :goto_c0
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 372
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c9
    :goto_c9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 373
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_c9

    .line 374
    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c9

    .line 377
    :cond_e1
    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lmybl/VideoViewParams;->sortUrlsByPreference(Ljava/util/List;I)Ljava/util/List;

    move-result-object v16

    .line 379
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_214

    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v4, v1

    .line 380
    :goto_f7
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    const/4 v6, 0x1

    if-le v1, v6, :cond_211

    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 383
    :goto_107
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v16

    .line 384
    const/4 v6, 0x7

    move/from16 v0, p0

    if-eq v0, v6, :cond_120

    const/16 v6, 0xc

    move/from16 v0, p0

    if-eq v0, v6, :cond_120

    const/16 v6, 0xd

    move/from16 v0, p0

    if-ne v0, v6, :cond_19e

    .line 385
    :cond_120
    sput-object v16, Lmybl/VideoViewParams;->currentCdn:Ljava/lang/String;

    .line 387
    const-string v6, "AUTO"

    .line 388
    sget-object v7, Lmybl/VideoViewParams;->appContext:Landroid/content/Context;

    if-eqz v7, :cond_136

    .line 389
    sget-object v7, Lmybl/VideoViewParams;->appContext:Landroid/content/Context;

    invoke-static {v7}, Lbl/abd;->get_cdn_preference(Landroid/content/Context;)I

    move-result v7

    .line 390
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_1b3

    const-string v6, "BILIVIDEO"

    .line 394
    :cond_136
    :goto_136
    invoke-static/range {v16 .. v16}, Lmybl/CdnSelector;->getCdnType(Ljava/lang/String;)I

    move-result v7

    .line 395
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_1c7

    const-string v7, "bilivideo"

    .line 396
    :goto_142
    const-string v17, "PlaySpeed"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[CDN_SUMMARY] mode="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v18, ", selectedCdn="

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v18, ", cdnType="

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", score="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v16 .. v16}, Lmybl/CdnSelector;->getCdnScore(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", commonCdn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lmybl/VideoViewParams;->hasCommonCdn:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", prefect_cdn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lmybl/VideoViewParams;->prefect_cdn:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_19e
    invoke-virtual {v9, v15, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    if-eqz v4, :cond_1a6

    .line 401
    invoke-virtual {v10, v15, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :cond_1a6
    if-eqz v1, :cond_1ab

    .line 404
    invoke-virtual {v11, v15, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    :cond_1ab
    invoke-virtual {v12, v15, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 337
    :cond_1ae
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_2c

    .line 391
    :cond_1b3
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v7, v0, :cond_1bd

    const-string v6, "MCDN"

    goto/16 :goto_136

    .line 392
    :cond_1bd
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v7, v0, :cond_136

    const-string v6, "MANUAL"

    goto/16 :goto_136

    .line 395
    :cond_1c7
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v7, v0, :cond_1d1

    const-string v7, "mcdn"

    goto/16 :goto_142

    :cond_1d1
    const-string v7, "other"

    goto/16 :goto_142

    .line 410
    :cond_1d5
    invoke-interface {v13}, Ljava/util/Set;->size()I

    move-result v1

    new-array v4, v1, [I

    .line 411
    const/4 v1, 0x0

    .line 412
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v1

    :goto_1e1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v4, v2

    move v2, v3

    goto :goto_1e1

    .line 413
    :cond_1f7
    const-string v1, "dash_id"

    invoke-virtual {v8, v1, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 414
    const-string v1, "dash_base_url"

    invoke-virtual {v8, v1, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 415
    const-string v1, "dash_backup_url0"

    invoke-virtual {v8, v1, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 416
    const-string v1, "dash_backup_url1"

    invoke-virtual {v8, v1, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 417
    const-string v1, "dash_bandwidth"

    invoke-virtual {v8, v1, v12}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 419
    return-object v8

    :cond_211
    move-object v1, v7

    goto/16 :goto_107

    :cond_214
    move-object v4, v6

    goto/16 :goto_f7

    :cond_217
    move-object v5, v1

    goto/16 :goto_c0

    :cond_21a
    move-object v1, v7

    move-object v4, v6

    goto/16 :goto_107

    :cond_21e
    move v2, v1

    goto/16 :goto_2a
.end method

.method private static findBestCdnByType(Lorg/json/JSONObject;I)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x2

    const/4 v5, -0x1

    .line 274
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 275
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 277
    const-string v2, "video"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 278
    if-eqz v2, :cond_18

    .line 279
    invoke-static {v2, v1, v3}, Lmybl/VideoViewParams;->collectAllCdns(Lorg/json/JSONArray;Ljava/util/Map;Ljava/util/Map;)V

    .line 282
    :cond_18
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 283
    if-eqz v2, :cond_23

    .line 284
    invoke-static {v2, v1, v3}, Lmybl/VideoViewParams;->collectAllCdns(Lorg/json/JSONArray;Ljava/util/Map;Ljava/util/Map;)V

    .line 287
    :cond_23
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 288
    const-string v0, "PlaySpeed"

    const-string v1, "[CDN_TYPE] No CDN found, using default"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const-string v0, "upos-sz-mirror08c.bilivideo.com"

    .line 321
    :cond_32
    :goto_32
    return-object v0

    .line 292
    :cond_33
    const/4 v1, 0x1

    .line 293
    if-ne p1, v0, :cond_e3

    move v2, v0

    .line 304
    :goto_37
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v3, v5

    move-object v4, v6

    move v7, v5

    move-object v8, v6

    :goto_43
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 305
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 306
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 307
    invoke-static {v1}, Lmybl/CdnSelector;->getCdnType(Ljava/lang/String;)I

    move-result v5

    .line 308
    const-string v6, "PlaySpeed"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[CDN_TYPE] cdn="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", type="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", score="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    if-ne v5, v2, :cond_e0

    if-le v0, v7, :cond_e0

    move v5, v0

    move-object v6, v1

    .line 313
    :goto_95
    if-le v0, v3, :cond_dd

    :goto_97
    move v3, v0

    move-object v4, v1

    move v7, v5

    move-object v8, v6

    .line 317
    goto :goto_43

    .line 319
    :cond_9c
    if-eqz v8, :cond_db

    move-object v0, v8

    .line 320
    :goto_9f
    const-string v1, "PlaySpeed"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CDN_TYPE] targetType="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bestMatch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fallback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    if-nez v0, :cond_32

    const-string v0, "upos-sz-mirror08c.bilivideo.com"

    goto/16 :goto_32

    :cond_db
    move-object v0, v4

    .line 319
    goto :goto_9f

    :cond_dd
    move v0, v3

    move-object v1, v4

    goto :goto_97

    :cond_e0
    move v5, v7

    move-object v6, v8

    goto :goto_95

    :cond_e3
    move v2, v1

    goto/16 :goto_37
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

    .line 479
    if-nez p1, :cond_5

    move-object v0, v1

    .line 486
    :goto_4
    return-object v0

    .line 480
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

    .line 481
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 482
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_4

    :cond_24
    move-object v0, v1

    .line 486
    goto :goto_4
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lmybl/VideoViewParams;->appContext:Landroid/content/Context;

    .line 28
    sget-object v0, Lmybl/VideoViewParams;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lmybl/CdnSelector;->init(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public static onPlayerPrepared()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 494
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 495
    sget-wide v2, Lmybl/VideoViewParams;->prepareStartTime:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_5d

    sget-wide v2, Lmybl/VideoViewParams;->prepareStartTime:J

    sub-long/2addr v0, v2

    .line 496
    :goto_f
    const-string v2, "AUTO"

    .line 497
    sget-object v3, Lmybl/VideoViewParams;->appContext:Landroid/content/Context;

    if-eqz v3, :cond_20

    .line 498
    sget-object v3, Lmybl/VideoViewParams;->appContext:Landroid/content/Context;

    invoke-static {v3}, Lbl/abd;->get_cdn_preference(Landroid/content/Context;)I

    move-result v3

    .line 499
    const/4 v4, 0x1

    if-ne v3, v4, :cond_60

    const-string v2, "BILIVIDEO"

    .line 503
    :cond_20
    :goto_20
    const-string v3, "PlaySpeed"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[PREPARED_SUMMARY] cdnMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", cdn="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lmybl/VideoViewParams;->currentCdn:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", bufferTime="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms, selectedBestCdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmybl/VideoViewParams;->selectedBestCdn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    sput-wide v6, Lmybl/VideoViewParams;->prepareStartTime:J

    .line 505
    return-void

    .line 495
    :cond_5d
    const-wide/16 v0, -0x1

    goto :goto_f

    .line 500
    :cond_60
    const/4 v4, 0x2

    if-ne v3, v4, :cond_66

    const-string v2, "MCDN"

    goto :goto_20

    .line 501
    :cond_66
    const/4 v4, 0x3

    if-ne v3, v4, :cond_20

    const-string v2, "MANUAL"

    goto :goto_20
.end method

.method private static raceAndFindBestCdn(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 10

    .prologue
    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 183
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 184
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 186
    const-string v1, "video"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 187
    if-eqz v1, :cond_19

    .line 188
    invoke-static {v1, v0, v3}, Lmybl/VideoViewParams;->collectAllCdns(Lorg/json/JSONArray;Ljava/util/Map;Ljava/util/Map;)V

    .line 191
    :cond_19
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 192
    if-eqz v1, :cond_24

    .line 193
    invoke-static {v1, v0, v3}, Lmybl/VideoViewParams;->collectAllCdns(Lorg/json/JSONArray;Ljava/util/Map;Ljava/util/Map;)V

    .line 196
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

    .line 198
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 199
    const-string v0, "PlaySpeed"

    const-string v1, "[CDN_RACE] No CDN found, using default"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v0, "upos-sz-mirror08c.bilivideo.com"

    .line 224
    :cond_5d
    :goto_5d
    return-object v0

    .line 203
    :cond_5e
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 204
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

    .line 205
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 206
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 207
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 208
    if-eqz v2, :cond_98

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 209
    :goto_8f
    new-instance v8, Lmybl/CdnSelector$CdnUrlInfo;

    invoke-direct {v8, v0, v1, v2}, Lmybl/CdnSelector$CdnUrlInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 210
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6b

    .line 208
    :cond_98
    const/16 v2, 0x46

    goto :goto_8f

    .line 213
    :cond_9b
    sget-object v0, Lmybl/VideoViewParams;->appContext:Landroid/content/Context;

    sget-object v1, Lmybl/VideoViewParams;->currentVideoId:Ljava/lang/String;

    invoke-static {v0, v1, v6}, Lmybl/CdnSelector;->selectBestUrl(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Lmybl/CdnSelector$RaceResult;

    move-result-object v1

    .line 215
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

    .line 217
    if-eqz v1, :cond_11e

    iget-object v0, v1, Lmybl/CdnSelector$RaceResult;->winningCdn:Ljava/lang/String;

    if-eqz v0, :cond_11e

    .line 218
    const/4 v0, 0x1

    sput-boolean v0, Lmybl/VideoViewParams;->hasCommonCdn:Z

    .line 219
    iget-object v0, v1, Lmybl/CdnSelector$RaceResult;->winningCdn:Ljava/lang/String;

    goto/16 :goto_5d

    .line 215
    :cond_115
    const-string v0, "null"

    goto :goto_b4

    :cond_118
    const-string v0, "null"

    goto :goto_d5

    :cond_11b
    const-string v0, "null"

    goto :goto_e7

    .line 222
    :cond_11e
    invoke-static {v3}, Lmybl/VideoViewParams;->selectCdnByScore(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 223
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

    .line 224
    if-nez v0, :cond_5d

    const-string v0, "upos-sz-mirror08c.bilivideo.com"

    goto/16 :goto_5d
.end method

.method public static reportPlaybackFailed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    sget-object v0, Lmybl/VideoViewParams;->currentCdn:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 43
    sget-object v0, Lmybl/VideoViewParams;->currentCdn:Ljava/lang/String;

    invoke-static {v0, v1, v1}, Lmybl/CdnSelector;->updateCdnScore(Ljava/lang/String;ZZ)V

    .line 45
    :cond_a
    return-void
.end method

.method public static reportPlaybackSuccess()V
    .locals 3

    .prologue
    .line 36
    sget-object v0, Lmybl/VideoViewParams;->currentCdn:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 37
    sget-object v0, Lmybl/VideoViewParams;->currentCdn:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmybl/CdnSelector;->updateCdnScore(Ljava/lang/String;ZZ)V

    .line 39
    :cond_b
    return-void
.end method

.method public static reportPlaybackTimeout()V
    .locals 3

    .prologue
    .line 48
    sget-object v0, Lmybl/VideoViewParams;->currentCdn:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 49
    sget-object v0, Lmybl/VideoViewParams;->currentCdn:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmybl/CdnSelector;->updateCdnScore(Ljava/lang/String;ZZ)V

    .line 51
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

    .line 254
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 266
    :cond_7
    return-object v3

    .line 257
    :cond_8
    const/4 v2, -0x1

    .line 259
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

    .line 260
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v2, :cond_3c

    .line 261
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 262
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_39
    move v2, v1

    move-object v3, v0

    .line 264
    goto :goto_11

    :cond_3c
    move v1, v2

    move-object v0, v3

    goto :goto_39
.end method

.method public static setCurrentVideo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    sput-object p0, Lmybl/VideoViewParams;->currentVideoId:Ljava/lang/String;

    .line 33
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
    .line 423
    new-instance v0, Lmybl/VideoViewParams$1;

    invoke-direct {v0}, Lmybl/VideoViewParams$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 433
    return-object p0
.end method

.method private static sortUrlsByPreference(Ljava/util/List;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 442
    if-eqz p1, :cond_7

    const/4 v2, 0x3

    if-ne p1, v2, :cond_c

    .line 443
    :cond_7
    invoke-static {p0}, Lmybl/VideoViewParams;->sortUrlsByCdnScore(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 475
    :goto_b
    return-object p0

    .line 447
    :cond_c
    if-ne p1, v0, :cond_17

    .line 455
    :goto_e
    new-instance v1, Lmybl/VideoViewParams$2;

    invoke-direct {v1, v0}, Lmybl/VideoViewParams$2;-><init>(I)V

    invoke-static {p0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_b

    .line 449
    :cond_17
    if-ne p1, v1, :cond_1b

    move v0, v1

    .line 450
    goto :goto_e

    .line 452
    :cond_1b
    invoke-static {p0}, Lmybl/VideoViewParams;->sortUrlsByCdnScore(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    goto :goto_b
.end method

.method public static toBundleData(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 135
    sput-wide v2, Lmybl/VideoViewParams;->prepareStartTime:J

    .line 136
    const-string v4, "PlaySpeed"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TO_BUNDLE_START] toBundleData() start, video_count="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p0, :cond_165

    const-string v0, "video"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_165

    const-string v0, "video"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    :goto_28
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", audio_count="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p0, :cond_168

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_168

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    :goto_46
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 140
    sget-object v0, Lmybl/VideoViewParams;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_1ba

    .line 141
    sget-object v0, Lmybl/VideoViewParams;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lbl/abd;->get_cdn_preference(Landroid/content/Context;)I

    move-result v0

    .line 143
    :goto_60
    const-string v5, "PlaySpeed"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[TO_BUNDLE] cdnPreference="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (0=auto,1=bilivideo,2=mcdn,3=manual)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    if-nez v0, :cond_16b

    .line 146
    invoke-static {p0}, Lmybl/VideoViewParams;->raceAndFindBestCdn(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lmybl/VideoViewParams;->selectedBestCdn:Ljava/lang/String;

    .line 160
    :goto_86
    const-string v5, "PlaySpeed"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[TO_BUNDLE_RACE_DONE] selectedBestCdn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lmybl/VideoViewParams;->selectedBestCdn:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", cdnPref="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", race elapsed="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "ms"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 163
    const-string v5, "dolby"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_ea

    const-string v5, "dolby"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_ea

    const-string v5, "dolby"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 164
    :cond_ea
    const-string v5, "flac"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_10f

    const-string v5, "flac"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_10f

    const-string v5, "flac"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 165
    :cond_10f
    const-string v5, "dash_video_audio"

    const/4 v6, -0x1

    invoke-static {v6, v1, v0}, Lmybl/VideoViewParams;->filterData(IZLorg/json/JSONArray;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 167
    const-string v0, "H264"

    .line 168
    const/4 v0, 0x7

    .line 169
    const-string v1, "video/hevc"

    sget-object v5, Lbl/afo;->prefect_codec:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1aa

    .line 170
    const-string v0, "HEVC"

    .line 171
    const/16 v0, 0xc

    .line 176
    :cond_12a
    :goto_12a
    const-string v1, "dash_video_264"

    const/4 v5, 0x1

    const-string v6, "video"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-static {v0, v5, v6}, Lmybl/VideoViewParams;->filterData(IZLorg/json/JSONArray;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 177
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

    .line 178
    return-object v4

    :cond_165
    move v0, v1

    .line 136
    goto/16 :goto_28

    :cond_168
    move v0, v1

    goto/16 :goto_46

    .line 147
    :cond_16b
    const/4 v5, 0x3

    if-ne v0, v5, :cond_1a2

    .line 149
    sget-object v5, Lmybl/VideoViewParams;->prefect_cdn:Ljava/lang/String;

    if-eqz v5, :cond_19a

    sget-object v5, Lmybl/VideoViewParams;->prefect_cdn:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_19a

    .line 150
    sget-object v5, Lmybl/VideoViewParams;->prefect_cdn:Ljava/lang/String;

    sput-object v5, Lmybl/VideoViewParams;->selectedBestCdn:Ljava/lang/String;

    .line 151
    const-string v5, "PlaySpeed"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[TO_BUNDLE] Manual CDN mode, using prefect_cdn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lmybl/VideoViewParams;->prefect_cdn:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_86

    .line 153
    :cond_19a
    invoke-static {p0}, Lmybl/VideoViewParams;->raceAndFindBestCdn(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lmybl/VideoViewParams;->selectedBestCdn:Ljava/lang/String;

    goto/16 :goto_86

    .line 157
    :cond_1a2
    invoke-static {p0, v0}, Lmybl/VideoViewParams;->findBestCdnByType(Lorg/json/JSONObject;I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lmybl/VideoViewParams;->selectedBestCdn:Ljava/lang/String;

    goto/16 :goto_86

    .line 172
    :cond_1aa
    const-string v1, "video/av01"

    sget-object v5, Lbl/afo;->prefect_codec:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12a

    .line 173
    const-string v0, "AV01"

    .line 174
    const/16 v0, 0xd

    goto/16 :goto_12a

    :cond_1ba
    move v0, v1

    goto/16 :goto_60
.end method
