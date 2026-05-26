.class public Lbl/ql;
.super Ljava/lang/Object;
.source "ql.java"

# interfaces
.implements Lcom/bilibili/lib/media/resolver/resolve/IMediaResolver;


# static fields
.field private static final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lbl/qn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lbl/qx;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    .line 25
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lbl/ql;->a:Landroid/util/SparseArray;

    .line 29
    new-instance v0, Lbl/qn;

    const-string v1, "bili2api"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u6d41\u7545 360P"

    const-string v4, "MPEG-4"

    const-string v5, "MP4A"

    const-string v6, "H264"

    const/4 v7, 0x1

    const/16 v8, 0x64

    invoke-direct/range {v0 .. v8}, Lbl/qn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 30
    new-instance v1, Lbl/qn;

    const-string v2, "bili2api"

    const/16 v3, 0x20

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u6e05\u6670 480P"

    const-string v5, "FLV"

    const-string v6, "MP4A"

    const-string v7, "H264"

    const/4 v8, 0x2

    const/16 v9, 0x96

    invoke-direct/range {v1 .. v9}, Lbl/qn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 31
    new-instance v2, Lbl/qn;

    const-string v3, "bili2api"

    const/16 v4, 0x30

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u9ad8\u6e05 720P"

    const-string v6, "MPEG-4"

    const-string v7, "MP4A"

    const-string v8, "H264"

    const/4 v9, 0x3

    const/16 v10, 0xaf

    invoke-direct/range {v2 .. v10}, Lbl/qn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 32
    new-instance v3, Lbl/qn;

    const-string v4, "bili2api"

    const/16 v5, 0x40

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\u9ad8\u6e05 720P"

    const-string v7, "FLV"

    const-string v8, "MP4A"

    const-string v9, "H264"

    const/4 v10, 0x4

    const/16 v11, 0xc8

    invoke-direct/range {v3 .. v11}, Lbl/qn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 33
    new-instance v4, Lbl/qn;

    const-string v5, "bili2api"

    const/16 v6, 0x50

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u9ad8\u6e05 1080P"

    const-string v8, "FLV"

    const-string v9, "MP4A"

    const-string v10, "H264"

    const/4 v11, 0x5

    const/16 v12, 0x190

    invoke-direct/range {v4 .. v12}, Lbl/qn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 34
    new-instance v5, Lbl/qn;

    const-string v6, "bili2api"

    const-string v7, "unknown"

    const-string v8, "unknown"

    const-string v9, "unknown"

    const-string v10, ""

    const-string v11, ""

    const/4 v12, 0x6

    const v13, -0x186a0

    invoke-direct/range {v5 .. v13}, Lbl/qn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 35
    invoke-virtual {v1, v0}, Lbl/qn;->a(Lbl/qn;)V

    .line 36
    invoke-virtual {v3, v2}, Lbl/qn;->a(Lbl/qn;)V

    .line 37
    sget-object v6, Lbl/ql;->a:Landroid/util/SparseArray;

    const/16 v7, 0x10

    invoke-virtual {v6, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    sget-object v0, Lbl/ql;->a:Landroid/util/SparseArray;

    const/16 v6, 0x20

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 39
    sget-object v0, Lbl/ql;->a:Landroid/util/SparseArray;

    const/16 v1, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    sget-object v0, Lbl/ql;->a:Landroid/util/SparseArray;

    const/16 v1, 0x40

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    sget-object v0, Lbl/ql;->a:Landroid/util/SparseArray;

    const/16 v1, 0x50

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    sget-object v0, Lbl/ql;->a:Landroid/util/SparseArray;

    const/16 v1, -0x3e8

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)I
    .locals 2

    .prologue
    .line 224
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    sget-object v0, Lbl/ql;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_21

    .line 225
    sget-object v0, Lbl/ql;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/qn;

    iget v0, v0, Lbl/qn;->g:I

    if-ne v0, p1, :cond_1d

    .line 226
    sget-object v0, Lbl/ql;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 229
    :goto_1c
    return v0

    .line 224
    :cond_1d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 229
    :cond_21
    const/16 v0, 0x40

    goto :goto_1c
.end method

