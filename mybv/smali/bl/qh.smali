.class public Lbl/qh;
.super Ljava/lang/Object;
.source "qh.java"

# interfaces
.implements Lcom/bilibili/lib/media/resolver/resolve/IMediaResolver;


# static fields
.field static final a:Landroid/util/SparseArray;
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
    .locals 16

    .prologue
    .line 24
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lbl/qh;->a:Landroid/util/SparseArray;

    .line 28
    new-instance v0, Lbl/qn;

    const-string v1, "bb2api"

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u6d41\u7545 360P"

    const-string v4, "MPEG-4"

    const-string v5, "MP4A"

    const-string v6, "H264"

    const/4 v7, 0x1

    const/16 v8, 0x5a

    invoke-direct/range {v0 .. v8}, Lbl/qn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 29
    new-instance v1, Lbl/qn;

    const-string v2, "bb2api"

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u6d41\u7545 360P"

    const-string v5, "MPEG-4"

    const-string v6, "MP4A"

    const-string v7, "H264"

    const/4 v8, 0x1

    const/16 v9, 0x64

    invoke-direct/range {v1 .. v9}, Lbl/qn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 30
    new-instance v2, Lbl/qn;

    const-string v3, "bb2api"

    const/16 v4, 0x20

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u6e05\u6670 480P"

    const-string v6, "FLV"

    const-string v7, "MP4A"

    const-string v8, "H264"

    const/4 v9, 0x2

    const/16 v10, 0x96

    invoke-direct/range {v2 .. v10}, Lbl/qn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 31
    new-instance v3, Lbl/qn;

    const-string v4, "bb2api"

    const/16 v5, 0x30

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\u9ad8\u6e05 720P"

    const-string v7, "MPEG-4"

    const-string v8, "MP4A"

    const-string v9, "H264"

    const/4 v10, 0x3

    const/16 v11, 0xaf

    invoke-direct/range {v3 .. v11}, Lbl/qn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 32
    new-instance v4, Lbl/qn;

    const-string v5, "bb2api"

    const/16 v6, 0x40

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u9ad8\u6e05 720P"

    const-string v8, "FLV"

    const-string v9, "MP4A"

    const-string v10, "H264"

    const/4 v11, 0x4

    const/16 v12, 0xc8

    invoke-direct/range {v4 .. v12}, Lbl/qn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 33
    new-instance v5, Lbl/qn;

    const-string v6, "bb2api"

    const/16 v7, 0x50

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\u9ad8\u6e05 1080P"

    const-string v9, "FLV"

    const-string v10, "MP4A"

    const-string v11, "H264"

    const/4 v12, 0x5

    const/16 v13, 0x190

    invoke-direct/range {v5 .. v13}, Lbl/qn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 34
    new-instance v6, Lbl/qn;

    const-string v7, "bb2api"

    const-string v8, "bd"

    const-string v9, "\u9ad8\u6e05 1080P+"

    const-string v10, "FLV"

    const-string v11, "MP4A"

    const-string v12, "H264"

    const/16 v13, 0xb

    const/16 v14, 0x320

    invoke-direct/range {v6 .. v14}, Lbl/qn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 35
    new-instance v7, Lbl/qn;

    const-string v8, "bb2api"

    const-string v9, "unknown"

    const-string v10, "unknown"

    const-string v11, "unknown"

    const-string v12, ""

    const-string v13, ""

    const/4 v14, 0x6

    const v15, -0x186a0

    invoke-direct/range {v7 .. v15}, Lbl/qn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 36
    invoke-virtual {v2, v1}, Lbl/qn;->a(Lbl/qn;)V

    .line 37
    invoke-virtual {v4, v3}, Lbl/qn;->a(Lbl/qn;)V

    .line 38
    sget-object v8, Lbl/qh;->a:Landroid/util/SparseArray;

    const/16 v9, 0xf

    invoke-virtual {v8, v9, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 39
    sget-object v0, Lbl/qh;->a:Landroid/util/SparseArray;

    const/16 v8, 0x10

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    sget-object v0, Lbl/qh;->a:Landroid/util/SparseArray;

    const/16 v1, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    sget-object v0, Lbl/qh;->a:Landroid/util/SparseArray;

    const/16 v1, 0x30

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    sget-object v0, Lbl/qh;->a:Landroid/util/SparseArray;

    const/16 v1, 0x40

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 43
    sget-object v0, Lbl/qh;->a:Landroid/util/SparseArray;

    const/16 v1, 0x50

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    sget-object v0, Lbl/qh;->a:Landroid/util/SparseArray;

    const/16 v1, 0x70

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    sget-object v0, Lbl/qh;->a:Landroid/util/SparseArray;

    const/16 v1, -0x3e8

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)I
    .locals 2

    .prologue
    .line 237
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    sget-object v0, Lbl/qh;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_21

    .line 238
    sget-object v0, Lbl/qh;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/qn;

    iget v0, v0, Lbl/qn;->g:I

    if-ne v0, p1, :cond_1d

    .line 239
    sget-object v0, Lbl/qh;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 242
    :goto_1c
    return v0

    .line 237
    :cond_1d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 242
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

    .line 208
    invoke-virtual {p1}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->f()Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-virtual {p1}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->e()I

    move-result v0

    .line 210
    if-nez v0, :cond_41

    .line 211
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

    .line 225
    :cond_2a
    :goto_2a
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3e

    invoke-static {v1}, Lbl/qn;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-direct {p0, v1}, Lbl/qh;->a(Ljava/lang/String;)I

    move-result v1

    const/16 v2, -0x3e8

    if-ne v1, v2, :cond_6f

    :cond_3e
    :goto_3e
    return v0

    .line 211
    :cond_3f
    const/4 v0, 0x0

    goto :goto_2a

    .line 212
    :cond_41
    if-ne v0, v2, :cond_48

    .line 213
    invoke-direct {p0, v2}, Lbl/qh;->a(I)I

    move-result v0

    goto :goto_2a

    .line 214
    :cond_48
    if-ne v0, v3, :cond_4f

    .line 215
    invoke-direct {p0, v3}, Lbl/qh;->a(I)I

    move-result v0

    goto :goto_2a

    .line 216
    :cond_4f
    if-ne v0, v4, :cond_56

    .line 217
    invoke-direct {p0, v4}, Lbl/qh;->a(I)I

    move-result v0

    goto :goto_2a

    .line 218
    :cond_56
    if-ne v0, v5, :cond_5d

    .line 219
    invoke-direct {p0, v5}, Lbl/qh;->a(I)I

    move-result v0

    goto :goto_2a

    .line 220
    :cond_5d
    if-ne v0, v6, :cond_64

    .line 221
    invoke-direct {p0, v6}, Lbl/qh;->a(I)I

    move-result v0

    goto :goto_2a

    .line 222
    :cond_64
    const/16 v2, 0x320

    if-ne v0, v2, :cond_2a

    .line 223
    const/16 v0, 0x320

    invoke-direct {p0, v0}, Lbl/qh;->a(I)I

    move-result v0

    goto :goto_2a

    :cond_6f
    move v0, v1

    .line 225
    goto :goto_3e