.method private a(Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;Lbl/ps;)I
    .locals 7

    .prologue
    const/16 v6, 0x190

    const/16 v5, 0xc8

    const/16 v4, 0xaf

    const/16 v3, 0x96

    const/16 v2, 0x64

    .line 197
    invoke-virtual {p1}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->f()Ljava/lang/String;

    move-result-object v1

    .line 198
    invoke-virtual {p1}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->e()I

    move-result v0

    .line 199
    if-nez v0, :cond_41

    .line 200
    invoke-virtual {p2}, Lbl/ps;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-virtual {p2}, Lbl/ps;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const/16 v0, 0x40

    .line 212
    :cond_2a
    :goto_2a
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3e

    invoke-static {v1}, Lbl/qn;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-direct {p0, v1}, Lbl/ql;->a(Ljava/lang/String;)I

    move-result v1

    const/16 v2, -0x3e8

    if-ne v1, v2, :cond_64

    :cond_3e
    :goto_3e
    return v0

    .line 200
    :cond_3f
    const/4 v0, 0x0

    goto :goto_2a

    .line 201
    :cond_41
    if-ne v0, v2, :cond_48

    .line 202
    invoke-direct {p0, v2}, Lbl/ql;->a(I)I

    move-result v0

    goto :goto_2a

    .line 203
    :cond_48
    if-ne v0, v3, :cond_4f

    .line 204
    invoke-direct {p0, v3}, Lbl/ql;->a(I)I

    move-result v0

    goto :goto_2a

    .line 205
    :cond_4f
    if-ne v0, v4, :cond_56

    .line 206
    invoke-direct {p0, v4}, Lbl/ql;->a(I)I

    move-result v0

    goto :goto_2a

    .line 207
    :cond_56
    if-ne v0, v5, :cond_5d

    .line 208
    invoke-direct {p0, v5}, Lbl/ql;->a(I)I

    move-result v0

    goto :goto_2a

    .line 209
    :cond_5d
    if-ne v0, v6, :cond_2a

    .line 210
    invoke-direct {p0, v6}, Lbl/ql;->a(I)I

    move-result v0

    goto :goto_2a

    :cond_64
    move v0, v1

    .line 212
    goto :goto_3e
.end method

.method private a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 234
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {p1}, Lbl/qn;->b(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_d

    .line 237
    :goto_c
    return v0

    :cond_d
    const/16 v0, -0x3e8

    goto :goto_c
.end method

.method private a(Landroid/content/Context;Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;Lbl/ps;Lbl/pu;Lcom/bilibili/lib/media/resolver/params/ResolveResourceExtra;Z)Lcom/bilibili/lib/media/resource/MediaResource;
    .locals 19
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bilibili/lib/media/resolver/exception/ResolveException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 68
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lbl/ql;->a(Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;)V

    .line 69
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lbl/ql;->a(Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;Lbl/ps;)I

    move-result v7

    .line 71
    invoke-virtual/range {p2 .. p2}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->c()J

    move-result-wide v10

    .line 72
    invoke-virtual/range {p2 .. p2}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->a()J

    move-result-wide v12

    .line 74
    const-string v4, "UgcPlayUrl"

    const-string v5, "========== UGC PlayUrl Request (Web API + WBI) =========="

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v4, "UgcPlayUrl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", avid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", qn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v4, "PlaySpeed"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[UGC_API_REQUEST_START] cid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", avid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", qn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v4

    invoke-static {v4}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v4

    .line 79
    invoke-static {v4}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v5

    .line 80
    const-string v6, "UgcPlayUrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cookie: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    if-eqz v5, :cond_1a6

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1a6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "exists("

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v15, "chars)"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_ba
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    if-eqz v5, :cond_1aa

    const-string v4, "SESSDATA="

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1aa

    const/4 v4, 0x1

    .line 84
    :goto_d0
    const-string v6, "DedeUserID"

    invoke-static {v5, v6}, Lmybl/CookieUtil;->getCookieValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 85
    if-eqz v6, :cond_105

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_105

    .line 87
    :try_start_de
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 88
    const-wide/16 v16, 0x0

    cmp-long v16, v14, v16

    if-lez v16, :cond_105

    .line 89
    const-string v16, "UgcPlayUrl"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Activating buvid for mid="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-static {v14, v15, v5}, Lmybl/BuvidActivator;->ensureBuvidActive(JLjava/lang/String;)Z
    :try_end_105
    .catch Ljava/lang/NumberFormatException; {:try_start_de .. :try_end_105} :catch_1ad

    .line 97
    :cond_105
    :goto_105
    new-instance v14, Ljava/util/TreeMap;

    invoke-direct {v14}, Ljava/util/TreeMap;-><init>()V

    .line 98
    const-string v15, "cid"

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v15, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v10, "avid"

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v10, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v10, "qn"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v10, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v10, "fnver"

    const-string v11, "0"

    invoke-virtual {v14, v10, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v10, "fnval"

    const/16 v11, 0x7d0

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v10, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v10, "fourk"

    const-string v11, "1"

    invoke-virtual {v14, v10, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v10, "voice_balance"

    const-string v11, "1"

    invoke-virtual {v14, v10, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v10, "web_location"

    const-string v11, "1315873"

    invoke-virtual {v14, v10, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v10, "gaia_source"

    const-string v11, "pre-load"

    invoke-virtual {v14, v10, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v10, "isGaiaAvoided"

    const-string v11, "true"

    invoke-virtual {v14, v10, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v10, "x-bili-gaia-vtoken"

    invoke-static {v5, v10}, Lmybl/CookieUtil;->getCookieValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 110
    if-eqz v10, :cond_17c

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_17c

    .line 111
    const-string v11, "gaia_vtoken"

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v11, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v10, "UgcPlayUrl"

    const-string v11, "Added gaia_vtoken parameter"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_17c
    if-nez v4, :cond_18c

    .line 116
    const-string v4, "try_look"

    const-string v10, "1"

    invoke-virtual {v14, v4, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v4, "UgcPlayUrl"

    const-string v10, "No SESSDATA, using try_look=1"

    invoke-static {v4, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_18c
    invoke-static {}, Lmybl/WbiSigner;->getInstance()Lmybl/WbiSigner;

    move-result-object v4

    invoke-virtual {v4, v14}, Lmybl/WbiSigner;->encWbiAndGetQuery(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v4

    .line 121
    if-nez v4, :cond_1c8

    .line 122
    const-string v4, "UgcPlayUrl"

    const-string v5, "Failed to sign WBI parameters!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v4, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;

    const-string v5, "WBI sign failed"

    const/4 v6, -0x5

    invoke-direct {v4, v5, v6}, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 80
    :cond_1a6
    const-string v4, "null"

    goto/16 :goto_ba

    .line 82
    :cond_1aa
    const/4 v4, 0x0

    goto/16 :goto_d0

    .line 92
    :catch_1ad
    move-exception v14

    .line 93
    const-string v14, "UgcPlayUrl"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to parse DedeUserID: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_105

    .line 126
    :cond_1c8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "https://api.bilibili.com/x/player/wbi/playurl?"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 127
    const-string v10, "UgcPlayUrl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Signed URL: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v10, Lbl/qa$a;

    const-class v11, Lbl/qm;

    invoke-direct {v10, v11}, Lbl/qa$a;-><init>(Ljava/lang/Class;)V

    .line 130
    invoke-virtual {v10, v4}, Lbl/qa$a;->a(Ljava/lang/String;)Lbl/qa$a;

    move-result-object v4

    const-string v10, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36"

    .line 131
    invoke-virtual {v4, v10}, Lbl/qa$a;->b(Ljava/lang/String;)Lbl/qa$a;

    move-result-object v4

    const/4 v10, 0x1

    .line 132
    invoke-virtual {v4, v10}, Lbl/qa$a;->a(Z)Lbl/qa$a;

    move-result-object v4

    .line 134
    const-string v10, "env"

    const-string v11, "prod"

    invoke-virtual {v4, v10, v11}, Lbl/qa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    .line 135
    const-string v10, "app-key"

    const-string v11, "android64"

    invoke-virtual {v4, v10, v11}, Lbl/qa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    .line 136
    const-string v10, "x-bili-aurora-zone"

    const-string v11, "sh001"

    invoke-virtual {v4, v10, v11}, Lbl/qa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    .line 138
    if-eqz v6, :cond_244

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_244

    .line 140
    :try_start_226
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 141
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-lez v12, :cond_244

    .line 142
    const-string v12, "x-bili-mid"

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Lbl/qa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    .line 143
    invoke-static {v10, v11}, Lbl/ql;->genAuroraEid(J)Ljava/lang/String;

    move-result-object v10

    .line 144
    if-eqz v10, :cond_244

    .line 145
    const-string v11, "x-bili-aurora-eid"

    invoke-virtual {v4, v11, v10}, Lbl/qa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;
    :try_end_244
    .catch Ljava/lang/NumberFormatException; {:try_start_226 .. :try_end_244} :catch_2c7

    .line 153
    :cond_244
    :goto_244
    if-eqz v5, :cond_258

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_258

    .line 154
    const-string v6, "Cookie"

    invoke-virtual {v4, v6, v5}, Lbl/qa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    .line 155
    const-string v5, "UgcPlayUrl"

    const-string v6, "Added Cookie header"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_258
    const-string v5, "Referer"

    const-string v6, "https://www.bilibili.com"

    invoke-virtual {v4, v5, v6}, Lbl/qa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    .line 159
    invoke-virtual {v4}, Lbl/qa$a;->a()Lbl/qa;

    move-result-object v4

    .line 160
    move-object/from16 v0, p0

    iget-object v5, v0, Lbl/ql;->b:Lbl/qx;

    invoke-virtual {v4}, Lbl/qa;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lbl/qx;->a(Ljava/lang/String;)V

    .line 161
    const-string v5, "PlaySpeed"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[UGC_API_REQUEST_END] API request done, elapsed="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v8, v10, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "ms"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v5, "UgcPlayUrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Response URL: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lbl/qa;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-static {v4}, Lbl/pz;->a(Lbl/qa;)Lbl/qe;

    move-result-object v4

    check-cast v4, Lbl/qm;

    .line 167
    const/4 v5, -0x5

    .line 168
    if-nez v4, :cond_2e2

    .line 169
    const-string v4, "UgcPlayUrl"

    const-string v5, "Response is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v4, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;

    const-string v5, "empty response"

    const/4 v6, -0x5

    invoke-direct {v4, v5, v6}, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 148
    :catch_2c7
    move-exception v10

    .line 149
    const-string v10, "UgcPlayUrl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to parse DedeUserID: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_244

    .line 172
    :cond_2e2
    invoke-virtual {v4}, Lbl/qm;->a()Z

    move-result v6

    if-nez v6, :cond_329

    .line 173
    const-string v6, "UgcPlayUrl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PlayUrl request failed! code="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lbl/qm;->b()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", message="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lbl/qm;->c()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    move-object/from16 v0, p0

    iget-object v6, v0, Lbl/ql;->b:Lbl/qx;

    invoke-virtual {v4}, Lbl/qm;->b()I

    move-result v7

    invoke-virtual {v4}, Lbl/qm;->c()[B

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Lbl/qx;->a(I[B)V

    .line 175
    new-instance v4, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;

    const-string v6, "connect error"

    invoke-direct {v4, v6, v5}, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 177
    :cond_329
    move-object/from16 v0, p0

    iget-object v5, v0, Lbl/ql;->b:Lbl/qx;

    invoke-virtual {v4}, Lbl/qm;->b()I

    move-result v6

    invoke-virtual {v4}, Lbl/qm;->c()[B

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lbl/qx;->a(I[B)V

    .line 178
    const-string v5, "UgcPlayUrl"

    const-string v6, "PlayUrl request succeeded"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    :try_start_345
    invoke-virtual/range {v4 .. v9}, Lbl/qm;->a(Landroid/content/Context;Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;ILandroid/util/SparseArray;[I)Lcom/bilibili/lib/media/resource/MediaResource;

    move-result-object v5

    .line 181
    if-nez v5, :cond_389

    .line 182
    const-string v5, "UgcPlayUrl"

    const-string v6, "MediaResource is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v5, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;

    const-string v6, "resolve fake"

    const/4 v7, -0x3

    invoke-direct {v5, v6, v7}, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_35b
    .catch Lcom/bilibili/lib/media/resolver/exception/ResolveException; {:try_start_345 .. :try_end_35b} :catch_35b

    .line 188
    :catch_35b
    move-exception v5

    .line 189
    const-string v6, "UgcPlayUrl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ResolveException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/bilibili/lib/media/resolver/exception/ResolveException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    move-object/from16 v0, p0

    iget-object v6, v0, Lbl/ql;->b:Lbl/qx;

    new-instance v7, Ljava/lang/String;

    invoke-virtual {v4}, Lbl/qm;->c()[B

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v5, v7}, Lbl/qx;->a(Lcom/bilibili/lib/media/resolver/exception/ResolveException;Ljava/lang/String;)V

    .line 191
    throw v5

    .line 185
    :cond_389
    :try_start_389
    const-string v6, "UgcPlayUrl"

    const-string v7, "MediaResource resolved successfully"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    move-object/from16 v0, p0

    iget-object v6, v0, Lbl/ql;->b:Lbl/qx;

    invoke-virtual {v6, v5}, Lbl/qx;->a(Lcom/bilibili/lib/media/resource/MediaResource;)V
    :try_end_397
    .catch Lcom/bilibili/lib/media/resolver/exception/ResolveException; {:try_start_389 .. :try_end_397} :catch_35b

    .line 187
    return-object v5
.end method

.method private a(Landroid/content/Context;ILcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;Lcom/bilibili/lib/media/resolver/params/ResolveResourceExtra;Lbl/pu;Lbl/ps;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    invoke-static {p1, p2}, Lbl/qw;->a(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p3, p4, p5, p6}, Lbl/qp;->a(Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;Lcom/bilibili/lib/media/resolver/params/ResolveResourceExtra;Lbl/pu;Lbl/ps;)Lcom/bilibili/lib/media/resolver/resolve/vip/VipQualityToken;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 243
    invoke-virtual {v0}, Lcom/bilibili/lib/media/resolver/resolve/vip/VipQualityToken;->a()Ljava/lang/String;

    move-result-object v0

    .line 245
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private a(Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;)V
    .locals 2

    .prologue
    .line 216
    invoke-virtual {p1}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->f()Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {v0}, Lbl/qn;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 221
    :cond_10
    :goto_10
    return-void

    .line 220
    :cond_11
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->a(Ljava/lang/String;)V

    goto :goto_10
.end method

.method private static genAuroraEid(J)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 249
    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-gtz v1, :cond_8

    .line 260
    :goto_7
    return-object v0

    .line 251
    :cond_8
    :try_start_8
    const-string v1, "ad1va46a7lza"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 252
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 253
    array-length v1, v3

    new-array v4, v1, [B

    .line 254
    const/4 v1, 0x0

    :goto_1e
    array-length v5, v3

    if-ge v1, v5, :cond_31

    .line 255
    aget-byte v5, v3, v1

    array-length v6, v2

    rem-int v6, v1, v6

    aget-byte v6, v2, v6

    xor-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 257
    :cond_31
    const/4 v1, 0x3

    invoke-static {v4, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_35} :catch_37

    move-result-object v0

    goto :goto_7

    .line 258
    :catch_37
    move-exception v1

    .line 259
    const-string v2, "UgcPlayUrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "genAuroraEid error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method


# virtual methods
.method public resolveMediaResource(Landroid/content/Context;Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;Lbl/ps;Lbl/pu;Lcom/bilibili/lib/media/resolver/params/ResolveResourceExtra;)Lcom/bilibili/lib/media/resource/MediaResource;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bilibili/lib/media/resolver/exception/ResolveException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 48
    const-string v0, "PlaySpeed"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UGC_RESOLVE_START] ql.resolveMediaResource(), cid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", avid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    if-eqz p2, :cond_3d

    invoke-virtual {p2}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3d

    if-nez p3, :cond_46

    .line 50
    :cond_3d
    new-instance v0, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;

    const-string v1, "invalid resolve params"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 52
    :cond_46
    new-instance v0, Lbl/qx;

    invoke-virtual {p3}, Lbl/ps;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->c()J

    move-result-wide v4

    invoke-direct {v0, v1, v2, v4, v5}, Lbl/qx;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iput-object v0, p0, Lbl/ql;->b:Lbl/qx;

    .line 53
    iget-object v0, p0, Lbl/ql;->b:Lbl/qx;

    invoke-virtual {v0}, Lbl/qx;->a()V

    .line 54
    iget-object v0, p0, Lbl/ql;->b:Lbl/qx;

    invoke-virtual {v0}, Lbl/qx;->b()V

    .line 55
    invoke-virtual {p2}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->i()Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lbl/ql;->a(Landroid/content/Context;Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;Lbl/ps;Lbl/pu;Lcom/bilibili/lib/media/resolver/params/ResolveResourceExtra;Z)Lcom/bilibili/lib/media/resource/MediaResource;

    move-result-object v0

    .line 56
    const-string v1, "PlaySpeed"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[UGC_RESOLVE_END] ql.resolveMediaResource() done, elapsed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v8

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms, hasDash="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_93

    iget-object v3, v0, Lcom/bilibili/lib/media/resource/MediaResource;->dash:Lorg/json/JSONObject;

    if-eqz v3, :cond_93

    const/4 v6, 0x1

    :cond_93
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-object v0
.end method

.method public resolveSegment(Landroid/content/Context;Lbl/pt;Ljava/lang/String;)Lcom/bilibili/lib/media/resource/Segment;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p2}, Lbl/pt;->a()Lcom/bilibili/lib/media/resource/Segment;

    move-result-object v0

    return-object v0
.end method