.end method

.method private a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 247
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {p1}, Lbl/qn;->b(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_d

    .line 250
    :goto_c
    return v0

    :cond_d
    const/16 v0, -0x3e8

    goto :goto_c
.end method

.method private a(Landroid/content/Context;Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;Lbl/ps;Lbl/pu;Lcom/bilibili/lib/media/resolver/params/ResolveResourceExtra;Z)Lcom/bilibili/lib/media/resource/MediaResource;
    .locals 20
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bilibili/lib/media/resolver/exception/ResolveException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 71
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lbl/qh;->a(Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;)V

    .line 72
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lbl/qh;->a(Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;Lbl/ps;)I

    move-result v7

    .line 74
    invoke-virtual/range {p2 .. p2}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->c()J

    move-result-wide v10

    .line 75
    invoke-virtual/range {p2 .. p2}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->a()J

    move-result-wide v12

    .line 76
    invoke-virtual/range {p5 .. p5}, Lcom/bilibili/lib/media/resolver/params/ResolveResourceExtra;->a()J

    move-result-wide v14

    .line 78
    const-string v4, "PgcPlayUrl"

    const-string v5, "========== PGC PlayUrl Request (Web API + WBI) =========="

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v4, "PgcPlayUrl"

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

    const-string v6, ", epId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", qn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v4, "PlaySpeed"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PGC_API_REQUEST_START] cid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", avid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", epId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", qn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v4

    invoke-static {v4}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v4

    .line 83
    invoke-static {v4}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v6

    .line 84
    const-string v5, "PgcPlayUrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cookie: "

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    if-eqz v6, :cond_1ee

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1ee

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "exists("

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v17, "chars)"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_da
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const-string v4, "DedeUserID"

    invoke-static {v6, v4}, Lmybl/CookieUtil;->getCookieValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 87
    if-eqz v16, :cond_11c

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11c

    .line 89
    :try_start_f5
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 90
    const-wide/16 v18, 0x0

    cmp-long v17, v4, v18

    if-lez v17, :cond_11c

    .line 91
    const-string v17, "PgcPlayUrl"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Activating buvid for mid="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-static {v4, v5, v6}, Lmybl/BuvidActivator;->ensureBuvidActive(JLjava/lang/String;)Z
    :try_end_11c
    .catch Ljava/lang/NumberFormatException; {:try_start_f5 .. :try_end_11c} :catch_1f2

    .line 99
    :cond_11c
    :goto_11c
    new-instance v17, Ljava/util/TreeMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/TreeMap;-><init>()V

    .line 100
    const-string v4, "qn"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v4, "fnver"

    const-string v5, "0"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v4, "fnval"

    const/16 v5, 0x7d0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v4, "fourk"

    const-string v5, "1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v4, "from_client"

    const-string v5, "BROWSER"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v4, "drm_tech_type"

    const-string v5, "2"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-wide/16 v4, 0x0

    cmp-long v4, v12, v4

    if-lez v4, :cond_16e

    .line 108
    const-string v4, "avid"

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_16e
    const-wide/16 v4, 0x0

    cmp-long v4, v10, v4

    if-lez v4, :cond_17f

    .line 111
    const-string v4, "cid"

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_17f
    const-wide/16 v4, 0x0

    cmp-long v4, v14, v4

    if-lez v4, :cond_190

    .line 114
    const-string v4, "ep_id"

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_190
    const-string v4, "x-bili-gaia-vtoken"

    invoke-static {v6, v4}, Lmybl/CookieUtil;->getCookieValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 118
    if-eqz v4, :cond_1b4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1b4

    .line 119
    const-string v5, "gaia_vtoken"

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v4, "PgcPlayUrl"

    const-string v5, "Added gaia_vtoken parameter"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_1b4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    const/4 v4, 0x1

    .line 125
    invoke-virtual/range {v17 .. v17}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v5, v4

    :goto_1c3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_211

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 126
    if-nez v5, :cond_1d6

    .line 127
    const-string v5, "&"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_1d6
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, "="

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const/4 v4, 0x0

    move v5, v4

    .line 131
    goto :goto_1c3

    .line 84
    :cond_1ee
    const-string v4, "null"

    goto/16 :goto_da

    .line 94
    :catch_1f2
    move-exception v4

    .line 95
    const-string v4, "PgcPlayUrl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed to parse DedeUserID: "

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11c

    .line 132
    :cond_211
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 134
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "https://api.bilibili.com/pgc/player/web/playurl?"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 135
    const-string v5, "PgcPlayUrl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "URL (no WBI): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v5, Lbl/qa$a;

    const-class v10, Lbl/qi;

    invoke-direct {v5, v10}, Lbl/qa$a;-><init>(Ljava/lang/Class;)V

    .line 138
    invoke-virtual {v5, v4}, Lbl/qa$a;->a(Ljava/lang/String;)Lbl/qa$a;

    move-result-object v4

    const-string v5, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36"

    .line 139
    invoke-virtual {v4, v5}, Lbl/qa$a;->b(Ljava/lang/String;)Lbl/qa$a;

    move-result-object v4

    const/4 v5, 0x1

    .line 140
    invoke-virtual {v4, v5}, Lbl/qa$a;->a(Z)Lbl/qa$a;

    move-result-object v4

    .line 142
    const-string v5, "env"

    const-string v10, "prod"

    invoke-virtual {v4, v5, v10}, Lbl/qa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    .line 143
    const-string v5, "app-key"

    const-string v10, "android64"

    invoke-virtual {v4, v5, v10}, Lbl/qa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    .line 144
    const-string v5, "x-bili-aurora-zone"

    const-string v10, "sh001"

    invoke-virtual {v4, v5, v10}, Lbl/qa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    .line 145
    const-string v5, "X-Blbl-Skip-Origin"

    const-string v10, "1"

    invoke-virtual {v4, v5, v10}, Lbl/qa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    .line 147
    if-eqz v16, :cond_298

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_298

    .line 149
    :try_start_27a
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 150
    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-lez v5, :cond_298

    .line 151
    const-string v5, "x-bili-mid"

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v5, v12}, Lbl/qa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    .line 152
    invoke-static {v10, v11}, Lbl/qh;->genAuroraEid(J)Ljava/lang/String;

    move-result-object v5

    .line 153
    if-eqz v5, :cond_298

    .line 154
    const-string v10, "x-bili-aurora-eid"

    invoke-virtual {v4, v10, v5}, Lbl/qa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;
    :try_end_298
    .catch Ljava/lang/NumberFormatException; {:try_start_27a .. :try_end_298} :catch_31a

    .line 162
    :cond_298
    :goto_298
    if-eqz v6, :cond_2ac

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2ac

    .line 163
    const-string v5, "Cookie"

    invoke-virtual {v4, v5, v6}, Lbl/qa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    .line 164
    const-string v5, "PgcPlayUrl"

    const-string v6, "Added Cookie header"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_2ac
    const-string v5, "Referer"

    const-string v6, "https://www.bilibili.com"

    invoke-virtual {v4, v5, v6}, Lbl/qa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    .line 168
    invoke-virtual {v4}, Lbl/qa$a;->a()Lbl/qa;

    move-result-object v4

    .line 169
    move-object/from16 v0, p0

    iget-object v5, v0, Lbl/qh;->b:Lbl/qx;

    invoke-virtual {v4}, Lbl/qa;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lbl/qx;->a(Ljava/lang/String;)V

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 171
    const-string v5, "PlaySpeed"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[PGC_API_REQUEST_END] API request done, elapsed="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v10, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "ms"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string v5, "PgcPlayUrl"

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

    .line 175
    invoke-static {v4}, Lbl/pz;->a(Lbl/qa;)Lbl/qe;

    move-result-object v4

    check-cast v4, Lbl/qi;

    .line 177
    if-nez v4, :cond_337

    .line 178
    const-string v4, "PgcPlayUrl"

    const-string v5, "Response is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance v4, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;

    const-string v5, "empty response"

    const/4 v6, -0x5

    invoke-direct {v4, v5, v6}, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 157
    :catch_31a
    move-exception v5

    .line 158
    const-string v5, "PgcPlayUrl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to parse DedeUserID: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_298

    .line 181
    :cond_337
    move-object/from16 v0, p0

    iget-object v5, v0, Lbl/qh;->b:Lbl/qx;

    invoke-virtual {v4}, Lbl/qi;->b()I

    move-result v6

    invoke-virtual {v4}, Lbl/qi;->c()[B

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lbl/qx;->a(I[B)V

    .line 183
    const-string v5, "PgcPlayUrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Response code="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lbl/qi;->b()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", message="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lbl/qi;->c()[B

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v5, "PgcPlayUrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "qiVar.a()="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lbl/qi;->a()Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " (isSuccess)"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {v4}, Lbl/qi;->a()Z

    move-result v5

    if-nez v5, :cond_3a8

    .line 187
    const-string v4, "PgcPlayUrl"

    const-string v5, "PlayUrl request failed!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v4, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;

    const-string v5, "connect error"

    const/4 v6, -0x5

    invoke-direct {v4, v5, v6}, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 191
    :cond_3a8
    const/4 v8, 0x0

    :try_start_3a9
    check-cast v8, Landroid/util/SparseArray;

    const/4 v9, 0x0

    check-cast v9, [I

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v4 .. v9}, Lbl/qi;->a(Landroid/content/Context;Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;ILandroid/util/SparseArray;[I)Lcom/bilibili/lib/media/resource/MediaResource;

    move-result-object v5

    .line 192
    if-nez v5, :cond_3f6

    .line 193
    const-string v5, "PgcPlayUrl"

    const-string v6, "MediaResource is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v5, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;

    const-string v6, "resolve fake"

    const/4 v7, -0x3

    invoke-direct {v5, v6, v7}, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_3c8
    .catch Lcom/bilibili/lib/media/resolver/exception/ResolveException; {:try_start_3a9 .. :try_end_3c8} :catch_3c8

    .line 199
    :catch_3c8
    move-exception v5

    .line 200
    const-string v6, "PgcPlayUrl"

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

    .line 201
    move-object/from16 v0, p0

    iget-object v6, v0, Lbl/qh;->b:Lbl/qx;

    new-instance v7, Ljava/lang/String;

    invoke-virtual {v4}, Lbl/qi;->c()[B

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v5, v7}, Lbl/qx;->a(Lcom/bilibili/lib/media/resolver/exception/ResolveException;Ljava/lang/String;)V

    .line 202
    throw v5

    .line 196
    :cond_3f6
    :try_start_3f6
    const-string v6, "PgcPlayUrl"

    const-string v7, "MediaResource resolved successfully"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    move-object/from16 v0, p0

    iget-object v6, v0, Lbl/qh;->b:Lbl/qx;

    invoke-virtual {v6, v5}, Lbl/qx;->a(Lcom/bilibili/lib/media/resource/MediaResource;)V
    :try_end_404
    .catch Lcom/bilibili/lib/media/resolver/exception/ResolveException; {:try_start_3f6 .. :try_end_404} :catch_3c8

    .line 198
    return-object v5
.end method

.method private a(Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;)V
    .locals 2

    .prologue
    .line 229
    invoke-virtual {p1}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->f()Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {v0}, Lbl/qn;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 234
    :cond_10
    :goto_10
    return-void

    .line 233
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

    .line 254
    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-gtz v1, :cond_8

    .line 265
    :goto_7
    return-object v0

    .line 256
    :cond_8
    :try_start_8
    const-string v1, "ad1va46a7lza"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 257
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 258
    array-length v1, v3

    new-array v4, v1, [B

    .line 259
    const/4 v1, 0x0

    :goto_1e
    array-length v5, v3

    if-ge v1, v5, :cond_31

    .line 260
    aget-byte v5, v3, v1

    array-length v6, v2

    rem-int v6, v1, v6

    aget-byte v6, v2, v6

    xor-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 259
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 262
    :cond_31
    const/4 v1, 0x3

    invoke-static {v4, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_35} :catch_37

    move-result-object v0

    goto :goto_7

    .line 263
    :catch_37
    move-exception v1

    .line 264
    const-string v2, "PgcPlayUrl"

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

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 51
    const-string v0, "PlaySpeed"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PGC_RESOLVE_START] qh.resolveMediaResource(), cid="

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

    .line 52
    if-eqz p2, :cond_3d

    invoke-virtual {p2}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3d

    if-nez p3, :cond_46

    .line 53
    :cond_3d
    new-instance v0, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;

    const-string v1, "invalid resolve params"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 55
    :cond_46
    new-instance v0, Lbl/qx;

    invoke-virtual {p3}, Lbl/ps;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->c()J

    move-result-wide v4

    invoke-direct {v0, v1, v2, v4, v5}, Lbl/qx;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iput-object v0, p0, Lbl/qh;->b:Lbl/qx;

    .line 56
    iget-object v0, p0, Lbl/qh;->b:Lbl/qx;

    invoke-virtual {v0}, Lbl/qx;->a()V

    .line 57
    iget-object v0, p0, Lbl/qh;->b:Lbl/qx;

    invoke-virtual {v0}, Lbl/qx;->b()V

    .line 58
    invoke-virtual {p2}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->i()Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lbl/qh;->a(Landroid/content/Context;Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;Lbl/ps;Lbl/pu;Lcom/bilibili/lib/media/resolver/params/ResolveResourceExtra;Z)Lcom/bilibili/lib/media/resource/MediaResource;

    move-result-object v0

    .line 59
    const-string v1, "PlaySpeed"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PGC_RESOLVE_END] qh.resolveMediaResource() done, elapsed="

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

    .line 60
    return-object v0
.end method

.method public resolveSegment(Landroid/content/Context;Lbl/pt;Ljava/lang/String;)Lcom/bilibili/lib/media/resource/Segment;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p2}, Lbl/pt;->a()Lcom/bilibili/lib/media/resource/Segment;

    move-result-object v0

    return-object v0
.end method
